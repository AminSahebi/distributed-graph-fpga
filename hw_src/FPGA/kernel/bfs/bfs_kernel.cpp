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
    u32 frontier_buffer[BUF_PER_PE]; // Local memory to store the frontier
#pragma HLS ARRAY_PARTITION variable=frontier_buffer dim=0
    u32 next_frontier_buffer[BUF_PER_PE]; // Local memory to store the next frontier
#pragma HLS ARRAY_PARTITION variable=next_frontier_buffer dim=0

    bool visited_buffer[BUF_PER_PE]; // Local memory to store visited flags
#pragma HLS ARRAY_PARTITION variable=visited_buffer dim=0

    // Initialize frontier, next frontier, and visited flags
    for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline
        frontier_buffer[j] = (local_in_a[j] == 0) ? 1 : 0; // Set the source vertex as the initial frontier
        next_frontier_buffer[j] = 0;
        visited_buffer[j] = false;
    }

    // Perform BFS traversal
    int level = 0;
    while (true) {
        bool frontier_empty = true;
        for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline II=10
#pragma HLS LOOP_FLATTEN
            if (frontier_buffer[j]) {
                frontier_empty = false;
                u32 src = local_in_a[j]; // Edge source buffer
                u32 dst = local_in_b[j]; // Edge destination buffer

                // Visit unvisited vertices and add them to the next frontier
                if (!visited_buffer[dst]) {
                    visited_buffer[dst] = true;
                    next_frontier_buffer[dst] = 1;
                }
            }
        }

        // Exit the loop if the frontier is empty
        if (frontier_empty) {
            break;
        }

        // Copy the next frontier to the current frontier
        for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline
#pragma HLS LOOP_FLATTEN
//#pragma HLS unroll
            frontier_buffer[j] = next_frontier_buffer[j];
            next_frontier_buffer[j] = 0;
        }

        level++;
    }

    // Write the computed levels to the output buffer
    for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline
//#pragma HLS unroll
        local_out[j] = level * visited_buffer[j]; // Write the level only if the vertex was visited
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
	void bfs_kernel_0(
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

		u32 local_out[PE][BUF_PER_PE]; // Local temp for kernel output
#pragma HLS ARRAY_PARTITION variable=local_out dim=1 complete

		u32 local_in_a[PE][BUF_PER_PE]; // Local temp for kernel computation
#pragma HLS ARRAY_PARTITION variable=local_in_a dim=1 complete

		u32 local_in_b[PE][BUF_PER_PE]; // Local temp for kernel computation
#pragma HLS ARRAY_PARTITION variable=local_in_b dim=1 complete


start_loop:		for (int i = 0; i < size/BUF_PER_PE+1; i++) {
				buffer_load(local_in_a, local_in_b, &e_src[i*BUF_PER_PE], &e_dst[i*BUF_PER_PE]);
				buffer_compute(local_in_a, local_in_b, local_out, v);
				buffer_store(&out_r[i*BUF_PER_PE], local_out);
			}
	}
}
