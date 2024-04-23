set_property SRC_FILE_INFO {cfile:c:/Xil_proj/315/proj/DIY/netlist/ip_catalog/axis_morph.srcs/sources_1/bd/axis_morph_bd/ip/axis_morph_bd_processing_system_1_0/axis_morph_bd_processing_system_1_0/axis_morph_bd_processing_system_1_0_in_context.xdc rfile:../../../axis_morph.srcs/sources_1/bd/axis_morph_bd/ip/axis_morph_bd_processing_system_1_0/axis_morph_bd_processing_system_1_0/axis_morph_bd_processing_system_1_0_in_context.xdc id:1 order:EARLY scoped_inst:axis_morph_bd_i/processing_system_1} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Xil_proj/315/proj/DIY/netlist/ip_catalog/axis_morph.srcs/constrs_1/imports/sysgen/axis_morph_clock.xdc rfile:../../../axis_morph.srcs/constrs_1/imports/sysgen/axis_morph_clock.xdc id:2} [current_design]
current_instance axis_morph_bd_i/processing_system_1
set_property src_info {type:SCOPED_XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 20.000 [get_ports {}]
current_instance
set_property src_info {type:XDC file:2 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_clock -name clk -period 10.000 [get_ports clk]
set_property src_info {type:XDC file:2 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN H16 [get_ports clk[0]]
