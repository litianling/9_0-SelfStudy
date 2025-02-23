// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Padding_HH_
#define _Padding_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct Padding : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<8> > input_matrix_address0;
    sc_out< sc_logic > input_matrix_ce0;
    sc_in< sc_lv<32> > input_matrix_q0;
    sc_out< sc_lv<8> > output_matrix_address0;
    sc_out< sc_logic > output_matrix_ce0;
    sc_out< sc_logic > output_matrix_we0;
    sc_out< sc_lv<32> > output_matrix_d0;


    // Module declarations
    Padding(sc_module_name name);
    SC_HAS_PROCESS(Padding);

    ~Padding();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<5> > i_fu_114_p2;
    sc_signal< sc_lv<5> > i_reg_271;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<8> > shl_ln_fu_124_p3;
    sc_signal< sc_lv<8> > shl_ln_reg_276;
    sc_signal< sc_lv<1> > icmp_ln113_fu_108_p2;
    sc_signal< sc_lv<1> > icmp_ln115_fu_136_p2;
    sc_signal< sc_lv<1> > icmp_ln115_reg_281;
    sc_signal< sc_lv<9> > sub_ln116_fu_154_p2;
    sc_signal< sc_lv<9> > sub_ln116_reg_286;
    sc_signal< sc_lv<1> > icmp_ln115_1_fu_170_p2;
    sc_signal< sc_lv<1> > icmp_ln115_1_reg_291;
    sc_signal< sc_lv<5> > j_fu_191_p2;
    sc_signal< sc_lv<5> > j_reg_299;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > and_ln115_2_fu_229_p2;
    sc_signal< sc_lv<1> > and_ln115_2_reg_304;
    sc_signal< sc_lv<1> > icmp_ln114_fu_185_p2;
    sc_signal< sc_lv<8> > grp_fu_104_p2;
    sc_signal< sc_lv<8> > add_ln116_2_reg_313;
    sc_signal< sc_lv<5> > i_0_reg_82;
    sc_signal< sc_lv<5> > j_0_reg_93;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<64> > zext_ln118_fu_235_p1;
    sc_signal< sc_lv<64> > zext_ln116_fu_259_p1;
    sc_signal< sc_lv<64> > zext_ln116_1_fu_264_p1;
    sc_signal< sc_lv<8> > zext_ln114_fu_176_p1;
    sc_signal< sc_lv<4> > trunc_ln118_fu_120_p1;
    sc_signal< sc_lv<6> > shl_ln5_fu_142_p3;
    sc_signal< sc_lv<9> > zext_ln118_1_fu_132_p1;
    sc_signal< sc_lv<9> > zext_ln116_2_fu_150_p1;
    sc_signal< sc_lv<4> > tmp_1_fu_160_p4;
    sc_signal< sc_lv<4> > tmp_2_fu_197_p4;
    sc_signal< sc_lv<1> > icmp_ln115_2_fu_207_p2;
    sc_signal< sc_lv<1> > icmp_ln115_3_fu_213_p2;
    sc_signal< sc_lv<1> > and_ln115_1_fu_224_p2;
    sc_signal< sc_lv<1> > and_ln115_fu_219_p2;
    sc_signal< sc_lv<6> > zext_ln114_1_fu_181_p1;
    sc_signal< sc_lv<6> > add_ln116_fu_240_p2;
    sc_signal< sc_lv<9> > sext_ln116_fu_246_p1;
    sc_signal< sc_lv<9> > add_ln116_1_fu_250_p2;
    sc_signal< sc_lv<32> > sext_ln116_1_fu_255_p1;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_state3;
    static const sc_lv<4> ap_ST_fsm_state4;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<5> ap_const_lv5_E;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<6> ap_const_lv6_26;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln116_1_fu_250_p2();
    void thread_add_ln116_fu_240_p2();
    void thread_and_ln115_1_fu_224_p2();
    void thread_and_ln115_2_fu_229_p2();
    void thread_and_ln115_fu_219_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_grp_fu_104_p2();
    void thread_i_fu_114_p2();
    void thread_icmp_ln113_fu_108_p2();
    void thread_icmp_ln114_fu_185_p2();
    void thread_icmp_ln115_1_fu_170_p2();
    void thread_icmp_ln115_2_fu_207_p2();
    void thread_icmp_ln115_3_fu_213_p2();
    void thread_icmp_ln115_fu_136_p2();
    void thread_input_matrix_address0();
    void thread_input_matrix_ce0();
    void thread_j_fu_191_p2();
    void thread_output_matrix_address0();
    void thread_output_matrix_ce0();
    void thread_output_matrix_d0();
    void thread_output_matrix_we0();
    void thread_sext_ln116_1_fu_255_p1();
    void thread_sext_ln116_fu_246_p1();
    void thread_shl_ln5_fu_142_p3();
    void thread_shl_ln_fu_124_p3();
    void thread_sub_ln116_fu_154_p2();
    void thread_tmp_1_fu_160_p4();
    void thread_tmp_2_fu_197_p4();
    void thread_trunc_ln118_fu_120_p1();
    void thread_zext_ln114_1_fu_181_p1();
    void thread_zext_ln114_fu_176_p1();
    void thread_zext_ln116_1_fu_264_p1();
    void thread_zext_ln116_2_fu_150_p1();
    void thread_zext_ln116_fu_259_p1();
    void thread_zext_ln118_1_fu_132_p1();
    void thread_zext_ln118_fu_235_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
