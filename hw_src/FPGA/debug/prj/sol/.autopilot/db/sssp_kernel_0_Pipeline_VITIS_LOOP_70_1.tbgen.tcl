set moduleName sssp_kernel_0_Pipeline_VITIS_LOOP_70_1
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
set C_modelName {sssp_kernel_0_Pipeline_VITIS_LOOP_70_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_buffer_a int 32 regular {array 4096 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ zext_ln54 int 37 regular  }
	{ out_r int 64 regular  }
	{ p_cast558 int 9 regular  }
	{ gmem int 512 regular {axi_master 1}  }
	{ empty_33 int 64 regular  }
	{ p_cast560 int 9 regular  }
	{ empty_34 int 64 regular  }
	{ p_cast562 int 9 regular  }
	{ empty_35 int 64 regular  }
	{ p_cast564 int 9 regular  }
	{ empty_36 int 64 regular  }
	{ p_cast566 int 9 regular  }
	{ empty_37 int 64 regular  }
	{ p_cast568 int 9 regular  }
	{ empty_38 int 64 regular  }
	{ p_cast570 int 9 regular  }
	{ empty_39 int 64 regular  }
	{ p_cast572 int 9 regular  }
	{ empty_40 int 64 regular  }
	{ p_cast574 int 9 regular  }
	{ empty_41 int 64 regular  }
	{ p_cast576 int 9 regular  }
	{ empty_42 int 64 regular  }
	{ p_cast578 int 9 regular  }
	{ empty_43 int 64 regular  }
	{ p_cast580 int 9 regular  }
	{ empty_44 int 64 regular  }
	{ p_cast582 int 9 regular  }
	{ empty_45 int 64 regular  }
	{ p_cast584 int 9 regular  }
	{ empty_46 int 64 regular  }
	{ p_cast586 int 9 regular  }
	{ empty_47 int 64 regular  }
	{ zext_ln106 int 9 regular  }
	{ empty int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_buffer_a", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln54", "interface" : "wire", "bitwidth" : 37, "direction" : "READONLY"} , 
 	{ "Name" : "out_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast558", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "e_src","offset": { "type": "dynamic","port_name": "e_src","bundle": "control"},"direction": "READONLY"},{"cName": "e_dst","offset": { "type": "dynamic","port_name": "e_dst","bundle": "control"},"direction": "READONLY"},{"cName": "out_degree","offset": { "type": "dynamic","port_name": "out_degree","bundle": "control"},"direction": "READONLY"},{"cName": "out_r","offset": { "type": "dynamic","port_name": "out_r","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "empty_33", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast560", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "empty_34", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast562", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "empty_35", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast564", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "empty_36", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast566", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "empty_37", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast568", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "empty_38", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast570", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "empty_39", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast572", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "empty_40", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast574", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "empty_41", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast576", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "empty_42", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast578", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "empty_43", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast580", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "empty_44", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast582", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "empty_45", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast584", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "empty_46", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast586", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "empty_47", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln106", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 88
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 512 signal 4 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 512 signal 4 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 4 } 
	{ output_buffer_a_address0 sc_out sc_lv 12 signal 0 } 
	{ output_buffer_a_ce0 sc_out sc_logic 1 signal 0 } 
	{ output_buffer_a_q0 sc_in sc_lv 32 signal 0 } 
	{ zext_ln54 sc_in sc_lv 37 signal 1 } 
	{ out_r sc_in sc_lv 64 signal 2 } 
	{ p_cast558 sc_in sc_lv 9 signal 3 } 
	{ empty_33 sc_in sc_lv 64 signal 5 } 
	{ p_cast560 sc_in sc_lv 9 signal 6 } 
	{ empty_34 sc_in sc_lv 64 signal 7 } 
	{ p_cast562 sc_in sc_lv 9 signal 8 } 
	{ empty_35 sc_in sc_lv 64 signal 9 } 
	{ p_cast564 sc_in sc_lv 9 signal 10 } 
	{ empty_36 sc_in sc_lv 64 signal 11 } 
	{ p_cast566 sc_in sc_lv 9 signal 12 } 
	{ empty_37 sc_in sc_lv 64 signal 13 } 
	{ p_cast568 sc_in sc_lv 9 signal 14 } 
	{ empty_38 sc_in sc_lv 64 signal 15 } 
	{ p_cast570 sc_in sc_lv 9 signal 16 } 
	{ empty_39 sc_in sc_lv 64 signal 17 } 
	{ p_cast572 sc_in sc_lv 9 signal 18 } 
	{ empty_40 sc_in sc_lv 64 signal 19 } 
	{ p_cast574 sc_in sc_lv 9 signal 20 } 
	{ empty_41 sc_in sc_lv 64 signal 21 } 
	{ p_cast576 sc_in sc_lv 9 signal 22 } 
	{ empty_42 sc_in sc_lv 64 signal 23 } 
	{ p_cast578 sc_in sc_lv 9 signal 24 } 
	{ empty_43 sc_in sc_lv 64 signal 25 } 
	{ p_cast580 sc_in sc_lv 9 signal 26 } 
	{ empty_44 sc_in sc_lv 64 signal 27 } 
	{ p_cast582 sc_in sc_lv 9 signal 28 } 
	{ empty_45 sc_in sc_lv 64 signal 29 } 
	{ p_cast584 sc_in sc_lv 9 signal 30 } 
	{ empty_46 sc_in sc_lv 64 signal 31 } 
	{ p_cast586 sc_in sc_lv 9 signal 32 } 
	{ empty_47 sc_in sc_lv 64 signal 33 } 
	{ zext_ln106 sc_in sc_lv 9 signal 34 } 
	{ empty sc_in sc_lv 64 signal 35 } 
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
 	{ "name": "output_buffer_a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "output_buffer_a", "role": "address0" }} , 
 	{ "name": "output_buffer_a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_buffer_a", "role": "ce0" }} , 
 	{ "name": "output_buffer_a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_buffer_a", "role": "q0" }} , 
 	{ "name": "zext_ln54", "direction": "in", "datatype": "sc_lv", "bitwidth":37, "type": "signal", "bundle":{"name": "zext_ln54", "role": "default" }} , 
 	{ "name": "out_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_r", "role": "default" }} , 
 	{ "name": "p_cast558", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast558", "role": "default" }} , 
 	{ "name": "empty_33", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "empty_33", "role": "default" }} , 
 	{ "name": "p_cast560", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast560", "role": "default" }} , 
 	{ "name": "empty_34", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "empty_34", "role": "default" }} , 
 	{ "name": "p_cast562", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast562", "role": "default" }} , 
 	{ "name": "empty_35", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "empty_35", "role": "default" }} , 
 	{ "name": "p_cast564", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast564", "role": "default" }} , 
 	{ "name": "empty_36", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "empty_36", "role": "default" }} , 
 	{ "name": "p_cast566", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast566", "role": "default" }} , 
 	{ "name": "empty_37", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "empty_37", "role": "default" }} , 
 	{ "name": "p_cast568", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast568", "role": "default" }} , 
 	{ "name": "empty_38", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "empty_38", "role": "default" }} , 
 	{ "name": "p_cast570", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast570", "role": "default" }} , 
 	{ "name": "empty_39", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "empty_39", "role": "default" }} , 
 	{ "name": "p_cast572", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast572", "role": "default" }} , 
 	{ "name": "empty_40", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "empty_40", "role": "default" }} , 
 	{ "name": "p_cast574", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast574", "role": "default" }} , 
 	{ "name": "empty_41", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "empty_41", "role": "default" }} , 
 	{ "name": "p_cast576", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast576", "role": "default" }} , 
 	{ "name": "empty_42", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "empty_42", "role": "default" }} , 
 	{ "name": "p_cast578", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast578", "role": "default" }} , 
 	{ "name": "empty_43", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "empty_43", "role": "default" }} , 
 	{ "name": "p_cast580", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast580", "role": "default" }} , 
 	{ "name": "empty_44", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "empty_44", "role": "default" }} , 
 	{ "name": "p_cast582", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast582", "role": "default" }} , 
 	{ "name": "empty_45", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "empty_45", "role": "default" }} , 
 	{ "name": "p_cast584", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast584", "role": "default" }} , 
 	{ "name": "empty_46", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "empty_46", "role": "default" }} , 
 	{ "name": "p_cast586", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_cast586", "role": "default" }} , 
 	{ "name": "empty_47", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "empty_47", "role": "default" }} , 
 	{ "name": "zext_ln106", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "zext_ln106", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "empty", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "sssp_kernel_0_Pipeline_VITIS_LOOP_70_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4105", "EstimateLatencyMax" : "4105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "output_buffer_a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln54", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast558", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "empty_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast560", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast562", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast564", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast566", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast568", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast570", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast572", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast574", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast576", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast578", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast580", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast582", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast584", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast586", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln106", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_70_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage7", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage7_subdone", "QuitState" : "ap_ST_fsm_pp0_stage7", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage7_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sssp_kernel_0_Pipeline_VITIS_LOOP_70_1 {
		output_buffer_a {Type I LastRead 31 FirstWrite -1}
		zext_ln54 {Type I LastRead 0 FirstWrite -1}
		out_r {Type I LastRead 0 FirstWrite -1}
		p_cast558 {Type I LastRead 0 FirstWrite -1}
		gmem {Type O LastRead 35 FirstWrite 3}
		empty_33 {Type I LastRead 0 FirstWrite -1}
		p_cast560 {Type I LastRead 0 FirstWrite -1}
		empty_34 {Type I LastRead 0 FirstWrite -1}
		p_cast562 {Type I LastRead 0 FirstWrite -1}
		empty_35 {Type I LastRead 0 FirstWrite -1}
		p_cast564 {Type I LastRead 0 FirstWrite -1}
		empty_36 {Type I LastRead 0 FirstWrite -1}
		p_cast566 {Type I LastRead 0 FirstWrite -1}
		empty_37 {Type I LastRead 0 FirstWrite -1}
		p_cast568 {Type I LastRead 0 FirstWrite -1}
		empty_38 {Type I LastRead 0 FirstWrite -1}
		p_cast570 {Type I LastRead 0 FirstWrite -1}
		empty_39 {Type I LastRead 0 FirstWrite -1}
		p_cast572 {Type I LastRead 0 FirstWrite -1}
		empty_40 {Type I LastRead 0 FirstWrite -1}
		p_cast574 {Type I LastRead 0 FirstWrite -1}
		empty_41 {Type I LastRead 0 FirstWrite -1}
		p_cast576 {Type I LastRead 0 FirstWrite -1}
		empty_42 {Type I LastRead 0 FirstWrite -1}
		p_cast578 {Type I LastRead 0 FirstWrite -1}
		empty_43 {Type I LastRead 0 FirstWrite -1}
		p_cast580 {Type I LastRead 0 FirstWrite -1}
		empty_44 {Type I LastRead 0 FirstWrite -1}
		p_cast582 {Type I LastRead 0 FirstWrite -1}
		empty_45 {Type I LastRead 0 FirstWrite -1}
		p_cast584 {Type I LastRead 0 FirstWrite -1}
		empty_46 {Type I LastRead 0 FirstWrite -1}
		p_cast586 {Type I LastRead 0 FirstWrite -1}
		empty_47 {Type I LastRead 0 FirstWrite -1}
		zext_ln106 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4105", "Max" : "4105"}
	, {"Name" : "Interval", "Min" : "4105", "Max" : "4105"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	output_buffer_a { ap_memory {  { output_buffer_a_address0 mem_address 1 12 }  { output_buffer_a_ce0 mem_ce 1 1 }  { output_buffer_a_q0 mem_dout 0 32 } } }
	zext_ln54 { ap_none {  { zext_ln54 in_data 0 37 } } }
	out_r { ap_none {  { out_r in_data 0 64 } } }
	p_cast558 { ap_none {  { p_cast558 in_data 0 9 } } }
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN LEN 1 32 }  { m_axi_gmem_AWSIZE SIZE 1 3 }  { m_axi_gmem_AWBURST BURST 1 2 }  { m_axi_gmem_AWLOCK LOCK 1 2 }  { m_axi_gmem_AWCACHE CACHE 1 4 }  { m_axi_gmem_AWPROT PROT 1 3 }  { m_axi_gmem_AWQOS QOS 1 4 }  { m_axi_gmem_AWREGION REGION 1 4 }  { m_axi_gmem_AWUSER USER 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA DATA 1 512 }  { m_axi_gmem_WSTRB STRB 1 64 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER USER 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN LEN 1 32 }  { m_axi_gmem_ARSIZE SIZE 1 3 }  { m_axi_gmem_ARBURST BURST 1 2 }  { m_axi_gmem_ARLOCK LOCK 1 2 }  { m_axi_gmem_ARCACHE CACHE 1 4 }  { m_axi_gmem_ARPROT PROT 1 3 }  { m_axi_gmem_ARQOS QOS 1 4 }  { m_axi_gmem_ARREGION REGION 1 4 }  { m_axi_gmem_ARUSER USER 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA DATA 0 512 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER USER 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER USER 0 1 } } }
	empty_33 { ap_none {  { empty_33 in_data 0 64 } } }
	p_cast560 { ap_none {  { p_cast560 in_data 0 9 } } }
	empty_34 { ap_none {  { empty_34 in_data 0 64 } } }
	p_cast562 { ap_none {  { p_cast562 in_data 0 9 } } }
	empty_35 { ap_none {  { empty_35 in_data 0 64 } } }
	p_cast564 { ap_none {  { p_cast564 in_data 0 9 } } }
	empty_36 { ap_none {  { empty_36 in_data 0 64 } } }
	p_cast566 { ap_none {  { p_cast566 in_data 0 9 } } }
	empty_37 { ap_none {  { empty_37 in_data 0 64 } } }
	p_cast568 { ap_none {  { p_cast568 in_data 0 9 } } }
	empty_38 { ap_none {  { empty_38 in_data 0 64 } } }
	p_cast570 { ap_none {  { p_cast570 in_data 0 9 } } }
	empty_39 { ap_none {  { empty_39 in_data 0 64 } } }
	p_cast572 { ap_none {  { p_cast572 in_data 0 9 } } }
	empty_40 { ap_none {  { empty_40 in_data 0 64 } } }
	p_cast574 { ap_none {  { p_cast574 in_data 0 9 } } }
	empty_41 { ap_none {  { empty_41 in_data 0 64 } } }
	p_cast576 { ap_none {  { p_cast576 in_data 0 9 } } }
	empty_42 { ap_none {  { empty_42 in_data 0 64 } } }
	p_cast578 { ap_none {  { p_cast578 in_data 0 9 } } }
	empty_43 { ap_none {  { empty_43 in_data 0 64 } } }
	p_cast580 { ap_none {  { p_cast580 in_data 0 9 } } }
	empty_44 { ap_none {  { empty_44 in_data 0 64 } } }
	p_cast582 { ap_none {  { p_cast582 in_data 0 9 } } }
	empty_45 { ap_none {  { empty_45 in_data 0 64 } } }
	p_cast584 { ap_none {  { p_cast584 in_data 0 9 } } }
	empty_46 { ap_none {  { empty_46 in_data 0 64 } } }
	p_cast586 { ap_none {  { p_cast586 in_data 0 9 } } }
	empty_47 { ap_none {  { empty_47 in_data 0 64 } } }
	zext_ln106 { ap_none {  { zext_ln106 in_data 0 9 } } }
	empty { ap_none {  { empty in_data 0 64 } } }
}
