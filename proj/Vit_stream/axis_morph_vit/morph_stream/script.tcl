############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project axis_morph_vit
set_top morph_stream
add_files BW_Stream_generator.cpp
add_files BW_Stream_generator.h
add_files RGB_to_greyscale.cpp
add_files RGB_to_greyscale.h
add_files conv2d.cpp
add_files conv2d.h
add_files morph_stream.cpp
add_files morph_stream.h
add_files morph_stream_utils.h
open_solution "morph_stream" -flow_target vivado
set_part {xcvu5p-flva2104-1-e}
create_clock -period 10 -name default
source "./axis_morph_vit/morph_stream/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
