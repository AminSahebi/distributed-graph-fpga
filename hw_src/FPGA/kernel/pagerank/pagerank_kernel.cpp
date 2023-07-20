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
//#define BUFFER_SIZE 	512
#define DATA_WIDTH 	256
#define PE 		4	

#define BUF_PER_PE	32//BUFFER_SIZE/PE

typedef ap_uint<DATA_WIDTH> u_data;
//typedef ap_uint<64> u32;

typedef unsigned int u32;
typedef unsigned int u16;

void PE_kernel(u32 local_in_a[], u32 local_in_b[], u32 local_in_c[], u32 local_out[], int v) {

	u32 prev_buffer[BUF_PER_PE]; // Local Memory to store result
#pragma HLS ARRAY_PARTITION variable=prev_buffer dim=0
	u32 rank_buffer[BUF_PER_PE]; // Local Memory to store result
#pragma HLS ARRAY_PARTITION variable=rank_buffer dim=0
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
#pragma HLS pipeline //II=1
				u32 src = local_in_a[j]; //edge src buffer
				u32 dst = local_in_b[j]; //edge dst buffer
				u32 deg = local_in_c[j]; //outdegree buffer
				u32 temp = prev_buffer[src]/deg;
				rank_buffer[dst] = temp;
				local_out[j] = rank_buffer[dst];
			}
}

/*
   void buffer_load(u32 local_in_a[PE][BUF_PER_PE], u32 local_in_b[PE][BUF_PER_PE], u32 local_in_c[PE][BUF_PER_PE], u_data *global_in_a, u_data *global_in_b, u_data *global_in_c) {
// burst read
load_loop:	for(int i = 0; i < PE; i++){
#pragma HLS pipeline
memcpy(local_in_a[i], &global_in_a[i * BUF_PER_PE], BUF_PER_PE * sizeof(u32));
memcpy(local_in_b[i], &global_in_b[i * BUF_PER_PE], BUF_PER_PE * sizeof(u32));
memcpy(local_in_c[i], &global_in_c[i * BUF_PER_PE], BUF_PER_PE * sizeof(u32));
}
}
*/


void buffer_load(u32 local_in_a[PE][BUF_PER_PE], u32 local_in_b[PE][BUF_PER_PE], u32 local_in_c[PE][BUF_PER_PE], u_data *global_in_a, u_data *global_in_b, u_data *global_in_c) {

	hls::stream<u_data> stream_in_a;
	hls::stream<u_data> stream_in_b;
	hls::stream<u_data> stream_in_c;

read_a_loop: for(int i = 0; i < PE * BUF_PER_PE; i++) {
#pragma HLS pipeline II=4
		     stream_in_a.write(global_in_a[i]);
		     stream_in_b.write(global_in_b[i]);
		     stream_in_c.write(global_in_c[i]);
	     }
write_a_loop: for(int i = 0; i < PE * BUF_PER_PE; i++) {
#pragma HLS pipeline II=4
		      local_in_a[i / BUF_PER_PE][i % BUF_PER_PE] = stream_in_a.read();
		      local_in_b[i / BUF_PER_PE][i % BUF_PER_PE] = stream_in_b.read();
		      local_in_c[i / BUF_PER_PE][i % BUF_PER_PE] = stream_in_c.read();
	      }
}

void buffer_compute(u32 local_in_a[PE][BUF_PER_PE], u32 local_in_b[PE][BUF_PER_PE], u32 local_in_c[PE][BUF_PER_PE], u32 local_out[PE][BUF_PER_PE], int v) {
	// kernel replication
compute_loop:	for (int i=0; i < PE; i++) {
#pragma HLS unroll factor=PE
			PE_kernel(local_in_a[i], local_in_b[i], local_in_c[i], local_out[i], v);
		}
}

void buffer_store(u_data *global_out, u32 local_out[PE][BUF_PER_PE]) {
store_loop:	for(int i = 0; i < PE; i++) {
#pragma HLS unroll factor=PE
			memcpy(&global_out[i * BUF_PER_PE], local_out[i], BUF_PER_PE * sizeof(u32));
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
#pragma HLS INTERFACE m_axi port = e_src offset = slave bundle=gmem num_write_outstanding=64 max_write_burst_length=64 num_read_outstanding=64 max_read_burst_length=64
#pragma HLS INTERFACE m_axi port = e_dst offset = slave bundle=gmem num_write_outstanding=64 max_write_burst_length=64 num_read_outstanding=64 max_read_burst_length=64
#pragma HLS INTERFACE m_axi port = out_degree offset = slave bundle=gmem num_write_outstanding=64 max_write_burst_length=64 num_read_outstanding=64 max_read_burst_length=64
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


		for (int i = 0; i < size/BUF_PER_PE+1; i++) {
			//double buffering
			if(i % 2 == 0) {
				buffer_load(e_src_buffer_a, e_dst_buffer_a, out_deg_buffer_a, &e_src[i*BUF_PER_PE], &e_dst[i*BUF_PER_PE], &out_degree[i*BUF_PER_PE]);
				buffer_compute(e_src_buffer_b, e_dst_buffer_b, out_deg_buffer_b, output_buffer_b, v);
				buffer_store(&out_r[i*BUF_PER_PE], output_buffer_a);
			} else {
				buffer_load(e_src_buffer_b, e_dst_buffer_b, out_deg_buffer_b, &e_src[i*BUF_PER_PE], &e_dst[i*BUF_PER_PE], &out_degree[i*BUF_PER_PE]);
				buffer_compute(e_src_buffer_a, e_dst_buffer_a, out_deg_buffer_a, output_buffer_a, v);
				buffer_store(&out_r[i*BUF_PER_PE], output_buffer_b);
			}
		}
	}
}

