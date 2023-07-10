set moduleName buffer_compute
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {buffer_compute}
set C_modelType { void 0 }
set C_modelArgList {
	{ local_in_a int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ local_in_b int 5 regular {array 4096 { 1 3 } 1 1 }  }
	{ local_in_c int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ local_out int 32 regular {array 4096 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ v int 32 regular {pointer 0} {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "local_in_a", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_in_b", "interface" : "memory", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "local_in_c", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_out", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ local_in_a_address0 sc_out sc_lv 12 signal 0 } 
	{ local_in_a_ce0 sc_out sc_logic 1 signal 0 } 
	{ local_in_a_q0 sc_in sc_lv 32 signal 0 } 
	{ local_in_b_address0 sc_out sc_lv 12 signal 1 } 
	{ local_in_b_ce0 sc_out sc_logic 1 signal 1 } 
	{ local_in_b_q0 sc_in sc_lv 5 signal 1 } 
	{ local_in_c_address0 sc_out sc_lv 12 signal 2 } 
	{ local_in_c_ce0 sc_out sc_logic 1 signal 2 } 
	{ local_in_c_q0 sc_in sc_lv 32 signal 2 } 
	{ local_out_address0 sc_out sc_lv 12 signal 3 } 
	{ local_out_ce0 sc_out sc_logic 1 signal 3 } 
	{ local_out_we0 sc_out sc_logic 1 signal 3 } 
	{ local_out_d0 sc_out sc_lv 32 signal 3 } 
	{ v sc_in sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "local_in_a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_in_a", "role": "address0" }} , 
 	{ "name": "local_in_a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_in_a", "role": "ce0" }} , 
 	{ "name": "local_in_a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_in_a", "role": "q0" }} , 
 	{ "name": "local_in_b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_in_b", "role": "address0" }} , 
 	{ "name": "local_in_b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_in_b", "role": "ce0" }} , 
 	{ "name": "local_in_b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "local_in_b", "role": "q0" }} , 
 	{ "name": "local_in_c_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_in_c", "role": "address0" }} , 
 	{ "name": "local_in_c_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_in_c", "role": "ce0" }} , 
 	{ "name": "local_in_c_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_in_c", "role": "q0" }} , 
 	{ "name": "local_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_out", "role": "address0" }} , 
 	{ "name": "local_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_out", "role": "ce0" }} , 
 	{ "name": "local_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_out", "role": "we0" }} , 
 	{ "name": "local_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_out", "role": "d0" }} , 
 	{ "name": "v", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "buffer_compute",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "local_in_a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_PE_kernel_fu_268", "Port" : "local_in_a", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_in_b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_PE_kernel_fu_268", "Port" : "local_in_b", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_in_c", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_PE_kernel_fu_268", "Port" : "local_in_c", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_PE_kernel_fu_268", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "v", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_PE_kernel_fu_268", "Port" : "v", "Inst_start_state" : "255", "Inst_end_state" : "256"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_PE_kernel_fu_268", "Parent" : "0", "Child" : ["2", "4", "8"],
		"CDFG" : "PE_kernel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "local_in_a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_PE_kernel_Pipeline_sssp_computation_VITIS_LOOP_33_1_fu_355", "Port" : "local_in_a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "2", "SubInstance" : "grp_PE_kernel_Pipeline_init_distances_fu_316", "Port" : "local_in_a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "local_in_a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_in_b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_PE_kernel_Pipeline_sssp_computation_VITIS_LOOP_33_1_fu_355", "Port" : "local_in_b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "local_in_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_in_c", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_PE_kernel_Pipeline_sssp_computation_VITIS_LOOP_33_1_fu_355", "Port" : "local_in_c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "local_in_c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_out", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_PE_kernel_Pipeline_write_distances_fu_433", "Port" : "local_out", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "local_out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "v", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_kernel_fu_268.grp_PE_kernel_Pipeline_init_distances_fu_316", "Parent" : "1", "Child" : ["3"],
		"CDFG" : "PE_kernel_Pipeline_init_distances",
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_kernel_fu_268.grp_PE_kernel_Pipeline_init_distances_fu_316.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_kernel_fu_268.grp_PE_kernel_Pipeline_sssp_computation_VITIS_LOOP_33_1_fu_355", "Parent" : "1", "Child" : ["5", "6", "7"],
		"CDFG" : "PE_kernel_Pipeline_sssp_computation_VITIS_LOOP_33_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "distance_buffer_31_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_30_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_29_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_28_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_27_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_26_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_25_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_24_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_23_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_22_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_21_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_20_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_19_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_18_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_17_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_16_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_15_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_14_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_13_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_12_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_11_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_10_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_9_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_8_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_7_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_6_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_5_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_4_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_3_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_1_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "distance_buffer_0_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln27", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_in_a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln36", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_in_b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln37", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_in_c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "distance_buffer_31_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_30_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_29_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_28_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_27_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_26_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_25_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_24_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_23_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_22_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_21_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_20_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_19_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_18_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_17_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_16_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_15_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_14_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_13_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_12_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_11_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_10_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_9_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_8_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_7_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_6_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_5_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_4_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_3_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_2_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_1_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "distance_buffer_0_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "sssp_computation_VITIS_LOOP_33_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_kernel_fu_268.grp_PE_kernel_Pipeline_sssp_computation_VITIS_LOOP_33_1_fu_355.mux_325_32_1_1_U465", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_kernel_fu_268.grp_PE_kernel_Pipeline_sssp_computation_VITIS_LOOP_33_1_fu_355.mux_325_32_1_1_U466", "Parent" : "4"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_kernel_fu_268.grp_PE_kernel_Pipeline_sssp_computation_VITIS_LOOP_33_1_fu_355.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_kernel_fu_268.grp_PE_kernel_Pipeline_write_distances_fu_433", "Parent" : "1", "Child" : ["9", "10"],
		"CDFG" : "PE_kernel_Pipeline_write_distances",
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
			{"Name" : "zext_ln49", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_out", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "distance_buffer_0_3_reload", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "distance_buffer_31_3_reload", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "write_distances", "PipelineType" : "NotSupport"}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_kernel_fu_268.grp_PE_kernel_Pipeline_write_distances_fu_433.mux_325_32_1_1_U538", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_kernel_fu_268.grp_PE_kernel_Pipeline_write_distances_fu_433.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"}]}


set ArgLastReadFirstWriteLatency {
	buffer_compute {
		local_in_a {Type I LastRead 2 FirstWrite -1}
		local_in_b {Type I LastRead 2 FirstWrite -1}
		local_in_c {Type I LastRead 2 FirstWrite -1}
		local_out {Type O LastRead -1 FirstWrite 0}
		v {Type I LastRead 2 FirstWrite -1}}
	PE_kernel {
		local_in_a {Type I LastRead 2 FirstWrite -1}
		local_in_a_offset {Type I LastRead 0 FirstWrite -1}
		local_in_b {Type I LastRead 2 FirstWrite -1}
		local_in_b_offset {Type I LastRead 2 FirstWrite -1}
		local_in_c {Type I LastRead 2 FirstWrite -1}
		local_in_c_offset {Type I LastRead 2 FirstWrite -1}
		local_out {Type O LastRead -1 FirstWrite 0}
		local_out_offset {Type I LastRead 4 FirstWrite -1}
		v {Type I LastRead 2 FirstWrite -1}}
	PE_kernel_Pipeline_init_distances {
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
		distance_buffer_0_0_out {Type O LastRead -1 FirstWrite 1}}
	PE_kernel_Pipeline_sssp_computation_VITIS_LOOP_33_1 {
		distance_buffer_31_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_30_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_29_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_28_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_27_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_26_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_25_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_24_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_23_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_22_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_21_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_20_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_19_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_18_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_17_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_16_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_15_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_14_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_13_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_12_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_11_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_10_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_9_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_8_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_7_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_6_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_5_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_4_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_3_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_2_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_1_0_reload {Type I LastRead 0 FirstWrite -1}
		distance_buffer_0_0_reload {Type I LastRead 0 FirstWrite -1}
		bound {Type I LastRead 0 FirstWrite -1}
		zext_ln27 {Type I LastRead 0 FirstWrite -1}
		local_in_a {Type I LastRead 2 FirstWrite -1}
		zext_ln36 {Type I LastRead 0 FirstWrite -1}
		local_in_b {Type I LastRead 2 FirstWrite -1}
		zext_ln37 {Type I LastRead 0 FirstWrite -1}
		local_in_c {Type I LastRead 2 FirstWrite -1}
		distance_buffer_31_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_30_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_29_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_28_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_27_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_26_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_25_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_24_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_23_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_22_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_21_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_20_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_19_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_18_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_17_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_16_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_15_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_14_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_13_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_12_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_11_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_10_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_9_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_8_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_7_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_6_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_5_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_4_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_3_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_2_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_1_3_out {Type O LastRead -1 FirstWrite 3}
		distance_buffer_0_3_out {Type O LastRead -1 FirstWrite 3}}
	PE_kernel_Pipeline_write_distances {
		zext_ln49 {Type I LastRead 0 FirstWrite -1}
		local_out {Type O LastRead -1 FirstWrite 0}
		distance_buffer_0_3_reload {Type I LastRead 0 FirstWrite -1}
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
		distance_buffer_31_3_reload {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	local_in_a { ap_memory {  { local_in_a_address0 mem_address 1 12 }  { local_in_a_ce0 mem_ce 1 1 }  { local_in_a_q0 mem_dout 0 32 } } }
	local_in_b { ap_memory {  { local_in_b_address0 mem_address 1 12 }  { local_in_b_ce0 mem_ce 1 1 }  { local_in_b_q0 mem_dout 0 5 } } }
	local_in_c { ap_memory {  { local_in_c_address0 mem_address 1 12 }  { local_in_c_ce0 mem_ce 1 1 }  { local_in_c_q0 mem_dout 0 32 } } }
	local_out { ap_memory {  { local_out_address0 mem_address 1 12 }  { local_out_ce0 mem_ce 1 1 }  { local_out_we0 mem_we 1 1 }  { local_out_d0 mem_din 1 32 } } }
	v { ap_none {  { v in_data 0 32 } } }
}
