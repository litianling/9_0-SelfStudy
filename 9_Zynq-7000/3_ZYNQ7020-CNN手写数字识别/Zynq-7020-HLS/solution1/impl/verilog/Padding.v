// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Padding (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        input_matrix_address0,
        input_matrix_ce0,
        input_matrix_q0,
        output_matrix_address0,
        output_matrix_ce0,
        output_matrix_we0,
        output_matrix_d0
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] input_matrix_address0;
output   input_matrix_ce0;
input  [31:0] input_matrix_q0;
output  [7:0] output_matrix_address0;
output   output_matrix_ce0;
output   output_matrix_we0;
output  [31:0] output_matrix_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg input_matrix_ce0;
reg[7:0] output_matrix_address0;
reg output_matrix_ce0;
reg output_matrix_we0;
reg[31:0] output_matrix_d0;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] i_fu_114_p2;
reg   [4:0] i_reg_271;
wire    ap_CS_fsm_state2;
wire   [7:0] shl_ln_fu_124_p3;
reg   [7:0] shl_ln_reg_276;
wire   [0:0] icmp_ln113_fu_108_p2;
wire   [0:0] icmp_ln115_fu_136_p2;
reg   [0:0] icmp_ln115_reg_281;
wire   [8:0] sub_ln116_fu_154_p2;
reg   [8:0] sub_ln116_reg_286;
wire   [0:0] icmp_ln115_1_fu_170_p2;
reg   [0:0] icmp_ln115_1_reg_291;
wire   [4:0] j_fu_191_p2;
reg   [4:0] j_reg_299;
wire    ap_CS_fsm_state3;
wire   [0:0] and_ln115_2_fu_229_p2;
reg   [0:0] and_ln115_2_reg_304;
wire   [0:0] icmp_ln114_fu_185_p2;
wire   [7:0] grp_fu_104_p2;
reg   [7:0] add_ln116_2_reg_313;
reg   [4:0] i_0_reg_82;
reg   [4:0] j_0_reg_93;
wire    ap_CS_fsm_state4;
wire   [63:0] zext_ln118_fu_235_p1;
wire   [63:0] zext_ln116_fu_259_p1;
wire   [63:0] zext_ln116_1_fu_264_p1;
wire   [7:0] zext_ln114_fu_176_p1;
wire   [3:0] trunc_ln118_fu_120_p1;
wire   [5:0] shl_ln5_fu_142_p3;
wire   [8:0] zext_ln118_1_fu_132_p1;
wire   [8:0] zext_ln116_2_fu_150_p1;
wire   [3:0] tmp_1_fu_160_p4;
wire   [3:0] tmp_2_fu_197_p4;
wire   [0:0] icmp_ln115_2_fu_207_p2;
wire   [0:0] icmp_ln115_3_fu_213_p2;
wire   [0:0] and_ln115_1_fu_224_p2;
wire   [0:0] and_ln115_fu_219_p2;
wire   [5:0] zext_ln114_1_fu_181_p1;
wire   [5:0] add_ln116_fu_240_p2;
wire  signed [8:0] sext_ln116_fu_246_p1;
wire   [8:0] add_ln116_1_fu_250_p2;
wire  signed [31:0] sext_ln116_1_fu_255_p1;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln114_fu_185_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_0_reg_82 <= i_reg_271;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_82 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln113_fu_108_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_0_reg_93 <= 5'd0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        j_0_reg_93 <= j_reg_299;
    end
end

always @ (posedge ap_clk) begin
    if (((1'd1 == and_ln115_2_fu_229_p2) & (icmp_ln114_fu_185_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        add_ln116_2_reg_313 <= grp_fu_104_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln114_fu_185_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        and_ln115_2_reg_304 <= and_ln115_2_fu_229_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_271 <= i_fu_114_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln113_fu_108_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        icmp_ln115_1_reg_291 <= icmp_ln115_1_fu_170_p2;
        icmp_ln115_reg_281 <= icmp_ln115_fu_136_p2;
        shl_ln_reg_276[7 : 4] <= shl_ln_fu_124_p3[7 : 4];
        sub_ln116_reg_286[8 : 2] <= sub_ln116_fu_154_p2[8 : 2];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_reg_299 <= j_fu_191_p2;
    end
end

always @ (*) begin
    if ((((icmp_ln113_fu_108_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
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
    if (((icmp_ln113_fu_108_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        input_matrix_ce0 = 1'b1;
    end else begin
        input_matrix_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_matrix_address0 = zext_ln116_1_fu_264_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_matrix_address0 = zext_ln118_fu_235_p1;
    end else begin
        output_matrix_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        output_matrix_ce0 = 1'b1;
    end else begin
        output_matrix_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_matrix_d0 = input_matrix_q0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_matrix_d0 = 32'd0;
    end else begin
        output_matrix_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'd1 == and_ln115_2_reg_304) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln114_fu_185_p2 == 1'd0) & (1'd0 == and_ln115_2_fu_229_p2) & (1'b1 == ap_CS_fsm_state3)))) begin
        output_matrix_we0 = 1'b1;
    end else begin
        output_matrix_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln113_fu_108_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln114_fu_185_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln116_1_fu_250_p2 = ($signed(sext_ln116_fu_246_p1) + $signed(sub_ln116_reg_286));

assign add_ln116_fu_240_p2 = ($signed(zext_ln114_1_fu_181_p1) + $signed(6'd38));

assign and_ln115_1_fu_224_p2 = (icmp_ln115_reg_281 & icmp_ln115_3_fu_213_p2);

assign and_ln115_2_fu_229_p2 = (and_ln115_fu_219_p2 & and_ln115_1_fu_224_p2);

assign and_ln115_fu_219_p2 = (icmp_ln115_2_fu_207_p2 & icmp_ln115_1_reg_291);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign grp_fu_104_p2 = (shl_ln_reg_276 + zext_ln114_fu_176_p1);

assign i_fu_114_p2 = (i_0_reg_82 + 5'd1);

assign icmp_ln113_fu_108_p2 = ((i_0_reg_82 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln114_fu_185_p2 = ((j_0_reg_93 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln115_1_fu_170_p2 = ((tmp_1_fu_160_p4 != 4'd0) ? 1'b1 : 1'b0);

assign icmp_ln115_2_fu_207_p2 = ((tmp_2_fu_197_p4 != 4'd0) ? 1'b1 : 1'b0);

assign icmp_ln115_3_fu_213_p2 = ((j_0_reg_93 < 5'd14) ? 1'b1 : 1'b0);

assign icmp_ln115_fu_136_p2 = ((i_0_reg_82 < 5'd14) ? 1'b1 : 1'b0);

assign input_matrix_address0 = zext_ln116_fu_259_p1;

assign j_fu_191_p2 = (j_0_reg_93 + 5'd1);

assign sext_ln116_1_fu_255_p1 = $signed(add_ln116_1_fu_250_p2);

assign sext_ln116_fu_246_p1 = $signed(add_ln116_fu_240_p2);

assign shl_ln5_fu_142_p3 = {{trunc_ln118_fu_120_p1}, {2'd0}};

assign shl_ln_fu_124_p3 = {{trunc_ln118_fu_120_p1}, {4'd0}};

assign sub_ln116_fu_154_p2 = (zext_ln118_1_fu_132_p1 - zext_ln116_2_fu_150_p1);

assign tmp_1_fu_160_p4 = {{i_0_reg_82[4:1]}};

assign tmp_2_fu_197_p4 = {{j_0_reg_93[4:1]}};

assign trunc_ln118_fu_120_p1 = i_0_reg_82[3:0];

assign zext_ln114_1_fu_181_p1 = j_0_reg_93;

assign zext_ln114_fu_176_p1 = j_0_reg_93;

assign zext_ln116_1_fu_264_p1 = add_ln116_2_reg_313;

assign zext_ln116_2_fu_150_p1 = shl_ln5_fu_142_p3;

assign zext_ln116_fu_259_p1 = $unsigned(sext_ln116_1_fu_255_p1);

assign zext_ln118_1_fu_132_p1 = shl_ln_fu_124_p3;

assign zext_ln118_fu_235_p1 = grp_fu_104_p2;

always @ (posedge ap_clk) begin
    shl_ln_reg_276[3:0] <= 4'b0000;
    sub_ln116_reg_286[1:0] <= 2'b00;
end

endmodule //Padding
