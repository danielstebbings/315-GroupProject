// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ms_Loop_VITIS_LOOP_58_2_proc4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        in_BW_stream_var_dout,
        in_BW_stream_var_empty_n,
        in_BW_stream_var_read,
        out_stream_TDATA,
        out_stream_TVALID,
        out_stream_TREADY,
        out_stream_TKEEP,
        out_stream_TSTRB,
        out_stream_TUSER,
        out_stream_TLAST,
        out_stream_TID,
        out_stream_TDEST
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state4 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [15:0] in_BW_stream_var_dout;
input   in_BW_stream_var_empty_n;
output   in_BW_stream_var_read;
output  [31:0] out_stream_TDATA;
output   out_stream_TVALID;
input   out_stream_TREADY;
output  [3:0] out_stream_TKEEP;
output  [3:0] out_stream_TSTRB;
output  [1:0] out_stream_TUSER;
output  [0:0] out_stream_TLAST;
output  [4:0] out_stream_TID;
output  [5:0] out_stream_TDEST;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg in_BW_stream_var_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    in_BW_stream_var_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
reg    out_stream_TDATA_blk_n;
reg    ap_enable_reg_pp0_iter1;
reg    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] temp_out_BW_pkt_last_fu_97_p3;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_flush_enable;
reg    ap_block_pp0_stage0_01001;
wire   [0:0] temp_out_BW_pkt_pix_V_fu_88_p1;
wire    ap_CS_fsm_state4;
wire    regslice_both_out_stream_V_data_V_U_apdone_blk;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [31:0] out_stream_TDATA_int_regslice;
reg    out_stream_TVALID_int_regslice;
wire    out_stream_TREADY_int_regslice;
wire    regslice_both_out_stream_V_data_V_U_vld_out;
wire    regslice_both_out_stream_V_keep_V_U_apdone_blk;
wire    regslice_both_out_stream_V_keep_V_U_ack_in_dummy;
wire    regslice_both_out_stream_V_keep_V_U_vld_out;
wire    regslice_both_out_stream_V_strb_V_U_apdone_blk;
wire    regslice_both_out_stream_V_strb_V_U_ack_in_dummy;
wire    regslice_both_out_stream_V_strb_V_U_vld_out;
wire    regslice_both_out_stream_V_user_V_U_apdone_blk;
wire    regslice_both_out_stream_V_user_V_U_ack_in_dummy;
wire    regslice_both_out_stream_V_user_V_U_vld_out;
wire    regslice_both_out_stream_V_last_V_U_apdone_blk;
wire   [0:0] out_stream_TLAST_int_regslice;
wire    regslice_both_out_stream_V_last_V_U_ack_in_dummy;
wire    regslice_both_out_stream_V_last_V_U_vld_out;
wire    regslice_both_out_stream_V_id_V_U_apdone_blk;
wire    regslice_both_out_stream_V_id_V_U_ack_in_dummy;
wire    regslice_both_out_stream_V_id_V_U_vld_out;
wire    regslice_both_out_stream_V_dest_V_U_apdone_blk;
wire    regslice_both_out_stream_V_dest_V_U_ack_in_dummy;
wire    regslice_both_out_stream_V_dest_V_U_vld_out;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

ms_regslice_both #(
    .DataWidth( 32 ))
regslice_both_out_stream_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(out_stream_TDATA_int_regslice),
    .vld_in(out_stream_TVALID_int_regslice),
    .ack_in(out_stream_TREADY_int_regslice),
    .data_out(out_stream_TDATA),
    .vld_out(regslice_both_out_stream_V_data_V_U_vld_out),
    .ack_out(out_stream_TREADY),
    .apdone_blk(regslice_both_out_stream_V_data_V_U_apdone_blk)
);

ms_regslice_both #(
    .DataWidth( 4 ))
regslice_both_out_stream_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(4'd0),
    .vld_in(out_stream_TVALID_int_regslice),
    .ack_in(regslice_both_out_stream_V_keep_V_U_ack_in_dummy),
    .data_out(out_stream_TKEEP),
    .vld_out(regslice_both_out_stream_V_keep_V_U_vld_out),
    .ack_out(out_stream_TREADY),
    .apdone_blk(regslice_both_out_stream_V_keep_V_U_apdone_blk)
);

ms_regslice_both #(
    .DataWidth( 4 ))
regslice_both_out_stream_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(4'd0),
    .vld_in(out_stream_TVALID_int_regslice),
    .ack_in(regslice_both_out_stream_V_strb_V_U_ack_in_dummy),
    .data_out(out_stream_TSTRB),
    .vld_out(regslice_both_out_stream_V_strb_V_U_vld_out),
    .ack_out(out_stream_TREADY),
    .apdone_blk(regslice_both_out_stream_V_strb_V_U_apdone_blk)
);

ms_regslice_both #(
    .DataWidth( 2 ))
regslice_both_out_stream_V_user_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(2'd0),
    .vld_in(out_stream_TVALID_int_regslice),
    .ack_in(regslice_both_out_stream_V_user_V_U_ack_in_dummy),
    .data_out(out_stream_TUSER),
    .vld_out(regslice_both_out_stream_V_user_V_U_vld_out),
    .ack_out(out_stream_TREADY),
    .apdone_blk(regslice_both_out_stream_V_user_V_U_apdone_blk)
);

ms_regslice_both #(
    .DataWidth( 1 ))
regslice_both_out_stream_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(out_stream_TLAST_int_regslice),
    .vld_in(out_stream_TVALID_int_regslice),
    .ack_in(regslice_both_out_stream_V_last_V_U_ack_in_dummy),
    .data_out(out_stream_TLAST),
    .vld_out(regslice_both_out_stream_V_last_V_U_vld_out),
    .ack_out(out_stream_TREADY),
    .apdone_blk(regslice_both_out_stream_V_last_V_U_apdone_blk)
);

ms_regslice_both #(
    .DataWidth( 5 ))
regslice_both_out_stream_V_id_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(5'd0),
    .vld_in(out_stream_TVALID_int_regslice),
    .ack_in(regslice_both_out_stream_V_id_V_U_ack_in_dummy),
    .data_out(out_stream_TID),
    .vld_out(regslice_both_out_stream_V_id_V_U_vld_out),
    .ack_out(out_stream_TREADY),
    .apdone_blk(regslice_both_out_stream_V_id_V_U_apdone_blk)
);

ms_regslice_both #(
    .DataWidth( 6 ))
regslice_both_out_stream_V_dest_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(6'd0),
    .vld_in(out_stream_TVALID_int_regslice),
    .ack_in(regslice_both_out_stream_V_dest_V_U_ack_in_dummy),
    .data_out(out_stream_TDEST),
    .vld_out(regslice_both_out_stream_V_dest_V_U_vld_out),
    .ack_out(out_stream_TREADY),
    .apdone_blk(regslice_both_out_stream_V_dest_V_U_apdone_blk)
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
        end else if (((1'b1 == ap_CS_fsm_state4) & (regslice_both_out_stream_V_data_V_U_apdone_blk == 1'b0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_pp0_flush_enable)) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (*) begin
    if (((temp_out_BW_pkt_last_fu_97_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_pp0_flush_enable = 1'b1;
    end else begin
        ap_condition_pp0_flush_enable = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (regslice_both_out_stream_V_data_V_U_apdone_blk == 1'b0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (regslice_both_out_stream_V_data_V_U_apdone_blk == 1'b0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in_BW_stream_var_blk_n = in_BW_stream_var_empty_n;
    end else begin
        in_BW_stream_var_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in_BW_stream_var_read = 1'b1;
    end else begin
        in_BW_stream_var_read = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        out_stream_TDATA_blk_n = out_stream_TREADY_int_regslice;
    end else begin
        out_stream_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_stream_TVALID_int_regslice = 1'b1;
    end else begin
        out_stream_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (regslice_both_out_stream_V_data_V_U_apdone_blk == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & (out_stream_TREADY_int_regslice == 1'b0)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & ((in_BW_stream_var_empty_n == 1'b0) | (out_stream_TREADY_int_regslice == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & (out_stream_TREADY_int_regslice == 1'b0)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & ((in_BW_stream_var_empty_n == 1'b0) | (out_stream_TREADY_int_regslice == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter1 == 1'b1) & (out_stream_TREADY_int_regslice == 1'b0)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & ((in_BW_stream_var_empty_n == 1'b0) | (out_stream_TREADY_int_regslice == 1'b0))));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter0 = ((in_BW_stream_var_empty_n == 1'b0) | (out_stream_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = (out_stream_TREADY_int_regslice == 1'b0);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign out_stream_TDATA_int_regslice = temp_out_BW_pkt_pix_V_fu_88_p1;

assign out_stream_TLAST_int_regslice = in_BW_stream_var_dout[32'd8];

assign out_stream_TVALID = regslice_both_out_stream_V_data_V_U_vld_out;

assign temp_out_BW_pkt_last_fu_97_p3 = in_BW_stream_var_dout[32'd8];

assign temp_out_BW_pkt_pix_V_fu_88_p1 = in_BW_stream_var_dout[0:0];

endmodule //ms_Loop_VITIS_LOOP_58_2_proc4