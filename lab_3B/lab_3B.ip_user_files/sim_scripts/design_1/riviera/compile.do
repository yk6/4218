vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/processing_system7_bfm_v2_0_5
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/lib_cdc_v1_0_2
vlib riviera/lib_pkg_v1_0_2
vlib riviera/fifo_generator_v13_1_2
vlib riviera/lib_fifo_v1_0_6
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_master_burst_v2_0_7
vlib riviera/axi_tft_v2_0_14
vlib riviera/proc_sys_reset_v5_0_10
vlib riviera/axi_datamover_v5_1_12
vlib riviera/axi_sg_v4_1_4
vlib riviera/axi_dma_v7_1_11
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_10
vlib riviera/axi_data_fifo_v2_1_9
vlib riviera/axi_crossbar_v2_1_11
vlib riviera/axi_protocol_converter_v2_1_10

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap processing_system7_bfm_v2_0_5 riviera/processing_system7_bfm_v2_0_5
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap fifo_generator_v13_1_2 riviera/fifo_generator_v13_1_2
vmap lib_fifo_v1_0_6 riviera/lib_fifo_v1_0_6
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap axi_master_burst_v2_0_7 riviera/axi_master_burst_v2_0_7
vmap axi_tft_v2_0_14 riviera/axi_tft_v2_0_14
vmap proc_sys_reset_v5_0_10 riviera/proc_sys_reset_v5_0_10
vmap axi_datamover_v5_1_12 riviera/axi_datamover_v5_1_12
vmap axi_sg_v4_1_4 riviera/axi_sg_v4_1_4
vmap axi_dma_v7_1_11 riviera/axi_dma_v7_1_11
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_10 riviera/axi_register_slice_v2_1_10
vmap axi_data_fifo_v2_1_9 riviera/axi_data_fifo_v2_1_9
vmap axi_crossbar_v2_1_11 riviera/axi_crossbar_v2_1_11
vmap axi_protocol_converter_v2_1_10 riviera/axi_protocol_converter_v2_1_10

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"C:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work processing_system7_bfm_v2_0_5  -v2k5 "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl/processing_system7_bfm_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0_1/sim/design_1_processing_system7_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/832a/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_1_2  -v2k5 "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/a807/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_2 -93 \
"../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/a807/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_2  -v2k5 "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/a807/hdl/fifo_generator_v13_1_rfs.v" \

vcom -work lib_fifo_v1_0_6 -93 \
"../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/61a7/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/6039/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_master_burst_v2_0_7 -93 \
"../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/905f/hdl/axi_master_burst_v2_0_vh_rfs.vhd" \

vlog -work axi_tft_v2_0_14  -v2k5 "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/1b8b/hdl/axi_tft_v2_0_rfs.v" \

vcom -work axi_tft_v2_0_14 -93 \
"../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/1b8b/hdl/axi_tft_v2_0_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_tft_0_0_1/sim/design_1_axi_tft_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_10 -93 \
"../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0_1/sim/design_1_rst_ps7_0_100M_0.vhd" \

vcom -work axi_datamover_v5_1_12 -93 \
"../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/1cd0/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_4 -93 \
"../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/57b4/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_11 -93 \
"../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/a41f/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_dma_0_0_1/sim/design_1_axi_dma_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/Desktop/Downloads/lab3_coprocessor.v" \
"../../../bd/design_1/ip/design_1_myip1_0_0/sim/design_1_myip1_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_10  -v2k5 "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7efe/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_9  -v2k5 "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/10b8/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_11  -v2k5 "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/d552/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
"../../../bd/design_1/ip/design_1_xbar_1/sim/design_1_xbar_1.v" \
"../../../bd/design_1/hdl/design_1.v" \

vlog -work axi_protocol_converter_v2_1_10  -v2k5 "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/4a8b/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../lab_3B.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \

vlog -work xil_defaultlib "glbl.v"

