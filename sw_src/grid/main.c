#include "common.h"
#include "omp.h"

__thread int __id;
int isSymmetric = 0;
int createUndir = 0;
int not_processed = 1;
int load_mode = 2;
int numa = 0;

algo_t algo_phase = ALGO;
volatile int parallels_done;
volatile int waiting;
struct edge* edge_array_out;
struct edge* edge_array_in;

pthread_spinlock_t* locks;

int silent;  /** Do not print debug info messages if 1 */
char* in_frontier_next;
char* in_frontier;
uint32_t items_in_frontier = 0;
uint32_t front_degree = 0;
//algo_mode mode = PUSH;

int switch_mode = 1;
int a_mode = 0;

#if defined CREATE_WEIGHT
uint32_t* weights;
uint32_t* weights_in;
#endif

static void usage(void) {
	printf(
			"Usage: ./pr-grid -f [graph file] -n [vertices] \n");
	_exit(-1);
}

int main(int argc, char** argv) {
	uint64_t start, stop;
	uint64_t load_start, load_stop;
	setlocale(LC_NUMERIC, "");
	int update = 0;

	int c;
	while ((c = getopt(argc, argv, "f:n:m:uwLa:p:srNh")) != -1) {
		switch (c) {
			case 'f':
				filename = optarg;
				break;
			case 'm':
				load_mode = 6;
				break;
			case 'n':
				NB_NODES = atol(optarg);
				P = 16;
				if (P > 2000) P = 256;
				if (P == 0) P = 4;

				printf("[INFO] Partiotion size = %d\n", P);
				in_frontier = (char*)malloc(NB_NODES * sizeof(char));
				in_frontier_next = (char*)malloc(NB_NODES * sizeof(char));
				memset(in_frontier, 0, NB_NODES * sizeof(char));
				memset(in_frontier_next, 0, NB_NODES * sizeof(char));

				break;
			default:
				usage();
		}
	}
	if (!NB_NODES || !filename) usage();

	printf("[INFO] Running with %d update threads and %d algorithm threads\n", NB_CONCURRENCY, ALGO_NB_THREADS);
	rdtscll(start);

	setWorkers(ALGO_NB_THREADS);
	init(update);
	rdtscll(stop);
	printf("[INFO] Total loading data time %lu ->  %f sec\n", stop - start, ((float)(stop - start)) / (float)get_cpu_freq());

	current_algo.construct();
	rdtscll(start);
	current_algo.main(nodes);
	rdtscll(stop);
	printf("[INFO] Total pagerank time %lu -> %f sec \n", stop - start,
			((float)(stop - start)) / (float)get_cpu_freq());

end:
	current_algo.destruct();
	return 0;
}
