// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Fri Apr 19 19:41:53 2024
// Host        : DESKTOP-JCQTLV3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ axis_morph_bd_axis_morph_1_0_stub.v
// Design      : axis_morph_bd_axis_morph_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis_morph,Vivado 2020.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(m_axis_tready, s_axis_tdata, s_axis_tlast, 
  s_axis_tvalid, clk, axis_morph_aresetn, axis_morph_config_s_axi_awaddr, 
  axis_morph_config_s_axi_awvalid, axis_morph_config_s_axi_wdata, 
  axis_morph_config_s_axi_wstrb, axis_morph_config_s_axi_wvalid, 
  axis_morph_config_s_axi_bready, axis_morph_config_s_axi_araddr, 
  axis_morph_config_s_axi_arvalid, axis_morph_config_s_axi_rready, m_axis_tdata, 
  m_axis_tlast, m_axis_tvalid, s_axis_tready, axis_morph_config_s_axi_awready, 
  axis_morph_config_s_axi_wready, axis_morph_config_s_axi_bresp, 
  axis_morph_config_s_axi_bvalid, axis_morph_config_s_axi_arready, 
  axis_morph_config_s_axi_rdata, axis_morph_config_s_axi_rresp, 
  axis_morph_config_s_axi_rvalid)
/* synthesis syn_black_box black_box_pad_pin="m_axis_tready[0:0],s_axis_tdata[31:0],s_axis_tlast[0:0],s_axis_tvalid[0:0],clk,axis_morph_aresetn,axis_morph_config_s_axi_awaddr,axis_morph_config_s_axi_awvalid,axis_morph_config_s_axi_wdata[31:0],axis_morph_config_s_axi_wstrb[3:0],axis_morph_config_s_axi_wvalid,axis_morph_config_s_axi_bready,axis_morph_config_s_axi_araddr,axis_morph_config_s_axi_arvalid,axis_morph_config_s_axi_rready,m_axis_tdata[31:0],m_axis_tlast[0:0],m_axis_tvalid[0:0],s_axis_tready[0:0],axis_morph_config_s_axi_awready,axis_morph_config_s_axi_wready,axis_morph_config_s_axi_bresp[1:0],axis_morph_config_s_axi_bvalid,axis_morph_config_s_axi_arready,axis_morph_config_s_axi_rdata[31:0],axis_morph_config_s_axi_rresp[1:0],axis_morph_config_s_axi_rvalid" */;
  input [0:0]m_axis_tready;
  input [31:0]s_axis_tdata;
  input [0:0]s_axis_tlast;
  input [0:0]s_axis_tvalid;
  input clk;
  input axis_morph_aresetn;
  input axis_morph_config_s_axi_awaddr;
  input axis_morph_config_s_axi_awvalid;
  input [31:0]axis_morph_config_s_axi_wdata;
  input [3:0]axis_morph_config_s_axi_wstrb;
  input axis_morph_config_s_axi_wvalid;
  input axis_morph_config_s_axi_bready;
  input axis_morph_config_s_axi_araddr;
  input axis_morph_config_s_axi_arvalid;
  input axis_morph_config_s_axi_rready;
  output [31:0]m_axis_tdata;
  output [0:0]m_axis_tlast;
  output [0:0]m_axis_tvalid;
  output [0:0]s_axis_tready;
  output axis_morph_config_s_axi_awready;
  output axis_morph_config_s_axi_wready;
  output [1:0]axis_morph_config_s_axi_bresp;
  output axis_morph_config_s_axi_bvalid;
  output axis_morph_config_s_axi_arready;
  output [31:0]axis_morph_config_s_axi_rdata;
  output [1:0]axis_morph_config_s_axi_rresp;
  output axis_morph_config_s_axi_rvalid;
endmodule
