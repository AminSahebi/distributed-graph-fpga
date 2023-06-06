/*
   Copyright (c) 2020-2021 Amin Sahebi, 
   University of Siena, University of Florence.

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

#ifndef GRAPH_H
#define GRAH_H

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <unistd.h>
#include <malloc.h>
#include <omp.h>
#include <string.h>
#include <thread>
#include <vector>
#include <functional>
#include <fstream>
#include <fcntl.h>    /* For O_RDWR */
#include <unistd.h>   /* For open(), creat() */
#include <sys/stat.h>
#include <sys/types.h>
#include <errno.h>
#include <assert.h>
#include <stdint.h>
#include "filesystem.h"

#define IOSIZE 1048576 * 24

//#define DEBUG

/** datatypes used in graph 
 * class defined here 
 */
typedef int VertexId;
typedef long EdgeId;
typedef float Weight;

struct Edge {
	VertexId source;
	VertexId target;
	//Weight weight;
}Edge_t;

struct MergeStatus {
	int id;
	long begin_offset;
	long end_offset;
};


/** main class of the graph processing 
 * in the host 
 */

class Graph {
	int parallelism;
	int edge_unit;
	bool * should_access_shard;
	char ** buffer_pool;
	long memory_bytes;
	int partition_batch;
	long vertex_data_bytes;
	long PAGESIZE;

	public:
	std::string path;
	long ** fsize;
	int max_buffer;
	long * column_offset;
	uint32_t * outdegrees;
	long * row_offset;
	Edge * edge_buffer;

	int edge_type;
	VertexId vertices;
	EdgeId edges;
	int partitions;

	Graph (std::string path) {
		/*		PAGESIZE = 4096;
				parallelism = std::thread::hardware_concurrency();
				buffer_pool = new char * [parallelism*1];
				for (int i=0;i<parallelism*1;i++) {
				buffer_pool[i] = (char *)memalign(PAGESIZE, IOSIZE);
				assert(buffer_pool[i]!=NULL);
				memset(buffer_pool[i], 0, IOSIZE);
				}*/
		init(path);
	}

	void init(std::string path) {
		this->path = path;

		FILE * fin_meta = fopen((path+"/meta").c_str(), "r");
		fscanf(fin_meta, "%d %d %ld %d", &edge_type, &vertices, &edges, &partitions);
		//#ifdef DEBUG
		printf("[INFO] Graph loaded : \n");
		if(edge_type == 0 ){
			printf("[INFO] edge type    : unweighted \n"); 
		} else {
			printf("[INFO] edge type    : weighted \n"); 
		}
		printf("[INFO] vertices     : %d \n",vertices);
		printf("[INFO] edges        : %ld \n",edges);
		printf("[INFO] partitons    : %d \n", partitions);
		//#endif
		fclose(fin_meta);
		/*
		   if (edge_type==0) {
		   PAGESIZE = 4096;
		   } else {
		   PAGESIZE = 12288;
		   }

		   should_access_shard = new bool[partitions];

		   if (edge_type==0) {
		   edge_unit = sizeof(VertexId) * 2;
		   } else {
		   edge_unit = sizeof(VertexId) * 2 + sizeof(Weight);
		   }

		   memory_bytes = 1024l*1024l*1024l*1024l; // assume RAM capacity is very large
		   */

		partition_batch = partitions;
		vertex_data_bytes = 0;

		char filename[1024];
		fsize = new long * [partitions];
		for (int i=0;i<partitions;i++) {
			fsize[i] = new long [partitions];
			for (int j=0;j<partitions;j++) {
				sprintf(filename, "%s/block-%d-%d", path.c_str(), i, j);
				fsize[i][j] = file_size(filename);

			}
		}
		/*find the max value of the fsize to create the buffers based on this value*/
		max_buffer = largest(fsize,partitions);
#ifdef DEBUG
		printf("Largest in given block array is %d \n", largest(fsize, n));
#endif
#ifdef DEBUG
		for (int i=0;i<partitions;i++) {
			for (int j=0;j<partitions;j++) {
				printf("size of block[%d][%d]  = %ld \n",i,j,fsize[i][j]);
			}
		}
#endif
		long bytes;

		column_offset = new long [partitions*partitions+1];
		int fin_column_offset = open((path+"/column_offset").c_str(), O_RDONLY);
		bytes = read(fin_column_offset, column_offset, sizeof(long)*(partitions*partitions+1));
		assert(bytes==sizeof(long)*(partitions*partitions+1));
		close(fin_column_offset);
		printf("[INFO] column_offset: loaded\n");


		int fin_row_offset = open((path+"/row_offset").c_str(), O_RDONLY);
		row_offset = new long [partitions*partitions+1];
		bytes = read(fin_row_offset, row_offset, sizeof(long)*(partitions*partitions+1));
		assert(bytes==sizeof(long)*(partitions*partitions+1));
		close(fin_row_offset);
		printf("[INFO] row_offset   : loaded\n");
#ifdef DEBUG

		for(int i=0; i < partitions*partitions; i++) {
			printf("row offsets[%d] = %ld \n",i,row_offset[i]);
		}

#endif

		long begin_offset, end_offset;
		for (int i=0; i< partitions; i++){
			for(int j=0; j< partitions; j++){
				begin_offset = row_offset[i*partitions+j];
				end_offset = row_offset[i*partitions+j+1];
#ifdef DEBUG
				printf("[%d][%d] , begin offset %ld   end offset %ld \n", i , j, begin_offset,end_offset);
#endif
			}
		}
		outdegrees = new uint32_t [vertices];
		int fin_out_degrees = open((path+"/outdegrees").c_str(), O_RDONLY);
		bytes = read(fin_out_degrees, outdegrees, sizeof(uint32_t)*vertices);
		assert(bytes==sizeof(uint32_t)*vertices);
		close(fin_out_degrees);
		printf("[INFO] outdegrees   : loaded\n");
#ifdef DEBUG
		for(int i=0; i<100; i++) {
			printf("outdegrees %ld \n",(VertexId)outdegrees[i]);
		}

#endif
	}
	/*
	   void load_outdegrees() {
	   outdegrees.initiate(path+"/outdegrees", vertices);
	   }*/
};

#endif
