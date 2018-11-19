############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project -reset HLS
set_top mlp
add_files "../../mlp.cpp"
add_files -tb "../../result.golden.dat"
add_files -tb "../../mlp_test.cpp"
open_solution -reset "solution4"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
source "./directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog

exit