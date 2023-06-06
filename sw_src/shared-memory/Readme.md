Pagerank parallel (OpenMP),

Needs manually address the name of the graph in the code,
Graphs have to be in the edge list format <src> <dest>

**"TODO" Control the number of processors by the user input commandline.**
  
Run:

Provide any dataset compatible with "tab-separated" format, e.g., download the "wiki-Talk" dataset from following link:

https://snap.stanford.edu/data/wiki-Talk.txt.gz

```
wget https://snap.stanford.edu/data/wiki-Talk.txt.gz
gunzip wiki-Talk.txt.gz
```


then run with the following command:

	
```./<executable> [graph_path] [vertices] ```

for example: 

```
./pr-omp wiki-Talk.txt 2394385
```
 
