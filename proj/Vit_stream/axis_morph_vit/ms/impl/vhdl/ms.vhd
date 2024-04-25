-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ms is
generic (
    C_S_AXI_CONTROL_ADDR_WIDTH : INTEGER := 5;
    C_S_AXI_CONTROL_DATA_WIDTH : INTEGER := 32 );
port (
    s_axi_control_AWVALID : IN STD_LOGIC;
    s_axi_control_AWREADY : OUT STD_LOGIC;
    s_axi_control_AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_ADDR_WIDTH-1 downto 0);
    s_axi_control_WVALID : IN STD_LOGIC;
    s_axi_control_WREADY : OUT STD_LOGIC;
    s_axi_control_WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH-1 downto 0);
    s_axi_control_WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH/8-1 downto 0);
    s_axi_control_ARVALID : IN STD_LOGIC;
    s_axi_control_ARREADY : OUT STD_LOGIC;
    s_axi_control_ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_ADDR_WIDTH-1 downto 0);
    s_axi_control_RVALID : OUT STD_LOGIC;
    s_axi_control_RREADY : IN STD_LOGIC;
    s_axi_control_RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH-1 downto 0);
    s_axi_control_RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    s_axi_control_BVALID : OUT STD_LOGIC;
    s_axi_control_BREADY : IN STD_LOGIC;
    s_axi_control_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    interrupt : OUT STD_LOGIC;
    in_stream_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    in_stream_TKEEP : IN STD_LOGIC_VECTOR (3 downto 0);
    in_stream_TSTRB : IN STD_LOGIC_VECTOR (3 downto 0);
    in_stream_TUSER : IN STD_LOGIC_VECTOR (1 downto 0);
    in_stream_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    in_stream_TID : IN STD_LOGIC_VECTOR (4 downto 0);
    in_stream_TDEST : IN STD_LOGIC_VECTOR (5 downto 0);
    out_stream_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    out_stream_TKEEP : OUT STD_LOGIC_VECTOR (3 downto 0);
    out_stream_TSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
    out_stream_TUSER : OUT STD_LOGIC_VECTOR (1 downto 0);
    out_stream_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    out_stream_TID : OUT STD_LOGIC_VECTOR (4 downto 0);
    out_stream_TDEST : OUT STD_LOGIC_VECTOR (5 downto 0);
    in_stream_TVALID : IN STD_LOGIC;
    in_stream_TREADY : OUT STD_LOGIC;
    out_stream_TVALID : OUT STD_LOGIC;
    out_stream_TREADY : IN STD_LOGIC );
end;


architecture behav of ms is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "ms_ms,hls_ip_2020_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=7.297000,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=2898,HLS_SYN_LUT=4324,HLS_VERSION=2020_2}";
    constant C_S_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant C_S_AXI_WSTRB_WIDTH : INTEGER range 63 downto 0 := 4;
    constant C_S_AXI_ADDR_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal ap_rst_n_inv : STD_LOGIC;
    signal conv_coeffs : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_threshold : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_start : STD_LOGIC;
    signal ap_ready : STD_LOGIC;
    signal ap_done : STD_LOGIC;
    signal ap_idle : STD_LOGIC;
    signal Loop_VITIS_LOOP_40_1_proc3_U0_ap_start : STD_LOGIC;
    signal Loop_VITIS_LOOP_40_1_proc3_U0_ap_done : STD_LOGIC;
    signal Loop_VITIS_LOOP_40_1_proc3_U0_ap_continue : STD_LOGIC;
    signal Loop_VITIS_LOOP_40_1_proc3_U0_ap_idle : STD_LOGIC;
    signal Loop_VITIS_LOOP_40_1_proc3_U0_ap_ready : STD_LOGIC;
    signal Loop_VITIS_LOOP_40_1_proc3_U0_start_out : STD_LOGIC;
    signal Loop_VITIS_LOOP_40_1_proc3_U0_start_write : STD_LOGIC;
    signal Loop_VITIS_LOOP_40_1_proc3_U0_in_stream_TREADY : STD_LOGIC;
    signal Loop_VITIS_LOOP_40_1_proc3_U0_in_raw_stream_din : STD_LOGIC_VECTOR (31 downto 0);
    signal Loop_VITIS_LOOP_40_1_proc3_U0_in_raw_stream_write : STD_LOGIC;
    signal RGB_to_binary_stream_U0_ap_start : STD_LOGIC;
    signal RGB_to_binary_stream_U0_ap_done : STD_LOGIC;
    signal RGB_to_binary_stream_U0_ap_continue : STD_LOGIC;
    signal RGB_to_binary_stream_U0_ap_idle : STD_LOGIC;
    signal RGB_to_binary_stream_U0_ap_ready : STD_LOGIC;
    signal RGB_to_binary_stream_U0_in_32b_read : STD_LOGIC;
    signal RGB_to_binary_stream_U0_out_bw_din : STD_LOGIC_VECTOR (15 downto 0);
    signal RGB_to_binary_stream_U0_out_bw_write : STD_LOGIC;
    signal RGB_to_binary_stream_U0_start_out : STD_LOGIC;
    signal RGB_to_binary_stream_U0_start_write : STD_LOGIC;
    signal Loop_VITIS_LOOP_56_2_proc4_U0_ap_start : STD_LOGIC;
    signal Loop_VITIS_LOOP_56_2_proc4_U0_ap_done : STD_LOGIC;
    signal Loop_VITIS_LOOP_56_2_proc4_U0_ap_continue : STD_LOGIC;
    signal Loop_VITIS_LOOP_56_2_proc4_U0_ap_idle : STD_LOGIC;
    signal Loop_VITIS_LOOP_56_2_proc4_U0_ap_ready : STD_LOGIC;
    signal Loop_VITIS_LOOP_56_2_proc4_U0_in_BW_stream_var_read : STD_LOGIC;
    signal Loop_VITIS_LOOP_56_2_proc4_U0_out_stream_TDATA : STD_LOGIC_VECTOR (31 downto 0);
    signal Loop_VITIS_LOOP_56_2_proc4_U0_out_stream_TVALID : STD_LOGIC;
    signal Loop_VITIS_LOOP_56_2_proc4_U0_out_stream_TKEEP : STD_LOGIC_VECTOR (3 downto 0);
    signal Loop_VITIS_LOOP_56_2_proc4_U0_out_stream_TSTRB : STD_LOGIC_VECTOR (3 downto 0);
    signal Loop_VITIS_LOOP_56_2_proc4_U0_out_stream_TUSER : STD_LOGIC_VECTOR (1 downto 0);
    signal Loop_VITIS_LOOP_56_2_proc4_U0_out_stream_TLAST : STD_LOGIC_VECTOR (0 downto 0);
    signal Loop_VITIS_LOOP_56_2_proc4_U0_out_stream_TID : STD_LOGIC_VECTOR (4 downto 0);
    signal Loop_VITIS_LOOP_56_2_proc4_U0_out_stream_TDEST : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_sync_continue : STD_LOGIC;
    signal in_raw_stream_full_n : STD_LOGIC;
    signal in_raw_stream_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal in_raw_stream_empty_n : STD_LOGIC;
    signal in_BW_stream_var_full_n : STD_LOGIC;
    signal in_BW_stream_var_dout : STD_LOGIC_VECTOR (15 downto 0);
    signal in_BW_stream_var_empty_n : STD_LOGIC;
    signal ap_sync_done : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal start_for_RGB_to_binary_stream_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_RGB_to_binary_stream_U0_full_n : STD_LOGIC;
    signal start_for_RGB_to_binary_stream_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_RGB_to_binary_stream_U0_empty_n : STD_LOGIC;
    signal start_for_Loop_VITIS_LOOP_56_2_proc4_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_Loop_VITIS_LOOP_56_2_proc4_U0_full_n : STD_LOGIC;
    signal start_for_Loop_VITIS_LOOP_56_2_proc4_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_Loop_VITIS_LOOP_56_2_proc4_U0_empty_n : STD_LOGIC;
    signal Loop_VITIS_LOOP_56_2_proc4_U0_start_full_n : STD_LOGIC;
    signal Loop_VITIS_LOOP_56_2_proc4_U0_start_write : STD_LOGIC;

    component ms_Loop_VITIS_LOOP_40_1_proc3 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        in_stream_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
        in_stream_TVALID : IN STD_LOGIC;
        in_stream_TREADY : OUT STD_LOGIC;
        in_stream_TKEEP : IN STD_LOGIC_VECTOR (3 downto 0);
        in_stream_TSTRB : IN STD_LOGIC_VECTOR (3 downto 0);
        in_stream_TUSER : IN STD_LOGIC_VECTOR (1 downto 0);
        in_stream_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
        in_stream_TID : IN STD_LOGIC_VECTOR (4 downto 0);
        in_stream_TDEST : IN STD_LOGIC_VECTOR (5 downto 0);
        in_raw_stream_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        in_raw_stream_full_n : IN STD_LOGIC;
        in_raw_stream_write : OUT STD_LOGIC );
    end component;


    component ms_RGB_to_binary_stream IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        in_32b_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        in_32b_empty_n : IN STD_LOGIC;
        in_32b_read : OUT STD_LOGIC;
        out_bw_din : OUT STD_LOGIC_VECTOR (15 downto 0);
        out_bw_full_n : IN STD_LOGIC;
        out_bw_write : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC );
    end component;


    component ms_Loop_VITIS_LOOP_56_2_proc4 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        in_BW_stream_var_dout : IN STD_LOGIC_VECTOR (15 downto 0);
        in_BW_stream_var_empty_n : IN STD_LOGIC;
        in_BW_stream_var_read : OUT STD_LOGIC;
        out_stream_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
        out_stream_TVALID : OUT STD_LOGIC;
        out_stream_TREADY : IN STD_LOGIC;
        out_stream_TKEEP : OUT STD_LOGIC_VECTOR (3 downto 0);
        out_stream_TSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
        out_stream_TUSER : OUT STD_LOGIC_VECTOR (1 downto 0);
        out_stream_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
        out_stream_TID : OUT STD_LOGIC_VECTOR (4 downto 0);
        out_stream_TDEST : OUT STD_LOGIC_VECTOR (5 downto 0) );
    end component;


    component ms_fifo_w32_d2_S IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (31 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (31 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component ms_fifo_w16_d2_S IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (15 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (15 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component ms_start_for_RGB_to_binary_stream_U0 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component ms_start_for_Loop_VITIS_LOOP_56_2_proc4_U0 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component ms_control_s_axi IS
    generic (
        C_S_AXI_ADDR_WIDTH : INTEGER;
        C_S_AXI_DATA_WIDTH : INTEGER );
    port (
        AWVALID : IN STD_LOGIC;
        AWREADY : OUT STD_LOGIC;
        AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        WVALID : IN STD_LOGIC;
        WREADY : OUT STD_LOGIC;
        WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH/8-1 downto 0);
        ARVALID : IN STD_LOGIC;
        ARREADY : OUT STD_LOGIC;
        ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        RVALID : OUT STD_LOGIC;
        RREADY : IN STD_LOGIC;
        RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        BVALID : OUT STD_LOGIC;
        BREADY : IN STD_LOGIC;
        BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        conv_coeffs : OUT STD_LOGIC_VECTOR (31 downto 0);
        conv_threshold : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_start : OUT STD_LOGIC;
        interrupt : OUT STD_LOGIC;
        ap_ready : IN STD_LOGIC;
        ap_done : IN STD_LOGIC;
        ap_idle : IN STD_LOGIC );
    end component;



begin
    control_s_axi_U : component ms_control_s_axi
    generic map (
        C_S_AXI_ADDR_WIDTH => C_S_AXI_CONTROL_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH => C_S_AXI_CONTROL_DATA_WIDTH)
    port map (
        AWVALID => s_axi_control_AWVALID,
        AWREADY => s_axi_control_AWREADY,
        AWADDR => s_axi_control_AWADDR,
        WVALID => s_axi_control_WVALID,
        WREADY => s_axi_control_WREADY,
        WDATA => s_axi_control_WDATA,
        WSTRB => s_axi_control_WSTRB,
        ARVALID => s_axi_control_ARVALID,
        ARREADY => s_axi_control_ARREADY,
        ARADDR => s_axi_control_ARADDR,
        RVALID => s_axi_control_RVALID,
        RREADY => s_axi_control_RREADY,
        RDATA => s_axi_control_RDATA,
        RRESP => s_axi_control_RRESP,
        BVALID => s_axi_control_BVALID,
        BREADY => s_axi_control_BREADY,
        BRESP => s_axi_control_BRESP,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => ap_const_logic_1,
        conv_coeffs => conv_coeffs,
        conv_threshold => conv_threshold,
        ap_start => ap_start,
        interrupt => interrupt,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_idle => ap_idle);

    Loop_VITIS_LOOP_40_1_proc3_U0 : component ms_Loop_VITIS_LOOP_40_1_proc3
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => Loop_VITIS_LOOP_40_1_proc3_U0_ap_start,
        start_full_n => start_for_RGB_to_binary_stream_U0_full_n,
        ap_done => Loop_VITIS_LOOP_40_1_proc3_U0_ap_done,
        ap_continue => Loop_VITIS_LOOP_40_1_proc3_U0_ap_continue,
        ap_idle => Loop_VITIS_LOOP_40_1_proc3_U0_ap_idle,
        ap_ready => Loop_VITIS_LOOP_40_1_proc3_U0_ap_ready,
        start_out => Loop_VITIS_LOOP_40_1_proc3_U0_start_out,
        start_write => Loop_VITIS_LOOP_40_1_proc3_U0_start_write,
        in_stream_TDATA => in_stream_TDATA,
        in_stream_TVALID => in_stream_TVALID,
        in_stream_TREADY => Loop_VITIS_LOOP_40_1_proc3_U0_in_stream_TREADY,
        in_stream_TKEEP => in_stream_TKEEP,
        in_stream_TSTRB => in_stream_TSTRB,
        in_stream_TUSER => in_stream_TUSER,
        in_stream_TLAST => in_stream_TLAST,
        in_stream_TID => in_stream_TID,
        in_stream_TDEST => in_stream_TDEST,
        in_raw_stream_din => Loop_VITIS_LOOP_40_1_proc3_U0_in_raw_stream_din,
        in_raw_stream_full_n => in_raw_stream_full_n,
        in_raw_stream_write => Loop_VITIS_LOOP_40_1_proc3_U0_in_raw_stream_write);

    RGB_to_binary_stream_U0 : component ms_RGB_to_binary_stream
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => RGB_to_binary_stream_U0_ap_start,
        start_full_n => start_for_Loop_VITIS_LOOP_56_2_proc4_U0_full_n,
        ap_done => RGB_to_binary_stream_U0_ap_done,
        ap_continue => RGB_to_binary_stream_U0_ap_continue,
        ap_idle => RGB_to_binary_stream_U0_ap_idle,
        ap_ready => RGB_to_binary_stream_U0_ap_ready,
        in_32b_dout => in_raw_stream_dout,
        in_32b_empty_n => in_raw_stream_empty_n,
        in_32b_read => RGB_to_binary_stream_U0_in_32b_read,
        out_bw_din => RGB_to_binary_stream_U0_out_bw_din,
        out_bw_full_n => in_BW_stream_var_full_n,
        out_bw_write => RGB_to_binary_stream_U0_out_bw_write,
        start_out => RGB_to_binary_stream_U0_start_out,
        start_write => RGB_to_binary_stream_U0_start_write);

    Loop_VITIS_LOOP_56_2_proc4_U0 : component ms_Loop_VITIS_LOOP_56_2_proc4
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => Loop_VITIS_LOOP_56_2_proc4_U0_ap_start,
        ap_done => Loop_VITIS_LOOP_56_2_proc4_U0_ap_done,
        ap_continue => Loop_VITIS_LOOP_56_2_proc4_U0_ap_continue,
        ap_idle => Loop_VITIS_LOOP_56_2_proc4_U0_ap_idle,
        ap_ready => Loop_VITIS_LOOP_56_2_proc4_U0_ap_ready,
        in_BW_stream_var_dout => in_BW_stream_var_dout,
        in_BW_stream_var_empty_n => in_BW_stream_var_empty_n,
        in_BW_stream_var_read => Loop_VITIS_LOOP_56_2_proc4_U0_in_BW_stream_var_read,
        out_stream_TDATA => Loop_VITIS_LOOP_56_2_proc4_U0_out_stream_TDATA,
        out_stream_TVALID => Loop_VITIS_LOOP_56_2_proc4_U0_out_stream_TVALID,
        out_stream_TREADY => out_stream_TREADY,
        out_stream_TKEEP => Loop_VITIS_LOOP_56_2_proc4_U0_out_stream_TKEEP,
        out_stream_TSTRB => Loop_VITIS_LOOP_56_2_proc4_U0_out_stream_TSTRB,
        out_stream_TUSER => Loop_VITIS_LOOP_56_2_proc4_U0_out_stream_TUSER,
        out_stream_TLAST => Loop_VITIS_LOOP_56_2_proc4_U0_out_stream_TLAST,
        out_stream_TID => Loop_VITIS_LOOP_56_2_proc4_U0_out_stream_TID,
        out_stream_TDEST => Loop_VITIS_LOOP_56_2_proc4_U0_out_stream_TDEST);

    in_raw_stream_U : component ms_fifo_w32_d2_S
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Loop_VITIS_LOOP_40_1_proc3_U0_in_raw_stream_din,
        if_full_n => in_raw_stream_full_n,
        if_write => Loop_VITIS_LOOP_40_1_proc3_U0_in_raw_stream_write,
        if_dout => in_raw_stream_dout,
        if_empty_n => in_raw_stream_empty_n,
        if_read => RGB_to_binary_stream_U0_in_32b_read);

    in_BW_stream_var_U : component ms_fifo_w16_d2_S
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => RGB_to_binary_stream_U0_out_bw_din,
        if_full_n => in_BW_stream_var_full_n,
        if_write => RGB_to_binary_stream_U0_out_bw_write,
        if_dout => in_BW_stream_var_dout,
        if_empty_n => in_BW_stream_var_empty_n,
        if_read => Loop_VITIS_LOOP_56_2_proc4_U0_in_BW_stream_var_read);

    start_for_RGB_to_binary_stream_U0_U : component ms_start_for_RGB_to_binary_stream_U0
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_RGB_to_binary_stream_U0_din,
        if_full_n => start_for_RGB_to_binary_stream_U0_full_n,
        if_write => Loop_VITIS_LOOP_40_1_proc3_U0_start_write,
        if_dout => start_for_RGB_to_binary_stream_U0_dout,
        if_empty_n => start_for_RGB_to_binary_stream_U0_empty_n,
        if_read => RGB_to_binary_stream_U0_ap_ready);

    start_for_Loop_VITIS_LOOP_56_2_proc4_U0_U : component ms_start_for_Loop_VITIS_LOOP_56_2_proc4_U0
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_Loop_VITIS_LOOP_56_2_proc4_U0_din,
        if_full_n => start_for_Loop_VITIS_LOOP_56_2_proc4_U0_full_n,
        if_write => RGB_to_binary_stream_U0_start_write,
        if_dout => start_for_Loop_VITIS_LOOP_56_2_proc4_U0_dout,
        if_empty_n => start_for_Loop_VITIS_LOOP_56_2_proc4_U0_empty_n,
        if_read => Loop_VITIS_LOOP_56_2_proc4_U0_ap_ready);




    Loop_VITIS_LOOP_40_1_proc3_U0_ap_continue <= ap_const_logic_1;
    Loop_VITIS_LOOP_40_1_proc3_U0_ap_start <= ap_start;
    Loop_VITIS_LOOP_56_2_proc4_U0_ap_continue <= ap_const_logic_1;
    Loop_VITIS_LOOP_56_2_proc4_U0_ap_start <= start_for_Loop_VITIS_LOOP_56_2_proc4_U0_empty_n;
    Loop_VITIS_LOOP_56_2_proc4_U0_start_full_n <= ap_const_logic_1;
    Loop_VITIS_LOOP_56_2_proc4_U0_start_write <= ap_const_logic_0;
    RGB_to_binary_stream_U0_ap_continue <= ap_const_logic_1;
    RGB_to_binary_stream_U0_ap_start <= start_for_RGB_to_binary_stream_U0_empty_n;
    ap_done <= Loop_VITIS_LOOP_56_2_proc4_U0_ap_done;
    ap_idle <= (RGB_to_binary_stream_U0_ap_idle and Loop_VITIS_LOOP_56_2_proc4_U0_ap_idle and Loop_VITIS_LOOP_40_1_proc3_U0_ap_idle);
    ap_ready <= Loop_VITIS_LOOP_40_1_proc3_U0_ap_ready;

    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    ap_sync_continue <= ap_const_logic_1;
    ap_sync_done <= Loop_VITIS_LOOP_56_2_proc4_U0_ap_done;
    ap_sync_ready <= Loop_VITIS_LOOP_40_1_proc3_U0_ap_ready;
    in_stream_TREADY <= Loop_VITIS_LOOP_40_1_proc3_U0_in_stream_TREADY;
    out_stream_TDATA <= Loop_VITIS_LOOP_56_2_proc4_U0_out_stream_TDATA;
    out_stream_TDEST <= Loop_VITIS_LOOP_56_2_proc4_U0_out_stream_TDEST;
    out_stream_TID <= Loop_VITIS_LOOP_56_2_proc4_U0_out_stream_TID;
    out_stream_TKEEP <= Loop_VITIS_LOOP_56_2_proc4_U0_out_stream_TKEEP;
    out_stream_TLAST <= Loop_VITIS_LOOP_56_2_proc4_U0_out_stream_TLAST;
    out_stream_TSTRB <= Loop_VITIS_LOOP_56_2_proc4_U0_out_stream_TSTRB;
    out_stream_TUSER <= Loop_VITIS_LOOP_56_2_proc4_U0_out_stream_TUSER;
    out_stream_TVALID <= Loop_VITIS_LOOP_56_2_proc4_U0_out_stream_TVALID;
    start_for_Loop_VITIS_LOOP_56_2_proc4_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_RGB_to_binary_stream_U0_din <= (0=>ap_const_logic_1, others=>'-');
end behav;