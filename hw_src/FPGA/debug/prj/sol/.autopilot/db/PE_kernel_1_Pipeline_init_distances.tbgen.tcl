set moduleName PE_kernel_1_Pipeline_init_distances
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {PE_kernel.1_Pipeline_init_distances}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln27 int 12 regular  }
	{ local_in_a int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ distance_buffer_31_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_30_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_29_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_28_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_27_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_26_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_25_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_24_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_23_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_22_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_21_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_20_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_19_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_18_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_17_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_16_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_15_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_14_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_13_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_12_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_11_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_10_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_9_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_8_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_7_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_6_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_5_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_4_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_3_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_2_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_1_0_out int 32 regular {pointer 1}  }
	{ distance_buffer_0_0_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln27", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "local_in_a", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_31_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_30_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_29_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_28_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_27_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_26_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_25_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_24_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_23_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_22_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_21_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_20_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_19_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_18_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_17_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_16_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_15_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_14_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_13_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_12_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_11_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_10_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_9_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_8_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_7_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_6_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_5_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_4_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_3_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_2_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_1_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_0_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 74
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln27 sc_in sc_lv 12 signal 0 } 
	{ local_in_a_address0 sc_out sc_lv 12 signal 1 } 
	{ local_in_a_ce0 sc_out sc_logic 1 signal 1 } 
	{ local_in_a_q0 sc_in sc_lv 32 signal 1 } 
	{ distance_buffer_31_0_out sc_out sc_lv 32 signal 2 } 
	{ distance_buffer_31_0_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ distance_buffer_30_0_out sc_out sc_lv 32 signal 3 } 
	{ distance_buffer_30_0_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ distance_buffer_29_0_out sc_out sc_lv 32 signal 4 } 
	{ distance_buffer_29_0_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ distance_buffer_28_0_out sc_out sc_lv 32 signal 5 } 
	{ distance_buffer_28_0_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ distance_buffer_27_0_out sc_out sc_lv 32 signal 6 } 
	{ distance_buffer_27_0_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ distance_buffer_26_0_out sc_out sc_lv 32 signal 7 } 
	{ distance_buffer_26_0_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ distance_buffer_25_0_out sc_out sc_lv 32 signal 8 } 
	{ distance_buffer_25_0_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ distance_buffer_24_0_out sc_out sc_lv 32 signal 9 } 
	{ distance_buffer_24_0_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ distance_buffer_23_0_out sc_out sc_lv 32 signal 10 } 
	{ distance_buffer_23_0_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ distance_buffer_22_0_out sc_out sc_lv 32 signal 11 } 
	{ distance_buffer_22_0_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ distance_buffer_21_0_out sc_out sc_lv 32 signal 12 } 
	{ distance_buffer_21_0_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ distance_buffer_20_0_out sc_out sc_lv 32 signal 13 } 
	{ distance_buffer_20_0_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ distance_buffer_19_0_out sc_out sc_lv 32 signal 14 } 
	{ distance_buffer_19_0_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ distance_buffer_18_0_out sc_out sc_lv 32 signal 15 } 
	{ distance_buffer_18_0_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ distance_buffer_17_0_out sc_out sc_lv 32 signal 16 } 
	{ distance_buffer_17_0_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ distance_buffer_16_0_out sc_out sc_lv 32 signal 17 } 
	{ distance_buffer_16_0_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ distance_buffer_15_0_out sc_out sc_lv 32 signal 18 } 
	{ distance_buffer_15_0_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ distance_buffer_14_0_out sc_out sc_lv 32 signal 19 } 
	{ distance_buffer_14_0_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ distance_buffer_13_0_out sc_out sc_lv 32 signal 20 } 
	{ distance_buffer_13_0_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ distance_buffer_12_0_out sc_out sc_lv 32 signal 21 } 
	{ distance_buffer_12_0_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ distance_buffer_11_0_out sc_out sc_lv 32 signal 22 } 
	{ distance_buffer_11_0_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ distance_buffer_10_0_out sc_out sc_lv 32 signal 23 } 
	{ distance_buffer_10_0_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ distance_buffer_9_0_out sc_out sc_lv 32 signal 24 } 
	{ distance_buffer_9_0_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ distance_buffer_8_0_out sc_out sc_lv 32 signal 25 } 
	{ distance_buffer_8_0_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ distance_buffer_7_0_out sc_out sc_lv 32 signal 26 } 
	{ distance_buffer_7_0_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ distance_buffer_6_0_out sc_out sc_lv 32 signal 27 } 
	{ distance_buffer_6_0_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ distance_buffer_5_0_out sc_out sc_lv 32 signal 28 } 
	{ distance_buffer_5_0_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ distance_buffer_4_0_out sc_out sc_lv 32 signal 29 } 
	{ distance_buffer_4_0_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ distance_buffer_3_0_out sc_out sc_lv 32 signal 30 } 
	{ distance_buffer_3_0_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ distance_buffer_2_0_out sc_out sc_lv 32 signal 31 } 
	{ distance_buffer_2_0_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ distance_buffer_1_0_out sc_out sc_lv 32 signal 32 } 
	{ distance_buffer_1_0_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ distance_buffer_0_0_out sc_out sc_lv 32 signal 33 } 
	{ distance_buffer_0_0_out_ap_vld sc_out sc_logic 1 outvld 33 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln27", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "zext_ln27", "role": "default" }} , 
 	{ "name": "local_in_a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_in_a", "role": "address0" }} , 
 	{ "name": "local_in_a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_in_a", "role": "ce0" }} , 
 	{ "name": "local_in_a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_in_a", "role": "q0" }} , 
 	{ "name": "distance_buffer_31_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_31_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_31_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_31_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_30_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_30_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_30_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_30_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_29_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_29_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_29_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_29_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_28_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_28_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_28_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_28_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_27_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_27_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_27_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_27_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_26_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_26_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_26_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_26_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_25_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_25_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_25_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_25_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_24_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_24_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_24_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_24_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_23_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_23_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_23_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_23_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_22_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_22_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_22_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_22_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_21_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_21_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_21_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_21_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_20_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_20_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_20_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_20_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_19_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_19_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_19_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_19_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_18_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_18_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_18_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_18_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_17_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_17_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_17_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_17_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_16_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_16_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_16_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_16_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_15_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_15_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_15_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_15_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_14_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_14_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_14_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_14_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_13_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_13_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_13_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_13_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_12_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_12_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_12_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_12_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_11_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_11_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_11_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_11_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_10_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_10_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_10_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_10_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_9_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_9_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_9_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_9_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_8_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_8_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_8_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_8_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_7_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_7_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_7_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_7_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_6_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_6_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_6_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_6_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_5_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_5_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_5_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_5_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_4_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_4_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_4_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_4_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_3_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_3_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_3_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_3_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_2_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_2_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_2_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_2_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_1_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_1_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_1_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_1_0_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_0_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_0_0_out", "role": "default" }} , 
 	{ "name": "distance_buffer_0_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_0_0_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "PE_kernel_1_Pipeline_init_distances",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "35", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "zext_ln27", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_in_a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "distance_buffer_31_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_30_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_29_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_28_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_27_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_26_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_25_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_24_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_23_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_22_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_21_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_20_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_19_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_18_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_17_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_16_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_15_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_14_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_13_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_12_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_11_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_10_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_9_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_8_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_7_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_6_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_5_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_4_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_0_0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "init_distances", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_kernel_1_Pipeline_init_distances {
		zext_ln27 {Type I LastRead 0 FirstWrite -1}
		local_in_a {Type I LastRead 0 FirstWrite -1}
		distance_buffer_31_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_30_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_29_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_28_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_27_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_26_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_25_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_24_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_23_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_22_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_21_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_20_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_19_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_18_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_17_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_16_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_15_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_14_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_13_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_12_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_11_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_10_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_9_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_8_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_7_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_6_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_5_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_4_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_3_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_2_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_1_0_out {Type O LastRead -1 FirstWrite 1}
		distance_buffer_0_0_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "35", "Max" : "35"}
	, {"Name" : "Interval", "Min" : "35", "Max" : "35"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln27 { ap_none {  { zext_ln27 in_data 0 12 } } }
	local_in_a { ap_memory {  { local_in_a_address0 mem_address 1 12 }  { local_in_a_ce0 mem_ce 1 1 }  { local_in_a_q0 mem_dout 0 32 } } }
	distance_buffer_31_0_out { ap_vld {  { distance_buffer_31_0_out out_data 1 32 }  { distance_buffer_31_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_30_0_out { ap_vld {  { distance_buffer_30_0_out out_data 1 32 }  { distance_buffer_30_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_29_0_out { ap_vld {  { distance_buffer_29_0_out out_data 1 32 }  { distance_buffer_29_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_28_0_out { ap_vld {  { distance_buffer_28_0_out out_data 1 32 }  { distance_buffer_28_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_27_0_out { ap_vld {  { distance_buffer_27_0_out out_data 1 32 }  { distance_buffer_27_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_26_0_out { ap_vld {  { distance_buffer_26_0_out out_data 1 32 }  { distance_buffer_26_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_25_0_out { ap_vld {  { distance_buffer_25_0_out out_data 1 32 }  { distance_buffer_25_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_24_0_out { ap_vld {  { distance_buffer_24_0_out out_data 1 32 }  { distance_buffer_24_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_23_0_out { ap_vld {  { distance_buffer_23_0_out out_data 1 32 }  { distance_buffer_23_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_22_0_out { ap_vld {  { distance_buffer_22_0_out out_data 1 32 }  { distance_buffer_22_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_21_0_out { ap_vld {  { distance_buffer_21_0_out out_data 1 32 }  { distance_buffer_21_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_20_0_out { ap_vld {  { distance_buffer_20_0_out out_data 1 32 }  { distance_buffer_20_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_19_0_out { ap_vld {  { distance_buffer_19_0_out out_data 1 32 }  { distance_buffer_19_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_18_0_out { ap_vld {  { distance_buffer_18_0_out out_data 1 32 }  { distance_buffer_18_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_17_0_out { ap_vld {  { distance_buffer_17_0_out out_data 1 32 }  { distance_buffer_17_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_16_0_out { ap_vld {  { distance_buffer_16_0_out out_data 1 32 }  { distance_buffer_16_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_15_0_out { ap_vld {  { distance_buffer_15_0_out out_data 1 32 }  { distance_buffer_15_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_14_0_out { ap_vld {  { distance_buffer_14_0_out out_data 1 32 }  { distance_buffer_14_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_13_0_out { ap_vld {  { distance_buffer_13_0_out out_data 1 32 }  { distance_buffer_13_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_12_0_out { ap_vld {  { distance_buffer_12_0_out out_data 1 32 }  { distance_buffer_12_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_11_0_out { ap_vld {  { distance_buffer_11_0_out out_data 1 32 }  { distance_buffer_11_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_10_0_out { ap_vld {  { distance_buffer_10_0_out out_data 1 32 }  { distance_buffer_10_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_9_0_out { ap_vld {  { distance_buffer_9_0_out out_data 1 32 }  { distance_buffer_9_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_8_0_out { ap_vld {  { distance_buffer_8_0_out out_data 1 32 }  { distance_buffer_8_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_7_0_out { ap_vld {  { distance_buffer_7_0_out out_data 1 32 }  { distance_buffer_7_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_6_0_out { ap_vld {  { distance_buffer_6_0_out out_data 1 32 }  { distance_buffer_6_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_5_0_out { ap_vld {  { distance_buffer_5_0_out out_data 1 32 }  { distance_buffer_5_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_4_0_out { ap_vld {  { distance_buffer_4_0_out out_data 1 32 }  { distance_buffer_4_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_3_0_out { ap_vld {  { distance_buffer_3_0_out out_data 1 32 }  { distance_buffer_3_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_2_0_out { ap_vld {  { distance_buffer_2_0_out out_data 1 32 }  { distance_buffer_2_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_1_0_out { ap_vld {  { distance_buffer_1_0_out out_data 1 32 }  { distance_buffer_1_0_out_ap_vld out_vld 1 1 } } }
	distance_buffer_0_0_out { ap_vld {  { distance_buffer_0_0_out out_data 1 32 }  { distance_buffer_0_0_out_ap_vld out_vld 1 1 } } }
}
