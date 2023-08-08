#include <ap_int.h>
#include <stdint.h>
#include <hls_stream.h>

#define DAMPING_FACTOR 0.85
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
loop_lru:
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

void write_to_cache(CacheBlock cache[BUF_PER_PE], int addr, u32 data) {
    cache[addr / BUF_PER_PE].entries[addr % BUF_PER_PE].data = data;
    cache[addr / BUF_PER_PE].entries[addr % BUF_PER_PE].dirty = true;
    update_lru(cache, addr / BUF_PER_PE);
}

void fetch_cache_block(CacheBlock* cache_L1, u_data* global_data, int addr) {
    int block_index = addr / BUF_PER_PE;
    int block_start_addr = block_index * BUF_PER_PE;

    for (int i = 0; i < BUF_PER_PE; i++) {
#pragma HLS pipeline II=1
        cache_L1->entries[i].data = global_data[block_start_addr + i];
        cache_L1->entries[i].valid = true;
        cache_L1->entries[i].dirty = false;
    }
}

void PE_kernel(u32 local_in_a[BUF_PER_PE], u32 local_in_b[BUF_PER_PE], u32 local_out[BUF_PER_PE], int v) {
    for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline II=1
        u32 src = local_in_a[j];
        u32 deg = local_in_b[j];
        u32 temp = src / deg;
        local_out[j] = (1 - DAMPING_FACTOR) * 1.0 / (float)v + DAMPING_FACTOR * temp;
    }
}

extern "C" {
    void pagerank_kernel_0(u_data* e_src, u_data* out_degree, u_data* out_r, int size, int vertices) {
        int v = vertices;
        CacheBlock cache_L1_a;
        CacheBlock cache_L1_b;

        for (int i = 0; i < size / BUF_PER_PE; i++) {
            fetch_cache_block(&cache_L1_a, e_src, i * BUF_PER_PE);
            fetch_cache_block(&cache_L1_b, out_degree, i * BUF_PER_PE);

            for (int j = 0; j < PE; j++) {
                u32 local_out[BUF_PER_PE];
#pragma HLS ARRAY_PARTITION variable=local_out complete

                for (int k = 0; k < BUF_PER_PE; k++) {
#pragma HLS pipeline II=1
                    int addr = i * BUF_PER_PE + j * BUF_PER_PE + k;
                    u32 src1 = cache_L1_a.entries[k].data;
                    u32 deg1 = cache_L1_b.entries[k].data;
                    u32 temp1 = src1 / deg1;
                    local_out[k] = (1 - DAMPING_FACTOR) * 1.0 / (float)v + DAMPING_FACTOR * temp1;
                }

                for (int k = 0; k < BUF_PER_PE; k++) {
#pragma HLS pipeline II=1
                    out_r[i * BUF_PER_PE + j * BUF_PER_PE + k] = local_out[k];
                }
            }
        }
    }
}

