set moduleName sssp_kernel_0
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {sssp_kernel_0}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem int 512 regular {axi_master 2}  }
	{ e_src int 64 regular {axi_slave 0}  }
	{ e_dst int 64 regular {axi_slave 0}  }
	{ out_degree int 64 regular {axi_slave 0}  }
	{ out_r int 64 regular {axi_slave 0}  }
	{ size int 32 regular  }
	{ vertices int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "e_src","offset": { "type": "dynamic","port_name": "e_src","bundle": "control"},"direction": "READONLY"},{"cName": "e_dst","offset": { "type": "dynamic","port_name": "e_dst","bundle": "control"},"direction": "READONLY"},{"cName": "out_degree","offset": { "type": "dynamic","port_name": "out_degree","bundle": "control"},"direction": "READONLY"},{"cName": "out_r","offset": { "type": "dynamic","port_name": "out_r","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "e_src", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "e_dst", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "out_degree", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "out_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "size", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "vertices", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 70
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ size sc_in sc_lv 32 signal 5 } 
	{ vertices sc_in sc_lv 32 signal 6 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"e_src","role":"data","value":"16"},{"name":"e_dst","role":"data","value":"28"},{"name":"out_degree","role":"data","value":"40"},{"name":"out_r","role":"data","value":"52"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
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
 	{ "name": "size", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size", "role": "default" }} , 
 	{ "name": "vertices", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vertices", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "138", "149", "151", "153", "164", "168", "169"],
		"CDFG" : "sssp_kernel_0",
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
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_sssp_kernel_0_Pipeline_VITIS_LOOP_70_1_fu_906", "Port" : "gmem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "164", "SubInstance" : "grp_sssp_kernel_0_Pipeline_VITIS_LOOP_70_16_fu_1018", "Port" : "gmem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "136", "SubInstance" : "grp_sssp_kernel_0_Pipeline_VITIS_LOOP_54_1_fu_708", "Port" : "gmem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "151", "SubInstance" : "grp_sssp_kernel_0_Pipeline_VITIS_LOOP_54_15_fu_947", "Port" : "gmem", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "e_src", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_dst", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_degree", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "size", "Type" : "None", "Direction" : "I"},
			{"Name" : "vertices", "Type" : "None", "Direction" : "I"},
			{"Name" : "v", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_buffer_compute_1_fu_769", "Port" : "v", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "153", "SubInstance" : "grp_buffer_compute_fu_1008", "Port" : "v", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_106_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.e_src_buffer_a_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.e_src_buffer_b_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.e_dst_buffer_a_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.e_dst_buffer_b_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_deg_buffer_a_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_deg_buffer_b_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_a_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_0_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_1_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_2_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_3_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_4_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_5_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_6_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_7_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_8_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_9_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_10_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_11_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_12_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_13_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_14_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_15_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_16_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_17_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_18_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_19_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_20_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_21_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_22_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_23_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_24_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_25_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_26_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_27_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_28_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_29_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_30_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_31_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_32_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_33_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_34_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_35_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_36_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_37_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_38_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_39_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_40_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_41_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_42_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_43_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_44_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_45_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_46_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_47_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_48_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_49_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_50_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_51_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_52_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_53_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_54_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_55_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_56_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_57_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_58_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_59_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_60_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_61_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_62_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_63_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_64_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_65_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_66_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_67_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_68_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_69_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_70_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_71_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_72_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_73_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_74_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_75_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_76_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_77_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_78_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_79_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_80_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_81_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_82_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_83_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_84_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_85_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_86_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_87_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_88_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_89_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_90_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_91_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_92_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_93_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_94_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_95_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_96_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_97_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_98_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_99_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_100_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_101_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_102_U", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_103_U", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_104_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_105_U", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_106_U", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_107_U", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_108_U", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_109_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_110_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_111_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_112_U", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_113_U", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_114_U", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_115_U", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_116_U", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_117_U", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_118_U", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_119_U", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_120_U", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_121_U", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_122_U", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_123_U", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_124_U", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_125_U", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_126_U", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_buffer_b_127_U", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sssp_kernel_0_Pipeline_VITIS_LOOP_54_1_fu_708", "Parent" : "0", "Child" : ["137"],
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
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sssp_kernel_0_Pipeline_VITIS_LOOP_54_1_fu_708.flow_control_loop_pipe_sequential_init_U", "Parent" : "136"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_buffer_compute_1_fu_769", "Parent" : "0", "Child" : ["139"],
		"CDFG" : "buffer_compute_1",
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
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_in_a", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_in_b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_in_b", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_in_c", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_in_c", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_8", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_9", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_10", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_11", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_12", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_13", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_14", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_15", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_16", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_17", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_18", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_19", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_20", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_21", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_22", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_23", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_24", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_25", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_26", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_27", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_28", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_29", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_30", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_31", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_32", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_33", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_34", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_35", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_36", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_37", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_38", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_39", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_40", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_41", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_42", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_43", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_44", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_45", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_46", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_47", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_48", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_49", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_50", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_51", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_52", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_53", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_54", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_55", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_56", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_57", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_58", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_59", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_60", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_61", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_62", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_63", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_64", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_65", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_66", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_67", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_68", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_69", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_70", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_71", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_72", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_73", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_74", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_75", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_76", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_77", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_78", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_79", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_80", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_81", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_82", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_83", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_84", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_85", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_86", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_87", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_88", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_89", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_90", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_91", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_92", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_93", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_94", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_95", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_96", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_97", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_98", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_99", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_100", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_101", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_102", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_103", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_104", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_105", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_106", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_107", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_108", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_109", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_110", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_111", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_112", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_113", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_114", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_115", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_116", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_117", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_118", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_119", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_120", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_121", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_122", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_123", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_124", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_125", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_126", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out_127", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "v", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_PE_kernel_1_fu_522", "Port" : "v", "Inst_start_state" : "255", "Inst_end_state" : "256"}]}]},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_buffer_compute_1_fu_769.grp_PE_kernel_1_fu_522", "Parent" : "138", "Child" : ["140", "142", "146"],
		"CDFG" : "PE_kernel_1",
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
					{"ID" : "140", "SubInstance" : "grp_PE_kernel_1_Pipeline_init_distances_fu_308", "Port" : "local_in_a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "142", "SubInstance" : "grp_PE_kernel_1_Pipeline_sssp_computation_VITIS_LOOP_33_1_fu_347", "Port" : "local_in_a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "local_in_a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_in_b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_PE_kernel_1_Pipeline_sssp_computation_VITIS_LOOP_33_1_fu_347", "Port" : "local_in_b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "local_in_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_in_c", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "grp_PE_kernel_1_Pipeline_sssp_computation_VITIS_LOOP_33_1_fu_347", "Port" : "local_in_c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "local_in_c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_out", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_PE_kernel_1_Pipeline_write_distances_fu_425", "Port" : "local_out", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "v", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_buffer_compute_1_fu_769.grp_PE_kernel_1_fu_522.grp_PE_kernel_1_Pipeline_init_distances_fu_308", "Parent" : "139", "Child" : ["141"],
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
	{"ID" : "141", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_buffer_compute_1_fu_769.grp_PE_kernel_1_fu_522.grp_PE_kernel_1_Pipeline_init_distances_fu_308.flow_control_loop_pipe_sequential_init_U", "Parent" : "140"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_buffer_compute_1_fu_769.grp_PE_kernel_1_fu_522.grp_PE_kernel_1_Pipeline_sssp_computation_VITIS_LOOP_33_1_fu_347", "Parent" : "139", "Child" : ["143", "144", "145"],
		"CDFG" : "PE_kernel_1_Pipeline_sssp_computation_VITIS_LOOP_33_1",
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
			{"Name" : "distance_buffer_0_31_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "sssp_computation_VITIS_LOOP_33_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "143", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_buffer_compute_1_fu_769.grp_PE_kernel_1_fu_522.grp_PE_kernel_1_Pipeline_sssp_computation_VITIS_LOOP_33_1_fu_347.mux_325_32_1_1_U91", "Parent" : "142"},
	{"ID" : "144", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_buffer_compute_1_fu_769.grp_PE_kernel_1_fu_522.grp_PE_kernel_1_Pipeline_sssp_computation_VITIS_LOOP_33_1_fu_347.mux_325_32_1_1_U92", "Parent" : "142"},
	{"ID" : "145", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_buffer_compute_1_fu_769.grp_PE_kernel_1_fu_522.grp_PE_kernel_1_Pipeline_sssp_computation_VITIS_LOOP_33_1_fu_347.flow_control_loop_pipe_sequential_init_U", "Parent" : "142"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_buffer_compute_1_fu_769.grp_PE_kernel_1_fu_522.grp_PE_kernel_1_Pipeline_write_distances_fu_425", "Parent" : "139", "Child" : ["147", "148"],
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
	{"ID" : "147", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_buffer_compute_1_fu_769.grp_PE_kernel_1_fu_522.grp_PE_kernel_1_Pipeline_write_distances_fu_425.mux_325_32_1_1_U165", "Parent" : "146"},
	{"ID" : "148", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_buffer_compute_1_fu_769.grp_PE_kernel_1_fu_522.grp_PE_kernel_1_Pipeline_write_distances_fu_425.flow_control_loop_pipe_sequential_init_U", "Parent" : "146"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sssp_kernel_0_Pipeline_VITIS_LOOP_70_1_fu_906", "Parent" : "0", "Child" : ["150"],
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
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sssp_kernel_0_Pipeline_VITIS_LOOP_70_1_fu_906.flow_control_loop_pipe_sequential_init_U", "Parent" : "149"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sssp_kernel_0_Pipeline_VITIS_LOOP_54_15_fu_947", "Parent" : "0", "Child" : ["152"],
		"CDFG" : "sssp_kernel_0_Pipeline_VITIS_LOOP_54_15",
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
			{"Name" : "e_src_buffer_b", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e_dst_buffer_b", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_deg_buffer_b", "Type" : "Memory", "Direction" : "O"},
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
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sssp_kernel_0_Pipeline_VITIS_LOOP_54_15_fu_947.flow_control_loop_pipe_sequential_init_U", "Parent" : "151"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_buffer_compute_fu_1008", "Parent" : "0", "Child" : ["154"],
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
					{"ID" : "154", "SubInstance" : "grp_PE_kernel_fu_268", "Port" : "local_in_a", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_in_b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "154", "SubInstance" : "grp_PE_kernel_fu_268", "Port" : "local_in_b", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_in_c", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "154", "SubInstance" : "grp_PE_kernel_fu_268", "Port" : "local_in_c", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "local_out", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "154", "SubInstance" : "grp_PE_kernel_fu_268", "Port" : "local_out", "Inst_start_state" : "255", "Inst_end_state" : "256"}]},
			{"Name" : "v", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "154", "SubInstance" : "grp_PE_kernel_fu_268", "Port" : "v", "Inst_start_state" : "255", "Inst_end_state" : "256"}]}]},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_buffer_compute_fu_1008.grp_PE_kernel_fu_268", "Parent" : "153", "Child" : ["155", "157", "161"],
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
					{"ID" : "157", "SubInstance" : "grp_PE_kernel_Pipeline_sssp_computation_VITIS_LOOP_33_1_fu_355", "Port" : "local_in_a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "155", "SubInstance" : "grp_PE_kernel_Pipeline_init_distances_fu_316", "Port" : "local_in_a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "local_in_a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_in_b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "157", "SubInstance" : "grp_PE_kernel_Pipeline_sssp_computation_VITIS_LOOP_33_1_fu_355", "Port" : "local_in_b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "local_in_b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_in_c", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "157", "SubInstance" : "grp_PE_kernel_Pipeline_sssp_computation_VITIS_LOOP_33_1_fu_355", "Port" : "local_in_c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "local_in_c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_out", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "161", "SubInstance" : "grp_PE_kernel_Pipeline_write_distances_fu_433", "Port" : "local_out", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "local_out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "v", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_buffer_compute_fu_1008.grp_PE_kernel_fu_268.grp_PE_kernel_Pipeline_init_distances_fu_316", "Parent" : "154", "Child" : ["156"],
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
	{"ID" : "156", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_buffer_compute_fu_1008.grp_PE_kernel_fu_268.grp_PE_kernel_Pipeline_init_distances_fu_316.flow_control_loop_pipe_sequential_init_U", "Parent" : "155"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_buffer_compute_fu_1008.grp_PE_kernel_fu_268.grp_PE_kernel_Pipeline_sssp_computation_VITIS_LOOP_33_1_fu_355", "Parent" : "154", "Child" : ["158", "159", "160"],
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
	{"ID" : "158", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_buffer_compute_fu_1008.grp_PE_kernel_fu_268.grp_PE_kernel_Pipeline_sssp_computation_VITIS_LOOP_33_1_fu_355.mux_325_32_1_1_U465", "Parent" : "157"},
	{"ID" : "159", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_buffer_compute_fu_1008.grp_PE_kernel_fu_268.grp_PE_kernel_Pipeline_sssp_computation_VITIS_LOOP_33_1_fu_355.mux_325_32_1_1_U466", "Parent" : "157"},
	{"ID" : "160", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_buffer_compute_fu_1008.grp_PE_kernel_fu_268.grp_PE_kernel_Pipeline_sssp_computation_VITIS_LOOP_33_1_fu_355.flow_control_loop_pipe_sequential_init_U", "Parent" : "157"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_buffer_compute_fu_1008.grp_PE_kernel_fu_268.grp_PE_kernel_Pipeline_write_distances_fu_433", "Parent" : "154", "Child" : ["162", "163"],
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
	{"ID" : "162", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_buffer_compute_fu_1008.grp_PE_kernel_fu_268.grp_PE_kernel_Pipeline_write_distances_fu_433.mux_325_32_1_1_U538", "Parent" : "161"},
	{"ID" : "163", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_buffer_compute_fu_1008.grp_PE_kernel_fu_268.grp_PE_kernel_Pipeline_write_distances_fu_433.flow_control_loop_pipe_sequential_init_U", "Parent" : "161"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sssp_kernel_0_Pipeline_VITIS_LOOP_70_16_fu_1018", "Parent" : "0", "Child" : ["165", "166", "167"],
		"CDFG" : "sssp_kernel_0_Pipeline_VITIS_LOOP_70_16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4113", "EstimateLatencyMax" : "4113",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "output_buffer_b_127", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_126", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_125", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_124", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_123", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_122", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_121", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_120", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_119", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_118", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_117", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_116", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_115", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_114", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_113", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_112", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_111", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_110", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_109", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_108", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_107", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_106", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_105", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_104", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_103", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_102", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_101", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_100", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_99", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_98", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_97", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_96", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_95", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_94", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_93", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_92", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_91", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_90", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_89", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_88", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_87", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_86", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_85", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_84", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_83", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_82", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_81", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_80", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_79", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_78", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_77", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_76", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_75", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_74", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_73", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_72", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_71", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_70", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_69", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_68", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_67", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_66", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_65", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_64", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_63", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_62", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_61", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_60", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_59", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_58", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_57", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_56", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_55", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_54", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_53", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_52", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_51", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_50", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_49", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_48", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_47", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_46", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_45", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_44", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_43", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_42", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_41", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_40", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_39", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_38", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_37", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_36", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_35", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_34", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_33", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_buffer_b_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln54", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast558", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "empty_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast560", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast562", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast564", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast566", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast568", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast570", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast572", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast574", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast576", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast578", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast580", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast582", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast584", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast586", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln106", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_70_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage7", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage7_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sssp_kernel_0_Pipeline_VITIS_LOOP_70_16_fu_1018.mux_1287_32_1_1_U587", "Parent" : "164"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sssp_kernel_0_Pipeline_VITIS_LOOP_70_16_fu_1018.mux_1287_32_1_1_U588", "Parent" : "164"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sssp_kernel_0_Pipeline_VITIS_LOOP_70_16_fu_1018.flow_control_loop_pipe_sequential_init_U", "Parent" : "164"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sssp_kernel_0 {
		gmem {Type IO LastRead 103 FirstWrite -1}
		e_src {Type I LastRead 1 FirstWrite -1}
		e_dst {Type I LastRead 1 FirstWrite -1}
		out_degree {Type I LastRead 1 FirstWrite -1}
		out_r {Type I LastRead 1 FirstWrite -1}
		size {Type I LastRead 0 FirstWrite -1}
		vertices {Type I LastRead 0 FirstWrite -1}
		v {Type IO LastRead -1 FirstWrite -1}}
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
		zext_ln72 {Type I LastRead 0 FirstWrite -1}}
	buffer_compute_1 {
		local_in_a {Type I LastRead 2 FirstWrite -1}
		local_in_b {Type I LastRead 2 FirstWrite -1}
		local_in_c {Type I LastRead 2 FirstWrite -1}
		local_out_0 {Type O LastRead -1 FirstWrite 0}
		local_out_1 {Type O LastRead -1 FirstWrite 0}
		local_out_2 {Type O LastRead -1 FirstWrite 0}
		local_out_3 {Type O LastRead -1 FirstWrite 0}
		local_out_4 {Type O LastRead -1 FirstWrite 0}
		local_out_5 {Type O LastRead -1 FirstWrite 0}
		local_out_6 {Type O LastRead -1 FirstWrite 0}
		local_out_7 {Type O LastRead -1 FirstWrite 0}
		local_out_8 {Type O LastRead -1 FirstWrite 0}
		local_out_9 {Type O LastRead -1 FirstWrite 0}
		local_out_10 {Type O LastRead -1 FirstWrite 0}
		local_out_11 {Type O LastRead -1 FirstWrite 0}
		local_out_12 {Type O LastRead -1 FirstWrite 0}
		local_out_13 {Type O LastRead -1 FirstWrite 0}
		local_out_14 {Type O LastRead -1 FirstWrite 0}
		local_out_15 {Type O LastRead -1 FirstWrite 0}
		local_out_16 {Type O LastRead -1 FirstWrite 0}
		local_out_17 {Type O LastRead -1 FirstWrite 0}
		local_out_18 {Type O LastRead -1 FirstWrite 0}
		local_out_19 {Type O LastRead -1 FirstWrite 0}
		local_out_20 {Type O LastRead -1 FirstWrite 0}
		local_out_21 {Type O LastRead -1 FirstWrite 0}
		local_out_22 {Type O LastRead -1 FirstWrite 0}
		local_out_23 {Type O LastRead -1 FirstWrite 0}
		local_out_24 {Type O LastRead -1 FirstWrite 0}
		local_out_25 {Type O LastRead -1 FirstWrite 0}
		local_out_26 {Type O LastRead -1 FirstWrite 0}
		local_out_27 {Type O LastRead -1 FirstWrite 0}
		local_out_28 {Type O LastRead -1 FirstWrite 0}
		local_out_29 {Type O LastRead -1 FirstWrite 0}
		local_out_30 {Type O LastRead -1 FirstWrite 0}
		local_out_31 {Type O LastRead -1 FirstWrite 0}
		local_out_32 {Type O LastRead -1 FirstWrite 0}
		local_out_33 {Type O LastRead -1 FirstWrite 0}
		local_out_34 {Type O LastRead -1 FirstWrite 0}
		local_out_35 {Type O LastRead -1 FirstWrite 0}
		local_out_36 {Type O LastRead -1 FirstWrite 0}
		local_out_37 {Type O LastRead -1 FirstWrite 0}
		local_out_38 {Type O LastRead -1 FirstWrite 0}
		local_out_39 {Type O LastRead -1 FirstWrite 0}
		local_out_40 {Type O LastRead -1 FirstWrite 0}
		local_out_41 {Type O LastRead -1 FirstWrite 0}
		local_out_42 {Type O LastRead -1 FirstWrite 0}
		local_out_43 {Type O LastRead -1 FirstWrite 0}
		local_out_44 {Type O LastRead -1 FirstWrite 0}
		local_out_45 {Type O LastRead -1 FirstWrite 0}
		local_out_46 {Type O LastRead -1 FirstWrite 0}
		local_out_47 {Type O LastRead -1 FirstWrite 0}
		local_out_48 {Type O LastRead -1 FirstWrite 0}
		local_out_49 {Type O LastRead -1 FirstWrite 0}
		local_out_50 {Type O LastRead -1 FirstWrite 0}
		local_out_51 {Type O LastRead -1 FirstWrite 0}
		local_out_52 {Type O LastRead -1 FirstWrite 0}
		local_out_53 {Type O LastRead -1 FirstWrite 0}
		local_out_54 {Type O LastRead -1 FirstWrite 0}
		local_out_55 {Type O LastRead -1 FirstWrite 0}
		local_out_56 {Type O LastRead -1 FirstWrite 0}
		local_out_57 {Type O LastRead -1 FirstWrite 0}
		local_out_58 {Type O LastRead -1 FirstWrite 0}
		local_out_59 {Type O LastRead -1 FirstWrite 0}
		local_out_60 {Type O LastRead -1 FirstWrite 0}
		local_out_61 {Type O LastRead -1 FirstWrite 0}
		local_out_62 {Type O LastRead -1 FirstWrite 0}
		local_out_63 {Type O LastRead -1 FirstWrite 0}
		local_out_64 {Type O LastRead -1 FirstWrite 0}
		local_out_65 {Type O LastRead -1 FirstWrite 0}
		local_out_66 {Type O LastRead -1 FirstWrite 0}
		local_out_67 {Type O LastRead -1 FirstWrite 0}
		local_out_68 {Type O LastRead -1 FirstWrite 0}
		local_out_69 {Type O LastRead -1 FirstWrite 0}
		local_out_70 {Type O LastRead -1 FirstWrite 0}
		local_out_71 {Type O LastRead -1 FirstWrite 0}
		local_out_72 {Type O LastRead -1 FirstWrite 0}
		local_out_73 {Type O LastRead -1 FirstWrite 0}
		local_out_74 {Type O LastRead -1 FirstWrite 0}
		local_out_75 {Type O LastRead -1 FirstWrite 0}
		local_out_76 {Type O LastRead -1 FirstWrite 0}
		local_out_77 {Type O LastRead -1 FirstWrite 0}
		local_out_78 {Type O LastRead -1 FirstWrite 0}
		local_out_79 {Type O LastRead -1 FirstWrite 0}
		local_out_80 {Type O LastRead -1 FirstWrite 0}
		local_out_81 {Type O LastRead -1 FirstWrite 0}
		local_out_82 {Type O LastRead -1 FirstWrite 0}
		local_out_83 {Type O LastRead -1 FirstWrite 0}
		local_out_84 {Type O LastRead -1 FirstWrite 0}
		local_out_85 {Type O LastRead -1 FirstWrite 0}
		local_out_86 {Type O LastRead -1 FirstWrite 0}
		local_out_87 {Type O LastRead -1 FirstWrite 0}
		local_out_88 {Type O LastRead -1 FirstWrite 0}
		local_out_89 {Type O LastRead -1 FirstWrite 0}
		local_out_90 {Type O LastRead -1 FirstWrite 0}
		local_out_91 {Type O LastRead -1 FirstWrite 0}
		local_out_92 {Type O LastRead -1 FirstWrite 0}
		local_out_93 {Type O LastRead -1 FirstWrite 0}
		local_out_94 {Type O LastRead -1 FirstWrite 0}
		local_out_95 {Type O LastRead -1 FirstWrite 0}
		local_out_96 {Type O LastRead -1 FirstWrite 0}
		local_out_97 {Type O LastRead -1 FirstWrite 0}
		local_out_98 {Type O LastRead -1 FirstWrite 0}
		local_out_99 {Type O LastRead -1 FirstWrite 0}
		local_out_100 {Type O LastRead -1 FirstWrite 0}
		local_out_101 {Type O LastRead -1 FirstWrite 0}
		local_out_102 {Type O LastRead -1 FirstWrite 0}
		local_out_103 {Type O LastRead -1 FirstWrite 0}
		local_out_104 {Type O LastRead -1 FirstWrite 0}
		local_out_105 {Type O LastRead -1 FirstWrite 0}
		local_out_106 {Type O LastRead -1 FirstWrite 0}
		local_out_107 {Type O LastRead -1 FirstWrite 0}
		local_out_108 {Type O LastRead -1 FirstWrite 0}
		local_out_109 {Type O LastRead -1 FirstWrite 0}
		local_out_110 {Type O LastRead -1 FirstWrite 0}
		local_out_111 {Type O LastRead -1 FirstWrite 0}
		local_out_112 {Type O LastRead -1 FirstWrite 0}
		local_out_113 {Type O LastRead -1 FirstWrite 0}
		local_out_114 {Type O LastRead -1 FirstWrite 0}
		local_out_115 {Type O LastRead -1 FirstWrite 0}
		local_out_116 {Type O LastRead -1 FirstWrite 0}
		local_out_117 {Type O LastRead -1 FirstWrite 0}
		local_out_118 {Type O LastRead -1 FirstWrite 0}
		local_out_119 {Type O LastRead -1 FirstWrite 0}
		local_out_120 {Type O LastRead -1 FirstWrite 0}
		local_out_121 {Type O LastRead -1 FirstWrite 0}
		local_out_122 {Type O LastRead -1 FirstWrite 0}
		local_out_123 {Type O LastRead -1 FirstWrite 0}
		local_out_124 {Type O LastRead -1 FirstWrite 0}
		local_out_125 {Type O LastRead -1 FirstWrite 0}
		local_out_126 {Type O LastRead -1 FirstWrite 0}
		local_out_127 {Type O LastRead -1 FirstWrite 0}
		v {Type I LastRead 2 FirstWrite -1}}
	PE_kernel_1 {
		local_in_a {Type I LastRead 2 FirstWrite -1}
		local_in_a_offset {Type I LastRead 0 FirstWrite -1}
		local_in_b {Type I LastRead 2 FirstWrite -1}
		local_in_b_offset {Type I LastRead 2 FirstWrite -1}
		local_in_c {Type I LastRead 2 FirstWrite -1}
		local_in_c_offset {Type I LastRead 2 FirstWrite -1}
		local_out {Type O LastRead -1 FirstWrite 0}
		v {Type I LastRead 2 FirstWrite -1}}
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
		distance_buffer_0_0_out {Type O LastRead -1 FirstWrite 1}}
	PE_kernel_1_Pipeline_sssp_computation_VITIS_LOOP_33_1 {
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
		distance_buffer_0_31_out {Type O LastRead -1 FirstWrite 3}}
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
		local_out {Type O LastRead -1 FirstWrite 0}}
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
		empty {Type I LastRead 0 FirstWrite -1}}
	sssp_kernel_0_Pipeline_VITIS_LOOP_54_15 {
		e_src_buffer_b {Type O LastRead -1 FirstWrite 10}
		e_dst_buffer_b {Type O LastRead -1 FirstWrite 42}
		out_deg_buffer_b {Type O LastRead -1 FirstWrite 74}
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
		zext_ln72 {Type I LastRead 0 FirstWrite -1}}
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
		distance_buffer_31_3_reload {Type I LastRead 0 FirstWrite -1}}
	sssp_kernel_0_Pipeline_VITIS_LOOP_70_16 {
		output_buffer_b_127 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_126 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_125 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_124 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_123 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_122 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_121 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_120 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_119 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_118 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_117 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_116 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_115 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_114 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_113 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_112 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_111 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_110 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_109 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_108 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_107 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_106 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_105 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_104 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_103 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_102 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_101 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_100 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_99 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_98 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_97 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_96 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_95 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_94 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_93 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_92 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_91 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_90 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_89 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_88 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_87 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_86 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_85 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_84 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_83 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_82 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_81 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_80 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_79 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_78 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_77 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_76 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_75 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_74 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_73 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_72 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_71 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_70 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_69 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_68 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_67 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_66 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_65 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_64 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_63 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_62 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_61 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_60 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_59 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_58 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_57 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_56 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_55 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_54 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_53 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_52 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_51 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_50 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_49 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_48 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_47 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_46 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_45 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_44 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_43 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_42 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_41 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_40 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_39 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_38 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_37 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_36 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_35 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_34 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_33 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_32 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_31 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_30 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_29 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_28 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_27 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_26 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_25 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_24 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_23 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_22 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_21 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_20 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_19 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_18 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_17 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_16 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_15 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_14 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_13 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_12 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_11 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_10 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_9 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_8 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_7 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_6 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_5 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_4 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_3 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_2 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_1 {Type I LastRead 16 FirstWrite -1}
		output_buffer_b_0 {Type I LastRead 16 FirstWrite -1}
		zext_ln54 {Type I LastRead 0 FirstWrite -1}
		out_r {Type I LastRead 0 FirstWrite -1}
		p_cast558 {Type I LastRead 0 FirstWrite -1}
		gmem {Type O LastRead 35 FirstWrite 3}
		empty_18 {Type I LastRead 0 FirstWrite -1}
		p_cast560 {Type I LastRead 0 FirstWrite -1}
		empty_19 {Type I LastRead 0 FirstWrite -1}
		p_cast562 {Type I LastRead 0 FirstWrite -1}
		empty_20 {Type I LastRead 0 FirstWrite -1}
		p_cast564 {Type I LastRead 0 FirstWrite -1}
		empty_21 {Type I LastRead 0 FirstWrite -1}
		p_cast566 {Type I LastRead 0 FirstWrite -1}
		empty_22 {Type I LastRead 0 FirstWrite -1}
		p_cast568 {Type I LastRead 0 FirstWrite -1}
		empty_23 {Type I LastRead 0 FirstWrite -1}
		p_cast570 {Type I LastRead 0 FirstWrite -1}
		empty_24 {Type I LastRead 0 FirstWrite -1}
		p_cast572 {Type I LastRead 0 FirstWrite -1}
		empty_25 {Type I LastRead 0 FirstWrite -1}
		p_cast574 {Type I LastRead 0 FirstWrite -1}
		empty_26 {Type I LastRead 0 FirstWrite -1}
		p_cast576 {Type I LastRead 0 FirstWrite -1}
		empty_27 {Type I LastRead 0 FirstWrite -1}
		p_cast578 {Type I LastRead 0 FirstWrite -1}
		empty_28 {Type I LastRead 0 FirstWrite -1}
		p_cast580 {Type I LastRead 0 FirstWrite -1}
		empty_29 {Type I LastRead 0 FirstWrite -1}
		p_cast582 {Type I LastRead 0 FirstWrite -1}
		empty_30 {Type I LastRead 0 FirstWrite -1}
		p_cast584 {Type I LastRead 0 FirstWrite -1}
		empty_31 {Type I LastRead 0 FirstWrite -1}
		p_cast586 {Type I LastRead 0 FirstWrite -1}
		empty_32 {Type I LastRead 0 FirstWrite -1}
		zext_ln106 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN LEN 1 8 }  { m_axi_gmem_AWSIZE SIZE 1 3 }  { m_axi_gmem_AWBURST BURST 1 2 }  { m_axi_gmem_AWLOCK LOCK 1 2 }  { m_axi_gmem_AWCACHE CACHE 1 4 }  { m_axi_gmem_AWPROT PROT 1 3 }  { m_axi_gmem_AWQOS QOS 1 4 }  { m_axi_gmem_AWREGION REGION 1 4 }  { m_axi_gmem_AWUSER USER 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA DATA 1 512 }  { m_axi_gmem_WSTRB STRB 1 64 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER USER 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN LEN 1 8 }  { m_axi_gmem_ARSIZE SIZE 1 3 }  { m_axi_gmem_ARBURST BURST 1 2 }  { m_axi_gmem_ARLOCK LOCK 1 2 }  { m_axi_gmem_ARCACHE CACHE 1 4 }  { m_axi_gmem_ARPROT PROT 1 3 }  { m_axi_gmem_ARQOS QOS 1 4 }  { m_axi_gmem_ARREGION REGION 1 4 }  { m_axi_gmem_ARUSER USER 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA DATA 0 512 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER USER 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER USER 0 1 } } }
	size { ap_none {  { size in_data 0 32 } } }
	vertices { ap_none {  { vertices in_data 0 32 } } }
}

set busDeadlockParameterList { 
	{ gmem { NUM_READ_OUTSTANDING 64 NUM_WRITE_OUTSTANDING 64 MAX_READ_BURST_LENGTH 64 MAX_WRITE_BURST_LENGTH 64 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
