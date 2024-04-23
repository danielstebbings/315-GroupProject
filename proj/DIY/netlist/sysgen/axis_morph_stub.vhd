-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity axis_morph_stub is
  port (
    m_axis_tready : in std_logic_vector( 1-1 downto 0 );
    s_axis_tdata : in std_logic_vector( 32-1 downto 0 );
    s_axis_tlast : in std_logic_vector( 1-1 downto 0 );
    s_axis_tvalid : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    axis_morph_aresetn : in std_logic;
    axis_morph_config_s_axi_awaddr : in std_logic;
    axis_morph_config_s_axi_awvalid : in std_logic;
    axis_morph_config_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    axis_morph_config_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    axis_morph_config_s_axi_wvalid : in std_logic;
    axis_morph_config_s_axi_bready : in std_logic;
    axis_morph_config_s_axi_araddr : in std_logic;
    axis_morph_config_s_axi_arvalid : in std_logic;
    axis_morph_config_s_axi_rready : in std_logic;
    m_axis_tdata : out std_logic_vector( 32-1 downto 0 );
    m_axis_tlast : out std_logic_vector( 1-1 downto 0 );
    m_axis_tvalid : out std_logic_vector( 1-1 downto 0 );
    s_axis_tready : out std_logic_vector( 1-1 downto 0 );
    axis_morph_config_s_axi_awready : out std_logic;
    axis_morph_config_s_axi_wready : out std_logic;
    axis_morph_config_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    axis_morph_config_s_axi_bvalid : out std_logic;
    axis_morph_config_s_axi_arready : out std_logic;
    axis_morph_config_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    axis_morph_config_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    axis_morph_config_s_axi_rvalid : out std_logic
  );
end axis_morph_stub;
architecture structural of axis_morph_stub is 
begin
  sysgen_dut : entity xil_defaultlib.axis_morph 
  port map (
    m_axis_tready => m_axis_tready,
    s_axis_tdata => s_axis_tdata,
    s_axis_tlast => s_axis_tlast,
    s_axis_tvalid => s_axis_tvalid,
    clk => clk,
    axis_morph_aresetn => axis_morph_aresetn,
    axis_morph_config_s_axi_awaddr => axis_morph_config_s_axi_awaddr,
    axis_morph_config_s_axi_awvalid => axis_morph_config_s_axi_awvalid,
    axis_morph_config_s_axi_wdata => axis_morph_config_s_axi_wdata,
    axis_morph_config_s_axi_wstrb => axis_morph_config_s_axi_wstrb,
    axis_morph_config_s_axi_wvalid => axis_morph_config_s_axi_wvalid,
    axis_morph_config_s_axi_bready => axis_morph_config_s_axi_bready,
    axis_morph_config_s_axi_araddr => axis_morph_config_s_axi_araddr,
    axis_morph_config_s_axi_arvalid => axis_morph_config_s_axi_arvalid,
    axis_morph_config_s_axi_rready => axis_morph_config_s_axi_rready,
    m_axis_tdata => m_axis_tdata,
    m_axis_tlast => m_axis_tlast,
    m_axis_tvalid => m_axis_tvalid,
    s_axis_tready => s_axis_tready,
    axis_morph_config_s_axi_awready => axis_morph_config_s_axi_awready,
    axis_morph_config_s_axi_wready => axis_morph_config_s_axi_wready,
    axis_morph_config_s_axi_bresp => axis_morph_config_s_axi_bresp,
    axis_morph_config_s_axi_bvalid => axis_morph_config_s_axi_bvalid,
    axis_morph_config_s_axi_arready => axis_morph_config_s_axi_arready,
    axis_morph_config_s_axi_rdata => axis_morph_config_s_axi_rdata,
    axis_morph_config_s_axi_rresp => axis_morph_config_s_axi_rresp,
    axis_morph_config_s_axi_rvalid => axis_morph_config_s_axi_rvalid
  );
end structural;
