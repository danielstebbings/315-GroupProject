  sysgen_dut : entity xil_defaultlib.axi_stream_morphing 
  port map (
    m_axis_tready => m_axis_tready,
    s_axis_tdata => s_axis_tdata,
    s_axis_tlast => s_axis_tlast,
    s_axis_tvalid => s_axis_tvalid,
    clk => clk,
    axi_stream_morphing_aresetn => axi_stream_morphing_aresetn,
    axi_stream_morphing_config_s_axi_awaddr => axi_stream_morphing_config_s_axi_awaddr,
    axi_stream_morphing_config_s_axi_awvalid => axi_stream_morphing_config_s_axi_awvalid,
    axi_stream_morphing_config_s_axi_wdata => axi_stream_morphing_config_s_axi_wdata,
    axi_stream_morphing_config_s_axi_wstrb => axi_stream_morphing_config_s_axi_wstrb,
    axi_stream_morphing_config_s_axi_wvalid => axi_stream_morphing_config_s_axi_wvalid,
    axi_stream_morphing_config_s_axi_bready => axi_stream_morphing_config_s_axi_bready,
    axi_stream_morphing_config_s_axi_araddr => axi_stream_morphing_config_s_axi_araddr,
    axi_stream_morphing_config_s_axi_arvalid => axi_stream_morphing_config_s_axi_arvalid,
    axi_stream_morphing_config_s_axi_rready => axi_stream_morphing_config_s_axi_rready,
    m_axis_tdata => m_axis_tdata,
    m_axis_tlast => m_axis_tlast,
    m_axis_tvalid => m_axis_tvalid,
    s_axis_tready => s_axis_tready,
    axi_stream_morphing_config_s_axi_awready => axi_stream_morphing_config_s_axi_awready,
    axi_stream_morphing_config_s_axi_wready => axi_stream_morphing_config_s_axi_wready,
    axi_stream_morphing_config_s_axi_bresp => axi_stream_morphing_config_s_axi_bresp,
    axi_stream_morphing_config_s_axi_bvalid => axi_stream_morphing_config_s_axi_bvalid,
    axi_stream_morphing_config_s_axi_arready => axi_stream_morphing_config_s_axi_arready,
    axi_stream_morphing_config_s_axi_rdata => axi_stream_morphing_config_s_axi_rdata,
    axi_stream_morphing_config_s_axi_rresp => axi_stream_morphing_config_s_axi_rresp,
    axi_stream_morphing_config_s_axi_rvalid => axi_stream_morphing_config_s_axi_rvalid
  );
