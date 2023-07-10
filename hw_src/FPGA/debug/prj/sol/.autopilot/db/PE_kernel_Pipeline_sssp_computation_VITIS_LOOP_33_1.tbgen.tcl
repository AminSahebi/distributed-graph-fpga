set moduleName PE_kernel_Pipeline_sssp_computation_VITIS_LOOP_33_1
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
set C_modelName {PE_kernel_Pipeline_sssp_computation_VITIS_LOOP_33_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ distance_buffer_31_0_reload int 32 regular  }
	{ distance_buffer_30_0_reload int 32 regular  }
	{ distance_buffer_29_0_reload int 32 regular  }
	{ distance_buffer_28_0_reload int 32 regular  }
	{ distance_buffer_27_0_reload int 32 regular  }
	{ distance_buffer_26_0_reload int 32 regular  }
	{ distance_buffer_25_0_reload int 32 regular  }
	{ distance_buffer_24_0_reload int 32 regular  }
	{ distance_buffer_23_0_reload int 32 regular  }
	{ distance_buffer_22_0_reload int 32 regular  }
	{ distance_buffer_21_0_reload int 32 regular  }
	{ distance_buffer_20_0_reload int 32 regular  }
	{ distance_buffer_19_0_reload int 32 regular  }
	{ distance_buffer_18_0_reload int 32 regular  }
	{ distance_buffer_17_0_reload int 32 regular  }
	{ distance_buffer_16_0_reload int 32 regular  }
	{ distance_buffer_15_0_reload int 32 regular  }
	{ distance_buffer_14_0_reload int 32 regular  }
	{ distance_buffer_13_0_reload int 32 regular  }
	{ distance_buffer_12_0_reload int 32 regular  }
	{ distance_buffer_11_0_reload int 32 regular  }
	{ distance_buffer_10_0_reload int 32 regular  }
	{ distance_buffer_9_0_reload int 32 regular  }
	{ distance_buffer_8_0_reload int 32 regular  }
	{ distance_buffer_7_0_reload int 32 regular  }
	{ distance_buffer_6_0_reload int 32 regular  }
	{ distance_buffer_5_0_reload int 32 regular  }
	{ distance_buffer_4_0_reload int 32 regular  }
	{ distance_buffer_3_0_reload int 32 regular  }
	{ distance_buffer_2_0_reload int 32 regular  }
	{ distance_buffer_1_0_reload int 32 regular  }
	{ distance_buffer_0_0_reload int 32 regular  }
	{ bound int 37 regular  }
	{ zext_ln27 int 12 regular  }
	{ local_in_a int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ zext_ln36 int 12 regular  }
	{ local_in_b int 5 regular {array 4096 { 1 3 } 1 1 }  }
	{ zext_ln37 int 12 regular  }
	{ local_in_c int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ distance_buffer_31_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_30_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_29_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_28_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_27_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_26_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_25_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_24_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_23_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_22_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_21_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_20_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_19_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_18_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_17_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_16_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_15_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_14_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_13_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_12_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_11_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_10_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_9_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_8_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_7_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_6_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_5_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_4_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_3_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_2_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_1_3_out int 32 regular {pointer 1}  }
	{ distance_buffer_0_3_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "distance_buffer_31_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_30_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_29_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_28_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_27_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_26_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_25_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_24_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_23_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_22_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_21_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_20_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_19_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_18_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_17_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_16_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_15_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_14_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_13_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_12_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_11_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_10_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_9_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_8_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_7_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_6_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_5_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_4_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_3_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_2_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_1_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_0_0_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bound", "interface" : "wire", "bitwidth" : 37, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln27", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "local_in_a", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln36", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "local_in_b", "interface" : "memory", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln37", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "local_in_c", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "distance_buffer_31_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_30_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_29_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_28_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_27_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_26_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_25_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_24_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_23_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_22_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_21_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_20_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_19_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_18_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_17_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_16_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_15_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_14_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_13_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_12_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_11_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_10_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_9_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_8_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_7_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_6_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_5_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_4_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_3_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_2_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_1_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "distance_buffer_0_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 115
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ distance_buffer_31_0_reload sc_in sc_lv 32 signal 0 } 
	{ distance_buffer_30_0_reload sc_in sc_lv 32 signal 1 } 
	{ distance_buffer_29_0_reload sc_in sc_lv 32 signal 2 } 
	{ distance_buffer_28_0_reload sc_in sc_lv 32 signal 3 } 
	{ distance_buffer_27_0_reload sc_in sc_lv 32 signal 4 } 
	{ distance_buffer_26_0_reload sc_in sc_lv 32 signal 5 } 
	{ distance_buffer_25_0_reload sc_in sc_lv 32 signal 6 } 
	{ distance_buffer_24_0_reload sc_in sc_lv 32 signal 7 } 
	{ distance_buffer_23_0_reload sc_in sc_lv 32 signal 8 } 
	{ distance_buffer_22_0_reload sc_in sc_lv 32 signal 9 } 
	{ distance_buffer_21_0_reload sc_in sc_lv 32 signal 10 } 
	{ distance_buffer_20_0_reload sc_in sc_lv 32 signal 11 } 
	{ distance_buffer_19_0_reload sc_in sc_lv 32 signal 12 } 
	{ distance_buffer_18_0_reload sc_in sc_lv 32 signal 13 } 
	{ distance_buffer_17_0_reload sc_in sc_lv 32 signal 14 } 
	{ distance_buffer_16_0_reload sc_in sc_lv 32 signal 15 } 
	{ distance_buffer_15_0_reload sc_in sc_lv 32 signal 16 } 
	{ distance_buffer_14_0_reload sc_in sc_lv 32 signal 17 } 
	{ distance_buffer_13_0_reload sc_in sc_lv 32 signal 18 } 
	{ distance_buffer_12_0_reload sc_in sc_lv 32 signal 19 } 
	{ distance_buffer_11_0_reload sc_in sc_lv 32 signal 20 } 
	{ distance_buffer_10_0_reload sc_in sc_lv 32 signal 21 } 
	{ distance_buffer_9_0_reload sc_in sc_lv 32 signal 22 } 
	{ distance_buffer_8_0_reload sc_in sc_lv 32 signal 23 } 
	{ distance_buffer_7_0_reload sc_in sc_lv 32 signal 24 } 
	{ distance_buffer_6_0_reload sc_in sc_lv 32 signal 25 } 
	{ distance_buffer_5_0_reload sc_in sc_lv 32 signal 26 } 
	{ distance_buffer_4_0_reload sc_in sc_lv 32 signal 27 } 
	{ distance_buffer_3_0_reload sc_in sc_lv 32 signal 28 } 
	{ distance_buffer_2_0_reload sc_in sc_lv 32 signal 29 } 
	{ distance_buffer_1_0_reload sc_in sc_lv 32 signal 30 } 
	{ distance_buffer_0_0_reload sc_in sc_lv 32 signal 31 } 
	{ bound sc_in sc_lv 37 signal 32 } 
	{ zext_ln27 sc_in sc_lv 12 signal 33 } 
	{ local_in_a_address0 sc_out sc_lv 12 signal 34 } 
	{ local_in_a_ce0 sc_out sc_logic 1 signal 34 } 
	{ local_in_a_q0 sc_in sc_lv 32 signal 34 } 
	{ zext_ln36 sc_in sc_lv 12 signal 35 } 
	{ local_in_b_address0 sc_out sc_lv 12 signal 36 } 
	{ local_in_b_ce0 sc_out sc_logic 1 signal 36 } 
	{ local_in_b_q0 sc_in sc_lv 5 signal 36 } 
	{ zext_ln37 sc_in sc_lv 12 signal 37 } 
	{ local_in_c_address0 sc_out sc_lv 12 signal 38 } 
	{ local_in_c_ce0 sc_out sc_logic 1 signal 38 } 
	{ local_in_c_q0 sc_in sc_lv 32 signal 38 } 
	{ distance_buffer_31_3_out sc_out sc_lv 32 signal 39 } 
	{ distance_buffer_31_3_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ distance_buffer_30_3_out sc_out sc_lv 32 signal 40 } 
	{ distance_buffer_30_3_out_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ distance_buffer_29_3_out sc_out sc_lv 32 signal 41 } 
	{ distance_buffer_29_3_out_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ distance_buffer_28_3_out sc_out sc_lv 32 signal 42 } 
	{ distance_buffer_28_3_out_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ distance_buffer_27_3_out sc_out sc_lv 32 signal 43 } 
	{ distance_buffer_27_3_out_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ distance_buffer_26_3_out sc_out sc_lv 32 signal 44 } 
	{ distance_buffer_26_3_out_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ distance_buffer_25_3_out sc_out sc_lv 32 signal 45 } 
	{ distance_buffer_25_3_out_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ distance_buffer_24_3_out sc_out sc_lv 32 signal 46 } 
	{ distance_buffer_24_3_out_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ distance_buffer_23_3_out sc_out sc_lv 32 signal 47 } 
	{ distance_buffer_23_3_out_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ distance_buffer_22_3_out sc_out sc_lv 32 signal 48 } 
	{ distance_buffer_22_3_out_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ distance_buffer_21_3_out sc_out sc_lv 32 signal 49 } 
	{ distance_buffer_21_3_out_ap_vld sc_out sc_logic 1 outvld 49 } 
	{ distance_buffer_20_3_out sc_out sc_lv 32 signal 50 } 
	{ distance_buffer_20_3_out_ap_vld sc_out sc_logic 1 outvld 50 } 
	{ distance_buffer_19_3_out sc_out sc_lv 32 signal 51 } 
	{ distance_buffer_19_3_out_ap_vld sc_out sc_logic 1 outvld 51 } 
	{ distance_buffer_18_3_out sc_out sc_lv 32 signal 52 } 
	{ distance_buffer_18_3_out_ap_vld sc_out sc_logic 1 outvld 52 } 
	{ distance_buffer_17_3_out sc_out sc_lv 32 signal 53 } 
	{ distance_buffer_17_3_out_ap_vld sc_out sc_logic 1 outvld 53 } 
	{ distance_buffer_16_3_out sc_out sc_lv 32 signal 54 } 
	{ distance_buffer_16_3_out_ap_vld sc_out sc_logic 1 outvld 54 } 
	{ distance_buffer_15_3_out sc_out sc_lv 32 signal 55 } 
	{ distance_buffer_15_3_out_ap_vld sc_out sc_logic 1 outvld 55 } 
	{ distance_buffer_14_3_out sc_out sc_lv 32 signal 56 } 
	{ distance_buffer_14_3_out_ap_vld sc_out sc_logic 1 outvld 56 } 
	{ distance_buffer_13_3_out sc_out sc_lv 32 signal 57 } 
	{ distance_buffer_13_3_out_ap_vld sc_out sc_logic 1 outvld 57 } 
	{ distance_buffer_12_3_out sc_out sc_lv 32 signal 58 } 
	{ distance_buffer_12_3_out_ap_vld sc_out sc_logic 1 outvld 58 } 
	{ distance_buffer_11_3_out sc_out sc_lv 32 signal 59 } 
	{ distance_buffer_11_3_out_ap_vld sc_out sc_logic 1 outvld 59 } 
	{ distance_buffer_10_3_out sc_out sc_lv 32 signal 60 } 
	{ distance_buffer_10_3_out_ap_vld sc_out sc_logic 1 outvld 60 } 
	{ distance_buffer_9_3_out sc_out sc_lv 32 signal 61 } 
	{ distance_buffer_9_3_out_ap_vld sc_out sc_logic 1 outvld 61 } 
	{ distance_buffer_8_3_out sc_out sc_lv 32 signal 62 } 
	{ distance_buffer_8_3_out_ap_vld sc_out sc_logic 1 outvld 62 } 
	{ distance_buffer_7_3_out sc_out sc_lv 32 signal 63 } 
	{ distance_buffer_7_3_out_ap_vld sc_out sc_logic 1 outvld 63 } 
	{ distance_buffer_6_3_out sc_out sc_lv 32 signal 64 } 
	{ distance_buffer_6_3_out_ap_vld sc_out sc_logic 1 outvld 64 } 
	{ distance_buffer_5_3_out sc_out sc_lv 32 signal 65 } 
	{ distance_buffer_5_3_out_ap_vld sc_out sc_logic 1 outvld 65 } 
	{ distance_buffer_4_3_out sc_out sc_lv 32 signal 66 } 
	{ distance_buffer_4_3_out_ap_vld sc_out sc_logic 1 outvld 66 } 
	{ distance_buffer_3_3_out sc_out sc_lv 32 signal 67 } 
	{ distance_buffer_3_3_out_ap_vld sc_out sc_logic 1 outvld 67 } 
	{ distance_buffer_2_3_out sc_out sc_lv 32 signal 68 } 
	{ distance_buffer_2_3_out_ap_vld sc_out sc_logic 1 outvld 68 } 
	{ distance_buffer_1_3_out sc_out sc_lv 32 signal 69 } 
	{ distance_buffer_1_3_out_ap_vld sc_out sc_logic 1 outvld 69 } 
	{ distance_buffer_0_3_out sc_out sc_lv 32 signal 70 } 
	{ distance_buffer_0_3_out_ap_vld sc_out sc_logic 1 outvld 70 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "distance_buffer_31_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_31_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_30_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_30_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_29_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_29_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_28_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_28_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_27_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_27_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_26_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_26_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_25_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_25_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_24_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_24_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_23_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_23_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_22_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_22_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_21_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_21_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_20_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_20_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_19_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_19_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_18_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_18_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_17_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_17_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_16_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_16_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_15_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_15_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_14_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_14_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_13_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_13_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_12_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_12_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_11_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_11_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_10_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_10_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_9_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_9_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_8_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_8_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_7_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_7_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_6_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_6_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_5_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_5_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_4_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_4_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_3_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_3_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_2_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_2_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_1_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_1_0_reload", "role": "default" }} , 
 	{ "name": "distance_buffer_0_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_0_0_reload", "role": "default" }} , 
 	{ "name": "bound", "direction": "in", "datatype": "sc_lv", "bitwidth":37, "type": "signal", "bundle":{"name": "bound", "role": "default" }} , 
 	{ "name": "zext_ln27", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "zext_ln27", "role": "default" }} , 
 	{ "name": "local_in_a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_in_a", "role": "address0" }} , 
 	{ "name": "local_in_a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_in_a", "role": "ce0" }} , 
 	{ "name": "local_in_a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_in_a", "role": "q0" }} , 
 	{ "name": "zext_ln36", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "zext_ln36", "role": "default" }} , 
 	{ "name": "local_in_b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_in_b", "role": "address0" }} , 
 	{ "name": "local_in_b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_in_b", "role": "ce0" }} , 
 	{ "name": "local_in_b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "local_in_b", "role": "q0" }} , 
 	{ "name": "zext_ln37", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "zext_ln37", "role": "default" }} , 
 	{ "name": "local_in_c_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_in_c", "role": "address0" }} , 
 	{ "name": "local_in_c_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_in_c", "role": "ce0" }} , 
 	{ "name": "local_in_c_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_in_c", "role": "q0" }} , 
 	{ "name": "distance_buffer_31_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_31_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_31_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_31_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_30_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_30_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_30_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_30_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_29_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_29_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_29_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_29_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_28_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_28_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_28_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_28_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_27_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_27_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_27_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_27_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_26_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_26_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_26_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_26_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_25_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_25_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_25_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_25_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_24_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_24_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_24_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_24_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_23_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_23_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_23_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_23_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_22_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_22_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_22_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_22_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_21_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_21_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_21_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_21_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_20_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_20_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_20_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_20_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_19_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_19_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_19_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_19_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_18_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_18_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_18_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_18_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_17_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_17_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_17_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_17_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_16_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_16_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_16_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_16_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_15_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_15_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_15_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_15_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_14_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_14_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_14_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_14_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_13_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_13_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_13_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_13_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_12_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_12_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_12_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_12_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_11_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_11_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_11_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_11_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_10_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_10_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_10_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_10_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_9_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_9_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_9_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_9_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_8_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_8_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_8_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_8_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_7_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_7_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_7_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_7_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_6_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_6_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_6_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_6_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_5_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_5_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_5_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_5_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_4_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_4_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_4_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_4_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_3_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_3_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_3_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_3_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_2_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_2_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_2_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_2_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_1_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_1_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_1_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_1_3_out", "role": "ap_vld" }} , 
 	{ "name": "distance_buffer_0_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "distance_buffer_0_3_out", "role": "default" }} , 
 	{ "name": "distance_buffer_0_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "distance_buffer_0_3_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_32_1_1_U465", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_32_1_1_U466", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		distance_buffer_0_3_out {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	distance_buffer_31_0_reload { ap_none {  { distance_buffer_31_0_reload in_data 0 32 } } }
	distance_buffer_30_0_reload { ap_none {  { distance_buffer_30_0_reload in_data 0 32 } } }
	distance_buffer_29_0_reload { ap_none {  { distance_buffer_29_0_reload in_data 0 32 } } }
	distance_buffer_28_0_reload { ap_none {  { distance_buffer_28_0_reload in_data 0 32 } } }
	distance_buffer_27_0_reload { ap_none {  { distance_buffer_27_0_reload in_data 0 32 } } }
	distance_buffer_26_0_reload { ap_none {  { distance_buffer_26_0_reload in_data 0 32 } } }
	distance_buffer_25_0_reload { ap_none {  { distance_buffer_25_0_reload in_data 0 32 } } }
	distance_buffer_24_0_reload { ap_none {  { distance_buffer_24_0_reload in_data 0 32 } } }
	distance_buffer_23_0_reload { ap_none {  { distance_buffer_23_0_reload in_data 0 32 } } }
	distance_buffer_22_0_reload { ap_none {  { distance_buffer_22_0_reload in_data 0 32 } } }
	distance_buffer_21_0_reload { ap_none {  { distance_buffer_21_0_reload in_data 0 32 } } }
	distance_buffer_20_0_reload { ap_none {  { distance_buffer_20_0_reload in_data 0 32 } } }
	distance_buffer_19_0_reload { ap_none {  { distance_buffer_19_0_reload in_data 0 32 } } }
	distance_buffer_18_0_reload { ap_none {  { distance_buffer_18_0_reload in_data 0 32 } } }
	distance_buffer_17_0_reload { ap_none {  { distance_buffer_17_0_reload in_data 0 32 } } }
	distance_buffer_16_0_reload { ap_none {  { distance_buffer_16_0_reload in_data 0 32 } } }
	distance_buffer_15_0_reload { ap_none {  { distance_buffer_15_0_reload in_data 0 32 } } }
	distance_buffer_14_0_reload { ap_none {  { distance_buffer_14_0_reload in_data 0 32 } } }
	distance_buffer_13_0_reload { ap_none {  { distance_buffer_13_0_reload in_data 0 32 } } }
	distance_buffer_12_0_reload { ap_none {  { distance_buffer_12_0_reload in_data 0 32 } } }
	distance_buffer_11_0_reload { ap_none {  { distance_buffer_11_0_reload in_data 0 32 } } }
	distance_buffer_10_0_reload { ap_none {  { distance_buffer_10_0_reload in_data 0 32 } } }
	distance_buffer_9_0_reload { ap_none {  { distance_buffer_9_0_reload in_data 0 32 } } }
	distance_buffer_8_0_reload { ap_none {  { distance_buffer_8_0_reload in_data 0 32 } } }
	distance_buffer_7_0_reload { ap_none {  { distance_buffer_7_0_reload in_data 0 32 } } }
	distance_buffer_6_0_reload { ap_none {  { distance_buffer_6_0_reload in_data 0 32 } } }
	distance_buffer_5_0_reload { ap_none {  { distance_buffer_5_0_reload in_data 0 32 } } }
	distance_buffer_4_0_reload { ap_none {  { distance_buffer_4_0_reload in_data 0 32 } } }
	distance_buffer_3_0_reload { ap_none {  { distance_buffer_3_0_reload in_data 0 32 } } }
	distance_buffer_2_0_reload { ap_none {  { distance_buffer_2_0_reload in_data 0 32 } } }
	distance_buffer_1_0_reload { ap_none {  { distance_buffer_1_0_reload in_data 0 32 } } }
	distance_buffer_0_0_reload { ap_none {  { distance_buffer_0_0_reload in_data 0 32 } } }
	bound { ap_none {  { bound in_data 0 37 } } }
	zext_ln27 { ap_none {  { zext_ln27 in_data 0 12 } } }
	local_in_a { ap_memory {  { local_in_a_address0 mem_address 1 12 }  { local_in_a_ce0 mem_ce 1 1 }  { local_in_a_q0 mem_dout 0 32 } } }
	zext_ln36 { ap_none {  { zext_ln36 in_data 0 12 } } }
	local_in_b { ap_memory {  { local_in_b_address0 mem_address 1 12 }  { local_in_b_ce0 mem_ce 1 1 }  { local_in_b_q0 mem_dout 0 5 } } }
	zext_ln37 { ap_none {  { zext_ln37 in_data 0 12 } } }
	local_in_c { ap_memory {  { local_in_c_address0 mem_address 1 12 }  { local_in_c_ce0 mem_ce 1 1 }  { local_in_c_q0 mem_dout 0 32 } } }
	distance_buffer_31_3_out { ap_vld {  { distance_buffer_31_3_out out_data 1 32 }  { distance_buffer_31_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_30_3_out { ap_vld {  { distance_buffer_30_3_out out_data 1 32 }  { distance_buffer_30_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_29_3_out { ap_vld {  { distance_buffer_29_3_out out_data 1 32 }  { distance_buffer_29_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_28_3_out { ap_vld {  { distance_buffer_28_3_out out_data 1 32 }  { distance_buffer_28_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_27_3_out { ap_vld {  { distance_buffer_27_3_out out_data 1 32 }  { distance_buffer_27_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_26_3_out { ap_vld {  { distance_buffer_26_3_out out_data 1 32 }  { distance_buffer_26_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_25_3_out { ap_vld {  { distance_buffer_25_3_out out_data 1 32 }  { distance_buffer_25_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_24_3_out { ap_vld {  { distance_buffer_24_3_out out_data 1 32 }  { distance_buffer_24_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_23_3_out { ap_vld {  { distance_buffer_23_3_out out_data 1 32 }  { distance_buffer_23_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_22_3_out { ap_vld {  { distance_buffer_22_3_out out_data 1 32 }  { distance_buffer_22_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_21_3_out { ap_vld {  { distance_buffer_21_3_out out_data 1 32 }  { distance_buffer_21_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_20_3_out { ap_vld {  { distance_buffer_20_3_out out_data 1 32 }  { distance_buffer_20_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_19_3_out { ap_vld {  { distance_buffer_19_3_out out_data 1 32 }  { distance_buffer_19_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_18_3_out { ap_vld {  { distance_buffer_18_3_out out_data 1 32 }  { distance_buffer_18_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_17_3_out { ap_vld {  { distance_buffer_17_3_out out_data 1 32 }  { distance_buffer_17_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_16_3_out { ap_vld {  { distance_buffer_16_3_out out_data 1 32 }  { distance_buffer_16_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_15_3_out { ap_vld {  { distance_buffer_15_3_out out_data 1 32 }  { distance_buffer_15_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_14_3_out { ap_vld {  { distance_buffer_14_3_out out_data 1 32 }  { distance_buffer_14_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_13_3_out { ap_vld {  { distance_buffer_13_3_out out_data 1 32 }  { distance_buffer_13_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_12_3_out { ap_vld {  { distance_buffer_12_3_out out_data 1 32 }  { distance_buffer_12_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_11_3_out { ap_vld {  { distance_buffer_11_3_out out_data 1 32 }  { distance_buffer_11_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_10_3_out { ap_vld {  { distance_buffer_10_3_out out_data 1 32 }  { distance_buffer_10_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_9_3_out { ap_vld {  { distance_buffer_9_3_out out_data 1 32 }  { distance_buffer_9_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_8_3_out { ap_vld {  { distance_buffer_8_3_out out_data 1 32 }  { distance_buffer_8_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_7_3_out { ap_vld {  { distance_buffer_7_3_out out_data 1 32 }  { distance_buffer_7_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_6_3_out { ap_vld {  { distance_buffer_6_3_out out_data 1 32 }  { distance_buffer_6_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_5_3_out { ap_vld {  { distance_buffer_5_3_out out_data 1 32 }  { distance_buffer_5_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_4_3_out { ap_vld {  { distance_buffer_4_3_out out_data 1 32 }  { distance_buffer_4_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_3_3_out { ap_vld {  { distance_buffer_3_3_out out_data 1 32 }  { distance_buffer_3_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_2_3_out { ap_vld {  { distance_buffer_2_3_out out_data 1 32 }  { distance_buffer_2_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_1_3_out { ap_vld {  { distance_buffer_1_3_out out_data 1 32 }  { distance_buffer_1_3_out_ap_vld out_vld 1 1 } } }
	distance_buffer_0_3_out { ap_vld {  { distance_buffer_0_3_out out_data 1 32 }  { distance_buffer_0_3_out_ap_vld out_vld 1 1 } } }
}
