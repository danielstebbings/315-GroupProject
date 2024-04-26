// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ms_Loop_VITIS_LOOP_42_1_proc3 (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        in_stream_TDATA,
        in_stream_TVALID,
        in_stream_TREADY,
        in_stream_TKEEP,
        in_stream_TSTRB,
        in_stream_TUSER,
        in_stream_TLAST,
        in_stream_TID,
        in_stream_TDEST,
        in_raw_stream_din,
        in_raw_stream_full_n,
        in_raw_stream_write
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [31:0] in_stream_TDATA;
input   in_stream_TVALID;
output   in_stream_TREADY;
input  [3:0] in_stream_TKEEP;
input  [3:0] in_stream_TSTRB;
input  [1:0] in_stream_TUSER;
input  [0:0] in_stream_TLAST;
input  [4:0] in_stream_TID;
input  [5:0] in_stream_TDEST;
output  [31:0] in_raw_stream_din;
input   in_raw_stream_full_n;
output   in_raw_stream_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg in_raw_stream_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    in_stream_TDATA_blk_n;
wire    ap_CS_fsm_state2;
reg    in_raw_stream_blk_n;
reg    ap_block_state2;
wire   [0:0] temp_in_packet_last_V_fu_72_p1;
wire    ap_CS_fsm_state3;
reg   [2:0] ap_NS_fsm;
reg    ap_block_state1;
wire    regslice_both_in_stream_V_data_V_U_apdone_blk;
wire   [31:0] in_stream_TDATA_int_regslice;
wire    in_stream_TVALID_int_regslice;
reg    in_stream_TREADY_int_regslice;
wire    regslice_both_in_stream_V_data_V_U_ack_in;
wire    regslice_both_in_stream_V_keep_V_U_apdone_blk;
wire   [3:0] in_stream_TKEEP_int_regslice;
wire    regslice_both_in_stream_V_keep_V_U_vld_out;
wire    regslice_both_in_stream_V_keep_V_U_ack_in;
wire    regslice_both_in_stream_V_strb_V_U_apdone_blk;
wire   [3:0] in_stream_TSTRB_int_regslice;
wire    regslice_both_in_stream_V_strb_V_U_vld_out;
wire    regslice_both_in_stream_V_strb_V_U_ack_in;
wire    regslice_both_in_stream_V_user_V_U_apdone_blk;
wire   [1:0] in_stream_TUSER_int_regslice;
wire    regslice_both_in_stream_V_user_V_U_vld_out;
wire    regslice_both_in_stream_V_user_V_U_ack_in;
wire    regslice_both_in_stream_V_last_V_U_apdone_blk;
wire   [0:0] in_stream_TLAST_int_regslice;
wire    regslice_both_in_stream_V_last_V_U_vld_out;
wire    regslice_both_in_stream_V_last_V_U_ack_in;
wire    regslice_both_in_stream_V_id_V_U_apdone_blk;
wire   [4:0] in_stream_TID_int_regslice;
wire    regslice_both_in_stream_V_id_V_U_vld_out;
wire    regslice_both_in_stream_V_id_V_U_ack_in;
wire    regslice_both_in_stream_V_dest_V_U_apdone_blk;
wire   [5:0] in_stream_TDEST_int_regslice;
wire    regslice_both_in_stream_V_dest_V_U_vld_out;
wire    regslice_both_in_stream_V_dest_V_U_ack_in;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
end

ms_regslice_both #(
    .DataWidth( 32 ))
regslice_both_in_stream_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(in_stream_TDATA),
    .vld_in(in_stream_TVALID),
    .ack_in(regslice_both_in_stream_V_data_V_U_ack_in),
    .data_out(in_stream_TDATA_int_regslice),
    .vld_out(in_stream_TVALID_int_regslice),
    .ack_out(in_stream_TREADY_int_regslice),
    .apdone_blk(regslice_both_in_stream_V_data_V_U_apdone_blk)
);

ms_regslice_both #(
    .DataWidth( 4 ))
regslice_both_in_stream_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(in_stream_TKEEP),
    .vld_in(in_stream_TVALID),
    .ack_in(regslice_both_in_stream_V_keep_V_U_ack_in),
    .data_out(in_stream_TKEEP_int_regslice),
    .vld_out(regslice_both_in_stream_V_keep_V_U_vld_out),
    .ack_out(in_stream_TREADY_int_regslice),
    .apdone_blk(regslice_both_in_stream_V_keep_V_U_apdone_blk)
);

ms_regslice_both #(
    .DataWidth( 4 ))
regslice_both_in_stream_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(in_stream_TSTRB),
    .vld_in(in_stream_TVALID),
    .ack_in(regslice_both_in_stream_V_strb_V_U_ack_in),
    .data_out(in_stream_TSTRB_int_regslice),
    .vld_out(regslice_both_in_stream_V_strb_V_U_vld_out),
    .ack_out(in_stream_TREADY_int_regslice),
    .apdone_blk(regslice_both_in_stream_V_strb_V_U_apdone_blk)
);

ms_regslice_both #(
    .DataWidth( 2 ))
regslice_both_in_stream_V_user_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(in_stream_TUSER),
    .vld_in(in_stream_TVALID),
    .ack_in(regslice_both_in_stream_V_user_V_U_ack_in),
    .data_out(in_stream_TUSER_int_regslice),
    .vld_out(regslice_both_in_stream_V_user_V_U_vld_out),
    .ack_out(in_stream_TREADY_int_regslice),
    .apdone_blk(regslice_both_in_stream_V_user_V_U_apdone_blk)
);

ms_regslice_both #(
    .DataWidth( 1 ))
regslice_both_in_stream_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(in_stream_TLAST),
    .vld_in(in_stream_TVALID),
    .ack_in(regslice_both_in_stream_V_last_V_U_ack_in),
    .data_out(in_stream_TLAST_int_regslice),
    .vld_out(regslice_both_in_stream_V_last_V_U_vld_out),
    .ack_out(in_stream_TREADY_int_regslice),
    .apdone_blk(regslice_both_in_stream_V_last_V_U_apdone_blk)
);

ms_regslice_both #(
    .DataWidth( 5 ))
regslice_both_in_stream_V_id_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(in_stream_TID),
    .vld_in(in_stream_TVALID),
    .ack_in(regslice_both_in_stream_V_id_V_U_ack_in),
    .data_out(in_stream_TID_int_regslice),
    .vld_out(regslice_both_in_stream_V_id_V_U_vld_out),
    .ack_out(in_stream_TREADY_int_regslice),
    .apdone_blk(regslice_both_in_stream_V_id_V_U_apdone_blk)
);

ms_regslice_both #(
    .DataWidth( 6 ))
regslice_both_in_stream_V_dest_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(in_stream_TDEST),
    .vld_in(in_stream_TVALID),
    .ack_in(regslice_both_in_stream_V_dest_V_U_ack_in),
    .data_out(in_stream_TDEST_int_regslice),
    .vld_out(regslice_both_in_stream_V_dest_V_U_vld_out),
    .ack_out(in_stream_TREADY_int_regslice),
    .apdone_blk(regslice_both_in_stream_V_dest_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state3)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((real_start == 1'b1) & (internal_ap_ready == 1'b0))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        in_raw_stream_blk_n = in_raw_stream_full_n;
    end else begin
        in_raw_stream_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((in_raw_stream_full_n == 1'b0) | (in_stream_TVALID_int_regslice == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        in_raw_stream_write = 1'b1;
    end else begin
        in_raw_stream_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        in_stream_TDATA_blk_n = in_stream_TVALID_int_regslice;
    end else begin
        in_stream_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((in_raw_stream_full_n == 1'b0) | (in_stream_TVALID_int_regslice == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        in_stream_TREADY_int_regslice = 1'b1;
    end else begin
        in_stream_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((real_start == 1'b1) & (start_once_reg == 1'b0))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~((in_raw_stream_full_n == 1'b0) | (in_stream_TVALID_int_regslice == 1'b0)) & (temp_in_packet_last_V_fu_72_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if ((~((in_raw_stream_full_n == 1'b0) | (in_stream_TVALID_int_regslice == 1'b0)) & (temp_in_packet_last_V_fu_72_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state2 = ((in_raw_stream_full_n == 1'b0) | (in_stream_TVALID_int_regslice == 1'b0));
end

assign ap_ready = internal_ap_ready;

assign in_raw_stream_din = in_stream_TDATA_int_regslice;

assign in_stream_TREADY = regslice_both_in_stream_V_data_V_U_ack_in;

assign start_out = real_start;

assign temp_in_packet_last_V_fu_72_p1 = in_stream_TLAST_int_regslice;

endmodule //ms_Loop_VITIS_LOOP_42_1_proc3
