// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Conv2d_1_HH_
#define _Conv2d_1_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "forw_back_fadd_32bkb.h"
#include "forw_back_fmul_32cud.h"

namespace ap_rtl {

struct Conv2d_1 : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<8> > input_matrix_address0;
    sc_out< sc_logic > input_matrix_ce0;
    sc_in< sc_lv<32> > input_matrix_q0;
    sc_out< sc_lv<4> > kernel_address0;
    sc_out< sc_logic > kernel_ce0;
    sc_in< sc_lv<32> > kernel_q0;
    sc_out< sc_lv<8> > out_matrix_address0;
    sc_out< sc_logic > out_matrix_ce0;
    sc_out< sc_logic > out_matrix_we0;
    sc_out< sc_lv<32> > out_matrix_d0;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    Conv2d_1(sc_module_name name);
    SC_HAS_PROCESS(Conv2d_1);

    ~Conv2d_1();

    sc_trace_file* mVcdFile;

    forw_back_fadd_32bkb<1,5,32,32,32>* forw_back_fadd_32bkb_U66;
    forw_back_fmul_32cud<1,4,32,32,32>* forw_back_fmul_32cud_U67;
    sc_signal< sc_lv<16> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > col_cast4_fu_159_p1;
    sc_signal< sc_lv<32> > col_cast4_reg_336;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<4> > i_fu_173_p2;
    sc_signal< sc_lv<4> > i_reg_345;
    sc_signal< sc_lv<9> > sub_ln30_fu_203_p2;
    sc_signal< sc_lv<9> > sub_ln30_reg_350;
    sc_signal< sc_lv<1> > icmp_ln28_fu_167_p2;
    sc_signal< sc_lv<32> > zext_ln31_fu_215_p1;
    sc_signal< sc_lv<32> > zext_ln31_reg_355;
    sc_signal< sc_lv<32> > zext_ln32_8_fu_227_p1;
    sc_signal< sc_lv<32> > zext_ln32_8_reg_360;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<4> > j_fu_237_p2;
    sc_signal< sc_lv<4> > j_reg_369;
    sc_signal< sc_lv<8> > out_matrix_addr_reg_374;
    sc_signal< sc_lv<1> > icmp_ln29_fu_231_p2;
    sc_signal< sc_lv<32> > zext_ln32_9_fu_263_p1;
    sc_signal< sc_lv<32> > zext_ln32_9_reg_379;
    sc_signal< sc_lv<32> > shl_ln33_fu_272_p2;
    sc_signal< sc_lv<32> > shl_ln33_reg_387;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > icmp_ln31_fu_267_p2;
    sc_signal< sc_lv<32> > sub_ln33_4_fu_295_p2;
    sc_signal< sc_lv<32> > sub_ln33_4_reg_392;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > icmp_ln32_fu_300_p2;
    sc_signal< sc_lv<32> > add_ln33_2_fu_315_p2;
    sc_signal< sc_lv<32> > add_ln33_2_reg_405;
    sc_signal< sc_lv<32> > row_6_fu_320_p2;
    sc_signal< sc_lv<32> > row_6_reg_410;
    sc_signal< sc_lv<32> > col_6_fu_326_p2;
    sc_signal< sc_lv<32> > input_matrix_load_reg_420;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > grp_fu_154_p2;
    sc_signal< sc_lv<32> > tmp_reg_435;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<32> > grp_fu_149_p2;
    sc_signal< sc_lv<32> > tmp_s_reg_440;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<4> > col_reg_84;
    sc_signal< sc_lv<4> > row_reg_95;
    sc_signal< sc_lv<32> > empty_158_reg_106;
    sc_signal< sc_lv<32> > col_0_reg_118;
    sc_signal< sc_lv<32> > empty_159_reg_128;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<32> > row_0_reg_140;
    sc_signal< sc_lv<64> > zext_ln30_fu_252_p1;
    sc_signal< sc_lv<64> > sext_ln33_fu_310_p1;
    sc_signal< sc_lv<64> > sext_ln33_1_fu_332_p1;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<8> > shl_ln_fu_179_p3;
    sc_signal< sc_lv<5> > shl_ln30_3_fu_191_p3;
    sc_signal< sc_lv<9> > zext_ln30_6_fu_187_p1;
    sc_signal< sc_lv<9> > zext_ln30_7_fu_199_p1;
    sc_signal< sc_lv<5> > col_cast3_fu_163_p1;
    sc_signal< sc_lv<5> > add_ln31_fu_209_p2;
    sc_signal< sc_lv<9> > zext_ln32_7_fu_223_p1;
    sc_signal< sc_lv<9> > add_ln30_fu_243_p2;
    sc_signal< sc_lv<32> > sext_ln30_fu_248_p1;
    sc_signal< sc_lv<5> > zext_ln32_fu_219_p1;
    sc_signal< sc_lv<5> > add_ln32_fu_257_p2;
    sc_signal< sc_lv<32> > sub_ln33_fu_278_p2;
    sc_signal< sc_lv<32> > shl_ln33_5_fu_283_p2;
    sc_signal< sc_lv<32> > sub_ln33_8_fu_289_p2;
    sc_signal< sc_lv<32> > add_ln33_fu_305_p2;
    sc_signal< sc_lv<16> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<16> ap_ST_fsm_state1;
    static const sc_lv<16> ap_ST_fsm_state2;
    static const sc_lv<16> ap_ST_fsm_state3;
    static const sc_lv<16> ap_ST_fsm_state4;
    static const sc_lv<16> ap_ST_fsm_state5;
    static const sc_lv<16> ap_ST_fsm_state6;
    static const sc_lv<16> ap_ST_fsm_state7;
    static const sc_lv<16> ap_ST_fsm_state8;
    static const sc_lv<16> ap_ST_fsm_state9;
    static const sc_lv<16> ap_ST_fsm_state10;
    static const sc_lv<16> ap_ST_fsm_state11;
    static const sc_lv<16> ap_ST_fsm_state12;
    static const sc_lv<16> ap_ST_fsm_state13;
    static const sc_lv<16> ap_ST_fsm_state14;
    static const sc_lv<16> ap_ST_fsm_state15;
    static const sc_lv<16> ap_ST_fsm_state16;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<4> ap_const_lv4_E;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<5> ap_const_lv5_3;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_add_ln30_fu_243_p2();
    void thread_add_ln31_fu_209_p2();
    void thread_add_ln32_fu_257_p2();
    void thread_add_ln33_2_fu_315_p2();
    void thread_add_ln33_fu_305_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_col_6_fu_326_p2();
    void thread_col_cast3_fu_163_p1();
    void thread_col_cast4_fu_159_p1();
    void thread_i_fu_173_p2();
    void thread_icmp_ln28_fu_167_p2();
    void thread_icmp_ln29_fu_231_p2();
    void thread_icmp_ln31_fu_267_p2();
    void thread_icmp_ln32_fu_300_p2();
    void thread_input_matrix_address0();
    void thread_input_matrix_ce0();
    void thread_j_fu_237_p2();
    void thread_kernel_address0();
    void thread_kernel_ce0();
    void thread_out_matrix_address0();
    void thread_out_matrix_ce0();
    void thread_out_matrix_d0();
    void thread_out_matrix_we0();
    void thread_row_6_fu_320_p2();
    void thread_sext_ln30_fu_248_p1();
    void thread_sext_ln33_1_fu_332_p1();
    void thread_sext_ln33_fu_310_p1();
    void thread_shl_ln30_3_fu_191_p3();
    void thread_shl_ln33_5_fu_283_p2();
    void thread_shl_ln33_fu_272_p2();
    void thread_shl_ln_fu_179_p3();
    void thread_sub_ln30_fu_203_p2();
    void thread_sub_ln33_4_fu_295_p2();
    void thread_sub_ln33_8_fu_289_p2();
    void thread_sub_ln33_fu_278_p2();
    void thread_zext_ln30_6_fu_187_p1();
    void thread_zext_ln30_7_fu_199_p1();
    void thread_zext_ln30_fu_252_p1();
    void thread_zext_ln31_fu_215_p1();
    void thread_zext_ln32_7_fu_223_p1();
    void thread_zext_ln32_8_fu_227_p1();
    void thread_zext_ln32_9_fu_263_p1();
    void thread_zext_ln32_fu_219_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
