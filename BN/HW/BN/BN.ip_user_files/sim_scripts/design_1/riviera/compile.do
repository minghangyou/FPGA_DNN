vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_5
vlib riviera/processing_system7_vip_v1_0_7
vlib riviera/xlconstant_v1_1_6
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/smartconnect_v1_0
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/fifo_generator_v13_2_4
vlib riviera/axi_data_fifo_v2_1_18
vlib riviera/axi_register_slice_v2_1_19
vlib riviera/axi_protocol_converter_v2_1_19

vmap xilinx_vip riviera/xilinx_vip
vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 riviera/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 riviera/processing_system7_vip_v1_0_7
vmap xlconstant_v1_1_6 riviera/xlconstant_v1_1_6
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_4 riviera/fifo_generator_v13_2_4
vmap axi_data_fifo_v2_1_18 riviera/axi_data_fifo_v2_1_18
vmap axi_register_slice_v2_1_19 riviera/axi_register_slice_v2_1_19
vmap axi_protocol_converter_v2_1_19 riviera/axi_protocol_converter_v2_1_19

vlog -work xilinx_vip  -sv2k12 "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"E:/programs/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/programs/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"E:/programs/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"E:/programs/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5  -sv2k12 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7  -sv2k12 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/93a5/hdl/verilog/bn_am_submul_16s_cud.v" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/93a5/hdl/verilog/bn_BETA_m_axi.v" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/93a5/hdl/verilog/bn_CTRL_s_axi.v" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/93a5/hdl/verilog/bn_GAMMA_m_axi.v" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/93a5/hdl/verilog/bn_IN_r_m_axi.v" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/93a5/hdl/verilog/bn_M_M_m_axi.v" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/93a5/hdl/verilog/bn_M_V_m_axi.v" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/93a5/hdl/verilog/bn_OUT_r_m_axi.v" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/93a5/hdl/verilog/bn_sdiv_27ns_14nsbkb.v" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/93a5/hdl/verilog/sqrt_fixed_16_6_s.v" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/93a5/hdl/verilog/bn.v" \
"../../../bd/design_1/ip/design_1_bn_0_0/sim/design_1_bn_0_0.v" \

vlog -work xlconstant_v1_1_6  -v2k5 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_arsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_rsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_awsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_wsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_bsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/7de4/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_13/sim/bd_afc3_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_14/sim/bd_afc3_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_15/sim/bd_afc3_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_16/sim/bd_afc3_s01mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_17/sim/bd_afc3_s01tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_18/sim/bd_afc3_s01sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_19/sim/bd_afc3_s01a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_20/sim/bd_afc3_sarn_1.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_21/sim/bd_afc3_srn_1.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_22/sim/bd_afc3_sawn_1.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_23/sim/bd_afc3_swn_1.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_24/sim/bd_afc3_sbn_1.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_25/sim/bd_afc3_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_26/sim/bd_afc3_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_27/sim/bd_afc3_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_28/sim/bd_afc3_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_29/sim/bd_afc3_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_30/sim/bd_afc3_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_31/sim/bd_afc3_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_0/sim/bd_a878_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_1/sim/bd_a878_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_2/sim/bd_a878_arsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_3/sim/bd_a878_rsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_4/sim/bd_a878_awsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_5/sim/bd_a878_wsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_6/sim/bd_a878_bsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_7/sim/bd_a878_s00mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_8/sim/bd_a878_s00tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_9/sim/bd_a878_s00sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_10/sim/bd_a878_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_11/sim/bd_a878_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_12/sim/bd_a878_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_13/sim/bd_a878_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_14/sim/bd_a878_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_15/sim/bd_a878_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_16/sim/bd_a878_s01mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_17/sim/bd_a878_s01tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_18/sim/bd_a878_s01sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_19/sim/bd_a878_s01a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_20/sim/bd_a878_sarn_1.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_21/sim/bd_a878_srn_1.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_22/sim/bd_a878_sawn_1.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_23/sim/bd_a878_swn_1.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_24/sim/bd_a878_sbn_1.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_25/sim/bd_a878_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_26/sim/bd_a878_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_27/sim/bd_a878_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_28/sim/bd_a878_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_29/sim/bd_a878_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_30/sim/bd_a878_m00bn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_31/sim/bd_a878_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/sim/bd_a878.v" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/sim/design_1_axi_smc_1_0.v" \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_0/sim/bd_a888_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_1/sim/bd_a888_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_2/sim/bd_a888_s00mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_3/sim/bd_a888_s00tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_4/sim/bd_a888_s00sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_5/sim/bd_a888_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_6/sim/bd_a888_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_7/sim/bd_a888_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_8/sim/bd_a888_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_9/sim/bd_a888_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_10/sim/bd_a888_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_11/sim/bd_a888_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_12/sim/bd_a888_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/bd_0/sim/bd_a888.v" \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/sim/design_1_axi_smc_2_0.v" \
"../../../bd/design_1/ip/design_1_axi_smc_3_0/bd_0/ip/ip_0/sim/bd_68d9_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_smc_3_0/bd_0/ip/ip_1/sim/bd_68d9_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_3_0/bd_0/ip/ip_2/sim/bd_68d9_s00mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_0/bd_0/ip/ip_3/sim/bd_68d9_s00tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_0/bd_0/ip/ip_4/sim/bd_68d9_s00sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_0/bd_0/ip/ip_5/sim/bd_68d9_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_0/bd_0/ip/ip_6/sim/bd_68d9_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_0/bd_0/ip/ip_7/sim/bd_68d9_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_0/bd_0/ip/ip_8/sim/bd_68d9_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_0/bd_0/ip/ip_9/sim/bd_68d9_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_0/bd_0/ip/ip_10/sim/bd_68d9_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_0/bd_0/ip/ip_11/sim/bd_68d9_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_0/bd_0/ip/ip_12/sim/bd_68d9_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_3_0/bd_0/sim/bd_68d9.v" \
"../../../bd/design_1/ip/design_1_axi_smc_3_0/sim/design_1_axi_smc_3_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -93 \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_18  -v2k5 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19  -v2k5 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_19  -v2k5 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../BN.srcs/sources_1/bd/design_1/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../BN.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/programs/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

