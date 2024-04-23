proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "axis_morph" "NUM_INSTANCES" "DEVICE_ID" "C_AXIS_MORPH_CONFIG_S_AXI_BASEADDR" "C_AXIS_MORPH_CONFIG_S_AXI_HIGHADDR" 
    xdefine_config_file $drv_handle "axis_morph_g.c" "axis_morph" "DEVICE_ID" "C_AXIS_MORPH_CONFIG_S_AXI_BASEADDR" 
    xdefine_canonical_xpars $drv_handle "xparameters.h" "axis_morph" "DEVICE_ID" "C_AXIS_MORPH_CONFIG_S_AXI_BASEADDR" "C_AXIS_MORPH_CONFIG_S_AXI_HIGHADDR" 

}