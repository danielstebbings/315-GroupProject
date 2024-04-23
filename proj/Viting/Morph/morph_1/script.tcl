############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Morph
set_top window
add_files main.cpp
add_files morph.h
open_solution "morph_1" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
source "./Morph/morph_1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
