#include <stdio.h>
#include <stdlib.h>
#include <time.h>
//#include "sssp_kernel_0.h" // Include the generated header file

#define DATA_SIZE 128 // Modify this based on your kernel's input size
// Function to test your kernel
//void sssp_kernel_0(int *input1, int *input2, int *output, int size, int vertices);

int main() {

    int *input1 = (int*)malloc(DATA_SIZE * sizeof(int));
    int *input2 = (int*)malloc(DATA_SIZE * sizeof(int));
    int *output = (int*)malloc(DATA_SIZE * sizeof(int));
    int vertices = 100;
    // Generate random input data
    srand(time(NULL));
    for (int i = 0; i < DATA_SIZE; i++) {
        input1[i] = rand() % 100; // Modify this based on your input range
        input2[i] = rand() % 100; // Modify this based on your input range
    }

    // Call your kernel function
    sssp_kernel_0(input1, input2, output, DATA_SIZE, vertices);

    // Verify the results
    bool success = true;
    for (int i = 0; i < DATA_SIZE; i++) {
        // Perform your verification logic here
        // Compare output[i] with expected output
        // Set 'success' flag to false if the verification fails
    }

    // Print the results
    if (success) {
        printf("Verification successful!\n");
    } else {
        printf("Verification failed!\n");
    }

    // Clean up allocated memory
    free(input1);
    free(input2);

    free(output);

    return 0;
}
<<<<<<< HEAD
=======
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
//OCL_CHECK(err, cl::Kernel kernel(program,"sssp_kernel_0", &err));
std::vector<cl::Kernel> krnls(num_cu);
//	OCL_CHECK(err, krnls[i] = cl::Kernel(program, "sssp_kernel_0", &err));

krnls[0] = cl::Kernel(program, "sssp_kernel_0:{sssp_kernel_0_1}", &err);
krnls[1] = cl::Kernel(program, "sssp_kernel_0:{sssp_kernel_0_2}", &err);
krnls[2] = cl::Kernel(program, "sssp_kernel_0:{sssp_kernel_0_3}", &err);
krnls[3] = cl::Kernel(program, "sssp_kernel_0:{sssp_kernel_0_4}", &err);
krnls[4] = cl::Kernel(program, "sssp_kernel_0:{sssp_kernel_0_5}", &err);
krnls[5] = cl::Kernel(program, "sssp_kernel_0:{sssp_kernel_0_6}", &err);
krnls[6] = cl::Kernel(program, "sssp_kernel_0:{sssp_kernel_0_7}", &err);
krnls[7] = cl::Kernel(program, "sssp_kernel_0:{sssp_kernel_0_8}", &err);
krnls[8] = cl::Kernel(program, "sssp_kernel_0:{sssp_kernel_0_9}", &err);
krnls[9] = cl::Kernel(program, "sssp_kernel_0:{sssp_kernel_0_10}", &err);
krnls[10] = cl::Kernel(program, "sssp_kernel_0:{sssp_kernel_0_11}", &err);
krnls[11] = cl::Kernel(program, "sssp_kernel_0:{sssp_kernel_0_12}", &err);
krnls[12] = cl::Kernel(program, "sssp_kernel_0:{sssp_kernel_0_13}", &err);
krnls[13] = cl::Kernel(program, "sssp_kernel_0:{sssp_kernel_0_14}", &err);
krnls[14] = cl::Kernel(program, "sssp_kernel_0:{sssp_kernel_0_15}", &err);


std::vector<cl::Buffer> edgeSrc(num_cu);
std::vector<cl::Buffer> edgeDst(num_cu);
std::vector<cl::Buffer> output(num_cu);
std::vector<cl::Buffer> ffsize(num_cu);

for (int i = 0; i < num_cu; i++) {
	/** Host buffers pointers */
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
	OCL_CHECK(err, err = krnls[i].setArg(2, output[i]));	
	OCL_CHECK(err, err = krnls[i].setArg(3, ffsize[i]));	
	OCL_CHECK(err, err = krnls[i].setArg(4, vertices));
	/** copy data to the device global memory */
	OCL_CHECK(err, err = q.enqueueMigrateMemObjects({edgeSrc[i]}, 0 ));
	OCL_CHECK(err, err = q.enqueueMigrateMemObjects({edgeDst[i]}, 0 ));
	OCL_CHECK(err, err = q.enqueueMigrateMemObjects({ffsize[i]}, 0 ));
}

auto start_krnl = get_time();

for (int i = 0; i < num_cu; i++) {
	/** Launch the Kernel */
	OCL_CHECK(err, err = q.enqueueTask(krnls[i]));

}

OCL_CHECK(err, err = q.finish());
printf("[INFO] Kernel(s) execution time: %f sec\n", get_time() - start_krnl);

/*
auto start_cp_out = get_time();
for (int i = 0; i < num_cu; i++) {

	OCL_CHECK(err,
			err = q.enqueueMigrateMemObjects({output[i]},
				CL_MIGRATE_MEM_OBJECT_HOST));
}
printf("[INFO] move from Global Memory to host: %f sec\n", get_time() - start_cp_out);

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


>>>>>>> 35942d306a8783385afaedbe3618e71c2eaf122a
