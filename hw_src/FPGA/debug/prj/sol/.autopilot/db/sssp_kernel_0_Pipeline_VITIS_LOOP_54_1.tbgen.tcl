set moduleName sssp_kernel_0_Pipeline_VITIS_LOOP_54_1
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
set C_modelName {sssp_kernel_0_Pipeline_VITIS_LOOP_54_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ e_src_buffer_a int 32 regular {array 4096 { 0 3 } 0 1 }  }
	{ e_dst_buffer_a int 5 regular {array 4096 { 0 3 } 0 1 }  }
	{ out_deg_buffer_a int 32 regular {array 4096 { 0 3 } 0 1 }  }
	{ zext_ln54 int 37 regular  }
	{ e_src int 64 regular  }
	{ gmem int 512 regular {axi_master 0}  }
	{ p_cast509 int 9 regular  }
	{ p_cast510 int 9 regular  }
	{ p_cast511 int 9 regular  }
	{ p_cast512 int 9 regular  }
	{ p_cast513 int 9 regular  }
	{ p_cast514 int 9 regular  }
	{ p_cast515 int 9 regular  }
	{ p_cast516 int 9 regular  }
	{ p_cast517 int 9 regular  }
	{ p_cast518 int 9 regular  }
	{ p_cast519 int 9 regular  }
	{ p_cast520 int 9 regular  }
	{ p_cast521 int 9 regular  }
	{ p_cast522 int 9 regular  }
	{ p_cast523 int 9 regular  }
	{ zext_ln56 int 9 regular  }
	{ e_dst int 64 regular  }
	{ p_cast525 int 9 regular  }
	{ p_cast526 int 9 regular  }
	{ p_cast527 int 9 regular  }
	{ p_cast528 int 9 regular  }
	{ p_cast529 int 9 regular  }
	{ p_cast530 int 9 regular  }
	{ p_cast531 int 9 regular  }
	{ p_cast532 int 9 regular  }
	{ p_cast533 int 9 regular  }
	{ p_cast534 int 9 regular  }
	{ p_cast535 int 9 regular  }
	{ p_cast536 int 9 regular  }
	{ p_cast537 int 9 regular  }
	{ p_cast538 int 9 regular  }
	{ p_cast539 int 9 regular  }
	{ zext_ln56_1 int 9 regular  }
	{ out_degree int 64 regular  }
	{ p_cast541 int 9 regular  }
	{ p_cast542 int 9 regular  }
	{ p_cast543 int 9 regular  }
	{ p_cast544 int 9 regular  }
	{ p_cast545 int 9 regular  }
	{ p_cast546 int 9 regular  }
	{ p_cast547 int 9 regular  }
	{ p_cast548 int 9 regular  }
	{ p_cast549 int 9 regular  }
	{ p_cast550 int 9 regular  }
	{ p_cast551 int 9 regular  }
	{ p_cast552 int 9 regular  }
	{ p_cast553 int 9 regular  }
	{ p_cast554 int 9 regular  }
	{ p_cast555 int 9 regular  }
	{ zext_ln72 int 9 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "e_src_buffer_a", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e_dst_buffer_a", "interface" : "memory", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_deg_buffer_a", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "zext_ln54", "interface" : "wire", "bitwidth" : 37, "direction" : "READONLY"} , 
 	{ "Name" : "e_src", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "e_src","offset": { "type": "dynamic","port_name": "e_src","bundle": "control"},"direction": "READONLY"},{"cName": "e_dst","offset": { "type": "dynamic","port_name": "e_dst","bundle": "control"},"direction": "READONLY"},{"cName": "out_degree","offset": { "type": "dynamic","port_name": "out_degree","bundle": "control"},"direction": "READONLY"},{"cName": "out_r","offset": { "type": "dynamic","port_name": "out_r","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "p_cast509", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast510", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast511", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast512", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast513", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast514", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast515", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast516", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast517", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast518", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast519", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast520", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast521", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast522", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast523", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln56", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "e_dst", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast525", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast526", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast527", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast528", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast529", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast530", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast531", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast532", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast533", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast534", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast535", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast536", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast537", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast538", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast539", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln56_1", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "out_degree", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast541", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast542", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast543", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast544", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast545", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast546", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast547", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast548", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast549", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast550", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast551", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast552", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast553", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast554", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast555", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln72", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 115
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 512 signal 5 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 64 signal 5 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 512 signal 5 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 5 } 
	{ e_src_buffer_a_address0 sc_out sc_lv 12 signal 0 } 
	{ e_src_buffer_a_ce0 sc_out sc_logic 1 signal 0 } 
	{ e_src_buffer_a_we0 sc_out sc_logic 1 signal 0 } 
	{ e_src_buffer_a_d0 sc_out sc_lv 32 signal 0 } 
	{ e_dst_buffer_a_address0 sc_out sc_lv 12 signal 1 } 
	{ e_dst_buffer_a_ce0 sc_out sc_logic 1 signal 1 } 
	{ e_dst_buffer_a_we0 sc_out sc_logic 1 signal 1 } 
	{ e_dst_buffer_a_d0 sc_out sc_lv 5 signal 1 } 
	{ out_deg_buffer_a_address0 sc_out sc_lv 12 signal 2 } 
	{ out_deg_buffer_a_ce0 sc_out sc_logic 1 signal 2 } 
	{ out_deg_buffer_a_we0 sc_out sc_logic 1 signal 2 } 
	{ out_deg_buffer_a_d0 sc_out sc_lv 32 signal 2 } 
	{ zext_ln54 sc_in sc_lv 37 signal 3 } 
	{ e_src sc_in sc_lv 64 signal 4 } 
	{ p_cast509 sc_in sc_lv 9 signal 6 } 
	{ p_cast510 sc_in sc_lv 9 signal 7 } 
	{ p_cast511 sc_in sc_lv 9 signal 8 } 
	{ p_cast512 sc_in sc_lv 9 signal 9 } 
	{ p_cast513 sc_in sc_lv 9 signal 10 } 
	{ p_cast514 sc_in sc_lv 9 signal 11 } 
	{ p_cast515 sc_in sc_lv 9 signal 12 } 
	{ p_cast516 sc_in sc_lv 9 signal 13 } 
	{ p_cast517 sc_in sc_lv 9 signal 14 } 
	{ p_cast518 sc_in sc_lv 9 signal 15 } 
	{ p_cast519 sc_in sc_lv 9 signal 16 } 
	{ p_cast520 sc_in sc_lv 9 signal 17 } 
	{ p_cast521 sc_in sc_lv 9 signal 18 } 
	{ p_cast522 sc_in sc_lv 9 signal 19 } 
	{ p_cast523 sc_in sc_lv 9 signal 20 } 
	{ zext_ln56 sc_in sc_lv 9 signal 21 } 
	{ e_dst sc_in sc_lv 64 signal 22 } 
	{ p_cast525 sc_in sc_lv 9 signal 23 } 
	{ p_cast526 sc_in sc_lv 9 signal 24 } 
	{ p_cast527 sc_in sc_lv 9 signal 25 } 
	{ p_cast528 sc_in sc_lv 9 signal 26 } 
	{ p_cast529 sc_in sc_lv 9 signal 27 } 
	{ p_cast530 sc_in sc_lv 9 signal 28 } 
	{ p_cast531 sc_in sc_lv 9 signal 29 } 
	{ p_cast532 sc_in sc_lv 9 signal 30 } 
	{ p_cast533 sc_in sc_lv 9 signal 31 } 
	{ p_cast534 sc_in sc_lv 9 signal 32 } 
	{ p_cast535 sc_in sc_lv 9 signal 33 } 
	{ p_cast536 sc_in sc_lv 9 signal 34 } 
	{ p_cast537 sc_in sc_lv 9 signal 35 } 
	{ p_cast538 sc_in sc_lv 9 signal 36 } 
	{ p_cast539 sc_in sc_lv 9 signal 37 } 
	{ zext_ln56_1 sc_in sc_lv 9 signal 38 } 
	{ out_degree sc_in sc_lv 64 signal 39 } 
	{ p_cast541 sc_in sc_lv 9 signal 40 } 
	{ p_cast542 sc_in sc_lv 9 signal 41 } 
	{ p_cast543 sc_in sc_lv 9 signal 42 } 
	{ p_cast544 sc_in sc_lv 9 signal 43 } 
	{ p_cast545 sc_in sc_lv 9 signal 44 } 
	{ p_cast546 sc_in sc_lv 9 signal 45 } 
	{ p_cast547 sc_in sc_lv 9 signal 46 } 
	{ p_cast548 sc_in sc_lv 9 signal 47 } 
	{ p_cast549 sc_in sc_lv 9 signal 48 } 
	{ p_cast550 sc_in sc_lv 9 signal 49 } 
	{ p_cast551 sc_in sc_lv 9 signal 50 } 
	{ p_cast552 sc_in sc_lv 9 signal 51 } 
	{ p_cast553 sc_in sc_lv 9 signal 52 } 
	{ p_cast554 sc_in sc_lv 9 signal 53 } 
	{ p_cast555 sc_in sc_lv 9 signal 54 } 
	{ zext_ln72 sc_in sc_lv 9 signal 55 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }} , 
 	{ "name": "e_src_buffer_a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "e_src_buffer_a", "role": "address0" }} , 
 	{ "name": "e_src_buffer_a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_src_buffer_a", "role": "ce0" }} , 
 	{ "name": "e_src_buffer_a_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_src_buffer_a", "role": "we0" }} , 
 	{ "name": "e_src_buffer_a_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e_src_buffer_a", "role": "d0" }} , 
 	{ "name": "e_dst_buffer_a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "e_dst_buffer_a", "role": "address0" }} , 
 	{ "name": "e_dst_buffer_a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_dst_buffer_a", "role": "ce0" }} , 
 	{ "name": "e_dst_buffer_a_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_dst_buffer_a", "role": "we0" }} , 
 	{ "name": "e_dst_buffer_a_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "e_dst_buffer_a", "role": "d0" }} , 
 	{ "name": "out_deg_buffer_a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "out_deg_buffer_a", "role": "address0" }} , 
 	{ "name": "out_deg_buffer_a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_deg_buffer_a", "role": "ce0" }} , 
 	{ "name": "out_deg_buffer_a_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_deg_buffer_a", "role": "we0" }} , 
 	{ "name": "out_deg_buffer_a_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_deg_buffer_a", "role": "d0" }} , 
 	{ "name": "zext_ln54", "direction": "in", "datatype": "sc_lv", "bitwidth":37, "type": "signal", "bundle":{"name": "zext_ln54", "role": "default" }} , 
 	{ "name": "e_src", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "e_src", "role": "default" }} , 
 	{ "name": "p_cast509", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast509", "role": "default" }} , 
 	{ "name": "p_cast510", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast510", "role": "default" }} , 
 	{ "name": "p_cast511", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast511", "role": "default" }} , 
 	{ "name": "p_cast512", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast512", "role": "default" }} , 
 	{ "name": "p_cast513", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast513", "role": "default" }} , 
 	{ "name": "p_cast514", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast514", "role": "default" }} , 
 	{ "name": "p_cast515", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast515", "role": "default" }} , 
 	{ "name": "p_cast516", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast516", "role": "default" }} , 
 	{ "name": "p_cast517", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast517", "role": "default" }} , 
 	{ "name": "p_cast518", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast518", "role": "default" }} , 
 	{ "name": "p_cast519", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast519", "role": "default" }} , 
 	{ "name": "p_cast520", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast520", "role": "default" }} , 
 	{ "name": "p_cast521", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast521", "role": "default" }} , 
 	{ "name": "p_cast522", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast522", "role": "default" }} , 
 	{ "name": "p_cast523", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast523", "role": "default" }} , 
 	{ "name": "zext_ln56", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "zext_ln56", "role": "default" }} , 
 	{ "name": "e_dst", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "e_dst", "role": "default" }} , 
 	{ "name": "p_cast525", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast525", "role": "default" }} , 
 	{ "name": "p_cast526", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast526", "role": "default" }} , 
 	{ "name": "p_cast527", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast527", "role": "default" }} , 
 	{ "name": "p_cast528", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast528", "role": "default" }} , 
 	{ "name": "p_cast529", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast529", "role": "default" }} , 
 	{ "name": "p_cast530", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast530", "role": "default" }} , 
 	{ "name": "p_cast531", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast531", "role": "default" }} , 
 	{ "name": "p_cast532", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast532", "role": "default" }} , 
 	{ "name": "p_cast533", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast533", "role": "default" }} , 
 	{ "name": "p_cast534", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast534", "role": "default" }} , 
 	{ "name": "p_cast535", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast535", "role": "default" }} , 
 	{ "name": "p_cast536", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast536", "role": "default" }} , 
 	{ "name": "p_cast537", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast537", "role": "default" }} , 
 	{ "name": "p_cast538", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast538", "role": "default" }} , 
 	{ "name": "p_cast539", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast539", "role": "default" }} , 
 	{ "name": "zext_ln56_1", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "zext_ln56_1", "role": "default" }} , 
 	{ "name": "out_degree", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_degree", "role": "default" }} , 
 	{ "name": "p_cast541", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast541", "role": "default" }} , 
 	{ "name": "p_cast542", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast542", "role": "default" }} , 
 	{ "name": "p_cast543", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast543", "role": "default" }} , 
 	{ "name": "p_cast544", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast544", "role": "default" }} , 
 	{ "name": "p_cast545", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast545", "role": "default" }} , 
 	{ "name": "p_cast546", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast546", "role": "default" }} , 
 	{ "name": "p_cast547", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast547", "role": "default" }} , 
 	{ "name": "p_cast548", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast548", "role": "default" }} , 
 	{ "name": "p_cast549", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast549", "role": "default" }} , 
 	{ "name": "p_cast550", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast550", "role": "default" }} , 
 	{ "name": "p_cast551", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast551", "role": "default" }} , 
 	{ "name": "p_cast552", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast552", "role": "default" }} , 
 	{ "name": "p_cast553", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast553", "role": "default" }} , 
 	{ "name": "p_cast554", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast554", "role": "default" }} , 
 	{ "name": "p_cast555", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast555", "role": "default" }} , 
 	{ "name": "zext_ln72", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "zext_ln72", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "sssp_kernel_0_Pipeline_VITIS_LOOP_54_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12299", "EstimateLatencyMax" : "12299",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "e_src_buffer_a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e_dst_buffer_a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_deg_buffer_a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zext_ln54", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_src", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "p_cast509", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast510", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast511", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast512", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast513", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast514", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast515", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast516", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast517", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast518", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast519", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast520", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast521", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast522", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast523", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln56", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_dst", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast525", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast526", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast527", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast528", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast529", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast530", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast531", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast532", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast533", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast534", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast535", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast536", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast537", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast538", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast539", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln56_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_degree", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast541", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast542", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast543", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast544", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast545", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast546", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast547", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast548", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast549", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast550", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast551", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast552", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast553", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast554", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast555", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln72", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "96", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage9", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage9_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sssp_kernel_0_Pipeline_VITIS_LOOP_54_1 {
		e_src_buffer_a {Type O LastRead -1 FirstWrite 10}
		e_dst_buffer_a {Type O LastRead -1 FirstWrite 42}
		out_deg_buffer_a {Type O LastRead -1 FirstWrite 74}
		zext_ln54 {Type I LastRead 0 FirstWrite -1}
		e_src {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 103 FirstWrite -1}
		p_cast509 {Type I LastRead 0 FirstWrite -1}
		p_cast510 {Type I LastRead 0 FirstWrite -1}
		p_cast511 {Type I LastRead 0 FirstWrite -1}
		p_cast512 {Type I LastRead 0 FirstWrite -1}
		p_cast513 {Type I LastRead 0 FirstWrite -1}
		p_cast514 {Type I LastRead 0 FirstWrite -1}
		p_cast515 {Type I LastRead 0 FirstWrite -1}
		p_cast516 {Type I LastRead 0 FirstWrite -1}
		p_cast517 {Type I LastRead 0 FirstWrite -1}
		p_cast518 {Type I LastRead 0 FirstWrite -1}
		p_cast519 {Type I LastRead 0 FirstWrite -1}
		p_cast520 {Type I LastRead 0 FirstWrite -1}
		p_cast521 {Type I LastRead 0 FirstWrite -1}
		p_cast522 {Type I LastRead 0 FirstWrite -1}
		p_cast523 {Type I LastRead 0 FirstWrite -1}
		zext_ln56 {Type I LastRead 0 FirstWrite -1}
		e_dst {Type I LastRead 0 FirstWrite -1}
		p_cast525 {Type I LastRead 0 FirstWrite -1}
		p_cast526 {Type I LastRead 0 FirstWrite -1}
		p_cast527 {Type I LastRead 0 FirstWrite -1}
		p_cast528 {Type I LastRead 0 FirstWrite -1}
		p_cast529 {Type I LastRead 0 FirstWrite -1}
		p_cast530 {Type I LastRead 0 FirstWrite -1}
		p_cast531 {Type I LastRead 0 FirstWrite -1}
		p_cast532 {Type I LastRead 0 FirstWrite -1}
		p_cast533 {Type I LastRead 0 FirstWrite -1}
		p_cast534 {Type I LastRead 0 FirstWrite -1}
		p_cast535 {Type I LastRead 0 FirstWrite -1}
		p_cast536 {Type I LastRead 0 FirstWrite -1}
		p_cast537 {Type I LastRead 0 FirstWrite -1}
		p_cast538 {Type I LastRead 0 FirstWrite -1}
		p_cast539 {Type I LastRead 0 FirstWrite -1}
		zext_ln56_1 {Type I LastRead 0 FirstWrite -1}
		out_degree {Type I LastRead 0 FirstWrite -1}
		p_cast541 {Type I LastRead 0 FirstWrite -1}
		p_cast542 {Type I LastRead 0 FirstWrite -1}
		p_cast543 {Type I LastRead 0 FirstWrite -1}
		p_cast544 {Type I LastRead 0 FirstWrite -1}
		p_cast545 {Type I LastRead 0 FirstWrite -1}
		p_cast546 {Type I LastRead 0 FirstWrite -1}
		p_cast547 {Type I LastRead 0 FirstWrite -1}
		p_cast548 {Type I LastRead 0 FirstWrite -1}
		p_cast549 {Type I LastRead 0 FirstWrite -1}
		p_cast550 {Type I LastRead 0 FirstWrite -1}
		p_cast551 {Type I LastRead 0 FirstWrite -1}
		p_cast552 {Type I LastRead 0 FirstWrite -1}
		p_cast553 {Type I LastRead 0 FirstWrite -1}
		p_cast554 {Type I LastRead 0 FirstWrite -1}
		p_cast555 {Type I LastRead 0 FirstWrite -1}
		zext_ln72 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12299", "Max" : "12299"}
	, {"Name" : "Interval", "Min" : "12299", "Max" : "12299"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	e_src_buffer_a { ap_memory {  { e_src_buffer_a_address0 mem_address 1 12 }  { e_src_buffer_a_ce0 mem_ce 1 1 }  { e_src_buffer_a_we0 mem_we 1 1 }  { e_src_buffer_a_d0 mem_din 1 32 } } }
	e_dst_buffer_a { ap_memory {  { e_dst_buffer_a_address0 mem_address 1 12 }  { e_dst_buffer_a_ce0 mem_ce 1 1 }  { e_dst_buffer_a_we0 mem_we 1 1 }  { e_dst_buffer_a_d0 mem_din 1 5 } } }
	out_deg_buffer_a { ap_memory {  { out_deg_buffer_a_address0 mem_address 1 12 }  { out_deg_buffer_a_ce0 mem_ce 1 1 }  { out_deg_buffer_a_we0 mem_we 1 1 }  { out_deg_buffer_a_d0 mem_din 1 32 } } }
	zext_ln54 { ap_none {  { zext_ln54 in_data 0 37 } } }
	e_src { ap_none {  { e_src in_data 0 64 } } }
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN LEN 1 32 }  { m_axi_gmem_AWSIZE SIZE 1 3 }  { m_axi_gmem_AWBURST BURST 1 2 }  { m_axi_gmem_AWLOCK LOCK 1 2 }  { m_axi_gmem_AWCACHE CACHE 1 4 }  { m_axi_gmem_AWPROT PROT 1 3 }  { m_axi_gmem_AWQOS QOS 1 4 }  { m_axi_gmem_AWREGION REGION 1 4 }  { m_axi_gmem_AWUSER USER 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA DATA 1 512 }  { m_axi_gmem_WSTRB STRB 1 64 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER USER 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN LEN 1 32 }  { m_axi_gmem_ARSIZE SIZE 1 3 }  { m_axi_gmem_ARBURST BURST 1 2 }  { m_axi_gmem_ARLOCK LOCK 1 2 }  { m_axi_gmem_ARCACHE CACHE 1 4 }  { m_axi_gmem_ARPROT PROT 1 3 }  { m_axi_gmem_ARQOS QOS 1 4 }  { m_axi_gmem_ARREGION REGION 1 4 }  { m_axi_gmem_ARUSER USER 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA DATA 0 512 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER USER 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER USER 0 1 } } }
	p_cast509 { ap_none {  { p_cast509 in_data 0 9 } } }
	p_cast510 { ap_none {  { p_cast510 in_data 0 9 } } }
	p_cast511 { ap_none {  { p_cast511 in_data 0 9 } } }
	p_cast512 { ap_none {  { p_cast512 in_data 0 9 } } }
	p_cast513 { ap_none {  { p_cast513 in_data 0 9 } } }
	p_cast514 { ap_none {  { p_cast514 in_data 0 9 } } }
	p_cast515 { ap_none {  { p_cast515 in_data 0 9 } } }
	p_cast516 { ap_none {  { p_cast516 in_data 0 9 } } }
	p_cast517 { ap_none {  { p_cast517 in_data 0 9 } } }
	p_cast518 { ap_none {  { p_cast518 in_data 0 9 } } }
	p_cast519 { ap_none {  { p_cast519 in_data 0 9 } } }
	p_cast520 { ap_none {  { p_cast520 in_data 0 9 } } }
	p_cast521 { ap_none {  { p_cast521 in_data 0 9 } } }
	p_cast522 { ap_none {  { p_cast522 in_data 0 9 } } }
	p_cast523 { ap_none {  { p_cast523 in_data 0 9 } } }
	zext_ln56 { ap_none {  { zext_ln56 in_data 0 9 } } }
	e_dst { ap_none {  { e_dst in_data 0 64 } } }
	p_cast525 { ap_none {  { p_cast525 in_data 0 9 } } }
	p_cast526 { ap_none {  { p_cast526 in_data 0 9 } } }
	p_cast527 { ap_none {  { p_cast527 in_data 0 9 } } }
	p_cast528 { ap_none {  { p_cast528 in_data 0 9 } } }
	p_cast529 { ap_none {  { p_cast529 in_data 0 9 } } }
	p_cast530 { ap_none {  { p_cast530 in_data 0 9 } } }
	p_cast531 { ap_none {  { p_cast531 in_data 0 9 } } }
	p_cast532 { ap_none {  { p_cast532 in_data 0 9 } } }
	p_cast533 { ap_none {  { p_cast533 in_data 0 9 } } }
	p_cast534 { ap_none {  { p_cast534 in_data 0 9 } } }
	p_cast535 { ap_none {  { p_cast535 in_data 0 9 } } }
	p_cast536 { ap_none {  { p_cast536 in_data 0 9 } } }
	p_cast537 { ap_none {  { p_cast537 in_data 0 9 } } }
	p_cast538 { ap_none {  { p_cast538 in_data 0 9 } } }
	p_cast539 { ap_none {  { p_cast539 in_data 0 9 } } }
	zext_ln56_1 { ap_none {  { zext_ln56_1 in_data 0 9 } } }
	out_degree { ap_none {  { out_degree in_data 0 64 } } }
	p_cast541 { ap_none {  { p_cast541 in_data 0 9 } } }
	p_cast542 { ap_none {  { p_cast542 in_data 0 9 } } }
	p_cast543 { ap_none {  { p_cast543 in_data 0 9 } } }
	p_cast544 { ap_none {  { p_cast544 in_data 0 9 } } }
	p_cast545 { ap_none {  { p_cast545 in_data 0 9 } } }
	p_cast546 { ap_none {  { p_cast546 in_data 0 9 } } }
	p_cast547 { ap_none {  { p_cast547 in_data 0 9 } } }
	p_cast548 { ap_none {  { p_cast548 in_data 0 9 } } }
	p_cast549 { ap_none {  { p_cast549 in_data 0 9 } } }
	p_cast550 { ap_none {  { p_cast550 in_data 0 9 } } }
	p_cast551 { ap_none {  { p_cast551 in_data 0 9 } } }
	p_cast552 { ap_none {  { p_cast552 in_data 0 9 } } }
	p_cast553 { ap_none {  { p_cast553 in_data 0 9 } } }
	p_cast554 { ap_none {  { p_cast554 in_data 0 9 } } }
	p_cast555 { ap_none {  { p_cast555 in_data 0 9 } } }
	zext_ln72 { ap_none {  { zext_ln72 in_data 0 9 } } }
}
