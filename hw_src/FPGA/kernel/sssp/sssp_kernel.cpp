#include <ap_int.h>
#include <stdint.h>
#include <string.h>

#define DAMPING_FACTOR  0.85
#define BUFFER_SIZE     16
#define DATA_WIDTH      32
#define PE              4

#define BUF_PER_PE      BUFFER_SIZE/PE

typedef ap_uint<DATA_WIDTH> u_data;

typedef unsigned int u32;
typedef unsigned int u16;

void buffer_load_a(u32 local_in_a[PE][BUF_PER_PE][BUFFER_SIZE], u_data *global_in_a) {
	for (int i = 0; i < PE; i++) {
#pragma HLS unroll factor=PE
		for (int j = 0; j < BUF_PER_PE; j++) {
			int src_offset = (i * BUF_PER_PE + j) * BUFFER_SIZE;
			int num_bytes = BUFFER_SIZE * sizeof(u32);

			memcpy(local_in_a[i][j], &global_in_a[src_offset], num_bytes);
		}
	}
}

void buffer_load_b(u32 local_in_b[PE][BUF_PER_PE][BUFFER_SIZE], u_data *global_in_b) {
	for (int i = 0; i < PE; i++) {
#pragma HLS unroll factor=PE
		for (int j = 0; j < BUF_PER_PE; j++) {
			int src_offset = (i * BUF_PER_PE + j) * BUFFER_SIZE;
			int num_bytes = BUFFER_SIZE * sizeof(u32);

			memcpy(local_in_b[i][j], &global_in_b[src_offset], num_bytes);
		}
	}
}

void PE_kernel(u32 local_in_a[BUF_PER_PE][BUFFER_SIZE], u32 local_in_b[BUF_PER_PE][BUFFER_SIZE], u32 local_out[BUF_PER_PE][BUFFER_SIZE], int v) {
	// Local memory to store distances
	u32 distance_buffer[BUF_PER_PE][BUFFER_SIZE];
#pragma HLS ARRAY_PARTITION variable=distance_buffer dim=1
#pragma HLS bind_storage variable=distance_buffer type=RAM_1P

	// Initialize distances
	for (int j = 0; j < BUF_PER_PE; j++) {
		for (int k = 0; k < BUFFER_SIZE; k++) {
#pragma HLS pipeline 
			distance_buffer[j][k] = (local_in_a[j][k] == 0) ? 0 : UINT32_MAX;
		}
	}

	// Perform SSSP computation
sssp_comput_outer:
	for (int iter = 0; iter < v - 1; iter++) {
		for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS unroll factor=PE
			for (int k = 0; k < BUFFER_SIZE; k++) {
#pragma HLS pipeline
				u32 src = local_in_a[j][k]; // Edge source buffer
				u32 dst = local_in_b[j][k]; // Edge destination buffer
				// Assuming the graph is directed and all edges have weight = 1
				if (distance_buffer[j][src] != UINT32_MAX && distance_buffer[j][src] + 1 < distance_buffer[j][dst]) {
					distance_buffer[j][dst] = distance_buffer[j][src] + 1;
				}
			}
		}
	}

	// Write computed distances to output buffer
	for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS unroll factor=PE
		for (int k = 0; k < BUFFER_SIZE; k++) {
#pragma HLS pipeline 
			local_out[j][k] = distance_buffer[j][k];
		}
	}
}


void buffer_compute(u32 local_in_a[PE][BUF_PER_PE][BUFFER_SIZE], u32 local_in_b[PE][BUF_PER_PE][BUFFER_SIZE], u32 local_out[PE][BUF_PER_PE][BUFFER_SIZE], int v) {
buffer_compute_loop:
	for (int i = 0; i < PE; i++) {
#pragma HLS loop_flatten off
#pragma HLS UNROLL FACTOR = 2
		PE_kernel(local_in_a[i], local_in_b[i], local_out[i], v);
	}
}


void buffer_store(u_data *global_out, u32 local_out[PE][BUF_PER_PE][BUFFER_SIZE]) {
	for (int i = 0; i < PE; i++) {
#pragma HLS unroll factor=PE
		for (int j = 0; j < BUF_PER_PE; j++) {
			int dst_offset = (i * BUF_PER_PE + j) * BUFFER_SIZE;
			int num_bytes = BUFFER_SIZE * sizeof(u32);

			memcpy(&global_out[dst_offset], local_out[i][j], num_bytes);
		}
	}
}

extern "C" {
	void sssp_kernel_0(
			u_data *e_src,        // Edge sources
			u_data *e_dst,        // Edge destinations
			u_data *out_r,        // Output Result
			int size,             // Size of each edge block
			int vertices          // Number of vertices
			) {
#pragma HLS INTERFACE m_axi port = e_src /*depth=32*/ offset= slave bundle=gmem max_widen_bitwidth=256 //num_write_outstanding=64 max_write_burst_length=64 num_read_outstanding=64 max_read_burst_length=64
#pragma HLS INTERFACE m_axi port = e_dst /*depth=32*/ offset = slave bundle=gmem max_widen_bitwidth=256 //num_write_outstanding=64 max_write_burst_length=64 num_read_outstanding=64 max_read_burst_length=64
#pragma HLS INTERFACE m_axi port = out_r /*depth=32*/ offset = slave bundle=gmem max_widen_bitwidth=256 //num_write_outstanding=64 max_write_burst_length=64 num_read_outstanding=64 max_read_burst_length=64

		int v = vertices;
		u32 e_src_buffer_a[PE][BUF_PER_PE][BUFFER_SIZE];   // Local memory to store edge source
#pragma HLS bind_storage variable=e_src_buffer_a type=RAM_1P
#pragma HLS ARRAY_PARTITION variable=e_src_buffer_a dim=1 complete 
#pragma HLS array_partition var=e_src_buffer_a cyclic=PE dim=2

		u32 e_src_buffer_b[PE][BUF_PER_PE][BUFFER_SIZE];   // Local memory to store edge source
#pragma HLS bind_storage variable=e_src_buffer_b type=RAM_1P
#pragma HLS ARRAY_PARTITION variable=e_src_buffer_b dim=1 complete
#pragma HLS array_partition var=e_src_buffer_b cyclic=PE dim=2

		u32 e_dst_buffer_a[PE][BUF_PER_PE][BUFFER_SIZE];   // Local memory to store edge dest
#pragma HLS bind_storage variable=e_dst_buffer_a type=RAM_1P
#pragma HLS ARRAY_PARTITION variable=e_dst_buffer_a dim=1 complete
#pragma HLS array_partition var=e_dst_buffer_a cyclic=PE dim=2

		u32 e_dst_buffer_b[PE][BUF_PER_PE][BUFFER_SIZE];   // Local memory to store edge dest
#pragma HLS bind_storage variable=e_dst_buffer_b type=RAM_1P
#pragma HLS ARRAY_PARTITION variable=e_dst_buffer_b dim=1 complete
#pragma HLS array_partition var=e_dst_buffer_b cyclic=PE dim=2

		u32 output_buffer_a[PE][BUF_PER_PE][BUFFER_SIZE]; // Local Memory to store result
#pragma HLS bind_storage variable=output_buffer_a type=RAM_1P
#pragma HLS ARRAY_PARTITION variable=output_buffer_a dim=1 complete
#pragma HLS array_partition var=output_buffer_a cyclic=PE dim=2

		u32 output_buffer_b[PE][BUF_PER_PE][BUFFER_SIZE]; // Local Memory to store result
#pragma HLS bind_storage variable=output_buffer_b type=RAM_1P
#pragma HLS ARRAY_PARTITION variable=output_buffer_b dim=1 complete
#pragma HLS array_partition var=output_buffer_b cyclic=PE dim=2

		u32 local_out[PE][BUF_PER_PE][BUFFER_SIZE]; // Local temp for kernel output
#pragma HLS bind_storage variable=local_out type=RAM_1P
#pragma HLS ARRAY_PARTITION variable=local_out dim=1 complete
#pragma HLS array_partition var=local_out cyclic=PE dim=2

		u32 local_in_a[PE][BUF_PER_PE][BUFFER_SIZE]; // Local temp for kernel computation
#pragma HLS bind_storage variable=local_in_a type=RAM_1P
#pragma HLS ARRAY_PARTITION variable=local_in_a dim=1 complete
#pragma HLS array_partition var=local_in_a cyclic=PE dim=2

		u32 local_in_b[PE][BUF_PER_PE][BUFFER_SIZE]; // Local temp for kernel computation
#pragma HLS bind_storage variable=local_in_b type=RAM_1P
#pragma HLS ARRAY_PARTITION variable=local_in_b dim=1 complete
#pragma HLS array_partition var=local_in_b cyclic=PE dim=2
		// Perform dual-buffering
		for (int i = 0; i < size / (PE * BUFFER_SIZE) + 1; i++) {
			// Double buffering
			switch (i % 4)
				
			case 0:
				buffer_load_a(e_src_buffer_a, &e_src[i * 1 * BUF_PER_PE * BUFFER_SIZE]);
				buffer_load_b(e_dst_buffer_a, &e_dst[i * 1 * BUF_PER_PE * BUFFER_SIZE]);
				buffer_compute(e_src_buffer_a, e_dst_buffer_a, output_buffer_a, v);
				buffer_store(&out_r[i * 1 * BUF_PER_PE * BUFFER_SIZE], output_buffer_a);
			case 1:

				buffer_load_a(e_src_buffer_b, &e_src[i * 2 * BUF_PER_PE * BUFFER_SIZE]);
				buffer_load_b(e_dst_buffer_b, &e_dst[i * 2 * BUF_PER_PE * BUFFER_SIZE]);
				buffer_compute(e_src_buffer_b, e_dst_buffer_b, output_buffer_b, v);
				buffer_store(&out_r[i * 2 * BUF_PER_PE * BUFFER_SIZE], output_buffer_b);

			case 2:
				buffer_load_a(e_src_buffer_a, &e_src[i * 3 * BUF_PER_PE * BUFFER_SIZE]);
				buffer_load_b(e_dst_buffer_a, &e_dst[i * 3 * BUF_PER_PE * BUFFER_SIZE]);
				buffer_compute(e_src_buffer_a, e_dst_buffer_a, output_buffer_a, v);
				buffer_store(&out_r[i * 3 * BUF_PER_PE * BUFFER_SIZE], output_buffer_a);
			case 3:

				buffer_load_a(e_src_buffer_b, &e_src[i * 4 * BUF_PER_PE * BUFFER_SIZE]);
				buffer_load_b(e_dst_buffer_b, &e_dst[i * 4 * BUF_PER_PE * BUFFER_SIZE]);
				buffer_compute(e_src_buffer_b, e_dst_buffer_b, output_buffer_b, v);
				buffer_store(&out_r[i * 4 * BUF_PER_PE * BUFFER_SIZE], output_buffer_b);
		}
	}
}

