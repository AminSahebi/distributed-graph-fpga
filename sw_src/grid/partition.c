#include "common.h"
#include <math.h>

#include"radixSort_ligra.h"

int sorted_graph = 0, weighted_graph = 0, skip_loops = 1;
char *filename;
typedef pair<uint32_t,uint32_t> intPair;
char *memblock1; /** raw pointer to the file content */
struct edge_t *memblock;
uint64_t nb_edges;
uint32_t NB_NODES;
struct node *nodes;

uint32_t P;
uint32_t* row_offsets;
char *has_q;
uint32_t** q_map;
struct edge_t*** blocks;
uint32_t** offsets;
uint32_t BFS_ROOT;
uint64_t init_start,init_stop;
uint64_t parallel_adds;
uint64_t count_on_load = 1; //TODO parametrize


inline std::pair<size_t, size_t> get_partition_range(const size_t vertices, const size_t partitions, const size_t partition_id) {
	const size_t split_partition = vertices % partitions;
	const size_t partition_size = vertices / partitions + 1;
	if (partition_id < split_partition) {
		const size_t begin = partition_id * partition_size;
		const size_t end = (partition_id + 1) * partition_size;
		return std::make_pair(begin, end);
	}
	const size_t split_point = split_partition * partition_size;
	const size_t begin = split_point + (partition_id - split_partition) * (partition_size - 1);
	const size_t end = split_point + (partition_id - split_partition + 1) * (partition_size - 1);
	return std::make_pair(begin, end);
}

size_t item_size(void) {
	if(weighted_graph) {
		return sizeof(struct input);
	} else {
		return 2*sizeof(uint32_t);
	}
}
uint32_t get_psize(uint32_t i,uint32_t j ) {
	return (j == P - 1 ? (i == P - 1 ? nb_edges : row_offsets[i + 1]) - (row_offsets[i] + offsets[i][j]) : offsets[i][j+ 1] - offsets[i][j]);
}

uint32_t get_partition_id(uint32_t v_id){
	if(mod_val == 0 ) { //NB_NODES % P == 0)  
		//	size_t partition_size = NB_NODES / P;
		return v_id / partition_size;
	}
	return (v_id < split_point) ? v_id / partition_size : (v_id - split_point) / (partition_size -1) + mod_val; // (NB_NODES % P);
}
uint32_t get_partition_id_Q(uint32_t v_id, uint32_t v_pid){

	std::pair<size_t,size_t> range = get_partition_range(NB_NODES, P, v_pid);
	uintE n = range.second - range.first;
	if(n % Q == 0 ) { 
		uintE p_size = n / Q;
		return (v_id-range.first) / p_size ; 
	}   
	v_id -= range.first;
	size_t partition_size = n / Q + 1;  
	size_t split_point =  n % Q * partition_size;
	return (v_id < split_point) ? ((v_id) / partition_size ) : ((v_id - split_point) / (partition_size -1) + (n % Q)) ;   
}


struct input *get_input(size_t pos) {
	return (struct input *) &(memblock1[pos * item_size()]);
}
uint64_t load_start,load_stop;

void preload_graph() {


	parallel_for(uint64_t i  = 0; i < nb_edges; i++) {
		struct input* in = get_input(i);
		struct edge_t* e = &memblock[i];
		e->src = in->src;
		e->dst = in->dst;


		if(count_on_load) { // Degree counting  overlapped with load, should be used when loading graph from slow storage
			__sync_fetch_and_add(&nodes[e->src].nb_out_edges,1);
			if (!isSymmetric) __sync_fetch_and_add(&nodes[e->dst].nb_in_edges,1);
		}
		//	if(createUndir) {
		//		struct edge_t* e_rev = &memblock[i + nb_edges];
		//		e_rev->src = in->dst;
		//		e_rev->dst = in->src;
		//	}

	}

}
void init_grid_sort(int full, int sort_by_src) {
	offsets = (uint32_t**) malloc (P * sizeof(uint32_t*));

	for(size_t i =0; i< P; i++) {
		offsets[i] = (uint32_t*) malloc(P* sizeof(uint32_t));
	}


	for(size_t i = 0; i < P; i++) {
		for(size_t j = 0; j < P; j++) {
			offsets[i][j] = 0;
		}  
	}
	edge_array_out = (struct edge*) calloc(nb_edges ,sizeof (struct edge));


	rdtscll(init_start);
	if(true) {

		parallel_for(uint32_t i = 0; i < P; i++) { row_offsets[i] = nb_edges;}

		//Fully sort by source first
		rdtscll(load_start);
		intSort::iSort(memblock, nb_edges, NB_NODES + 1, getEdgeSrc<struct edge_t>());//getPartitionSrc<struct edge_t>()); //change back to memblock , als modification
		rdtscll(load_stop);
#ifdef DEBUG
		printf("#Sort by src time - by src %f \n" , (float)(load_stop-load_start) / (float)get_cpu_freq());
#endif
		row_offsets[0] = 0; 

		rdtscll(load_start);
		parallel_for(uint32_t i = 1 ; i < nb_edges; i++) {
			struct edge_t* e = &memblock[i];
			uint32_t psrc = get_partition_id(e->src);
			uint32_t pprev = get_partition_id(memblock[i-1].src);
			if(psrc != pprev) {
				row_offsets[psrc] = i;
			} 
		}


		rdtscll(load_stop);
#ifdef DEBUG
		printf("# Offset big  time - by src %f \n" , (float)(load_stop-load_start) / (float)get_cpu_freq());			
#endif
		rdtscll(load_start);
		sequence::scanIBack(row_offsets,row_offsets,(int)P,minF<uintT>(),(uintT)nb_edges);   
		rdtscll(load_stop);
#ifdef DEBUG
		printf("#Sequence big time - by src %f \n" , (float)(load_stop-load_start) / (float)get_cpu_freq());
#endif
		rdtscll(load_start);


		parallel_for(uint32_t i = 0; i < P; i++) {
			uint32_t o = row_offsets[i];
			//	if( o == nb_edges) continue;
			uint32_t l = ((i == P - 1) ? nb_edges - row_offsets[i] : row_offsets[i+1] - row_offsets[i]) ;  
			if (l != 0) 
				if(!sort_by_src) intSort::iSort(memblock + row_offsets[i],l, P + 1, getPartitionIdDst<struct edge_t>());
				else intSort::iSort(memblock + row_offsets[i],l, P + 1, getPartitionIdDst<struct edge_t>()); // getPartitionIdDst<struct edge_t>());
		}
		rdtscll(load_stop);
#ifdef DEBUG
		printf("#Sort by dst time - by src %f \n" , (float)(load_stop-load_start) / (float)get_cpu_freq());
#endif
		parallel_for(uint32_t i = 0; i < P; i++) 
			for(uint32_t j = 0; j < P; j++) 
				offsets[i][j] = nb_edges  ;

		rdtscll(load_start);	
		for(uint32_t i = 0; i < P; i++) {
			uint32_t start, idx;
			offsets[i][0] = 0;
			uint32_t stop = ( i == P - 1?  nb_edges  : row_offsets[i + 1] ) - row_offsets[i];
			parallel_for(uint32_t start =  1;  start < stop; start++) {
				struct edge_t* e = &memblock[row_offsets[i] + start];
				uint32_t pdst = get_partition_id(e->dst);
				uint32_t pprev = get_partition_id(memblock[row_offsets[i] + start - 1].dst);
				if(pdst != pprev) {
					offsets[i][pdst] = start;
				}

			} 
		}

		rdtscll(load_stop);
#ifdef DEBUG
		printf("#Offset dst time - by src %f \n" , (float)(load_stop-load_start) / (float)get_cpu_freq());
#endif
		rdtscll(load_start);
		parallel_for(uint32_t i = 0; i < P; i++) {
			sequence::scanIBack(offsets[i], offsets[i], (int)P, minF<uintT>(), (uintT)(i == P - 1 ? nb_edges - row_offsets[i] : row_offsets[i+1] - row_offsets[i]));
		}

		rdtscll(load_stop);
#ifdef DEBUG
		printf("#Seq dst time - by src %f \n" , (float)(load_stop-load_start) / (float)get_cpu_freq());
#endif
		rdtscll(init_stop);
#ifdef DEBUG
		printf("#Total grid create time %lu ( %f s)\n", init_stop - init_start, ((float)(init_stop - init_start))/(float)get_cpu_freq());
#endif
		if(sort_by_src){
			rdtscll(load_start);
			parallel_for(int i = 0; i < P; i++) {
				for(int j = 0; j < P; j ++) {
					uint32_t start = row_offsets[i] + offsets[i][j];
					uint32_t stop = (j == P-1 ? (i == P -1 ? nb_edges : row_offsets[i+1]) : row_offsets[i] + offsets[i][j+1] ) ;
					if(stop - start > 0)	
						intSort::iSort(memblock + start,stop - start, NB_NODES + 1, getEdgeSrc<struct edge_t>());
				}
			}
			rdtscll(load_stop);
#ifdef DEBUG
			printf("#Sort cells by src time %lu ( %f s)\n", load_stop - load_start, ((float)(load_stop - load_start))/(float)get_cpu_freq());
#endif


		}
	}

}

void count_degree() {
	uint64_t start_count,stop_count;
	rdtscll(start_count);

	parallel_for(size_t i  = 0; i < nb_edges; i++) {

		struct edge_t* e = &memblock[i];
		__sync_fetch_and_add(&nodes[e->src].nb_out_edges, 1);

		if(!isSymmetric) {
			__sync_fetch_and_add(&nodes[e->dst].nb_in_edges, 1);
		}
	}
	rdtscll(stop_count);
	printf("[INFO] Degree calculation time  %lu -> %f sec\n", stop_count - start_count, ((float)(stop_count - start_count))/(float)get_cpu_freq());

}

void init(int full) {
	parallel_for(int i = 0;  i  < ALGO_NB_THREADS;i++) {

		int id = get_threadid();
		cpu_set_t mask;
		CPU_ZERO(&mask);
		CPU_SET(id, &mask);
		sched_setaffinity(gettid(), sizeof(mask), &mask);

	}
	nodes = (struct node*) malloc(NB_NODES*sizeof(*nodes));
	locks = (pthread_spinlock_t* ) malloc(NB_NODES * sizeof(pthread_spinlock_t));

	parallel_for(size_t i = 0; i < NB_NODES; i++) {
		memset(&nodes[i], 0, sizeof(nodes[i]));
		pthread_spin_init(&locks[i], PTHREAD_PROCESS_PRIVATE);
		pthread_spin_init(&nodes[i].lock, PTHREAD_PROCESS_PRIVATE);
	}

	printf("[INFO] Load starts\n");
	printf("[INFO] running on %f GHz Freq\n",(float)get_cpu_freq()/(1024*1024*1024));
	struct stat sb;
	int fd = open(filename, O_RDONLY);
	if(!fd == -1)
		die("Cannot open %s\n", filename);
	fstat(fd, &sb);
	printf("[INFO] Graph size: %lu bytes\n", (uint64_t)sb.st_size);
	assert(fd);
	memblock1 = (char*) mmap(NULL, sb.st_size, PROT_WRITE, MAP_PRIVATE, fd, 0);
	if(not_processed) {
		nb_edges = sb.st_size/item_size();
	}
	else {
		nb_edges = (sb.st_size - 2*sizeof(uint64_t) * NB_NODES)/2/item_size();
	}
	//if(createUndir)
	//	memblock = (struct edge_t*) malloc( 2* nb_edges * sizeof(struct edge_t));
	//else
	memblock = (struct edge_t*) malloc( nb_edges * sizeof(struct edge_t));
	row_offsets = (uint32_t*) calloc(P, sizeof(uint32_t));

	printf("[INFO] number of edges  %lu\n", nb_edges);

	parallel_adds = nb_edges;
	if(full)
		parallel_adds = nb_edges;

	mod_val = NB_NODES % P;
	if(mod_val != 0)
		partition_size = NB_NODES / P + 1;
	else partition_size = NB_NODES / P;
	split_point = mod_val * partition_size;

	//Preload graph into memory
	uint64_t load_start,load_stop;
	rdtscll(load_start);

	preload_graph();
	rdtscll(load_stop);
	printf("[INFO] Load time into memory %lu ->  %f sec\n", load_stop - load_start, ((float)(load_stop - load_start))/(float)get_cpu_freq());
	//if(load_mode < 2 || load_mode >= 6) 
	//	count_degree(); //For all these modes it can be optimized so that we use the fast scan operation	


	//switch(load_mode) {

	//		case 0: //grid sort 
	//			init_grid_sort(0, 0);
	//	
	//			break;
	//		case 1: //grid nosort
	//			init_grid_nosort(full);
	//			break;
	//		case 2: //adj created with sort
	//			init_adj_sort(0, 0);
	//			break;
	//		case 3: //adj created with sort and fully sorted within 
	//			init_adj_sort(full, 0);
	//			break;
	//
	//	case 4: //adj list created on load; arg = 0 -> dynamic; arg = 1 -> count sort 
	//		init_adj_count(); //full);
	//		break;
	//	case 5: init_adj_dynamic();
	//	 break;
	//	case 6: //grid using sorting but cells are sorted by src (not dst)
	init_grid_sort(full, 1);
	//		break;
	//	case 7: //edgelista is adjacency list (sorted by source)
	//		init_edgelist(full, 0, 1);
	//		break;
	//	case 8: //edge list is sorted by source and then by destination within edges having the same source
	//		init_edgelist(full, 1, 1);
	//		break;
	//	case 9: init_edgelist(full, 0, 0);


	//}
	//	exit(1);

	munmap(memblock1, sb.st_size);

}


