# Distributed Large-scale Graph Processing on FPGAs #
This repository contains all the code to reproduce the evaluation of the work published in Jornal of Big Data, 
PLEASE NOTE that the repository is under the new algorithm development!

*Sahebi, A., Barbone, M., Procaccini, M. et al. Distributed large-scale graph processing on FPGAs. J Big Data 10, 95 (2023). https://doi.org/10.1186/s40537-023-00756-x*

Paper's link: https://journalofbigdata.springeropen.com/articles/10.1186/s40537-023-00756-x

## Introduction
This work proposes an FPGA processing engine that overlaps, hides and customises all data transfers so that the FPGA accelerator is fully utilised. This engine is integrated into a framework for using FPGA clusters and is able to use an offline partitioning method to facilitate the distribution of large-scale graphs. We show how graph partitioning combined with an FPGA architecture will lead to high performance, even when the graph has Millions of vertices and Billions of edges. In the case of the PageRank algorithm, widely used for ranking the importance of nodes in a graph, compared to state-of-the-art CPU and GPU solutions, our implementation is the fastest, achieving a speedup of 13 compared to 8 and 3 respectively. Moreover, in the case of the large-scale graphs, the GPU solution fails due to memory limitations while the CPU solution achieves a speedup of 12 compared to the 26x achieved by our FPGA solution. Other state-of-the-art FPGA solutions are 28 times slower than our proposed solution. When the size of a graph limits the performance of a single FPGA device, our performance model shows that using multi-FPGAs in a distributed system can further improve the performance by about 12x. This highlights our implementation efficiency for large datasets not fitting in the on-chip memory of a hardware device.

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
