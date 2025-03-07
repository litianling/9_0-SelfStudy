// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module MaxPooBackPropagatio_1 (
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
        output_matrix_d0,
        max_poo_locate_1_address0,
        max_poo_locate_1_ce0,
        max_poo_locate_1_q0
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] input_matrix_address0;
output   input_matrix_ce0;
input  [31:0] input_matrix_q0;
output  [9:0] output_matrix_address0;
output   output_matrix_ce0;
output   output_matrix_we0;
output  [31:0] output_matrix_d0;
output  [7:0] max_poo_locate_1_address0;
output   max_poo_locate_1_ce0;
input  [31:0] max_poo_locate_1_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg input_matrix_ce0;
reg[9:0] output_matrix_address0;
reg output_matrix_ce0;
reg output_matrix_we0;
reg[31:0] output_matrix_d0;
reg max_poo_locate_1_ce0;

(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] col_fu_170_p2;
reg   [4:0] col_reg_457;
wire    ap_CS_fsm_state2;
wire   [10:0] sub_ln97_fu_200_p2;
reg   [10:0] sub_ln97_reg_462;
wire   [0:0] icmp_ln95_fu_164_p2;
wire   [4:0] low_fu_216_p2;
wire    ap_CS_fsm_state3;
wire   [3:0] i_fu_242_p2;
reg   [3:0] i_reg_478;
wire    ap_CS_fsm_state4;
wire   [8:0] sub_ln101_fu_272_p2;
reg   [8:0] sub_ln101_reg_483;
wire   [0:0] icmp_ln99_fu_236_p2;
wire   [3:0] j_fu_288_p2;
reg   [3:0] j_reg_491;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln100_fu_282_p2;
reg   [31:0] max_poo_locate_1_loa_reg_506;
wire    ap_CS_fsm_state6;
reg   [31:0] input_matrix_load_reg_511;
reg   [0:0] p_Result_s_reg_516;
wire    ap_CS_fsm_state7;
wire   [31:0] p_Val2_17_fu_430_p3;
reg   [31:0] p_Val2_17_reg_521;
reg   [4:0] col_0_reg_120;
wire   [0:0] icmp_ln96_fu_210_p2;
reg   [4:0] low_0_reg_131;
reg   [3:0] i_0_reg_142;
reg   [3:0] j_0_reg_153;
wire    ap_CS_fsm_state8;
wire   [63:0] zext_ln97_fu_231_p1;
wire   [63:0] zext_ln101_fu_303_p1;
wire  signed [63:0] sext_ln102_fu_449_p1;
wire   [9:0] shl_ln_fu_176_p3;
wire   [6:0] shl_ln97_2_fu_188_p3;
wire   [10:0] zext_ln97_1_fu_184_p1;
wire   [10:0] zext_ln97_2_fu_196_p1;
wire   [10:0] low_0_cast_fu_206_p1;
wire   [10:0] add_ln97_fu_222_p2;
wire  signed [31:0] sext_ln97_fu_227_p1;
wire   [7:0] shl_ln8_fu_248_p3;
wire   [4:0] shl_ln101_2_fu_260_p3;
wire   [8:0] zext_ln101_1_fu_256_p1;
wire   [8:0] zext_ln101_2_fu_268_p1;
wire   [8:0] j_0_cast_fu_278_p1;
wire   [8:0] add_ln101_fu_294_p2;
wire  signed [31:0] sext_ln101_fu_299_p1;
wire   [31:0] p_Val2_s_fu_309_p1;
wire   [22:0] tmp_V_3_fu_330_p1;
wire   [24:0] mantissa_V_fu_334_p4;
wire   [7:0] tmp_V_fu_320_p4;
wire   [8:0] zext_ln339_fu_348_p1;
wire   [8:0] add_ln339_fu_352_p2;
wire   [7:0] sub_ln1311_fu_366_p2;
wire   [0:0] isNeg_fu_358_p3;
wire  signed [8:0] sext_ln1311_fu_372_p1;
wire  signed [8:0] ush_fu_376_p3;
wire  signed [31:0] sext_ln1311_3_fu_384_p1;
wire  signed [24:0] sext_ln1311_4_fu_388_p1;
wire   [78:0] zext_ln682_fu_344_p1;
wire   [78:0] zext_ln1287_fu_392_p1;
wire   [24:0] r_V_fu_396_p2;
wire   [0:0] tmp_fu_408_p3;
wire   [78:0] r_V_3_fu_402_p2;
wire   [31:0] zext_ln662_fu_416_p1;
wire   [31:0] tmp_12_fu_420_p4;
wire   [31:0] result_V_3_fu_438_p2;
wire   [31:0] p_Val2_18_fu_443_p3;
reg   [7:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln96_fu_210_p2 == 1'd1))) begin
        col_0_reg_120 <= col_reg_457;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        col_0_reg_120 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln95_fu_164_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i_0_reg_142 <= 4'd0;
    end else if (((icmp_ln100_fu_282_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        i_0_reg_142 <= i_reg_478;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln99_fu_236_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        j_0_reg_153 <= 4'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        j_0_reg_153 <= j_reg_491;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln95_fu_164_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        low_0_reg_131 <= 5'd0;
    end else if (((icmp_ln96_fu_210_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        low_0_reg_131 <= low_fu_216_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        col_reg_457 <= col_fu_170_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_reg_478 <= i_fu_242_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        input_matrix_load_reg_511 <= input_matrix_q0;
        max_poo_locate_1_loa_reg_506 <= max_poo_locate_1_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        j_reg_491 <= j_fu_288_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        p_Result_s_reg_516 <= p_Val2_s_fu_309_p1[32'd31];
        p_Val2_17_reg_521 <= p_Val2_17_fu_430_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln99_fu_236_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        sub_ln101_reg_483[8 : 1] <= sub_ln101_fu_272_p2[8 : 1];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln95_fu_164_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        sub_ln97_reg_462[10 : 2] <= sub_ln97_fu_200_p2[10 : 2];
    end
end

always @ (*) begin
    if ((((icmp_ln99_fu_236_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln99_fu_236_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        input_matrix_ce0 = 1'b1;
    end else begin
        input_matrix_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        max_poo_locate_1_ce0 = 1'b1;
    end else begin
        max_poo_locate_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        output_matrix_address0 = sext_ln102_fu_449_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_matrix_address0 = zext_ln97_fu_231_p1;
    end else begin
        output_matrix_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state8))) begin
        output_matrix_ce0 = 1'b1;
    end else begin
        output_matrix_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        output_matrix_d0 = input_matrix_load_reg_511;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_matrix_d0 = 32'd0;
    end else begin
        output_matrix_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | ((icmp_ln96_fu_210_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)))) begin
        output_matrix_we0 = 1'b1;
    end else begin
        output_matrix_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln95_fu_164_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln96_fu_210_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln99_fu_236_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln100_fu_282_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln101_fu_294_p2 = (j_0_cast_fu_278_p1 + sub_ln101_reg_483);

assign add_ln339_fu_352_p2 = ($signed(9'd385) + $signed(zext_ln339_fu_348_p1));

assign add_ln97_fu_222_p2 = (sub_ln97_reg_462 + low_0_cast_fu_206_p1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign col_fu_170_p2 = (col_0_reg_120 + 5'd1);

assign i_fu_242_p2 = (i_0_reg_142 + 4'd1);

assign icmp_ln100_fu_282_p2 = ((j_0_reg_153 == 4'd14) ? 1'b1 : 1'b0);

assign icmp_ln95_fu_164_p2 = ((col_0_reg_120 == 5'd28) ? 1'b1 : 1'b0);

assign icmp_ln96_fu_210_p2 = ((low_0_reg_131 == 5'd28) ? 1'b1 : 1'b0);

assign icmp_ln99_fu_236_p2 = ((i_0_reg_142 == 4'd14) ? 1'b1 : 1'b0);

assign input_matrix_address0 = zext_ln101_fu_303_p1;

assign isNeg_fu_358_p3 = add_ln339_fu_352_p2[32'd8];

assign j_0_cast_fu_278_p1 = j_0_reg_153;

assign j_fu_288_p2 = (j_0_reg_153 + 4'd1);

assign low_0_cast_fu_206_p1 = low_0_reg_131;

assign low_fu_216_p2 = (low_0_reg_131 + 5'd1);

assign mantissa_V_fu_334_p4 = {{{{1'd1}, {tmp_V_3_fu_330_p1}}}, {1'd0}};

assign max_poo_locate_1_address0 = zext_ln101_fu_303_p1;

assign p_Val2_17_fu_430_p3 = ((isNeg_fu_358_p3[0:0] === 1'b1) ? zext_ln662_fu_416_p1 : tmp_12_fu_420_p4);

assign p_Val2_18_fu_443_p3 = ((p_Result_s_reg_516[0:0] === 1'b1) ? result_V_3_fu_438_p2 : p_Val2_17_reg_521);

assign p_Val2_s_fu_309_p1 = max_poo_locate_1_loa_reg_506;

assign r_V_3_fu_402_p2 = zext_ln682_fu_344_p1 << zext_ln1287_fu_392_p1;

assign r_V_fu_396_p2 = mantissa_V_fu_334_p4 >> sext_ln1311_4_fu_388_p1;

assign result_V_3_fu_438_p2 = (32'd0 - p_Val2_17_reg_521);

assign sext_ln101_fu_299_p1 = $signed(add_ln101_fu_294_p2);

assign sext_ln102_fu_449_p1 = $signed(p_Val2_18_fu_443_p3);

assign sext_ln1311_3_fu_384_p1 = ush_fu_376_p3;

assign sext_ln1311_4_fu_388_p1 = ush_fu_376_p3;

assign sext_ln1311_fu_372_p1 = $signed(sub_ln1311_fu_366_p2);

assign sext_ln97_fu_227_p1 = $signed(add_ln97_fu_222_p2);

assign shl_ln101_2_fu_260_p3 = {{i_0_reg_142}, {1'd0}};

assign shl_ln8_fu_248_p3 = {{i_0_reg_142}, {4'd0}};

assign shl_ln97_2_fu_188_p3 = {{col_0_reg_120}, {2'd0}};

assign shl_ln_fu_176_p3 = {{col_0_reg_120}, {5'd0}};

assign sub_ln101_fu_272_p2 = (zext_ln101_1_fu_256_p1 - zext_ln101_2_fu_268_p1);

assign sub_ln1311_fu_366_p2 = (8'd127 - tmp_V_fu_320_p4);

assign sub_ln97_fu_200_p2 = (zext_ln97_1_fu_184_p1 - zext_ln97_2_fu_196_p1);

assign tmp_12_fu_420_p4 = {{r_V_3_fu_402_p2[55:24]}};

assign tmp_V_3_fu_330_p1 = p_Val2_s_fu_309_p1[22:0];

assign tmp_V_fu_320_p4 = {{p_Val2_s_fu_309_p1[30:23]}};

assign tmp_fu_408_p3 = r_V_fu_396_p2[32'd24];

assign ush_fu_376_p3 = ((isNeg_fu_358_p3[0:0] === 1'b1) ? sext_ln1311_fu_372_p1 : add_ln339_fu_352_p2);

assign zext_ln101_1_fu_256_p1 = shl_ln8_fu_248_p3;

assign zext_ln101_2_fu_268_p1 = shl_ln101_2_fu_260_p3;

assign zext_ln101_fu_303_p1 = $unsigned(sext_ln101_fu_299_p1);

assign zext_ln1287_fu_392_p1 = $unsigned(sext_ln1311_3_fu_384_p1);

assign zext_ln339_fu_348_p1 = tmp_V_fu_320_p4;

assign zext_ln662_fu_416_p1 = tmp_fu_408_p3;

assign zext_ln682_fu_344_p1 = mantissa_V_fu_334_p4;

assign zext_ln97_1_fu_184_p1 = shl_ln_fu_176_p3;

assign zext_ln97_2_fu_196_p1 = shl_ln97_2_fu_188_p3;

assign zext_ln97_fu_231_p1 = $unsigned(sext_ln97_fu_227_p1);

always @ (posedge ap_clk) begin
    sub_ln97_reg_462[1:0] <= 2'b00;
    sub_ln101_reg_483[0] <= 1'b0;
end

endmodule //MaxPooBackPropagatio_1
