#include <ap_int.h>
#include <stdint.h>
#include <string.h>
//#include "defn.h"

#define DAMPING_FACTOR 	0.85
#define BUFFER_SIZE 	2048
#define DATA_WIDTH 	512
#define PE 		64

#define BUF_PER_PE	BUFFER_SIZE/PE

typedef ap_uint<DATA_WIDTH> u_data;

typedef unsigned int u32;
typedef unsigned int u16;
int v;

void PE_kernel(u32 local_in_a[], u32 local_in_b[], u32 local_in_c[], u32 local_out[]) {
    u32 distance_buffer[BUF_PER_PE]; // Local memory to store distances
#pragma HLS ARRAY_PARTITION variable=distance_buffer dim=0

    // Initialize distances
init_distances:
    for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline
        distance_buffer[j] = (local_in_a[j] == 0) ? 0 : UINT32_MAX;
    }

    // Perform SSSP computation
sssp_computation:
    for (int k = 0; k < v - 1; k++) {
        for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline
            u32 src = local_in_a[j]; // Edge source buffer
            u32 dst = local_in_b[j]; // Edge destination buffer
            u32 weight = local_in_c[j]; // Edge weight buffer

            if (distance_buffer[src] != UINT32_MAX && distance_buffer[src] + weight < distance_buffer[dst]) {
                distance_buffer[dst] = distance_buffer[src] + weight;
            }
        }
    }

    // Write computed distances to output buffer
write_distances:
    for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline
        local_out[j] = distance_buffer[j];
    }
}

void buffer_load(u32 local_in_a[PE][BUF_PER_PE], u32 local_in_b[PE][BUF_PER_PE], u32 local_in_c[PE][BUF_PER_PE], u_data *global_in_a, u_data *global_in_b, u_data *global_in_c) {
    for (int i = 0; i < PE; i++) {
#pragma HLS pipeline
        memcpy(local_in_a[i], &global_in_a[i * BUF_PER_PE], BUF_PER_PE * sizeof(u32));
        memcpy(local_in_b[i], &global_in_b[i * BUF_PER_PE], BUF_PER_PE * sizeof(u32));
        memcpy(local_in_c[i], &global_in_c[i * BUF_PER_PE], BUF_PER_PE * sizeof(u32));
    }
}

void buffer_compute(u32 local_in_a[PE][BUF_PER_PE], u32 local_in_b[PE][BUF_PER_PE], u32 local_in_c[PE][BUF_PER_PE], u32 local_out[PE][BUF_PER_PE]) {
    for (int i = 0; i < PE; i++) {
#pragma HLS UNROLL
        PE_kernel(local_in_a[i], local_in_b[i], local_in_c[i], local_out[i]);
    }
}

void buffer_store(u_data *global_out, u32 local_out[PE][BUF_PER_PE]) {
    for (int i = 0; i < PE; i++) {
#pragma HLS pipeline
        memcpy(&global_out[i * BUF_PER_PE], local_out[i], BUF_PER_PE * sizeof(u32));
    }
}

extern "C" {
    void sssp_kernel_0(
        u_data *e_src,        // Edge sources
        u_data *e_dst,        // Edge destinations
        u_data *out_degree,   // Out degrees
        u_data *out_r,        // Output Result
        int size,             // Size of each edge block
        int vertices          // Number of vertices
    ) {
#pragma HLS INTERFACE m_axi port = e_src offset = slave bundle=gmem num_write_outstanding=64 max_write_burst_length=64 num_read_outstanding=64 max_read_burst_length=64
#pragma HLS INTERFACE m_axi port = e_dst offset = slave bundle=gmem num_write_outstanding=64 max_write_burst_length=64 num_read_outstanding=64 max_read_burst_length=64
#pragma HLS INTERFACE m_axi port = out_degree offset = slave bundle=gmem num_write_outstanding=64 max_write_burst_length=64 num_read_outstanding=64 max_read_burst_length=64
#pragma HLS INTERFACE m_axi port = out_r offset = slave bundle=gmem num_write_outstanding=64 max_write_burst_length=64 num_read_outstanding=64 max_read_burst_length=64

        v = vertices;

        u32 e_src_buffer_a[PE][BUF_PER_PE];    // Local memory to store edge source
        u32 e_src_buffer_b[PE][BUF_PER_PE];    // Local memory to store edge source
        u32 e_dst_buffer_a[PE][BUF_PER_PE];    // Local memory to store edge dest
        u32 e_dst_buffer_b[PE][BUF_PER_PE];    // Local memory to store edge dest
        u32 out_deg_buffer_a[PE][BUF_PER_PE];  // Local Memory to store out degree
        u32 out_deg_buffer_b[PE][BUF_PER_PE];  // Local Memory to store out degree
        u32 output_buffer_a[PE][BUF_PER_PE];   // Local Memory to store result
  u32 output_buffer_b[PE][BUF_PER_PE];   // Local Memory to store result
#pragma HLS ARRAY_PARTITION variable=output_buffer_b complete dim=1    
        u32 local_out[PE][BUF_PER_PE];         // Local temp for kernel output
        u32 local_in_a[PE][BUF_PER_PE];        // Local temp for kernel computation
        u32 local_in_b[PE][BUF_PER_PE];        // Local temp for kernel computation
        u32 local_in_c[PE][BUF_PER_PE];        // Local temp for kernel computation

        for (int i = 0; i < size / BUFFER_SIZE + 1; i++) {
            // Double buffering
            if (i % 2 == 0) {
                buffer_load(e_src_buffer_a, e_dst_buffer_a, out_deg_buffer_a, e_src + i * BUF_PER_PE, e_dst + i * BUF_PER_PE, out_degree + i * BUF_PER_PE);
                buffer_compute(e_src_buffer_b, e_dst_buffer_b, out_deg_buffer_b, output_buffer_b);
                buffer_store(out_r + i * BUF_PER_PE, output_buffer_a);
            } else {
                buffer_load(e_src_buffer_b, e_dst_buffer_b, out_deg_buffer_b, e_src + i * BUF_PER_PE, e_dst + i * BUF_PER_PE, out_degree + i * BUF_PER_PE);
                buffer_compute(e_src_buffer_a, e_dst_buffer_a, out_deg_buffer_a, output_buffer_a);
                buffer_store(out_r + i * BUF_PER_PE, output_buffer_b);
            }
        }
    }
}

