# Distributed Large-scale Graph Processing on FPGAs #
This repository contains all the code to reproduce the evaluation of the work submitted and under review of Future Generation Computer Systems (FGCS) journal, 

## Introduction
This work proposes an FPGA processing engine that overlaps, hides and customises all data transfers so that the FPGA accelerator is fully utilised. This engine is integrated into a framework for using FPGA clusters and is able to use an offline partitioning method to facilitate the distribution of large-scale graphs. We show how graph partitioning combined with an FPGA architecture will lead to high performance, even when the graph has Millions of vertices and Billions of edges.

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
| UK-2005 | 39.4 M | 936.3 M | 16  | Web Graph |
| Twitter-2010 | 42.1 M | 1.47 B | 23  | Web Graph |
| Friendster |   68.3 M | 2.58 B | 43  | Web Graph |

The datasets links to dowanload: 

Livejournal : https://snap.stanford.edu/data/soc-LiveJournal1.html

Web-UK-2005 : https://law.di.unimi.it/webdata/uk-2005/

Twitter : http://konect.cc/networks/twitter/

Friendster : http://konect.cc/networks/friendster/

## Related Publications
*Sahebi, A., Barbone, M., Procaccini, M. et al. Distributed large-scale graph processing on FPGAs. J Big Data 10, 95 (2023). https://doi.org/10.1186/s40537-023-00756-x*

Paper's link: https://journalofbigdata.springeropen.com/articles/10.1186/s40537-023-00756-x


## Useful Links

Host Memory Access : https://xilinx.github.io/XRT/master/html/hm.html

Kernel Mappings : https://docs.amd.com/r/2022.1-English/ug1393-vitis-application-acceleration/Mapping-Kernel-Ports-to-Memory

Kernel Compilation : https://docs.amd.com/r/2023.1-English/Vitis-Tutorials-Hardware-Acceleration/Kernel-compilation


## Acknowledgement
* [Xilinx Adaptive Compute Clusters (XACC) program](https://www.xilinx.com/support/university/XUP-XACC.html)
* [NVIDIA]
