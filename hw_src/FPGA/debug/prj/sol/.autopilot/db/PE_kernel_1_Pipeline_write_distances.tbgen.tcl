set moduleName PE_kernel_1_Pipeline_write_distances
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
set C_modelName {PE_kernel.1_Pipeline_write_distances}
set C_modelType { void 0 }
set C_modelArgList {
	{ distance_buffer_0_31_reload int 32 regular  }
	{ distance_buffer_1_3_reload int 32 regular  }
	{ distance_buffer_2_3_reload int 32 regular  }
	{ distance_buffer_3_3_reload int 32 regular  }
	{ distance_buffer_4_3_reload int 32 regular  }
	{ distance_buffer_5_3_reload int 32 regular  }
	{ distance_buffer_6_3_reload int 32 regular  }
	{ distance_buffer_7_3_reload int 32 regular  }
	{ distance_buffer_8_3_reload int 32 regular  }
	{ distance_buffer_9_3_reload int 32 regular  }
	{ distance_buffer_10_3_reload int 32 regular  }
	{ distance_buffer_11_3_reload int 32 regular  }
	{ distance_buffer_12_3_reload int 32 regular  }
	{ distance_buffer_13_3_reload int 32 regular  }
	{ distance_buffer_14_3_reload int 32 regular  }
	{ distance_buffer_15_3_reload int 32 regular  }
	{ distance_buffer_16_3_reload int 32 regular  }
	{ distance_buffer_17_3_reload int 32 regular  }
	{ distance_buffer_18_3_reload int 32 regular  }
	{ distance_buffer_19_3_reload int 32 regular  }
	{ distance_buffer_20_3_reload int 32 regular  }
	{ distance_buffer_21_3_reload int 32 regular  }
	{ distance_buffer_22_3_reload int 32 regular  }
	{ distance_buffer_23_3_reload int 32 regular  }
	{ distance_buffer_24_3_reload int 32 regular  }
	{ distance_buffer_25_3_reload int 32 regular  }
	{ distance_buffer_26_3_reload int 32 regular  }
	{ distance_buffer_27_3_reload int 32 regular  }
	{ distance_buffer_28_3_reload int 32 regular  }
	{ distance_buffer_29_3_reload int 32 regular  }
	{ distance_buffer_30_3_reload int 32 regular  }
	{ distance_buffer_31_3_reload int 32 regular  }
	{ local_out int 32 regular {array 32 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "distance_buffer_0_31_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_1_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_2_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_3_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_4_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_5_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_6_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_7_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_8_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_9_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_10_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_11_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_12_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_13_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_14_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_15_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_16_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_17_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_18_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_19_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_20_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_21_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_22_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_23_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_24_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_25_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_26_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_27_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_28_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_29_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_30_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_31_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_out", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ distance_buffer_0_31_reload sc_in sc_lv 32 signal 0 } 
	{ distance_buffer_1_3_reload sc_in sc_lv 32 signal 1 } 
	{ distance_buffer_2_3_reload sc_in sc_lv 32 signal 2 } 
	{ distance_buffer_3_3_reload sc_in sc_lv 32 signal 3 } 
	{ distance_buffer_4_3_reload sc_in sc_lv 32 signal 4 } 
	{ distance_buffer_5_3_reload sc_in sc_lv 32 signal 5 } 
	{ distance_buffer_6_3_reload sc_in sc_lv 32 signal 6 } 
	{ distance_buffer_7_3_reload sc_in sc_lv 32 signal 7 } 
	{ distance_buffer_8_3_reload sc_in sc_lv 32 signal 8 } 
	{ distance_buffer_9_3_reload sc_in sc_lv 32 signal 9 } 
	{ distance_buffer_10_3_reload sc_in sc_lv 32 signal 10 } 
	{ distance_buffer_11_3_reload sc_in sc_lv 32 signal 11 } 
	{ distance_buffer_12_3_reload sc_in sc_lv 32 signal 12 } 
	{ distance_buffer_13_3_reload sc_in sc_lv 32 signal 13 } 
	{ distance_buffer_14_3_reload sc_in sc_lv 32 signal 14 } 
	{ distance_buffer_15_3_reload sc_in sc_lv 32 signal 15 } 
	{ distance_buffer_16_3_reload sc_in sc_lv 32 signal 16 } 
	{ distance_buffer_17_3_reload sc_in sc_lv 32 signal 17 } 
	{ distance_buffer_18_3_reload sc_in sc_lv 32 signal 18 } 
	{ distance_buffer_19_3_reload sc_in sc_lv 32 signal 19 } 
	{ distance_buffer_20_3_reload sc_in sc_lv 32 signal 20 } 
	{ distance_buffer_21_3_reload sc_in sc_lv 32 signal 21 } 
	{ distance_buffer_22_3_reload sc_in sc_lv 32 signal 22 } 
	{ distance_buffer_23_3_reload sc_in sc_lv 32 signal 23 } 
	{ distance_buffer_24_3_reload sc_in sc_lv 32 signal 24 } 
	{ distance_buffer_25_3_reload sc_in sc_lv 32 signal 25 } 
	{ distance_buffer_26_3_reload sc_in sc_lv 32 signal 26 } 
	{ distance_buffer_27_3_reload sc_in sc_lv 32 signal 27 } 
	{ distance_buffer_28_3_reload sc_in sc_lv 32 signal 28 } 
	{ distance_buffer_29_3_reload sc_in sc_lv 32 signal 29 } 
	{ distance_buffer_30_3_reload sc_in sc_lv 32 signal 30 } 
	{ distance_buffer_31_3_reload sc_in sc_lv 32 signal 31 } 
	{ local_out_address0 sc_out sc_lv 5 signal 32 } 
	{ local_out_ce0 sc_out sc_logic 1 signal 32 } 
	{ local_out_we0 sc_out sc_logic 1 signal 32 } 
	{ local_out_d0 sc_out sc_lv 32 signal 32 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "distance_buffer_0_31_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_0_31_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_1_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_1_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_2_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_2_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_3_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_3_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_4_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_4_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_5_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_5_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_6_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_6_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_7_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_7_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_8_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_8_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_9_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_9_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_10_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_10_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_11_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_11_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_12_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_12_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_13_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_13_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_14_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_14_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_15_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_15_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_16_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_16_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_17_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_17_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_18_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_18_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_19_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_19_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_20_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_20_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_21_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_21_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_22_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_22_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_23_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_23_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_24_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_24_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_25_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_25_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_26_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_26_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_27_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_27_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_28_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_28_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_29_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_29_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_30_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_30_3_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_31_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_31_3_reload", "role": "default" }} , 
 	{ "name": "local_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "local_out", "role": "address0" }} , 
 	{ "name": "local_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_out", "role": "ce0" }} , 
 	{ "name": "local_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_out", "role": "we0" }} , 
 	{ "name": "local_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_out", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "PE_kernel_1_Pipeline_write_distances",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "distance_buffer_0_31_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_1_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_2_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_3_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_4_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_5_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_6_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_7_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_8_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_9_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_10_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_11_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_12_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_13_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_14_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_15_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_16_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_17_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_18_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_19_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_20_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_21_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_22_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_23_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_24_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_25_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_26_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_27_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_28_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_29_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_30_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_31_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_out", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "write_distances", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_32_1_1_U165", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_kernel_1_Pipeline_write_distances {
		distance_buffer_0_31_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_1_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_2_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_3_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_4_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_5_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_6_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_7_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_8_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_9_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_10_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_11_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_12_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_13_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_14_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_15_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_16_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_17_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_18_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_19_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_20_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_21_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_22_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_23_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_24_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_25_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_26_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_27_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_28_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_29_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_30_3_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_31_3_reload {Type I LastRead 0 FirstWrite -1}
		local_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "34", "Max" : "34"}
	, {"Name" : "Interval", "Min" : "34", "Max" : "34"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	distance_buffer_0_31_reload { ap_none {  { distance_buffer_0_31_reload in_data 0 32 } } }
	distance_buffer_1_3_reload { ap_none {  { distance_buffer_1_3_reload in_data 0 32 } } }
	distance_buffer_2_3_reload { ap_none {  { distance_buffer_2_3_reload in_data 0 32 } } }
	distance_buffer_3_3_reload { ap_none {  { distance_buffer_3_3_reload in_data 0 32 } } }
	distance_buffer_4_3_reload { ap_none {  { distance_buffer_4_3_reload in_data 0 32 } } }
	distance_buffer_5_3_reload { ap_none {  { distance_buffer_5_3_reload in_data 0 32 } } }
	distance_buffer_6_3_reload { ap_none {  { distance_buffer_6_3_reload in_data 0 32 } } }
	distance_buffer_7_3_reload { ap_none {  { distance_buffer_7_3_reload in_data 0 32 } } }
	distance_buffer_8_3_reload { ap_none {  { distance_buffer_8_3_reload in_data 0 32 } } }
	distance_buffer_9_3_reload { ap_none {  { distance_buffer_9_3_reload in_data 0 32 } } }
	distance_buffer_10_3_reload { ap_none {  { distance_buffer_10_3_reload in_data 0 32 } } }
	distance_buffer_11_3_reload { ap_none {  { distance_buffer_11_3_reload in_data 0 32 } } }
	distance_buffer_12_3_reload { ap_none {  { distance_buffer_12_3_reload in_data 0 32 } } }
	distance_buffer_13_3_reload { ap_none {  { distance_buffer_13_3_reload in_data 0 32 } } }
	distance_buffer_14_3_reload { ap_none {  { distance_buffer_14_3_reload in_data 0 32 } } }
	distance_buffer_15_3_reload { ap_none {  { distance_buffer_15_3_reload in_data 0 32 } } }
	distance_buffer_16_3_reload { ap_none {  { distance_buffer_16_3_reload in_data 0 32 } } }
	distance_buffer_17_3_reload { ap_none {  { distance_buffer_17_3_reload in_data 0 32 } } }
	distance_buffer_18_3_reload { ap_none {  { distance_buffer_18_3_reload in_data 0 32 } } }
	distance_buffer_19_3_reload { ap_none {  { distance_buffer_19_3_reload in_data 0 32 } } }
	distance_buffer_20_3_reload { ap_none {  { distance_buffer_20_3_reload in_data 0 32 } } }
	distance_buffer_21_3_reload { ap_none {  { distance_buffer_21_3_reload in_data 0 32 } } }
	distance_buffer_22_3_reload { ap_none {  { distance_buffer_22_3_reload in_data 0 32 } } }
	distance_buffer_23_3_reload { ap_none {  { distance_buffer_23_3_reload in_data 0 32 } } }
	distance_buffer_24_3_reload { ap_none {  { distance_buffer_24_3_reload in_data 0 32 } } }
	distance_buffer_25_3_reload { ap_none {  { distance_buffer_25_3_reload in_data 0 32 } } }
	distance_buffer_26_3_reload { ap_none {  { distance_buffer_26_3_reload in_data 0 32 } } }
	distance_buffer_27_3_reload { ap_none {  { distance_buffer_27_3_reload in_data 0 32 } } }
	distance_buffer_28_3_reload { ap_none {  { distance_buffer_28_3_reload in_data 0 32 } } }
	distance_buffer_29_3_reload { ap_none {  { distance_buffer_29_3_reload in_data 0 32 } } }
	distance_buffer_30_3_reload { ap_none {  { distance_buffer_30_3_reload in_data 0 32 } } }
	distance_buffer_31_3_reload { ap_none {  { distance_buffer_31_3_reload in_data 0 32 } } }
	local_out { ap_memory {  { local_out_address0 mem_address 1 5 }  { local_out_ce0 mem_ce 1 1 }  { local_out_we0 mem_we 1 1 }  { local_out_d0 mem_din 1 32 } } }
}
