// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module MatrixBackPropagatio (
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
        output_matrix_q0,
        lr
);

parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_state10 = 11'd512;
parameter    ap_ST_fsm_state11 = 11'd1024;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] input_matrix_address0;
output   input_matrix_ce0;
input  [31:0] input_matrix_q0;
output  [3:0] output_matrix_address0;
output   output_matrix_ce0;
output   output_matrix_we0;
output  [31:0] output_matrix_d0;
input  [31:0] output_matrix_q0;
input  [31:0] lr;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg input_matrix_ce0;
reg output_matrix_ce0;
reg output_matrix_we0;

(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [1:0] i_fu_105_p2;
reg   [1:0] i_reg_168;
wire    ap_CS_fsm_state2;
wire   [4:0] sub_ln125_fu_123_p2;
reg   [4:0] sub_ln125_reg_173;
wire   [0:0] icmp_ln123_fu_99_p2;
wire   [1:0] j_fu_139_p2;
reg   [1:0] j_reg_181;
wire    ap_CS_fsm_state3;
reg   [3:0] output_matrix_addr_reg_186;
wire   [0:0] icmp_ln124_fu_133_p2;
reg   [31:0] input_matrix_load_reg_196;
wire    ap_CS_fsm_state4;
wire   [31:0] grp_fu_91_p2;
reg   [31:0] tmp_reg_201;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
reg   [1:0] i_0_reg_63;
reg   [1:0] j_0_reg_74;
wire    ap_CS_fsm_state11;
wire   [63:0] zext_ln125_fu_154_p1;
wire   [31:0] grp_fu_85_p2;
wire    ap_CS_fsm_state5;
wire   [3:0] shl_ln_fu_111_p3;
wire   [4:0] zext_ln125_4_fu_119_p1;
wire   [4:0] i_0_cast1_fu_95_p1;
wire   [4:0] j_0_cast_fu_129_p1;
wire   [4:0] add_ln125_fu_145_p2;
wire  signed [31:0] sext_ln125_fu_150_p1;
reg   [10:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 11'd1;
end

forw_back_fsub_32mb6 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
forw_back_fsub_32mb6_U79(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(output_matrix_q0),
    .din1(tmp_reg_201),
    .ce(1'b1),
    .dout(grp_fu_85_p2)
);

forw_back_fmul_32cud #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
forw_back_fmul_32cud_U80(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(input_matrix_load_reg_196),
    .din1(lr),
    .ce(1'b1),
    .dout(grp_fu_91_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln124_fu_133_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_0_reg_63 <= i_reg_168;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_reg_63 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln123_fu_99_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_0_reg_74 <= 2'd0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        j_0_reg_74 <= j_reg_181;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_168 <= i_fu_105_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        input_matrix_load_reg_196 <= input_matrix_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_reg_181 <= j_fu_139_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln124_fu_133_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        output_matrix_addr_reg_186 <= zext_ln125_fu_154_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln123_fu_99_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        sub_ln125_reg_173 <= sub_ln125_fu_123_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_reg_201 <= grp_fu_91_p2;
    end
end

always @ (*) begin
    if ((((icmp_ln123_fu_99_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln123_fu_99_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state11))) begin
        output_matrix_ce0 = 1'b1;
    end else begin
        output_matrix_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
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
            if (((icmp_ln123_fu_99_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln124_fu_133_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln125_fu_145_p2 = (sub_ln125_reg_173 + j_0_cast_fu_129_p1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign i_0_cast1_fu_95_p1 = i_0_reg_63;

assign i_fu_105_p2 = (i_0_reg_63 + 2'd1);

assign icmp_ln123_fu_99_p2 = ((i_0_reg_63 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln124_fu_133_p2 = ((j_0_reg_74 == 2'd3) ? 1'b1 : 1'b0);

assign input_matrix_address0 = zext_ln125_fu_154_p1;

assign j_0_cast_fu_129_p1 = j_0_reg_74;

assign j_fu_139_p2 = (j_0_reg_74 + 2'd1);

assign output_matrix_address0 = output_matrix_addr_reg_186;

assign output_matrix_d0 = grp_fu_85_p2;

assign sext_ln125_fu_150_p1 = $signed(add_ln125_fu_145_p2);

assign shl_ln_fu_111_p3 = {{i_0_reg_63}, {2'd0}};

assign sub_ln125_fu_123_p2 = (zext_ln125_4_fu_119_p1 - i_0_cast1_fu_95_p1);

assign zext_ln125_4_fu_119_p1 = shl_ln_fu_111_p3;

assign zext_ln125_fu_154_p1 = $unsigned(sext_ln125_fu_150_p1);

endmodule //MatrixBackPropagatio
