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
        output_matrix_d0,
        output_matrix_address1,
        output_matrix_ce1,
        output_matrix_we1,
        output_matrix_d1
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state4 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] input_matrix_address0;
output   input_matrix_ce0;
input  [31:0] input_matrix_q0;
output  [9:0] output_matrix_address0;
output   output_matrix_ce0;
output   output_matrix_we0;
output  [31:0] output_matrix_d0;
output  [9:0] output_matrix_address1;
output   output_matrix_ce1;
output   output_matrix_we1;
output  [31:0] output_matrix_d1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg input_matrix_ce0;
reg output_matrix_ce0;
reg output_matrix_we0;
reg output_matrix_ce1;
reg output_matrix_we1;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [9:0] indvar_flatten_reg_102;
reg   [4:0] i_0_reg_113;
reg   [4:0] j_0_reg_124;
wire   [0:0] icmp_ln89_fu_187_p2;
reg   [0:0] icmp_ln89_reg_421;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [9:0] add_ln89_fu_193_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [4:0] select_ln92_3_fu_271_p3;
reg   [4:0] select_ln92_3_reg_430;
wire   [0:0] and_ln91_2_fu_351_p2;
reg   [0:0] and_ln91_2_reg_435;
wire   [10:0] add_ln92_3_fu_405_p2;
reg   [10:0] add_ln92_3_reg_444;
wire   [4:0] j_fu_411_p2;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
reg   [4:0] ap_phi_mux_i_0_phi_fu_117_p4;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln94_fu_367_p1;
wire   [63:0] zext_ln92_3_fu_400_p1;
wire   [63:0] zext_ln92_fu_417_p1;
wire   [9:0] shl_ln_fu_135_p3;
wire   [5:0] shl_ln94_2_fu_147_p3;
wire   [10:0] zext_ln94_3_fu_143_p1;
wire   [10:0] zext_ln94_4_fu_155_p1;
wire   [3:0] tmp_fu_171_p4;
wire   [0:0] icmp_ln90_fu_205_p2;
wire   [4:0] i_fu_199_p2;
wire   [9:0] shl_ln94_mid1_fu_219_p3;
wire   [5:0] shl_ln94_2_mid1_fu_231_p3;
wire   [10:0] zext_ln94_5_fu_227_p1;
wire   [10:0] zext_ln94_6_fu_239_p1;
wire   [10:0] sub_ln94_2_fu_243_p2;
wire   [10:0] sub_ln94_fu_159_p2;
wire   [0:0] icmp_ln91_6_fu_257_p2;
wire   [0:0] icmp_ln91_1_fu_165_p2;
wire   [4:0] mul_ln92_fu_283_p0;
wire   [3:0] tmp_3_fu_289_p4;
wire   [0:0] icmp_ln91_7_fu_299_p2;
wire   [0:0] icmp_ln91_fu_181_p2;
wire   [4:0] select_ln92_fu_211_p3;
wire   [3:0] tmp_4_fu_317_p4;
wire   [0:0] icmp_ln91_8_fu_327_p2;
wire   [0:0] select_ln92_4_fu_305_p3;
wire   [0:0] icmp_ln91_3_fu_333_p2;
wire   [0:0] select_ln92_2_fu_263_p3;
wire   [0:0] and_ln91_3_fu_345_p2;
wire   [0:0] and_ln91_fu_339_p2;
wire   [10:0] select_ln92_1_fu_249_p3;
wire   [10:0] zext_ln92_4_fu_313_p1;
wire   [10:0] add_ln94_fu_357_p2;
wire  signed [31:0] sext_ln94_fu_363_p1;
wire   [6:0] zext_ln90_fu_372_p1;
wire   [6:0] add_ln92_fu_376_p2;
wire   [6:0] select_ln92_5_fu_382_p3;
wire  signed [9:0] sext_ln92_3_fu_390_p1;
wire   [9:0] mul_ln92_fu_283_p2;
wire   [9:0] add_ln92_2_fu_394_p2;
wire    ap_CS_fsm_state4;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [9:0] mul_ln92_fu_283_p00;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln89_reg_421 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_0_reg_113 <= select_ln92_3_reg_430;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_113 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln89_fu_187_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_reg_102 <= add_ln89_fu_193_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_102 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln89_fu_187_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_0_reg_124 <= j_fu_411_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        j_0_reg_124 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'd1 == and_ln91_2_fu_351_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln89_fu_187_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln92_3_reg_444 <= add_ln92_3_fu_405_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln89_fu_187_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln91_2_reg_435 <= and_ln91_2_fu_351_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln89_reg_421 <= icmp_ln89_fu_187_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln89_fu_187_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln92_3_reg_430 <= select_ln92_3_fu_271_p3;
    end
end

always @ (*) begin
    if ((icmp_ln89_fu_187_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln89_reg_421 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_i_0_phi_fu_117_p4 = select_ln92_3_reg_430;
    end else begin
        ap_phi_mux_i_0_phi_fu_117_p4 = i_0_reg_113;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_matrix_ce0 = 1'b1;
    end else begin
        input_matrix_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_matrix_ce0 = 1'b1;
    end else begin
        output_matrix_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_matrix_ce1 = 1'b1;
    end else begin
        output_matrix_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln91_2_fu_351_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln89_fu_187_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_matrix_we0 = 1'b1;
    end else begin
        output_matrix_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'd1 == and_ln91_2_reg_435) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_matrix_we1 = 1'b1;
    end else begin
        output_matrix_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln89_fu_187_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln89_fu_187_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln89_fu_193_p2 = (indvar_flatten_reg_102 + 10'd1);

assign add_ln92_2_fu_394_p2 = ($signed(sext_ln92_3_fu_390_p1) + $signed(mul_ln92_fu_283_p2));

assign add_ln92_3_fu_405_p2 = (zext_ln92_4_fu_313_p1 + select_ln92_1_fu_249_p3);

assign add_ln92_fu_376_p2 = ($signed(zext_ln90_fu_372_p1) + $signed(7'd74));

assign add_ln94_fu_357_p2 = (select_ln92_1_fu_249_p3 + zext_ln92_4_fu_313_p1);

assign and_ln91_2_fu_351_p2 = (and_ln91_fu_339_p2 & and_ln91_3_fu_345_p2);

assign and_ln91_3_fu_345_p2 = (select_ln92_2_fu_263_p3 & icmp_ln91_3_fu_333_p2);

assign and_ln91_fu_339_p2 = (select_ln92_4_fu_305_p3 & icmp_ln91_8_fu_327_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign i_fu_199_p2 = (ap_phi_mux_i_0_phi_fu_117_p4 + 5'd1);

assign icmp_ln89_fu_187_p2 = ((indvar_flatten_reg_102 == 10'd900) ? 1'b1 : 1'b0);

assign icmp_ln90_fu_205_p2 = ((j_0_reg_124 == 5'd30) ? 1'b1 : 1'b0);

assign icmp_ln91_1_fu_165_p2 = ((ap_phi_mux_i_0_phi_fu_117_p4 < 5'd28) ? 1'b1 : 1'b0);

assign icmp_ln91_3_fu_333_p2 = ((select_ln92_fu_211_p3 < 5'd28) ? 1'b1 : 1'b0);

assign icmp_ln91_6_fu_257_p2 = ((i_fu_199_p2 < 5'd28) ? 1'b1 : 1'b0);

assign icmp_ln91_7_fu_299_p2 = ((tmp_3_fu_289_p4 != 4'd0) ? 1'b1 : 1'b0);

assign icmp_ln91_8_fu_327_p2 = ((tmp_4_fu_317_p4 != 4'd0) ? 1'b1 : 1'b0);

assign icmp_ln91_fu_181_p2 = ((tmp_fu_171_p4 != 4'd0) ? 1'b1 : 1'b0);

assign input_matrix_address0 = zext_ln92_3_fu_400_p1;

assign j_fu_411_p2 = (select_ln92_fu_211_p3 + 5'd1);

assign mul_ln92_fu_283_p0 = mul_ln92_fu_283_p00;

assign mul_ln92_fu_283_p00 = select_ln92_3_fu_271_p3;

assign mul_ln92_fu_283_p2 = (mul_ln92_fu_283_p0 * $signed('h1A));

assign output_matrix_address0 = zext_ln94_fu_367_p1;

assign output_matrix_address1 = zext_ln92_fu_417_p1;

assign output_matrix_d0 = 32'd0;

assign output_matrix_d1 = input_matrix_q0;

assign select_ln92_1_fu_249_p3 = ((icmp_ln90_fu_205_p2[0:0] === 1'b1) ? sub_ln94_2_fu_243_p2 : sub_ln94_fu_159_p2);

assign select_ln92_2_fu_263_p3 = ((icmp_ln90_fu_205_p2[0:0] === 1'b1) ? icmp_ln91_6_fu_257_p2 : icmp_ln91_1_fu_165_p2);

assign select_ln92_3_fu_271_p3 = ((icmp_ln90_fu_205_p2[0:0] === 1'b1) ? i_fu_199_p2 : ap_phi_mux_i_0_phi_fu_117_p4);

assign select_ln92_4_fu_305_p3 = ((icmp_ln90_fu_205_p2[0:0] === 1'b1) ? icmp_ln91_7_fu_299_p2 : icmp_ln91_fu_181_p2);

assign select_ln92_5_fu_382_p3 = ((icmp_ln90_fu_205_p2[0:0] === 1'b1) ? 7'd74 : add_ln92_fu_376_p2);

assign select_ln92_fu_211_p3 = ((icmp_ln90_fu_205_p2[0:0] === 1'b1) ? 5'd0 : j_0_reg_124);

assign sext_ln92_3_fu_390_p1 = $signed(select_ln92_5_fu_382_p3);

assign sext_ln94_fu_363_p1 = $signed(add_ln94_fu_357_p2);

assign shl_ln94_2_fu_147_p3 = {{ap_phi_mux_i_0_phi_fu_117_p4}, {1'd0}};

assign shl_ln94_2_mid1_fu_231_p3 = {{i_fu_199_p2}, {1'd0}};

assign shl_ln94_mid1_fu_219_p3 = {{i_fu_199_p2}, {5'd0}};

assign shl_ln_fu_135_p3 = {{ap_phi_mux_i_0_phi_fu_117_p4}, {5'd0}};

assign sub_ln94_2_fu_243_p2 = (zext_ln94_5_fu_227_p1 - zext_ln94_6_fu_239_p1);

assign sub_ln94_fu_159_p2 = (zext_ln94_3_fu_143_p1 - zext_ln94_4_fu_155_p1);

assign tmp_3_fu_289_p4 = {{i_fu_199_p2[4:1]}};

assign tmp_4_fu_317_p4 = {{select_ln92_fu_211_p3[4:1]}};

assign tmp_fu_171_p4 = {{ap_phi_mux_i_0_phi_fu_117_p4[4:1]}};

assign zext_ln90_fu_372_p1 = j_0_reg_124;

assign zext_ln92_3_fu_400_p1 = add_ln92_2_fu_394_p2;

assign zext_ln92_4_fu_313_p1 = select_ln92_fu_211_p3;

assign zext_ln92_fu_417_p1 = add_ln92_3_reg_444;

assign zext_ln94_3_fu_143_p1 = shl_ln_fu_135_p3;

assign zext_ln94_4_fu_155_p1 = shl_ln94_2_fu_147_p3;

assign zext_ln94_5_fu_227_p1 = shl_ln94_mid1_fu_219_p3;

assign zext_ln94_6_fu_239_p1 = shl_ln94_2_mid1_fu_231_p3;

assign zext_ln94_fu_367_p1 = $unsigned(sext_ln94_fu_363_p1);

endmodule //Padding
