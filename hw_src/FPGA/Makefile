CURRENT_DIR = $(PWD)
VPP := $(XILINX_VITIS)/bin/v++
EMCONFIGUTIL := $(XILINX_VITIS)/bin/emconfigutil
EMCONFIG_FILE := emconfig.json
#
MODE := hw
#MODE := hw_emu

#PLATFORM := xilinx_u250_gen3x16_xdma_3_1_202020_1
PLATFORM := xilinx_u250_gen3x16_xdma_4_1_202210_1
#PLATFORM := xilinx_u280_gen3x16_xdma_1_202211_1
#PLATFORM := xilinx_u280_xdma_201920_3


#Compiler flags
VPP_COMMON_OPTS := -s -t $(MODE) --platform $(PLATFORM) #  -g --profile.data all:all:all

CFLAGS := -std=c++14 -I$(XILINX_XRT)/include -I$(CURRENT_DIR)/utils #-I/$(CURRENT_DIR)/fpga
#CLAGS += -g

VPP_COMMON_OPTS += -I$(CURRENT_DIR)/kernel --hls.jobs 8
VPP_COMMON_OPTS += --vivado.synth.jobs 8 --vivado.impl.jobs 8 #--advanced.param compiler.axiDeadLockFree=yes -O0
#VPP_COMMON_OPTS += --optimize 3

LFLAGS := -L$(XILINX_XRT)/lib -lxilinxopencl -lpthread -lrt

pr_app := pagerank
spmv_app := spmv
sssp_app := sssp
wcc_app := wcc
bfs_app := bfs

# kernel targets
PR_HW := pagerank_kernel_0
PR_XCLBIN := pagerank_kernel_0.xclbin

# kernel rules
# pagerank
PR_XOS := pagerank_kernel_0.xo
PR_XCLBIN := pagerank_kernel_0.xclbin
PR_CONN := --config $(CURRENT_DIR)/kernel/pagerank/connectivity_pagerank.cfg #--kernel_frequency=350
pr_hw_srcdir:= $(CURRENT_DIR)/kernel/pagerank/
pr_hw_bindir:= $(CURRENT_DIR)/kernel/pagerank/hardware
pr_hw_src:= $(wildcard $(CURRENT_DIR)/kernel/pagerank/pagerank_kernel.cpp)

pagerank_hw: $(PR_XCLBIN)

$(pr_hw_srcdir)/$(PR_XOS): $(pr_hw_src)
	$(VPP) $(VPP_COMMON_OPTS) -c -k $(PR_HW) -o $@ $+

$(PR_XCLBIN): $(pr_hw_srcdir)/$(PR_XOS)
	mkdir -p $(pr_hw_bindir)
	$(VPP) $(VPP_COMMON_OPTS) -l -o $(pr_hw_bindir)/$@ $+ $(PR_CONN) 


SSSP_HW := sssp_kernel_0
SSSP_XCLBIN := sssp_kernel_0.xclbin

# kernel rules
# sssp
SSSP_XOS := sssp_kernel_0.xo
SSSP_XCLBIN := sssp_kernel_0.xclbin
SSSP_CONN := --config $(CURRENT_DIR)/kernel/sssp/connectivity_sssp.cfg #--kernel_frequency=350
sssp_hw_srcdir:= $(CURRENT_DIR)/kernel/sssp
sssp_hw_bindir:= $(CURRENT_DIR)/kernel/sssp/hardware
sssp_hw_src:= $(wildcard ${sssp_hw_srcdir}/sssp_kernel.cpp)

sssp_hw: $(SSSP_XCLBIN)

$(sssp_hw_srcdir)/$(SSSP_XOS): $(sssp_hw_src)
	$(VPP) $(VPP_COMMON_OPTS) -c -k $(SSSP_HW) -o $@ $+

$(SSSP_XCLBIN): $(sssp_hw_srcdir)/$(SSSP_XOS)
	mkdir -p $(sssp_hw_bindir)
	$(VPP) $(VPP_COMMON_OPTS) -l -o $(sssp_hw_bindir)/$@ $+ $(SSSP_CONN) 


WCC_HW := wcc_kernel_0
WCC_XCLBIN := wcc_kernel_0.xclbin
# kernel rules
# wcc
WCC_XOS := wcc_kernel_0.xo
WCC_XCLBIN := wcc_kernel_0.xclbin
WCC_CONN := --config $(CURRENT_DIR)/kernel/wcc/connectivity_wcc.cfg #--kernel_frequency=350
wcc_hw_srcdir:= $(CURRENT_DIR)/kernel/wcc
wcc_hw_bindir:= $(CURRENT_DIR)/kernel/wcc/hardware
wcc_hw_src:= $(wildcard ${wcc_hw_srcdir}/wcc_kernel.cpp)

wcc_hw: $(WCC_XCLBIN)

$(wcc_hw_srcdir)/$(WCC_XOS): $(wcc_hw_src)
	$(VPP) $(VPP_COMMON_OPTS) -c -k $(WCC_HW) -o $@ $+

$(WCC_XCLBIN): $(wcc_hw_srcdir)/$(WCC_XOS)
	mkdir -p $(wcc_hw_bindir)
	$(VPP) $(VPP_COMMON_OPTS) -l -o $(wcc_hw_bindir)/$@ $+ $(WCC_CONN) 


BFS_HW := bfs_kernel_0
BFS_XCLBIN := bfs_kernel_0.xclbin
# kernel rules
# bfs
BFS_XOS := bfs_kernel_0.xo
BFS_XCLBIN := bfs_kernel_0.xclbin
BFS_CONN := --config $(CURRENT_DIR)/kernel/bfs/connectivity_bfs.cfg #--kernel_frequency=350
bfs_hw_srcdir:= $(CURRENT_DIR)/kernel/bfs
bfs_hw_bindir:= $(CURRENT_DIR)/kernel/bfs/hardware
bfs_hw_src:= $(wildcard ${bfs_hw_srcdir}/bfs_kernel.cpp)

bfs_hw: $(BFS_XCLBIN)

$(bfs_hw_srcdir)/$(BFS_XOS): $(bfs_hw_src)
	$(VPP) $(VPP_COMMON_OPTS) -c -k $(BFS_HW) -o $@ $+

$(BFS_XCLBIN): $(bfs_hw_srcdir)/$(BFS_XOS)
	mkdir -p $(bfs_hw_bindir)
	$(VPP) $(VPP_COMMON_OPTS) -l -o $(bfs_hw_bindir)/$@ $+ $(BFS_CONN) 

# host rules
#
# pagerank
pr_srcdir:= $(CURRENT_DIR)/host/pagerank/
pr_bindir:= $(CURRENT_DIR)/host/pagerank/bin
pr_src:= $(wildcard $(CURRENT_DIR)/host/pagerank/*.cpp)

.DEFAULT_GOAL := build
build: $(pr_app)

$(pr_app): $(pr_srcdir)/pr.o
	        mkdir -p $(pr_bindir)
		g++ $(CFLAGS) -o $(pr_bindir)/$@ $? $(LFLAGS)
$(pr_srcdir)/pr.o: $(pr_src)
	       	g++ -c -o $@ $?

#
# spmv
spmv_srcdir:= $(CURRENT_DIR)/host/spmv/
spmv_bindir:= $(CURRENT_DIR)/host/spmv/bin
spmv_src:= $(wildcard $(CURRENT_DIR)/host/spmv/*.cpp)

.DEFAULT_GOAL := build
build: $(spmv_app)

$(spmv_app): $(spmv_srcdir)/spmv.o
	        mkdir -p $(spmv_bindir)
		g++ $(CFLAGS) -o $(spmv_bindir)/$@ $? $(LFLAGS)
$(spmv_srcdir)/spmv.o: $(spmv_src)
	       	g++ -c -o $@ $?


#
# sssp
sssp_srcdir:= $(CURRENT_DIR)/host/sssp/
sssp_bindir:= $(CURRENT_DIR)/host/sssp/bin
sssp_src:= $(wildcard $(CURRENT_DIR)/host/sssp/*.cpp)

.DEFAULT_GOAL := build
build: $(sssp_app)

$(sssp_app): $(sssp_srcdir)/sssp.o
	        mkdir -p $(sssp_bindir)
		g++ $(CFLAGS) -o $(sssp_bindir)/$@ $? $(LFLAGS)
$(sssp_srcdir)/sssp.o: $(sssp_src)
	       	g++ -c -o $@ $?


#
# wcc
wcc_srcdir:= $(CURRENT_DIR)/host/wcc/
wcc_bindir:= $(CURRENT_DIR)/host/wcc/bin
wcc_src:= $(wildcard $(CURRENT_DIR)/host/wcc/*.cpp)

.DEFAULT_GOAL := build
build: $(wcc_app)

$(wcc_app): $(wcc_srcdir)/wcc.o
	        mkdir -p $(wcc_bindir)
		g++ $(CFLAGS) -o $(wcc_bindir)/$@ $? $(LFLAGS)
$(wcc_srcdir)/wcc.o: $(wcc_src)
	       	g++ -c -o $@ $?



#
# bfs
bfs_srcdir:= $(CURRENT_DIR)/host/bfs/
bfs_bindir:= $(CURRENT_DIR)/host/bfs/bin
bfs_src:= $(wildcard $(CURRENT_DIR)/host/bfs/*.cpp)

.DEFAULT_GOAL := build
build: $(bfs_app)

$(bfs_app): $(bfs_srcdir)/bfs.o
	        mkdir -p $(bfs_bindir)
		g++ $(CFLAGS) -o $(bfs_bindir)/$@ $? $(LFLAGS)
$(bfs_srcdir)/bfs.o: $(bfs_src)
	       	g++ -c -o $@ $?


run: $(XCLBIN) $(HOST_EXE) $(EMCONFIG_FILE)
ifeq ($(TARGET),$(filter $(TARGET),sw_emu hw_emu))
	XCL_EMULATION_MODE=${TARGET} ./$(HOST_EXE) $(EXE_OPT)
else
	./$(HOST_EXE) $(EXE_OPT)
endif

# primary build targets
.PHONY: pagerank spmv all clean pagerank_hw

clean:
	rm -rf $(EMCONFIG_FILE) $(app) _x .ipcache .run

$(EMCONFIG_FILE):
	$(EMCONFIGUTIL) --nd 1 --od . --platform $(DSA)

check: $(XCLBIN) $(HOST_EXE) $(EMCONFIG_FILE)
	XCL_EMULATION_MODE=${MODE} ./$(app) $(EXE_OPT)
