#include <ap_int.h>
#include <stdint.h>
#include <hls_stream.h>
#include <stdbool.h>

#define INF 0xFFFFFFFF
#define DATA_WIDTH 32
#define PE 4 // Number of PEs
#define BUF_PER_PE 64 // buffer size 

typedef ap_uint<DATA_WIDTH> u_data;

typedef unsigned int u32;

struct CacheEntry {
    u32 data;
    bool valid;
    bool dirty;
};

struct CacheBlock {
    CacheEntry entries[BUF_PER_PE];
};

void update_lru(CacheBlock cache[BUF_PER_PE], int index) {
    CacheBlock temp = cache[index];
    for (int i = index; i > 0; i--) {
#pragma HLS pipeline II=1
        cache[i] = cache[i - 1];
    }
    cache[0] = temp;
}

u32 read_from_cache(CacheBlock* cache, int addr) {
    int block_index = addr / BUF_PER_PE;
    int block_offset = addr % BUF_PER_PE;

    u32 data = cache[block_index].entries[block_offset].data;
    update_lru(cache, block_index);

    return data;
}

void fetch_cache_block(CacheBlock* cache_L1, u_data* global_data, int addr) {
    int block_index = addr / BUF_PER_PE;
    int block_start_addr = block_index * BUF_PER_PE;

    // Unroll the inner loop to reduce loop overhead
    for (int i = 0; i < BUF_PER_PE; i++) {
#pragma HLS unroll
        // Load data into cache directly without using an intermediate variable
        cache_L1->entries[i].data = global_data[block_start_addr + i];
        cache_L1->entries[i].valid = true;
        cache_L1->entries[i].dirty = false;
    }
}

void sssp_kernel(CacheBlock* cache_L1_a, CacheBlock* cache_L1_b, u_data* global_data_a, u_data* global_data_b,
                 u_data* out_r, int size, int vertices, u32 src_vertex, int pe_id) {
    // Divide the workload among PEs
    int elements_per_pe = size / PE;
    int start_index = pe_id * elements_per_pe;
    int end_index = (pe_id == (PE - 1)) ? size : start_index + elements_per_pe;

    // Initialize distances with INF
    u32 distances[BUF_PER_PE];
    for (int i = 0; i < BUF_PER_PE; i++) {
        distances[i] = INF;
    }

    distances[src_vertex] = 0;

    for (int i = 0; i < vertices; i++) {
        for (int j = start_index; j < end_index; j++) {
#pragma HLS pipeline II=1
            int addr_a = j;
            int addr_b = j;
            bool load_a = !cache_L1_a->entries[addr_a].valid || cache_L1_a->entries[addr_a].dirty;
            bool load_b = !cache_L1_b->entries[addr_b].valid || cache_L1_b->entries[addr_b].dirty;

            if (load_a) {
                fetch_cache_block(cache_L1_a, global_data_a, addr_a);
                cache_L1_a->entries[addr_a].dirty = false;
            }

            if (load_b) {
                fetch_cache_block(cache_L1_b, global_data_b, addr_b);
                cache_L1_b->entries[addr_b].dirty = false;
            }

            u32 local_in_a = cache_L1_a->entries[addr_a].data;
            u32 local_in_b = cache_L1_b->entries[addr_b].data;
            u32 new_distance = distances[local_in_a] + 1;

            if (new_distance < distances[local_in_b]) {
                distances[local_in_b] = new_distance;
            }
        }
    }

    // Store the computed distances back to global memory
    for (int j = start_index; j < end_index; j++) {
#pragma HLS pipeline II=1
        out_r[j] = distances[j];
    }
}

extern "C" {
    void sssp_kernel_0(u_data* e_src, u_data* e_dst, u_data* out_r, int size, int vertices, u32 src_vertex) {
        CacheBlock cache_L1_a[PE];
        CacheBlock cache_L1_b[PE];

        for (int pe_id = 0; pe_id < PE; pe_id++) {
#pragma HLS UNROLL
            sssp_kernel(cache_L1_a, cache_L1_b, e_src, e_dst, out_r, size, vertices, src_vertex, pe_id);
        }
    }
}
