/*
   Copyright (c) 2020-2021 Amin Sahebi, 
   University of Siena, University of Florence.

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

#include <ap_int.h>
#include <stdint.h>
#include "defn.h"

#define DAMPING_FACTOR 	0.85
#define BUFFER_SIZE 	128
#define DATA_WIDTH 	512
#define PE 		8	


#define BUF_PER_PE	BUFFER_SIZE/PE

typedef ap_uint<DATA_WIDTH> u_data;
typedef unsigned int u32;
typedef unsigned int u16;
int v;
void PE_kernel(u32 local_in_a[], u32 local_in_b[], u32 local_in_c[], u32 local_out[]) {
    u32 vector_buffer[BUF_PER_PE]; // Local memory to store the input vector
    u32 result_buffer[BUF_PER_PE]; // Local memory to store the partial results

    // Load the input vector
    for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline
        vector_buffer[j] = local_in_a[j];
        result_buffer[j] = 0;
    }

    // Perform SPMV computation
    for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline
        u32 row = local_in_b[j]; // Row index buffer
        u32 col = local_in_c[j]; // Column index buffer
        u32 value = local_in_a[j]; // Non-zero value buffer

        result_buffer[row] += value * vector_buffer[col];
    }

    // Write the computed results to the output buffer
    for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline
        local_out[j] = result_buffer[j];
    }
}


void buffer_load(u32 local_in_a[PE][BUF_PER_PE], u32 local_in_b[PE][BUF_PER_PE], u32 local_in_c[PE][BUF_PER_PE], u_data *global_in_a, u_data *global_in_b, u_data *global_in_c) {
	// burst read
load_loop:	for(int i = 0; i < PE; i++){
			for(int j = 0; j < BUF_PER_PE; j++) { // for each PE
#pragma HLS pipeline II = 1
				local_in_a[i][j] = global_in_a[i*BUF_PER_PE + j];
				//DEBUG_PRINTF("local_in_a  %d %d %d\n", i, local_in_a[i][j]);

				local_in_b[i][j] = global_in_b[i*BUF_PER_PE + j];
				local_in_c[i][j] = global_in_c[i*BUF_PER_PE + j];
			}
		}
}

void buffer_compute(u32 local_in_a[PE][BUF_PER_PE], u32 local_in_b[PE][BUF_PER_PE], u32 local_in_c[PE][BUF_PER_PE], u32 local_out[PE][BUF_PER_PE]) {
	// kernel replication
compute_loop:	for (int i=0; i < PE; i++) {
#pragma HLS unroll
			PE_kernel(local_in_a[i], local_in_b[i], local_in_c[i], local_out[i]);

		}
}

void buffer_store(u_data global_out, u32 local_out[PE][BUF_PER_PE]) {

store_loop:	for(int i = 0; i < PE; i++)
			for(int j = 0; j < BUF_PER_PE; j++) { // for each PE
#pragma HLS pipeline II = 1
				u32 temp = local_out[i][j];
				global_out[i*BUF_PER_PE] = temp;
			}
}


extern "C" {
	void spmv_hw(
			u_data *e_src, 		// edge souces
			u_data *e_dst, 		// edge destinations
			u_data *out_degree, 	// out_degrees
			u_data *out_r,     	// output Result
			int size,               // size of each edge block
			int vertices		// number of vertices
			) {
#pragma HLS INTERFACE m_axi port = e_src offset = slave bundle=gmem num_write_outstanding=128 max_write_burst_length=128 num_read_outstanding=128 max_read_burst_length=128
#pragma HLS INTERFACE m_axi port = e_dst offset = slave bundle=gmem num_write_outstanding=128 max_write_burst_length=128 num_read_outstanding=128 max_read_burst_length=128
#pragma HLS INTERFACE m_axi port = out_degree offset = slave bundle=gmem num_write_outstanding=128 max_write_burst_length=128 num_read_outstanding=128 max_read_burst_length=128
#pragma HLS INTERFACE m_axi port = out_r offset = slave bundle=gmem num_write_outstanding=128 max_write_burst_length=128 num_read_outstanding=128 max_read_burst_length=128
		v = vertices;
		//create local buffers
		u32 e_src_buffer_a[PE][BUF_PER_PE];   // Local memory to store edge source
#pragma HLS ARRAY_PARTITION variable=e_src_buffer_a dim=1 complete 

		u32 e_src_buffer_b[PE][BUF_PER_PE];   // Local memory to store edge source
#pragma HLS ARRAY_PARTITION variable=e_src_buffer_b dim=1 complete 

		u32 e_dst_buffer_a[PE][BUF_PER_PE];   // Local memory to store edge dest
#pragma HLS ARRAY_PARTITION variable=e_dst_buffer_a dim=1 complete

		u32 e_dst_buffer_b[PE][BUF_PER_PE];   // Local memory to store edge dest
#pragma HLS ARRAY_PARTITION variable=e_dst_buffer_b dim=1 complete

		u32 out_deg_buffer_a[PE][BUF_PER_PE]; // Local Memory to store out degree
#pragma HLS ARRAY_PARTITION variable=out_deg_buffer_a dim=1 complete

		u32 out_deg_buffer_b[PE][BUF_PER_PE]; // Local Memory to store out degree
#pragma HLS ARRAY_PARTITION variable=out_deg_buffer_b dim=1 complete

		u32 output_buffer_a[PE][BUF_PER_PE]; // Local Memory to store result
#pragma HLS ARRAY_PARTITION variable=output_buffer_a dim=1 complete

		u32 output_buffer_b[PE][BUF_PER_PE]; // Local Memory to store result
#pragma HLS ARRAY_PARTITION variable=output_buffer_b dim=1 complete

		u32 local_out[PE][BUF_PER_PE]; // Local temp for kernel output
#pragma HLS ARRAY_PARTITION variable=local_out dim=1 complete

		u32 local_in_a[PE][BUF_PER_PE]; // Local temp for kernel computation
#pragma HLS ARRAY_PARTITION variable=local_in_a dim=1 complete

		u32 local_in_b[PE][BUF_PER_PE]; // Local temp for kernel computation
#pragma HLS ARRAY_PARTITION variable=local_in_b dim=1 complete

		u32 local_in_c[PE][BUF_PER_PE]; // Local temp for kernel computation
#pragma HLS ARRAY_PARTITION variable=local_in_c dim=1 complete

#pragma HLS DATAFLOW
		for (int i = 0; i < size/BUFFER_SIZE+1; i++) {
			//double duffering
			if(i % 2 ==0) {
				buffer_load(e_src_buffer_a, e_dst_buffer_a, out_deg_buffer_a, e_src+i*BUFFER_SIZE, e_dst+i*BUFFER_SIZE, out_degree+i*BUFFER_SIZE);
				buffer_compute(e_src_buffer_b, e_dst_buffer_b, out_deg_buffer_b, output_buffer_b);
				buffer_store(*out_r+i*BUFFER_SIZE, output_buffer_a);
			} else {
				buffer_load(e_src_buffer_b, e_dst_buffer_b, out_deg_buffer_b, e_src+i*BUFFER_SIZE, e_dst+i*BUFFER_SIZE, out_degree+i*BUFFER_SIZE);
				buffer_compute(e_src_buffer_a, e_dst_buffer_a, out_deg_buffer_a, output_buffer_a);
				buffer_store(out_r+i*BUFFER_SIZE, output_buffer_b);

			}
		}


	}
}

