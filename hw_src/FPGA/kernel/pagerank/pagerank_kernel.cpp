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
#include <hls_stream.h>

#define DAMPING_FACTOR 	0.85
#define DATA_WIDTH 	32
#define PE 		8	

#define BUF_PER_PE	128

typedef ap_uint<DATA_WIDTH> u_data;

typedef unsigned int u32;
typedef unsigned int u16;

void PE_kernel(u32 local_in_a[], u32 local_in_b[], u32 local_in_c[], u32 local_out[], int v) {

	u32 prev_buffer[BUF_PER_PE]; // Local Memory to store result
#pragma HLS ARRAY_PARTITION variable=prev_buffer dim=0 complete
	u32 rank_buffer[BUF_PER_PE]; // Local Memory to store result
#pragma HLS ARRAY_PARTITION variable=rank_buffer dim=0 complete
	// start init grid algorithm and
	// init "rank" and "prev" memories.

	float adding_constant = (1 - DAMPING_FACTOR) * 1/(float)v;
	float one_over_n = 1.0/(float)v;

loop_initialization:	for(int j = 0; j < BUF_PER_PE; j++){
#pragma HLS pipeline
				prev_buffer[j] = one_over_n;
				rank_buffer[j] = 0.0;
			}


kernel_loop:		for(int j = 0; j < BUF_PER_PE; j++){
#pragma HLS pipeline II=1
				u32 src = local_in_a[j]; //edge src buffer
				u32 dst = local_in_b[j]; //edge dst buffer
				u32 deg = local_in_c[j]; //outdegree buffer
				u32 temp = prev_buffer[src]/deg;
				rank_buffer[dst] = temp;
				local_out[j] = rank_buffer[dst];
			}
}


void buffer_load(u32 local_in_a[BUF_PER_PE], u32 local_in_b[BUF_PER_PE], u32 local_in_c[BUF_PER_PE], u_data *global_in_a, u_data *global_in_b, u_data *global_in_c) {
	// Load data from global_in_a into local_in_a
	for (int i = 0; i < BUF_PER_PE; i++) {
#pragma HLS pipeline
		local_in_a[i] = global_in_a[i];
	}

	// Load data from global_in_b into local_in_b
	for (int i = 0; i < BUF_PER_PE; i++) {
#pragma HLS pipeline
		local_in_b[i] = global_in_b[i];
	}

	// Load data from global_in_c into local_in_c
	for (int i = 0; i < BUF_PER_PE; i++) {
#pragma HLS pipeline
		local_in_c[i] = global_in_c[i];
	}
}



void buffer_compute(u32 local_in_a[BUF_PER_PE], u32 local_in_b[BUF_PER_PE], u32 local_in_c[BUF_PER_PE], u32 local_out[BUF_PER_PE], int v, int pe_offset) {
	// kernel replication
	PE_kernel(local_in_a + pe_offset * BUF_PER_PE, local_in_b + pe_offset * BUF_PER_PE,
			local_in_c + pe_offset * BUF_PER_PE, local_out + pe_offset * BUF_PER_PE, v);
}

void buffer_store(u_data *global_out, u32 local_out[BUF_PER_PE]) {
	for(int i = 0; i < BUF_PER_PE; i++) { // for each PE
#pragma HLS pipeline
		u32 temp = local_out[i];
		global_out[i] = temp;
	}
}


extern "C" {
	void pagerank_kernel_0(
			u_data *e_src, 		// edge sources
			u_data *e_dst, 		// edge destinations
			u_data *out_degree, 	// out_degrees
			u_data *out_r,     	// output Result
			int size,               // size of each edge block
			int vertices		// number of vertices
			) {
#pragma HLS INTERFACE m_axi port = e_src offset = slave bundle=gmem num_write_outstanding=32 max_write_burst_length=32 num_read_outstanding=32 max_read_burst_length=32
#pragma HLS INTERFACE m_axi port = e_dst offset = slave bundle=gmem num_write_outstanding=32 max_write_burst_length=32 num_read_outstanding=32 max_read_burst_length=32
#pragma HLS INTERFACE m_axi port = out_degree offset = slave bundle=gmem num_write_outstanding=32 max_write_burst_length=32 num_read_outstanding=32 max_read_burst_length=32
#pragma HLS INTERFACE m_axi port = out_r offset = slave bundle=gmem num_write_outstanding=32 max_write_burst_length=32 num_read_outstanding=32 max_read_burst_length=32
		int v = vertices;
		//create local buffers
		u32 e_src_buffer_a[BUF_PER_PE];   // Local memory to store edge source
#pragma HLS ARRAY_PARTITION variable=e_src_buffer_a dim=0 complete 

		u32 e_src_buffer_b[BUF_PER_PE];   // Local memory to store edge source
#pragma HLS ARRAY_PARTITION variable=e_src_buffer_b dim=0 complete

		u32 e_dst_buffer_a[BUF_PER_PE];   // Local memory to store edge dest
#pragma HLS ARRAY_PARTITION variable=e_dst_buffer_a dim=0 complete

		u32 e_dst_buffer_b[BUF_PER_PE];   // Local memory to store edge dest
#pragma HLS ARRAY_PARTITION variable=e_dst_buffer_b dim=0 complete

		u32 out_deg_buffer_a[BUF_PER_PE]; // Local Memory to store out degree
#pragma HLS ARRAY_PARTITION variable=out_deg_buffer_a dim=0 complete

		u32 out_deg_buffer_b[BUF_PER_PE]; // Local Memory to store out degree
#pragma HLS ARRAY_PARTITION variable=out_deg_buffer_b dim=0 complete

		u32 output_buffer_a[BUF_PER_PE]; // Local Memory to store result
#pragma HLS ARRAY_PARTITION variable=output_buffer_a dim=0 complete

		u32 output_buffer_b[BUF_PER_PE]; // Local Memory to store result
#pragma HLS ARRAY_PARTITION variable=output_buffer_b dim=0 complete

		u32 local_out[BUF_PER_PE]; // Local temp for kernel output
#pragma HLS ARRAY_PARTITION variable=local_out dim=0 complete

		u32 local_in_a[BUF_PER_PE]; // Local temp for kernel computation
#pragma HLS ARRAY_PARTITION variable=local_in_a dim=0 complete

		u32 local_in_b[BUF_PER_PE]; // Local temp for kernel computation
#pragma HLS ARRAY_PARTITION variable=local_in_b dim=0 complete

		u32 local_in_c[BUF_PER_PE]; // Local temp for kernel computation
#pragma HLS ARRAY_PARTITION variable=local_in_c dim=0 complete


		for (int i = 0; i < (size + BUF_PER_PE - 1) / BUF_PER_PE; i++) {

		int pe_offset = i % PE;

			if (i % 2 == 0) {
				buffer_load(e_src_buffer_a, e_dst_buffer_a, out_deg_buffer_a, &e_src[i * BUF_PER_PE], &e_dst[i * BUF_PER_PE], &out_degree[i * BUF_PER_PE]);
				buffer_compute(e_src_buffer_b, e_dst_buffer_b, out_deg_buffer_b, output_buffer_b, v, pe_offset);
				buffer_store(&out_r[i * BUF_PER_PE], output_buffer_a);
			} else {
				buffer_load(e_src_buffer_b, e_dst_buffer_b, out_deg_buffer_b, &e_src[i * BUF_PER_PE], &e_dst[i * BUF_PER_PE], &out_degree[i * BUF_PER_PE]);
				buffer_compute(e_src_buffer_a, e_dst_buffer_a, out_deg_buffer_a, output_buffer_a, v, pe_offset);
				buffer_store(&out_r[i * BUF_PER_PE], output_buffer_b);
			}
		}


	}
}

