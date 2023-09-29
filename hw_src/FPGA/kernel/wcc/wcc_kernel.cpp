#include <ap_int.h>
#include <stdint.h>
#include <hls_stream.h>

#define INF 0xFFFFFFFF
#define DATA_WIDTH 32
#define PE 1
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

void write_to_cache(CacheBlock cache[BUF_PER_PE], int addr, u32 data) {
	cache[addr / BUF_PER_PE].entries[addr % BUF_PER_PE].data = data;
	cache[addr / BUF_PER_PE].entries[addr % BUF_PER_PE].dirty = true;
	update_lru(cache, addr / BUF_PER_PE);
}

void fetch_cache_block(CacheBlock* cache_L1, u_data* global_data, int addr) {
	int block_index = addr / BUF_PER_PE;
	int block_start_addr = block_index * BUF_PER_PE;

	// Unroll the inner loop to reduce loop overhead
loop_cache_block:	for (int i = 0; i < BUF_PER_PE; i++) {
#pragma HLS pipeline II=1//LOOP_FLATTEN
				// Load data into cache directly without using an intermediate variable
				cache_L1->entries[i].data = global_data[block_start_addr + i];
				cache_L1->entries[i].valid = true;
				cache_L1->entries[i].dirty = false;
			}
}


void buffer_load(CacheBlock cache_L1_a[PE][BUF_PER_PE], CacheBlock cache_L1_b[PE][BUF_PER_PE], u_data* global_data_a, u_data* global_data_b, int pe_id) {
	for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS UNROLL//pipeline II=1
		int addr_a = pe_id * BUF_PER_PE + j;
		int addr_b = pe_id * BUF_PER_PE + j;

		if (!cache_L1_a[pe_id][j].entries[j].valid || cache_L1_a[pe_id][j].entries[j].dirty) {
			fetch_cache_block(&cache_L1_a[pe_id][j], global_data_a, addr_a);
			cache_L1_a[pe_id][j].entries[j].dirty = false;
		}

		if (!cache_L1_b[pe_id][j].entries[j].valid || cache_L1_b[pe_id][j].entries[j].dirty) {
			fetch_cache_block(&cache_L1_b[pe_id][j], global_data_b, addr_b);
			cache_L1_b[pe_id][j].entries[j].dirty = false;
		}
	}
}


// Data structure to represent connected components
u32 connected_components[BUF_PER_PE];

// Helper function to initialize components
void initialize_components() {
    for (int i = 0; i < BUF_PER_PE; i++) {
        connected_components[i] = i; // Each vertex initially belongs to its own component
    }
}

// Helper function to merge components
void merge_components(u32 vertex_a, u32 vertex_b) {
    u32 component_a = connected_components[vertex_a];
    u32 component_b = connected_components[vertex_b];
    
    if (component_a != component_b) {
        // Update all vertices in component_b to belong to component_a
        for (int i = 0; i < BUF_PER_PE; i++) {
            if (connected_components[i] == component_b) {
                connected_components[i] = component_a;
            }
        }
    }
}

// Modify the SSSP_kernel to perform WCC
void WCC_kernel(u32 local_in_a[BUF_PER_PE], u32 local_in_b[BUF_PER_PE], u32 local_out[BUF_PER_PE]) {
    for (int j = 0; j < BUF_PER_PE; j++) {
        u32 src = local_in_a[j]; // Edge source buffer
        u32 dst = local_in_b[j]; // Edge destination buffer

        merge_components(src, dst); // Merge components based on edge information
    }

    // Write the connected component information to local_out
    for (int j = 0; j < BUF_PER_PE; j++) {
        local_out[j] = connected_components[local_in_a[j]];
    }
}

// Modify the buffer_compute function to call WCC_kernel
void buffer_compute(CacheBlock cache_L1_a[PE][BUF_PER_PE], CacheBlock cache_L1_b[PE][BUF_PER_PE], u32 local_out[PE][BUF_PER_PE]) {
    for (int i = 0; i < PE; i++) {
#pragma HLS LOOP_FLATTEN//unroll

        u32 local_in_a[BUF_PER_PE];
        u32 local_in_b[BUF_PER_PE];
#pragma HLS ARRAY_PARTITION variable=local_in_a complete
#pragma HLS ARRAY_PARTITION variable=local_in_b complete

        for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline II=1
            local_in_a[j] = cache_L1_a[i][j].entries[j].data;
            local_in_b[j] = cache_L1_b[i][j].entries[j].data;
        }

        WCC_kernel(local_in_a, local_in_b, local_out[i]);
    }
}

void buffer_store(u_data* global_out, u32 local_out[PE][BUF_PER_PE]) {
loop_store_outer: for (int i = 0; i < PE; i++) {
#pragma HLS unroll
loop_store_inner:	for (int j = 0; j < BUF_PER_PE; j++) {
#pragma HLS pipeline II=1
				int addr = i * BUF_PER_PE + j;
				global_out[addr] = local_out[i][j];
			}
		  }
}

void wcc_kernel_0(u_data* e_src, u_data* e_dst, u_data* out_r, int size, int vertices) {
	CacheBlock cache_L1_a[PE][BUF_PER_PE];
	CacheBlock cache_L1_b[PE][BUF_PER_PE];
	u32 local_out[PE][BUF_PER_PE];

    initialize_components(); // Initialize connected components

	for (int i = 0; i < size / (BUF_PER_PE * PE) + 1; i++) {
#pragma HLS loop_tripcount min=1 max=PE
		for (int pe_id = 0; pe_id < PE; pe_id++) {
#pragma HLS unroll //factor=4
			buffer_load(cache_L1_a, cache_L1_b, &e_src[i * BUF_PER_PE * PE], &e_dst[i * BUF_PER_PE * PE], pe_id);
			buffer_compute(cache_L1_a, cache_L1_b, local_out);
			buffer_store(&out_r[i * BUF_PER_PE * PE], local_out);
		}
	}
}
