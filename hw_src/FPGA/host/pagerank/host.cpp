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
//#define DEBUG1

#define DATA_SIZE 64 * 4096 

int main(int argc, char** argv) {
	if (argc < 5) {
		printf("usage: %s [xclbin binary] [Grid_files_path] [vertices] [p]\n", argv[0]);
		return -1;
	}

	std::string binaryFile = argv[1];
	cl_int err;
	unsigned fileBufSize;
	std::string path = argv[2];
	if (path == std::string("") || is_number(path)) {
		printf("File path is not correct! \n");
		printf("usage: %s [xclbin binary] [Grid_files_path] [vertices] [p]\n", argv[0]);
		return -1;
	}

	if (file_exists(path)) {
		printf("[INFO] Path is correct!\n");
	}

	int vertices = atoi(argv[3]);
	int p = atoi(argv[4]);

	Graph graph(path);

	int partitions = p;
	assert(graph.partitions == p && "not correct partitions!");
	int num_cu = 15;
	int p2 = partitions * partitions;
	int partitions_per_kernel_count = p2 / num_cu;
	int remaining_partitions = p2 % num_cu;

	std::vector<int, aligned_allocator<int>> fsize(p2);
	for (int i = 0; i < partitions; i++) {
		for (int j = 0; j < partitions; j++) {
			fsize[i * partitions + j] = graph.fsize[i][j];
		}
	}

#ifdef DEBUG2
	for (int i = 0; i < p2; i++) {
		printf("size[%d] = %d\n", i, fsize[i]);
	}
#endif

	std::vector<uint32_t, aligned_allocator<uint32_t>> outdegree(vertices);
	for (int i = 0; i < vertices; i++)
		outdegree[i] = graph.outdegrees[i];

	std::vector<EdgeId, aligned_allocator<EdgeId>> src(graph.edges);
	std::vector<EdgeId, aligned_allocator<EdgeId>> dst(graph.edges);
	std::vector<EdgeId, aligned_allocator<EdgeId>> buffer_out(vertices);

	std::vector<cl::Device> devices = get_devices("Xilinx");
	devices.resize(1);
	cl::Device device = devices[0];
	std::cout << "DEVICE " << device.getInfo<CL_DEVICE_NAME>() << std::endl;

	/** Create Context */
	OCL_CHECK(err, cl::Context context(device, NULL, NULL, NULL, &err));

	/** Create Command Queues */
	std::vector<cl::CommandQueue> queues(num_cu);
	for (int i = 0; i < num_cu; i++) {
		queues[i] = cl::CommandQueue(context, device, cl::QueueProperties::Profiling | cl::QueueProperties::OutOfOrder, &err);
	}

	/** Load Binary File from disk */
	char* fileBuf = read_binary_file(binaryFile, fileBufSize);
	cl::Program::Binaries bins{{fileBuf, fileBufSize}};

	/** Create the program object from the binary and program the FPGA device with it */
	OCL_CHECK(err, cl::Program program(context, devices, bins, NULL, &err));

	delete[] fileBuf;
	/** OpenCL functions to program the device finishes here */

	/** Create Kernels */
	std::vector<cl::Kernel> krnls(num_cu);

	krnls[0] = cl::Kernel(program, "pagerank_kernel_0:{pagerank_kernel_0_1}", &err);
	krnls[1] = cl::Kernel(program, "pagerank_kernel_0:{pagerank_kernel_0_2}", &err);
	krnls[2] = cl::Kernel(program, "pagerank_kernel_0:{pagerank_kernel_0_3}", &err);
	krnls[3] = cl::Kernel(program, "pagerank_kernel_0:{pagerank_kernel_0_4}", &err);
	krnls[4] = cl::Kernel(program, "pagerank_kernel_0:{pagerank_kernel_0_5}", &err);
	krnls[5] = cl::Kernel(program, "pagerank_kernel_0:{pagerank_kernel_0_6}", &err);
	krnls[6] = cl::Kernel(program, "pagerank_kernel_0:{pagerank_kernel_0_7}", &err);
	krnls[7] = cl::Kernel(program, "pagerank_kernel_0:{pagerank_kernel_0_8}", &err);
	krnls[8] = cl::Kernel(program, "pagerank_kernel_0:{pagerank_kernel_0_9}", &err);
	krnls[9] = cl::Kernel(program, "pagerank_kernel_0:{pagerank_kernel_0_10}", &err);
	krnls[10] = cl::Kernel(program, "pagerank_kernel_0:{pagerank_kernel_0_11}", &err);
	krnls[11] = cl::Kernel(program, "pagerank_kernel_0:{pagerank_kernel_0_12}", &err);
	krnls[12] = cl::Kernel(program, "pagerank_kernel_0:{pagerank_kernel_0_13}", &err);
	krnls[13] = cl::Kernel(program, "pagerank_kernel_0:{pagerank_kernel_0_14}", &err);
	krnls[14] = cl::Kernel(program, "pagerank_kernel_0:{pagerank_kernel_0_15}", &err);

	std::vector<cl::Buffer> outDegree(num_cu);
	std::vector<cl::Buffer> edgeSrc(num_cu);
	std::vector<cl::Buffer> edgeDst(num_cu);
	std::vector<cl::Buffer> output(num_cu);
	std::vector<cl::Buffer> ffsize(num_cu);



	uint64_t total_edges_visited = 0;
	int  edges_visited_by_kernel;
	for (int i=0; i<p2; i++){
		edges_visited_by_kernel += fsize[i]/sizeof(EdgeId);
	}
	
	auto start = get_time();
	// Create a vector of vectors to store the partitions assigned to each kernel
	std::vector<std::vector<std::pair<int, int>>> partitions_per_kernel(num_cu);

	// Distribute the partitions among the kernels
	int current_partition = 0;
	for (int i = 0; i < num_cu; i++) {
		int num_partitions_assigned = partitions_per_kernel_count;
		if (remaining_partitions > 0) {
			num_partitions_assigned++;
			remaining_partitions--;
		}

		for (int p = 0; p < num_partitions_assigned; p++) {
			int i_idx = current_partition / partitions;
			int j_idx = current_partition % partitions;

			// Add the current partition to the list of partitions assigned to this kernel
			partitions_per_kernel[i].push_back(std::make_pair(i_idx, j_idx));

			current_partition++;
		}
	}

	// Now, we can launch the kernels with their assigned partitions
	for (int i = 0; i < num_cu; i++) {
		for (const auto& partition : partitions_per_kernel[i]) {
			int i_idx = partition.first;
			int j_idx = partition.second;
#ifdef DEBUG1
			printf("partitions per kernel %d, %d,  %d\n", partitions_per_kernel, i);
			printf("i_idx %d\n", i_idx);
			printf("j_idx %d\n", j_idx);
#endif

			int fin_blk = open((path + "/block-" + std::to_string(i_idx) + "-" + std::to_string(j_idx)).c_str(), O_RDONLY);
			Edge* edge;
			EdgeId bytes;
			int size = (graph.fsize[i_idx][j_idx]) / (sizeof(EdgeId));

			if (size != 0) {
				edge = new Edge[size];
				bytes = read(fin_blk, edge, sizeof(EdgeId) * (size));
				for (int x = 0; x < size; x++) {
					struct Edge* e = &edge[x];
					src[x] = e->source;
			//		dst[x] = e->target;
				}
			}
			close(fin_blk);

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
			OCL_CHECK(err, err = krnls[i].setArg(0, edgeSrc[i]));
			OCL_CHECK(err, err = krnls[i].setArg(1, outDegree[i]));

			OCL_CHECK(err, err = krnls[i].setArg(2, output[i]));
			OCL_CHECK(err, err = krnls[i].setArg(3, fsize[i]));
			OCL_CHECK(err, err = krnls[i].setArg(4, vertices));
			// OCL_CHECK(err, err = krnls[i].setArg(6, partitions));

			/** copy data to the device global memory */
			OCL_CHECK(err, err = queues[i].enqueueMigrateMemObjects({edgeSrc[i]}, 0));
			OCL_CHECK(err, err = queues[i].enqueueMigrateMemObjects({outDegree[i]}, 0));
			OCL_CHECK(err, err = queues[i].enqueueMigrateMemObjects({ffsize[i]}, 0));
		
		}

	}

	auto start_krnl = get_time();
	// Launch the Kernels
	for (int i = 0; i < num_cu; i++) {
			OCL_CHECK(err, err = queues[i].enqueueTask(krnls[i]));
	}

	// Wait for all the kernels to finish
	for (int i = 0; i < num_cu; i++) {
		OCL_CHECK(err, err = queues[i].finish());
	}

	double total_kernel_execution_time = get_time() - start_krnl;
	double total_execution_time = get_time() - start;
	printf("[INFO] Kernel(s) execution time: %f sec\n", total_kernel_execution_time);
	printf("[INFO] Overall execution time: %f sec\n", total_execution_time);
	double teps = static_cast<double>(edges_visited_by_kernel) / total_kernel_execution_time;

	printf("[INFO] Total visited edges for all kernels: %ld\n", edges_visited_by_kernel);
	printf("[INFO] TEPS for the entire graph (MTEPS): %g\n", teps/1e6);

	printf("finish\n");

	// Clean up
	//    for (int i = 0; i < num_cu; i++) {
	//      delete[] krnls[i];
	// }

	return 0;
}
