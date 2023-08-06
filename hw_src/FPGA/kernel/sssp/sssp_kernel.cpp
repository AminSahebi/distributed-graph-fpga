#include <ap_int.h>
#include <stdint.h>
#include <hls_stream.h>

#define DATA_WIDTH 512
#define PE 4
#define BUF_PER_PE 64
#define CACHE_SIZE 32

#define BRAM_DEPTH CACHE_SIZE * BUF_PER_PE


typedef unsigned int u32;

struct CacheEntry {
    u32 data;
    bool valid;
    bool dirty;
};

struct CacheBlock {
    CacheEntry entries[CACHE_SIZE];
};

void update_lru(CacheBlock cache[BUF_PER_PE], int index) {
    CacheBlock temp = cache[index];
    loop_lru: for (int i = index; i > 0; i--) {
#pragma HLS pipeline II=1
        cache[i] = cache[i - 1];
    }
    cache[0] = temp;
}

void fetch_cache_block(CacheBlock* cache_L1, u32* global_data, int addr) {
    int block_index = addr / CACHE_SIZE;
    int block_start_addr = block_index * CACHE_SIZE;

    // Burst read data into cache buffer
    for (int i = 0; i < CACHE_SIZE; i++) {
#pragma HLS pipeline II=1
        u32 data = global_data[block_start_addr + i];
        cache_L1->entries[i].data = data;
        cache_L1->entries[i].valid = true;
        cache_L1->entries[i].dirty = false;
    }
}

void buffer_load(CacheBlock cache_L1_a[PE][BUF_PER_PE], CacheBlock cache_L1_b[PE][BUF_PER_PE], u32* global_data_a, u32* global_data_b) {
    // Cache Labeling
    int num_cache_blocks = BUF_PER_PE / CACHE_SIZE;

    // Cache Buffer for e_src and out_degree arrays
    u32 cache_buffer_a[CACHE_SIZE * num_cache_blocks];
    u32 cache_buffer_b[CACHE_SIZE * num_cache_blocks];

    // Cache Label Array to keep track of cached blocks
    bool cache_label_a[num_cache_blocks];
    bool cache_label_b[num_cache_blocks];

    // Initialize cache labels to false
    for (int i = 0; i < num_cache_blocks; i++) {
        cache_label_a[i] = false;
        cache_label_b[i] = false;
    }

    loop_load_outer: for (int i = 0; i < PE; i++) {
#pragma HLS unroll//LOOP_FLATTEN
        loop_load_inner: for (int chunk_idx = 0; chunk_idx < BUF_PER_PE / CACHE_SIZE; chunk_idx++) {
//pipeline II=1
            // Calculate the base address for the current cache block
            int base_addr_a = i * BUF_PER_PE + chunk_idx * CACHE_SIZE;
            int base_addr_b = i * BUF_PER_PE + chunk_idx * CACHE_SIZE;

            // Load the current cache block from global memory to cache_buffer_a
            if (!cache_label_a[chunk_idx]) {
                fetch_cache_block(&cache_L1_a[i][chunk_idx * CACHE_SIZE], &global_data_a[base_addr_a], base_addr_a);
                for (int k = 0; k < CACHE_SIZE; k++) {
#pragma HLS pipeline II=1
                    cache_buffer_a[chunk_idx * CACHE_SIZE + k] = cache_L1_a[i][chunk_idx * CACHE_SIZE].entries[k].data;
                }
                cache_label_a[chunk_idx] = true;
            }

            // Use data from cache_buffer_a
            for (int k = 0; k < CACHE_SIZE; k++) {
#pragma HLS pipeline II=1
                int addr_a = base_addr_a + k;
                cache_L1_a[i][addr_a % BUF_PER_PE].entries[addr_a % CACHE_SIZE].data = cache_buffer_a[chunk_idx * CACHE_SIZE + k];
                cache_L1_a[i][addr_a % BUF_PER_PE].entries[addr_a % CACHE_SIZE].valid = true;
                cache_L1_a[i][addr_a % BUF_PER_PE].entries[addr_a % CACHE_SIZE].dirty = false;
            }

            // Load the current cache block from global memory to cache_buffer_b
            if (!cache_label_b[chunk_idx]) {
                fetch_cache_block(&cache_L1_b[i][chunk_idx * CACHE_SIZE], &global_data_b[base_addr_b], base_addr_b);
                for (int k = 0; k < CACHE_SIZE; k++) {
#pragma HLS pipeline II=1
                    cache_buffer_b[chunk_idx * CACHE_SIZE + k] = cache_L1_b[i][chunk_idx * CACHE_SIZE].entries[k].data;
                }
                cache_label_b[chunk_idx] = true;
            }

            // Use data from cache_buffer_b
            for (int k = 0; k < CACHE_SIZE; k++) {
#pragma HLS pipeline II=1
                int addr_b = base_addr_b + k;
                cache_L1_b[i][addr_b % BUF_PER_PE].entries[addr_b % CACHE_SIZE].data = cache_buffer_b[chunk_idx * CACHE_SIZE + k];
                cache_L1_b[i][addr_b % BUF_PER_PE].entries[addr_b % CACHE_SIZE].valid = true;
                cache_L1_b[i][addr_b % BUF_PER_PE].entries[addr_b % CACHE_SIZE].dirty = false;
            }
        }
    }
}

void SSSP_kernel(u32 local_in_a[CACHE_SIZE], u32 local_in_b[CACHE_SIZE], u32 local_out[CACHE_SIZE], int v, int source_vertex) {
#pragma HLS inline
    CacheBlock cache_L1[CACHE_SIZE];
#pragma HLS ARRAY_PARTITION variable=cache_L1 complete dim=0

    for (int j = 0; j < CACHE_SIZE; j++) {
#pragma HLS pipeline II=1
        cache_L1[j].entries[j].valid = false;
        cache_L1[j].entries[j].dirty = false;
    }

    u32 distance_buffer[CACHE_SIZE];
#pragma HLS bind_storage variable=distance_buffer type=RAM_1WNR impl=bram
#pragma HLS ARRAY_PARTITION variable=distance_buffer complete dim=0

    for (int j = 0; j < CACHE_SIZE; j++) {
        // Initialize distance_buffer to a large value (infinity)
        distance_buffer[j] = (u32)-1;
    }

    // Set the distance of the source vertex to 0
    if (source_vertex < CACHE_SIZE) {
        distance_buffer[source_vertex] = 0;
    }

    for (int iter = 0; iter < v - 1; iter++) {
#pragma HLS unroll//LOOP_FLATTEN
        for (int j = 0; j < CACHE_SIZE; j += 2) {
            u32 src1 = local_in_a[j];
            u32 dst1 = local_in_b[j];
            u32 cost1 = local_in_b[j + 1]; // Assuming the edge weight is stored in local_in_b[j + 1]
            if (distance_buffer[src1] + cost1 < distance_buffer[dst1]) {
                distance_buffer[dst1] = distance_buffer[src1] + cost1;
            }

            u32 src2 = local_in_a[j + 1];
            u32 dst2 = local_in_b[j + 1];
            u32 cost2 = local_in_b[j + 2]; // Assuming the edge weight is stored in local_in_b[j + 2]
            if (distance_buffer[src2] + cost2 < distance_buffer[dst2]) {
                distance_buffer[dst2] = distance_buffer[src2] + cost2;
            }
        }
    }

    for (int j = 0; j < CACHE_SIZE; j++) {
        local_out[j] = distance_buffer[j];
    }
}



void buffer_compute(CacheBlock cache_L1_a[PE][BUF_PER_PE], CacheBlock cache_L1_b[PE][BUF_PER_PE], u32 local_out[PE][BUF_PER_PE], int v, int source_vertex) {
    u32 local_in_a[PE][BUF_PER_PE];
#pragma HLS ARRAY_PARTITION variable=local_in_a complete dim=1
    u32 local_in_b[PE][BUF_PER_PE];
#pragma HLS ARRAY_PARTITION variable=local_in_b complete dim=1
    // Use BRAM for distance_buffer
    u32 distance_buffer[BRAM_DEPTH];
#pragma HLS bind_storage variable=distance_buffer type=RAM_1WNR impl=bram

//#pragma HLS ARRAY_PARTITION variable=distance_buffer complete dim=0

    // Load data from cache_L2 into local_in_a and local_in_b for the current group
    for (int i = 0; i < PE; i++) {
#pragma HLS LOOP_FLATTEN
        for (int chunk_idx = 0; chunk_idx < BUF_PER_PE / CACHE_SIZE; chunk_idx++) {
            int base_idx = chunk_idx * CACHE_SIZE;

            // Load a chunk of data from cache_L1_a and cache_L1_b to local_in_a and local_in_b
            for (int k = 0; k < CACHE_SIZE; k++) {
#pragma HLS unroll
                int idx = base_idx + k;
                if (idx < BUF_PER_PE) {
                    local_in_a[i][idx] = cache_L1_a[i][chunk_idx].entries[k].data;
                    local_in_b[i][idx] = cache_L1_b[i][chunk_idx].entries[k].data;
                }
            }
        }
    }

    // Perform computation for the current group using SSSP_kernel
    for (int pe_idx = 0; pe_idx < PE; pe_idx++) {
#pragma HLS unroll//LOOP_FLATTEN
        for (int chunk_idx = 0; chunk_idx < BUF_PER_PE / CACHE_SIZE; chunk_idx++) {
            int start_idx = chunk_idx * CACHE_SIZE;
            int end_idx = start_idx + CACHE_SIZE;

            // Adjust end_idx to avoid out-of-bounds access
            if (end_idx > BUF_PER_PE) {
                end_idx = BUF_PER_PE;
            }

            // Copy data from BRAM to distance_buffer before calling SSSP_kernel
            for (int k = 0; k < CACHE_SIZE; k++) {
#pragma HLS pipeline
                distance_buffer[k] = local_out[pe_idx][start_idx + k];
            }

            SSSP_kernel(&local_in_a[pe_idx][start_idx], &local_in_b[pe_idx][start_idx], distance_buffer, v, source_vertex);

            // Copy data from distance_buffer to BRAM after calling SSSP_kernel
            for (int k = 0; k < CACHE_SIZE; k++) {
                local_out[pe_idx][start_idx + k] = distance_buffer[k];
            }
        }
    }
}




void buffer_store(u32* global_out, u32 local_out[PE][BUF_PER_PE]) {
loop_store_outer: for (int i = 0; i < PE; i++) {
#pragma HLS unroll
loop_store_inner: for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline II=1
        int addr = i * BUF_PER_PE + j;
        u32 temp = local_out[i][j];
        global_out[addr] = temp;
    }
}
}

extern "C" {
    void sssp_kernel_0(u32* e_src, u32* out_degree, u32* out_r, int size, int vertices, int source_vertex) {
#pragma HLS INTERFACE m_axi port=e_src offset=slave bundle=gmem num_write_outstanding=1 max_write_burst_length=1 num_read_outstanding=1 max_read_burst_length=1
#pragma HLS INTERFACE m_axi port=out_degree offset=slave bundle=gmem num_write_outstanding=1 max_write_burst_length=1 num_read_outstanding=1 max_read_burst_length=1
#pragma HLS INTERFACE m_axi port=out_r offset=slave bundle=gmem num_write_outstanding=1 max_write_burst_length=1 num_read_outstanding=1 max_read_burst_length=1

        int v = vertices;

        CacheBlock cache_L1_a[PE][BUF_PER_PE];
#pragma HLS ARRAY_PARTITION variable=cache_L1_a complete dim=1
        CacheBlock cache_L1_b[PE][BUF_PER_PE];
#pragma HLS ARRAY_PARTITION variable=cache_L1_b complete dim=1

        u32 local_out[PE][BUF_PER_PE];
#pragma HLS ARRAY_PARTITION variable=local_out complete dim=1

        // Make sure 'size' is a multiple of BUF_PER_PE for proper loop iterations

loop_start: for (int i = 0; i < (size / BUF_PER_PE) + 1; i++) {
            buffer_load(cache_L1_a, cache_L1_b, &e_src[i], &out_degree[i]);
            buffer_compute(cache_L1_a, cache_L1_b, local_out, v, source_vertex);
            buffer_store(&out_r[i], local_out);
        }
    }
}

