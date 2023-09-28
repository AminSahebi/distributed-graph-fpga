#!/usr/bin/env vitis_hls
open_project -reset prj
add_files wcc_kernel.cpp 
set_top wcc_kernel_0
open_solution sol
set_part {xcu250-figd2104-2L-e}
create_clock -period 5 -name default
config_compile -name_max_length 253
config_interface -m_axi_addr64
csynth_design
