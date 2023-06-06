# Distributed Large-scale Graph Processing on FPGA #

# Compile:
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

you can find the tree of directories below:

* **hw_src**: includes the accelerator files 
    * *FPGA*: This is the FPGA implementation root directory which logs and Makefile live.
        * **host**: includes the host part of the accelerator.
        * **kernel**: includes the implementation of the FPGA Kernel(s).
    
to Make a hardware build there are some variable such as PLATFORM which needs to be taken care of, assuming build for U250 accelerator is default value, 
to make an application like pagerank simply do:
``` 
cd ./hw_src/FPGA
make pagerank -- to create host program
make pagerank_hw -- to create the xclbin file
```
    
* **sw_src**: includes the baseline sources including:
    * **Sequential**: The pure sequential version of Pagerank, 
    * **Shared-memory**: The parallel version of the Pagerank using OpenMP,
    * **Grid**: implementation which has been adopted from the referenced version.


There will be a readme file in each subdirectory to explain the procedure for each individual experiment. 
The make procedure for FPGA bitstream and host file is different (is written in the readme file in the correspoding directory.)


# Evaluation

List of available datasets for the evaluation:

| Graph | Vertices | Edge | Size (GB) | Type |
| :---: | :---: | :---: | :---: | :---: |
| LiveJournal | 4.8 M | 68.9 M | 0.514 | Social Web |
| web-UK-2005 | 39.4 M | 936.3 M | 16  | Web Graph |
| Twitter | 41.6 M | 1.4 B | 23  | Web Graph |
| Friendster |   68.3 M | 2.58 B | 43  | Web Graph |
| clueweb12 | 978.4 M | 4.25 B | 56  | Web Graph |
| **PageGraph** | **3.563 Billion** | **128.736 Billion** | **300** | **Hyperlinks** |

NOTE: a wide range of recent research used **Yahoo** (altavista circa 2002) as a ultimate evaluation target, However,
this dataset has 49% of zero Edges! so the half of the dataset consists of isolated nodes and they are not connected to any other node (largest component around 3%).
Therefore, in our experiment we don't use this dataset and instead we use clueweb12 with the same range of size but with Largest Component around 80%.

Reference for more reading : https://law.di.unimi.it/webdata/altavista-2002/

Livejournal : https://snap.stanford.edu/data/soc-LiveJournal1.html

Web-UK-2005 : https://law.di.unimi.it/webdata/uk-2005/

Twitter : http://konect.cc/networks/twitter/

Friendster : http://konect.cc/networks/friendster/

