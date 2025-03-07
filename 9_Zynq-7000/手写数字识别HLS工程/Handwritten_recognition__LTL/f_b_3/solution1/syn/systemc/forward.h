// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _forward_HH_
#define _forward_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Conv2d_7.h"
#include "Conv2d_6.h"
#include "Conv2d_5.h"
#include "forw_back_fadd_32bkb.h"
#include "forw_back_fmul_32cud.h"
#include "forw_back_fptrunceOg.h"
#include "forw_back_fpext_3fYi.h"
#include "forw_back_fcmp_32g8j.h"
#include "forw_back_dadd_64hbi.h"
#include "forw_back_dmul_64ibs.h"
#include "forw_back_ddiv_64jbC.h"
#include "forw_back_dexp_64kbM.h"
#include "forward_conv_out_3.h"
#include "forward_fc_out_3_0.h"

namespace ap_rtl {

struct forward : public sc_module {
    // Port declarations 66
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<10> > mnist_data_address0;
    sc_out< sc_logic > mnist_data_ce0;
    sc_in< sc_lv<32> > mnist_data_q0;
    sc_out< sc_lv<4> > conv_kernel_1_address0;
    sc_out< sc_logic > conv_kernel_1_ce0;
    sc_in< sc_lv<32> > conv_kernel_1_q0;
    sc_out< sc_lv<10> > conv_out_1_address0;
    sc_out< sc_logic > conv_out_1_ce0;
    sc_out< sc_logic > conv_out_1_we0;
    sc_out< sc_lv<32> > conv_out_1_d0;
    sc_in< sc_lv<32> > conv_out_1_q0;
    sc_out< sc_lv<4> > conv_kernel_2_address0;
    sc_out< sc_logic > conv_kernel_2_ce0;
    sc_in< sc_lv<32> > conv_kernel_2_q0;
    sc_out< sc_lv<10> > conv_out_2_address0;
    sc_out< sc_logic > conv_out_2_ce0;
    sc_out< sc_logic > conv_out_2_we0;
    sc_out< sc_lv<32> > conv_out_2_d0;
    sc_in< sc_lv<32> > conv_out_2_q0;
    sc_out< sc_lv<4> > conv_kernel_3_address0;
    sc_out< sc_logic > conv_kernel_3_ce0;
    sc_in< sc_lv<32> > conv_kernel_3_q0;
    sc_out< sc_lv<10> > fc_in_1_0_address0;
    sc_out< sc_logic > fc_in_1_0_ce0;
    sc_out< sc_logic > fc_in_1_0_we0;
    sc_out< sc_lv<32> > fc_in_1_0_d0;
    sc_in< sc_lv<32> > fc_in_1_0_q0;
    sc_out< sc_lv<8> > fc_out_1_0_address0;
    sc_out< sc_logic > fc_out_1_0_ce0;
    sc_out< sc_logic > fc_out_1_0_we0;
    sc_out< sc_lv<32> > fc_out_1_0_d0;
    sc_in< sc_lv<32> > fc_out_1_0_q0;
    sc_out< sc_lv<17> > fc_hidden_layer1_address0;
    sc_out< sc_logic > fc_hidden_layer1_ce0;
    sc_in< sc_lv<32> > fc_hidden_layer1_q0;
    sc_out< sc_lv<8> > fc_in_2_relu1_0_address0;
    sc_out< sc_logic > fc_in_2_relu1_0_ce0;
    sc_out< sc_logic > fc_in_2_relu1_0_we0;
    sc_out< sc_lv<32> > fc_in_2_relu1_0_d0;
    sc_in< sc_lv<32> > fc_in_2_relu1_0_q0;
    sc_out< sc_lv<6> > fc_out_2_0_address0;
    sc_out< sc_logic > fc_out_2_0_ce0;
    sc_out< sc_logic > fc_out_2_0_we0;
    sc_out< sc_lv<32> > fc_out_2_0_d0;
    sc_in< sc_lv<32> > fc_out_2_0_q0;
    sc_out< sc_lv<13> > fc_hidden_layer2_address0;
    sc_out< sc_logic > fc_hidden_layer2_ce0;
    sc_in< sc_lv<32> > fc_hidden_layer2_q0;
    sc_out< sc_lv<6> > fc_in_3_relu2_0_address0;
    sc_out< sc_logic > fc_in_3_relu2_0_ce0;
    sc_out< sc_logic > fc_in_3_relu2_0_we0;
    sc_out< sc_lv<32> > fc_in_3_relu2_0_d0;
    sc_in< sc_lv<32> > fc_in_3_relu2_0_q0;
    sc_out< sc_lv<9> > fc_hidden_layer3_address0;
    sc_out< sc_logic > fc_hidden_layer3_ce0;
    sc_in< sc_lv<32> > fc_hidden_layer3_q0;
    sc_out< sc_lv<4> > probability_result_address0;
    sc_out< sc_logic > probability_result_ce0;
    sc_out< sc_logic > probability_result_we0;
    sc_out< sc_lv<32> > probability_result_d0;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_lv<64> > ap_var_for_const2;
    sc_signal< sc_lv<5> > ap_var_for_const1;
    sc_signal< sc_lv<64> > ap_var_for_const3;


    // Module declarations
    forward(sc_module_name name);
    SC_HAS_PROCESS(forward);

    ~forward();

    sc_trace_file* mVcdFile;

    forward_conv_out_3* conv_out_3_U;
    forward_fc_out_3_0* fc_out_3_0_U;
    Conv2d_7* grp_Conv2d_7_fu_530;
    Conv2d_6* grp_Conv2d_6_fu_540;
    Conv2d_5* grp_Conv2d_5_fu_550;
    forw_back_fadd_32bkb<1,4,32,32,32>* forw_back_fadd_32bkb_U20;
    forw_back_fmul_32cud<1,3,32,32,32>* forw_back_fmul_32cud_U21;
    forw_back_fptrunceOg<1,2,64,32>* forw_back_fptrunceOg_U22;
    forw_back_fpext_3fYi<1,2,32,64>* forw_back_fpext_3fYi_U23;
    forw_back_fcmp_32g8j<1,2,32,32,1>* forw_back_fcmp_32g8j_U24;
    forw_back_dadd_64hbi<1,5,64,64,64>* forw_back_dadd_64hbi_U25;
    forw_back_dmul_64ibs<1,5,64,64,64>* forw_back_dmul_64ibs_U26;
    forw_back_ddiv_64jbC<1,22,64,64,64>* forw_back_ddiv_64jbC_U27;
    forw_back_dexp_64kbM<1,13,64,64,64>* forw_back_dexp_64kbM_U28;
    sc_signal< sc_lv<125> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<10> > conv_out_3_address0;
    sc_signal< sc_logic > conv_out_3_ce0;
    sc_signal< sc_logic > conv_out_3_we0;
    sc_signal< sc_lv<32> > conv_out_3_q0;
    sc_signal< sc_lv<4> > fc_out_3_0_address0;
    sc_signal< sc_logic > fc_out_3_0_ce0;
    sc_signal< sc_logic > fc_out_3_0_we0;
    sc_signal< sc_lv<32> > fc_out_3_0_q0;
    sc_signal< sc_lv<32> > grp_fu_567_p2;
    sc_signal< sc_lv<32> > reg_606;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_logic > ap_CS_fsm_state36;
    sc_signal< sc_logic > ap_CS_fsm_state57;
    sc_signal< sc_lv<32> > grp_fu_560_p2;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_logic > ap_CS_fsm_state40;
    sc_signal< sc_logic > ap_CS_fsm_state61;
    sc_signal< sc_lv<64> > grp_fu_575_p1;
    sc_signal< sc_lv<64> > reg_618;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_logic > ap_CS_fsm_state43;
    sc_signal< sc_logic > ap_CS_fsm_state64;
    sc_signal< sc_logic > ap_CS_fsm_state77;
    sc_signal< sc_logic > ap_CS_fsm_state85;
    sc_signal< sc_lv<64> > grp_fu_592_p2;
    sc_signal< sc_lv<64> > reg_626;
    sc_signal< sc_logic > ap_CS_fsm_state27;
    sc_signal< sc_logic > ap_CS_fsm_state48;
    sc_signal< sc_lv<32> > grp_fu_571_p1;
    sc_signal< sc_lv<32> > reg_631;
    sc_signal< sc_logic > ap_CS_fsm_state29;
    sc_signal< sc_logic > ap_CS_fsm_state50;
    sc_signal< sc_logic > ap_CS_fsm_state84;
    sc_signal< sc_logic > ap_CS_fsm_state63;
    sc_signal< sc_logic > ap_CS_fsm_state87;
    sc_signal< sc_lv<64> > grp_fu_601_p2;
    sc_signal< sc_lv<64> > reg_642;
    sc_signal< sc_logic > ap_CS_fsm_state101;
    sc_signal< sc_lv<5> > i_1_fu_654_p2;
    sc_signal< sc_lv<5> > i_1_reg_1155;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<11> > sub_ln43_fu_684_p2;
    sc_signal< sc_lv<11> > sub_ln43_reg_1160;
    sc_signal< sc_lv<1> > icmp_ln41_fu_648_p2;
    sc_signal< sc_lv<5> > j_7_fu_700_p2;
    sc_signal< sc_lv<5> > j_7_reg_1168;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<64> > zext_ln43_fu_715_p1;
    sc_signal< sc_lv<64> > zext_ln43_reg_1173;
    sc_signal< sc_lv<1> > icmp_ln42_fu_694_p2;
    sc_signal< sc_lv<17> > j_0_i3_cast8_fu_720_p1;
    sc_signal< sc_lv<17> > j_0_i3_cast8_reg_1183;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<8> > j_3_fu_730_p2;
    sc_signal< sc_lv<8> > j_3_reg_1191;
    sc_signal< sc_lv<8> > fc_out_1_0_addr_reg_1196;
    sc_signal< sc_lv<1> > icmp_ln47_fu_724_p2;
    sc_signal< sc_lv<10> > i_2_fu_747_p2;
    sc_signal< sc_lv<10> > i_2_reg_1204;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<1> > icmp_ln49_fu_741_p2;
    sc_signal< sc_lv<17> > add_ln50_4_fu_758_p2;
    sc_signal< sc_lv<17> > add_ln50_4_reg_1214;
    sc_signal< sc_lv<32> > fc_in_1_0_load_reg_1224;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<32> > fc_hidden_layer1_loa_reg_1229;
    sc_signal< sc_lv<8> > j_8_fu_780_p2;
    sc_signal< sc_lv<8> > j_8_reg_1237;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_lv<64> > zext_ln56_fu_786_p1;
    sc_signal< sc_lv<64> > zext_ln56_reg_1242;
    sc_signal< sc_lv<1> > icmp_ln55_fu_774_p2;
    sc_signal< sc_lv<32> > fc_out_1_0_load_reg_1252;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_lv<13> > j_0_i15_cast6_fu_882_p1;
    sc_signal< sc_lv<13> > j_0_i15_cast6_reg_1260;
    sc_signal< sc_logic > ap_CS_fsm_state31;
    sc_signal< sc_lv<6> > j_9_fu_892_p2;
    sc_signal< sc_lv<6> > j_9_reg_1268;
    sc_signal< sc_lv<6> > fc_out_2_0_addr_reg_1273;
    sc_signal< sc_lv<1> > icmp_ln47_1_fu_886_p2;
    sc_signal< sc_lv<8> > i_3_fu_909_p2;
    sc_signal< sc_lv<8> > i_3_reg_1281;
    sc_signal< sc_logic > ap_CS_fsm_state32;
    sc_signal< sc_lv<1> > icmp_ln49_1_fu_903_p2;
    sc_signal< sc_lv<13> > add_ln50_5_fu_920_p2;
    sc_signal< sc_lv<13> > add_ln50_5_reg_1291;
    sc_signal< sc_lv<32> > fc_in_2_relu1_0_load_reg_1301;
    sc_signal< sc_logic > ap_CS_fsm_state33;
    sc_signal< sc_lv<32> > fc_hidden_layer2_loa_reg_1306;
    sc_signal< sc_lv<6> > j_10_fu_942_p2;
    sc_signal< sc_lv<6> > j_10_reg_1314;
    sc_signal< sc_logic > ap_CS_fsm_state41;
    sc_signal< sc_lv<64> > zext_ln56_1_fu_948_p1;
    sc_signal< sc_lv<64> > zext_ln56_1_reg_1319;
    sc_signal< sc_lv<1> > icmp_ln55_1_fu_936_p2;
    sc_signal< sc_lv<32> > fc_out_2_0_load_reg_1329;
    sc_signal< sc_logic > ap_CS_fsm_state42;
    sc_signal< sc_lv<7> > j_0_i45_cast4_fu_1044_p1;
    sc_signal< sc_lv<7> > j_0_i45_cast4_reg_1337;
    sc_signal< sc_logic > ap_CS_fsm_state52;
    sc_signal< sc_lv<4> > j_11_fu_1054_p2;
    sc_signal< sc_lv<4> > j_11_reg_1345;
    sc_signal< sc_lv<4> > fc_out_3_0_addr_2_reg_1350;
    sc_signal< sc_lv<1> > icmp_ln47_2_fu_1048_p2;
    sc_signal< sc_lv<6> > i_4_fu_1071_p2;
    sc_signal< sc_lv<6> > i_4_reg_1358;
    sc_signal< sc_logic > ap_CS_fsm_state53;
    sc_signal< sc_lv<1> > icmp_ln49_2_fu_1065_p2;
    sc_signal< sc_lv<32> > fc_in_3_relu2_0_load_reg_1373;
    sc_signal< sc_logic > ap_CS_fsm_state54;
    sc_signal< sc_lv<32> > fc_hidden_layer3_loa_reg_1378;
    sc_signal< sc_lv<4> > i_fu_1124_p2;
    sc_signal< sc_lv<4> > i_reg_1386;
    sc_signal< sc_logic > ap_CS_fsm_state62;
    sc_signal< sc_lv<1> > icmp_ln118_fu_1118_p2;
    sc_signal< sc_lv<64> > grp_fu_588_p2;
    sc_signal< sc_lv<64> > tmp_4_reg_1396;
    sc_signal< sc_logic > ap_CS_fsm_state82;
    sc_signal< sc_lv<4> > j_fu_1141_p2;
    sc_signal< sc_lv<4> > j_reg_1404;
    sc_signal< sc_logic > ap_CS_fsm_state86;
    sc_signal< sc_lv<64> > zext_ln122_fu_1147_p1;
    sc_signal< sc_lv<64> > zext_ln122_reg_1409;
    sc_signal< sc_lv<1> > icmp_ln121_fu_1135_p2;
    sc_signal< sc_lv<64> > tmp_6_reg_1419;
    sc_signal< sc_logic > ap_CS_fsm_state88;
    sc_signal< sc_lv<64> > grp_fu_597_p2;
    sc_signal< sc_lv<64> > tmp_8_reg_1424;
    sc_signal< sc_logic > ap_CS_fsm_state123;
    sc_signal< sc_logic > grp_Conv2d_7_fu_530_ap_start;
    sc_signal< sc_logic > grp_Conv2d_7_fu_530_ap_done;
    sc_signal< sc_logic > grp_Conv2d_7_fu_530_ap_idle;
    sc_signal< sc_logic > grp_Conv2d_7_fu_530_ap_ready;
    sc_signal< sc_lv<10> > grp_Conv2d_7_fu_530_input_matrix_address0;
    sc_signal< sc_logic > grp_Conv2d_7_fu_530_input_matrix_ce0;
    sc_signal< sc_lv<4> > grp_Conv2d_7_fu_530_kernel_address0;
    sc_signal< sc_logic > grp_Conv2d_7_fu_530_kernel_ce0;
    sc_signal< sc_lv<10> > grp_Conv2d_7_fu_530_out_matrix_address0;
    sc_signal< sc_logic > grp_Conv2d_7_fu_530_out_matrix_ce0;
    sc_signal< sc_logic > grp_Conv2d_7_fu_530_out_matrix_we0;
    sc_signal< sc_lv<32> > grp_Conv2d_7_fu_530_out_matrix_d0;
    sc_signal< sc_logic > grp_Conv2d_6_fu_540_ap_start;
    sc_signal< sc_logic > grp_Conv2d_6_fu_540_ap_done;
    sc_signal< sc_logic > grp_Conv2d_6_fu_540_ap_idle;
    sc_signal< sc_logic > grp_Conv2d_6_fu_540_ap_ready;
    sc_signal< sc_lv<10> > grp_Conv2d_6_fu_540_input_matrix_address0;
    sc_signal< sc_logic > grp_Conv2d_6_fu_540_input_matrix_ce0;
    sc_signal< sc_lv<4> > grp_Conv2d_6_fu_540_kernel_address0;
    sc_signal< sc_logic > grp_Conv2d_6_fu_540_kernel_ce0;
    sc_signal< sc_lv<10> > grp_Conv2d_6_fu_540_out_matrix_address0;
    sc_signal< sc_logic > grp_Conv2d_6_fu_540_out_matrix_ce0;
    sc_signal< sc_logic > grp_Conv2d_6_fu_540_out_matrix_we0;
    sc_signal< sc_lv<32> > grp_Conv2d_6_fu_540_out_matrix_d0;
    sc_signal< sc_logic > grp_Conv2d_5_fu_550_ap_start;
    sc_signal< sc_logic > grp_Conv2d_5_fu_550_ap_done;
    sc_signal< sc_logic > grp_Conv2d_5_fu_550_ap_idle;
    sc_signal< sc_logic > grp_Conv2d_5_fu_550_ap_ready;
    sc_signal< sc_lv<10> > grp_Conv2d_5_fu_550_input_matrix_address0;
    sc_signal< sc_logic > grp_Conv2d_5_fu_550_input_matrix_ce0;
    sc_signal< sc_lv<4> > grp_Conv2d_5_fu_550_kernel_address0;
    sc_signal< sc_logic > grp_Conv2d_5_fu_550_kernel_ce0;
    sc_signal< sc_lv<10> > grp_Conv2d_5_fu_550_out_matrix_address0;
    sc_signal< sc_logic > grp_Conv2d_5_fu_550_out_matrix_ce0;
    sc_signal< sc_logic > grp_Conv2d_5_fu_550_out_matrix_we0;
    sc_signal< sc_lv<32> > grp_Conv2d_5_fu_550_out_matrix_d0;
    sc_signal< sc_lv<5> > i_0_i_reg_325;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<5> > j_0_i_reg_336;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<8> > j_0_i3_reg_347;
    sc_signal< sc_lv<32> > storemerge_reg_358;
    sc_signal< sc_lv<10> > i_0_i5_reg_371;
    sc_signal< sc_lv<17> > phi_mul_reg_382;
    sc_signal< sc_lv<8> > j_0_i8_reg_393;
    sc_signal< sc_logic > ap_CS_fsm_state30;
    sc_signal< sc_lv<6> > j_0_i15_reg_404;
    sc_signal< sc_lv<32> > storemerge211_reg_415;
    sc_signal< sc_lv<8> > i_0_i19_reg_428;
    sc_signal< sc_lv<13> > phi_mul209_reg_439;
    sc_signal< sc_lv<6> > j_0_i33_reg_450;
    sc_signal< sc_logic > ap_CS_fsm_state51;
    sc_signal< sc_lv<4> > j_0_i45_reg_461;
    sc_signal< sc_lv<32> > storemerge212_reg_472;
    sc_signal< sc_lv<6> > i_0_i49_reg_485;
    sc_signal< sc_lv<4> > i_0_reg_496;
    sc_signal< sc_lv<32> > ap_phi_mux_probability_sum_0_phi_fu_511_p4;
    sc_signal< sc_lv<32> > probability_sum_0_reg_507;
    sc_signal< sc_lv<4> > j_0_reg_519;
    sc_signal< sc_logic > ap_CS_fsm_state125;
    sc_signal< sc_logic > grp_Conv2d_7_fu_530_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > grp_Conv2d_6_fu_540_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > grp_Conv2d_5_fu_550_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<64> > zext_ln48_fu_736_p1;
    sc_signal< sc_lv<64> > zext_ln50_fu_753_p1;
    sc_signal< sc_lv<64> > zext_ln50_1_fu_769_p1;
    sc_signal< sc_lv<64> > zext_ln48_1_fu_898_p1;
    sc_signal< sc_lv<64> > zext_ln50_2_fu_915_p1;
    sc_signal< sc_lv<64> > zext_ln50_3_fu_931_p1;
    sc_signal< sc_lv<64> > zext_ln48_2_fu_1060_p1;
    sc_signal< sc_lv<64> > zext_ln50_4_fu_1077_p1;
    sc_signal< sc_lv<64> > zext_ln50_5_fu_1113_p1;
    sc_signal< sc_lv<64> > zext_ln119_fu_1130_p1;
    sc_signal< sc_lv<32> > grp_fu_560_p0;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_logic > ap_CS_fsm_state37;
    sc_signal< sc_logic > ap_CS_fsm_state58;
    sc_signal< sc_lv<32> > grp_fu_567_p0;
    sc_signal< sc_lv<32> > grp_fu_567_p1;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state34;
    sc_signal< sc_logic > ap_CS_fsm_state55;
    sc_signal< sc_lv<64> > grp_fu_571_p0;
    sc_signal< sc_logic > ap_CS_fsm_state28;
    sc_signal< sc_logic > ap_CS_fsm_state49;
    sc_signal< sc_logic > ap_CS_fsm_state83;
    sc_signal< sc_logic > ap_CS_fsm_state124;
    sc_signal< sc_lv<32> > grp_fu_575_p0;
    sc_signal< sc_logic > ap_CS_fsm_state76;
    sc_signal< sc_lv<32> > grp_fu_583_p0;
    sc_signal< sc_logic > ap_CS_fsm_state78;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_logic > ap_CS_fsm_state44;
    sc_signal< sc_logic > ap_CS_fsm_state102;
    sc_signal< sc_lv<64> > grp_fu_601_p1;
    sc_signal< sc_logic > ap_CS_fsm_state65;
    sc_signal< sc_logic > ap_CS_fsm_state89;
    sc_signal< sc_lv<10> > shl_ln_fu_660_p3;
    sc_signal< sc_lv<8> > shl_ln43_1_fu_672_p3;
    sc_signal< sc_lv<11> > zext_ln43_1_fu_668_p1;
    sc_signal< sc_lv<11> > zext_ln43_2_fu_680_p1;
    sc_signal< sc_lv<11> > zext_ln42_fu_690_p1;
    sc_signal< sc_lv<11> > add_ln43_fu_706_p2;
    sc_signal< sc_lv<32> > sext_ln43_fu_711_p1;
    sc_signal< sc_lv<17> > add_ln50_fu_764_p2;
    sc_signal< sc_lv<32> > bitcast_ln26_fu_791_p1;
    sc_signal< sc_lv<32> > bitcast_ln26_1_fu_808_p1;
    sc_signal< sc_lv<8> > tmp_5_fu_794_p4;
    sc_signal< sc_lv<23> > trunc_ln26_fu_804_p1;
    sc_signal< sc_lv<1> > icmp_ln26_1_fu_832_p2;
    sc_signal< sc_lv<1> > icmp_ln26_fu_826_p2;
    sc_signal< sc_lv<8> > tmp_s_fu_812_p4;
    sc_signal< sc_lv<23> > trunc_ln26_1_fu_822_p1;
    sc_signal< sc_lv<1> > icmp_ln26_3_fu_850_p2;
    sc_signal< sc_lv<1> > icmp_ln26_2_fu_844_p2;
    sc_signal< sc_lv<1> > or_ln26_fu_838_p2;
    sc_signal< sc_lv<1> > or_ln26_1_fu_856_p2;
    sc_signal< sc_lv<1> > and_ln26_fu_862_p2;
    sc_signal< sc_lv<1> > grp_fu_583_p2;
    sc_signal< sc_lv<1> > and_ln26_1_fu_868_p2;
    sc_signal< sc_lv<13> > add_ln50_1_fu_926_p2;
    sc_signal< sc_lv<32> > bitcast_ln26_2_fu_953_p1;
    sc_signal< sc_lv<32> > bitcast_ln26_3_fu_970_p1;
    sc_signal< sc_lv<8> > tmp_11_fu_956_p4;
    sc_signal< sc_lv<23> > trunc_ln26_2_fu_966_p1;
    sc_signal< sc_lv<1> > icmp_ln26_5_fu_994_p2;
    sc_signal< sc_lv<1> > icmp_ln26_4_fu_988_p2;
    sc_signal< sc_lv<8> > tmp_12_fu_974_p4;
    sc_signal< sc_lv<23> > trunc_ln26_3_fu_984_p1;
    sc_signal< sc_lv<1> > icmp_ln26_7_fu_1012_p2;
    sc_signal< sc_lv<1> > icmp_ln26_6_fu_1006_p2;
    sc_signal< sc_lv<1> > or_ln26_2_fu_1000_p2;
    sc_signal< sc_lv<1> > or_ln26_3_fu_1018_p2;
    sc_signal< sc_lv<1> > and_ln26_2_fu_1024_p2;
    sc_signal< sc_lv<1> > and_ln26_3_fu_1030_p2;
    sc_signal< sc_lv<7> > shl_ln50_1_fu_1090_p3;
    sc_signal< sc_lv<7> > add_ln50_2_fu_1098_p2;
    sc_signal< sc_lv<9> > shl_ln1_fu_1082_p3;
    sc_signal< sc_lv<9> > zext_ln50_6_fu_1103_p1;
    sc_signal< sc_lv<9> > add_ln50_3_fu_1107_p2;
    sc_signal< sc_lv<125> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<125> ap_ST_fsm_state1;
    static const sc_lv<125> ap_ST_fsm_state2;
    static const sc_lv<125> ap_ST_fsm_state3;
    static const sc_lv<125> ap_ST_fsm_state4;
    static const sc_lv<125> ap_ST_fsm_state5;
    static const sc_lv<125> ap_ST_fsm_state6;
    static const sc_lv<125> ap_ST_fsm_state7;
    static const sc_lv<125> ap_ST_fsm_state8;
    static const sc_lv<125> ap_ST_fsm_state9;
    static const sc_lv<125> ap_ST_fsm_state10;
    static const sc_lv<125> ap_ST_fsm_state11;
    static const sc_lv<125> ap_ST_fsm_state12;
    static const sc_lv<125> ap_ST_fsm_state13;
    static const sc_lv<125> ap_ST_fsm_state14;
    static const sc_lv<125> ap_ST_fsm_state15;
    static const sc_lv<125> ap_ST_fsm_state16;
    static const sc_lv<125> ap_ST_fsm_state17;
    static const sc_lv<125> ap_ST_fsm_state18;
    static const sc_lv<125> ap_ST_fsm_state19;
    static const sc_lv<125> ap_ST_fsm_state20;
    static const sc_lv<125> ap_ST_fsm_state21;
    static const sc_lv<125> ap_ST_fsm_state22;
    static const sc_lv<125> ap_ST_fsm_state23;
    static const sc_lv<125> ap_ST_fsm_state24;
    static const sc_lv<125> ap_ST_fsm_state25;
    static const sc_lv<125> ap_ST_fsm_state26;
    static const sc_lv<125> ap_ST_fsm_state27;
    static const sc_lv<125> ap_ST_fsm_state28;
    static const sc_lv<125> ap_ST_fsm_state29;
    static const sc_lv<125> ap_ST_fsm_state30;
    static const sc_lv<125> ap_ST_fsm_state31;
    static const sc_lv<125> ap_ST_fsm_state32;
    static const sc_lv<125> ap_ST_fsm_state33;
    static const sc_lv<125> ap_ST_fsm_state34;
    static const sc_lv<125> ap_ST_fsm_state35;
    static const sc_lv<125> ap_ST_fsm_state36;
    static const sc_lv<125> ap_ST_fsm_state37;
    static const sc_lv<125> ap_ST_fsm_state38;
    static const sc_lv<125> ap_ST_fsm_state39;
    static const sc_lv<125> ap_ST_fsm_state40;
    static const sc_lv<125> ap_ST_fsm_state41;
    static const sc_lv<125> ap_ST_fsm_state42;
    static const sc_lv<125> ap_ST_fsm_state43;
    static const sc_lv<125> ap_ST_fsm_state44;
    static const sc_lv<125> ap_ST_fsm_state45;
    static const sc_lv<125> ap_ST_fsm_state46;
    static const sc_lv<125> ap_ST_fsm_state47;
    static const sc_lv<125> ap_ST_fsm_state48;
    static const sc_lv<125> ap_ST_fsm_state49;
    static const sc_lv<125> ap_ST_fsm_state50;
    static const sc_lv<125> ap_ST_fsm_state51;
    static const sc_lv<125> ap_ST_fsm_state52;
    static const sc_lv<125> ap_ST_fsm_state53;
    static const sc_lv<125> ap_ST_fsm_state54;
    static const sc_lv<125> ap_ST_fsm_state55;
    static const sc_lv<125> ap_ST_fsm_state56;
    static const sc_lv<125> ap_ST_fsm_state57;
    static const sc_lv<125> ap_ST_fsm_state58;
    static const sc_lv<125> ap_ST_fsm_state59;
    static const sc_lv<125> ap_ST_fsm_state60;
    static const sc_lv<125> ap_ST_fsm_state61;
    static const sc_lv<125> ap_ST_fsm_state62;
    static const sc_lv<125> ap_ST_fsm_state63;
    static const sc_lv<125> ap_ST_fsm_state64;
    static const sc_lv<125> ap_ST_fsm_state65;
    static const sc_lv<125> ap_ST_fsm_state66;
    static const sc_lv<125> ap_ST_fsm_state67;
    static const sc_lv<125> ap_ST_fsm_state68;
    static const sc_lv<125> ap_ST_fsm_state69;
    static const sc_lv<125> ap_ST_fsm_state70;
    static const sc_lv<125> ap_ST_fsm_state71;
    static const sc_lv<125> ap_ST_fsm_state72;
    static const sc_lv<125> ap_ST_fsm_state73;
    static const sc_lv<125> ap_ST_fsm_state74;
    static const sc_lv<125> ap_ST_fsm_state75;
    static const sc_lv<125> ap_ST_fsm_state76;
    static const sc_lv<125> ap_ST_fsm_state77;
    static const sc_lv<125> ap_ST_fsm_state78;
    static const sc_lv<125> ap_ST_fsm_state79;
    static const sc_lv<125> ap_ST_fsm_state80;
    static const sc_lv<125> ap_ST_fsm_state81;
    static const sc_lv<125> ap_ST_fsm_state82;
    static const sc_lv<125> ap_ST_fsm_state83;
    static const sc_lv<125> ap_ST_fsm_state84;
    static const sc_lv<125> ap_ST_fsm_state85;
    static const sc_lv<125> ap_ST_fsm_state86;
    static const sc_lv<125> ap_ST_fsm_state87;
    static const sc_lv<125> ap_ST_fsm_state88;
    static const sc_lv<125> ap_ST_fsm_state89;
    static const sc_lv<125> ap_ST_fsm_state90;
    static const sc_lv<125> ap_ST_fsm_state91;
    static const sc_lv<125> ap_ST_fsm_state92;
    static const sc_lv<125> ap_ST_fsm_state93;
    static const sc_lv<125> ap_ST_fsm_state94;
    static const sc_lv<125> ap_ST_fsm_state95;
    static const sc_lv<125> ap_ST_fsm_state96;
    static const sc_lv<125> ap_ST_fsm_state97;
    static const sc_lv<125> ap_ST_fsm_state98;
    static const sc_lv<125> ap_ST_fsm_state99;
    static const sc_lv<125> ap_ST_fsm_state100;
    static const sc_lv<125> ap_ST_fsm_state101;
    static const sc_lv<125> ap_ST_fsm_state102;
    static const sc_lv<125> ap_ST_fsm_state103;
    static const sc_lv<125> ap_ST_fsm_state104;
    static const sc_lv<125> ap_ST_fsm_state105;
    static const sc_lv<125> ap_ST_fsm_state106;
    static const sc_lv<125> ap_ST_fsm_state107;
    static const sc_lv<125> ap_ST_fsm_state108;
    static const sc_lv<125> ap_ST_fsm_state109;
    static const sc_lv<125> ap_ST_fsm_state110;
    static const sc_lv<125> ap_ST_fsm_state111;
    static const sc_lv<125> ap_ST_fsm_state112;
    static const sc_lv<125> ap_ST_fsm_state113;
    static const sc_lv<125> ap_ST_fsm_state114;
    static const sc_lv<125> ap_ST_fsm_state115;
    static const sc_lv<125> ap_ST_fsm_state116;
    static const sc_lv<125> ap_ST_fsm_state117;
    static const sc_lv<125> ap_ST_fsm_state118;
    static const sc_lv<125> ap_ST_fsm_state119;
    static const sc_lv<125> ap_ST_fsm_state120;
    static const sc_lv<125> ap_ST_fsm_state121;
    static const sc_lv<125> ap_ST_fsm_state122;
    static const sc_lv<125> ap_ST_fsm_state123;
    static const sc_lv<125> ap_ST_fsm_state124;
    static const sc_lv<125> ap_ST_fsm_state125;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_23;
    static const sc_lv<32> ap_const_lv32_38;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_27;
    static const sc_lv<32> ap_const_lv32_3C;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_2A;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<32> ap_const_lv32_4C;
    static const sc_lv<32> ap_const_lv32_54;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_2F;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_31;
    static const sc_lv<32> ap_const_lv32_53;
    static const sc_lv<32> ap_const_lv32_3E;
    static const sc_lv<32> ap_const_lv32_56;
    static const sc_lv<32> ap_const_lv32_64;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_28;
    static const sc_lv<32> ap_const_lv32_29;
    static const sc_lv<32> ap_const_lv32_33;
    static const sc_lv<32> ap_const_lv32_34;
    static const sc_lv<32> ap_const_lv32_35;
    static const sc_lv<32> ap_const_lv32_3D;
    static const sc_lv<32> ap_const_lv32_51;
    static const sc_lv<32> ap_const_lv32_55;
    static const sc_lv<32> ap_const_lv32_57;
    static const sc_lv<32> ap_const_lv32_7A;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<17> ap_const_lv17_0;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<13> ap_const_lv13_0;
    static const sc_lv<32> ap_const_lv32_32;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_7C;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_24;
    static const sc_lv<32> ap_const_lv32_39;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_21;
    static const sc_lv<32> ap_const_lv32_36;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_30;
    static const sc_lv<32> ap_const_lv32_52;
    static const sc_lv<32> ap_const_lv32_7B;
    static const sc_lv<32> ap_const_lv32_4B;
    static const sc_lv<32> ap_const_lv32_4D;
    static const sc_lv<64> ap_const_lv64_3FA999999999999A;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_2B;
    static const sc_lv<32> ap_const_lv32_65;
    static const sc_lv<32> ap_const_lv32_40;
    static const sc_lv<32> ap_const_lv32_58;
    static const sc_lv<5> ap_const_lv5_18;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<8> ap_const_lv8_B4;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<10> ap_const_lv10_240;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<17> ap_const_lv17_B4;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<6> ap_const_lv6_2D;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<13> ap_const_lv13_2D;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<5> ap_const_lv5_2;
    static const sc_lv<64> ap_const_lv64_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const2();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const3();
    void thread_ap_clk_no_reset_();
    void thread_add_ln43_fu_706_p2();
    void thread_add_ln50_1_fu_926_p2();
    void thread_add_ln50_2_fu_1098_p2();
    void thread_add_ln50_3_fu_1107_p2();
    void thread_add_ln50_4_fu_758_p2();
    void thread_add_ln50_5_fu_920_p2();
    void thread_add_ln50_fu_764_p2();
    void thread_and_ln26_1_fu_868_p2();
    void thread_and_ln26_2_fu_1024_p2();
    void thread_and_ln26_3_fu_1030_p2();
    void thread_and_ln26_fu_862_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state101();
    void thread_ap_CS_fsm_state102();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state123();
    void thread_ap_CS_fsm_state124();
    void thread_ap_CS_fsm_state125();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state21();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state27();
    void thread_ap_CS_fsm_state28();
    void thread_ap_CS_fsm_state29();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state30();
    void thread_ap_CS_fsm_state31();
    void thread_ap_CS_fsm_state32();
    void thread_ap_CS_fsm_state33();
    void thread_ap_CS_fsm_state34();
    void thread_ap_CS_fsm_state36();
    void thread_ap_CS_fsm_state37();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state40();
    void thread_ap_CS_fsm_state41();
    void thread_ap_CS_fsm_state42();
    void thread_ap_CS_fsm_state43();
    void thread_ap_CS_fsm_state44();
    void thread_ap_CS_fsm_state48();
    void thread_ap_CS_fsm_state49();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state50();
    void thread_ap_CS_fsm_state51();
    void thread_ap_CS_fsm_state52();
    void thread_ap_CS_fsm_state53();
    void thread_ap_CS_fsm_state54();
    void thread_ap_CS_fsm_state55();
    void thread_ap_CS_fsm_state57();
    void thread_ap_CS_fsm_state58();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state61();
    void thread_ap_CS_fsm_state62();
    void thread_ap_CS_fsm_state63();
    void thread_ap_CS_fsm_state64();
    void thread_ap_CS_fsm_state65();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state76();
    void thread_ap_CS_fsm_state77();
    void thread_ap_CS_fsm_state78();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state82();
    void thread_ap_CS_fsm_state83();
    void thread_ap_CS_fsm_state84();
    void thread_ap_CS_fsm_state85();
    void thread_ap_CS_fsm_state86();
    void thread_ap_CS_fsm_state87();
    void thread_ap_CS_fsm_state88();
    void thread_ap_CS_fsm_state89();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_probability_sum_0_phi_fu_511_p4();
    void thread_ap_ready();
    void thread_bitcast_ln26_1_fu_808_p1();
    void thread_bitcast_ln26_2_fu_953_p1();
    void thread_bitcast_ln26_3_fu_970_p1();
    void thread_bitcast_ln26_fu_791_p1();
    void thread_conv_kernel_1_address0();
    void thread_conv_kernel_1_ce0();
    void thread_conv_kernel_2_address0();
    void thread_conv_kernel_2_ce0();
    void thread_conv_kernel_3_address0();
    void thread_conv_kernel_3_ce0();
    void thread_conv_out_1_address0();
    void thread_conv_out_1_ce0();
    void thread_conv_out_1_d0();
    void thread_conv_out_1_we0();
    void thread_conv_out_2_address0();
    void thread_conv_out_2_ce0();
    void thread_conv_out_2_d0();
    void thread_conv_out_2_we0();
    void thread_conv_out_3_address0();
    void thread_conv_out_3_ce0();
    void thread_conv_out_3_we0();
    void thread_fc_hidden_layer1_address0();
    void thread_fc_hidden_layer1_ce0();
    void thread_fc_hidden_layer2_address0();
    void thread_fc_hidden_layer2_ce0();
    void thread_fc_hidden_layer3_address0();
    void thread_fc_hidden_layer3_ce0();
    void thread_fc_in_1_0_address0();
    void thread_fc_in_1_0_ce0();
    void thread_fc_in_1_0_d0();
    void thread_fc_in_1_0_we0();
    void thread_fc_in_2_relu1_0_address0();
    void thread_fc_in_2_relu1_0_ce0();
    void thread_fc_in_2_relu1_0_d0();
    void thread_fc_in_2_relu1_0_we0();
    void thread_fc_in_3_relu2_0_address0();
    void thread_fc_in_3_relu2_0_ce0();
    void thread_fc_in_3_relu2_0_d0();
    void thread_fc_in_3_relu2_0_we0();
    void thread_fc_out_1_0_address0();
    void thread_fc_out_1_0_ce0();
    void thread_fc_out_1_0_d0();
    void thread_fc_out_1_0_we0();
    void thread_fc_out_2_0_address0();
    void thread_fc_out_2_0_ce0();
    void thread_fc_out_2_0_d0();
    void thread_fc_out_2_0_we0();
    void thread_fc_out_3_0_address0();
    void thread_fc_out_3_0_ce0();
    void thread_fc_out_3_0_we0();
    void thread_grp_Conv2d_5_fu_550_ap_start();
    void thread_grp_Conv2d_6_fu_540_ap_start();
    void thread_grp_Conv2d_7_fu_530_ap_start();
    void thread_grp_fu_560_p0();
    void thread_grp_fu_567_p0();
    void thread_grp_fu_567_p1();
    void thread_grp_fu_571_p0();
    void thread_grp_fu_575_p0();
    void thread_grp_fu_583_p0();
    void thread_grp_fu_601_p1();
    void thread_i_1_fu_654_p2();
    void thread_i_2_fu_747_p2();
    void thread_i_3_fu_909_p2();
    void thread_i_4_fu_1071_p2();
    void thread_i_fu_1124_p2();
    void thread_icmp_ln118_fu_1118_p2();
    void thread_icmp_ln121_fu_1135_p2();
    void thread_icmp_ln26_1_fu_832_p2();
    void thread_icmp_ln26_2_fu_844_p2();
    void thread_icmp_ln26_3_fu_850_p2();
    void thread_icmp_ln26_4_fu_988_p2();
    void thread_icmp_ln26_5_fu_994_p2();
    void thread_icmp_ln26_6_fu_1006_p2();
    void thread_icmp_ln26_7_fu_1012_p2();
    void thread_icmp_ln26_fu_826_p2();
    void thread_icmp_ln41_fu_648_p2();
    void thread_icmp_ln42_fu_694_p2();
    void thread_icmp_ln47_1_fu_886_p2();
    void thread_icmp_ln47_2_fu_1048_p2();
    void thread_icmp_ln47_fu_724_p2();
    void thread_icmp_ln49_1_fu_903_p2();
    void thread_icmp_ln49_2_fu_1065_p2();
    void thread_icmp_ln49_fu_741_p2();
    void thread_icmp_ln55_1_fu_936_p2();
    void thread_icmp_ln55_fu_774_p2();
    void thread_j_0_i15_cast6_fu_882_p1();
    void thread_j_0_i3_cast8_fu_720_p1();
    void thread_j_0_i45_cast4_fu_1044_p1();
    void thread_j_10_fu_942_p2();
    void thread_j_11_fu_1054_p2();
    void thread_j_3_fu_730_p2();
    void thread_j_7_fu_700_p2();
    void thread_j_8_fu_780_p2();
    void thread_j_9_fu_892_p2();
    void thread_j_fu_1141_p2();
    void thread_mnist_data_address0();
    void thread_mnist_data_ce0();
    void thread_or_ln26_1_fu_856_p2();
    void thread_or_ln26_2_fu_1000_p2();
    void thread_or_ln26_3_fu_1018_p2();
    void thread_or_ln26_fu_838_p2();
    void thread_probability_result_address0();
    void thread_probability_result_ce0();
    void thread_probability_result_d0();
    void thread_probability_result_we0();
    void thread_sext_ln43_fu_711_p1();
    void thread_shl_ln1_fu_1082_p3();
    void thread_shl_ln43_1_fu_672_p3();
    void thread_shl_ln50_1_fu_1090_p3();
    void thread_shl_ln_fu_660_p3();
    void thread_sub_ln43_fu_684_p2();
    void thread_tmp_11_fu_956_p4();
    void thread_tmp_12_fu_974_p4();
    void thread_tmp_5_fu_794_p4();
    void thread_tmp_s_fu_812_p4();
    void thread_trunc_ln26_1_fu_822_p1();
    void thread_trunc_ln26_2_fu_966_p1();
    void thread_trunc_ln26_3_fu_984_p1();
    void thread_trunc_ln26_fu_804_p1();
    void thread_zext_ln119_fu_1130_p1();
    void thread_zext_ln122_fu_1147_p1();
    void thread_zext_ln42_fu_690_p1();
    void thread_zext_ln43_1_fu_668_p1();
    void thread_zext_ln43_2_fu_680_p1();
    void thread_zext_ln43_fu_715_p1();
    void thread_zext_ln48_1_fu_898_p1();
    void thread_zext_ln48_2_fu_1060_p1();
    void thread_zext_ln48_fu_736_p1();
    void thread_zext_ln50_1_fu_769_p1();
    void thread_zext_ln50_2_fu_915_p1();
    void thread_zext_ln50_3_fu_931_p1();
    void thread_zext_ln50_4_fu_1077_p1();
    void thread_zext_ln50_5_fu_1113_p1();
    void thread_zext_ln50_6_fu_1103_p1();
    void thread_zext_ln50_fu_753_p1();
    void thread_zext_ln56_1_fu_948_p1();
    void thread_zext_ln56_fu_786_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
