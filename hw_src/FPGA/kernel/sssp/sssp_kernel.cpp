#include <ap_int.h>
#include <stdint.h>
#include <hls_stream.h>
#include <stdbool.h>
#include <limits.h>

#define INF UINT_MAX // Infinite distance

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

struct Node {
	u32 distance;
	bool visited;
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

	// Unroll the inner loop to reduce loop overhead
loop_cache_block:
	for (int i = 0; i < BUF_PER_PE; i++) {
#pragma HLS LOOP_FLATTEN
		// Load data into cache directly without using an intermediate variable
		cache_L1->entries[i].data = global_data[block_start_addr + i];
		cache_L1->entries[i].valid = true;
		cache_L1->entries[i].dirty = false;
	}
}

void buffer_load(CacheBlock cache_L1_a[PE][BUF_PER_PE], CacheBlock cache_L1_b[PE][BUF_PER_PE], u_data* global_data_a, u_data* global_data_b) {
loop_load_outer:
	for (int i = 0; i < PE; i++) {
#pragma HLS LOOP_FLATTEN
loop_load_inner:
		for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline II=1
			int addr_a = i * BUF_PER_PE + j;
			int addr_b = i * BUF_PER_PE + j; // Use the same address for both caches
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







void dijkstra(CacheBlock cache_L1_a[BUF_PER_PE], CacheBlock cache_L1_b[BUF_PER_PE], u32 local_out[BUF_PER_PE], int v, int source, u_data* e_src, u_data* e_dst, u_data* out_degree) {
	Node nodes[BUF_PER_PE];
	for (int i = 0; i < BUF_PER_PE; i++) {
		nodes[i].distance = INF;
		nodes[i].visited = false;
	}

    nodes[source].distance = 0;

    for (int count = 0; count < v - 1; count++) {
        int u = -1;
        u32 min_dist = INF;

        // Find the unvisited node with the minimum distance
        for (int i = 0; i < v; i++) {
            if (!nodes[i].visited && nodes[i].distance < min_dist) {
                u = i;
                min_dist = nodes[i].distance;
            }
        }

        // Mark the selected node as visited
        nodes[u].visited = true;

        // Update the distance of adjacent nodes
        for (int i = 0; i < v; i++) {
            u32 edge_weight = 1; // Assuming edge weights are 1
            if (!nodes[i].visited && edge_weight && nodes[u].distance != INF &&
                nodes[u].distance + edge_weight < nodes[i].distance) {
                nodes[i].distance = nodes[u].distance + edge_weight;
            }
        }
    }

    // Store the shortest path distances in local_out
    for (int i = 0; i < BUF_PER_PE; i++) {
        local_out[i] = nodes[i].distance;
    }
}



void buffer_compute(CacheBlock cache_L1_a[PE][BUF_PER_PE], CacheBlock cache_L1_b[PE][BUF_PER_PE], u32 local_out[PE][BUF_PER_PE], int v, int source, u_data* e_src, u_data* e_dst, u_data* out_degree) {

	for (int pe = 0; pe < PE; pe++) {
#pragma HLS unroll
		dijkstra(cache_L1_a[pe], cache_L1_b[pe], local_out[pe], v, source, e_src, e_dst, out_degree);
	}
}

void buffer_store(u_data* global_out, u32 local_out[PE][BUF_PER_PE], int v) {
loop_store_outer:
	for (int pe = 0; pe < PE; pe++) {
		for (int i = 0; i < BUF_PER_PE; i++) {
#pragma HLS pipeline II=1
			int addr = pe * BUF_PER_PE + i;
			global_out[addr] = local_out[pe][i];
		}
	}
}

extern "C" {
	void sssp_kernel_0(u_data* e_src, u_data* e_dst, u_data* out_r, int size, int vertices, u32 src_vertex, u_data* out_degree) {
		int v = vertices;

		CacheBlock cache_L1_a[PE][BUF_PER_PE];
		CacheBlock cache_L1_b[PE][BUF_PER_PE];
#pragma HLS ARRAY_PARTITION variable=cache_L1_a complete
#pragma HLS ARRAY_PARTITION variable=cache_L1_b complete

		u32 local_out[PE][BUF_PER_PE];
#pragma HLS ARRAY_PARTITION variable=local_out complete

		for (int i = 0; i < size / BUF_PER_PE + 1; i++) {
			buffer_load(cache_L1_a, cache_L1_b, &e_src[i * BUF_PER_PE], &e_dst[i * BUF_PER_PE]);
			buffer_compute(cache_L1_a, cache_L1_b, local_out, v, src_vertex, e_src, e_dst, out_degree);
			buffer_store(&out_r[i * BUF_PER_PE], local_out, v);
		}
	}
}

