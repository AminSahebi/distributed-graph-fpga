#include <ap_int.h>
#include <stdint.h>
#include <string.h>
#include <hls_stream.h>

#define DAMPING_FACTOR 	0.85
#define DATA_WIDTH 	    512
#define PE 	            1	
#define BUF_PER_PE	    64   // Reduced buffer size per PE

typedef ap_uint<DATA_WIDTH> u_data;

typedef unsigned int u32;

void PE_kernel(u_data local_in_a[], u_data local_in_b[], u_data local_in_c[], u_data local_out[], int v) {
    // The implementation of PE_kernel remains unchanged
    // ... (as in your original code) ...
#pragma HLS inline
        u32 prev_buffer[BUF_PER_PE]; // Local Memory to store result
#pragma HLS ARRAY_PARTITION variable=prev_buffer dim=0
        u32 rank_buffer[BUF_PER_PE]; // Local Memory to store result
#pragma HLS ARRAY_PARTITION variable=rank_buffer dim=0
        // start init grid algorithm and
        // init "rank" and "prev" memories.

        float adding_constant = (1 - DAMPING_FACTOR) * 1/(float)v;
        float one_over_n = 1.0/(float)v;

loop_initialization:    for(int j = 0; j < BUF_PER_PE; j++){
#pragma HLS pipeline II=1
                                prev_buffer[j] = one_over_n;
                                rank_buffer[j] = 0.0;
                        }


kernel_loop:            for(int j = 0; j < BUF_PER_PE; j++){
#pragma HLS pipeline II=1
                                u32 src = local_in_a[j]; //edge src buffer
                                u32 dst = local_in_b[j]; //edge dst buffer
                                u32 deg = local_in_c[j]; //outdegree buffer
                                u32 temp = prev_buffer[src]/deg;
                                rank_buffer[dst] = temp;
                                local_out[j] = rank_buffer[dst];
                        }

}

void scatter_process(
    u_data *e_src,
    u_data *e_dst,
    u_data *out_degree,
    hls::stream<u_data> src_stream[PE],
    hls::stream<u_data> dst_stream[PE],
    hls::stream<u_data> deg_stream[PE],
    int size,
    int vertices
) {
    int v = vertices;

scatter_loop:
    for (int i = 0; i < size; i++) {
        #pragma HLS pipeline II=1
        int pe_id = i % PE; // Partition data across PEs
        src_stream[pe_id].write(e_src[i]);
        dst_stream[pe_id].write(e_dst[i]);
        deg_stream[pe_id].write(out_degree[i]);
    }
}

void apply_process(
    hls::stream<u_data> src_stream[PE],
    hls::stream<u_data> dst_stream[PE],
    hls::stream<u_data> deg_stream[PE],
    hls::stream<u_data> result_stream[PE],
    int v
) {
    u_data src_buffer[PE][BUF_PER_PE];
    u_data dst_buffer[PE][BUF_PER_PE];
    u_data deg_buffer[PE][BUF_PER_PE];
    u_data local_out[PE][BUF_PER_PE];

apply_loop:
    for (int i = 0; i < BUF_PER_PE; i++) {
        #pragma HLS unroll
        for (int pe_id = 0; pe_id < PE; pe_id++) {
            #pragma HLS pipeline II=1
            src_buffer[pe_id][i] = src_stream[pe_id].read();
            dst_buffer[pe_id][i] = dst_stream[pe_id].read();
            deg_buffer[pe_id][i] = deg_stream[pe_id].read();
            PE_kernel(&src_buffer[pe_id][i], &dst_buffer[pe_id][i], &deg_buffer[pe_id][i], &local_out[pe_id][i], v);
        }
    }

apply_write:
    for (int i = 0; i < BUF_PER_PE; i++) {
        #pragma HLS unroll
        for (int pe_id = 0; pe_id < PE; pe_id++) {
            #pragma HLS pipeline II=1
            result_stream[pe_id].write(local_out[pe_id][i]);
        }
    }
}

void reduce_process(
    hls::stream<u_data> result_stream[PE],
    u_data *out_r,
    int size
) {
reduce_loop:
    for (int i = 0; i < size; i++) {
        #pragma HLS pipeline II=1
        for (int pe_id = 0; pe_id < PE; pe_id++) {
            out_r[i * PE + pe_id] = result_stream[pe_id].read();
        }
    }
}

extern "C" {
    void pagerank_kernel_0(
            u_data *e_src,
            u_data *e_dst,
            u_data *out_degree,
            u_data *out_r,
            int size,
            int vertices
    ) {
        hls::stream<u_data> src_stream[PE];
        hls::stream<u_data> dst_stream[PE];
        hls::stream<u_data> deg_stream[PE];
        hls::stream<u_data> result_stream[PE];

    #pragma HLS dataflow

        int v = vertices;

        // Set depth of streams using pragma
        #pragma HLS stream variable=src_stream depth=8//BUF_PER_PE
        #pragma HLS stream variable=dst_stream depth=8//BUF_PER_PE
        #pragma HLS stream variable=deg_stream depth=8//BUF_PER_PE
        #pragma HLS stream variable=result_stream depth=8//BUF_PER_PE

        scatter_process(e_src, e_dst, out_degree, src_stream, dst_stream, deg_stream, size, vertices);
        apply_process(src_stream, dst_stream, deg_stream, result_stream, vertices);
        reduce_process(result_stream, out_r, size);
    }
}

