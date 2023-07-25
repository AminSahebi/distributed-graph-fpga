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
#define BUF_PER_PE		64 // BUFFER_SIZE/PE
#define CHUNK_SIZE 		16

typedef ap_uint<DATA_WIDTH> u_data;

typedef unsigned int u32;

void PE_kernel(u32 local_in_a[], u32 local_in_b[], u32 local_out[], int v) {
#pragma HLS inline
	u32 distance_buffer[BUF_PER_PE]; // Local memory to store distances
#pragma HLS ARRAY_PARTITION variable=distance_buffer dim=0

	// Initialize distances
init_distances:
	for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline
		distance_buffer[j] = (local_in_a[j] == 0) ? 0 : BIGN;
	}

	// Perform SSSP computation
sssp_computation:
	for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline
#pragma HLS LOOP_FLATTEN

		u32 src = local_in_a[j]; // Edge source buffer
		u32 dst = local_in_b[j]; // Edge destination buffer

		if (distance_buffer[src] != BIGN && distance_buffer[src] + 1 < distance_buffer[dst]) {
			distance_buffer[dst] = distance_buffer[src] + 1;
		}
	}

	// Write computed distances to output buffer
write_distances:
	for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline
		local_out[j] = distance_buffer[j];
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

void buffer_compute(u32 local_in_a[PE][BUF_PER_PE], u32 local_in_b[PE][BUF_PER_PE], u32 local_out[PE][BUF_PER_PE], int v) {
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
	void sssp_kernel_0(
			u_data *e_src, 		// edge sources
			u_data *e_dst, 		// edge destinations
			u_data *out_r,     	// output Result
			int size,               // size of each edge block
			int vertices		// number of vertices
			) {
#pragma HLS INTERFACE m_axi port = e_src offset = slave bundle=gmem num_write_outstanding=64 max_write_burst_length=64 num_read_outstanding=64 max_read_burst_length=64
#pragma HLS INTERFACE m_axi port = e_dst offset = slave bundle=gmem num_write_outstanding=64 max_write_burst_length=64 num_read_outstanding=64 max_read_burst_length=64
#pragma HLS INTERFACE m_axi port = out_r offset = slave bundle=gmem num_write_outstanding=64 max_write_burst_length=64 num_read_outstanding=64 max_read_burst_length=64
		int v = vertices;
		//create local buffers
		u32 e_src_buffer_a[PE][BUF_PER_PE];   // Local memory to store edge source
#pragma HLS ARRAY_PARTITION variable=e_src_buffer_a dim=1 complete

		u32 e_src_buffer_b[PE][BUF_PER_PE];   // Local memory to store edge source
#pragma HLS ARRAY_PARTITION variable=e_src_buffer_b dim=1 complete

		u32 e_dst_buffer_a[PE][BUF_PER_PE];   // Local memory to store edge dest
#pragma HLS ARRAY_PARTITION variable=e_dst_buffer_a dim=1 complete

		u32 e_dst_buffer_b[PE][BUF_PER_PE];   // Local memory to store edge dest
#pragma HLS ARRAY_PARTITION variable=e_dst_buffer_b dim=1 complete

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


start_loop:		for (int i = 0; i < size/BUF_PER_PE+1; i++) {
				//double buffering
				//			if(i % 2 == 0) {
				buffer_load(e_src_buffer_a, e_dst_buffer_a, &e_src[i*BUF_PER_PE], &e_dst[i*BUF_PER_PE]);
				buffer_compute(e_src_buffer_b, e_dst_buffer_b, output_buffer_b, v);
				buffer_store(&out_r[i*BUF_PER_PE], output_buffer_a);
				//			} else {
				//				buffer_load(e_src_buffer_b, e_dst_buffer_b, &e_src[i*BUF_PER_PE], &e_dst[i*BUF_PER_PE]);
				//				buffer_compute(e_src_buffer_a, e_dst_buffer_a, output_buffer_a, v);
				//				buffer_store(&out_r[i*BUF_PER_PE], output_buffer_b);
				//			}
			}
	}
}
