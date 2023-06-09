#include "common.h"
#include "parallel.h"

#define DAMPING_FACTOR 0.85

float* prev;
float* rank;
float adding_constant;
int converged = 0;
uint32_t no_in = 0;

uint32_t* degree;
static void print_stats(void);

static struct thread_stats { uint64_t tasks, updates; } thread_stats[16];

static inline void prgrid_algo();

static pthread_t threads[ALGO_NB_THREADS];
static struct thread_buffer thread_buffers[ALGO_NB_THREADS];
static uint32_t edges_seen = 0;

/** offsets here stores the size of the cell to be used with load mode 1 where the grid is not contigious in memory */

   /*
   static inline void prgrid_algo_nosort() {
   for (uint32_t i = 0; i < P; i++) {
   parallel_for(uint32_t j = 0; j < P; j++) if (offsets[i][j] != 0) {
   for (uint32_t start = 0; start < offsets[i][j]; start++) {
   struct edge_t* e = &blocks[i][j][start];
   rank[e->dst] += prev[e->src] / nodes[e->src].nb_out_edges;
   }
   }
   }
   }
   */

/** offsets here store the actuall offset of a cell, not its size and the grid is actually still in memblock */
static inline void prgrid_algo() {
	for (uint32_t i = 0; i < P; i++) {
		parallel_for(int j = 0; j < P; j++) {
			uint32_t start = row_offsets[i] + offsets[i][j];
			uint32_t stop =
				(j == P - 1 ? (i == P - 1 ? nb_edges : row_offsets[i + 1])
				 : row_offsets[i] + offsets[i][j + 1]);
			for (; start < stop; start++) {
				struct edge_t* e = &memblock[start];
				uint32_t src = e->src;
				uint32_t dst = e->dst;
				rank[dst] += (prev[src] / (float)nodes[src].nb_out_edges);
			}
		}
	}
}

void prgrid_construct(void) {
	uint64_t start, stop;
	adding_constant = (1 - DAMPING_FACTOR) * 1 / (float)NB_NODES;
	rank = (float*)malloc(NB_NODES * sizeof(float));

	prev = (float*)malloc(NB_NODES * sizeof(float));
	float one_over_n = 1.0 / (float)NB_NODES;
	parallel_for(uint32_t i = 0; i < NB_NODES; i++) {
		prev[i] = one_over_n; //0.15
		rank[i] = 0.0;
	}
}

void prgrid_destruct(void) {
	free(prev);
	free(rank);
}

static used void iterator(struct node* nodes) {
	int iterations = 0;

	uint64_t iter_start, iter_stop;
	rdtscll(iter_start);

	while (iterations < 10) {
		prgrid_algo();

		parallel_for(uint32_t i = 0; i < NB_NODES; i++) {
			rank[i] = adding_constant + DAMPING_FACTOR * rank[i];
			prev[i] = rank[i];
			rank[i] = 0.0;
		}
		iterations++;
	}
	rdtscll(iter_stop);
	printf("[INFO] %d Iterations elapsed time : %f sec\n", iterations,
			(double)(iter_stop - iter_start) / (double)get_cpu_freq());
}

void prgrid_reset(struct node* nodes) {}

/**
  Default function that launches the Pagerank from node 0
  */
void prgrid(struct node* nodes) {
	iterator(nodes);
}

struct algo_func current_algo = {
	.reset = prgrid_reset,
	.main = prgrid,
	.construct = prgrid_construct,
	.destruct = prgrid_destruct,
};
