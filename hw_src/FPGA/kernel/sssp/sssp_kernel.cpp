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
#include <string.h>
//#include "defn.h"

#define BUFFER_SIZE 	4096
#define DATA_WIDTH 	512
#define PE 		64	


#define BUF_PER_PE	BUFFER_SIZE/PE

typedef ap_uint<DATA_WIDTH> u_data;
//typedef ap_uint<64> u32;

typedef unsigned int u32;
typedef unsigned int u16;
int v;

int CAS(long * ptr, long oldV, long newV){
		return(__sync_bool_compare_and_swap((long*)ptr, *((long*)&oldV), *((long*)&newV)));
}

void PE_kernel(u32 local_in_a[], u32 local_in_b[], u32 local_in_c[], u32 local_out[]) {
    u32 distance_buffer[BUF_PER_PE]; // Local memory to store distances
#pragma HLS ARRAY_PARTITION variable=distance_buffer dim=0

    // Initialize distances
init_distances:
    for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline
        distance_buffer[j] = (local_in_a[j] == 0) ? 0 : UINT32_MAX;
    }

    // Perform SSSP computation
sssp_computation:
    for (int k = 0; k < v - 1; k++) {
        for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline
            if (distance_buffer[j] != UINT32_MAX) {
                u32 src = local_in_a[j]; // Edge source buffer
                u32 dst = local_in_b[j]; // Edge destination buffer
                u32 weight = local_in_c[j]; // Edge weight buffer

                if (distance_buffer[src] + weight < distance_buffer[dst]) {
                    distance_buffer[dst] = distance_buffer[src] + weight;
                }
            }
        }
    }

    // Write computed distances to output buffer
write_distances:
    for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline
        local_out[j] = distance_buffer[j];
    }
}


void buffer_load(u32 local_in_a[PE][BUF_PER_PE], u32 local_in_b[PE][BUF_PER_PE], u32 local_in_c[PE][BUF_PER_PE], u_data *global_in_a, u_data *global_in_b, u_data *global_in_c) {
	// burst read
	memcpy(local_in_a,global_in_a,BUF_PER_PE);
	memcpy(local_in_b,global_in_b,BUF_PER_PE);
	memcpy(local_in_c,global_in_c,BUF_PER_PE);
/*load_loop:	for(int i = 0; i < PE; i++){
			for(int j = 0; j < BUF_PER_PE; j++) { // for each PE
#pragma HLS pipeline II = 1 
				local_in_b[i][j] = global_in_b[i*BUF_PER_PE + j];
				local_in_c[i][j] = global_in_c[i*BUF_PER_PE + j];
				local_in_a[i][j] = global_in_a[i*BUF_PER_PE + j];
			}
		}*/
}

void buffer_compute(u32 local_in_a[PE][BUF_PER_PE], u32 local_in_b[PE][BUF_PER_PE], u32 local_in_c[PE][BUF_PER_PE], u32 local_out[PE][BUF_PER_PE]) {
	// kernel replication
compute_loop:	for (int i=0; i < PE; i++) {
#pragma HLS UNROLL
			PE_kernel(local_in_a[i], local_in_b[i], local_in_c[i], local_out[i]);
		}

}

void buffer_store(u_data global_out, u32 local_out[PE][BUF_PER_PE]) {

store_loop:	for(int i = 0; i < PE; i++)
			for(int j = 0; j < BUF_PER_PE; j++) { // for each PE
#pragma HLS pipeline //II = 2
				u32 temp = local_out[i][j];
				global_out[i*BUF_PER_PE] = temp;
			}
}


extern "C" {
	void kernel_pagerank_0(
			u_data *e_src, 		// edge souces
			u_data *e_dst, 		// edge destinations
			u_data *out_degree, 	// out_degrees
			u_data *out_r,     	// output Result
			int size,               // size of each edge block
			int vertices		// number of vertices
			) {
#pragma HLS INTERFACE m_axi port = e_src offset = slave bundle=gmem num_write_outstanding=64 max_write_burst_length=64 num_read_outstanding=64 max_read_burst_length=64
#pragma HLS INTERFACE m_axi port = e_dst offset = slave bundle=gmem num_write_outstanding=64 max_write_burst_length=64 num_read_outstanding=64 max_read_burst_length=64
#pragma HLS INTERFACE m_axi port = out_degree offset = slave bundle=gmem num_write_outstanding=64 max_write_burst_length=64 num_read_outstanding=64 max_read_burst_length=64
#pragma HLS INTERFACE m_axi port = out_r offset = slave bundle=gmem num_write_outstanding=64 max_write_burst_length=64 num_read_outstanding=64 max_read_burst_length=64
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


		for (int i = 0; i < size/BUFFER_SIZE+1; i++) {
			//double duffering
			if(i % 2 ==0) {
				buffer_load(e_src_buffer_a, e_dst_buffer_a, out_deg_buffer_a, e_src+i*BUF_PER_PE, e_dst+i*BUF_PER_PE, out_degree+i*BUF_PER_PE);
				buffer_compute(e_src_buffer_b, e_dst_buffer_b, out_deg_buffer_b, output_buffer_b);
				buffer_store(*out_r+i*BUF_PER_PE, output_buffer_a);
			} else {
				buffer_load(e_src_buffer_b, e_dst_buffer_b, out_deg_buffer_b, e_src+i*BUF_PER_PE, e_dst+i*BUF_PER_PE, out_degree+i*BUF_PER_PE);
				buffer_compute(e_src_buffer_a, e_dst_buffer_a, out_deg_buffer_a, output_buffer_a);
				buffer_store(out_r+i*BUF_PER_PE, output_buffer_b);

			}
		}


	}
}

