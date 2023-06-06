/*
   Copyright (c) 2020-2021 Amin Sahebi,
   University of Siena, University of Florence.

   First implementation by Nikos Katirtzis.

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

#include <assert.h>
#include <math.h>
#include <omp.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "utils.h"

/** Assuming dumping factor= 0.85 */
#define d 0.85

extern inline double get_time();

/** Global variables */
int N;
Node *Nodes;

/** function to read the input graph
  @param filename
  @return */

void Read_file(char *filename) {
	FILE *fid;

	int from_idx, to_idx;
	int temp_size;
	char line[1000];

	fid = fopen(filename, "r");
	if (fid == NULL) {
		printf("Error opening data file\n");
	}

	while (!feof(fid)) {
		fgets(line, sizeof(line), fid);
		/** ignore sentences starting from */
		if (strncmp(line, "#", 1) != 0) {
			if (sscanf(line, "%d\t%d\n", &from_idx, &to_idx)) {
				Nodes[from_idx].con_size++;
				temp_size = Nodes[from_idx].con_size;
				Nodes[from_idx].dest = (int *)realloc(Nodes[from_idx].dest,
						temp_size * sizeof(int));
				Nodes[from_idx].dest[temp_size - 1] = to_idx;
			}
		}
	}

	fclose(fid);
}

/** distribute the probability of the Pagerank values
  all over the nodes, is general rule to assign the same
  probability of 1/N to all nodes */
void Random_P_E() {
	int i;
	/** Sum of P (it must be =1) */
	double sum_P_1 = 0;
	/** Sum of E (it must be =1) */
	double sum_E_1 = 0;

	/** Arrays initialization */
	for (i = 0; i < N; i++) {
		Nodes[i].pr = 1;
		Nodes[i].pr = (double)Nodes[i].pr / N;

		sum_P_1 = sum_P_1 + Nodes[i].pr;

		Nodes[i].e = 1;
		Nodes[i].e = (double)Nodes[i].e / N;
		sum_E_1 = sum_E_1 + Nodes[i].e;
	}

	assert(sum_P_1 = 1);
	assert(sum_E_1 = 1);
}

int main(int argc, char **argv) {
	/** Check input arguments */
	if (argc < 3) {
		printf(
				"Error in arguments! Two arguments required: [graph_path] [vertices]\n");
		return 0;
	}

	/** get arguments */
	char filename[256];
	strcpy(filename, argv[1]);
	N = atoi(argv[2]);

	int i, j, k;
	double readtime, totaltime;
	double node_constant;

	/** a constant value contributed of all nodes with connectivity = 0
	  it's going to be addes to all node's new probability */
	double sum = 0;

	/** Allocate memory for N nodes */
	Nodes = (Node *)malloc(N * sizeof(Node));

#pragma omp parallel for private(i) shared(Nodes)
	for (i = 0; i < N; i++) {
		Nodes[i].con_size = 0;
		Nodes[i].dest = (int *)malloc(sizeof(int));
	}

	double start = get_time();
	Read_file(filename);
	printf("[INFO] Time to read the dataset: %f seconds\n",get_time() - start);
	double exec_time = get_time();
	
	/** set random probabilities */
	Random_P_E();

	/** Iterations counter */
	int iterations = 0;
	int index;

	/* Or any value > threshold */
	double max_error = 1;
	double error_log[100];

	/** Continue if we don't have convergence yet */
	//while (max_error > 0.00001) {
	while (iterations < 10) {
		sum = 0;
		/** Initialize pr and newpr values */
#pragma omp parallel for private(i) shared(Nodes)
		for (i = 0; i < N; i++) {
			// Update the "old" P table with the new one
			Nodes[i].newpr = Nodes[i].pr;
			Nodes[i].pr = 0;
		}

		/** Find Pr for each node */
#pragma omp parallel for private(i, j, index, node_constant) shared(Nodes) \
		schedule(auto)
		for (i = 0; i < N; i++) {
			if (Nodes[i].con_size != 0) {
				node_constant = (double)Nodes[i].newpr / Nodes[i].con_size;
				/** Compute the total probability, contributed by node's
				  neighbors */
				for (j = 0; j < Nodes[i].con_size; j++) {
					index = Nodes[i].dest[j];
#pragma omp atomic
					Nodes[index].pr = Nodes[index].pr + node_constant;
				}

			}

			else {
				/** Contribute to all */
#pragma omp atomic
				sum = sum + (double)Nodes[i].newpr / N;
			}
		}

		max_error = -1;

		/** Compute the new probabilities and find maximum error */
#pragma omp parallel for private(i) shared(Nodes, max_error)
		for (i = 0; i < N; i++) {
			Nodes[i].pr = d * (Nodes[i].pr + sum) + (1 - d) * Nodes[i].e;

			if (fabs(Nodes[i].pr - Nodes[i].newpr) > max_error) {
				max_error = fabs(Nodes[i].pr - Nodes[i].newpr);
			}
		}
		error_log[iterations] = max_error;
		iterations++;
	}
	printf("[INFO] Total Execution time: %f seconds\n", get_time() - exec_time);

	printf("\n[INFO] Total iterations to converge: %d\n", iterations);

	printf("[INFO] Max Error in iteration %d = %f\n", iterations + 1, max_error);

	printf("[INFO] End of program!\n");
	return (EXIT_SUCCESS);
}
