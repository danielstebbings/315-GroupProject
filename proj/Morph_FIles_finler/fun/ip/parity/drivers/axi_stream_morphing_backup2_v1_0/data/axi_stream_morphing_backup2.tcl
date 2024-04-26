proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "axi_stream_morphing_backup2" "NUM_INSTANCES" "DEVICE_ID" "C_AXI_STREAM_MORPHING_BACKUP2_CONFIG_S_AXI_BASEADDR" "C_AXI_STREAM_MORPHING_BACKUP2_CONFIG_S_AXI_HIGHADDR" 
    xdefine_config_file $drv_handle "axi_stream_morphing_backup2_g.c" "axi_stream_morphing_backup2" "DEVICE_ID" "C_AXI_STREAM_MORPHING_BACKUP2_CONFIG_S_AXI_BASEADDR" 
    xdefine_canonical_xpars $drv_handle "xparameters.h" "axi_stream_morphing_backup2" "DEVICE_ID" "C_AXI_STREAM_MORPHING_BACKUP2_CONFIG_S_AXI_BASEADDR" "C_AXI_STREAM_MORPHING_BACKUP2_CONFIG_S_AXI_HIGHADDR" 

}