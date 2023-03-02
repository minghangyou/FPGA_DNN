############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project BN
set_top bn
add_files BN/weights.h
add_files BN/bn.h
add_files BN/bn.cpp
add_files -tb BN/test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution2"
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
#source "./BN/solution2/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
