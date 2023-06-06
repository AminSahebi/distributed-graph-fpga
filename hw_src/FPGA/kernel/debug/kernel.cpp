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

#define DAMPING_FACTOR 0.85
#define PE 16
#define BUFFER_SIZE 4096
#define DATA_SIZE 1024
#define DATA_WIDTH 512
#define BRAM_WIDTH 128

typedef ap_uint<BRAM_WIDTH> b_data;
typedef ap_uint<DATA_WIDTH> pkt_data;

typedef unsigned int u32;
typedef unsigned int u16;

//TRIPCOUNT indentifier
const unsigned int c_len = DATA_SIZE / BUFFER_SIZE; // 1024/64=16
const unsigned int c_size = BUFFER_SIZE;

extern "C" {
	void kernel_pagerank_0(
			/*const unsigned int*/pkt_data *in1, // Read-Only Vector 1
			/*const unsigned int*/pkt_data *in2, // Read-Only Vector 2
			/*unsigned int*/pkt_data *out_r,     // Output Result
			int size,                // Size in integer
			int vertices,
			int partitions
			) {
		// SDAccel kernel must have one and only one s_axilite interface which 
		// will be used by host application to configure the kernel.
		// Here bundle control is defined which is s_axilite interface 
		// and associated with all the arguments (in1, in2, out_r and size),
		// control interface must also be associated with "return".
		// All the global memory access arguments must be associated to 
		// one m_axi(AXI Master Interface). Here all three arguments(in1, in2, out_r) 
		// are associated to bundle gmem which means that a AXI master 
		// interface named "gmem" will be created in Kernel and all these variables will be
		// accessing global memory through this interface.
		// Multiple interfaces can also be created based on the requirements. 
		// For example when multiple memory accessing arguments need access to
		// global memory simultaneously, user can create multiple 
		// master interfaces and can connect to different arguments.

#pragma HLS INTERFACE m_axi port = in1 offset = slave bundle=gmem num_write_outstanding=32 max_write_burst_length=64 num_read_outstanding=32 max_read_burst_length=64
#pragma HLS INTERFACE m_axi port = in2 offset = slave bundle=gmem num_write_outstanding=32 max_write_burst_length=64 num_read_outstanding=32 max_read_burst_length=64
#pragma HLS INTERFACE m_axi port = out_r offset = slave bundle=gmem num_write_outstanding=32 max_write_burst_length=64 num_read_outstanding=32 max_read_burst_length=64
//#pragma HLS INTERFACE s_axilite port = in1 bundle = control
//#pragma HLS INTERFACE s_axilite port = in2 bundle = control
//#pragma HLS INTERFACE s_axilite port = out_r bundle = control
//#pragma HLS INTERFACE s_axilite port = size bundle = control
//#pragma HLS INTERFACE s_axilite port = vertices bundle = control
//#pragma HLS INTERFACE s_axilite port = partitions bundle = control
//#pragma HLS INTERFACE s_axilite port = return bundle = control

		u32 v1_buffer[BUFFER_SIZE];   // Local memory to store vector1
		u32 v2_buffer[BUFFER_SIZE];   // Local memory to store vector2
		u32 vout_buffer[BUFFER_SIZE]; // Local Memory to store result
		u32 prev_buffer[BUFFER_SIZE]; // Local Memory to store result
		u32 rank_buffer[BUFFER_SIZE]; // Local Memory to store result
		//#pragma HLS ARRAY_PARTITION variable=v1_buffer dim=0 complete //if you set #pragma HLS PIPELINE II=1
		//		the partitioning will not work and leads to a compilation failure at the end.
		//#pragma HLS ARRAY_PARTITION variable=v2_buffer dim=0 complete
		//#pragma HLS ARRAY_PARTITION variable=vout_buffer dim=0 complete
		//#pragma HLS ARRAY_PARTITION variable=prev_buffer dim=0 complete
		//#pragma HLS ARRAY_PARTITION variable=rank_buffer dim=0 complete

		// start init grid algorithm and
		// init "rank" and "prev" memories.
		int v = vertices;
		float adding_constant = (1 - DAMPING_FACTOR) * 1/(float)v;
		float one_over_n = 1.0/(float)v;

		for(int i = 0; i < v; i++){
#pragma HLS PIPELINE
//#pragma HLS UNROLL //2x times when using PIPELINE II=1
			prev_buffer[i] = one_over_n;
		}
		for(int i = 0; i < v; i++){
#pragma HLS PIPELINE 
//#pragma HLS UNROLL
			rank_buffer[i] = 0.0;
		}


		//Per iteration of this loop perform BUFFER_SIZE vector addition
		for (int i = 0; i < size; i += BUFFER_SIZE) {
//#pragma HLS LOOP_TRIPCOUNT min=c_len max=c_len
//#pragma HLS PIPELINE II=2
//#pragma HLS UNROLL
			int chunk_size = BUFFER_SIZE;
			//boundary checks
			if ((i + BUFFER_SIZE) > size)
				chunk_size = size - i;

			// Transferring data in bursts hides the memory access latency as well as improves 
			// bandwidth utilization and efficiency of the memory controller.
			// It is recommended to infer burst transfers from successive requests of data 
			// from consecutive address locations.
			// A local memory vl_local is used for buffering the data from a single burst.
			// The entire input vector is read in multiple bursts.
			// The choice of LOCAL_MEM_SIZE depends on the specific applications and 
			// available on-chip memory on target FPGA.
			// burst read of v1 and v2 vector from global memory

read1:
			for (int j = 0; j < chunk_size; j++) {
//#pragma HLS LOOP_TRIPCOUNT min=c_size max=c_size
#pragma HLS PIPELINE
//#pragma HLS UNROLL
				v1_buffer[j] = in1[i + j];
			}

read2:
			for (int j = 0; j < chunk_size; j++) {
//#pragma HLS LOOP_TRIPCOUNT min=c_size max=c_size
#pragma HLS PIPELINE
//#pragma HLS UNROLL
				v2_buffer[j] = in2[i + j];
			}

			// PIPELINE pragma reduces the initiation interval for loop by allowing the
			// concurrent executions of operations
vadd:
			for (int j = 0; j < chunk_size; j++) {
//#pragma HLS LOOP_TRIPCOUNT min=c_size max=c_size
#pragma HLS PIPELINE 
//#pragma HLS UNROLL
				//perform vector addition
				vout_buffer[j] = v1_buffer[j] + v2_buffer[j];
			}

			//burst write the result
write:
			for (int j = 0; j < chunk_size; j++) {
//#pragma HLS LOOP_TRIPCOUNT min=c_size max=c_size
#pragma HLS PIPELINE
//#pragma HLS UNROLL
				out_r[i + j] = vout_buffer[j];
			}
		}
	}
}





/*
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <ap_int.h>
#include <ap_fixed.h>
#include "libfpga.h"
#include "ap_axi_sdata.h"

#define DAMPING_FACTOR 0.85
#define DWIDTH 512
#define BUFFER_SIZE 128
extern "C" { 
void kernel_pagerank_0(
const int vertices,		// number of vertices 
const int partitions, 		// number of partitions 
uint32_dt  *src,  	// streaming input edges_src [BlockId][Size]
uint32_dt  *dst,  	// streaming input edges_dst [BlockId][Size]
int *outDegrees, 		// outdegrees [No. of. Vertices]
int *fsize,			// size of the blocks [partitions*partitions]
uint32_dt &output 	// output results [No. of. Vertices]
) {
#pragma HLS INTERFACE m_axi port = src max_write_burst_length = 32 max_read_burst_length = 32 offset = slave bundle = gmem
#pragma HLS INTERFACE m_axi port = dst max_read_burst_length = 32 offset = slave bundle = gmem1
#pragma HLS INTERFACE m_axi port = output max_write_burst_length = 32 max_read_burst_length = 32 offset = slave bundle = gmem2
#pragma HLS INTERFACE m_axi port = fsize offset = slave bundle = gmem3
#pragma HLS INTERFACE m_axi port = outDegrees offset = slave bundle = gmem3

#pragma HLS INTERFACE s_axilite port = vertices bundle = control
#pragma HLS INTERFACE s_axilite port = partitions bundle = control
#pragma HLS INTERFACE s_axilite port = src bundle = control
#pragma HLS INTERFACE s_axilite port = dst bundle = control
#pragma HLS INTERFACE s_axilite port = outDegrees bundle = control
#pragma HLS INTERFACE s_axilite port = fsize bundle = control
#pragma HLS INTERFACE s_axilite port = output bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

uint32_t v = vertices;
static int p = partitions;
static int p2 = p*p;
int size[BUFFER_SIZE];

uint16_dt rank_buffer[BUFFER_SIZE]; // Local buffer pagerank value in each iteration if any 
uint16_dt prev_buffer[BUFFER_SIZE]; // Local buffer previous value to be updated in the next iteration 
uint16_dt src_buffer[BUFFER_SIZE]; // Local buffer pagerank value in each iteration if any 
uint16_dt dst_buffer[BUFFER_SIZE]; // Local buffer previous value to be updated in the next iteration 
#pragma HLS ARRAY_PARTITION variable=rank_buffer complete dim=1
#pragma HLS ARRAY_PARTITION variable=prev_buffer complete dim=1
#pragma HLS ARRAY_PARTITION variable=src_buffer complete dim=1
#pragma HLS ARRAY_PARTITION variable=dst_buffer complete dim=1

sz_rd:	for (int i = 0; i < p2; i++) {
#pragma HLS pipeline
size[i] = fsize[i];
}

// start init grid algorithm and
// init "rank" and "prev" memories.
//
float adding_constant = (1 - DAMPING_FACTOR) * 1/(float)v;
float one_over_n = 1.0/(float)v;

for(int i = 0; i < v; i++){
#pragma HLS pipeline
prev_buffer[i] = one_over_n;
//DEBUG_PRINTF("[DEBUG] prev_buffer[%d] %d\n",i, prev_buffer[i]);
}
for(int i = 0; i < v; i++){
#pragma HLS pipeline
rank_buffer[i] = 0.0;
}
int tmp = 0;
for(int i = 0; i < p2; i++){
#pragma HLS pipeline
	output[i] = tmp++;
	//DEBUG_PRINTF("[DEBUG] prev_buffer[%d] %d\n",i, prev_buffer[i]);
}

//for(int i = 0; i < P; i++) {
//for(int j = 0; j < P; j++) {
//	uint32_t start = row_offsets[i] + offsets[i][j];
//	uint32_t stop =  (j == P - 1 ? (i == P - 1? nb_edges : row_offsets[i+1] ) : row_offsets[i] +  offsets[i][j+1] ); 
//	for( ; start < stop; start++) 			{
//	struct edge_t* e = &memblock[start]; --> reading edge blocks give us <src dest> 
//	     uint32_t src = e->src;
//	     uint32_t dst = e->dst;
//	     rank[dst] += (prev[src]/(float)nodes[src].nb_out_edges);  
//
//		}
//
//		}
//	}


//
//start iterator here and update "rank" values
//first calling the algorithm calculate the "rank" value here 
//then new rank will be calculated and update the prev values.
//
//for(uint32_t i = 0; i< NB_NODES; i++) {
//			rank[i] = adding_constant + DAMPING_FACTOR * rank[i];
//				prev[i] = rank[i];

}
}
*/
