# Distributed Large-scale Graph Processing on FPGAs #
This repository contains all the code to reproduce the evaluation of the work published in Jornal of Big Data, 
PLEASE NOTE that the repository is under the new algorithm development!

*Sahebi, A., Barbone, M., Procaccini, M. et al. Distributed large-scale graph processing on FPGAs. J Big Data 10, 95 (2023). https://doi.org/10.1186/s40537-023-00756-x*

Paper's link: https://journalofbigdata.springeropen.com/articles/10.1186/s40537-023-00756-x

## Introduction
This work proposes an FPGA processing engine that overlaps, hides and customises all data transfers so that the FPGA accelerator is fully utilised. This engine is integrated into a framework for using FPGA clusters and is able to use an offline partitioning method to facilitate the distribution of large-scale graphs. We show how graph partitioning combined with an FPGA architecture will lead to high performance, even when the graph has Millions of vertices and Billions of edges. In the case of the PageRank algorithm, widely used for ranking the importance of nodes in a graph, compared to state-of-the-art CPU and GPU solutions, our implementation is the fastest, achieving a speedup of 13 compared to 8 and 3 respectively. Moreover, in the case of the large-scale graphs, the GPU solution fails due to memory limitations while the CPU solution achieves a speedup of 12 compared to the 26x achieved by our FPGA solution. Other state-of-the-art FPGA solutions are 28 times slower than our proposed solution. When the size of a graph limits the performance of a single FPGA device, our performance model shows that using multi-FPGAs in a distributed system can further improve the performance by about 12x. This highlights our implementation efficiency for large datasets not fitting in the on-chip memory of a hardware device.


## Build software:
To don't make the repo messy create a build directory to put build files there...

```
clone https://github.com/DiamonDinoia/distributed-graph-fpga.git

cd distributed-graph-fpga/

mkdir build && cd build

cmake ../

make
```

**Dependencies**
* The GCC compiler must support OpenMP
* The Grid implementation is dependant on "cilk" (can also work with OpenMP with appropirate compilation flag)
     * to install cilk on ubuntu: (supported only ubuntu < 18.04 && gcc < 7.5) 
     * ``` sudo apt-get install -y libcilkrts5 ```
   
<br>

This procedure compile the baseline files, plus the preprocessing step.
If you would like to make changes in the software sources the tree of the directories are as follows:
   
* **sw_src**: includes the baseline sources including:
    * **Sequential**: The pure sequential version of Pagerank, 
    * **Shared-memory**: The parallel version of the Pagerank using OpenMP,
    * **Grid**: implementation which has been adopted from the referenced version.


There will be a readme file in each subdirectory to explain the procedure for each individual experiment. 

## Build hardware:

* **hw_src**: includes the accelerator files 
    * *FPGA*: This is the FPGA implementation root directory which logs and Makefile live.
        * **host**: includes the host part of the accelerator.
        * **kernel**: includes the implementation of the FPGA Kernel(s).
    * *GPU*: We chose **cugraph** among the graph processing tools on GPU and we adopted a wrapper to select our desired benchmark and collect the results to compare in the evaluation.
    
to Make a hardware build there are some variable such as PLATFORM which needs to be taken care of, assuming build for U250 accelerator is default value, 
to make an application like pagerank simply do:
``` 
cd ./hw_src/FPGA
make pagerank -- to create host program
make pagerank_hw -- to create the xclbin file
```

## Evaluation

List of available datasets for the evaluation:

| Graph | Vertices | Edge | Size (GB) | Type |
| :---: | :---: | :---: | :---: | :---: |
| LiveJournal | 4.8 M | 68.9 M | 1.1 | Social Web |
| web-UK-2005 | 39.4 M | 936.3 M | 16  | Web Graph |
| Twitter | 42.1 M | 1.47 B | 23  | Web Graph |
| Friendster |   68.3 M | 2.58 B | 43  | Web Graph |

The datasets links to dowanload: 

Livejournal : https://snap.stanford.edu/data/soc-LiveJournal1.html

Web-UK-2005 : https://law.di.unimi.it/webdata/uk-2005/

Twitter : http://konect.cc/networks/twitter/

Friendster : http://konect.cc/networks/friendster/

## How to cite this work 
```
@Article{Sahebi2023,
author={Sahebi, Amin
and Barbone, Marco
and Procaccini, Marco
and Luk, Wayne
and Gaydadjiev, Georgi
and Giorgi, Roberto},
title={Distributed large-scale graph processing on FPGAs},
journal={Journal of Big Data},
year={2023},
month={Jun},
day={04},
volume={10},
number={1},
pages={95},
issn={2196-1115},
doi={10.1186/s40537-023-00756-x},
url={https://doi.org/10.1186/s40537-023-00756-x}
}
```

## Acknowledgement
* [Xilinx Adaptive Compute Clusters (XACC) program](https://www.xilinx.com/support/university/XUP-XACC.html)
* [NVIDIA]
