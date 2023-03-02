set moduleName bn
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {bn}
set C_modelType { void 0 }
set C_modelArgList {
	{ IN_r int 32 regular {axi_master 0}  }
	{ BETA int 32 regular {axi_master 0}  }
	{ GAMMA int 32 regular {axi_master 0}  }
	{ M_M int 32 regular {axi_master 0}  }
	{ M_V int 32 regular {axi_master 0}  }
	{ OUT_r int 32 regular {axi_master 1}  }
	{ in_V int 32 regular {axi_slave 0}  }
	{ beta_V int 32 regular {axi_slave 0}  }
	{ gamma_V int 32 regular {axi_slave 0}  }
	{ moving_mean_V int 32 regular {axi_slave 0}  }
	{ moving_variance_V int 32 regular {axi_slave 0}  }
	{ out_V int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "IN_r", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "in_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 99998,"step" : 1}]}]}]} , 
 	{ "Name" : "BETA", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "beta.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "beta_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 99998,"step" : 1}]}]}]} , 
 	{ "Name" : "GAMMA", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "gamma.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "gamma_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 99998,"step" : 1}]}]}]} , 
 	{ "Name" : "M_M", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "moving_mean.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "moving_mean_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 99998,"step" : 1}]}]}]} , 
 	{ "Name" : "M_V", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "moving_variance.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "moving_variance_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 99998,"step" : 1}]}]}]} , 
 	{ "Name" : "OUT_r", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "out_V","bundle": "AXILiteS"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 99998,"step" : 1}]}]}]} , 
 	{ "Name" : "in_V", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "beta_V", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "gamma_V", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "moving_mean_V", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "moving_variance_V", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "out_V", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} ]}
# RTL Port declarations: 
set portNum 290
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_IN_r_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_IN_r_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_IN_r_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_IN_r_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_IN_r_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_IN_r_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_IN_r_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_IN_r_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_IN_r_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_IN_r_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_IN_r_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_IN_r_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_IN_r_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_IN_r_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_IN_r_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_IN_r_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_IN_r_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_IN_r_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_IN_r_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_IN_r_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_IN_r_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_IN_r_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_IN_r_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_IN_r_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_IN_r_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_IN_r_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_IN_r_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_IN_r_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_IN_r_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_IN_r_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_IN_r_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_IN_r_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_IN_r_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_IN_r_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_IN_r_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_IN_r_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_IN_r_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_IN_r_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_IN_r_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_IN_r_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_IN_r_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_IN_r_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_IN_r_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_IN_r_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_IN_r_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_BETA_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_BETA_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_BETA_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_BETA_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_BETA_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_BETA_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_BETA_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_BETA_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_BETA_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_BETA_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_BETA_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_BETA_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_BETA_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_BETA_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_BETA_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_BETA_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_BETA_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_BETA_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_BETA_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_BETA_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_BETA_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_BETA_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_BETA_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_BETA_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_BETA_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_BETA_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_BETA_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_BETA_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_BETA_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_BETA_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_BETA_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_BETA_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_BETA_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_BETA_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_BETA_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_BETA_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_BETA_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_BETA_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_BETA_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_BETA_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_BETA_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_BETA_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_BETA_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_BETA_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_BETA_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_GAMMA_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_GAMMA_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_GAMMA_AWADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_GAMMA_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_GAMMA_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_GAMMA_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_GAMMA_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_GAMMA_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_GAMMA_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_GAMMA_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_GAMMA_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_GAMMA_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_GAMMA_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_GAMMA_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_GAMMA_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_GAMMA_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_GAMMA_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_GAMMA_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_GAMMA_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_GAMMA_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_GAMMA_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_GAMMA_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_GAMMA_ARADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_GAMMA_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_GAMMA_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_GAMMA_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_GAMMA_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_GAMMA_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_GAMMA_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_GAMMA_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_GAMMA_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_GAMMA_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_GAMMA_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_GAMMA_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_GAMMA_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_GAMMA_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_GAMMA_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_GAMMA_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_GAMMA_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_GAMMA_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_GAMMA_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_GAMMA_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_GAMMA_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_GAMMA_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_GAMMA_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_M_M_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_M_M_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_M_M_AWADDR sc_out sc_lv 32 signal 3 } 
	{ m_axi_M_M_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_M_M_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_M_M_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_M_M_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_M_M_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_M_M_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_M_M_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_M_M_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_M_M_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_M_M_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_M_M_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_M_M_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_M_M_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_M_M_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_M_M_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_M_M_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_M_M_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_M_M_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_M_M_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_M_M_ARADDR sc_out sc_lv 32 signal 3 } 
	{ m_axi_M_M_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_M_M_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_M_M_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_M_M_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_M_M_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_M_M_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_M_M_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_M_M_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_M_M_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_M_M_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_M_M_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_M_M_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_M_M_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_M_M_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_M_M_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_M_M_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_M_M_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_M_M_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_M_M_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_M_M_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_M_M_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_M_M_BUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_M_V_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_M_V_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_M_V_AWADDR sc_out sc_lv 32 signal 4 } 
	{ m_axi_M_V_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_M_V_AWLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_M_V_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_M_V_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_M_V_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_M_V_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_M_V_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_M_V_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_M_V_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_M_V_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_M_V_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_M_V_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_M_V_WDATA sc_out sc_lv 32 signal 4 } 
	{ m_axi_M_V_WSTRB sc_out sc_lv 4 signal 4 } 
	{ m_axi_M_V_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_M_V_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_M_V_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_M_V_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_M_V_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_M_V_ARADDR sc_out sc_lv 32 signal 4 } 
	{ m_axi_M_V_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_M_V_ARLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_M_V_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_M_V_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_M_V_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_M_V_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_M_V_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_M_V_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_M_V_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_M_V_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_M_V_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_M_V_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_M_V_RDATA sc_in sc_lv 32 signal 4 } 
	{ m_axi_M_V_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_M_V_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_M_V_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_M_V_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_M_V_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_M_V_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_M_V_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_M_V_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_M_V_BUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_OUT_r_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_OUT_r_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_OUT_r_AWADDR sc_out sc_lv 32 signal 5 } 
	{ m_axi_OUT_r_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_OUT_r_AWLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_OUT_r_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_OUT_r_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_OUT_r_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_OUT_r_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_OUT_r_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_OUT_r_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_OUT_r_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_OUT_r_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_OUT_r_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_OUT_r_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_OUT_r_WDATA sc_out sc_lv 32 signal 5 } 
	{ m_axi_OUT_r_WSTRB sc_out sc_lv 4 signal 5 } 
	{ m_axi_OUT_r_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_OUT_r_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_OUT_r_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_OUT_r_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_OUT_r_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_OUT_r_ARADDR sc_out sc_lv 32 signal 5 } 
	{ m_axi_OUT_r_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_OUT_r_ARLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_OUT_r_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_OUT_r_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_OUT_r_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_OUT_r_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_OUT_r_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_OUT_r_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_OUT_r_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_OUT_r_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_OUT_r_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_OUT_r_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_OUT_r_RDATA sc_in sc_lv 32 signal 5 } 
	{ m_axi_OUT_r_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_OUT_r_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_OUT_r_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_OUT_r_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_OUT_r_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_OUT_r_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_OUT_r_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_OUT_r_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_OUT_r_BUSER sc_in sc_lv 1 signal 5 } 
	{ s_axi_CTRL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CTRL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"bn","role":"start","value":"0","valid_bit":"0"},{"name":"bn","role":"continue","value":"0","valid_bit":"4"},{"name":"bn","role":"auto_start","value":"0","valid_bit":"7"},{"name":"in_V","role":"data","value":"16"},{"name":"beta_V","role":"data","value":"24"},{"name":"gamma_V","role":"data","value":"32"},{"name":"moving_mean_V","role":"data","value":"40"},{"name":"moving_variance_V","role":"data","value":"48"},{"name":"out_V","role":"data","value":"56"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"bn","role":"start","value":"0","valid_bit":"0"},{"name":"bn","role":"done","value":"0","valid_bit":"1"},{"name":"bn","role":"idle","value":"0","valid_bit":"2"},{"name":"bn","role":"ready","value":"0","valid_bit":"3"},{"name":"bn","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_IN_r_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "AWVALID" }} , 
 	{ "name": "m_axi_IN_r_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "AWREADY" }} , 
 	{ "name": "m_axi_IN_r_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IN_r", "role": "AWADDR" }} , 
 	{ "name": "m_axi_IN_r_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "AWID" }} , 
 	{ "name": "m_axi_IN_r_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "IN_r", "role": "AWLEN" }} , 
 	{ "name": "m_axi_IN_r_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "IN_r", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_IN_r_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN_r", "role": "AWBURST" }} , 
 	{ "name": "m_axi_IN_r_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN_r", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_IN_r_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN_r", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_IN_r_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "IN_r", "role": "AWPROT" }} , 
 	{ "name": "m_axi_IN_r_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN_r", "role": "AWQOS" }} , 
 	{ "name": "m_axi_IN_r_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN_r", "role": "AWREGION" }} , 
 	{ "name": "m_axi_IN_r_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "AWUSER" }} , 
 	{ "name": "m_axi_IN_r_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "WVALID" }} , 
 	{ "name": "m_axi_IN_r_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "WREADY" }} , 
 	{ "name": "m_axi_IN_r_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IN_r", "role": "WDATA" }} , 
 	{ "name": "m_axi_IN_r_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN_r", "role": "WSTRB" }} , 
 	{ "name": "m_axi_IN_r_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "WLAST" }} , 
 	{ "name": "m_axi_IN_r_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "WID" }} , 
 	{ "name": "m_axi_IN_r_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "WUSER" }} , 
 	{ "name": "m_axi_IN_r_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "ARVALID" }} , 
 	{ "name": "m_axi_IN_r_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "ARREADY" }} , 
 	{ "name": "m_axi_IN_r_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IN_r", "role": "ARADDR" }} , 
 	{ "name": "m_axi_IN_r_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "ARID" }} , 
 	{ "name": "m_axi_IN_r_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "IN_r", "role": "ARLEN" }} , 
 	{ "name": "m_axi_IN_r_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "IN_r", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_IN_r_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN_r", "role": "ARBURST" }} , 
 	{ "name": "m_axi_IN_r_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN_r", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_IN_r_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN_r", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_IN_r_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "IN_r", "role": "ARPROT" }} , 
 	{ "name": "m_axi_IN_r_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN_r", "role": "ARQOS" }} , 
 	{ "name": "m_axi_IN_r_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN_r", "role": "ARREGION" }} , 
 	{ "name": "m_axi_IN_r_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "ARUSER" }} , 
 	{ "name": "m_axi_IN_r_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "RVALID" }} , 
 	{ "name": "m_axi_IN_r_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "RREADY" }} , 
 	{ "name": "m_axi_IN_r_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IN_r", "role": "RDATA" }} , 
 	{ "name": "m_axi_IN_r_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "RLAST" }} , 
 	{ "name": "m_axi_IN_r_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "RID" }} , 
 	{ "name": "m_axi_IN_r_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "RUSER" }} , 
 	{ "name": "m_axi_IN_r_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN_r", "role": "RRESP" }} , 
 	{ "name": "m_axi_IN_r_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "BVALID" }} , 
 	{ "name": "m_axi_IN_r_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "BREADY" }} , 
 	{ "name": "m_axi_IN_r_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN_r", "role": "BRESP" }} , 
 	{ "name": "m_axi_IN_r_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "BID" }} , 
 	{ "name": "m_axi_IN_r_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "BUSER" }} , 
 	{ "name": "m_axi_BETA_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BETA", "role": "AWVALID" }} , 
 	{ "name": "m_axi_BETA_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BETA", "role": "AWREADY" }} , 
 	{ "name": "m_axi_BETA_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "BETA", "role": "AWADDR" }} , 
 	{ "name": "m_axi_BETA_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BETA", "role": "AWID" }} , 
 	{ "name": "m_axi_BETA_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "BETA", "role": "AWLEN" }} , 
 	{ "name": "m_axi_BETA_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "BETA", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_BETA_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "BETA", "role": "AWBURST" }} , 
 	{ "name": "m_axi_BETA_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "BETA", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_BETA_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "BETA", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_BETA_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "BETA", "role": "AWPROT" }} , 
 	{ "name": "m_axi_BETA_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "BETA", "role": "AWQOS" }} , 
 	{ "name": "m_axi_BETA_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "BETA", "role": "AWREGION" }} , 
 	{ "name": "m_axi_BETA_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BETA", "role": "AWUSER" }} , 
 	{ "name": "m_axi_BETA_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BETA", "role": "WVALID" }} , 
 	{ "name": "m_axi_BETA_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BETA", "role": "WREADY" }} , 
 	{ "name": "m_axi_BETA_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "BETA", "role": "WDATA" }} , 
 	{ "name": "m_axi_BETA_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "BETA", "role": "WSTRB" }} , 
 	{ "name": "m_axi_BETA_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BETA", "role": "WLAST" }} , 
 	{ "name": "m_axi_BETA_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BETA", "role": "WID" }} , 
 	{ "name": "m_axi_BETA_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BETA", "role": "WUSER" }} , 
 	{ "name": "m_axi_BETA_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BETA", "role": "ARVALID" }} , 
 	{ "name": "m_axi_BETA_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BETA", "role": "ARREADY" }} , 
 	{ "name": "m_axi_BETA_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "BETA", "role": "ARADDR" }} , 
 	{ "name": "m_axi_BETA_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BETA", "role": "ARID" }} , 
 	{ "name": "m_axi_BETA_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "BETA", "role": "ARLEN" }} , 
 	{ "name": "m_axi_BETA_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "BETA", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_BETA_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "BETA", "role": "ARBURST" }} , 
 	{ "name": "m_axi_BETA_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "BETA", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_BETA_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "BETA", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_BETA_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "BETA", "role": "ARPROT" }} , 
 	{ "name": "m_axi_BETA_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "BETA", "role": "ARQOS" }} , 
 	{ "name": "m_axi_BETA_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "BETA", "role": "ARREGION" }} , 
 	{ "name": "m_axi_BETA_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BETA", "role": "ARUSER" }} , 
 	{ "name": "m_axi_BETA_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BETA", "role": "RVALID" }} , 
 	{ "name": "m_axi_BETA_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BETA", "role": "RREADY" }} , 
 	{ "name": "m_axi_BETA_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "BETA", "role": "RDATA" }} , 
 	{ "name": "m_axi_BETA_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BETA", "role": "RLAST" }} , 
 	{ "name": "m_axi_BETA_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BETA", "role": "RID" }} , 
 	{ "name": "m_axi_BETA_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BETA", "role": "RUSER" }} , 
 	{ "name": "m_axi_BETA_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "BETA", "role": "RRESP" }} , 
 	{ "name": "m_axi_BETA_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BETA", "role": "BVALID" }} , 
 	{ "name": "m_axi_BETA_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BETA", "role": "BREADY" }} , 
 	{ "name": "m_axi_BETA_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "BETA", "role": "BRESP" }} , 
 	{ "name": "m_axi_BETA_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BETA", "role": "BID" }} , 
 	{ "name": "m_axi_BETA_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "BETA", "role": "BUSER" }} , 
 	{ "name": "m_axi_GAMMA_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "GAMMA", "role": "AWVALID" }} , 
 	{ "name": "m_axi_GAMMA_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "GAMMA", "role": "AWREADY" }} , 
 	{ "name": "m_axi_GAMMA_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "GAMMA", "role": "AWADDR" }} , 
 	{ "name": "m_axi_GAMMA_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "GAMMA", "role": "AWID" }} , 
 	{ "name": "m_axi_GAMMA_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "GAMMA", "role": "AWLEN" }} , 
 	{ "name": "m_axi_GAMMA_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "GAMMA", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_GAMMA_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "GAMMA", "role": "AWBURST" }} , 
 	{ "name": "m_axi_GAMMA_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "GAMMA", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_GAMMA_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "GAMMA", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_GAMMA_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "GAMMA", "role": "AWPROT" }} , 
 	{ "name": "m_axi_GAMMA_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "GAMMA", "role": "AWQOS" }} , 
 	{ "name": "m_axi_GAMMA_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "GAMMA", "role": "AWREGION" }} , 
 	{ "name": "m_axi_GAMMA_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "GAMMA", "role": "AWUSER" }} , 
 	{ "name": "m_axi_GAMMA_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "GAMMA", "role": "WVALID" }} , 
 	{ "name": "m_axi_GAMMA_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "GAMMA", "role": "WREADY" }} , 
 	{ "name": "m_axi_GAMMA_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "GAMMA", "role": "WDATA" }} , 
 	{ "name": "m_axi_GAMMA_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "GAMMA", "role": "WSTRB" }} , 
 	{ "name": "m_axi_GAMMA_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "GAMMA", "role": "WLAST" }} , 
 	{ "name": "m_axi_GAMMA_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "GAMMA", "role": "WID" }} , 
 	{ "name": "m_axi_GAMMA_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "GAMMA", "role": "WUSER" }} , 
 	{ "name": "m_axi_GAMMA_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "GAMMA", "role": "ARVALID" }} , 
 	{ "name": "m_axi_GAMMA_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "GAMMA", "role": "ARREADY" }} , 
 	{ "name": "m_axi_GAMMA_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "GAMMA", "role": "ARADDR" }} , 
 	{ "name": "m_axi_GAMMA_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "GAMMA", "role": "ARID" }} , 
 	{ "name": "m_axi_GAMMA_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "GAMMA", "role": "ARLEN" }} , 
 	{ "name": "m_axi_GAMMA_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "GAMMA", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_GAMMA_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "GAMMA", "role": "ARBURST" }} , 
 	{ "name": "m_axi_GAMMA_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "GAMMA", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_GAMMA_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "GAMMA", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_GAMMA_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "GAMMA", "role": "ARPROT" }} , 
 	{ "name": "m_axi_GAMMA_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "GAMMA", "role": "ARQOS" }} , 
 	{ "name": "m_axi_GAMMA_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "GAMMA", "role": "ARREGION" }} , 
 	{ "name": "m_axi_GAMMA_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "GAMMA", "role": "ARUSER" }} , 
 	{ "name": "m_axi_GAMMA_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "GAMMA", "role": "RVALID" }} , 
 	{ "name": "m_axi_GAMMA_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "GAMMA", "role": "RREADY" }} , 
 	{ "name": "m_axi_GAMMA_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "GAMMA", "role": "RDATA" }} , 
 	{ "name": "m_axi_GAMMA_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "GAMMA", "role": "RLAST" }} , 
 	{ "name": "m_axi_GAMMA_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "GAMMA", "role": "RID" }} , 
 	{ "name": "m_axi_GAMMA_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "GAMMA", "role": "RUSER" }} , 
 	{ "name": "m_axi_GAMMA_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "GAMMA", "role": "RRESP" }} , 
 	{ "name": "m_axi_GAMMA_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "GAMMA", "role": "BVALID" }} , 
 	{ "name": "m_axi_GAMMA_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "GAMMA", "role": "BREADY" }} , 
 	{ "name": "m_axi_GAMMA_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "GAMMA", "role": "BRESP" }} , 
 	{ "name": "m_axi_GAMMA_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "GAMMA", "role": "BID" }} , 
 	{ "name": "m_axi_GAMMA_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "GAMMA", "role": "BUSER" }} , 
 	{ "name": "m_axi_M_M_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_M", "role": "AWVALID" }} , 
 	{ "name": "m_axi_M_M_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_M", "role": "AWREADY" }} , 
 	{ "name": "m_axi_M_M_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_M", "role": "AWADDR" }} , 
 	{ "name": "m_axi_M_M_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "M_M", "role": "AWID" }} , 
 	{ "name": "m_axi_M_M_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "M_M", "role": "AWLEN" }} , 
 	{ "name": "m_axi_M_M_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "M_M", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_M_M_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "M_M", "role": "AWBURST" }} , 
 	{ "name": "m_axi_M_M_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "M_M", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_M_M_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "M_M", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_M_M_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "M_M", "role": "AWPROT" }} , 
 	{ "name": "m_axi_M_M_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "M_M", "role": "AWQOS" }} , 
 	{ "name": "m_axi_M_M_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "M_M", "role": "AWREGION" }} , 
 	{ "name": "m_axi_M_M_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "M_M", "role": "AWUSER" }} , 
 	{ "name": "m_axi_M_M_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_M", "role": "WVALID" }} , 
 	{ "name": "m_axi_M_M_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_M", "role": "WREADY" }} , 
 	{ "name": "m_axi_M_M_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_M", "role": "WDATA" }} , 
 	{ "name": "m_axi_M_M_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "M_M", "role": "WSTRB" }} , 
 	{ "name": "m_axi_M_M_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_M", "role": "WLAST" }} , 
 	{ "name": "m_axi_M_M_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "M_M", "role": "WID" }} , 
 	{ "name": "m_axi_M_M_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "M_M", "role": "WUSER" }} , 
 	{ "name": "m_axi_M_M_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_M", "role": "ARVALID" }} , 
 	{ "name": "m_axi_M_M_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_M", "role": "ARREADY" }} , 
 	{ "name": "m_axi_M_M_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_M", "role": "ARADDR" }} , 
 	{ "name": "m_axi_M_M_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "M_M", "role": "ARID" }} , 
 	{ "name": "m_axi_M_M_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "M_M", "role": "ARLEN" }} , 
 	{ "name": "m_axi_M_M_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "M_M", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_M_M_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "M_M", "role": "ARBURST" }} , 
 	{ "name": "m_axi_M_M_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "M_M", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_M_M_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "M_M", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_M_M_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "M_M", "role": "ARPROT" }} , 
 	{ "name": "m_axi_M_M_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "M_M", "role": "ARQOS" }} , 
 	{ "name": "m_axi_M_M_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "M_M", "role": "ARREGION" }} , 
 	{ "name": "m_axi_M_M_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "M_M", "role": "ARUSER" }} , 
 	{ "name": "m_axi_M_M_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_M", "role": "RVALID" }} , 
 	{ "name": "m_axi_M_M_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_M", "role": "RREADY" }} , 
 	{ "name": "m_axi_M_M_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_M", "role": "RDATA" }} , 
 	{ "name": "m_axi_M_M_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_M", "role": "RLAST" }} , 
 	{ "name": "m_axi_M_M_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "M_M", "role": "RID" }} , 
 	{ "name": "m_axi_M_M_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "M_M", "role": "RUSER" }} , 
 	{ "name": "m_axi_M_M_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "M_M", "role": "RRESP" }} , 
 	{ "name": "m_axi_M_M_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_M", "role": "BVALID" }} , 
 	{ "name": "m_axi_M_M_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_M", "role": "BREADY" }} , 
 	{ "name": "m_axi_M_M_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "M_M", "role": "BRESP" }} , 
 	{ "name": "m_axi_M_M_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "M_M", "role": "BID" }} , 
 	{ "name": "m_axi_M_M_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "M_M", "role": "BUSER" }} , 
 	{ "name": "m_axi_M_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_M_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_M_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_M_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V", "role": "AWID" }} , 
 	{ "name": "m_axi_M_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "M_V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_M_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "M_V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_M_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "M_V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_M_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "M_V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_M_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "M_V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_M_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "M_V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_M_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "M_V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_M_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "M_V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_M_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_M_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V", "role": "WVALID" }} , 
 	{ "name": "m_axi_M_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V", "role": "WREADY" }} , 
 	{ "name": "m_axi_M_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_V", "role": "WDATA" }} , 
 	{ "name": "m_axi_M_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "M_V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_M_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V", "role": "WLAST" }} , 
 	{ "name": "m_axi_M_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V", "role": "WID" }} , 
 	{ "name": "m_axi_M_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V", "role": "WUSER" }} , 
 	{ "name": "m_axi_M_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_M_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_M_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_M_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V", "role": "ARID" }} , 
 	{ "name": "m_axi_M_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "M_V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_M_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "M_V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_M_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "M_V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_M_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "M_V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_M_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "M_V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_M_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "M_V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_M_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "M_V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_M_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "M_V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_M_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_M_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V", "role": "RVALID" }} , 
 	{ "name": "m_axi_M_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V", "role": "RREADY" }} , 
 	{ "name": "m_axi_M_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_V", "role": "RDATA" }} , 
 	{ "name": "m_axi_M_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V", "role": "RLAST" }} , 
 	{ "name": "m_axi_M_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V", "role": "RID" }} , 
 	{ "name": "m_axi_M_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V", "role": "RUSER" }} , 
 	{ "name": "m_axi_M_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "M_V", "role": "RRESP" }} , 
 	{ "name": "m_axi_M_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V", "role": "BVALID" }} , 
 	{ "name": "m_axi_M_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V", "role": "BREADY" }} , 
 	{ "name": "m_axi_M_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "M_V", "role": "BRESP" }} , 
 	{ "name": "m_axi_M_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V", "role": "BID" }} , 
 	{ "name": "m_axi_M_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "M_V", "role": "BUSER" }} , 
 	{ "name": "m_axi_OUT_r_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWVALID" }} , 
 	{ "name": "m_axi_OUT_r_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWREADY" }} , 
 	{ "name": "m_axi_OUT_r_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWADDR" }} , 
 	{ "name": "m_axi_OUT_r_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWID" }} , 
 	{ "name": "m_axi_OUT_r_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWLEN" }} , 
 	{ "name": "m_axi_OUT_r_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_OUT_r_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWBURST" }} , 
 	{ "name": "m_axi_OUT_r_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_OUT_r_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_OUT_r_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWPROT" }} , 
 	{ "name": "m_axi_OUT_r_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWQOS" }} , 
 	{ "name": "m_axi_OUT_r_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWREGION" }} , 
 	{ "name": "m_axi_OUT_r_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWUSER" }} , 
 	{ "name": "m_axi_OUT_r_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "WVALID" }} , 
 	{ "name": "m_axi_OUT_r_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "WREADY" }} , 
 	{ "name": "m_axi_OUT_r_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_r", "role": "WDATA" }} , 
 	{ "name": "m_axi_OUT_r_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUT_r", "role": "WSTRB" }} , 
 	{ "name": "m_axi_OUT_r_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "WLAST" }} , 
 	{ "name": "m_axi_OUT_r_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "WID" }} , 
 	{ "name": "m_axi_OUT_r_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "WUSER" }} , 
 	{ "name": "m_axi_OUT_r_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARVALID" }} , 
 	{ "name": "m_axi_OUT_r_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARREADY" }} , 
 	{ "name": "m_axi_OUT_r_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARADDR" }} , 
 	{ "name": "m_axi_OUT_r_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARID" }} , 
 	{ "name": "m_axi_OUT_r_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARLEN" }} , 
 	{ "name": "m_axi_OUT_r_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_OUT_r_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARBURST" }} , 
 	{ "name": "m_axi_OUT_r_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_OUT_r_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_OUT_r_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARPROT" }} , 
 	{ "name": "m_axi_OUT_r_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARQOS" }} , 
 	{ "name": "m_axi_OUT_r_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARREGION" }} , 
 	{ "name": "m_axi_OUT_r_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARUSER" }} , 
 	{ "name": "m_axi_OUT_r_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "RVALID" }} , 
 	{ "name": "m_axi_OUT_r_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "RREADY" }} , 
 	{ "name": "m_axi_OUT_r_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_r", "role": "RDATA" }} , 
 	{ "name": "m_axi_OUT_r_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "RLAST" }} , 
 	{ "name": "m_axi_OUT_r_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "RID" }} , 
 	{ "name": "m_axi_OUT_r_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "RUSER" }} , 
 	{ "name": "m_axi_OUT_r_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUT_r", "role": "RRESP" }} , 
 	{ "name": "m_axi_OUT_r_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "BVALID" }} , 
 	{ "name": "m_axi_OUT_r_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "BREADY" }} , 
 	{ "name": "m_axi_OUT_r_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUT_r", "role": "BRESP" }} , 
 	{ "name": "m_axi_OUT_r_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "BID" }} , 
 	{ "name": "m_axi_OUT_r_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"],
		"CDFG" : "bn",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "120", "EstimateLatencyMax" : "120",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "IN_r", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "IN_r_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "IN_r_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "BETA", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "BETA_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "BETA_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "GAMMA", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "GAMMA_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "GAMMA_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "M_M", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "M_M_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "M_M_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "M_V", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "M_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "M_V_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "OUT_r", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "OUT_r_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "OUT_r_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "OUT_r_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "beta_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "gamma_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "moving_mean_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "moving_variance_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bn_CTRL_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bn_IN_r_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bn_BETA_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bn_GAMMA_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bn_M_M_m_axi_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bn_M_V_m_axi_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bn_OUT_r_m_axi_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fixed_16_6_s_fu_307", "Parent" : "0",
		"CDFG" : "sqrt_fixed_16_6_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "7", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fixed_16_6_s_fu_312", "Parent" : "0",
		"CDFG" : "sqrt_fixed_16_6_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "7", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bn_sdiv_27ns_14nsbkb_U2", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bn_sdiv_27ns_14nsbkb_U3", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bn_am_submul_16s_cud_U4", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bn_am_submul_16s_cud_U5", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	bn {
		IN_r {Type I LastRead 17 FirstWrite -1}
		BETA {Type I LastRead 19 FirstWrite -1}
		GAMMA {Type I LastRead 17 FirstWrite -1}
		M_M {Type I LastRead 17 FirstWrite -1}
		M_V {Type I LastRead 9 FirstWrite -1}
		OUT_r {Type O LastRead 9 FirstWrite 52}
		in_V {Type I LastRead 0 FirstWrite -1}
		beta_V {Type I LastRead 0 FirstWrite -1}
		gamma_V {Type I LastRead 0 FirstWrite -1}
		moving_mean_V {Type I LastRead 0 FirstWrite -1}
		moving_variance_V {Type I LastRead 0 FirstWrite -1}
		out_V {Type I LastRead 0 FirstWrite -1}}
	sqrt_fixed_16_6_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	sqrt_fixed_16_6_s {
		x_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "120", "Max" : "120"}
	, {"Name" : "Interval", "Min" : "121", "Max" : "121"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	IN_r { m_axi {  { m_axi_IN_r_AWVALID VALID 1 1 }  { m_axi_IN_r_AWREADY READY 0 1 }  { m_axi_IN_r_AWADDR ADDR 1 32 }  { m_axi_IN_r_AWID ID 1 1 }  { m_axi_IN_r_AWLEN LEN 1 8 }  { m_axi_IN_r_AWSIZE SIZE 1 3 }  { m_axi_IN_r_AWBURST BURST 1 2 }  { m_axi_IN_r_AWLOCK LOCK 1 2 }  { m_axi_IN_r_AWCACHE CACHE 1 4 }  { m_axi_IN_r_AWPROT PROT 1 3 }  { m_axi_IN_r_AWQOS QOS 1 4 }  { m_axi_IN_r_AWREGION REGION 1 4 }  { m_axi_IN_r_AWUSER USER 1 1 }  { m_axi_IN_r_WVALID VALID 1 1 }  { m_axi_IN_r_WREADY READY 0 1 }  { m_axi_IN_r_WDATA DATA 1 32 }  { m_axi_IN_r_WSTRB STRB 1 4 }  { m_axi_IN_r_WLAST LAST 1 1 }  { m_axi_IN_r_WID ID 1 1 }  { m_axi_IN_r_WUSER USER 1 1 }  { m_axi_IN_r_ARVALID VALID 1 1 }  { m_axi_IN_r_ARREADY READY 0 1 }  { m_axi_IN_r_ARADDR ADDR 1 32 }  { m_axi_IN_r_ARID ID 1 1 }  { m_axi_IN_r_ARLEN LEN 1 8 }  { m_axi_IN_r_ARSIZE SIZE 1 3 }  { m_axi_IN_r_ARBURST BURST 1 2 }  { m_axi_IN_r_ARLOCK LOCK 1 2 }  { m_axi_IN_r_ARCACHE CACHE 1 4 }  { m_axi_IN_r_ARPROT PROT 1 3 }  { m_axi_IN_r_ARQOS QOS 1 4 }  { m_axi_IN_r_ARREGION REGION 1 4 }  { m_axi_IN_r_ARUSER USER 1 1 }  { m_axi_IN_r_RVALID VALID 0 1 }  { m_axi_IN_r_RREADY READY 1 1 }  { m_axi_IN_r_RDATA DATA 0 32 }  { m_axi_IN_r_RLAST LAST 0 1 }  { m_axi_IN_r_RID ID 0 1 }  { m_axi_IN_r_RUSER USER 0 1 }  { m_axi_IN_r_RRESP RESP 0 2 }  { m_axi_IN_r_BVALID VALID 0 1 }  { m_axi_IN_r_BREADY READY 1 1 }  { m_axi_IN_r_BRESP RESP 0 2 }  { m_axi_IN_r_BID ID 0 1 }  { m_axi_IN_r_BUSER USER 0 1 } } }
	BETA { m_axi {  { m_axi_BETA_AWVALID VALID 1 1 }  { m_axi_BETA_AWREADY READY 0 1 }  { m_axi_BETA_AWADDR ADDR 1 32 }  { m_axi_BETA_AWID ID 1 1 }  { m_axi_BETA_AWLEN LEN 1 8 }  { m_axi_BETA_AWSIZE SIZE 1 3 }  { m_axi_BETA_AWBURST BURST 1 2 }  { m_axi_BETA_AWLOCK LOCK 1 2 }  { m_axi_BETA_AWCACHE CACHE 1 4 }  { m_axi_BETA_AWPROT PROT 1 3 }  { m_axi_BETA_AWQOS QOS 1 4 }  { m_axi_BETA_AWREGION REGION 1 4 }  { m_axi_BETA_AWUSER USER 1 1 }  { m_axi_BETA_WVALID VALID 1 1 }  { m_axi_BETA_WREADY READY 0 1 }  { m_axi_BETA_WDATA DATA 1 32 }  { m_axi_BETA_WSTRB STRB 1 4 }  { m_axi_BETA_WLAST LAST 1 1 }  { m_axi_BETA_WID ID 1 1 }  { m_axi_BETA_WUSER USER 1 1 }  { m_axi_BETA_ARVALID VALID 1 1 }  { m_axi_BETA_ARREADY READY 0 1 }  { m_axi_BETA_ARADDR ADDR 1 32 }  { m_axi_BETA_ARID ID 1 1 }  { m_axi_BETA_ARLEN LEN 1 8 }  { m_axi_BETA_ARSIZE SIZE 1 3 }  { m_axi_BETA_ARBURST BURST 1 2 }  { m_axi_BETA_ARLOCK LOCK 1 2 }  { m_axi_BETA_ARCACHE CACHE 1 4 }  { m_axi_BETA_ARPROT PROT 1 3 }  { m_axi_BETA_ARQOS QOS 1 4 }  { m_axi_BETA_ARREGION REGION 1 4 }  { m_axi_BETA_ARUSER USER 1 1 }  { m_axi_BETA_RVALID VALID 0 1 }  { m_axi_BETA_RREADY READY 1 1 }  { m_axi_BETA_RDATA DATA 0 32 }  { m_axi_BETA_RLAST LAST 0 1 }  { m_axi_BETA_RID ID 0 1 }  { m_axi_BETA_RUSER USER 0 1 }  { m_axi_BETA_RRESP RESP 0 2 }  { m_axi_BETA_BVALID VALID 0 1 }  { m_axi_BETA_BREADY READY 1 1 }  { m_axi_BETA_BRESP RESP 0 2 }  { m_axi_BETA_BID ID 0 1 }  { m_axi_BETA_BUSER USER 0 1 } } }
	GAMMA { m_axi {  { m_axi_GAMMA_AWVALID VALID 1 1 }  { m_axi_GAMMA_AWREADY READY 0 1 }  { m_axi_GAMMA_AWADDR ADDR 1 32 }  { m_axi_GAMMA_AWID ID 1 1 }  { m_axi_GAMMA_AWLEN LEN 1 8 }  { m_axi_GAMMA_AWSIZE SIZE 1 3 }  { m_axi_GAMMA_AWBURST BURST 1 2 }  { m_axi_GAMMA_AWLOCK LOCK 1 2 }  { m_axi_GAMMA_AWCACHE CACHE 1 4 }  { m_axi_GAMMA_AWPROT PROT 1 3 }  { m_axi_GAMMA_AWQOS QOS 1 4 }  { m_axi_GAMMA_AWREGION REGION 1 4 }  { m_axi_GAMMA_AWUSER USER 1 1 }  { m_axi_GAMMA_WVALID VALID 1 1 }  { m_axi_GAMMA_WREADY READY 0 1 }  { m_axi_GAMMA_WDATA DATA 1 32 }  { m_axi_GAMMA_WSTRB STRB 1 4 }  { m_axi_GAMMA_WLAST LAST 1 1 }  { m_axi_GAMMA_WID ID 1 1 }  { m_axi_GAMMA_WUSER USER 1 1 }  { m_axi_GAMMA_ARVALID VALID 1 1 }  { m_axi_GAMMA_ARREADY READY 0 1 }  { m_axi_GAMMA_ARADDR ADDR 1 32 }  { m_axi_GAMMA_ARID ID 1 1 }  { m_axi_GAMMA_ARLEN LEN 1 8 }  { m_axi_GAMMA_ARSIZE SIZE 1 3 }  { m_axi_GAMMA_ARBURST BURST 1 2 }  { m_axi_GAMMA_ARLOCK LOCK 1 2 }  { m_axi_GAMMA_ARCACHE CACHE 1 4 }  { m_axi_GAMMA_ARPROT PROT 1 3 }  { m_axi_GAMMA_ARQOS QOS 1 4 }  { m_axi_GAMMA_ARREGION REGION 1 4 }  { m_axi_GAMMA_ARUSER USER 1 1 }  { m_axi_GAMMA_RVALID VALID 0 1 }  { m_axi_GAMMA_RREADY READY 1 1 }  { m_axi_GAMMA_RDATA DATA 0 32 }  { m_axi_GAMMA_RLAST LAST 0 1 }  { m_axi_GAMMA_RID ID 0 1 }  { m_axi_GAMMA_RUSER USER 0 1 }  { m_axi_GAMMA_RRESP RESP 0 2 }  { m_axi_GAMMA_BVALID VALID 0 1 }  { m_axi_GAMMA_BREADY READY 1 1 }  { m_axi_GAMMA_BRESP RESP 0 2 }  { m_axi_GAMMA_BID ID 0 1 }  { m_axi_GAMMA_BUSER USER 0 1 } } }
	M_M { m_axi {  { m_axi_M_M_AWVALID VALID 1 1 }  { m_axi_M_M_AWREADY READY 0 1 }  { m_axi_M_M_AWADDR ADDR 1 32 }  { m_axi_M_M_AWID ID 1 1 }  { m_axi_M_M_AWLEN LEN 1 8 }  { m_axi_M_M_AWSIZE SIZE 1 3 }  { m_axi_M_M_AWBURST BURST 1 2 }  { m_axi_M_M_AWLOCK LOCK 1 2 }  { m_axi_M_M_AWCACHE CACHE 1 4 }  { m_axi_M_M_AWPROT PROT 1 3 }  { m_axi_M_M_AWQOS QOS 1 4 }  { m_axi_M_M_AWREGION REGION 1 4 }  { m_axi_M_M_AWUSER USER 1 1 }  { m_axi_M_M_WVALID VALID 1 1 }  { m_axi_M_M_WREADY READY 0 1 }  { m_axi_M_M_WDATA DATA 1 32 }  { m_axi_M_M_WSTRB STRB 1 4 }  { m_axi_M_M_WLAST LAST 1 1 }  { m_axi_M_M_WID ID 1 1 }  { m_axi_M_M_WUSER USER 1 1 }  { m_axi_M_M_ARVALID VALID 1 1 }  { m_axi_M_M_ARREADY READY 0 1 }  { m_axi_M_M_ARADDR ADDR 1 32 }  { m_axi_M_M_ARID ID 1 1 }  { m_axi_M_M_ARLEN LEN 1 8 }  { m_axi_M_M_ARSIZE SIZE 1 3 }  { m_axi_M_M_ARBURST BURST 1 2 }  { m_axi_M_M_ARLOCK LOCK 1 2 }  { m_axi_M_M_ARCACHE CACHE 1 4 }  { m_axi_M_M_ARPROT PROT 1 3 }  { m_axi_M_M_ARQOS QOS 1 4 }  { m_axi_M_M_ARREGION REGION 1 4 }  { m_axi_M_M_ARUSER USER 1 1 }  { m_axi_M_M_RVALID VALID 0 1 }  { m_axi_M_M_RREADY READY 1 1 }  { m_axi_M_M_RDATA DATA 0 32 }  { m_axi_M_M_RLAST LAST 0 1 }  { m_axi_M_M_RID ID 0 1 }  { m_axi_M_M_RUSER USER 0 1 }  { m_axi_M_M_RRESP RESP 0 2 }  { m_axi_M_M_BVALID VALID 0 1 }  { m_axi_M_M_BREADY READY 1 1 }  { m_axi_M_M_BRESP RESP 0 2 }  { m_axi_M_M_BID ID 0 1 }  { m_axi_M_M_BUSER USER 0 1 } } }
	M_V { m_axi {  { m_axi_M_V_AWVALID VALID 1 1 }  { m_axi_M_V_AWREADY READY 0 1 }  { m_axi_M_V_AWADDR ADDR 1 32 }  { m_axi_M_V_AWID ID 1 1 }  { m_axi_M_V_AWLEN LEN 1 8 }  { m_axi_M_V_AWSIZE SIZE 1 3 }  { m_axi_M_V_AWBURST BURST 1 2 }  { m_axi_M_V_AWLOCK LOCK 1 2 }  { m_axi_M_V_AWCACHE CACHE 1 4 }  { m_axi_M_V_AWPROT PROT 1 3 }  { m_axi_M_V_AWQOS QOS 1 4 }  { m_axi_M_V_AWREGION REGION 1 4 }  { m_axi_M_V_AWUSER USER 1 1 }  { m_axi_M_V_WVALID VALID 1 1 }  { m_axi_M_V_WREADY READY 0 1 }  { m_axi_M_V_WDATA DATA 1 32 }  { m_axi_M_V_WSTRB STRB 1 4 }  { m_axi_M_V_WLAST LAST 1 1 }  { m_axi_M_V_WID ID 1 1 }  { m_axi_M_V_WUSER USER 1 1 }  { m_axi_M_V_ARVALID VALID 1 1 }  { m_axi_M_V_ARREADY READY 0 1 }  { m_axi_M_V_ARADDR ADDR 1 32 }  { m_axi_M_V_ARID ID 1 1 }  { m_axi_M_V_ARLEN LEN 1 8 }  { m_axi_M_V_ARSIZE SIZE 1 3 }  { m_axi_M_V_ARBURST BURST 1 2 }  { m_axi_M_V_ARLOCK LOCK 1 2 }  { m_axi_M_V_ARCACHE CACHE 1 4 }  { m_axi_M_V_ARPROT PROT 1 3 }  { m_axi_M_V_ARQOS QOS 1 4 }  { m_axi_M_V_ARREGION REGION 1 4 }  { m_axi_M_V_ARUSER USER 1 1 }  { m_axi_M_V_RVALID VALID 0 1 }  { m_axi_M_V_RREADY READY 1 1 }  { m_axi_M_V_RDATA DATA 0 32 }  { m_axi_M_V_RLAST LAST 0 1 }  { m_axi_M_V_RID ID 0 1 }  { m_axi_M_V_RUSER USER 0 1 }  { m_axi_M_V_RRESP RESP 0 2 }  { m_axi_M_V_BVALID VALID 0 1 }  { m_axi_M_V_BREADY READY 1 1 }  { m_axi_M_V_BRESP RESP 0 2 }  { m_axi_M_V_BID ID 0 1 }  { m_axi_M_V_BUSER USER 0 1 } } }
	OUT_r { m_axi {  { m_axi_OUT_r_AWVALID VALID 1 1 }  { m_axi_OUT_r_AWREADY READY 0 1 }  { m_axi_OUT_r_AWADDR ADDR 1 32 }  { m_axi_OUT_r_AWID ID 1 1 }  { m_axi_OUT_r_AWLEN LEN 1 8 }  { m_axi_OUT_r_AWSIZE SIZE 1 3 }  { m_axi_OUT_r_AWBURST BURST 1 2 }  { m_axi_OUT_r_AWLOCK LOCK 1 2 }  { m_axi_OUT_r_AWCACHE CACHE 1 4 }  { m_axi_OUT_r_AWPROT PROT 1 3 }  { m_axi_OUT_r_AWQOS QOS 1 4 }  { m_axi_OUT_r_AWREGION REGION 1 4 }  { m_axi_OUT_r_AWUSER USER 1 1 }  { m_axi_OUT_r_WVALID VALID 1 1 }  { m_axi_OUT_r_WREADY READY 0 1 }  { m_axi_OUT_r_WDATA DATA 1 32 }  { m_axi_OUT_r_WSTRB STRB 1 4 }  { m_axi_OUT_r_WLAST LAST 1 1 }  { m_axi_OUT_r_WID ID 1 1 }  { m_axi_OUT_r_WUSER USER 1 1 }  { m_axi_OUT_r_ARVALID VALID 1 1 }  { m_axi_OUT_r_ARREADY READY 0 1 }  { m_axi_OUT_r_ARADDR ADDR 1 32 }  { m_axi_OUT_r_ARID ID 1 1 }  { m_axi_OUT_r_ARLEN LEN 1 8 }  { m_axi_OUT_r_ARSIZE SIZE 1 3 }  { m_axi_OUT_r_ARBURST BURST 1 2 }  { m_axi_OUT_r_ARLOCK LOCK 1 2 }  { m_axi_OUT_r_ARCACHE CACHE 1 4 }  { m_axi_OUT_r_ARPROT PROT 1 3 }  { m_axi_OUT_r_ARQOS QOS 1 4 }  { m_axi_OUT_r_ARREGION REGION 1 4 }  { m_axi_OUT_r_ARUSER USER 1 1 }  { m_axi_OUT_r_RVALID VALID 0 1 }  { m_axi_OUT_r_RREADY READY 1 1 }  { m_axi_OUT_r_RDATA DATA 0 32 }  { m_axi_OUT_r_RLAST LAST 0 1 }  { m_axi_OUT_r_RID ID 0 1 }  { m_axi_OUT_r_RUSER USER 0 1 }  { m_axi_OUT_r_RRESP RESP 0 2 }  { m_axi_OUT_r_BVALID VALID 0 1 }  { m_axi_OUT_r_BREADY READY 1 1 }  { m_axi_OUT_r_BRESP RESP 0 2 }  { m_axi_OUT_r_BID ID 0 1 }  { m_axi_OUT_r_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ IN_r { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ BETA { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ GAMMA { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ M_M { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ M_V { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ OUT_r { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ IN_r 1 }
	{ BETA 1 }
	{ GAMMA 1 }
	{ M_M 1 }
	{ M_V 1 }
	{ OUT_r 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ IN_r 1 }
	{ BETA 1 }
	{ GAMMA 1 }
	{ M_M 1 }
	{ M_V 1 }
	{ OUT_r 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
