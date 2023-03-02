//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Thu Mar  2 17:48:18 2023
//Host        : LAPTOP-363S4MHV running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=10,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=7,da_ps7_cnt=1,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;

  wire [31:0]axi_smc_1_M00_AXI_ARADDR;
  wire [1:0]axi_smc_1_M00_AXI_ARBURST;
  wire [3:0]axi_smc_1_M00_AXI_ARCACHE;
  wire [3:0]axi_smc_1_M00_AXI_ARLEN;
  wire [1:0]axi_smc_1_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_1_M00_AXI_ARPROT;
  wire [3:0]axi_smc_1_M00_AXI_ARQOS;
  wire axi_smc_1_M00_AXI_ARREADY;
  wire [2:0]axi_smc_1_M00_AXI_ARSIZE;
  wire axi_smc_1_M00_AXI_ARVALID;
  wire [31:0]axi_smc_1_M00_AXI_AWADDR;
  wire [1:0]axi_smc_1_M00_AXI_AWBURST;
  wire [3:0]axi_smc_1_M00_AXI_AWCACHE;
  wire [3:0]axi_smc_1_M00_AXI_AWLEN;
  wire [1:0]axi_smc_1_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_1_M00_AXI_AWPROT;
  wire [3:0]axi_smc_1_M00_AXI_AWQOS;
  wire axi_smc_1_M00_AXI_AWREADY;
  wire [2:0]axi_smc_1_M00_AXI_AWSIZE;
  wire axi_smc_1_M00_AXI_AWVALID;
  wire axi_smc_1_M00_AXI_BREADY;
  wire [1:0]axi_smc_1_M00_AXI_BRESP;
  wire axi_smc_1_M00_AXI_BVALID;
  wire [63:0]axi_smc_1_M00_AXI_RDATA;
  wire axi_smc_1_M00_AXI_RLAST;
  wire axi_smc_1_M00_AXI_RREADY;
  wire [1:0]axi_smc_1_M00_AXI_RRESP;
  wire axi_smc_1_M00_AXI_RVALID;
  wire [63:0]axi_smc_1_M00_AXI_WDATA;
  wire axi_smc_1_M00_AXI_WLAST;
  wire axi_smc_1_M00_AXI_WREADY;
  wire [7:0]axi_smc_1_M00_AXI_WSTRB;
  wire axi_smc_1_M00_AXI_WVALID;
  wire [31:0]axi_smc_2_M00_AXI_ARADDR;
  wire [1:0]axi_smc_2_M00_AXI_ARBURST;
  wire [3:0]axi_smc_2_M00_AXI_ARCACHE;
  wire [3:0]axi_smc_2_M00_AXI_ARLEN;
  wire [1:0]axi_smc_2_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_2_M00_AXI_ARPROT;
  wire [3:0]axi_smc_2_M00_AXI_ARQOS;
  wire axi_smc_2_M00_AXI_ARREADY;
  wire [2:0]axi_smc_2_M00_AXI_ARSIZE;
  wire axi_smc_2_M00_AXI_ARVALID;
  wire [31:0]axi_smc_2_M00_AXI_AWADDR;
  wire [1:0]axi_smc_2_M00_AXI_AWBURST;
  wire [3:0]axi_smc_2_M00_AXI_AWCACHE;
  wire [3:0]axi_smc_2_M00_AXI_AWLEN;
  wire [1:0]axi_smc_2_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_2_M00_AXI_AWPROT;
  wire [3:0]axi_smc_2_M00_AXI_AWQOS;
  wire axi_smc_2_M00_AXI_AWREADY;
  wire [2:0]axi_smc_2_M00_AXI_AWSIZE;
  wire axi_smc_2_M00_AXI_AWVALID;
  wire axi_smc_2_M00_AXI_BREADY;
  wire [1:0]axi_smc_2_M00_AXI_BRESP;
  wire axi_smc_2_M00_AXI_BVALID;
  wire [63:0]axi_smc_2_M00_AXI_RDATA;
  wire axi_smc_2_M00_AXI_RLAST;
  wire axi_smc_2_M00_AXI_RREADY;
  wire [1:0]axi_smc_2_M00_AXI_RRESP;
  wire axi_smc_2_M00_AXI_RVALID;
  wire [63:0]axi_smc_2_M00_AXI_WDATA;
  wire axi_smc_2_M00_AXI_WLAST;
  wire axi_smc_2_M00_AXI_WREADY;
  wire [7:0]axi_smc_2_M00_AXI_WSTRB;
  wire axi_smc_2_M00_AXI_WVALID;
  wire [31:0]axi_smc_3_M00_AXI_ARADDR;
  wire [1:0]axi_smc_3_M00_AXI_ARBURST;
  wire [3:0]axi_smc_3_M00_AXI_ARCACHE;
  wire [3:0]axi_smc_3_M00_AXI_ARLEN;
  wire [1:0]axi_smc_3_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_3_M00_AXI_ARPROT;
  wire [3:0]axi_smc_3_M00_AXI_ARQOS;
  wire axi_smc_3_M00_AXI_ARREADY;
  wire [2:0]axi_smc_3_M00_AXI_ARSIZE;
  wire axi_smc_3_M00_AXI_ARVALID;
  wire [31:0]axi_smc_3_M00_AXI_AWADDR;
  wire [1:0]axi_smc_3_M00_AXI_AWBURST;
  wire [3:0]axi_smc_3_M00_AXI_AWCACHE;
  wire [3:0]axi_smc_3_M00_AXI_AWLEN;
  wire [1:0]axi_smc_3_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_3_M00_AXI_AWPROT;
  wire [3:0]axi_smc_3_M00_AXI_AWQOS;
  wire axi_smc_3_M00_AXI_AWREADY;
  wire [2:0]axi_smc_3_M00_AXI_AWSIZE;
  wire axi_smc_3_M00_AXI_AWVALID;
  wire axi_smc_3_M00_AXI_BREADY;
  wire [1:0]axi_smc_3_M00_AXI_BRESP;
  wire axi_smc_3_M00_AXI_BVALID;
  wire [63:0]axi_smc_3_M00_AXI_RDATA;
  wire axi_smc_3_M00_AXI_RLAST;
  wire axi_smc_3_M00_AXI_RREADY;
  wire [1:0]axi_smc_3_M00_AXI_RRESP;
  wire axi_smc_3_M00_AXI_RVALID;
  wire [63:0]axi_smc_3_M00_AXI_WDATA;
  wire axi_smc_3_M00_AXI_WLAST;
  wire axi_smc_3_M00_AXI_WREADY;
  wire [7:0]axi_smc_3_M00_AXI_WSTRB;
  wire axi_smc_3_M00_AXI_WVALID;
  wire [31:0]axi_smc_M00_AXI_ARADDR;
  wire [1:0]axi_smc_M00_AXI_ARBURST;
  wire [3:0]axi_smc_M00_AXI_ARCACHE;
  wire [3:0]axi_smc_M00_AXI_ARLEN;
  wire [1:0]axi_smc_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_M00_AXI_ARPROT;
  wire [3:0]axi_smc_M00_AXI_ARQOS;
  wire axi_smc_M00_AXI_ARREADY;
  wire [2:0]axi_smc_M00_AXI_ARSIZE;
  wire axi_smc_M00_AXI_ARVALID;
  wire [31:0]axi_smc_M00_AXI_AWADDR;
  wire [1:0]axi_smc_M00_AXI_AWBURST;
  wire [3:0]axi_smc_M00_AXI_AWCACHE;
  wire [3:0]axi_smc_M00_AXI_AWLEN;
  wire [1:0]axi_smc_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_M00_AXI_AWPROT;
  wire [3:0]axi_smc_M00_AXI_AWQOS;
  wire axi_smc_M00_AXI_AWREADY;
  wire [2:0]axi_smc_M00_AXI_AWSIZE;
  wire axi_smc_M00_AXI_AWVALID;
  wire axi_smc_M00_AXI_BREADY;
  wire [1:0]axi_smc_M00_AXI_BRESP;
  wire axi_smc_M00_AXI_BVALID;
  wire [63:0]axi_smc_M00_AXI_RDATA;
  wire axi_smc_M00_AXI_RLAST;
  wire axi_smc_M00_AXI_RREADY;
  wire [1:0]axi_smc_M00_AXI_RRESP;
  wire axi_smc_M00_AXI_RVALID;
  wire [63:0]axi_smc_M00_AXI_WDATA;
  wire axi_smc_M00_AXI_WLAST;
  wire axi_smc_M00_AXI_WREADY;
  wire [7:0]axi_smc_M00_AXI_WSTRB;
  wire axi_smc_M00_AXI_WVALID;
  wire [31:0]bn_0_m_axi_BETA_ARADDR;
  wire [1:0]bn_0_m_axi_BETA_ARBURST;
  wire [3:0]bn_0_m_axi_BETA_ARCACHE;
  wire [7:0]bn_0_m_axi_BETA_ARLEN;
  wire [1:0]bn_0_m_axi_BETA_ARLOCK;
  wire [2:0]bn_0_m_axi_BETA_ARPROT;
  wire [3:0]bn_0_m_axi_BETA_ARQOS;
  wire bn_0_m_axi_BETA_ARREADY;
  wire [2:0]bn_0_m_axi_BETA_ARSIZE;
  wire bn_0_m_axi_BETA_ARVALID;
  wire [31:0]bn_0_m_axi_BETA_AWADDR;
  wire [1:0]bn_0_m_axi_BETA_AWBURST;
  wire [3:0]bn_0_m_axi_BETA_AWCACHE;
  wire [7:0]bn_0_m_axi_BETA_AWLEN;
  wire [1:0]bn_0_m_axi_BETA_AWLOCK;
  wire [2:0]bn_0_m_axi_BETA_AWPROT;
  wire [3:0]bn_0_m_axi_BETA_AWQOS;
  wire bn_0_m_axi_BETA_AWREADY;
  wire [2:0]bn_0_m_axi_BETA_AWSIZE;
  wire bn_0_m_axi_BETA_AWVALID;
  wire bn_0_m_axi_BETA_BREADY;
  wire [1:0]bn_0_m_axi_BETA_BRESP;
  wire bn_0_m_axi_BETA_BVALID;
  wire [31:0]bn_0_m_axi_BETA_RDATA;
  wire bn_0_m_axi_BETA_RLAST;
  wire bn_0_m_axi_BETA_RREADY;
  wire [1:0]bn_0_m_axi_BETA_RRESP;
  wire bn_0_m_axi_BETA_RVALID;
  wire [31:0]bn_0_m_axi_BETA_WDATA;
  wire bn_0_m_axi_BETA_WLAST;
  wire bn_0_m_axi_BETA_WREADY;
  wire [3:0]bn_0_m_axi_BETA_WSTRB;
  wire bn_0_m_axi_BETA_WVALID;
  wire [31:0]bn_0_m_axi_GAMMA_ARADDR;
  wire [1:0]bn_0_m_axi_GAMMA_ARBURST;
  wire [3:0]bn_0_m_axi_GAMMA_ARCACHE;
  wire [7:0]bn_0_m_axi_GAMMA_ARLEN;
  wire [1:0]bn_0_m_axi_GAMMA_ARLOCK;
  wire [2:0]bn_0_m_axi_GAMMA_ARPROT;
  wire [3:0]bn_0_m_axi_GAMMA_ARQOS;
  wire bn_0_m_axi_GAMMA_ARREADY;
  wire [2:0]bn_0_m_axi_GAMMA_ARSIZE;
  wire bn_0_m_axi_GAMMA_ARVALID;
  wire [31:0]bn_0_m_axi_GAMMA_AWADDR;
  wire [1:0]bn_0_m_axi_GAMMA_AWBURST;
  wire [3:0]bn_0_m_axi_GAMMA_AWCACHE;
  wire [7:0]bn_0_m_axi_GAMMA_AWLEN;
  wire [1:0]bn_0_m_axi_GAMMA_AWLOCK;
  wire [2:0]bn_0_m_axi_GAMMA_AWPROT;
  wire [3:0]bn_0_m_axi_GAMMA_AWQOS;
  wire bn_0_m_axi_GAMMA_AWREADY;
  wire [2:0]bn_0_m_axi_GAMMA_AWSIZE;
  wire bn_0_m_axi_GAMMA_AWVALID;
  wire bn_0_m_axi_GAMMA_BREADY;
  wire [1:0]bn_0_m_axi_GAMMA_BRESP;
  wire bn_0_m_axi_GAMMA_BVALID;
  wire [31:0]bn_0_m_axi_GAMMA_RDATA;
  wire bn_0_m_axi_GAMMA_RLAST;
  wire bn_0_m_axi_GAMMA_RREADY;
  wire [1:0]bn_0_m_axi_GAMMA_RRESP;
  wire bn_0_m_axi_GAMMA_RVALID;
  wire [31:0]bn_0_m_axi_GAMMA_WDATA;
  wire bn_0_m_axi_GAMMA_WLAST;
  wire bn_0_m_axi_GAMMA_WREADY;
  wire [3:0]bn_0_m_axi_GAMMA_WSTRB;
  wire bn_0_m_axi_GAMMA_WVALID;
  wire [31:0]bn_0_m_axi_IN_r_ARADDR;
  wire [1:0]bn_0_m_axi_IN_r_ARBURST;
  wire [3:0]bn_0_m_axi_IN_r_ARCACHE;
  wire [7:0]bn_0_m_axi_IN_r_ARLEN;
  wire [1:0]bn_0_m_axi_IN_r_ARLOCK;
  wire [2:0]bn_0_m_axi_IN_r_ARPROT;
  wire [3:0]bn_0_m_axi_IN_r_ARQOS;
  wire bn_0_m_axi_IN_r_ARREADY;
  wire [2:0]bn_0_m_axi_IN_r_ARSIZE;
  wire bn_0_m_axi_IN_r_ARVALID;
  wire [31:0]bn_0_m_axi_IN_r_AWADDR;
  wire [1:0]bn_0_m_axi_IN_r_AWBURST;
  wire [3:0]bn_0_m_axi_IN_r_AWCACHE;
  wire [7:0]bn_0_m_axi_IN_r_AWLEN;
  wire [1:0]bn_0_m_axi_IN_r_AWLOCK;
  wire [2:0]bn_0_m_axi_IN_r_AWPROT;
  wire [3:0]bn_0_m_axi_IN_r_AWQOS;
  wire bn_0_m_axi_IN_r_AWREADY;
  wire [2:0]bn_0_m_axi_IN_r_AWSIZE;
  wire bn_0_m_axi_IN_r_AWVALID;
  wire bn_0_m_axi_IN_r_BREADY;
  wire [1:0]bn_0_m_axi_IN_r_BRESP;
  wire bn_0_m_axi_IN_r_BVALID;
  wire [31:0]bn_0_m_axi_IN_r_RDATA;
  wire bn_0_m_axi_IN_r_RLAST;
  wire bn_0_m_axi_IN_r_RREADY;
  wire [1:0]bn_0_m_axi_IN_r_RRESP;
  wire bn_0_m_axi_IN_r_RVALID;
  wire [31:0]bn_0_m_axi_IN_r_WDATA;
  wire bn_0_m_axi_IN_r_WLAST;
  wire bn_0_m_axi_IN_r_WREADY;
  wire [3:0]bn_0_m_axi_IN_r_WSTRB;
  wire bn_0_m_axi_IN_r_WVALID;
  wire [31:0]bn_0_m_axi_M_M_ARADDR;
  wire [1:0]bn_0_m_axi_M_M_ARBURST;
  wire [3:0]bn_0_m_axi_M_M_ARCACHE;
  wire [7:0]bn_0_m_axi_M_M_ARLEN;
  wire [1:0]bn_0_m_axi_M_M_ARLOCK;
  wire [2:0]bn_0_m_axi_M_M_ARPROT;
  wire [3:0]bn_0_m_axi_M_M_ARQOS;
  wire bn_0_m_axi_M_M_ARREADY;
  wire [2:0]bn_0_m_axi_M_M_ARSIZE;
  wire bn_0_m_axi_M_M_ARVALID;
  wire [31:0]bn_0_m_axi_M_M_AWADDR;
  wire [1:0]bn_0_m_axi_M_M_AWBURST;
  wire [3:0]bn_0_m_axi_M_M_AWCACHE;
  wire [7:0]bn_0_m_axi_M_M_AWLEN;
  wire [1:0]bn_0_m_axi_M_M_AWLOCK;
  wire [2:0]bn_0_m_axi_M_M_AWPROT;
  wire [3:0]bn_0_m_axi_M_M_AWQOS;
  wire bn_0_m_axi_M_M_AWREADY;
  wire [2:0]bn_0_m_axi_M_M_AWSIZE;
  wire bn_0_m_axi_M_M_AWVALID;
  wire bn_0_m_axi_M_M_BREADY;
  wire [1:0]bn_0_m_axi_M_M_BRESP;
  wire bn_0_m_axi_M_M_BVALID;
  wire [31:0]bn_0_m_axi_M_M_RDATA;
  wire bn_0_m_axi_M_M_RLAST;
  wire bn_0_m_axi_M_M_RREADY;
  wire [1:0]bn_0_m_axi_M_M_RRESP;
  wire bn_0_m_axi_M_M_RVALID;
  wire [31:0]bn_0_m_axi_M_M_WDATA;
  wire bn_0_m_axi_M_M_WLAST;
  wire bn_0_m_axi_M_M_WREADY;
  wire [3:0]bn_0_m_axi_M_M_WSTRB;
  wire bn_0_m_axi_M_M_WVALID;
  wire [31:0]bn_0_m_axi_M_V_ARADDR;
  wire [1:0]bn_0_m_axi_M_V_ARBURST;
  wire [3:0]bn_0_m_axi_M_V_ARCACHE;
  wire [7:0]bn_0_m_axi_M_V_ARLEN;
  wire [1:0]bn_0_m_axi_M_V_ARLOCK;
  wire [2:0]bn_0_m_axi_M_V_ARPROT;
  wire [3:0]bn_0_m_axi_M_V_ARQOS;
  wire bn_0_m_axi_M_V_ARREADY;
  wire [2:0]bn_0_m_axi_M_V_ARSIZE;
  wire bn_0_m_axi_M_V_ARVALID;
  wire [31:0]bn_0_m_axi_M_V_AWADDR;
  wire [1:0]bn_0_m_axi_M_V_AWBURST;
  wire [3:0]bn_0_m_axi_M_V_AWCACHE;
  wire [7:0]bn_0_m_axi_M_V_AWLEN;
  wire [1:0]bn_0_m_axi_M_V_AWLOCK;
  wire [2:0]bn_0_m_axi_M_V_AWPROT;
  wire [3:0]bn_0_m_axi_M_V_AWQOS;
  wire bn_0_m_axi_M_V_AWREADY;
  wire [2:0]bn_0_m_axi_M_V_AWSIZE;
  wire bn_0_m_axi_M_V_AWVALID;
  wire bn_0_m_axi_M_V_BREADY;
  wire [1:0]bn_0_m_axi_M_V_BRESP;
  wire bn_0_m_axi_M_V_BVALID;
  wire [31:0]bn_0_m_axi_M_V_RDATA;
  wire bn_0_m_axi_M_V_RLAST;
  wire bn_0_m_axi_M_V_RREADY;
  wire [1:0]bn_0_m_axi_M_V_RRESP;
  wire bn_0_m_axi_M_V_RVALID;
  wire [31:0]bn_0_m_axi_M_V_WDATA;
  wire bn_0_m_axi_M_V_WLAST;
  wire bn_0_m_axi_M_V_WREADY;
  wire [3:0]bn_0_m_axi_M_V_WSTRB;
  wire bn_0_m_axi_M_V_WVALID;
  wire [31:0]bn_0_m_axi_OUT_r_ARADDR;
  wire [1:0]bn_0_m_axi_OUT_r_ARBURST;
  wire [3:0]bn_0_m_axi_OUT_r_ARCACHE;
  wire [7:0]bn_0_m_axi_OUT_r_ARLEN;
  wire [1:0]bn_0_m_axi_OUT_r_ARLOCK;
  wire [2:0]bn_0_m_axi_OUT_r_ARPROT;
  wire [3:0]bn_0_m_axi_OUT_r_ARQOS;
  wire bn_0_m_axi_OUT_r_ARREADY;
  wire [2:0]bn_0_m_axi_OUT_r_ARSIZE;
  wire bn_0_m_axi_OUT_r_ARVALID;
  wire [31:0]bn_0_m_axi_OUT_r_AWADDR;
  wire [1:0]bn_0_m_axi_OUT_r_AWBURST;
  wire [3:0]bn_0_m_axi_OUT_r_AWCACHE;
  wire [7:0]bn_0_m_axi_OUT_r_AWLEN;
  wire [1:0]bn_0_m_axi_OUT_r_AWLOCK;
  wire [2:0]bn_0_m_axi_OUT_r_AWPROT;
  wire [3:0]bn_0_m_axi_OUT_r_AWQOS;
  wire bn_0_m_axi_OUT_r_AWREADY;
  wire [2:0]bn_0_m_axi_OUT_r_AWSIZE;
  wire bn_0_m_axi_OUT_r_AWVALID;
  wire bn_0_m_axi_OUT_r_BREADY;
  wire [1:0]bn_0_m_axi_OUT_r_BRESP;
  wire bn_0_m_axi_OUT_r_BVALID;
  wire [31:0]bn_0_m_axi_OUT_r_RDATA;
  wire bn_0_m_axi_OUT_r_RLAST;
  wire bn_0_m_axi_OUT_r_RREADY;
  wire [1:0]bn_0_m_axi_OUT_r_RRESP;
  wire bn_0_m_axi_OUT_r_RVALID;
  wire [31:0]bn_0_m_axi_OUT_r_WDATA;
  wire bn_0_m_axi_OUT_r_WLAST;
  wire bn_0_m_axi_OUT_r_WREADY;
  wire [3:0]bn_0_m_axi_OUT_r_WSTRB;
  wire bn_0_m_axi_OUT_r_WVALID;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire [31:0]processing_system7_0_M_AXI_GP0_ARADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_ARID;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARQOS;
  wire processing_system7_0_M_AXI_GP0_ARREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARSIZE;
  wire processing_system7_0_M_AXI_GP0_ARVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_AWADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_AWID;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWQOS;
  wire processing_system7_0_M_AXI_GP0_AWREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWSIZE;
  wire processing_system7_0_M_AXI_GP0_AWVALID;
  wire [11:0]processing_system7_0_M_AXI_GP0_BID;
  wire processing_system7_0_M_AXI_GP0_BREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_BRESP;
  wire processing_system7_0_M_AXI_GP0_BVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_RDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_RID;
  wire processing_system7_0_M_AXI_GP0_RLAST;
  wire processing_system7_0_M_AXI_GP0_RREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_RRESP;
  wire processing_system7_0_M_AXI_GP0_RVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_WDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_WID;
  wire processing_system7_0_M_AXI_GP0_WLAST;
  wire processing_system7_0_M_AXI_GP0_WREADY;
  wire [3:0]processing_system7_0_M_AXI_GP0_WSTRB;
  wire processing_system7_0_M_AXI_GP0_WVALID;
  wire [31:0]ps7_0_axi_periph_M00_AXI_ARADDR;
  wire ps7_0_axi_periph_M00_AXI_ARREADY;
  wire ps7_0_axi_periph_M00_AXI_ARVALID;
  wire [31:0]ps7_0_axi_periph_M00_AXI_AWADDR;
  wire ps7_0_axi_periph_M00_AXI_AWREADY;
  wire ps7_0_axi_periph_M00_AXI_AWVALID;
  wire ps7_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]ps7_0_axi_periph_M00_AXI_BRESP;
  wire ps7_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]ps7_0_axi_periph_M00_AXI_RDATA;
  wire ps7_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]ps7_0_axi_periph_M00_AXI_RRESP;
  wire ps7_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]ps7_0_axi_periph_M00_AXI_WDATA;
  wire ps7_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]ps7_0_axi_periph_M00_AXI_WSTRB;
  wire ps7_0_axi_periph_M00_AXI_WVALID;
  wire [0:0]rst_ps7_0_100M_peripheral_aresetn;

  design_1_axi_smc_0 axi_smc
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_M00_AXI_WVALID),
        .S00_AXI_araddr(bn_0_m_axi_IN_r_ARADDR),
        .S00_AXI_arburst(bn_0_m_axi_IN_r_ARBURST),
        .S00_AXI_arcache(bn_0_m_axi_IN_r_ARCACHE),
        .S00_AXI_arlen(bn_0_m_axi_IN_r_ARLEN),
        .S00_AXI_arlock(bn_0_m_axi_IN_r_ARLOCK[0]),
        .S00_AXI_arprot(bn_0_m_axi_IN_r_ARPROT),
        .S00_AXI_arqos(bn_0_m_axi_IN_r_ARQOS),
        .S00_AXI_arready(bn_0_m_axi_IN_r_ARREADY),
        .S00_AXI_arsize(bn_0_m_axi_IN_r_ARSIZE),
        .S00_AXI_arvalid(bn_0_m_axi_IN_r_ARVALID),
        .S00_AXI_awaddr(bn_0_m_axi_IN_r_AWADDR),
        .S00_AXI_awburst(bn_0_m_axi_IN_r_AWBURST),
        .S00_AXI_awcache(bn_0_m_axi_IN_r_AWCACHE),
        .S00_AXI_awlen(bn_0_m_axi_IN_r_AWLEN),
        .S00_AXI_awlock(bn_0_m_axi_IN_r_AWLOCK[0]),
        .S00_AXI_awprot(bn_0_m_axi_IN_r_AWPROT),
        .S00_AXI_awqos(bn_0_m_axi_IN_r_AWQOS),
        .S00_AXI_awready(bn_0_m_axi_IN_r_AWREADY),
        .S00_AXI_awsize(bn_0_m_axi_IN_r_AWSIZE),
        .S00_AXI_awvalid(bn_0_m_axi_IN_r_AWVALID),
        .S00_AXI_bready(bn_0_m_axi_IN_r_BREADY),
        .S00_AXI_bresp(bn_0_m_axi_IN_r_BRESP),
        .S00_AXI_bvalid(bn_0_m_axi_IN_r_BVALID),
        .S00_AXI_rdata(bn_0_m_axi_IN_r_RDATA),
        .S00_AXI_rlast(bn_0_m_axi_IN_r_RLAST),
        .S00_AXI_rready(bn_0_m_axi_IN_r_RREADY),
        .S00_AXI_rresp(bn_0_m_axi_IN_r_RRESP),
        .S00_AXI_rvalid(bn_0_m_axi_IN_r_RVALID),
        .S00_AXI_wdata(bn_0_m_axi_IN_r_WDATA),
        .S00_AXI_wlast(bn_0_m_axi_IN_r_WLAST),
        .S00_AXI_wready(bn_0_m_axi_IN_r_WREADY),
        .S00_AXI_wstrb(bn_0_m_axi_IN_r_WSTRB),
        .S00_AXI_wvalid(bn_0_m_axi_IN_r_WVALID),
        .S01_AXI_araddr(bn_0_m_axi_M_V_ARADDR),
        .S01_AXI_arburst(bn_0_m_axi_M_V_ARBURST),
        .S01_AXI_arcache(bn_0_m_axi_M_V_ARCACHE),
        .S01_AXI_arlen(bn_0_m_axi_M_V_ARLEN),
        .S01_AXI_arlock(bn_0_m_axi_M_V_ARLOCK[0]),
        .S01_AXI_arprot(bn_0_m_axi_M_V_ARPROT),
        .S01_AXI_arqos(bn_0_m_axi_M_V_ARQOS),
        .S01_AXI_arready(bn_0_m_axi_M_V_ARREADY),
        .S01_AXI_arsize(bn_0_m_axi_M_V_ARSIZE),
        .S01_AXI_arvalid(bn_0_m_axi_M_V_ARVALID),
        .S01_AXI_awaddr(bn_0_m_axi_M_V_AWADDR),
        .S01_AXI_awburst(bn_0_m_axi_M_V_AWBURST),
        .S01_AXI_awcache(bn_0_m_axi_M_V_AWCACHE),
        .S01_AXI_awlen(bn_0_m_axi_M_V_AWLEN),
        .S01_AXI_awlock(bn_0_m_axi_M_V_AWLOCK[0]),
        .S01_AXI_awprot(bn_0_m_axi_M_V_AWPROT),
        .S01_AXI_awqos(bn_0_m_axi_M_V_AWQOS),
        .S01_AXI_awready(bn_0_m_axi_M_V_AWREADY),
        .S01_AXI_awsize(bn_0_m_axi_M_V_AWSIZE),
        .S01_AXI_awvalid(bn_0_m_axi_M_V_AWVALID),
        .S01_AXI_bready(bn_0_m_axi_M_V_BREADY),
        .S01_AXI_bresp(bn_0_m_axi_M_V_BRESP),
        .S01_AXI_bvalid(bn_0_m_axi_M_V_BVALID),
        .S01_AXI_rdata(bn_0_m_axi_M_V_RDATA),
        .S01_AXI_rlast(bn_0_m_axi_M_V_RLAST),
        .S01_AXI_rready(bn_0_m_axi_M_V_RREADY),
        .S01_AXI_rresp(bn_0_m_axi_M_V_RRESP),
        .S01_AXI_rvalid(bn_0_m_axi_M_V_RVALID),
        .S01_AXI_wdata(bn_0_m_axi_M_V_WDATA),
        .S01_AXI_wlast(bn_0_m_axi_M_V_WLAST),
        .S01_AXI_wready(bn_0_m_axi_M_V_WREADY),
        .S01_AXI_wstrb(bn_0_m_axi_M_V_WSTRB),
        .S01_AXI_wvalid(bn_0_m_axi_M_V_WVALID),
        .aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(rst_ps7_0_100M_peripheral_aresetn));
  design_1_axi_smc_1_0 axi_smc_1
       (.M00_AXI_araddr(axi_smc_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_1_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_1_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_1_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_1_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_1_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_1_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_1_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_1_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_1_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_1_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_1_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_1_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_1_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_1_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_1_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_1_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_1_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_1_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_1_M00_AXI_WVALID),
        .S00_AXI_araddr(bn_0_m_axi_BETA_ARADDR),
        .S00_AXI_arburst(bn_0_m_axi_BETA_ARBURST),
        .S00_AXI_arcache(bn_0_m_axi_BETA_ARCACHE),
        .S00_AXI_arlen(bn_0_m_axi_BETA_ARLEN),
        .S00_AXI_arlock(bn_0_m_axi_BETA_ARLOCK[0]),
        .S00_AXI_arprot(bn_0_m_axi_BETA_ARPROT),
        .S00_AXI_arqos(bn_0_m_axi_BETA_ARQOS),
        .S00_AXI_arready(bn_0_m_axi_BETA_ARREADY),
        .S00_AXI_arsize(bn_0_m_axi_BETA_ARSIZE),
        .S00_AXI_arvalid(bn_0_m_axi_BETA_ARVALID),
        .S00_AXI_awaddr(bn_0_m_axi_BETA_AWADDR),
        .S00_AXI_awburst(bn_0_m_axi_BETA_AWBURST),
        .S00_AXI_awcache(bn_0_m_axi_BETA_AWCACHE),
        .S00_AXI_awlen(bn_0_m_axi_BETA_AWLEN),
        .S00_AXI_awlock(bn_0_m_axi_BETA_AWLOCK[0]),
        .S00_AXI_awprot(bn_0_m_axi_BETA_AWPROT),
        .S00_AXI_awqos(bn_0_m_axi_BETA_AWQOS),
        .S00_AXI_awready(bn_0_m_axi_BETA_AWREADY),
        .S00_AXI_awsize(bn_0_m_axi_BETA_AWSIZE),
        .S00_AXI_awvalid(bn_0_m_axi_BETA_AWVALID),
        .S00_AXI_bready(bn_0_m_axi_BETA_BREADY),
        .S00_AXI_bresp(bn_0_m_axi_BETA_BRESP),
        .S00_AXI_bvalid(bn_0_m_axi_BETA_BVALID),
        .S00_AXI_rdata(bn_0_m_axi_BETA_RDATA),
        .S00_AXI_rlast(bn_0_m_axi_BETA_RLAST),
        .S00_AXI_rready(bn_0_m_axi_BETA_RREADY),
        .S00_AXI_rresp(bn_0_m_axi_BETA_RRESP),
        .S00_AXI_rvalid(bn_0_m_axi_BETA_RVALID),
        .S00_AXI_wdata(bn_0_m_axi_BETA_WDATA),
        .S00_AXI_wlast(bn_0_m_axi_BETA_WLAST),
        .S00_AXI_wready(bn_0_m_axi_BETA_WREADY),
        .S00_AXI_wstrb(bn_0_m_axi_BETA_WSTRB),
        .S00_AXI_wvalid(bn_0_m_axi_BETA_WVALID),
        .S01_AXI_araddr(bn_0_m_axi_OUT_r_ARADDR),
        .S01_AXI_arburst(bn_0_m_axi_OUT_r_ARBURST),
        .S01_AXI_arcache(bn_0_m_axi_OUT_r_ARCACHE),
        .S01_AXI_arlen(bn_0_m_axi_OUT_r_ARLEN),
        .S01_AXI_arlock(bn_0_m_axi_OUT_r_ARLOCK[0]),
        .S01_AXI_arprot(bn_0_m_axi_OUT_r_ARPROT),
        .S01_AXI_arqos(bn_0_m_axi_OUT_r_ARQOS),
        .S01_AXI_arready(bn_0_m_axi_OUT_r_ARREADY),
        .S01_AXI_arsize(bn_0_m_axi_OUT_r_ARSIZE),
        .S01_AXI_arvalid(bn_0_m_axi_OUT_r_ARVALID),
        .S01_AXI_awaddr(bn_0_m_axi_OUT_r_AWADDR),
        .S01_AXI_awburst(bn_0_m_axi_OUT_r_AWBURST),
        .S01_AXI_awcache(bn_0_m_axi_OUT_r_AWCACHE),
        .S01_AXI_awlen(bn_0_m_axi_OUT_r_AWLEN),
        .S01_AXI_awlock(bn_0_m_axi_OUT_r_AWLOCK[0]),
        .S01_AXI_awprot(bn_0_m_axi_OUT_r_AWPROT),
        .S01_AXI_awqos(bn_0_m_axi_OUT_r_AWQOS),
        .S01_AXI_awready(bn_0_m_axi_OUT_r_AWREADY),
        .S01_AXI_awsize(bn_0_m_axi_OUT_r_AWSIZE),
        .S01_AXI_awvalid(bn_0_m_axi_OUT_r_AWVALID),
        .S01_AXI_bready(bn_0_m_axi_OUT_r_BREADY),
        .S01_AXI_bresp(bn_0_m_axi_OUT_r_BRESP),
        .S01_AXI_bvalid(bn_0_m_axi_OUT_r_BVALID),
        .S01_AXI_rdata(bn_0_m_axi_OUT_r_RDATA),
        .S01_AXI_rlast(bn_0_m_axi_OUT_r_RLAST),
        .S01_AXI_rready(bn_0_m_axi_OUT_r_RREADY),
        .S01_AXI_rresp(bn_0_m_axi_OUT_r_RRESP),
        .S01_AXI_rvalid(bn_0_m_axi_OUT_r_RVALID),
        .S01_AXI_wdata(bn_0_m_axi_OUT_r_WDATA),
        .S01_AXI_wlast(bn_0_m_axi_OUT_r_WLAST),
        .S01_AXI_wready(bn_0_m_axi_OUT_r_WREADY),
        .S01_AXI_wstrb(bn_0_m_axi_OUT_r_WSTRB),
        .S01_AXI_wvalid(bn_0_m_axi_OUT_r_WVALID),
        .aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(rst_ps7_0_100M_peripheral_aresetn));
  design_1_axi_smc_2_0 axi_smc_2
       (.M00_AXI_araddr(axi_smc_2_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_2_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_2_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_2_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_2_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_2_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_2_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_2_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_2_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_2_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_2_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_2_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_2_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_2_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_2_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_2_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_2_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_2_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_2_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_2_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_2_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_2_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_2_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_2_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_2_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_2_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_2_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_2_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_2_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_2_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_2_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_2_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_2_M00_AXI_WVALID),
        .S00_AXI_araddr(bn_0_m_axi_GAMMA_ARADDR),
        .S00_AXI_arburst(bn_0_m_axi_GAMMA_ARBURST),
        .S00_AXI_arcache(bn_0_m_axi_GAMMA_ARCACHE),
        .S00_AXI_arlen(bn_0_m_axi_GAMMA_ARLEN),
        .S00_AXI_arlock(bn_0_m_axi_GAMMA_ARLOCK[0]),
        .S00_AXI_arprot(bn_0_m_axi_GAMMA_ARPROT),
        .S00_AXI_arqos(bn_0_m_axi_GAMMA_ARQOS),
        .S00_AXI_arready(bn_0_m_axi_GAMMA_ARREADY),
        .S00_AXI_arsize(bn_0_m_axi_GAMMA_ARSIZE),
        .S00_AXI_arvalid(bn_0_m_axi_GAMMA_ARVALID),
        .S00_AXI_awaddr(bn_0_m_axi_GAMMA_AWADDR),
        .S00_AXI_awburst(bn_0_m_axi_GAMMA_AWBURST),
        .S00_AXI_awcache(bn_0_m_axi_GAMMA_AWCACHE),
        .S00_AXI_awlen(bn_0_m_axi_GAMMA_AWLEN),
        .S00_AXI_awlock(bn_0_m_axi_GAMMA_AWLOCK[0]),
        .S00_AXI_awprot(bn_0_m_axi_GAMMA_AWPROT),
        .S00_AXI_awqos(bn_0_m_axi_GAMMA_AWQOS),
        .S00_AXI_awready(bn_0_m_axi_GAMMA_AWREADY),
        .S00_AXI_awsize(bn_0_m_axi_GAMMA_AWSIZE),
        .S00_AXI_awvalid(bn_0_m_axi_GAMMA_AWVALID),
        .S00_AXI_bready(bn_0_m_axi_GAMMA_BREADY),
        .S00_AXI_bresp(bn_0_m_axi_GAMMA_BRESP),
        .S00_AXI_bvalid(bn_0_m_axi_GAMMA_BVALID),
        .S00_AXI_rdata(bn_0_m_axi_GAMMA_RDATA),
        .S00_AXI_rlast(bn_0_m_axi_GAMMA_RLAST),
        .S00_AXI_rready(bn_0_m_axi_GAMMA_RREADY),
        .S00_AXI_rresp(bn_0_m_axi_GAMMA_RRESP),
        .S00_AXI_rvalid(bn_0_m_axi_GAMMA_RVALID),
        .S00_AXI_wdata(bn_0_m_axi_GAMMA_WDATA),
        .S00_AXI_wlast(bn_0_m_axi_GAMMA_WLAST),
        .S00_AXI_wready(bn_0_m_axi_GAMMA_WREADY),
        .S00_AXI_wstrb(bn_0_m_axi_GAMMA_WSTRB),
        .S00_AXI_wvalid(bn_0_m_axi_GAMMA_WVALID),
        .aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(rst_ps7_0_100M_peripheral_aresetn));
  design_1_axi_smc_3_0 axi_smc_3
       (.M00_AXI_araddr(axi_smc_3_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_3_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_3_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_3_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_3_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_3_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_3_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_3_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_3_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_3_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_3_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_3_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_3_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_3_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_3_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_3_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_3_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_3_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_3_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_3_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_3_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_3_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_3_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_3_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_3_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_3_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_3_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_3_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_3_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_3_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_3_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_3_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_3_M00_AXI_WVALID),
        .S00_AXI_araddr(bn_0_m_axi_M_M_ARADDR),
        .S00_AXI_arburst(bn_0_m_axi_M_M_ARBURST),
        .S00_AXI_arcache(bn_0_m_axi_M_M_ARCACHE),
        .S00_AXI_arlen(bn_0_m_axi_M_M_ARLEN),
        .S00_AXI_arlock(bn_0_m_axi_M_M_ARLOCK[0]),
        .S00_AXI_arprot(bn_0_m_axi_M_M_ARPROT),
        .S00_AXI_arqos(bn_0_m_axi_M_M_ARQOS),
        .S00_AXI_arready(bn_0_m_axi_M_M_ARREADY),
        .S00_AXI_arsize(bn_0_m_axi_M_M_ARSIZE),
        .S00_AXI_arvalid(bn_0_m_axi_M_M_ARVALID),
        .S00_AXI_awaddr(bn_0_m_axi_M_M_AWADDR),
        .S00_AXI_awburst(bn_0_m_axi_M_M_AWBURST),
        .S00_AXI_awcache(bn_0_m_axi_M_M_AWCACHE),
        .S00_AXI_awlen(bn_0_m_axi_M_M_AWLEN),
        .S00_AXI_awlock(bn_0_m_axi_M_M_AWLOCK[0]),
        .S00_AXI_awprot(bn_0_m_axi_M_M_AWPROT),
        .S00_AXI_awqos(bn_0_m_axi_M_M_AWQOS),
        .S00_AXI_awready(bn_0_m_axi_M_M_AWREADY),
        .S00_AXI_awsize(bn_0_m_axi_M_M_AWSIZE),
        .S00_AXI_awvalid(bn_0_m_axi_M_M_AWVALID),
        .S00_AXI_bready(bn_0_m_axi_M_M_BREADY),
        .S00_AXI_bresp(bn_0_m_axi_M_M_BRESP),
        .S00_AXI_bvalid(bn_0_m_axi_M_M_BVALID),
        .S00_AXI_rdata(bn_0_m_axi_M_M_RDATA),
        .S00_AXI_rlast(bn_0_m_axi_M_M_RLAST),
        .S00_AXI_rready(bn_0_m_axi_M_M_RREADY),
        .S00_AXI_rresp(bn_0_m_axi_M_M_RRESP),
        .S00_AXI_rvalid(bn_0_m_axi_M_M_RVALID),
        .S00_AXI_wdata(bn_0_m_axi_M_M_WDATA),
        .S00_AXI_wlast(bn_0_m_axi_M_M_WLAST),
        .S00_AXI_wready(bn_0_m_axi_M_M_WREADY),
        .S00_AXI_wstrb(bn_0_m_axi_M_M_WSTRB),
        .S00_AXI_wvalid(bn_0_m_axi_M_M_WVALID),
        .aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(rst_ps7_0_100M_peripheral_aresetn));
  design_1_bn_0_0 bn_0
       (.ap_clk(processing_system7_0_FCLK_CLK0),
        .ap_rst_n(rst_ps7_0_100M_peripheral_aresetn),
        .m_axi_BETA_ARADDR(bn_0_m_axi_BETA_ARADDR),
        .m_axi_BETA_ARBURST(bn_0_m_axi_BETA_ARBURST),
        .m_axi_BETA_ARCACHE(bn_0_m_axi_BETA_ARCACHE),
        .m_axi_BETA_ARLEN(bn_0_m_axi_BETA_ARLEN),
        .m_axi_BETA_ARLOCK(bn_0_m_axi_BETA_ARLOCK),
        .m_axi_BETA_ARPROT(bn_0_m_axi_BETA_ARPROT),
        .m_axi_BETA_ARQOS(bn_0_m_axi_BETA_ARQOS),
        .m_axi_BETA_ARREADY(bn_0_m_axi_BETA_ARREADY),
        .m_axi_BETA_ARSIZE(bn_0_m_axi_BETA_ARSIZE),
        .m_axi_BETA_ARVALID(bn_0_m_axi_BETA_ARVALID),
        .m_axi_BETA_AWADDR(bn_0_m_axi_BETA_AWADDR),
        .m_axi_BETA_AWBURST(bn_0_m_axi_BETA_AWBURST),
        .m_axi_BETA_AWCACHE(bn_0_m_axi_BETA_AWCACHE),
        .m_axi_BETA_AWLEN(bn_0_m_axi_BETA_AWLEN),
        .m_axi_BETA_AWLOCK(bn_0_m_axi_BETA_AWLOCK),
        .m_axi_BETA_AWPROT(bn_0_m_axi_BETA_AWPROT),
        .m_axi_BETA_AWQOS(bn_0_m_axi_BETA_AWQOS),
        .m_axi_BETA_AWREADY(bn_0_m_axi_BETA_AWREADY),
        .m_axi_BETA_AWSIZE(bn_0_m_axi_BETA_AWSIZE),
        .m_axi_BETA_AWVALID(bn_0_m_axi_BETA_AWVALID),
        .m_axi_BETA_BREADY(bn_0_m_axi_BETA_BREADY),
        .m_axi_BETA_BRESP(bn_0_m_axi_BETA_BRESP),
        .m_axi_BETA_BVALID(bn_0_m_axi_BETA_BVALID),
        .m_axi_BETA_RDATA(bn_0_m_axi_BETA_RDATA),
        .m_axi_BETA_RLAST(bn_0_m_axi_BETA_RLAST),
        .m_axi_BETA_RREADY(bn_0_m_axi_BETA_RREADY),
        .m_axi_BETA_RRESP(bn_0_m_axi_BETA_RRESP),
        .m_axi_BETA_RVALID(bn_0_m_axi_BETA_RVALID),
        .m_axi_BETA_WDATA(bn_0_m_axi_BETA_WDATA),
        .m_axi_BETA_WLAST(bn_0_m_axi_BETA_WLAST),
        .m_axi_BETA_WREADY(bn_0_m_axi_BETA_WREADY),
        .m_axi_BETA_WSTRB(bn_0_m_axi_BETA_WSTRB),
        .m_axi_BETA_WVALID(bn_0_m_axi_BETA_WVALID),
        .m_axi_GAMMA_ARADDR(bn_0_m_axi_GAMMA_ARADDR),
        .m_axi_GAMMA_ARBURST(bn_0_m_axi_GAMMA_ARBURST),
        .m_axi_GAMMA_ARCACHE(bn_0_m_axi_GAMMA_ARCACHE),
        .m_axi_GAMMA_ARLEN(bn_0_m_axi_GAMMA_ARLEN),
        .m_axi_GAMMA_ARLOCK(bn_0_m_axi_GAMMA_ARLOCK),
        .m_axi_GAMMA_ARPROT(bn_0_m_axi_GAMMA_ARPROT),
        .m_axi_GAMMA_ARQOS(bn_0_m_axi_GAMMA_ARQOS),
        .m_axi_GAMMA_ARREADY(bn_0_m_axi_GAMMA_ARREADY),
        .m_axi_GAMMA_ARSIZE(bn_0_m_axi_GAMMA_ARSIZE),
        .m_axi_GAMMA_ARVALID(bn_0_m_axi_GAMMA_ARVALID),
        .m_axi_GAMMA_AWADDR(bn_0_m_axi_GAMMA_AWADDR),
        .m_axi_GAMMA_AWBURST(bn_0_m_axi_GAMMA_AWBURST),
        .m_axi_GAMMA_AWCACHE(bn_0_m_axi_GAMMA_AWCACHE),
        .m_axi_GAMMA_AWLEN(bn_0_m_axi_GAMMA_AWLEN),
        .m_axi_GAMMA_AWLOCK(bn_0_m_axi_GAMMA_AWLOCK),
        .m_axi_GAMMA_AWPROT(bn_0_m_axi_GAMMA_AWPROT),
        .m_axi_GAMMA_AWQOS(bn_0_m_axi_GAMMA_AWQOS),
        .m_axi_GAMMA_AWREADY(bn_0_m_axi_GAMMA_AWREADY),
        .m_axi_GAMMA_AWSIZE(bn_0_m_axi_GAMMA_AWSIZE),
        .m_axi_GAMMA_AWVALID(bn_0_m_axi_GAMMA_AWVALID),
        .m_axi_GAMMA_BREADY(bn_0_m_axi_GAMMA_BREADY),
        .m_axi_GAMMA_BRESP(bn_0_m_axi_GAMMA_BRESP),
        .m_axi_GAMMA_BVALID(bn_0_m_axi_GAMMA_BVALID),
        .m_axi_GAMMA_RDATA(bn_0_m_axi_GAMMA_RDATA),
        .m_axi_GAMMA_RLAST(bn_0_m_axi_GAMMA_RLAST),
        .m_axi_GAMMA_RREADY(bn_0_m_axi_GAMMA_RREADY),
        .m_axi_GAMMA_RRESP(bn_0_m_axi_GAMMA_RRESP),
        .m_axi_GAMMA_RVALID(bn_0_m_axi_GAMMA_RVALID),
        .m_axi_GAMMA_WDATA(bn_0_m_axi_GAMMA_WDATA),
        .m_axi_GAMMA_WLAST(bn_0_m_axi_GAMMA_WLAST),
        .m_axi_GAMMA_WREADY(bn_0_m_axi_GAMMA_WREADY),
        .m_axi_GAMMA_WSTRB(bn_0_m_axi_GAMMA_WSTRB),
        .m_axi_GAMMA_WVALID(bn_0_m_axi_GAMMA_WVALID),
        .m_axi_IN_r_ARADDR(bn_0_m_axi_IN_r_ARADDR),
        .m_axi_IN_r_ARBURST(bn_0_m_axi_IN_r_ARBURST),
        .m_axi_IN_r_ARCACHE(bn_0_m_axi_IN_r_ARCACHE),
        .m_axi_IN_r_ARLEN(bn_0_m_axi_IN_r_ARLEN),
        .m_axi_IN_r_ARLOCK(bn_0_m_axi_IN_r_ARLOCK),
        .m_axi_IN_r_ARPROT(bn_0_m_axi_IN_r_ARPROT),
        .m_axi_IN_r_ARQOS(bn_0_m_axi_IN_r_ARQOS),
        .m_axi_IN_r_ARREADY(bn_0_m_axi_IN_r_ARREADY),
        .m_axi_IN_r_ARSIZE(bn_0_m_axi_IN_r_ARSIZE),
        .m_axi_IN_r_ARVALID(bn_0_m_axi_IN_r_ARVALID),
        .m_axi_IN_r_AWADDR(bn_0_m_axi_IN_r_AWADDR),
        .m_axi_IN_r_AWBURST(bn_0_m_axi_IN_r_AWBURST),
        .m_axi_IN_r_AWCACHE(bn_0_m_axi_IN_r_AWCACHE),
        .m_axi_IN_r_AWLEN(bn_0_m_axi_IN_r_AWLEN),
        .m_axi_IN_r_AWLOCK(bn_0_m_axi_IN_r_AWLOCK),
        .m_axi_IN_r_AWPROT(bn_0_m_axi_IN_r_AWPROT),
        .m_axi_IN_r_AWQOS(bn_0_m_axi_IN_r_AWQOS),
        .m_axi_IN_r_AWREADY(bn_0_m_axi_IN_r_AWREADY),
        .m_axi_IN_r_AWSIZE(bn_0_m_axi_IN_r_AWSIZE),
        .m_axi_IN_r_AWVALID(bn_0_m_axi_IN_r_AWVALID),
        .m_axi_IN_r_BREADY(bn_0_m_axi_IN_r_BREADY),
        .m_axi_IN_r_BRESP(bn_0_m_axi_IN_r_BRESP),
        .m_axi_IN_r_BVALID(bn_0_m_axi_IN_r_BVALID),
        .m_axi_IN_r_RDATA(bn_0_m_axi_IN_r_RDATA),
        .m_axi_IN_r_RLAST(bn_0_m_axi_IN_r_RLAST),
        .m_axi_IN_r_RREADY(bn_0_m_axi_IN_r_RREADY),
        .m_axi_IN_r_RRESP(bn_0_m_axi_IN_r_RRESP),
        .m_axi_IN_r_RVALID(bn_0_m_axi_IN_r_RVALID),
        .m_axi_IN_r_WDATA(bn_0_m_axi_IN_r_WDATA),
        .m_axi_IN_r_WLAST(bn_0_m_axi_IN_r_WLAST),
        .m_axi_IN_r_WREADY(bn_0_m_axi_IN_r_WREADY),
        .m_axi_IN_r_WSTRB(bn_0_m_axi_IN_r_WSTRB),
        .m_axi_IN_r_WVALID(bn_0_m_axi_IN_r_WVALID),
        .m_axi_M_M_ARADDR(bn_0_m_axi_M_M_ARADDR),
        .m_axi_M_M_ARBURST(bn_0_m_axi_M_M_ARBURST),
        .m_axi_M_M_ARCACHE(bn_0_m_axi_M_M_ARCACHE),
        .m_axi_M_M_ARLEN(bn_0_m_axi_M_M_ARLEN),
        .m_axi_M_M_ARLOCK(bn_0_m_axi_M_M_ARLOCK),
        .m_axi_M_M_ARPROT(bn_0_m_axi_M_M_ARPROT),
        .m_axi_M_M_ARQOS(bn_0_m_axi_M_M_ARQOS),
        .m_axi_M_M_ARREADY(bn_0_m_axi_M_M_ARREADY),
        .m_axi_M_M_ARSIZE(bn_0_m_axi_M_M_ARSIZE),
        .m_axi_M_M_ARVALID(bn_0_m_axi_M_M_ARVALID),
        .m_axi_M_M_AWADDR(bn_0_m_axi_M_M_AWADDR),
        .m_axi_M_M_AWBURST(bn_0_m_axi_M_M_AWBURST),
        .m_axi_M_M_AWCACHE(bn_0_m_axi_M_M_AWCACHE),
        .m_axi_M_M_AWLEN(bn_0_m_axi_M_M_AWLEN),
        .m_axi_M_M_AWLOCK(bn_0_m_axi_M_M_AWLOCK),
        .m_axi_M_M_AWPROT(bn_0_m_axi_M_M_AWPROT),
        .m_axi_M_M_AWQOS(bn_0_m_axi_M_M_AWQOS),
        .m_axi_M_M_AWREADY(bn_0_m_axi_M_M_AWREADY),
        .m_axi_M_M_AWSIZE(bn_0_m_axi_M_M_AWSIZE),
        .m_axi_M_M_AWVALID(bn_0_m_axi_M_M_AWVALID),
        .m_axi_M_M_BREADY(bn_0_m_axi_M_M_BREADY),
        .m_axi_M_M_BRESP(bn_0_m_axi_M_M_BRESP),
        .m_axi_M_M_BVALID(bn_0_m_axi_M_M_BVALID),
        .m_axi_M_M_RDATA(bn_0_m_axi_M_M_RDATA),
        .m_axi_M_M_RLAST(bn_0_m_axi_M_M_RLAST),
        .m_axi_M_M_RREADY(bn_0_m_axi_M_M_RREADY),
        .m_axi_M_M_RRESP(bn_0_m_axi_M_M_RRESP),
        .m_axi_M_M_RVALID(bn_0_m_axi_M_M_RVALID),
        .m_axi_M_M_WDATA(bn_0_m_axi_M_M_WDATA),
        .m_axi_M_M_WLAST(bn_0_m_axi_M_M_WLAST),
        .m_axi_M_M_WREADY(bn_0_m_axi_M_M_WREADY),
        .m_axi_M_M_WSTRB(bn_0_m_axi_M_M_WSTRB),
        .m_axi_M_M_WVALID(bn_0_m_axi_M_M_WVALID),
        .m_axi_M_V_ARADDR(bn_0_m_axi_M_V_ARADDR),
        .m_axi_M_V_ARBURST(bn_0_m_axi_M_V_ARBURST),
        .m_axi_M_V_ARCACHE(bn_0_m_axi_M_V_ARCACHE),
        .m_axi_M_V_ARLEN(bn_0_m_axi_M_V_ARLEN),
        .m_axi_M_V_ARLOCK(bn_0_m_axi_M_V_ARLOCK),
        .m_axi_M_V_ARPROT(bn_0_m_axi_M_V_ARPROT),
        .m_axi_M_V_ARQOS(bn_0_m_axi_M_V_ARQOS),
        .m_axi_M_V_ARREADY(bn_0_m_axi_M_V_ARREADY),
        .m_axi_M_V_ARSIZE(bn_0_m_axi_M_V_ARSIZE),
        .m_axi_M_V_ARVALID(bn_0_m_axi_M_V_ARVALID),
        .m_axi_M_V_AWADDR(bn_0_m_axi_M_V_AWADDR),
        .m_axi_M_V_AWBURST(bn_0_m_axi_M_V_AWBURST),
        .m_axi_M_V_AWCACHE(bn_0_m_axi_M_V_AWCACHE),
        .m_axi_M_V_AWLEN(bn_0_m_axi_M_V_AWLEN),
        .m_axi_M_V_AWLOCK(bn_0_m_axi_M_V_AWLOCK),
        .m_axi_M_V_AWPROT(bn_0_m_axi_M_V_AWPROT),
        .m_axi_M_V_AWQOS(bn_0_m_axi_M_V_AWQOS),
        .m_axi_M_V_AWREADY(bn_0_m_axi_M_V_AWREADY),
        .m_axi_M_V_AWSIZE(bn_0_m_axi_M_V_AWSIZE),
        .m_axi_M_V_AWVALID(bn_0_m_axi_M_V_AWVALID),
        .m_axi_M_V_BREADY(bn_0_m_axi_M_V_BREADY),
        .m_axi_M_V_BRESP(bn_0_m_axi_M_V_BRESP),
        .m_axi_M_V_BVALID(bn_0_m_axi_M_V_BVALID),
        .m_axi_M_V_RDATA(bn_0_m_axi_M_V_RDATA),
        .m_axi_M_V_RLAST(bn_0_m_axi_M_V_RLAST),
        .m_axi_M_V_RREADY(bn_0_m_axi_M_V_RREADY),
        .m_axi_M_V_RRESP(bn_0_m_axi_M_V_RRESP),
        .m_axi_M_V_RVALID(bn_0_m_axi_M_V_RVALID),
        .m_axi_M_V_WDATA(bn_0_m_axi_M_V_WDATA),
        .m_axi_M_V_WLAST(bn_0_m_axi_M_V_WLAST),
        .m_axi_M_V_WREADY(bn_0_m_axi_M_V_WREADY),
        .m_axi_M_V_WSTRB(bn_0_m_axi_M_V_WSTRB),
        .m_axi_M_V_WVALID(bn_0_m_axi_M_V_WVALID),
        .m_axi_OUT_r_ARADDR(bn_0_m_axi_OUT_r_ARADDR),
        .m_axi_OUT_r_ARBURST(bn_0_m_axi_OUT_r_ARBURST),
        .m_axi_OUT_r_ARCACHE(bn_0_m_axi_OUT_r_ARCACHE),
        .m_axi_OUT_r_ARLEN(bn_0_m_axi_OUT_r_ARLEN),
        .m_axi_OUT_r_ARLOCK(bn_0_m_axi_OUT_r_ARLOCK),
        .m_axi_OUT_r_ARPROT(bn_0_m_axi_OUT_r_ARPROT),
        .m_axi_OUT_r_ARQOS(bn_0_m_axi_OUT_r_ARQOS),
        .m_axi_OUT_r_ARREADY(bn_0_m_axi_OUT_r_ARREADY),
        .m_axi_OUT_r_ARSIZE(bn_0_m_axi_OUT_r_ARSIZE),
        .m_axi_OUT_r_ARVALID(bn_0_m_axi_OUT_r_ARVALID),
        .m_axi_OUT_r_AWADDR(bn_0_m_axi_OUT_r_AWADDR),
        .m_axi_OUT_r_AWBURST(bn_0_m_axi_OUT_r_AWBURST),
        .m_axi_OUT_r_AWCACHE(bn_0_m_axi_OUT_r_AWCACHE),
        .m_axi_OUT_r_AWLEN(bn_0_m_axi_OUT_r_AWLEN),
        .m_axi_OUT_r_AWLOCK(bn_0_m_axi_OUT_r_AWLOCK),
        .m_axi_OUT_r_AWPROT(bn_0_m_axi_OUT_r_AWPROT),
        .m_axi_OUT_r_AWQOS(bn_0_m_axi_OUT_r_AWQOS),
        .m_axi_OUT_r_AWREADY(bn_0_m_axi_OUT_r_AWREADY),
        .m_axi_OUT_r_AWSIZE(bn_0_m_axi_OUT_r_AWSIZE),
        .m_axi_OUT_r_AWVALID(bn_0_m_axi_OUT_r_AWVALID),
        .m_axi_OUT_r_BREADY(bn_0_m_axi_OUT_r_BREADY),
        .m_axi_OUT_r_BRESP(bn_0_m_axi_OUT_r_BRESP),
        .m_axi_OUT_r_BVALID(bn_0_m_axi_OUT_r_BVALID),
        .m_axi_OUT_r_RDATA(bn_0_m_axi_OUT_r_RDATA),
        .m_axi_OUT_r_RLAST(bn_0_m_axi_OUT_r_RLAST),
        .m_axi_OUT_r_RREADY(bn_0_m_axi_OUT_r_RREADY),
        .m_axi_OUT_r_RRESP(bn_0_m_axi_OUT_r_RRESP),
        .m_axi_OUT_r_RVALID(bn_0_m_axi_OUT_r_RVALID),
        .m_axi_OUT_r_WDATA(bn_0_m_axi_OUT_r_WDATA),
        .m_axi_OUT_r_WLAST(bn_0_m_axi_OUT_r_WLAST),
        .m_axi_OUT_r_WREADY(bn_0_m_axi_OUT_r_WREADY),
        .m_axi_OUT_r_WSTRB(bn_0_m_axi_OUT_r_WSTRB),
        .m_axi_OUT_r_WVALID(bn_0_m_axi_OUT_r_WVALID),
        .s_axi_CTRL_ARADDR(ps7_0_axi_periph_M00_AXI_ARADDR[5:0]),
        .s_axi_CTRL_ARREADY(ps7_0_axi_periph_M00_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(ps7_0_axi_periph_M00_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(ps7_0_axi_periph_M00_AXI_AWADDR[5:0]),
        .s_axi_CTRL_AWREADY(ps7_0_axi_periph_M00_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(ps7_0_axi_periph_M00_AXI_AWVALID),
        .s_axi_CTRL_BREADY(ps7_0_axi_periph_M00_AXI_BREADY),
        .s_axi_CTRL_BRESP(ps7_0_axi_periph_M00_AXI_BRESP),
        .s_axi_CTRL_BVALID(ps7_0_axi_periph_M00_AXI_BVALID),
        .s_axi_CTRL_RDATA(ps7_0_axi_periph_M00_AXI_RDATA),
        .s_axi_CTRL_RREADY(ps7_0_axi_periph_M00_AXI_RREADY),
        .s_axi_CTRL_RRESP(ps7_0_axi_periph_M00_AXI_RRESP),
        .s_axi_CTRL_RVALID(ps7_0_axi_periph_M00_AXI_RVALID),
        .s_axi_CTRL_WDATA(ps7_0_axi_periph_M00_AXI_WDATA),
        .s_axi_CTRL_WREADY(ps7_0_axi_periph_M00_AXI_WREADY),
        .s_axi_CTRL_WSTRB(ps7_0_axi_periph_M00_AXI_WSTRB),
        .s_axi_CTRL_WVALID(ps7_0_axi_periph_M00_AXI_WVALID));
  design_1_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
        .M_AXI_GP0_ARADDR(processing_system7_0_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system7_0_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system7_0_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system7_0_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(processing_system7_0_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system7_0_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system7_0_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system7_0_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system7_0_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system7_0_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system7_0_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_0_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system7_0_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system7_0_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system7_0_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(processing_system7_0_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system7_0_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system7_0_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system7_0_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system7_0_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system7_0_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system7_0_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(processing_system7_0_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(processing_system7_0_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_0_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_0_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(processing_system7_0_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(processing_system7_0_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(processing_system7_0_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(processing_system7_0_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(processing_system7_0_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(processing_system7_0_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(processing_system7_0_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(processing_system7_0_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(processing_system7_0_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(processing_system7_0_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system7_0_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_0_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .S_AXI_HP0_ACLK(processing_system7_0_FCLK_CLK0),
        .S_AXI_HP0_ARADDR(axi_smc_M00_AXI_ARADDR),
        .S_AXI_HP0_ARBURST(axi_smc_M00_AXI_ARBURST),
        .S_AXI_HP0_ARCACHE(axi_smc_M00_AXI_ARCACHE),
        .S_AXI_HP0_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARLEN(axi_smc_M00_AXI_ARLEN),
        .S_AXI_HP0_ARLOCK(axi_smc_M00_AXI_ARLOCK),
        .S_AXI_HP0_ARPROT(axi_smc_M00_AXI_ARPROT),
        .S_AXI_HP0_ARQOS(axi_smc_M00_AXI_ARQOS),
        .S_AXI_HP0_ARREADY(axi_smc_M00_AXI_ARREADY),
        .S_AXI_HP0_ARSIZE(axi_smc_M00_AXI_ARSIZE),
        .S_AXI_HP0_ARVALID(axi_smc_M00_AXI_ARVALID),
        .S_AXI_HP0_AWADDR(axi_smc_M00_AXI_AWADDR),
        .S_AXI_HP0_AWBURST(axi_smc_M00_AXI_AWBURST),
        .S_AXI_HP0_AWCACHE(axi_smc_M00_AXI_AWCACHE),
        .S_AXI_HP0_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWLEN(axi_smc_M00_AXI_AWLEN),
        .S_AXI_HP0_AWLOCK(axi_smc_M00_AXI_AWLOCK),
        .S_AXI_HP0_AWPROT(axi_smc_M00_AXI_AWPROT),
        .S_AXI_HP0_AWQOS(axi_smc_M00_AXI_AWQOS),
        .S_AXI_HP0_AWREADY(axi_smc_M00_AXI_AWREADY),
        .S_AXI_HP0_AWSIZE(axi_smc_M00_AXI_AWSIZE),
        .S_AXI_HP0_AWVALID(axi_smc_M00_AXI_AWVALID),
        .S_AXI_HP0_BREADY(axi_smc_M00_AXI_BREADY),
        .S_AXI_HP0_BRESP(axi_smc_M00_AXI_BRESP),
        .S_AXI_HP0_BVALID(axi_smc_M00_AXI_BVALID),
        .S_AXI_HP0_RDATA(axi_smc_M00_AXI_RDATA),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RLAST(axi_smc_M00_AXI_RLAST),
        .S_AXI_HP0_RREADY(axi_smc_M00_AXI_RREADY),
        .S_AXI_HP0_RRESP(axi_smc_M00_AXI_RRESP),
        .S_AXI_HP0_RVALID(axi_smc_M00_AXI_RVALID),
        .S_AXI_HP0_WDATA(axi_smc_M00_AXI_WDATA),
        .S_AXI_HP0_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_WLAST(axi_smc_M00_AXI_WLAST),
        .S_AXI_HP0_WREADY(axi_smc_M00_AXI_WREADY),
        .S_AXI_HP0_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP0_WSTRB(axi_smc_M00_AXI_WSTRB),
        .S_AXI_HP0_WVALID(axi_smc_M00_AXI_WVALID),
        .S_AXI_HP1_ACLK(processing_system7_0_FCLK_CLK0),
        .S_AXI_HP1_ARADDR(axi_smc_1_M00_AXI_ARADDR),
        .S_AXI_HP1_ARBURST(axi_smc_1_M00_AXI_ARBURST),
        .S_AXI_HP1_ARCACHE(axi_smc_1_M00_AXI_ARCACHE),
        .S_AXI_HP1_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_ARLEN(axi_smc_1_M00_AXI_ARLEN),
        .S_AXI_HP1_ARLOCK(axi_smc_1_M00_AXI_ARLOCK),
        .S_AXI_HP1_ARPROT(axi_smc_1_M00_AXI_ARPROT),
        .S_AXI_HP1_ARQOS(axi_smc_1_M00_AXI_ARQOS),
        .S_AXI_HP1_ARREADY(axi_smc_1_M00_AXI_ARREADY),
        .S_AXI_HP1_ARSIZE(axi_smc_1_M00_AXI_ARSIZE),
        .S_AXI_HP1_ARVALID(axi_smc_1_M00_AXI_ARVALID),
        .S_AXI_HP1_AWADDR(axi_smc_1_M00_AXI_AWADDR),
        .S_AXI_HP1_AWBURST(axi_smc_1_M00_AXI_AWBURST),
        .S_AXI_HP1_AWCACHE(axi_smc_1_M00_AXI_AWCACHE),
        .S_AXI_HP1_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_AWLEN(axi_smc_1_M00_AXI_AWLEN),
        .S_AXI_HP1_AWLOCK(axi_smc_1_M00_AXI_AWLOCK),
        .S_AXI_HP1_AWPROT(axi_smc_1_M00_AXI_AWPROT),
        .S_AXI_HP1_AWQOS(axi_smc_1_M00_AXI_AWQOS),
        .S_AXI_HP1_AWREADY(axi_smc_1_M00_AXI_AWREADY),
        .S_AXI_HP1_AWSIZE(axi_smc_1_M00_AXI_AWSIZE),
        .S_AXI_HP1_AWVALID(axi_smc_1_M00_AXI_AWVALID),
        .S_AXI_HP1_BREADY(axi_smc_1_M00_AXI_BREADY),
        .S_AXI_HP1_BRESP(axi_smc_1_M00_AXI_BRESP),
        .S_AXI_HP1_BVALID(axi_smc_1_M00_AXI_BVALID),
        .S_AXI_HP1_RDATA(axi_smc_1_M00_AXI_RDATA),
        .S_AXI_HP1_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP1_RLAST(axi_smc_1_M00_AXI_RLAST),
        .S_AXI_HP1_RREADY(axi_smc_1_M00_AXI_RREADY),
        .S_AXI_HP1_RRESP(axi_smc_1_M00_AXI_RRESP),
        .S_AXI_HP1_RVALID(axi_smc_1_M00_AXI_RVALID),
        .S_AXI_HP1_WDATA(axi_smc_1_M00_AXI_WDATA),
        .S_AXI_HP1_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_WLAST(axi_smc_1_M00_AXI_WLAST),
        .S_AXI_HP1_WREADY(axi_smc_1_M00_AXI_WREADY),
        .S_AXI_HP1_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP1_WSTRB(axi_smc_1_M00_AXI_WSTRB),
        .S_AXI_HP1_WVALID(axi_smc_1_M00_AXI_WVALID),
        .S_AXI_HP2_ACLK(processing_system7_0_FCLK_CLK0),
        .S_AXI_HP2_ARADDR(axi_smc_2_M00_AXI_ARADDR),
        .S_AXI_HP2_ARBURST(axi_smc_2_M00_AXI_ARBURST),
        .S_AXI_HP2_ARCACHE(axi_smc_2_M00_AXI_ARCACHE),
        .S_AXI_HP2_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_ARLEN(axi_smc_2_M00_AXI_ARLEN),
        .S_AXI_HP2_ARLOCK(axi_smc_2_M00_AXI_ARLOCK),
        .S_AXI_HP2_ARPROT(axi_smc_2_M00_AXI_ARPROT),
        .S_AXI_HP2_ARQOS(axi_smc_2_M00_AXI_ARQOS),
        .S_AXI_HP2_ARREADY(axi_smc_2_M00_AXI_ARREADY),
        .S_AXI_HP2_ARSIZE(axi_smc_2_M00_AXI_ARSIZE),
        .S_AXI_HP2_ARVALID(axi_smc_2_M00_AXI_ARVALID),
        .S_AXI_HP2_AWADDR(axi_smc_2_M00_AXI_AWADDR),
        .S_AXI_HP2_AWBURST(axi_smc_2_M00_AXI_AWBURST),
        .S_AXI_HP2_AWCACHE(axi_smc_2_M00_AXI_AWCACHE),
        .S_AXI_HP2_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_AWLEN(axi_smc_2_M00_AXI_AWLEN),
        .S_AXI_HP2_AWLOCK(axi_smc_2_M00_AXI_AWLOCK),
        .S_AXI_HP2_AWPROT(axi_smc_2_M00_AXI_AWPROT),
        .S_AXI_HP2_AWQOS(axi_smc_2_M00_AXI_AWQOS),
        .S_AXI_HP2_AWREADY(axi_smc_2_M00_AXI_AWREADY),
        .S_AXI_HP2_AWSIZE(axi_smc_2_M00_AXI_AWSIZE),
        .S_AXI_HP2_AWVALID(axi_smc_2_M00_AXI_AWVALID),
        .S_AXI_HP2_BREADY(axi_smc_2_M00_AXI_BREADY),
        .S_AXI_HP2_BRESP(axi_smc_2_M00_AXI_BRESP),
        .S_AXI_HP2_BVALID(axi_smc_2_M00_AXI_BVALID),
        .S_AXI_HP2_RDATA(axi_smc_2_M00_AXI_RDATA),
        .S_AXI_HP2_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP2_RLAST(axi_smc_2_M00_AXI_RLAST),
        .S_AXI_HP2_RREADY(axi_smc_2_M00_AXI_RREADY),
        .S_AXI_HP2_RRESP(axi_smc_2_M00_AXI_RRESP),
        .S_AXI_HP2_RVALID(axi_smc_2_M00_AXI_RVALID),
        .S_AXI_HP2_WDATA(axi_smc_2_M00_AXI_WDATA),
        .S_AXI_HP2_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_WLAST(axi_smc_2_M00_AXI_WLAST),
        .S_AXI_HP2_WREADY(axi_smc_2_M00_AXI_WREADY),
        .S_AXI_HP2_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP2_WSTRB(axi_smc_2_M00_AXI_WSTRB),
        .S_AXI_HP2_WVALID(axi_smc_2_M00_AXI_WVALID),
        .S_AXI_HP3_ACLK(processing_system7_0_FCLK_CLK0),
        .S_AXI_HP3_ARADDR(axi_smc_3_M00_AXI_ARADDR),
        .S_AXI_HP3_ARBURST(axi_smc_3_M00_AXI_ARBURST),
        .S_AXI_HP3_ARCACHE(axi_smc_3_M00_AXI_ARCACHE),
        .S_AXI_HP3_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP3_ARLEN(axi_smc_3_M00_AXI_ARLEN),
        .S_AXI_HP3_ARLOCK(axi_smc_3_M00_AXI_ARLOCK),
        .S_AXI_HP3_ARPROT(axi_smc_3_M00_AXI_ARPROT),
        .S_AXI_HP3_ARQOS(axi_smc_3_M00_AXI_ARQOS),
        .S_AXI_HP3_ARREADY(axi_smc_3_M00_AXI_ARREADY),
        .S_AXI_HP3_ARSIZE(axi_smc_3_M00_AXI_ARSIZE),
        .S_AXI_HP3_ARVALID(axi_smc_3_M00_AXI_ARVALID),
        .S_AXI_HP3_AWADDR(axi_smc_3_M00_AXI_AWADDR),
        .S_AXI_HP3_AWBURST(axi_smc_3_M00_AXI_AWBURST),
        .S_AXI_HP3_AWCACHE(axi_smc_3_M00_AXI_AWCACHE),
        .S_AXI_HP3_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP3_AWLEN(axi_smc_3_M00_AXI_AWLEN),
        .S_AXI_HP3_AWLOCK(axi_smc_3_M00_AXI_AWLOCK),
        .S_AXI_HP3_AWPROT(axi_smc_3_M00_AXI_AWPROT),
        .S_AXI_HP3_AWQOS(axi_smc_3_M00_AXI_AWQOS),
        .S_AXI_HP3_AWREADY(axi_smc_3_M00_AXI_AWREADY),
        .S_AXI_HP3_AWSIZE(axi_smc_3_M00_AXI_AWSIZE),
        .S_AXI_HP3_AWVALID(axi_smc_3_M00_AXI_AWVALID),
        .S_AXI_HP3_BREADY(axi_smc_3_M00_AXI_BREADY),
        .S_AXI_HP3_BRESP(axi_smc_3_M00_AXI_BRESP),
        .S_AXI_HP3_BVALID(axi_smc_3_M00_AXI_BVALID),
        .S_AXI_HP3_RDATA(axi_smc_3_M00_AXI_RDATA),
        .S_AXI_HP3_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP3_RLAST(axi_smc_3_M00_AXI_RLAST),
        .S_AXI_HP3_RREADY(axi_smc_3_M00_AXI_RREADY),
        .S_AXI_HP3_RRESP(axi_smc_3_M00_AXI_RRESP),
        .S_AXI_HP3_RVALID(axi_smc_3_M00_AXI_RVALID),
        .S_AXI_HP3_WDATA(axi_smc_3_M00_AXI_WDATA),
        .S_AXI_HP3_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP3_WLAST(axi_smc_3_M00_AXI_WLAST),
        .S_AXI_HP3_WREADY(axi_smc_3_M00_AXI_WREADY),
        .S_AXI_HP3_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP3_WSTRB(axi_smc_3_M00_AXI_WSTRB),
        .S_AXI_HP3_WVALID(axi_smc_3_M00_AXI_WVALID),
        .USB0_VBUS_PWRFAULT(1'b0));
  design_1_ps7_0_axi_periph_0 ps7_0_axi_periph
       (.ACLK(processing_system7_0_FCLK_CLK0),
        .ARESETN(rst_ps7_0_100M_peripheral_aresetn),
        .M00_ACLK(processing_system7_0_FCLK_CLK0),
        .M00_ARESETN(rst_ps7_0_100M_peripheral_aresetn),
        .M00_AXI_araddr(ps7_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(ps7_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(ps7_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(ps7_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(ps7_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(ps7_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(ps7_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(ps7_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(ps7_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(ps7_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(ps7_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(ps7_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(ps7_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(ps7_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(ps7_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(ps7_0_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(ps7_0_axi_periph_M00_AXI_WVALID),
        .S00_ACLK(processing_system7_0_FCLK_CLK0),
        .S00_ARESETN(rst_ps7_0_100M_peripheral_aresetn),
        .S00_AXI_araddr(processing_system7_0_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(processing_system7_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(processing_system7_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(processing_system7_0_M_AXI_GP0_ARID),
        .S00_AXI_arlen(processing_system7_0_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(processing_system7_0_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(processing_system7_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(processing_system7_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(processing_system7_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(processing_system7_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(processing_system7_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(processing_system7_0_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(processing_system7_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(processing_system7_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(processing_system7_0_M_AXI_GP0_AWID),
        .S00_AXI_awlen(processing_system7_0_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(processing_system7_0_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(processing_system7_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(processing_system7_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(processing_system7_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(processing_system7_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(processing_system7_0_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(processing_system7_0_M_AXI_GP0_BID),
        .S00_AXI_bready(processing_system7_0_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(processing_system7_0_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(processing_system7_0_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(processing_system7_0_M_AXI_GP0_RDATA),
        .S00_AXI_rid(processing_system7_0_M_AXI_GP0_RID),
        .S00_AXI_rlast(processing_system7_0_M_AXI_GP0_RLAST),
        .S00_AXI_rready(processing_system7_0_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(processing_system7_0_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(processing_system7_0_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(processing_system7_0_M_AXI_GP0_WDATA),
        .S00_AXI_wid(processing_system7_0_M_AXI_GP0_WID),
        .S00_AXI_wlast(processing_system7_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(processing_system7_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(processing_system7_0_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(processing_system7_0_M_AXI_GP0_WVALID));
  design_1_rst_ps7_0_100M_0 rst_ps7_0_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK0));
endmodule

module design_1_ps7_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire ps7_0_axi_periph_ACLK_net;
  wire ps7_0_axi_periph_ARESETN_net;
  wire [31:0]ps7_0_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]ps7_0_axi_periph_to_s00_couplers_ARBURST;
  wire [3:0]ps7_0_axi_periph_to_s00_couplers_ARCACHE;
  wire [11:0]ps7_0_axi_periph_to_s00_couplers_ARID;
  wire [3:0]ps7_0_axi_periph_to_s00_couplers_ARLEN;
  wire [1:0]ps7_0_axi_periph_to_s00_couplers_ARLOCK;
  wire [2:0]ps7_0_axi_periph_to_s00_couplers_ARPROT;
  wire [3:0]ps7_0_axi_periph_to_s00_couplers_ARQOS;
  wire ps7_0_axi_periph_to_s00_couplers_ARREADY;
  wire [2:0]ps7_0_axi_periph_to_s00_couplers_ARSIZE;
  wire ps7_0_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]ps7_0_axi_periph_to_s00_couplers_AWADDR;
  wire [1:0]ps7_0_axi_periph_to_s00_couplers_AWBURST;
  wire [3:0]ps7_0_axi_periph_to_s00_couplers_AWCACHE;
  wire [11:0]ps7_0_axi_periph_to_s00_couplers_AWID;
  wire [3:0]ps7_0_axi_periph_to_s00_couplers_AWLEN;
  wire [1:0]ps7_0_axi_periph_to_s00_couplers_AWLOCK;
  wire [2:0]ps7_0_axi_periph_to_s00_couplers_AWPROT;
  wire [3:0]ps7_0_axi_periph_to_s00_couplers_AWQOS;
  wire ps7_0_axi_periph_to_s00_couplers_AWREADY;
  wire [2:0]ps7_0_axi_periph_to_s00_couplers_AWSIZE;
  wire ps7_0_axi_periph_to_s00_couplers_AWVALID;
  wire [11:0]ps7_0_axi_periph_to_s00_couplers_BID;
  wire ps7_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]ps7_0_axi_periph_to_s00_couplers_BRESP;
  wire ps7_0_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]ps7_0_axi_periph_to_s00_couplers_RDATA;
  wire [11:0]ps7_0_axi_periph_to_s00_couplers_RID;
  wire ps7_0_axi_periph_to_s00_couplers_RLAST;
  wire ps7_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]ps7_0_axi_periph_to_s00_couplers_RRESP;
  wire ps7_0_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]ps7_0_axi_periph_to_s00_couplers_WDATA;
  wire [11:0]ps7_0_axi_periph_to_s00_couplers_WID;
  wire ps7_0_axi_periph_to_s00_couplers_WLAST;
  wire ps7_0_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]ps7_0_axi_periph_to_s00_couplers_WSTRB;
  wire ps7_0_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_ps7_0_axi_periph_ARADDR;
  wire s00_couplers_to_ps7_0_axi_periph_ARREADY;
  wire s00_couplers_to_ps7_0_axi_periph_ARVALID;
  wire [31:0]s00_couplers_to_ps7_0_axi_periph_AWADDR;
  wire s00_couplers_to_ps7_0_axi_periph_AWREADY;
  wire s00_couplers_to_ps7_0_axi_periph_AWVALID;
  wire s00_couplers_to_ps7_0_axi_periph_BREADY;
  wire [1:0]s00_couplers_to_ps7_0_axi_periph_BRESP;
  wire s00_couplers_to_ps7_0_axi_periph_BVALID;
  wire [31:0]s00_couplers_to_ps7_0_axi_periph_RDATA;
  wire s00_couplers_to_ps7_0_axi_periph_RREADY;
  wire [1:0]s00_couplers_to_ps7_0_axi_periph_RRESP;
  wire s00_couplers_to_ps7_0_axi_periph_RVALID;
  wire [31:0]s00_couplers_to_ps7_0_axi_periph_WDATA;
  wire s00_couplers_to_ps7_0_axi_periph_WREADY;
  wire [3:0]s00_couplers_to_ps7_0_axi_periph_WSTRB;
  wire s00_couplers_to_ps7_0_axi_periph_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_ps7_0_axi_periph_ARADDR;
  assign M00_AXI_arvalid = s00_couplers_to_ps7_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_ps7_0_axi_periph_AWADDR;
  assign M00_AXI_awvalid = s00_couplers_to_ps7_0_axi_periph_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_ps7_0_axi_periph_BREADY;
  assign M00_AXI_rready = s00_couplers_to_ps7_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_ps7_0_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_ps7_0_axi_periph_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_ps7_0_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = ps7_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = ps7_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = ps7_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = ps7_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = ps7_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = ps7_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = ps7_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rlast = ps7_0_axi_periph_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = ps7_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = ps7_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = ps7_0_axi_periph_to_s00_couplers_WREADY;
  assign ps7_0_axi_periph_ACLK_net = M00_ACLK;
  assign ps7_0_axi_periph_ARESETN_net = M00_ARESETN;
  assign ps7_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign ps7_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign ps7_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign ps7_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign ps7_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign ps7_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign ps7_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign ps7_0_axi_periph_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign ps7_0_axi_periph_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign ps7_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign ps7_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_ps7_0_axi_periph_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_ps7_0_axi_periph_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_ps7_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_ps7_0_axi_periph_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_ps7_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_ps7_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_ps7_0_axi_periph_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_ps7_0_axi_periph_WREADY = M00_AXI_wready;
  s00_couplers_imp_UYSKKA s00_couplers
       (.M_ACLK(ps7_0_axi_periph_ACLK_net),
        .M_ARESETN(ps7_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_ps7_0_axi_periph_ARADDR),
        .M_AXI_arready(s00_couplers_to_ps7_0_axi_periph_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_ps7_0_axi_periph_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_ps7_0_axi_periph_AWADDR),
        .M_AXI_awready(s00_couplers_to_ps7_0_axi_periph_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_ps7_0_axi_periph_AWVALID),
        .M_AXI_bready(s00_couplers_to_ps7_0_axi_periph_BREADY),
        .M_AXI_bresp(s00_couplers_to_ps7_0_axi_periph_BRESP),
        .M_AXI_bvalid(s00_couplers_to_ps7_0_axi_periph_BVALID),
        .M_AXI_rdata(s00_couplers_to_ps7_0_axi_periph_RDATA),
        .M_AXI_rready(s00_couplers_to_ps7_0_axi_periph_RREADY),
        .M_AXI_rresp(s00_couplers_to_ps7_0_axi_periph_RRESP),
        .M_AXI_rvalid(s00_couplers_to_ps7_0_axi_periph_RVALID),
        .M_AXI_wdata(s00_couplers_to_ps7_0_axi_periph_WDATA),
        .M_AXI_wready(s00_couplers_to_ps7_0_axi_periph_WREADY),
        .M_AXI_wstrb(s00_couplers_to_ps7_0_axi_periph_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_ps7_0_axi_periph_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(ps7_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arburst(ps7_0_axi_periph_to_s00_couplers_ARBURST),
        .S_AXI_arcache(ps7_0_axi_periph_to_s00_couplers_ARCACHE),
        .S_AXI_arid(ps7_0_axi_periph_to_s00_couplers_ARID),
        .S_AXI_arlen(ps7_0_axi_periph_to_s00_couplers_ARLEN),
        .S_AXI_arlock(ps7_0_axi_periph_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(ps7_0_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arqos(ps7_0_axi_periph_to_s00_couplers_ARQOS),
        .S_AXI_arready(ps7_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arsize(ps7_0_axi_periph_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(ps7_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(ps7_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awburst(ps7_0_axi_periph_to_s00_couplers_AWBURST),
        .S_AXI_awcache(ps7_0_axi_periph_to_s00_couplers_AWCACHE),
        .S_AXI_awid(ps7_0_axi_periph_to_s00_couplers_AWID),
        .S_AXI_awlen(ps7_0_axi_periph_to_s00_couplers_AWLEN),
        .S_AXI_awlock(ps7_0_axi_periph_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(ps7_0_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awqos(ps7_0_axi_periph_to_s00_couplers_AWQOS),
        .S_AXI_awready(ps7_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awsize(ps7_0_axi_periph_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(ps7_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bid(ps7_0_axi_periph_to_s00_couplers_BID),
        .S_AXI_bready(ps7_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(ps7_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(ps7_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(ps7_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rid(ps7_0_axi_periph_to_s00_couplers_RID),
        .S_AXI_rlast(ps7_0_axi_periph_to_s00_couplers_RLAST),
        .S_AXI_rready(ps7_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(ps7_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(ps7_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(ps7_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wid(ps7_0_axi_periph_to_s00_couplers_WID),
        .S_AXI_wlast(ps7_0_axi_periph_to_s00_couplers_WLAST),
        .S_AXI_wready(ps7_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(ps7_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(ps7_0_axi_periph_to_s00_couplers_WVALID));
endmodule

module s00_couplers_imp_UYSKKA
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule
