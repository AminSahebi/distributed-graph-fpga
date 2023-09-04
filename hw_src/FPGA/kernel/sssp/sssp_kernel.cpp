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
loop_lru:	for (int i = index; i > 0; i--) {
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
loop_cache_block:	for (int i = 0; i < BUF_PER_PE; i++) {
#pragma HLS unroll
				// Load data into cache directly without using an intermediate variable
				cache_L1->entries[i].data = global_data[block_start_addr + i];
				cache_L1->entries[i].valid = true;
				cache_L1->entries[i].dirty = false;
			}
}

void buffer_load(CacheBlock cache_L1_a[PE][BUF_PER_PE], CacheBlock cache_L1_b[PE][BUF_PER_PE], u_data* global_data_a, u_data* global_data_b) {
loop_load_outer:	for (int i = 0; i < PE; i++) {
#pragma HLS unroll
			for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline II=1
			int addr_a = i * BUF_PER_PE + j;
			int addr_b = i * BUF_PER_PE + j;
			if (!cache_L1_a[i][j].entries[j].valid || cache_L1_a[i][j].entries[j].dirty) {
				fetch_cache_block(&cache_L1_a[i][j], global_data_a, addr_a);
				cache_L1_a[i][j].entries[j].dirty = false;
			}
			if (!cache_L1_b[i][j].entries[j].valid || cache_L1_b[i][j].entries[j].dirty) {
				fetch_cache_block(&cache_L1_b[i][j], global_data_b, addr_b);
				cache_L1_b[i][j].entries[j].dirty = false;
			}
		}
	}
}

void SSSP_kernel(u32 local_in_a[BUF_PER_PE], u32 local_in_b[BUF_PER_PE], u32 local_out[BUF_PER_PE], int active_vertex) {
	int iteration = 0;

	int depth[BUF_PER_PE];
#pragma HLS ARRAY_PARTITION variable=depth complete

	for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline II=1
		depth[j] = (local_in_a[j] == active_vertex) ? 0 : INF;
	}

	while (true) {
#pragma HLS LOOP_FLATTEN
		int active_count = 0;

		for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline II=1
			int target = local_in_b[j];
			int r = depth[target];
			int n = depth[local_in_a[j]] + 1;
			if (n < r) {
				depth[target] = n;
				active_count++;
			}
		}

		if (active_count == 0) break;
	}

	for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline II=1
		local_out[j] = depth[j];
	}
}

void buffer_compute(CacheBlock cache_L1_a[PE][BUF_PER_PE], CacheBlock cache_L1_b[PE][BUF_PER_PE], u32 local_out[PE][BUF_PER_PE], int active_vertex) {
loop_compute_outer:	for (int i = 0; i < PE; i++) {
#pragma HLS LOOP_FLATTEN
		u32 local_in_a[BUF_PER_PE];
#pragma HLS ARRAY_PARTITION variable=local_in_a complete
		u32 local_in_b[BUF_PER_PE];
#pragma HLS ARRAY_PARTITION variable=local_in_b complete

		for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline II=1
			local_in_a[j] = cache_L1_a[i][j].entries[j].data;
			local_in_b[j] = cache_L1_b[i][j].entries[j].data;
		}

		SSSP_kernel(local_in_a, local_in_b, local_out[i], active_vertex);
	}
}

void buffer_store(u_data* global_out, u32 local_out[PE][BUF_PER_PE]) {
loop_store_outer: for (int i = 0; i < PE; i++) {
#pragma HLS unroll
		for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline II=1
			int addr = i * BUF_PER_PE + j;
			global_out[addr] = local_out[i][j];
		}
	}
}

extern "C" {
	void sssp_kernel_0(u_data* e_src, u_data* e_dst, u_data* out_r, int size, int vertices, u32 src_vertex) {
		CacheBlock cache_L1_a[PE][BUF_PER_PE];
#pragma HLS ARRAY_PARTITION variable=cache_L1_a complete
		CacheBlock cache_L1_b[PE][BUF_PER_PE];
#pragma HLS ARRAY_PARTITION variable=cache_L1_b complete

		u32 local_out[PE][BUF_PER_PE];
#pragma HLS ARRAY_PARTITION variable=local_out complete
	int v = vertices;
	int active_vertex = src_vertex;
		for (int i = 0; i < size / BUF_PER_PE + 1; i++) {
			buffer_load(cache_L1_a, cache_L1_b, &e_src[i * BUF_PER_PE], &e_dst[i * BUF_PER_PE]);
			buffer_compute(cache_L1_a, cache_L1_b, local_out, active_vertex);
			buffer_store(&out_r[i * BUF_PER_PE], local_out);
		}
	}
}

