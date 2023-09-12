#include <ap_int.h>
#include <stdint.h>
#include <hls_stream.h>

#define INF 0xFFFFFFFF
#define DATA_WIDTH 32
#define PE 4
#define BUF_PER_PE 64

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

void buffer_load_compute_store(CacheBlock* cache_L1_a, CacheBlock* cache_L1_b, u_data* global_data_a, u_data* global_data_b,
                               u32 local_out[BUF_PER_PE], int active_vertex, int start_addr) {
    for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline II=1
        int addr_a = start_addr + j;
        int addr_b = start_addr + j;
        bool load_a = !cache_L1_a->entries[j].valid || cache_L1_a->entries[j].dirty;
        bool load_b = !cache_L1_b->entries[j].valid || cache_L1_b->entries[j].dirty;

        if (load_a) {
            fetch_cache_block(cache_L1_a, global_data_a, addr_a);
            cache_L1_a->entries[j].dirty = false;
        }

        if (load_b) {
            fetch_cache_block(cache_L1_b, global_data_b, addr_b);
            cache_L1_b->entries[j].dirty = false;
        }

        // WCC_kernel operates on a single element at a time, so the loop here is fine
        u32 local_in_a = cache_L1_a->entries[j].data;
        u32 local_in_b = cache_L1_b->entries[j].data;
        int component_a = (local_in_a == active_vertex) ? addr_a : -1;
        int component_b = (local_in_b == active_vertex) ? addr_b : -1;

        // Determine the minimum component
        int min_component = component_a;
        if (component_b != -1 && (min_component == -1 || component_b < min_component)) {
            min_component = component_b;
        }

        local_out[j] = min_component;
    }
}

void buffer_store(u_data* global_out, u32 local_out[BUF_PER_PE]) {
    for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline II=1
        global_out[j] = local_out[j];
    }
}

extern "C" {
    void wcc_kernel_0(u_data* e_src, u_data* e_dst, u_data* out_r, int size, int vertices, u32 src_vertex) {
        CacheBlock cache_L1_a[PE];
        CacheBlock cache_L1_b[PE];
        u32 local_out[PE][BUF_PER_PE];

        int v = vertices;
        int active_vertex = src_vertex;
        for (int i = 0; i < size / (PE * BUF_PER_PE); i++) {
            int start_addr = i * PE * BUF_PER_PE;

            for (int pe = 0; pe < PE; pe++) {
#pragma HLS UNROLL 
                buffer_load_compute_store(&cache_L1_a[pe], &cache_L1_b[pe], &e_src[start_addr + pe * BUF_PER_PE],
                                           &e_dst[start_addr + pe * BUF_PER_PE], local_out[pe], active_vertex, start_addr);
            }

            for (int pe = 0; pe < PE; pe++) {
#pragma HLS PIPELINE II=1 
                buffer_store(&out_r[start_addr + pe * BUF_PER_PE], local_out[pe]);
            }
        }
    }
}

