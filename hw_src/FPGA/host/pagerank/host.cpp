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

#include <fstream>
#include <stdexcept>
#include <iostream>
#include <array>
#include <vector>
#include <cstdlib>
#include <algorithm>
#include <string>
#include <chrono>
#include <thread>
#include <numeric>
#include <cstring>
#include "graph.h"
#include "common.h"
#include "constants.h"
#include "kernel.h"
#include "time.h"

//#define DEBUG //standard debug
//#define _DEBUG_ //Debug level 1
//#define __DEBUG__ //Debug level 2

#define DATA_SIZE 4*4096

int main(int argc, char** argv){

	if(argc < 5){
		printf("usage: %s [xclbin binary] [Grid_files_path] [vertices] [p]\n",argv[0]);
		return -1;
	}
	std::string binaryFile = argv[1];
	cl_int err;
	unsigned fileBufSize;
	std::string path = argv[2];
	if (path == std::string("") || is_number(path)){
		printf("File path is not correct! \n"); 
		printf("usage: %s [xclbin binary] [Grid_files_path] [vertices] [p]\n",argv[0]);
		return -1;
	}
	if(file_exists(path)){
		printf("[INFO] Path is correct!\n");
	}
	int vertices = atoi(argv[3]);
	int p = atoi(argv[4]);

	Graph graph(path);

	int partitions = p;
	assert(graph.partitions==p && "not correct partitions!");

	unsigned int nthreads = std::thread::hardware_concurrency();
	/*
	   long begin_offset, end_offset;
	   for (int i=0; i< partitions; i++){
	   for(int j=0; j< partitions; j++){
	   begin_offset = graph.row_offset[i*partitions+j];
	   end_offset = graph.row_offset[i*partitions+j+1];
#ifdef DEBUG
printf("[%d][%d] , begin offset %ld , end offset %ld \n", i , j, begin_offset,end_offset);
#endif
}
}
*/
	/** walk over the blocks (which has been contiguously appended to a one file "row") */
	/*	int fin_row = open((path+"/row").c_str(), O_RDONLY);
		Edge * edge;	
		EdgeId bytes;
		edge = new Edge [partitions*partitions];
		bytes = read(fin_row, edge, sizeof(EdgeId)*(partitions*partitions));

		for(int i=0; i<partitions*partitions;i++){
		struct Edge* e = &edge[i];
		EdgeId src = e->source;
	//printf("src[%d] %ld :",i,src);
	EdgeId dst = e->target;
	//printf("dst[%d] %ld\n",i,dst);
	}
	close(fin_row);
	*/	

	auto start = get_time();
	/** walk over the blocks (which has been partitoned by block-i-j 
	 * files on the disk and assign them to 
	 * the aligned buffers in the host RAM) 
	 */
	int p2=partitions*partitions;
	int num_cu=p2-1;
	//	int* ffsize = new int [p2];
	std::vector<int, aligned_allocator<int> > fsize(p2);
	for(int i =0 ; i < partitions; i++){
		for(int j=0; j< partitions; j++) {
			fsize[i*partitions + j ] = graph.fsize[i][j];
		}
	}

#ifdef DEBUG
for(int i=0;i<p2;i++){
	printf("size[%d] = %d\n",i,fsize[i]);
}
#endif

std::vector<uint32_t, aligned_allocator<uint32_t> > outdegree(vertices);
for(int i =0; i<vertices;i++)
outdegree[i] = graph.outdegrees[i];

std::vector<EdgeId, aligned_allocator<EdgeId> > src(graph.edges);
std::vector<EdgeId, aligned_allocator<EdgeId> > dst(graph.edges);
std::vector<EdgeId, aligned_allocator<EdgeId> > buffer_out(vertices);

/*
   std::vector<std::vector<EdgeId, aligned_allocator<EdgeId> > > src;
   for (int i = 0; i < p2; i++) {
   std::vector<EdgeId, aligned_allocator<EdgeId> > curr1(ffsize[i]);
   src.push_back(std::move(curr1));
   }
   */
/*
   std::vector<std::vector<EdgeId, aligned_allocator<EdgeId> > > dst;
   for (int i = 0; i < p2; i++) {
   std::vector<EdgeId, aligned_allocator<EdgeId> > curr2(ffsize[i]);
   dst.push_back(std::move(curr2));
   }
   */

for(int i =0 ; i < partitions; i++){	
	for(int j=0; j< partitions; j++) {
		int fin_blk = open((path+"/block-"+ std::to_string(i) + "-" + std::to_string(j)).c_str(), O_RDONLY);
		Edge * edge;	
		EdgeId bytes;
		//int l = i*partitions+j;
		int size = (graph.fsize[i][j])/(sizeof(EdgeId));

		if (size != 0 ){
#ifdef DEBUG
			printf("block-%d-%d \tsize \t%d\n",i,j,size);
#endif	
			edge = new Edge [size];	
			bytes = read(fin_blk, edge, sizeof(EdgeId)*(size));
			for(int x=0 ; x < size ; x++){
				struct Edge* e = &edge[x];
				src[i*partitions+x] = e->source;
				dst[i*partitions+x] = e->target;
#ifdef _DEBUG_
				/** TODO create the proper loop with indexes to printf each block by block */ 
				printf("src[%d] %ld ",i,src[x]);
				printf("dst[%d] %ld \n",i,dst[x]);
				fflush(stdout);
#endif
			}

		}
		close(fin_blk);
	}
}

printf("[INFO] Graph init done. \n");
printf("[INFO] Graph load time: %f sec\n", get_time() - start);

/** Get All PLATFORMS, then search for Target_Platform_Vendor (CL_PLATFORM_VENDOR)
  Search for Platform: Xilinx
  Check if the current platform matches Target_Platform_Vendor */

std::vector<cl::Device> devices = get_devices("Xilinx");
devices.resize(1);
cl::Device device = devices[0];
std::cout << "DEVICE " << device.getInfo<CL_DEVICE_NAME>() << std::endl;

/** Create Context */ 
OCL_CHECK(err, cl::Context context(device, NULL, NULL, NULL, &err));

/** Create Command Queue */
OCL_CHECK(err, cl::CommandQueue q(context, device, CL_QUEUE_PROFILING_ENABLE, &err));

/** Load Binary File from disk */
char* fileBuf = read_binary_file(binaryFile, fileBufSize);
cl::Program::Binaries bins{{fileBuf, fileBufSize}};

/** Create the program object from the binary and program the FPGA device with it */
OCL_CHECK(err, cl::Program program(context, devices, bins, NULL, &err));

delete[] fileBuf;
/** OpenCL functions to program the device finishes here */


/** Create Kernels */
//OCL_CHECK(err, cl::Kernel kernel(program,"kernel_pagerank_0", &err));
std::vector<cl::Kernel> krnls(num_cu);
//	OCL_CHECK(err, krnls[i] = cl::Kernel(program, "kernel_pagerank_0", &err));

krnls[0] = cl::Kernel(program, "kernel_pagerank_0:{kernel_pagerank_0_1}", &err);
krnls[1] = cl::Kernel(program, "kernel_pagerank_0:{kernel_pagerank_0_2}", &err);
krnls[2] = cl::Kernel(program, "kernel_pagerank_0:{kernel_pagerank_0_3}", &err);
krnls[3] = cl::Kernel(program, "kernel_pagerank_0:{kernel_pagerank_0_4}", &err);
krnls[4] = cl::Kernel(program, "kernel_pagerank_0:{kernel_pagerank_0_5}", &err);
krnls[5] = cl::Kernel(program, "kernel_pagerank_0:{kernel_pagerank_0_6}", &err);
krnls[6] = cl::Kernel(program, "kernel_pagerank_0:{kernel_pagerank_0_7}", &err);
krnls[7] = cl::Kernel(program, "kernel_pagerank_0:{kernel_pagerank_0_8}", &err);
krnls[8] = cl::Kernel(program, "kernel_pagerank_0:{kernel_pagerank_0_9}", &err);
krnls[9] = cl::Kernel(program, "kernel_pagerank_0:{kernel_pagerank_0_10}", &err);
krnls[10] = cl::Kernel(program, "kernel_pagerank_0:{kernel_pagerank_0_11}", &err);
krnls[11] = cl::Kernel(program, "kernel_pagerank_0:{kernel_pagerank_0_12}", &err);
krnls[12] = cl::Kernel(program, "kernel_pagerank_0:{kernel_pagerank_0_13}", &err);
krnls[13] = cl::Kernel(program, "kernel_pagerank_0:{kernel_pagerank_0_14}", &err);
krnls[14] = cl::Kernel(program, "kernel_pagerank_0:{kernel_pagerank_0_15}", &err);


std::vector<cl::Buffer> outDegree(num_cu);
std::vector<cl::Buffer> edgeSrc(num_cu);
std::vector<cl::Buffer> edgeDst(num_cu);
std::vector<cl::Buffer> output(num_cu);
std::vector<cl::Buffer> ffsize(num_cu);

for (int i = 0; i < num_cu; i++) {
	/** Host buffers pointers */
	OCL_CHECK(err, 
			outDegree[i] = 
			cl::Buffer(context, 
				CL_MEM_READ_ONLY | CL_MEM_USE_HOST_PTR, 
				DATA_SIZE * sizeof(uint32_t), 
				outdegree.data(), 
				&err)
		 );

	OCL_CHECK(err,
			edgeSrc[i] = 
			cl::Buffer(context,
				CL_MEM_READ_ONLY | CL_MEM_USE_HOST_PTR,
				DATA_SIZE * sizeof(EdgeId),
				src.data(),
				&err)
		 );

	OCL_CHECK(err,
			edgeDst[i] =
			cl::Buffer(context,
				CL_MEM_READ_ONLY | CL_MEM_USE_HOST_PTR,
				DATA_SIZE * sizeof(EdgeId),
				dst.data(),
				&err)
		 );

	OCL_CHECK(err, 
			output[i] =
			cl::Buffer(context, 
				CL_MEM_WRITE_ONLY | CL_MEM_USE_HOST_PTR, 
				DATA_SIZE * sizeof(VertexId), 
				buffer_out.data(), 
				&err)
		 );
	OCL_CHECK(err, 
			ffsize[i] =
			cl::Buffer(context, 
				CL_MEM_READ_ONLY | CL_MEM_USE_HOST_PTR, 
				p2 * sizeof(VertexId), 
				fsize.data(), 
				&err)
		 );
}

for (int i = 0; i < num_cu; i++) {
	/** setting the kernel arguments */
	OCL_CHECK(err, err = krnls[i].setArg(0, edgeSrc[i]));
	OCL_CHECK(err, err = krnls[i].setArg(1, edgeDst[i]));	
	OCL_CHECK(err, err = krnls[i].setArg(2, outDegree[i]));	

	OCL_CHECK(err, err = krnls[i].setArg(3, output[i]));	
	OCL_CHECK(err, err = krnls[i].setArg(4, fsize[i]));	
	OCL_CHECK(err, err = krnls[i].setArg(5, vertices));
	//	OCL_CHECK(err, err = krnls[i].setArg(6, partitions));

	/** copy data to the device global memory */
	OCL_CHECK(err, err = q.enqueueMigrateMemObjects({edgeSrc[i]}, 0 ));
	OCL_CHECK(err, err = q.enqueueMigrateMemObjects({edgeDst[i]}, 0 ));
	OCL_CHECK(err, err = q.enqueueMigrateMemObjects({outDegree[i]}, 0 ));
	OCL_CHECK(err, err = q.enqueueMigrateMemObjects({ffsize[i]}, 0 ));
}

auto start_krnl = get_time();

for (int i = 0; i < num_cu; i++) {
	/** Launch the Kernel */
	OCL_CHECK(err, err = q.enqueueTask(krnls[i]));

}

OCL_CHECK(err, err = q.finish());
printf("[INFO] Kernel(s) execution time: %f sec\n", get_time() - start_krnl);


auto start_cp_out = get_time();
for (int i = 0; i < num_cu; i++) {

	OCL_CHECK(err,
			err = q.enqueueMigrateMemObjects({output[i]},
				CL_MIGRATE_MEM_OBJECT_HOST));
}
printf("[INFO] move from Global Memory to host: %f sec\n", get_time() - start_cp_out);
/*
// write the output result into a file 
std::ofstream out ("out.txt");
if (out.is_open())
{
for(int count = 0; count < size; count ++){
out << buffer_out[count] << "\n";
}
out.close();
}
*/
printf("finish\n");
q.finish();

}
//   std::vector<cl::Event> events_enqueueTask(numIter);
//
/*
#ifndef USE_HBM
std::vector<cl_mem_ext_ptr_t> mext_in(9);

mext_in[0].flags = XCL_MEM_DDR_BANK0;
mext_in[0].obj = offsetArr; // pagerank2;
mext_in[0].param = 0;
mext_in[1].flags = XCL_MEM_DDR_BANK0;
mext_in[1].obj = indiceArr;
mext_in[1].param = 0;
mext_in[2].flags = XCL_MEM_DDR_BANK0;
mext_in[2].obj = weightArr;
mext_in[2].param = 0;
mext_in[3].flags = XCL_MEM_DDR_BANK0;
mext_in[3].flags = XCL_MEM_DDR_BANK0;
mext_in[3].obj = degreeCSR;
mext_in[3].param = 0;
mext_in[4].flags = XCL_MEM_DDR_BANK0;
mext_in[4].obj = cntValFull;
mext_in[4].param = 0;
mext_in[5].flags = XCL_MEM_DDR_BANK0;
mext_in[5].obj = buffPing;
mext_in[5].param = 0;
mext_in[6].flags = XCL_MEM_DDR_BANK0;
mext_in[6].obj = buffPong;
mext_in[6].param = 0;
mext_in[7].flags = XCL_MEM_DDR_BANK0;
mext_in[7].obj = resultInfo;
mext_in[7].param = 0;
mext_in[8].flags = XCL_MEM_DDR_BANK0;
mext_in[8].obj = orderUnroll;
mext_in[8].param = 0;
#else

std::vector<cl_mem_ext_ptr_t> mem_ext(9);
mext_in[0].flags = XCL_BANK0;
mext_in[0].obj = offsetArr;
mext_in[0].param = 0;
mext_in[1].flags = XCL_BANK2;
mext_in[1].obj = indiceArr;
mext_in[1].param = 0;
mext_in[2].flags = XCL_BANK4;
mext_in[2].obj = weightArr;
mext_in[2].param = 0;
mext_in[3].flags = XCL_BANK6;
mext_in[3].obj = degreeCSR;
mext_in[3].param = 0;
mext_in[4].flags = XCL_BANK8;
mext_in[4].obj = cntValFull;
mext_in[4].param = 0;
mext_in[5].flags = XCL_BANK10;
mext_in[5].obj = buffPing;
#endif
*/

/** after all preparations call the kernel */
//pagerank_kernel();



