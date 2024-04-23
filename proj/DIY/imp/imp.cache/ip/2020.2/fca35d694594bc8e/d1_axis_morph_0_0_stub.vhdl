-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Apr 21 23:50:24 2024
-- Host        : DESKTOP-JCQTLV3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ d1_axis_morph_0_0_stub.vhdl
-- Design      : d1_axis_morph_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    axis_morph_aresetn : in STD_LOGIC;
    axis_morph_config_s_axi_awaddr : in STD_LOGIC;
    axis_morph_config_s_axi_awvalid : in STD_LOGIC;
    axis_morph_config_s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_morph_config_s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axis_morph_config_s_axi_wvalid : in STD_LOGIC;
    axis_morph_config_s_axi_bready : in STD_LOGIC;
    axis_morph_config_s_axi_araddr : in STD_LOGIC;
    axis_morph_config_s_axi_arvalid : in STD_LOGIC;
    axis_morph_config_s_axi_rready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    axis_morph_config_s_axi_awready : out STD_LOGIC;
    axis_morph_config_s_axi_wready : out STD_LOGIC;
    axis_morph_config_s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axis_morph_config_s_axi_bvalid : out STD_LOGIC;
    axis_morph_config_s_axi_arready : out STD_LOGIC;
    axis_morph_config_s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_morph_config_s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axis_morph_config_s_axi_rvalid : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "m_axis_tready[0:0],s_axis_tdata[31:0],s_axis_tlast[0:0],s_axis_tvalid[0:0],clk,axis_morph_aresetn,axis_morph_config_s_axi_awaddr,axis_morph_config_s_axi_awvalid,axis_morph_config_s_axi_wdata[31:0],axis_morph_config_s_axi_wstrb[3:0],axis_morph_config_s_axi_wvalid,axis_morph_config_s_axi_bready,axis_morph_config_s_axi_araddr,axis_morph_config_s_axi_arvalid,axis_morph_config_s_axi_rready,m_axis_tdata[31:0],m_axis_tlast[0:0],m_axis_tvalid[0:0],s_axis_tready[0:0],axis_morph_config_s_axi_awready,axis_morph_config_s_axi_wready,axis_morph_config_s_axi_bresp[1:0],axis_morph_config_s_axi_bvalid,axis_morph_config_s_axi_arready,axis_morph_config_s_axi_rdata[31:0],axis_morph_config_s_axi_rresp[1:0],axis_morph_config_s_axi_rvalid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axis_morph,Vivado 2020.2";
begin
end;
