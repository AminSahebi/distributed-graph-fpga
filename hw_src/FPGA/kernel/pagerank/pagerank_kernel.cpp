#include <stdbool.h>

#define CACHE_SIZE 128 // Number of vertices to cache with the highest out-degrees
#define DAMPING_FACTOR 0.85
#define EPSILON 1e-6

typedef unsigned int u_data;
typedef float f_data;

// Structure to represent a cache line
typedef struct {
    bool valid;
    u_data vertex;
    f_data rank;
} CacheLine;

// Function to initialize the cache
void init_cache(CacheLine cache[CACHE_SIZE]) {
    for (int i = 0; i < CACHE_SIZE; i++) {
        cache[i].valid = false;
        cache[i].vertex = 0;
        cache[i].rank = 0.0;
    }
}

// Function to find a cache line using the vertex
int find_cache_line(CacheLine cache[CACHE_SIZE], u_data vertex) {
    for (int i = 0; i < CACHE_SIZE; i++) {
        if (cache[i].valid && cache[i].vertex == vertex) {
            return i; // Cache hit
        }
    }
    return -1; // Cache miss
}
void load_data( u_data* e_dst, u_data* out_degree,int size, f_data out_r_local[CACHE_SIZE]) {
	    for (int j = 0; j < size; j++) {
		            #pragma HLS pipeline II=1
		            u_data neighbor = e_dst[j];
			            int out_degree_neighbor = out_degree[neighbor];
				            if (out_degree_neighbor > 0) {
						                out_r_local[neighbor % CACHE_SIZE] = out_degree[neighbor];
								        }
					        }
}

void pagerank_chunk(u_data* e_src, u_data* e_dst, u_data* out_degree, f_data* out_r, int size, int start_vertex, int chunk_size, f_data local_r[CACHE_SIZE]) {
    //#pragma HLS inline off

    for (int i = start_vertex; i < start_vertex + chunk_size; i++) {
	            #pragma HLS loop_tripcount min=CACHE_SIZE max=CACHE_SIZE

        f_data sum = 0.0;

        // Cache the PageRank values of neighbor vertices in local memory
        for (int j = 0; j < CACHE_SIZE; j++) {
		            #pragma HLS pipeline II=1
            local_r[j] = 0.0; // Initialize local memory
        }

        // Load the PageRank values of neighbor vertices into local memory
        f_data out_r_local[CACHE_SIZE];
        load_data(e_dst, out_degree, size, out_r_local);

        // Compute the rank for this vertex using the cached values in local memory
        for (int j = 0; j < CACHE_SIZE; j++) {
		            #pragma HLS pipeline II=1
            sum += local_r[j] / out_degree[i * CACHE_SIZE + j];
        }

        // Apply the PageRank formula for this vertex
        f_data new_rank = (1.0 - DAMPING_FACTOR) + DAMPING_FACTOR * sum;

        // Store the new rank value in the global memory
        out_r[i] = new_rank;
    }
}

// Function to divide the computation among PEs
void pagerank_parallel(u_data* e_src, u_data* e_dst, u_data* out_degree, f_data* out_r, int size, int vertices) {
    // Initialize the cache
    CacheLine cache[CACHE_SIZE];
    init_cache(cache);

    int chunk_size = vertices / 16; // Divide the computation into 4 parts
    int remaining_vertices = vertices;

    // Parallelize the computation for 4 PEs
    for (int pe = 0; pe < 16; pe++) {
#pragma HLS unroll
        int start_vertex = pe * chunk_size;
        if (pe == 15) {
            // Last PE may have fewer vertices to process
            chunk_size = remaining_vertices;
        }
        f_data local_r[CACHE_SIZE];
#pragma HLS ARRAY_PARTITION variable=local_r dim=0 complete

        pagerank_chunk(e_src, e_dst, out_degree, out_r, size, start_vertex, chunk_size, local_r);

        remaining_vertices -= chunk_size;
    }
}



extern "C" {
    void pagerank_kernel_0(
            u_data* e_src,       // edge sources
            u_data* e_dst,       // edge destinations
            u_data* out_degree,  // outdegree
            f_data* out_r,       // output Result
            int size,            // size of each edge block
            int vertices         // number of vertices
        ) {
    #pragma HLS interface m_axi port=e_src offset=slave bundle=gmem
    #pragma HLS interface m_axi port=e_dst offset=slave bundle=gmem
    #pragma HLS interface m_axi port=out_degree offset=slave bundle=gmem
    #pragma HLS interface m_axi port=out_r offset=slave bundle=gmem

    #pragma HLS interface s_axilite port=e_src bundle=control
    #pragma HLS interface s_axilite port=e_dst bundle=control
    #pragma HLS interface s_axilite port=out_degree bundle=control
    #pragma HLS interface s_axilite port=out_r bundle=control
    #pragma HLS interface s_axilite port=size bundle=control
    #pragma HLS interface s_axilite port=vertices bundle=control
    #pragma HLS interface s_axilite port=return bundle=control

        // Call the parallelized function
        pagerank_parallel(e_src, e_dst, out_degree, out_r, size, vertices);
    }
}

