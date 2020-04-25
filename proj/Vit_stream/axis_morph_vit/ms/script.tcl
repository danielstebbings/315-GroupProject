############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project axis_morph_vit
set_top ms
add_files BW_Stream_generator.cpp
add_files BW_Stream_generator.h
add_files RGB_to_greyscale.cpp
add_files RGB_to_greyscale.h
add_files conv2d.cpp
add_files conv2d.h
add_files morph_stream.cpp
add_files morph_stream.h
add_files morph_stream_utils.h
add_files -tb tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb tb.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb axis_morph_tb -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "ms" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_export -format ip_catalog -output C:/Xil_proj/315/proj/IP/ms/msV1.1 -rtl verilog
source "./axis_morph_vit/ms/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -output C:/Xil_proj/315/proj/IP/ms/msV1.1
