# Grid Graph

Run: 

Provide any dataset compatible with "tab-separated" format, e.g., download the "wiki-Talk" dataset from following link:

https://snap.stanford.edu/data/wiki-Talk.txt.gz

```
wget https://snap.stanford.edu/data/wiki-Talk.txt.gz
gunzip wiki-Talk.txt.gz
```

by a text to binary tool provided in the "tools" directory, convert the txt file to the binary one
for example:
```./texttobinary [original txt file] [converted binary one] 
 ./texttobinary wiki-Talk.txt wiki-Talk.bin
```


then run with the following command:

	
```./<executable> -f [graph_path] -v [vertices] -p [partitions] ```

for example: 

```
./pr-grid -f wiki-Talk.bin -v 2394385 -p 4
```

<br>

<br>
This is adopted based on the implementation of the Grid Graph 
in the following paper with some modifications.

https://github.com/thu-pacman/GridGraph
    
    @inproceedings {zhu2015gridgraph,
    author = {Xiaowei Zhu and Wentao Han and Wenguang Chen},
    title = {GridGraph: Large-Scale Graph Processing on a Single Machine Using 2-Level Hierarchical Partitioning},
    booktitle = {2015 USENIX Annual Technical Conference (USENIX ATC 15)},
    year = {2015},
    month = Jul,
    isbn = {978-1-931971-225},
    address = {Santa Clara, CA},
    pages = {375--386},
    url = {https://www.usenix.org/conference/atc15/technical-session/presentation/zhu},
    publisher = {USENIX Association},
    }

https://github.com/jmalicevic/EverythingGraph

    @inproceedings {,
    author = {Jasmina Malicevic and Baptiste Lepers and Willy Zwaenepoel},
    title = {Everything you always wanted to know about multicore graph processing but were afraid to ask},
    booktitle = {2017 {USENIX} Annual Technical Conference ({USENIX} {ATC} 17)},
    year = {2017},
    isbn = {978-1-931971-38-6},
    address = {Santa Clara, CA},
    pages = {631--643},
    url = {https://www.usenix.org/conference/atc17/technical-sessions/presentation/malicevic},
    publisher = {{USENIX} Association},
    month = jul,
    }

and some libraries is taken from the Ligra repository:

https://github.com/jshun/ligra/tree/master/ligra

