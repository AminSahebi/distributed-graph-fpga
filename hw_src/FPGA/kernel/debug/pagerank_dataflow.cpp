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

#include <hls_stream.h>
#include <ap_int.h>
#include <stdint.h>
#include "defn.h"



typedef ap_uint<512> u_512;

/*
   void compute(u32 *des_buf, int size) {
   for (int j=0; j<PE_NUM; j++) 
   for (int i=0; i<PE_BATCH; size)
   des_buf[i + PE_NUM*j] = DAMPING_FACTOR * des_buf[i + PE_NUM*j];
   }
   */

// Burst Read on input and write to in streams.
void read_input(u_512 *edge_src, 
		u_512 *edge_dst, 
		u_512 *out_degree, 
		hls::stream<u_512> &src_stream, 
		hls::stream<u_512> &dst_stream, 
		hls::stream<u_512> &out_degree_stream, 
		int size, 
		int vertices) {
readinput:
	for (int i = 0; i < size; i++) {
		//#pragma HLS UNROLL FACTOR=2
#pragma HLS PIPELINE //II=1 
		u_512 temp1 = edge_src[i];
		src_stream << temp1;
	}
	for (int i = 0; i < size; i++) {
#pragma HLS PIPELINE// II=1
		u_512 temp2 = edge_dst[i];
		dst_stream << temp2;
	}
	for (int i = 0; i < vertices; i++) {
		//#pragma HLS UNROLL
#pragma HLS PIPELINE //II=1
		u_512 temp3 = out_degree[i];
		out_degree_stream << temp3;
	}
}


void update(hls::stream<u_512> &src_stream, 
		hls::stream<u_512> &dst_stream,
		hls::stream<u_512> &out_degree_stream,
		hls::stream<u_512> &out_stream,
		int vertices, 
		int size){

	//initialized constants to calculate the PageRank
	float adding_constant = (1 - DAMPING_FACTOR) * 1/(float)vertices;
	float one_over_n = 1.0/(float)vertices;
	u_512 src, dst;
	u_512 prev_buf[DATA_SIZE]; // Local Memory to store previous rank
//#pragma HLS ARRAY_PARTITION variable=prev_buf dim=1 complete
	u_512 rank_buf[DATA_SIZE]; // Local Memory to store finak rank
//#pragma HLS ARRAY_PARTITION variable=rank_buf dim=1 complete
	u_512 degree[DATA_SIZE];
//#pragma HLS ARRAY_PARTITION variable=degree dim=1 complete
	u_512 edge_src[DATA_SIZE];
//#pragma HLS ARRAY_PARTITION variable=edge_src dim=1 complete
	u_512 edge_dst[DATA_SIZE];
//#pragma HLS ARRAY_PARTITION variable=edge_dst dim=1 complete

read_stream:
		for (int i = 0; i < size; i++) {
#pragma HLS PIPELINE// II=1
			src_stream >> edge_src[i];
			dst_stream >> edge_dst[i];
		}
		for (int i = 0; i < vertices; i++) {
#pragma HLS PIPELINE// II=1
			out_degree_stream >> degree[i];
		}

outer_loop:
		for(int i = 0; i < size; i++){
//#pragma HLS UNROLL
#pragma HLS PIPELINE 
			prev_buf[i] = one_over_n;
			rank_buf[i] = 0.0;
			src = edge_src[i]; //edge src buffer
			dst = edge_dst[i]; //edge dst buffer
			u_512 temp = prev_buf[src]/degree[src];
			rank_buf[dst] = temp;
			out_stream << rank_buf[dst];
		}
}

void write_results(u_512 *output_write,
		hls::stream<u_512> &out_stream, 
		int size){
	u_512 temp_buf[DATA_SIZE];
write_loop:
	for (int i=0; i< size; i++){
#pragma HLS PIPELINE
		out_stream >> temp_buf[i];
		output_write[i] = temp_buf[i];
	}
}



extern "C" {
	void kernel_pagerank_0(
			u_512 *edge_src,  // READ-ONLY edge sources
			u_512 *edge_dst,  // READ-ONLY edge Destinations
			u_512 *out_degree,// READ-ONLY out degrees
			u_512 *output_write,    // Output Result
			int sz,              // Size of edges in the each chunk in integer
			int v,		     // No. of vertices	
			int partitions	     // No. of partitions
			) {
#pragma HLS DATAFLOW

#pragma HLS INTERFACE m_axi port = edge_src offset = slave bundle=gmem num_write_outstanding=32 max_write_burst_length=64 num_read_outstanding=32 max_read_burst_length=64
#pragma HLS INTERFACE m_axi port = edge_dst offset = slave bundle=gmem num_write_outstanding=32 max_write_burst_length=64 num_read_outstanding=32 max_read_burst_length=64
#pragma HLS INTERFACE m_axi port = out_degree offset = slave bundle=gmem  num_write_outstanding=32 max_write_burst_length=64 num_read_outstanding=32 max_read_burst_length=64
#pragma HLS INTERFACE m_axi port = output_write offset = slave bundle=gmem num_write_outstanding=32 max_write_burst_length=64 num_read_outstanding=32 max_read_burst_length=64

//#pragma HLS INTERFACE s_axilite port = edge_src bundle = control
//#pragma HLS INTERFACE s_axilite port = edge_dst bundle = control
//#pragma HLS INTERFACE s_axilite port = out_degree bundle = control
//#pragma HLS INTERFACE s_axilite port = output_write bundle = control
//#pragma HLS INTERFACE s_axilite port = sz bundle = control
//#pragma HLS INTERFACE s_axilite port = v bundle = control
//#pragma HLS INTERFACE s_axilite port = partitions bundle = control
//#pragma HLS INTERFACE s_axilite port = return bundle = control

//#pragma HLS INTERFACE mode= ap_ctrl_chain bundle=control
		//define inputs and output streams
		hls::stream<u_512> src_stream("src_stream"), 
		dst_stream("dst_stream"), 
		out_degree_stream("out_degree_stream"); 

		//in parenthesis is the label for reporting purposes
#pragma HLS STREAM variable=src_stream depth=1024
#pragma HLS STREAM variable=dst_stream depth=1024
#pragma HLS STREAM variable=out_degree_stream depth=1024

		hls::stream<u_512> out_stream("out_stream");
#pragma HLS STREAM variable=out_stream depth=1024

		int size = sz; //size of vertex in the received block
		int vertices = v; //number of vertex in the whole graph

		//read vertex, edges and degree from relevant input chunk and copy to local memory
		read_input(edge_src, edge_dst, out_degree, src_stream, dst_stream, out_degree_stream, size, vertices);

		update(src_stream, dst_stream, out_degree_stream, out_stream, vertices, size);
		write_results(output_write, out_stream, size);
	}
}

