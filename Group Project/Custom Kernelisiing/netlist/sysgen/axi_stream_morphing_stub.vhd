-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity axi_stream_morphing_stub is
  port (
    m_axis_tready : in std_logic_vector( 1-1 downto 0 );
    s_axis_tdata : in std_logic_vector( 32-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    axi_stream_morphing_aresetn : in std_logic;
    axi_stream_morphing_config_s_axi_awaddr : in std_logic;
    axi_stream_morphing_config_s_axi_awvalid : in std_logic;
    axi_stream_morphing_config_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    axi_stream_morphing_config_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    axi_stream_morphing_config_s_axi_wvalid : in std_logic;
    axi_stream_morphing_config_s_axi_bready : in std_logic;
    axi_stream_morphing_config_s_axi_araddr : in std_logic;
    axi_stream_morphing_config_s_axi_arvalid : in std_logic;
    axi_stream_morphing_config_s_axi_rready : in std_logic;
    m_axis_tdata : out std_logic_vector( 32-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    s_axis_tready : out std_logic_vector( 1-1 downto 0 );
    axi_stream_morphing_config_s_axi_awready : out std_logic;
    axi_stream_morphing_config_s_axi_wready : out std_logic;
    axi_stream_morphing_config_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    axi_stream_morphing_config_s_axi_bvalid : out std_logic;
    axi_stream_morphing_config_s_axi_arready : out std_logic;
    axi_stream_morphing_config_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    axi_stream_morphing_config_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    axi_stream_morphing_config_s_axi_rvalid : out std_logic
  );
end axi_stream_morphing_stub;
architecture structural of axi_stream_morphing_stub is 
begin
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
end structural;
