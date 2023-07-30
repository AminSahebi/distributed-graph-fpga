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
#include <hls_stream.h>

#define DAMPING_FACTOR 	0.85
#define DATA_WIDTH 		32
#define PE 			2
#define BIGN			65536 // 2^12
#define BUF_PER_PE		128 // BUFFER_SIZE/PE
#define CHUNK_SIZE 		16
#define UNROLL_FACTOR 4

typedef ap_uint<DATA_WIDTH> u_data;

typedef unsigned int u32;

void PE_kernel(u32 local_in_a[], u32 local_in_b[], u32 local_out[], int v) {
//#pragma HLS inline
	u32 rank_buffer[BUF_PER_PE]; // Local Memory to store result
#pragma HLS ARRAY_PARTITION variable=rank_buffer dim=0

	u32 src_buffer[BUF_PER_PE];
#pragma HLS ARRAY_PARTITION variable=src_buffer dim=0
	u32 dst_buffer[BUF_PER_PE];
#pragma HLS ARRAY_PARTITION variable=dst_buffer dim=0

read_buffer:	for(int j = 0; j < BUF_PER_PE; j++){
#pragma HLS pipeline II=1
			//#pragma HLS LOOP_FLATTEN
			//#pragma HLS unroll
			src_buffer[j] = local_in_a[j];
			dst_buffer[j] = local_in_b[j];
		}

		float adding_constant = (1 - DAMPING_FACTOR) * 1/(float)v;
		float one_over_n = 1.0/(float)v;

loop_initialization:	for(int j = 0; j < BUF_PER_PE; j++){
#pragma HLS pipeline II=1
				rank_buffer[j] = 0.0;
			}

			/*
kernel_loop:		for(int j = 0; j < BUF_PER_PE; j++){
#pragma HLS LOOP_FLATTEN off
#pragma HLS pipeline II=1
u32 src = src_buffer[j]; //edge src buffer
u32 deg = dst_buffer[j]; //outdegree buffer
u32 temp = src/deg;
u32 rank = adding_constant + DAMPING_FACTOR*temp;
rank_buffer[j] = rank;
}

*/
kernel_loop: for (int j = 0; j < BUF_PER_PE; j += 2) {
#pragma HLS pipeline II=1
		     u32 src1 = src_buffer[j]; //edge src buffer
		     u32 deg1 = dst_buffer[j]; //outdegree buffer
		     u32 temp1 = src1 / deg1;
		     u32 rank1 = adding_constant + DAMPING_FACTOR * temp1;
		     rank_buffer[j] = rank1;

		     u32 src2 = src_buffer[j + 1]; //edge src buffer
		     u32 deg2 = dst_buffer[j + 1]; //outdegree buffer
		     u32 temp2 = src2 / deg2;
		     u32 rank2 = adding_constant + DAMPING_FACTOR * temp2;
		     rank_buffer[j + 1] = rank2;
	     }
write_ranks:
for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline II=1
	//#pragma HLS pipeline
	local_out[j] = rank_buffer[j];
}

}



void buffer_load(u32 local_in_a[PE][BUF_PER_PE], u32 local_in_b[PE][BUF_PER_PE], u_data *global_in_a, u_data *global_in_b) {
	// burst read
load_loop:	for(int i = 0; i < PE; i++){
#pragma HLS unroll 
			memcpy(local_in_a[i], &global_in_a[i * BUF_PER_PE], BUF_PER_PE * sizeof(u32));
			memcpy(local_in_b[i], &global_in_b[i * BUF_PER_PE], BUF_PER_PE * sizeof(u32));
		}
}

void buffer_compute(u32 local_in_a[PE][BUF_PER_PE],u32 local_in_b[PE][BUF_PER_PE], u32 local_out[PE][BUF_PER_PE], int v) {
	// kernel replication
compute_loop:	for (int i=0; i < PE; i++) {
#pragma HLS unroll
			PE_kernel(local_in_a[i], local_in_b[i], local_out[i], v);
		}
}

void buffer_store(u_data *global_out, u32 local_out[PE][BUF_PER_PE]) {
store_loop:	for(int i = 0; i < PE; i++) {
#pragma HLS unroll 
			memcpy(&global_out[i * BUF_PER_PE], local_out[i], BUF_PER_PE * sizeof(u32));
		}
}

extern "C" {
	void pagerank_kernel_0(
			u_data *e_src, 		// edge sources
			u_data *out_degree, 		// outdegree
			u_data *out_r,     	// output Result
			int size,               // size of each edge block
			int vertices		// number of vertices
			) {
#pragma HLS INTERFACE m_axi port = e_src offset = slave bundle=gmem num_write_outstanding=64 max_write_burst_length=64 num_read_outstanding=64 max_read_burst_length=64
#pragma HLS INTERFACE m_axi port = out_degree offset = slave bundle=gmem num_write_outstanding=64 max_write_burst_length=64 num_read_outstanding=64 max_read_burst_length=64
#pragma HLS INTERFACE m_axi port = out_r offset = slave bundle=gmem num_write_outstanding=64 max_write_burst_length=64 num_read_outstanding=64 max_read_burst_length=64
		int v = vertices;
		//create local buffers

		u32 local_out[PE][BUF_PER_PE]; // Local temp for kernel output
#pragma HLS ARRAY_PARTITION variable=local_out dim=1 complete

		u32 local_in_a[PE][BUF_PER_PE]; // Local temp for kernel computation
#pragma HLS ARRAY_PARTITION variable=local_in_a dim=1 complete

		u32 local_in_b[PE][BUF_PER_PE]; // Local temp for kernel computation
#pragma HLS ARRAY_PARTITION variable=local_in_b dim=1 complete


start_loop:		for (int i = 0; i < size/BUF_PER_PE+1; i++) {
				buffer_load(local_in_a, local_in_b, &e_src[i*BUF_PER_PE], &out_degree[i*BUF_PER_PE]);
				buffer_compute(local_in_a, local_in_b, local_out, v);
				buffer_store(&out_r[i*BUF_PER_PE], local_out);
			}
	}
}
