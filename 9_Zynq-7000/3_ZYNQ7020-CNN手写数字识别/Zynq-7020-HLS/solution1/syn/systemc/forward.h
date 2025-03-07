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

#include "MaxPool2d_1.h"
#include "MaxPool2d.h"
#include "Conv2d_4.h"
#include "Conv2d_3.h"
#include "forw_back_fadd_32bkb.h"
#include "forw_back_fmul_32cud.h"
#include "forw_back_fptruncg8j.h"
#include "forw_back_fpext_3hbi.h"
#include "forw_back_fcmp_32eOg.h"
#include "forw_back_dadd_64ibs.h"
#include "forw_back_dmul_64jbC.h"
#include "forw_back_ddiv_64kbM.h"
#include "forw_back_dexp_64lbW.h"
#include "forward_conv_out_1.h"
#include "forward_conv_out_2.h"
#include "forward_max_poo_ofYi.h"
#include "forward_fc_out_2_0.h"

namespace ap_rtl {

struct forward : public sc_module {
    // Port declarations 53
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
    sc_out< sc_lv<8> > max_poo_out_1_address0;
    sc_out< sc_logic > max_poo_out_1_ce0;
    sc_out< sc_logic > max_poo_out_1_we0;
    sc_out< sc_lv<32> > max_poo_out_1_d0;
    sc_in< sc_lv<32> > max_poo_out_1_q0;
    sc_out< sc_lv<8> > max_poo_locate_1_address0;
    sc_out< sc_logic > max_poo_locate_1_ce0;
    sc_out< sc_logic > max_poo_locate_1_we0;
    sc_out< sc_lv<32> > max_poo_locate_1_d0;
    sc_out< sc_lv<4> > conv_kernel_2_address0;
    sc_out< sc_logic > conv_kernel_2_ce0;
    sc_in< sc_lv<32> > conv_kernel_2_q0;
    sc_out< sc_lv<6> > max_poo_locate_2_address0;
    sc_out< sc_logic > max_poo_locate_2_ce0;
    sc_out< sc_logic > max_poo_locate_2_we0;
    sc_out< sc_lv<32> > max_poo_locate_2_d0;
    sc_out< sc_lv<6> > fc_in_1_0_address0;
    sc_out< sc_logic > fc_in_1_0_ce0;
    sc_out< sc_logic > fc_in_1_0_we0;
    sc_out< sc_lv<32> > fc_in_1_0_d0;
    sc_in< sc_lv<32> > fc_in_1_0_q0;
    sc_out< sc_lv<5> > fc_out_1_0_address0;
    sc_out< sc_logic > fc_out_1_0_ce0;
    sc_out< sc_logic > fc_out_1_0_we0;
    sc_out< sc_lv<32> > fc_out_1_0_d0;
    sc_in< sc_lv<32> > fc_out_1_0_q0;
    sc_out< sc_lv<10> > fc_hidden_layer1_address0;
    sc_out< sc_logic > fc_hidden_layer1_ce0;
    sc_in< sc_lv<32> > fc_hidden_layer1_q0;
    sc_out< sc_lv<5> > fc_in_2_relu1_0_address0;
    sc_out< sc_logic > fc_in_2_relu1_0_ce0;
    sc_out< sc_logic > fc_in_2_relu1_0_we0;
    sc_out< sc_lv<32> > fc_in_2_relu1_0_d0;
    sc_in< sc_lv<32> > fc_in_2_relu1_0_q0;
    sc_out< sc_lv<8> > fc_hidden_layer2_address0;
    sc_out< sc_logic > fc_hidden_layer2_ce0;
    sc_in< sc_lv<32> > fc_hidden_layer2_q0;
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

    forward_conv_out_1* conv_out_1_U;
    forward_conv_out_2* conv_out_2_U;
    forward_max_poo_ofYi* max_poo_out_2_U;
    forward_fc_out_2_0* fc_out_2_0_U;
    MaxPool2d_1* grp_MaxPool2d_1_fu_399;
    MaxPool2d* grp_MaxPool2d_fu_409;
    Conv2d_4* grp_Conv2d_4_fu_419;
    Conv2d_3* grp_Conv2d_3_fu_429;
    forw_back_fadd_32bkb<1,5,32,32,32>* forw_back_fadd_32bkb_U25;
    forw_back_fmul_32cud<1,4,32,32,32>* forw_back_fmul_32cud_U26;
    forw_back_fptruncg8j<1,2,64,32>* forw_back_fptruncg8j_U27;
    forw_back_fpext_3hbi<1,2,32,64>* forw_back_fpext_3hbi_U28;
    forw_back_fcmp_32eOg<1,2,32,32,1>* forw_back_fcmp_32eOg_U29;
    forw_back_dadd_64ibs<1,5,64,64,64>* forw_back_dadd_64ibs_U30;
    forw_back_dmul_64jbC<1,6,64,64,64>* forw_back_dmul_64jbC_U31;
    forw_back_ddiv_64kbM<1,31,64,64,64>* forw_back_ddiv_64kbM_U32;
    forw_back_dexp_64lbW<1,18,64,64,64>* forw_back_dexp_64lbW_U33;
    sc_signal< sc_lv<132> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<10> > conv_out_1_address0;
    sc_signal< sc_logic > conv_out_1_ce0;
    sc_signal< sc_logic > conv_out_1_we0;
    sc_signal< sc_lv<32> > conv_out_1_q0;
    sc_signal< sc_lv<8> > conv_out_2_address0;
    sc_signal< sc_logic > conv_out_2_ce0;
    sc_signal< sc_logic > conv_out_2_we0;
    sc_signal< sc_lv<32> > conv_out_2_q0;
    sc_signal< sc_lv<6> > max_poo_out_2_address0;
    sc_signal< sc_logic > max_poo_out_2_ce0;
    sc_signal< sc_logic > max_poo_out_2_we0;
    sc_signal< sc_lv<32> > max_poo_out_2_q0;
    sc_signal< sc_lv<4> > fc_out_2_0_address0;
    sc_signal< sc_logic > fc_out_2_0_ce0;
    sc_signal< sc_logic > fc_out_2_0_we0;
    sc_signal< sc_lv<32> > fc_out_2_0_q0;
    sc_signal< sc_lv<32> > grp_fu_445_p2;
    sc_signal< sc_lv<32> > reg_483;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_logic > ap_CS_fsm_state44;
    sc_signal< sc_lv<32> > grp_fu_439_p2;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_logic > ap_CS_fsm_state49;
    sc_signal< sc_lv<64> > grp_fu_454_p1;
    sc_signal< sc_lv<64> > reg_494;
    sc_signal< sc_logic > ap_CS_fsm_state26;
    sc_signal< sc_logic > ap_CS_fsm_state52;
    sc_signal< sc_logic > ap_CS_fsm_state70;
    sc_signal< sc_logic > ap_CS_fsm_state78;
    sc_signal< sc_lv<32> > grp_fu_450_p1;
    sc_signal< sc_lv<32> > reg_502;
    sc_signal< sc_logic > ap_CS_fsm_state34;
    sc_signal< sc_logic > ap_CS_fsm_state77;
    sc_signal< sc_logic > ap_CS_fsm_state51;
    sc_signal< sc_logic > ap_CS_fsm_state80;
    sc_signal< sc_lv<64> > grp_fu_478_p2;
    sc_signal< sc_lv<64> > reg_513;
    sc_signal< sc_logic > ap_CS_fsm_state99;
    sc_signal< sc_lv<3> > i_1_fu_525_p2;
    sc_signal< sc_lv<3> > i_1_reg_883;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<7> > sub_ln54_fu_555_p2;
    sc_signal< sc_lv<7> > sub_ln54_reg_888;
    sc_signal< sc_lv<1> > icmp_ln52_fu_519_p2;
    sc_signal< sc_lv<3> > j_5_fu_571_p2;
    sc_signal< sc_lv<3> > j_5_reg_896;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<64> > zext_ln54_fu_586_p1;
    sc_signal< sc_lv<64> > zext_ln54_reg_901;
    sc_signal< sc_lv<1> > icmp_ln53_fu_565_p2;
    sc_signal< sc_lv<8> > j_0_i3_cast8_fu_591_p1;
    sc_signal< sc_lv<8> > j_0_i3_cast8_reg_911;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<5> > j_3_fu_601_p2;
    sc_signal< sc_lv<5> > j_3_reg_919;
    sc_signal< sc_lv<5> > fc_out_1_0_addr_reg_924;
    sc_signal< sc_lv<1> > icmp_ln58_fu_595_p2;
    sc_signal< sc_lv<6> > i_2_fu_618_p2;
    sc_signal< sc_lv<6> > i_2_reg_932;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<1> > icmp_ln60_fu_612_p2;
    sc_signal< sc_lv<32> > fc_in_1_0_load_reg_947;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<32> > fc_hidden_layer1_loa_reg_952;
    sc_signal< sc_lv<5> > j_6_fu_671_p2;
    sc_signal< sc_lv<5> > j_6_reg_960;
    sc_signal< sc_logic > ap_CS_fsm_state24;
    sc_signal< sc_lv<64> > zext_ln67_fu_677_p1;
    sc_signal< sc_lv<64> > zext_ln67_reg_965;
    sc_signal< sc_lv<1> > icmp_ln66_fu_665_p2;
    sc_signal< sc_lv<32> > fc_out_1_0_load_reg_975;
    sc_signal< sc_logic > ap_CS_fsm_state25;
    sc_signal< sc_lv<64> > grp_fu_469_p2;
    sc_signal< sc_lv<64> > tmp_i1_15_reg_983;
    sc_signal< sc_logic > ap_CS_fsm_state32;
    sc_signal< sc_lv<32> > select_ln23_fu_765_p3;
    sc_signal< sc_lv<32> > select_ln23_reg_988;
    sc_signal< sc_logic > ap_CS_fsm_state36;
    sc_signal< sc_lv<6> > j_0_i16_cast5_fu_772_p1;
    sc_signal< sc_lv<6> > j_0_i16_cast5_reg_993;
    sc_signal< sc_logic > ap_CS_fsm_state38;
    sc_signal< sc_lv<4> > j_7_fu_782_p2;
    sc_signal< sc_lv<4> > j_7_reg_1001;
    sc_signal< sc_lv<4> > fc_out_2_0_addr_2_reg_1006;
    sc_signal< sc_lv<1> > icmp_ln58_1_fu_776_p2;
    sc_signal< sc_lv<5> > i_3_fu_799_p2;
    sc_signal< sc_lv<5> > i_3_reg_1014;
    sc_signal< sc_logic > ap_CS_fsm_state39;
    sc_signal< sc_lv<1> > icmp_ln60_1_fu_793_p2;
    sc_signal< sc_logic > ap_CS_fsm_state40;
    sc_signal< sc_lv<32> > fc_hidden_layer2_loa_reg_1029;
    sc_signal< sc_logic > ap_CS_fsm_state41;
    sc_signal< sc_lv<4> > i_fu_852_p2;
    sc_signal< sc_lv<4> > i_reg_1042;
    sc_signal< sc_logic > ap_CS_fsm_state50;
    sc_signal< sc_lv<1> > icmp_ln143_fu_846_p2;
    sc_signal< sc_lv<64> > grp_fu_465_p2;
    sc_signal< sc_lv<64> > tmp_6_reg_1052;
    sc_signal< sc_logic > ap_CS_fsm_state75;
    sc_signal< sc_lv<4> > j_fu_869_p2;
    sc_signal< sc_lv<4> > j_reg_1060;
    sc_signal< sc_logic > ap_CS_fsm_state79;
    sc_signal< sc_lv<64> > zext_ln146_fu_875_p1;
    sc_signal< sc_lv<64> > zext_ln146_reg_1065;
    sc_signal< sc_lv<1> > icmp_ln145_fu_863_p2;
    sc_signal< sc_lv<64> > tmp_8_reg_1075;
    sc_signal< sc_logic > ap_CS_fsm_state81;
    sc_signal< sc_lv<64> > grp_fu_474_p2;
    sc_signal< sc_lv<64> > tmp_s_reg_1080;
    sc_signal< sc_logic > ap_CS_fsm_state130;
    sc_signal< sc_logic > grp_MaxPool2d_1_fu_399_ap_start;
    sc_signal< sc_logic > grp_MaxPool2d_1_fu_399_ap_done;
    sc_signal< sc_logic > grp_MaxPool2d_1_fu_399_ap_idle;
    sc_signal< sc_logic > grp_MaxPool2d_1_fu_399_ap_ready;
    sc_signal< sc_lv<8> > grp_MaxPool2d_1_fu_399_output_matrix_address0;
    sc_signal< sc_logic > grp_MaxPool2d_1_fu_399_output_matrix_ce0;
    sc_signal< sc_logic > grp_MaxPool2d_1_fu_399_output_matrix_we0;
    sc_signal< sc_lv<32> > grp_MaxPool2d_1_fu_399_output_matrix_d0;
    sc_signal< sc_lv<8> > grp_MaxPool2d_1_fu_399_locate_matrix_address0;
    sc_signal< sc_logic > grp_MaxPool2d_1_fu_399_locate_matrix_ce0;
    sc_signal< sc_logic > grp_MaxPool2d_1_fu_399_locate_matrix_we0;
    sc_signal< sc_lv<32> > grp_MaxPool2d_1_fu_399_locate_matrix_d0;
    sc_signal< sc_lv<10> > grp_MaxPool2d_1_fu_399_conv_out_1_address0;
    sc_signal< sc_logic > grp_MaxPool2d_1_fu_399_conv_out_1_ce0;
    sc_signal< sc_logic > grp_MaxPool2d_fu_409_ap_start;
    sc_signal< sc_logic > grp_MaxPool2d_fu_409_ap_done;
    sc_signal< sc_logic > grp_MaxPool2d_fu_409_ap_idle;
    sc_signal< sc_logic > grp_MaxPool2d_fu_409_ap_ready;
    sc_signal< sc_lv<6> > grp_MaxPool2d_fu_409_output_matrix_address0;
    sc_signal< sc_logic > grp_MaxPool2d_fu_409_output_matrix_ce0;
    sc_signal< sc_logic > grp_MaxPool2d_fu_409_output_matrix_we0;
    sc_signal< sc_lv<32> > grp_MaxPool2d_fu_409_output_matrix_d0;
    sc_signal< sc_lv<6> > grp_MaxPool2d_fu_409_locate_matrix_address0;
    sc_signal< sc_logic > grp_MaxPool2d_fu_409_locate_matrix_ce0;
    sc_signal< sc_logic > grp_MaxPool2d_fu_409_locate_matrix_we0;
    sc_signal< sc_lv<32> > grp_MaxPool2d_fu_409_locate_matrix_d0;
    sc_signal< sc_lv<8> > grp_MaxPool2d_fu_409_conv_out_2_address0;
    sc_signal< sc_logic > grp_MaxPool2d_fu_409_conv_out_2_ce0;
    sc_signal< sc_logic > grp_Conv2d_4_fu_419_ap_start;
    sc_signal< sc_logic > grp_Conv2d_4_fu_419_ap_done;
    sc_signal< sc_logic > grp_Conv2d_4_fu_419_ap_idle;
    sc_signal< sc_logic > grp_Conv2d_4_fu_419_ap_ready;
    sc_signal< sc_lv<10> > grp_Conv2d_4_fu_419_input_matrix_address0;
    sc_signal< sc_logic > grp_Conv2d_4_fu_419_input_matrix_ce0;
    sc_signal< sc_lv<4> > grp_Conv2d_4_fu_419_kernel_address0;
    sc_signal< sc_logic > grp_Conv2d_4_fu_419_kernel_ce0;
    sc_signal< sc_lv<10> > grp_Conv2d_4_fu_419_out_matrix_address0;
    sc_signal< sc_logic > grp_Conv2d_4_fu_419_out_matrix_ce0;
    sc_signal< sc_logic > grp_Conv2d_4_fu_419_out_matrix_we0;
    sc_signal< sc_lv<32> > grp_Conv2d_4_fu_419_out_matrix_d0;
    sc_signal< sc_logic > grp_Conv2d_3_fu_429_ap_start;
    sc_signal< sc_logic > grp_Conv2d_3_fu_429_ap_done;
    sc_signal< sc_logic > grp_Conv2d_3_fu_429_ap_idle;
    sc_signal< sc_logic > grp_Conv2d_3_fu_429_ap_ready;
    sc_signal< sc_lv<8> > grp_Conv2d_3_fu_429_input_matrix_address0;
    sc_signal< sc_logic > grp_Conv2d_3_fu_429_input_matrix_ce0;
    sc_signal< sc_lv<4> > grp_Conv2d_3_fu_429_kernel_address0;
    sc_signal< sc_logic > grp_Conv2d_3_fu_429_kernel_ce0;
    sc_signal< sc_lv<8> > grp_Conv2d_3_fu_429_out_matrix_address0;
    sc_signal< sc_logic > grp_Conv2d_3_fu_429_out_matrix_ce0;
    sc_signal< sc_logic > grp_Conv2d_3_fu_429_out_matrix_we0;
    sc_signal< sc_lv<32> > grp_Conv2d_3_fu_429_out_matrix_d0;
    sc_signal< sc_lv<3> > i_0_i_reg_261;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<3> > j_0_i_reg_272;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<5> > j_0_i3_reg_283;
    sc_signal< sc_lv<32> > storemerge_reg_294;
    sc_signal< sc_lv<6> > i_0_i5_reg_307;
    sc_signal< sc_lv<5> > j_0_i9_reg_318;
    sc_signal< sc_logic > ap_CS_fsm_state37;
    sc_signal< sc_lv<4> > j_0_i16_reg_329;
    sc_signal< sc_lv<32> > storemerge149_reg_340;
    sc_signal< sc_lv<5> > i_0_i20_reg_353;
    sc_signal< sc_lv<4> > i_0_reg_365;
    sc_signal< sc_lv<32> > ap_phi_mux_probability_sum_0_phi_fu_380_p4;
    sc_signal< sc_lv<32> > probability_sum_0_reg_376;
    sc_signal< sc_lv<4> > j_0_reg_388;
    sc_signal< sc_logic > ap_CS_fsm_state132;
    sc_signal< sc_logic > grp_MaxPool2d_1_fu_399_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > grp_MaxPool2d_fu_409_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > grp_Conv2d_4_fu_419_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > grp_Conv2d_3_fu_429_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<64> > zext_ln59_fu_607_p1;
    sc_signal< sc_lv<64> > zext_ln61_fu_624_p1;
    sc_signal< sc_lv<64> > zext_ln61_1_fu_660_p1;
    sc_signal< sc_lv<64> > zext_ln59_1_fu_788_p1;
    sc_signal< sc_lv<64> > zext_ln61_3_fu_836_p1;
    sc_signal< sc_lv<64> > zext_ln61_2_fu_841_p1;
    sc_signal< sc_lv<64> > zext_ln144_fu_858_p1;
    sc_signal< sc_lv<32> > grp_fu_439_p0;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_logic > ap_CS_fsm_state45;
    sc_signal< sc_lv<32> > grp_fu_445_p0;
    sc_signal< sc_lv<32> > grp_fu_445_p1;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<64> > grp_fu_450_p0;
    sc_signal< sc_logic > ap_CS_fsm_state33;
    sc_signal< sc_logic > ap_CS_fsm_state76;
    sc_signal< sc_logic > ap_CS_fsm_state131;
    sc_signal< sc_lv<32> > grp_fu_454_p0;
    sc_signal< sc_logic > ap_CS_fsm_state69;
    sc_signal< sc_logic > ap_CS_fsm_state35;
    sc_signal< sc_logic > ap_CS_fsm_state71;
    sc_signal< sc_logic > ap_CS_fsm_state27;
    sc_signal< sc_logic > ap_CS_fsm_state100;
    sc_signal< sc_lv<64> > grp_fu_478_p1;
    sc_signal< sc_logic > ap_CS_fsm_state53;
    sc_signal< sc_logic > ap_CS_fsm_state82;
    sc_signal< sc_lv<6> > shl_ln_fu_531_p3;
    sc_signal< sc_lv<4> > shl_ln54_1_fu_543_p3;
    sc_signal< sc_lv<7> > zext_ln54_1_fu_539_p1;
    sc_signal< sc_lv<7> > zext_ln54_2_fu_551_p1;
    sc_signal< sc_lv<7> > zext_ln53_fu_561_p1;
    sc_signal< sc_lv<7> > add_ln54_fu_577_p2;
    sc_signal< sc_lv<32> > sext_ln54_fu_582_p1;
    sc_signal< sc_lv<8> > shl_ln61_1_fu_637_p3;
    sc_signal< sc_lv<8> > add_ln61_fu_645_p2;
    sc_signal< sc_lv<10> > shl_ln1_fu_629_p3;
    sc_signal< sc_lv<10> > zext_ln61_4_fu_650_p1;
    sc_signal< sc_lv<10> > add_ln61_1_fu_654_p2;
    sc_signal< sc_lv<32> > bitcast_ln23_fu_682_p1;
    sc_signal< sc_lv<32> > bitcast_ln23_1_fu_699_p1;
    sc_signal< sc_lv<8> > tmp_2_fu_685_p4;
    sc_signal< sc_lv<23> > trunc_ln23_fu_695_p1;
    sc_signal< sc_lv<1> > icmp_ln23_1_fu_723_p2;
    sc_signal< sc_lv<1> > icmp_ln23_fu_717_p2;
    sc_signal< sc_lv<8> > tmp_7_fu_703_p4;
    sc_signal< sc_lv<23> > trunc_ln23_1_fu_713_p1;
    sc_signal< sc_lv<1> > icmp_ln23_3_fu_741_p2;
    sc_signal< sc_lv<1> > icmp_ln23_2_fu_735_p2;
    sc_signal< sc_lv<1> > or_ln23_fu_729_p2;
    sc_signal< sc_lv<1> > or_ln23_1_fu_747_p2;
    sc_signal< sc_lv<1> > and_ln23_fu_753_p2;
    sc_signal< sc_lv<1> > grp_fu_461_p2;
    sc_signal< sc_lv<1> > and_ln23_1_fu_759_p2;
    sc_signal< sc_lv<6> > shl_ln61_3_fu_813_p3;
    sc_signal< sc_lv<6> > add_ln61_2_fu_821_p2;
    sc_signal< sc_lv<8> > shl_ln61_2_fu_805_p3;
    sc_signal< sc_lv<8> > zext_ln61_5_fu_826_p1;
    sc_signal< sc_lv<8> > add_ln61_3_fu_830_p2;
    sc_signal< sc_lv<132> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<132> ap_ST_fsm_state1;
    static const sc_lv<132> ap_ST_fsm_state2;
    static const sc_lv<132> ap_ST_fsm_state3;
    static const sc_lv<132> ap_ST_fsm_state4;
    static const sc_lv<132> ap_ST_fsm_state5;
    static const sc_lv<132> ap_ST_fsm_state6;
    static const sc_lv<132> ap_ST_fsm_state7;
    static const sc_lv<132> ap_ST_fsm_state8;
    static const sc_lv<132> ap_ST_fsm_state9;
    static const sc_lv<132> ap_ST_fsm_state10;
    static const sc_lv<132> ap_ST_fsm_state11;
    static const sc_lv<132> ap_ST_fsm_state12;
    static const sc_lv<132> ap_ST_fsm_state13;
    static const sc_lv<132> ap_ST_fsm_state14;
    static const sc_lv<132> ap_ST_fsm_state15;
    static const sc_lv<132> ap_ST_fsm_state16;
    static const sc_lv<132> ap_ST_fsm_state17;
    static const sc_lv<132> ap_ST_fsm_state18;
    static const sc_lv<132> ap_ST_fsm_state19;
    static const sc_lv<132> ap_ST_fsm_state20;
    static const sc_lv<132> ap_ST_fsm_state21;
    static const sc_lv<132> ap_ST_fsm_state22;
    static const sc_lv<132> ap_ST_fsm_state23;
    static const sc_lv<132> ap_ST_fsm_state24;
    static const sc_lv<132> ap_ST_fsm_state25;
    static const sc_lv<132> ap_ST_fsm_state26;
    static const sc_lv<132> ap_ST_fsm_state27;
    static const sc_lv<132> ap_ST_fsm_state28;
    static const sc_lv<132> ap_ST_fsm_state29;
    static const sc_lv<132> ap_ST_fsm_state30;
    static const sc_lv<132> ap_ST_fsm_state31;
    static const sc_lv<132> ap_ST_fsm_state32;
    static const sc_lv<132> ap_ST_fsm_state33;
    static const sc_lv<132> ap_ST_fsm_state34;
    static const sc_lv<132> ap_ST_fsm_state35;
    static const sc_lv<132> ap_ST_fsm_state36;
    static const sc_lv<132> ap_ST_fsm_state37;
    static const sc_lv<132> ap_ST_fsm_state38;
    static const sc_lv<132> ap_ST_fsm_state39;
    static const sc_lv<132> ap_ST_fsm_state40;
    static const sc_lv<132> ap_ST_fsm_state41;
    static const sc_lv<132> ap_ST_fsm_state42;
    static const sc_lv<132> ap_ST_fsm_state43;
    static const sc_lv<132> ap_ST_fsm_state44;
    static const sc_lv<132> ap_ST_fsm_state45;
    static const sc_lv<132> ap_ST_fsm_state46;
    static const sc_lv<132> ap_ST_fsm_state47;
    static const sc_lv<132> ap_ST_fsm_state48;
    static const sc_lv<132> ap_ST_fsm_state49;
    static const sc_lv<132> ap_ST_fsm_state50;
    static const sc_lv<132> ap_ST_fsm_state51;
    static const sc_lv<132> ap_ST_fsm_state52;
    static const sc_lv<132> ap_ST_fsm_state53;
    static const sc_lv<132> ap_ST_fsm_state54;
    static const sc_lv<132> ap_ST_fsm_state55;
    static const sc_lv<132> ap_ST_fsm_state56;
    static const sc_lv<132> ap_ST_fsm_state57;
    static const sc_lv<132> ap_ST_fsm_state58;
    static const sc_lv<132> ap_ST_fsm_state59;
    static const sc_lv<132> ap_ST_fsm_state60;
    static const sc_lv<132> ap_ST_fsm_state61;
    static const sc_lv<132> ap_ST_fsm_state62;
    static const sc_lv<132> ap_ST_fsm_state63;
    static const sc_lv<132> ap_ST_fsm_state64;
    static const sc_lv<132> ap_ST_fsm_state65;
    static const sc_lv<132> ap_ST_fsm_state66;
    static const sc_lv<132> ap_ST_fsm_state67;
    static const sc_lv<132> ap_ST_fsm_state68;
    static const sc_lv<132> ap_ST_fsm_state69;
    static const sc_lv<132> ap_ST_fsm_state70;
    static const sc_lv<132> ap_ST_fsm_state71;
    static const sc_lv<132> ap_ST_fsm_state72;
    static const sc_lv<132> ap_ST_fsm_state73;
    static const sc_lv<132> ap_ST_fsm_state74;
    static const sc_lv<132> ap_ST_fsm_state75;
    static const sc_lv<132> ap_ST_fsm_state76;
    static const sc_lv<132> ap_ST_fsm_state77;
    static const sc_lv<132> ap_ST_fsm_state78;
    static const sc_lv<132> ap_ST_fsm_state79;
    static const sc_lv<132> ap_ST_fsm_state80;
    static const sc_lv<132> ap_ST_fsm_state81;
    static const sc_lv<132> ap_ST_fsm_state82;
    static const sc_lv<132> ap_ST_fsm_state83;
    static const sc_lv<132> ap_ST_fsm_state84;
    static const sc_lv<132> ap_ST_fsm_state85;
    static const sc_lv<132> ap_ST_fsm_state86;
    static const sc_lv<132> ap_ST_fsm_state87;
    static const sc_lv<132> ap_ST_fsm_state88;
    static const sc_lv<132> ap_ST_fsm_state89;
    static const sc_lv<132> ap_ST_fsm_state90;
    static const sc_lv<132> ap_ST_fsm_state91;
    static const sc_lv<132> ap_ST_fsm_state92;
    static const sc_lv<132> ap_ST_fsm_state93;
    static const sc_lv<132> ap_ST_fsm_state94;
    static const sc_lv<132> ap_ST_fsm_state95;
    static const sc_lv<132> ap_ST_fsm_state96;
    static const sc_lv<132> ap_ST_fsm_state97;
    static const sc_lv<132> ap_ST_fsm_state98;
    static const sc_lv<132> ap_ST_fsm_state99;
    static const sc_lv<132> ap_ST_fsm_state100;
    static const sc_lv<132> ap_ST_fsm_state101;
    static const sc_lv<132> ap_ST_fsm_state102;
    static const sc_lv<132> ap_ST_fsm_state103;
    static const sc_lv<132> ap_ST_fsm_state104;
    static const sc_lv<132> ap_ST_fsm_state105;
    static const sc_lv<132> ap_ST_fsm_state106;
    static const sc_lv<132> ap_ST_fsm_state107;
    static const sc_lv<132> ap_ST_fsm_state108;
    static const sc_lv<132> ap_ST_fsm_state109;
    static const sc_lv<132> ap_ST_fsm_state110;
    static const sc_lv<132> ap_ST_fsm_state111;
    static const sc_lv<132> ap_ST_fsm_state112;
    static const sc_lv<132> ap_ST_fsm_state113;
    static const sc_lv<132> ap_ST_fsm_state114;
    static const sc_lv<132> ap_ST_fsm_state115;
    static const sc_lv<132> ap_ST_fsm_state116;
    static const sc_lv<132> ap_ST_fsm_state117;
    static const sc_lv<132> ap_ST_fsm_state118;
    static const sc_lv<132> ap_ST_fsm_state119;
    static const sc_lv<132> ap_ST_fsm_state120;
    static const sc_lv<132> ap_ST_fsm_state121;
    static const sc_lv<132> ap_ST_fsm_state122;
    static const sc_lv<132> ap_ST_fsm_state123;
    static const sc_lv<132> ap_ST_fsm_state124;
    static const sc_lv<132> ap_ST_fsm_state125;
    static const sc_lv<132> ap_ST_fsm_state126;
    static const sc_lv<132> ap_ST_fsm_state127;
    static const sc_lv<132> ap_ST_fsm_state128;
    static const sc_lv<132> ap_ST_fsm_state129;
    static const sc_lv<132> ap_ST_fsm_state130;
    static const sc_lv<132> ap_ST_fsm_state131;
    static const sc_lv<132> ap_ST_fsm_state132;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_2B;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_30;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_33;
    static const sc_lv<32> ap_const_lv32_45;
    static const sc_lv<32> ap_const_lv32_4D;
    static const sc_lv<32> ap_const_lv32_21;
    static const sc_lv<32> ap_const_lv32_4C;
    static const sc_lv<32> ap_const_lv32_32;
    static const sc_lv<32> ap_const_lv32_4F;
    static const sc_lv<32> ap_const_lv32_62;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_23;
    static const sc_lv<32> ap_const_lv32_25;
    static const sc_lv<32> ap_const_lv32_26;
    static const sc_lv<32> ap_const_lv32_27;
    static const sc_lv<32> ap_const_lv32_28;
    static const sc_lv<32> ap_const_lv32_31;
    static const sc_lv<32> ap_const_lv32_4A;
    static const sc_lv<32> ap_const_lv32_4E;
    static const sc_lv<32> ap_const_lv32_50;
    static const sc_lv<32> ap_const_lv32_81;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_24;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_83;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_2C;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_4B;
    static const sc_lv<32> ap_const_lv32_82;
    static const sc_lv<32> ap_const_lv32_44;
    static const sc_lv<32> ap_const_lv32_22;
    static const sc_lv<32> ap_const_lv32_46;
    static const sc_lv<64> ap_const_lv64_3FA999999999999A;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_63;
    static const sc_lv<32> ap_const_lv32_34;
    static const sc_lv<32> ap_const_lv32_51;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<5> ap_const_lv5_14;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<6> ap_const_lv6_24;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<23> ap_const_lv23_0;
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
    void thread_add_ln54_fu_577_p2();
    void thread_add_ln61_1_fu_654_p2();
    void thread_add_ln61_2_fu_821_p2();
    void thread_add_ln61_3_fu_830_p2();
    void thread_add_ln61_fu_645_p2();
    void thread_and_ln23_1_fu_759_p2();
    void thread_and_ln23_fu_753_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state100();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state130();
    void thread_ap_CS_fsm_state131();
    void thread_ap_CS_fsm_state132();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state24();
    void thread_ap_CS_fsm_state25();
    void thread_ap_CS_fsm_state26();
    void thread_ap_CS_fsm_state27();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state32();
    void thread_ap_CS_fsm_state33();
    void thread_ap_CS_fsm_state34();
    void thread_ap_CS_fsm_state35();
    void thread_ap_CS_fsm_state36();
    void thread_ap_CS_fsm_state37();
    void thread_ap_CS_fsm_state38();
    void thread_ap_CS_fsm_state39();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state40();
    void thread_ap_CS_fsm_state41();
    void thread_ap_CS_fsm_state44();
    void thread_ap_CS_fsm_state45();
    void thread_ap_CS_fsm_state49();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state50();
    void thread_ap_CS_fsm_state51();
    void thread_ap_CS_fsm_state52();
    void thread_ap_CS_fsm_state53();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state69();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state70();
    void thread_ap_CS_fsm_state71();
    void thread_ap_CS_fsm_state75();
    void thread_ap_CS_fsm_state76();
    void thread_ap_CS_fsm_state77();
    void thread_ap_CS_fsm_state78();
    void thread_ap_CS_fsm_state79();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state80();
    void thread_ap_CS_fsm_state81();
    void thread_ap_CS_fsm_state82();
    void thread_ap_CS_fsm_state9();
    void thread_ap_CS_fsm_state99();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_probability_sum_0_phi_fu_380_p4();
    void thread_ap_ready();
    void thread_bitcast_ln23_1_fu_699_p1();
    void thread_bitcast_ln23_fu_682_p1();
    void thread_conv_kernel_1_address0();
    void thread_conv_kernel_1_ce0();
    void thread_conv_kernel_2_address0();
    void thread_conv_kernel_2_ce0();
    void thread_conv_out_1_address0();
    void thread_conv_out_1_ce0();
    void thread_conv_out_1_we0();
    void thread_conv_out_2_address0();
    void thread_conv_out_2_ce0();
    void thread_conv_out_2_we0();
    void thread_fc_hidden_layer1_address0();
    void thread_fc_hidden_layer1_ce0();
    void thread_fc_hidden_layer2_address0();
    void thread_fc_hidden_layer2_ce0();
    void thread_fc_in_1_0_address0();
    void thread_fc_in_1_0_ce0();
    void thread_fc_in_1_0_d0();
    void thread_fc_in_1_0_we0();
    void thread_fc_in_2_relu1_0_address0();
    void thread_fc_in_2_relu1_0_ce0();
    void thread_fc_in_2_relu1_0_d0();
    void thread_fc_in_2_relu1_0_we0();
    void thread_fc_out_1_0_address0();
    void thread_fc_out_1_0_ce0();
    void thread_fc_out_1_0_d0();
    void thread_fc_out_1_0_we0();
    void thread_fc_out_2_0_address0();
    void thread_fc_out_2_0_ce0();
    void thread_fc_out_2_0_we0();
    void thread_grp_Conv2d_3_fu_429_ap_start();
    void thread_grp_Conv2d_4_fu_419_ap_start();
    void thread_grp_MaxPool2d_1_fu_399_ap_start();
    void thread_grp_MaxPool2d_fu_409_ap_start();
    void thread_grp_fu_439_p0();
    void thread_grp_fu_445_p0();
    void thread_grp_fu_445_p1();
    void thread_grp_fu_450_p0();
    void thread_grp_fu_454_p0();
    void thread_grp_fu_478_p1();
    void thread_i_1_fu_525_p2();
    void thread_i_2_fu_618_p2();
    void thread_i_3_fu_799_p2();
    void thread_i_fu_852_p2();
    void thread_icmp_ln143_fu_846_p2();
    void thread_icmp_ln145_fu_863_p2();
    void thread_icmp_ln23_1_fu_723_p2();
    void thread_icmp_ln23_2_fu_735_p2();
    void thread_icmp_ln23_3_fu_741_p2();
    void thread_icmp_ln23_fu_717_p2();
    void thread_icmp_ln52_fu_519_p2();
    void thread_icmp_ln53_fu_565_p2();
    void thread_icmp_ln58_1_fu_776_p2();
    void thread_icmp_ln58_fu_595_p2();
    void thread_icmp_ln60_1_fu_793_p2();
    void thread_icmp_ln60_fu_612_p2();
    void thread_icmp_ln66_fu_665_p2();
    void thread_j_0_i16_cast5_fu_772_p1();
    void thread_j_0_i3_cast8_fu_591_p1();
    void thread_j_3_fu_601_p2();
    void thread_j_5_fu_571_p2();
    void thread_j_6_fu_671_p2();
    void thread_j_7_fu_782_p2();
    void thread_j_fu_869_p2();
    void thread_max_poo_locate_1_address0();
    void thread_max_poo_locate_1_ce0();
    void thread_max_poo_locate_1_d0();
    void thread_max_poo_locate_1_we0();
    void thread_max_poo_locate_2_address0();
    void thread_max_poo_locate_2_ce0();
    void thread_max_poo_locate_2_d0();
    void thread_max_poo_locate_2_we0();
    void thread_max_poo_out_1_address0();
    void thread_max_poo_out_1_ce0();
    void thread_max_poo_out_1_d0();
    void thread_max_poo_out_1_we0();
    void thread_max_poo_out_2_address0();
    void thread_max_poo_out_2_ce0();
    void thread_max_poo_out_2_we0();
    void thread_mnist_data_address0();
    void thread_mnist_data_ce0();
    void thread_or_ln23_1_fu_747_p2();
    void thread_or_ln23_fu_729_p2();
    void thread_probability_result_address0();
    void thread_probability_result_ce0();
    void thread_probability_result_d0();
    void thread_probability_result_we0();
    void thread_select_ln23_fu_765_p3();
    void thread_sext_ln54_fu_582_p1();
    void thread_shl_ln1_fu_629_p3();
    void thread_shl_ln54_1_fu_543_p3();
    void thread_shl_ln61_1_fu_637_p3();
    void thread_shl_ln61_2_fu_805_p3();
    void thread_shl_ln61_3_fu_813_p3();
    void thread_shl_ln_fu_531_p3();
    void thread_sub_ln54_fu_555_p2();
    void thread_tmp_2_fu_685_p4();
    void thread_tmp_7_fu_703_p4();
    void thread_trunc_ln23_1_fu_713_p1();
    void thread_trunc_ln23_fu_695_p1();
    void thread_zext_ln144_fu_858_p1();
    void thread_zext_ln146_fu_875_p1();
    void thread_zext_ln53_fu_561_p1();
    void thread_zext_ln54_1_fu_539_p1();
    void thread_zext_ln54_2_fu_551_p1();
    void thread_zext_ln54_fu_586_p1();
    void thread_zext_ln59_1_fu_788_p1();
    void thread_zext_ln59_fu_607_p1();
    void thread_zext_ln61_1_fu_660_p1();
    void thread_zext_ln61_2_fu_841_p1();
    void thread_zext_ln61_3_fu_836_p1();
    void thread_zext_ln61_4_fu_650_p1();
    void thread_zext_ln61_5_fu_826_p1();
    void thread_zext_ln61_fu_624_p1();
    void thread_zext_ln67_fu_677_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
