// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:bn:1.0
// IP Revision: 2112925421

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_bn_0_0 (
  s_axi_CTRL_AWADDR,
  s_axi_CTRL_AWVALID,
  s_axi_CTRL_AWREADY,
  s_axi_CTRL_WDATA,
  s_axi_CTRL_WSTRB,
  s_axi_CTRL_WVALID,
  s_axi_CTRL_WREADY,
  s_axi_CTRL_BRESP,
  s_axi_CTRL_BVALID,
  s_axi_CTRL_BREADY,
  s_axi_CTRL_ARADDR,
  s_axi_CTRL_ARVALID,
  s_axi_CTRL_ARREADY,
  s_axi_CTRL_RDATA,
  s_axi_CTRL_RRESP,
  s_axi_CTRL_RVALID,
  s_axi_CTRL_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt,
  m_axi_IN_r_AWADDR,
  m_axi_IN_r_AWLEN,
  m_axi_IN_r_AWSIZE,
  m_axi_IN_r_AWBURST,
  m_axi_IN_r_AWLOCK,
  m_axi_IN_r_AWREGION,
  m_axi_IN_r_AWCACHE,
  m_axi_IN_r_AWPROT,
  m_axi_IN_r_AWQOS,
  m_axi_IN_r_AWVALID,
  m_axi_IN_r_AWREADY,
  m_axi_IN_r_WDATA,
  m_axi_IN_r_WSTRB,
  m_axi_IN_r_WLAST,
  m_axi_IN_r_WVALID,
  m_axi_IN_r_WREADY,
  m_axi_IN_r_BRESP,
  m_axi_IN_r_BVALID,
  m_axi_IN_r_BREADY,
  m_axi_IN_r_ARADDR,
  m_axi_IN_r_ARLEN,
  m_axi_IN_r_ARSIZE,
  m_axi_IN_r_ARBURST,
  m_axi_IN_r_ARLOCK,
  m_axi_IN_r_ARREGION,
  m_axi_IN_r_ARCACHE,
  m_axi_IN_r_ARPROT,
  m_axi_IN_r_ARQOS,
  m_axi_IN_r_ARVALID,
  m_axi_IN_r_ARREADY,
  m_axi_IN_r_RDATA,
  m_axi_IN_r_RRESP,
  m_axi_IN_r_RLAST,
  m_axi_IN_r_RVALID,
  m_axi_IN_r_RREADY,
  m_axi_BETA_AWADDR,
  m_axi_BETA_AWLEN,
  m_axi_BETA_AWSIZE,
  m_axi_BETA_AWBURST,
  m_axi_BETA_AWLOCK,
  m_axi_BETA_AWREGION,
  m_axi_BETA_AWCACHE,
  m_axi_BETA_AWPROT,
  m_axi_BETA_AWQOS,
  m_axi_BETA_AWVALID,
  m_axi_BETA_AWREADY,
  m_axi_BETA_WDATA,
  m_axi_BETA_WSTRB,
  m_axi_BETA_WLAST,
  m_axi_BETA_WVALID,
  m_axi_BETA_WREADY,
  m_axi_BETA_BRESP,
  m_axi_BETA_BVALID,
  m_axi_BETA_BREADY,
  m_axi_BETA_ARADDR,
  m_axi_BETA_ARLEN,
  m_axi_BETA_ARSIZE,
  m_axi_BETA_ARBURST,
  m_axi_BETA_ARLOCK,
  m_axi_BETA_ARREGION,
  m_axi_BETA_ARCACHE,
  m_axi_BETA_ARPROT,
  m_axi_BETA_ARQOS,
  m_axi_BETA_ARVALID,
  m_axi_BETA_ARREADY,
  m_axi_BETA_RDATA,
  m_axi_BETA_RRESP,
  m_axi_BETA_RLAST,
  m_axi_BETA_RVALID,
  m_axi_BETA_RREADY,
  m_axi_GAMMA_AWADDR,
  m_axi_GAMMA_AWLEN,
  m_axi_GAMMA_AWSIZE,
  m_axi_GAMMA_AWBURST,
  m_axi_GAMMA_AWLOCK,
  m_axi_GAMMA_AWREGION,
  m_axi_GAMMA_AWCACHE,
  m_axi_GAMMA_AWPROT,
  m_axi_GAMMA_AWQOS,
  m_axi_GAMMA_AWVALID,
  m_axi_GAMMA_AWREADY,
  m_axi_GAMMA_WDATA,
  m_axi_GAMMA_WSTRB,
  m_axi_GAMMA_WLAST,
  m_axi_GAMMA_WVALID,
  m_axi_GAMMA_WREADY,
  m_axi_GAMMA_BRESP,
  m_axi_GAMMA_BVALID,
  m_axi_GAMMA_BREADY,
  m_axi_GAMMA_ARADDR,
  m_axi_GAMMA_ARLEN,
  m_axi_GAMMA_ARSIZE,
  m_axi_GAMMA_ARBURST,
  m_axi_GAMMA_ARLOCK,
  m_axi_GAMMA_ARREGION,
  m_axi_GAMMA_ARCACHE,
  m_axi_GAMMA_ARPROT,
  m_axi_GAMMA_ARQOS,
  m_axi_GAMMA_ARVALID,
  m_axi_GAMMA_ARREADY,
  m_axi_GAMMA_RDATA,
  m_axi_GAMMA_RRESP,
  m_axi_GAMMA_RLAST,
  m_axi_GAMMA_RVALID,
  m_axi_GAMMA_RREADY,
  m_axi_M_M_AWADDR,
  m_axi_M_M_AWLEN,
  m_axi_M_M_AWSIZE,
  m_axi_M_M_AWBURST,
  m_axi_M_M_AWLOCK,
  m_axi_M_M_AWREGION,
  m_axi_M_M_AWCACHE,
  m_axi_M_M_AWPROT,
  m_axi_M_M_AWQOS,
  m_axi_M_M_AWVALID,
  m_axi_M_M_AWREADY,
  m_axi_M_M_WDATA,
  m_axi_M_M_WSTRB,
  m_axi_M_M_WLAST,
  m_axi_M_M_WVALID,
  m_axi_M_M_WREADY,
  m_axi_M_M_BRESP,
  m_axi_M_M_BVALID,
  m_axi_M_M_BREADY,
  m_axi_M_M_ARADDR,
  m_axi_M_M_ARLEN,
  m_axi_M_M_ARSIZE,
  m_axi_M_M_ARBURST,
  m_axi_M_M_ARLOCK,
  m_axi_M_M_ARREGION,
  m_axi_M_M_ARCACHE,
  m_axi_M_M_ARPROT,
  m_axi_M_M_ARQOS,
  m_axi_M_M_ARVALID,
  m_axi_M_M_ARREADY,
  m_axi_M_M_RDATA,
  m_axi_M_M_RRESP,
  m_axi_M_M_RLAST,
  m_axi_M_M_RVALID,
  m_axi_M_M_RREADY,
  m_axi_M_V_AWADDR,
  m_axi_M_V_AWLEN,
  m_axi_M_V_AWSIZE,
  m_axi_M_V_AWBURST,
  m_axi_M_V_AWLOCK,
  m_axi_M_V_AWREGION,
  m_axi_M_V_AWCACHE,
  m_axi_M_V_AWPROT,
  m_axi_M_V_AWQOS,
  m_axi_M_V_AWVALID,
  m_axi_M_V_AWREADY,
  m_axi_M_V_WDATA,
  m_axi_M_V_WSTRB,
  m_axi_M_V_WLAST,
  m_axi_M_V_WVALID,
  m_axi_M_V_WREADY,
  m_axi_M_V_BRESP,
  m_axi_M_V_BVALID,
  m_axi_M_V_BREADY,
  m_axi_M_V_ARADDR,
  m_axi_M_V_ARLEN,
  m_axi_M_V_ARSIZE,
  m_axi_M_V_ARBURST,
  m_axi_M_V_ARLOCK,
  m_axi_M_V_ARREGION,
  m_axi_M_V_ARCACHE,
  m_axi_M_V_ARPROT,
  m_axi_M_V_ARQOS,
  m_axi_M_V_ARVALID,
  m_axi_M_V_ARREADY,
  m_axi_M_V_RDATA,
  m_axi_M_V_RRESP,
  m_axi_M_V_RLAST,
  m_axi_M_V_RVALID,
  m_axi_M_V_RREADY,
  m_axi_OUT_r_AWADDR,
  m_axi_OUT_r_AWLEN,
  m_axi_OUT_r_AWSIZE,
  m_axi_OUT_r_AWBURST,
  m_axi_OUT_r_AWLOCK,
  m_axi_OUT_r_AWREGION,
  m_axi_OUT_r_AWCACHE,
  m_axi_OUT_r_AWPROT,
  m_axi_OUT_r_AWQOS,
  m_axi_OUT_r_AWVALID,
  m_axi_OUT_r_AWREADY,
  m_axi_OUT_r_WDATA,
  m_axi_OUT_r_WSTRB,
  m_axi_OUT_r_WLAST,
  m_axi_OUT_r_WVALID,
  m_axi_OUT_r_WREADY,
  m_axi_OUT_r_BRESP,
  m_axi_OUT_r_BVALID,
  m_axi_OUT_r_BREADY,
  m_axi_OUT_r_ARADDR,
  m_axi_OUT_r_ARLEN,
  m_axi_OUT_r_ARSIZE,
  m_axi_OUT_r_ARBURST,
  m_axi_OUT_r_ARLOCK,
  m_axi_OUT_r_ARREGION,
  m_axi_OUT_r_ARCACHE,
  m_axi_OUT_r_ARPROT,
  m_axi_OUT_r_ARQOS,
  m_axi_OUT_r_ARVALID,
  m_axi_OUT_r_ARREADY,
  m_axi_OUT_r_RDATA,
  m_axi_OUT_r_RRESP,
  m_axi_OUT_r_RLAST,
  m_axi_OUT_r_RVALID,
  m_axi_OUT_r_RREADY
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWADDR" *)
input wire [5 : 0] s_axi_CTRL_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWVALID" *)
input wire s_axi_CTRL_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWREADY" *)
output wire s_axi_CTRL_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WDATA" *)
input wire [31 : 0] s_axi_CTRL_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WSTRB" *)
input wire [3 : 0] s_axi_CTRL_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WVALID" *)
input wire s_axi_CTRL_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WREADY" *)
output wire s_axi_CTRL_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BRESP" *)
output wire [1 : 0] s_axi_CTRL_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BVALID" *)
output wire s_axi_CTRL_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BREADY" *)
input wire s_axi_CTRL_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARADDR" *)
input wire [5 : 0] s_axi_CTRL_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARVALID" *)
input wire s_axi_CTRL_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARREADY" *)
output wire s_axi_CTRL_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RDATA" *)
output wire [31 : 0] s_axi_CTRL_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RRESP" *)
output wire [1 : 0] s_axi_CTRL_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RVALID" *)
output wire s_axi_CTRL_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_CTRL, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_TH\
READS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RREADY" *)
input wire s_axi_CTRL_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CTRL:m_axi_IN_r:m_axi_BETA:m_axi_GAMMA:m_axi_M_M:m_axi_M_V:m_axi_OUT_r, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r AWADDR" *)
output wire [31 : 0] m_axi_IN_r_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r AWLEN" *)
output wire [7 : 0] m_axi_IN_r_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r AWSIZE" *)
output wire [2 : 0] m_axi_IN_r_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r AWBURST" *)
output wire [1 : 0] m_axi_IN_r_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r AWLOCK" *)
output wire [1 : 0] m_axi_IN_r_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r AWREGION" *)
output wire [3 : 0] m_axi_IN_r_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r AWCACHE" *)
output wire [3 : 0] m_axi_IN_r_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r AWPROT" *)
output wire [2 : 0] m_axi_IN_r_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r AWQOS" *)
output wire [3 : 0] m_axi_IN_r_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r AWVALID" *)
output wire m_axi_IN_r_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r AWREADY" *)
input wire m_axi_IN_r_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r WDATA" *)
output wire [31 : 0] m_axi_IN_r_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r WSTRB" *)
output wire [3 : 0] m_axi_IN_r_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r WLAST" *)
output wire m_axi_IN_r_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r WVALID" *)
output wire m_axi_IN_r_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r WREADY" *)
input wire m_axi_IN_r_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r BRESP" *)
input wire [1 : 0] m_axi_IN_r_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r BVALID" *)
input wire m_axi_IN_r_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r BREADY" *)
output wire m_axi_IN_r_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r ARADDR" *)
output wire [31 : 0] m_axi_IN_r_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r ARLEN" *)
output wire [7 : 0] m_axi_IN_r_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r ARSIZE" *)
output wire [2 : 0] m_axi_IN_r_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r ARBURST" *)
output wire [1 : 0] m_axi_IN_r_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r ARLOCK" *)
output wire [1 : 0] m_axi_IN_r_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r ARREGION" *)
output wire [3 : 0] m_axi_IN_r_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r ARCACHE" *)
output wire [3 : 0] m_axi_IN_r_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r ARPROT" *)
output wire [2 : 0] m_axi_IN_r_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r ARQOS" *)
output wire [3 : 0] m_axi_IN_r_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r ARVALID" *)
output wire m_axi_IN_r_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r ARREADY" *)
input wire m_axi_IN_r_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r RDATA" *)
input wire [31 : 0] m_axi_IN_r_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r RRESP" *)
input wire [1 : 0] m_axi_IN_r_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r RLAST" *)
input wire m_axi_IN_r_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r RVALID" *)
input wire m_axi_IN_r_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_IN_r, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAIN \
design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN_r RREADY" *)
output wire m_axi_IN_r_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA AWADDR" *)
output wire [31 : 0] m_axi_BETA_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA AWLEN" *)
output wire [7 : 0] m_axi_BETA_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA AWSIZE" *)
output wire [2 : 0] m_axi_BETA_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA AWBURST" *)
output wire [1 : 0] m_axi_BETA_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA AWLOCK" *)
output wire [1 : 0] m_axi_BETA_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA AWREGION" *)
output wire [3 : 0] m_axi_BETA_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA AWCACHE" *)
output wire [3 : 0] m_axi_BETA_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA AWPROT" *)
output wire [2 : 0] m_axi_BETA_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA AWQOS" *)
output wire [3 : 0] m_axi_BETA_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA AWVALID" *)
output wire m_axi_BETA_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA AWREADY" *)
input wire m_axi_BETA_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA WDATA" *)
output wire [31 : 0] m_axi_BETA_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA WSTRB" *)
output wire [3 : 0] m_axi_BETA_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA WLAST" *)
output wire m_axi_BETA_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA WVALID" *)
output wire m_axi_BETA_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA WREADY" *)
input wire m_axi_BETA_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA BRESP" *)
input wire [1 : 0] m_axi_BETA_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA BVALID" *)
input wire m_axi_BETA_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA BREADY" *)
output wire m_axi_BETA_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA ARADDR" *)
output wire [31 : 0] m_axi_BETA_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA ARLEN" *)
output wire [7 : 0] m_axi_BETA_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA ARSIZE" *)
output wire [2 : 0] m_axi_BETA_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA ARBURST" *)
output wire [1 : 0] m_axi_BETA_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA ARLOCK" *)
output wire [1 : 0] m_axi_BETA_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA ARREGION" *)
output wire [3 : 0] m_axi_BETA_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA ARCACHE" *)
output wire [3 : 0] m_axi_BETA_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA ARPROT" *)
output wire [2 : 0] m_axi_BETA_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA ARQOS" *)
output wire [3 : 0] m_axi_BETA_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA ARVALID" *)
output wire m_axi_BETA_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA ARREADY" *)
input wire m_axi_BETA_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA RDATA" *)
input wire [31 : 0] m_axi_BETA_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA RRESP" *)
input wire [1 : 0] m_axi_BETA_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA RLAST" *)
input wire m_axi_BETA_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA RVALID" *)
input wire m_axi_BETA_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_BETA, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAIN \
design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_BETA RREADY" *)
output wire m_axi_BETA_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA AWADDR" *)
output wire [31 : 0] m_axi_GAMMA_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA AWLEN" *)
output wire [7 : 0] m_axi_GAMMA_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA AWSIZE" *)
output wire [2 : 0] m_axi_GAMMA_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA AWBURST" *)
output wire [1 : 0] m_axi_GAMMA_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA AWLOCK" *)
output wire [1 : 0] m_axi_GAMMA_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA AWREGION" *)
output wire [3 : 0] m_axi_GAMMA_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA AWCACHE" *)
output wire [3 : 0] m_axi_GAMMA_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA AWPROT" *)
output wire [2 : 0] m_axi_GAMMA_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA AWQOS" *)
output wire [3 : 0] m_axi_GAMMA_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA AWVALID" *)
output wire m_axi_GAMMA_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA AWREADY" *)
input wire m_axi_GAMMA_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA WDATA" *)
output wire [31 : 0] m_axi_GAMMA_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA WSTRB" *)
output wire [3 : 0] m_axi_GAMMA_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA WLAST" *)
output wire m_axi_GAMMA_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA WVALID" *)
output wire m_axi_GAMMA_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA WREADY" *)
input wire m_axi_GAMMA_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA BRESP" *)
input wire [1 : 0] m_axi_GAMMA_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA BVALID" *)
input wire m_axi_GAMMA_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA BREADY" *)
output wire m_axi_GAMMA_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA ARADDR" *)
output wire [31 : 0] m_axi_GAMMA_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA ARLEN" *)
output wire [7 : 0] m_axi_GAMMA_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA ARSIZE" *)
output wire [2 : 0] m_axi_GAMMA_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA ARBURST" *)
output wire [1 : 0] m_axi_GAMMA_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA ARLOCK" *)
output wire [1 : 0] m_axi_GAMMA_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA ARREGION" *)
output wire [3 : 0] m_axi_GAMMA_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA ARCACHE" *)
output wire [3 : 0] m_axi_GAMMA_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA ARPROT" *)
output wire [2 : 0] m_axi_GAMMA_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA ARQOS" *)
output wire [3 : 0] m_axi_GAMMA_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA ARVALID" *)
output wire m_axi_GAMMA_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA ARREADY" *)
input wire m_axi_GAMMA_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA RDATA" *)
input wire [31 : 0] m_axi_GAMMA_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA RRESP" *)
input wire [1 : 0] m_axi_GAMMA_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA RLAST" *)
input wire m_axi_GAMMA_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA RVALID" *)
input wire m_axi_GAMMA_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_GAMMA, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAIN\
 design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_GAMMA RREADY" *)
output wire m_axi_GAMMA_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M AWADDR" *)
output wire [31 : 0] m_axi_M_M_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M AWLEN" *)
output wire [7 : 0] m_axi_M_M_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M AWSIZE" *)
output wire [2 : 0] m_axi_M_M_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M AWBURST" *)
output wire [1 : 0] m_axi_M_M_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M AWLOCK" *)
output wire [1 : 0] m_axi_M_M_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M AWREGION" *)
output wire [3 : 0] m_axi_M_M_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M AWCACHE" *)
output wire [3 : 0] m_axi_M_M_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M AWPROT" *)
output wire [2 : 0] m_axi_M_M_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M AWQOS" *)
output wire [3 : 0] m_axi_M_M_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M AWVALID" *)
output wire m_axi_M_M_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M AWREADY" *)
input wire m_axi_M_M_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M WDATA" *)
output wire [31 : 0] m_axi_M_M_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M WSTRB" *)
output wire [3 : 0] m_axi_M_M_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M WLAST" *)
output wire m_axi_M_M_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M WVALID" *)
output wire m_axi_M_M_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M WREADY" *)
input wire m_axi_M_M_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M BRESP" *)
input wire [1 : 0] m_axi_M_M_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M BVALID" *)
input wire m_axi_M_M_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M BREADY" *)
output wire m_axi_M_M_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M ARADDR" *)
output wire [31 : 0] m_axi_M_M_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M ARLEN" *)
output wire [7 : 0] m_axi_M_M_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M ARSIZE" *)
output wire [2 : 0] m_axi_M_M_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M ARBURST" *)
output wire [1 : 0] m_axi_M_M_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M ARLOCK" *)
output wire [1 : 0] m_axi_M_M_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M ARREGION" *)
output wire [3 : 0] m_axi_M_M_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M ARCACHE" *)
output wire [3 : 0] m_axi_M_M_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M ARPROT" *)
output wire [2 : 0] m_axi_M_M_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M ARQOS" *)
output wire [3 : 0] m_axi_M_M_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M ARVALID" *)
output wire m_axi_M_M_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M ARREADY" *)
input wire m_axi_M_M_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M RDATA" *)
input wire [31 : 0] m_axi_M_M_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M RRESP" *)
input wire [1 : 0] m_axi_M_M_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M RLAST" *)
input wire m_axi_M_M_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M RVALID" *)
input wire m_axi_M_M_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_M_M, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAIN d\
esign_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_M RREADY" *)
output wire m_axi_M_M_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V AWADDR" *)
output wire [31 : 0] m_axi_M_V_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V AWLEN" *)
output wire [7 : 0] m_axi_M_V_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V AWSIZE" *)
output wire [2 : 0] m_axi_M_V_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V AWBURST" *)
output wire [1 : 0] m_axi_M_V_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V AWLOCK" *)
output wire [1 : 0] m_axi_M_V_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V AWREGION" *)
output wire [3 : 0] m_axi_M_V_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V AWCACHE" *)
output wire [3 : 0] m_axi_M_V_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V AWPROT" *)
output wire [2 : 0] m_axi_M_V_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V AWQOS" *)
output wire [3 : 0] m_axi_M_V_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V AWVALID" *)
output wire m_axi_M_V_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V AWREADY" *)
input wire m_axi_M_V_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V WDATA" *)
output wire [31 : 0] m_axi_M_V_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V WSTRB" *)
output wire [3 : 0] m_axi_M_V_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V WLAST" *)
output wire m_axi_M_V_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V WVALID" *)
output wire m_axi_M_V_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V WREADY" *)
input wire m_axi_M_V_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V BRESP" *)
input wire [1 : 0] m_axi_M_V_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V BVALID" *)
input wire m_axi_M_V_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V BREADY" *)
output wire m_axi_M_V_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V ARADDR" *)
output wire [31 : 0] m_axi_M_V_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V ARLEN" *)
output wire [7 : 0] m_axi_M_V_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V ARSIZE" *)
output wire [2 : 0] m_axi_M_V_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V ARBURST" *)
output wire [1 : 0] m_axi_M_V_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V ARLOCK" *)
output wire [1 : 0] m_axi_M_V_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V ARREGION" *)
output wire [3 : 0] m_axi_M_V_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V ARCACHE" *)
output wire [3 : 0] m_axi_M_V_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V ARPROT" *)
output wire [2 : 0] m_axi_M_V_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V ARQOS" *)
output wire [3 : 0] m_axi_M_V_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V ARVALID" *)
output wire m_axi_M_V_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V ARREADY" *)
input wire m_axi_M_V_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V RDATA" *)
input wire [31 : 0] m_axi_M_V_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V RRESP" *)
input wire [1 : 0] m_axi_M_V_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V RLAST" *)
input wire m_axi_M_V_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V RVALID" *)
input wire m_axi_M_V_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_M_V, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAIN d\
esign_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_M_V RREADY" *)
output wire m_axi_M_V_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r AWADDR" *)
output wire [31 : 0] m_axi_OUT_r_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r AWLEN" *)
output wire [7 : 0] m_axi_OUT_r_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r AWSIZE" *)
output wire [2 : 0] m_axi_OUT_r_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r AWBURST" *)
output wire [1 : 0] m_axi_OUT_r_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r AWLOCK" *)
output wire [1 : 0] m_axi_OUT_r_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r AWREGION" *)
output wire [3 : 0] m_axi_OUT_r_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r AWCACHE" *)
output wire [3 : 0] m_axi_OUT_r_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r AWPROT" *)
output wire [2 : 0] m_axi_OUT_r_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r AWQOS" *)
output wire [3 : 0] m_axi_OUT_r_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r AWVALID" *)
output wire m_axi_OUT_r_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r AWREADY" *)
input wire m_axi_OUT_r_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r WDATA" *)
output wire [31 : 0] m_axi_OUT_r_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r WSTRB" *)
output wire [3 : 0] m_axi_OUT_r_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r WLAST" *)
output wire m_axi_OUT_r_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r WVALID" *)
output wire m_axi_OUT_r_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r WREADY" *)
input wire m_axi_OUT_r_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r BRESP" *)
input wire [1 : 0] m_axi_OUT_r_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r BVALID" *)
input wire m_axi_OUT_r_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r BREADY" *)
output wire m_axi_OUT_r_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r ARADDR" *)
output wire [31 : 0] m_axi_OUT_r_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r ARLEN" *)
output wire [7 : 0] m_axi_OUT_r_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r ARSIZE" *)
output wire [2 : 0] m_axi_OUT_r_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r ARBURST" *)
output wire [1 : 0] m_axi_OUT_r_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r ARLOCK" *)
output wire [1 : 0] m_axi_OUT_r_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r ARREGION" *)
output wire [3 : 0] m_axi_OUT_r_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r ARCACHE" *)
output wire [3 : 0] m_axi_OUT_r_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r ARPROT" *)
output wire [2 : 0] m_axi_OUT_r_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r ARQOS" *)
output wire [3 : 0] m_axi_OUT_r_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r ARVALID" *)
output wire m_axi_OUT_r_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r ARREADY" *)
input wire m_axi_OUT_r_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r RDATA" *)
input wire [31 : 0] m_axi_OUT_r_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r RRESP" *)
input wire [1 : 0] m_axi_OUT_r_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r RLAST" *)
input wire m_axi_OUT_r_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r RVALID" *)
input wire m_axi_OUT_r_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_OUT_r, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAIN\
 design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r RREADY" *)
output wire m_axi_OUT_r_RREADY;

  bn #(
    .C_S_AXI_CTRL_ADDR_WIDTH(6),
    .C_S_AXI_CTRL_DATA_WIDTH(32),
    .C_M_AXI_IN_R_ID_WIDTH(1),
    .C_M_AXI_IN_R_ADDR_WIDTH(32),
    .C_M_AXI_IN_R_DATA_WIDTH(32),
    .C_M_AXI_IN_R_AWUSER_WIDTH(1),
    .C_M_AXI_IN_R_ARUSER_WIDTH(1),
    .C_M_AXI_IN_R_WUSER_WIDTH(1),
    .C_M_AXI_IN_R_RUSER_WIDTH(1),
    .C_M_AXI_IN_R_BUSER_WIDTH(1),
    .C_M_AXI_IN_R_USER_VALUE('H00000000),
    .C_M_AXI_IN_R_PROT_VALUE('B000),
    .C_M_AXI_IN_R_CACHE_VALUE('B0011),
    .C_M_AXI_BETA_ID_WIDTH(1),
    .C_M_AXI_BETA_ADDR_WIDTH(32),
    .C_M_AXI_BETA_DATA_WIDTH(32),
    .C_M_AXI_BETA_AWUSER_WIDTH(1),
    .C_M_AXI_BETA_ARUSER_WIDTH(1),
    .C_M_AXI_BETA_WUSER_WIDTH(1),
    .C_M_AXI_BETA_RUSER_WIDTH(1),
    .C_M_AXI_BETA_BUSER_WIDTH(1),
    .C_M_AXI_BETA_USER_VALUE('H00000000),
    .C_M_AXI_BETA_PROT_VALUE('B000),
    .C_M_AXI_BETA_CACHE_VALUE('B0011),
    .C_M_AXI_GAMMA_ID_WIDTH(1),
    .C_M_AXI_GAMMA_ADDR_WIDTH(32),
    .C_M_AXI_GAMMA_DATA_WIDTH(32),
    .C_M_AXI_GAMMA_AWUSER_WIDTH(1),
    .C_M_AXI_GAMMA_ARUSER_WIDTH(1),
    .C_M_AXI_GAMMA_WUSER_WIDTH(1),
    .C_M_AXI_GAMMA_RUSER_WIDTH(1),
    .C_M_AXI_GAMMA_BUSER_WIDTH(1),
    .C_M_AXI_GAMMA_USER_VALUE('H00000000),
    .C_M_AXI_GAMMA_PROT_VALUE('B000),
    .C_M_AXI_GAMMA_CACHE_VALUE('B0011),
    .C_M_AXI_M_M_ID_WIDTH(1),
    .C_M_AXI_M_M_ADDR_WIDTH(32),
    .C_M_AXI_M_M_DATA_WIDTH(32),
    .C_M_AXI_M_M_AWUSER_WIDTH(1),
    .C_M_AXI_M_M_ARUSER_WIDTH(1),
    .C_M_AXI_M_M_WUSER_WIDTH(1),
    .C_M_AXI_M_M_RUSER_WIDTH(1),
    .C_M_AXI_M_M_BUSER_WIDTH(1),
    .C_M_AXI_M_M_USER_VALUE('H00000000),
    .C_M_AXI_M_M_PROT_VALUE('B000),
    .C_M_AXI_M_M_CACHE_VALUE('B0011),
    .C_M_AXI_M_V_ID_WIDTH(1),
    .C_M_AXI_M_V_ADDR_WIDTH(32),
    .C_M_AXI_M_V_DATA_WIDTH(32),
    .C_M_AXI_M_V_AWUSER_WIDTH(1),
    .C_M_AXI_M_V_ARUSER_WIDTH(1),
    .C_M_AXI_M_V_WUSER_WIDTH(1),
    .C_M_AXI_M_V_RUSER_WIDTH(1),
    .C_M_AXI_M_V_BUSER_WIDTH(1),
    .C_M_AXI_M_V_USER_VALUE('H00000000),
    .C_M_AXI_M_V_PROT_VALUE('B000),
    .C_M_AXI_M_V_CACHE_VALUE('B0011),
    .C_M_AXI_OUT_R_ID_WIDTH(1),
    .C_M_AXI_OUT_R_ADDR_WIDTH(32),
    .C_M_AXI_OUT_R_DATA_WIDTH(32),
    .C_M_AXI_OUT_R_AWUSER_WIDTH(1),
    .C_M_AXI_OUT_R_ARUSER_WIDTH(1),
    .C_M_AXI_OUT_R_WUSER_WIDTH(1),
    .C_M_AXI_OUT_R_RUSER_WIDTH(1),
    .C_M_AXI_OUT_R_BUSER_WIDTH(1),
    .C_M_AXI_OUT_R_USER_VALUE('H00000000),
    .C_M_AXI_OUT_R_PROT_VALUE('B000),
    .C_M_AXI_OUT_R_CACHE_VALUE('B0011)
  ) inst (
    .s_axi_CTRL_AWADDR(s_axi_CTRL_AWADDR),
    .s_axi_CTRL_AWVALID(s_axi_CTRL_AWVALID),
    .s_axi_CTRL_AWREADY(s_axi_CTRL_AWREADY),
    .s_axi_CTRL_WDATA(s_axi_CTRL_WDATA),
    .s_axi_CTRL_WSTRB(s_axi_CTRL_WSTRB),
    .s_axi_CTRL_WVALID(s_axi_CTRL_WVALID),
    .s_axi_CTRL_WREADY(s_axi_CTRL_WREADY),
    .s_axi_CTRL_BRESP(s_axi_CTRL_BRESP),
    .s_axi_CTRL_BVALID(s_axi_CTRL_BVALID),
    .s_axi_CTRL_BREADY(s_axi_CTRL_BREADY),
    .s_axi_CTRL_ARADDR(s_axi_CTRL_ARADDR),
    .s_axi_CTRL_ARVALID(s_axi_CTRL_ARVALID),
    .s_axi_CTRL_ARREADY(s_axi_CTRL_ARREADY),
    .s_axi_CTRL_RDATA(s_axi_CTRL_RDATA),
    .s_axi_CTRL_RRESP(s_axi_CTRL_RRESP),
    .s_axi_CTRL_RVALID(s_axi_CTRL_RVALID),
    .s_axi_CTRL_RREADY(s_axi_CTRL_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .m_axi_IN_r_AWID(),
    .m_axi_IN_r_AWADDR(m_axi_IN_r_AWADDR),
    .m_axi_IN_r_AWLEN(m_axi_IN_r_AWLEN),
    .m_axi_IN_r_AWSIZE(m_axi_IN_r_AWSIZE),
    .m_axi_IN_r_AWBURST(m_axi_IN_r_AWBURST),
    .m_axi_IN_r_AWLOCK(m_axi_IN_r_AWLOCK),
    .m_axi_IN_r_AWREGION(m_axi_IN_r_AWREGION),
    .m_axi_IN_r_AWCACHE(m_axi_IN_r_AWCACHE),
    .m_axi_IN_r_AWPROT(m_axi_IN_r_AWPROT),
    .m_axi_IN_r_AWQOS(m_axi_IN_r_AWQOS),
    .m_axi_IN_r_AWUSER(),
    .m_axi_IN_r_AWVALID(m_axi_IN_r_AWVALID),
    .m_axi_IN_r_AWREADY(m_axi_IN_r_AWREADY),
    .m_axi_IN_r_WID(),
    .m_axi_IN_r_WDATA(m_axi_IN_r_WDATA),
    .m_axi_IN_r_WSTRB(m_axi_IN_r_WSTRB),
    .m_axi_IN_r_WLAST(m_axi_IN_r_WLAST),
    .m_axi_IN_r_WUSER(),
    .m_axi_IN_r_WVALID(m_axi_IN_r_WVALID),
    .m_axi_IN_r_WREADY(m_axi_IN_r_WREADY),
    .m_axi_IN_r_BID(1'B0),
    .m_axi_IN_r_BRESP(m_axi_IN_r_BRESP),
    .m_axi_IN_r_BUSER(1'B0),
    .m_axi_IN_r_BVALID(m_axi_IN_r_BVALID),
    .m_axi_IN_r_BREADY(m_axi_IN_r_BREADY),
    .m_axi_IN_r_ARID(),
    .m_axi_IN_r_ARADDR(m_axi_IN_r_ARADDR),
    .m_axi_IN_r_ARLEN(m_axi_IN_r_ARLEN),
    .m_axi_IN_r_ARSIZE(m_axi_IN_r_ARSIZE),
    .m_axi_IN_r_ARBURST(m_axi_IN_r_ARBURST),
    .m_axi_IN_r_ARLOCK(m_axi_IN_r_ARLOCK),
    .m_axi_IN_r_ARREGION(m_axi_IN_r_ARREGION),
    .m_axi_IN_r_ARCACHE(m_axi_IN_r_ARCACHE),
    .m_axi_IN_r_ARPROT(m_axi_IN_r_ARPROT),
    .m_axi_IN_r_ARQOS(m_axi_IN_r_ARQOS),
    .m_axi_IN_r_ARUSER(),
    .m_axi_IN_r_ARVALID(m_axi_IN_r_ARVALID),
    .m_axi_IN_r_ARREADY(m_axi_IN_r_ARREADY),
    .m_axi_IN_r_RID(1'B0),
    .m_axi_IN_r_RDATA(m_axi_IN_r_RDATA),
    .m_axi_IN_r_RRESP(m_axi_IN_r_RRESP),
    .m_axi_IN_r_RLAST(m_axi_IN_r_RLAST),
    .m_axi_IN_r_RUSER(1'B0),
    .m_axi_IN_r_RVALID(m_axi_IN_r_RVALID),
    .m_axi_IN_r_RREADY(m_axi_IN_r_RREADY),
    .m_axi_BETA_AWID(),
    .m_axi_BETA_AWADDR(m_axi_BETA_AWADDR),
    .m_axi_BETA_AWLEN(m_axi_BETA_AWLEN),
    .m_axi_BETA_AWSIZE(m_axi_BETA_AWSIZE),
    .m_axi_BETA_AWBURST(m_axi_BETA_AWBURST),
    .m_axi_BETA_AWLOCK(m_axi_BETA_AWLOCK),
    .m_axi_BETA_AWREGION(m_axi_BETA_AWREGION),
    .m_axi_BETA_AWCACHE(m_axi_BETA_AWCACHE),
    .m_axi_BETA_AWPROT(m_axi_BETA_AWPROT),
    .m_axi_BETA_AWQOS(m_axi_BETA_AWQOS),
    .m_axi_BETA_AWUSER(),
    .m_axi_BETA_AWVALID(m_axi_BETA_AWVALID),
    .m_axi_BETA_AWREADY(m_axi_BETA_AWREADY),
    .m_axi_BETA_WID(),
    .m_axi_BETA_WDATA(m_axi_BETA_WDATA),
    .m_axi_BETA_WSTRB(m_axi_BETA_WSTRB),
    .m_axi_BETA_WLAST(m_axi_BETA_WLAST),
    .m_axi_BETA_WUSER(),
    .m_axi_BETA_WVALID(m_axi_BETA_WVALID),
    .m_axi_BETA_WREADY(m_axi_BETA_WREADY),
    .m_axi_BETA_BID(1'B0),
    .m_axi_BETA_BRESP(m_axi_BETA_BRESP),
    .m_axi_BETA_BUSER(1'B0),
    .m_axi_BETA_BVALID(m_axi_BETA_BVALID),
    .m_axi_BETA_BREADY(m_axi_BETA_BREADY),
    .m_axi_BETA_ARID(),
    .m_axi_BETA_ARADDR(m_axi_BETA_ARADDR),
    .m_axi_BETA_ARLEN(m_axi_BETA_ARLEN),
    .m_axi_BETA_ARSIZE(m_axi_BETA_ARSIZE),
    .m_axi_BETA_ARBURST(m_axi_BETA_ARBURST),
    .m_axi_BETA_ARLOCK(m_axi_BETA_ARLOCK),
    .m_axi_BETA_ARREGION(m_axi_BETA_ARREGION),
    .m_axi_BETA_ARCACHE(m_axi_BETA_ARCACHE),
    .m_axi_BETA_ARPROT(m_axi_BETA_ARPROT),
    .m_axi_BETA_ARQOS(m_axi_BETA_ARQOS),
    .m_axi_BETA_ARUSER(),
    .m_axi_BETA_ARVALID(m_axi_BETA_ARVALID),
    .m_axi_BETA_ARREADY(m_axi_BETA_ARREADY),
    .m_axi_BETA_RID(1'B0),
    .m_axi_BETA_RDATA(m_axi_BETA_RDATA),
    .m_axi_BETA_RRESP(m_axi_BETA_RRESP),
    .m_axi_BETA_RLAST(m_axi_BETA_RLAST),
    .m_axi_BETA_RUSER(1'B0),
    .m_axi_BETA_RVALID(m_axi_BETA_RVALID),
    .m_axi_BETA_RREADY(m_axi_BETA_RREADY),
    .m_axi_GAMMA_AWID(),
    .m_axi_GAMMA_AWADDR(m_axi_GAMMA_AWADDR),
    .m_axi_GAMMA_AWLEN(m_axi_GAMMA_AWLEN),
    .m_axi_GAMMA_AWSIZE(m_axi_GAMMA_AWSIZE),
    .m_axi_GAMMA_AWBURST(m_axi_GAMMA_AWBURST),
    .m_axi_GAMMA_AWLOCK(m_axi_GAMMA_AWLOCK),
    .m_axi_GAMMA_AWREGION(m_axi_GAMMA_AWREGION),
    .m_axi_GAMMA_AWCACHE(m_axi_GAMMA_AWCACHE),
    .m_axi_GAMMA_AWPROT(m_axi_GAMMA_AWPROT),
    .m_axi_GAMMA_AWQOS(m_axi_GAMMA_AWQOS),
    .m_axi_GAMMA_AWUSER(),
    .m_axi_GAMMA_AWVALID(m_axi_GAMMA_AWVALID),
    .m_axi_GAMMA_AWREADY(m_axi_GAMMA_AWREADY),
    .m_axi_GAMMA_WID(),
    .m_axi_GAMMA_WDATA(m_axi_GAMMA_WDATA),
    .m_axi_GAMMA_WSTRB(m_axi_GAMMA_WSTRB),
    .m_axi_GAMMA_WLAST(m_axi_GAMMA_WLAST),
    .m_axi_GAMMA_WUSER(),
    .m_axi_GAMMA_WVALID(m_axi_GAMMA_WVALID),
    .m_axi_GAMMA_WREADY(m_axi_GAMMA_WREADY),
    .m_axi_GAMMA_BID(1'B0),
    .m_axi_GAMMA_BRESP(m_axi_GAMMA_BRESP),
    .m_axi_GAMMA_BUSER(1'B0),
    .m_axi_GAMMA_BVALID(m_axi_GAMMA_BVALID),
    .m_axi_GAMMA_BREADY(m_axi_GAMMA_BREADY),
    .m_axi_GAMMA_ARID(),
    .m_axi_GAMMA_ARADDR(m_axi_GAMMA_ARADDR),
    .m_axi_GAMMA_ARLEN(m_axi_GAMMA_ARLEN),
    .m_axi_GAMMA_ARSIZE(m_axi_GAMMA_ARSIZE),
    .m_axi_GAMMA_ARBURST(m_axi_GAMMA_ARBURST),
    .m_axi_GAMMA_ARLOCK(m_axi_GAMMA_ARLOCK),
    .m_axi_GAMMA_ARREGION(m_axi_GAMMA_ARREGION),
    .m_axi_GAMMA_ARCACHE(m_axi_GAMMA_ARCACHE),
    .m_axi_GAMMA_ARPROT(m_axi_GAMMA_ARPROT),
    .m_axi_GAMMA_ARQOS(m_axi_GAMMA_ARQOS),
    .m_axi_GAMMA_ARUSER(),
    .m_axi_GAMMA_ARVALID(m_axi_GAMMA_ARVALID),
    .m_axi_GAMMA_ARREADY(m_axi_GAMMA_ARREADY),
    .m_axi_GAMMA_RID(1'B0),
    .m_axi_GAMMA_RDATA(m_axi_GAMMA_RDATA),
    .m_axi_GAMMA_RRESP(m_axi_GAMMA_RRESP),
    .m_axi_GAMMA_RLAST(m_axi_GAMMA_RLAST),
    .m_axi_GAMMA_RUSER(1'B0),
    .m_axi_GAMMA_RVALID(m_axi_GAMMA_RVALID),
    .m_axi_GAMMA_RREADY(m_axi_GAMMA_RREADY),
    .m_axi_M_M_AWID(),
    .m_axi_M_M_AWADDR(m_axi_M_M_AWADDR),
    .m_axi_M_M_AWLEN(m_axi_M_M_AWLEN),
    .m_axi_M_M_AWSIZE(m_axi_M_M_AWSIZE),
    .m_axi_M_M_AWBURST(m_axi_M_M_AWBURST),
    .m_axi_M_M_AWLOCK(m_axi_M_M_AWLOCK),
    .m_axi_M_M_AWREGION(m_axi_M_M_AWREGION),
    .m_axi_M_M_AWCACHE(m_axi_M_M_AWCACHE),
    .m_axi_M_M_AWPROT(m_axi_M_M_AWPROT),
    .m_axi_M_M_AWQOS(m_axi_M_M_AWQOS),
    .m_axi_M_M_AWUSER(),
    .m_axi_M_M_AWVALID(m_axi_M_M_AWVALID),
    .m_axi_M_M_AWREADY(m_axi_M_M_AWREADY),
    .m_axi_M_M_WID(),
    .m_axi_M_M_WDATA(m_axi_M_M_WDATA),
    .m_axi_M_M_WSTRB(m_axi_M_M_WSTRB),
    .m_axi_M_M_WLAST(m_axi_M_M_WLAST),
    .m_axi_M_M_WUSER(),
    .m_axi_M_M_WVALID(m_axi_M_M_WVALID),
    .m_axi_M_M_WREADY(m_axi_M_M_WREADY),
    .m_axi_M_M_BID(1'B0),
    .m_axi_M_M_BRESP(m_axi_M_M_BRESP),
    .m_axi_M_M_BUSER(1'B0),
    .m_axi_M_M_BVALID(m_axi_M_M_BVALID),
    .m_axi_M_M_BREADY(m_axi_M_M_BREADY),
    .m_axi_M_M_ARID(),
    .m_axi_M_M_ARADDR(m_axi_M_M_ARADDR),
    .m_axi_M_M_ARLEN(m_axi_M_M_ARLEN),
    .m_axi_M_M_ARSIZE(m_axi_M_M_ARSIZE),
    .m_axi_M_M_ARBURST(m_axi_M_M_ARBURST),
    .m_axi_M_M_ARLOCK(m_axi_M_M_ARLOCK),
    .m_axi_M_M_ARREGION(m_axi_M_M_ARREGION),
    .m_axi_M_M_ARCACHE(m_axi_M_M_ARCACHE),
    .m_axi_M_M_ARPROT(m_axi_M_M_ARPROT),
    .m_axi_M_M_ARQOS(m_axi_M_M_ARQOS),
    .m_axi_M_M_ARUSER(),
    .m_axi_M_M_ARVALID(m_axi_M_M_ARVALID),
    .m_axi_M_M_ARREADY(m_axi_M_M_ARREADY),
    .m_axi_M_M_RID(1'B0),
    .m_axi_M_M_RDATA(m_axi_M_M_RDATA),
    .m_axi_M_M_RRESP(m_axi_M_M_RRESP),
    .m_axi_M_M_RLAST(m_axi_M_M_RLAST),
    .m_axi_M_M_RUSER(1'B0),
    .m_axi_M_M_RVALID(m_axi_M_M_RVALID),
    .m_axi_M_M_RREADY(m_axi_M_M_RREADY),
    .m_axi_M_V_AWID(),
    .m_axi_M_V_AWADDR(m_axi_M_V_AWADDR),
    .m_axi_M_V_AWLEN(m_axi_M_V_AWLEN),
    .m_axi_M_V_AWSIZE(m_axi_M_V_AWSIZE),
    .m_axi_M_V_AWBURST(m_axi_M_V_AWBURST),
    .m_axi_M_V_AWLOCK(m_axi_M_V_AWLOCK),
    .m_axi_M_V_AWREGION(m_axi_M_V_AWREGION),
    .m_axi_M_V_AWCACHE(m_axi_M_V_AWCACHE),
    .m_axi_M_V_AWPROT(m_axi_M_V_AWPROT),
    .m_axi_M_V_AWQOS(m_axi_M_V_AWQOS),
    .m_axi_M_V_AWUSER(),
    .m_axi_M_V_AWVALID(m_axi_M_V_AWVALID),
    .m_axi_M_V_AWREADY(m_axi_M_V_AWREADY),
    .m_axi_M_V_WID(),
    .m_axi_M_V_WDATA(m_axi_M_V_WDATA),
    .m_axi_M_V_WSTRB(m_axi_M_V_WSTRB),
    .m_axi_M_V_WLAST(m_axi_M_V_WLAST),
    .m_axi_M_V_WUSER(),
    .m_axi_M_V_WVALID(m_axi_M_V_WVALID),
    .m_axi_M_V_WREADY(m_axi_M_V_WREADY),
    .m_axi_M_V_BID(1'B0),
    .m_axi_M_V_BRESP(m_axi_M_V_BRESP),
    .m_axi_M_V_BUSER(1'B0),
    .m_axi_M_V_BVALID(m_axi_M_V_BVALID),
    .m_axi_M_V_BREADY(m_axi_M_V_BREADY),
    .m_axi_M_V_ARID(),
    .m_axi_M_V_ARADDR(m_axi_M_V_ARADDR),
    .m_axi_M_V_ARLEN(m_axi_M_V_ARLEN),
    .m_axi_M_V_ARSIZE(m_axi_M_V_ARSIZE),
    .m_axi_M_V_ARBURST(m_axi_M_V_ARBURST),
    .m_axi_M_V_ARLOCK(m_axi_M_V_ARLOCK),
    .m_axi_M_V_ARREGION(m_axi_M_V_ARREGION),
    .m_axi_M_V_ARCACHE(m_axi_M_V_ARCACHE),
    .m_axi_M_V_ARPROT(m_axi_M_V_ARPROT),
    .m_axi_M_V_ARQOS(m_axi_M_V_ARQOS),
    .m_axi_M_V_ARUSER(),
    .m_axi_M_V_ARVALID(m_axi_M_V_ARVALID),
    .m_axi_M_V_ARREADY(m_axi_M_V_ARREADY),
    .m_axi_M_V_RID(1'B0),
    .m_axi_M_V_RDATA(m_axi_M_V_RDATA),
    .m_axi_M_V_RRESP(m_axi_M_V_RRESP),
    .m_axi_M_V_RLAST(m_axi_M_V_RLAST),
    .m_axi_M_V_RUSER(1'B0),
    .m_axi_M_V_RVALID(m_axi_M_V_RVALID),
    .m_axi_M_V_RREADY(m_axi_M_V_RREADY),
    .m_axi_OUT_r_AWID(),
    .m_axi_OUT_r_AWADDR(m_axi_OUT_r_AWADDR),
    .m_axi_OUT_r_AWLEN(m_axi_OUT_r_AWLEN),
    .m_axi_OUT_r_AWSIZE(m_axi_OUT_r_AWSIZE),
    .m_axi_OUT_r_AWBURST(m_axi_OUT_r_AWBURST),
    .m_axi_OUT_r_AWLOCK(m_axi_OUT_r_AWLOCK),
    .m_axi_OUT_r_AWREGION(m_axi_OUT_r_AWREGION),
    .m_axi_OUT_r_AWCACHE(m_axi_OUT_r_AWCACHE),
    .m_axi_OUT_r_AWPROT(m_axi_OUT_r_AWPROT),
    .m_axi_OUT_r_AWQOS(m_axi_OUT_r_AWQOS),
    .m_axi_OUT_r_AWUSER(),
    .m_axi_OUT_r_AWVALID(m_axi_OUT_r_AWVALID),
    .m_axi_OUT_r_AWREADY(m_axi_OUT_r_AWREADY),
    .m_axi_OUT_r_WID(),
    .m_axi_OUT_r_WDATA(m_axi_OUT_r_WDATA),
    .m_axi_OUT_r_WSTRB(m_axi_OUT_r_WSTRB),
    .m_axi_OUT_r_WLAST(m_axi_OUT_r_WLAST),
    .m_axi_OUT_r_WUSER(),
    .m_axi_OUT_r_WVALID(m_axi_OUT_r_WVALID),
    .m_axi_OUT_r_WREADY(m_axi_OUT_r_WREADY),
    .m_axi_OUT_r_BID(1'B0),
    .m_axi_OUT_r_BRESP(m_axi_OUT_r_BRESP),
    .m_axi_OUT_r_BUSER(1'B0),
    .m_axi_OUT_r_BVALID(m_axi_OUT_r_BVALID),
    .m_axi_OUT_r_BREADY(m_axi_OUT_r_BREADY),
    .m_axi_OUT_r_ARID(),
    .m_axi_OUT_r_ARADDR(m_axi_OUT_r_ARADDR),
    .m_axi_OUT_r_ARLEN(m_axi_OUT_r_ARLEN),
    .m_axi_OUT_r_ARSIZE(m_axi_OUT_r_ARSIZE),
    .m_axi_OUT_r_ARBURST(m_axi_OUT_r_ARBURST),
    .m_axi_OUT_r_ARLOCK(m_axi_OUT_r_ARLOCK),
    .m_axi_OUT_r_ARREGION(m_axi_OUT_r_ARREGION),
    .m_axi_OUT_r_ARCACHE(m_axi_OUT_r_ARCACHE),
    .m_axi_OUT_r_ARPROT(m_axi_OUT_r_ARPROT),
    .m_axi_OUT_r_ARQOS(m_axi_OUT_r_ARQOS),
    .m_axi_OUT_r_ARUSER(),
    .m_axi_OUT_r_ARVALID(m_axi_OUT_r_ARVALID),
    .m_axi_OUT_r_ARREADY(m_axi_OUT_r_ARREADY),
    .m_axi_OUT_r_RID(1'B0),
    .m_axi_OUT_r_RDATA(m_axi_OUT_r_RDATA),
    .m_axi_OUT_r_RRESP(m_axi_OUT_r_RRESP),
    .m_axi_OUT_r_RLAST(m_axi_OUT_r_RLAST),
    .m_axi_OUT_r_RUSER(1'B0),
    .m_axi_OUT_r_RVALID(m_axi_OUT_r_RVALID),
    .m_axi_OUT_r_RREADY(m_axi_OUT_r_RREADY)
  );
endmodule
