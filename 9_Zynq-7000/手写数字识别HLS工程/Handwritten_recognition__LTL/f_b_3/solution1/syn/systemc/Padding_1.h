// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Padding_1_HH_
#define _Padding_1_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct Padding_1 : public sc_module {
    // Port declarations 17
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<10> > input_matrix_address0;
    sc_out< sc_logic > input_matrix_ce0;
    sc_in< sc_lv<32> > input_matrix_q0;
    sc_out< sc_lv<10> > output_matrix_address0;
    sc_out< sc_logic > output_matrix_ce0;
    sc_out< sc_logic > output_matrix_we0;
    sc_out< sc_lv<32> > output_matrix_d0;
    sc_out< sc_lv<10> > output_matrix_address1;
    sc_out< sc_logic > output_matrix_ce1;
    sc_out< sc_logic > output_matrix_we1;
    sc_out< sc_lv<32> > output_matrix_d1;


    // Module declarations
    Padding_1(sc_module_name name);
    SC_HAS_PROCESS(Padding_1);

    ~Padding_1();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<10> > indvar_flatten_reg_108;
    sc_signal< sc_lv<5> > i_0_reg_119;
    sc_signal< sc_lv<5> > j_0_reg_130;
    sc_signal< sc_lv<1> > icmp_ln89_fu_233_p2;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<10> > add_ln89_fu_239_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<5> > select_ln89_fu_391_p3;
    sc_signal< sc_lv<1> > and_ln91_1_fu_433_p2;
    sc_signal< sc_lv<1> > and_ln91_1_reg_497;
    sc_signal< sc_lv<11> > grp_fu_141_p2;
    sc_signal< sc_lv<11> > add_ln92_3_reg_506;
    sc_signal< sc_lv<5> > j_fu_469_p2;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_lv<64> > zext_ln94_fu_443_p1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<64> > sext_ln92_fu_464_p1;
    sc_signal< sc_lv<64> > zext_ln92_fu_478_p1;
    sc_signal< sc_lv<11> > sub_ln94_mid2_fu_299_p3;
    sc_signal< sc_lv<11> > zext_ln90_mid2_cast_fu_386_p1;
    sc_signal< sc_lv<10> > shl_ln_fu_149_p3;
    sc_signal< sc_lv<7> > shl_ln94_1_fu_161_p3;
    sc_signal< sc_lv<11> > zext_ln94_1_fu_157_p1;
    sc_signal< sc_lv<11> > zext_ln94_2_fu_169_p1;
    sc_signal< sc_lv<6> > i_0_cast7_fu_145_p1;
    sc_signal< sc_lv<6> > add_ln92_fu_185_p2;
    sc_signal< sc_lv<9> > shl_ln92_1_fu_199_p3;
    sc_signal< sc_lv<11> > shl_ln3_fu_191_p3;
    sc_signal< sc_lv<11> > sext_ln92_1_fu_207_p1;
    sc_signal< sc_lv<4> > tmp_fu_217_p4;
    sc_signal< sc_lv<1> > icmp_ln90_fu_251_p2;
    sc_signal< sc_lv<5> > i_fu_245_p2;
    sc_signal< sc_lv<10> > shl_ln94_mid1_fu_269_p3;
    sc_signal< sc_lv<7> > shl_ln94_1_mid1_fu_281_p3;
    sc_signal< sc_lv<11> > zext_ln94_3_fu_277_p1;
    sc_signal< sc_lv<11> > zext_ln94_4_fu_289_p1;
    sc_signal< sc_lv<11> > sub_ln94_1_fu_293_p2;
    sc_signal< sc_lv<11> > sub_ln94_fu_173_p2;
    sc_signal< sc_lv<1> > icmp_ln91_2_fu_308_p2;
    sc_signal< sc_lv<1> > icmp_ln91_fu_179_p2;
    sc_signal< sc_lv<6> > i_0_cast7_mid1_fu_265_p1;
    sc_signal< sc_lv<6> > add_ln92_4_fu_322_p2;
    sc_signal< sc_lv<9> > shl_ln92_1_mid1_fu_336_p3;
    sc_signal< sc_lv<11> > shl_ln92_mid1_fu_328_p3;
    sc_signal< sc_lv<11> > sext_ln92_3_fu_344_p1;
    sc_signal< sc_lv<11> > sub_ln92_1_fu_348_p2;
    sc_signal< sc_lv<11> > sub_ln92_fu_211_p2;
    sc_signal< sc_lv<4> > tmp_1_fu_362_p4;
    sc_signal< sc_lv<1> > icmp_ln91_4_fu_372_p2;
    sc_signal< sc_lv<1> > icmp_ln91_1_fu_227_p2;
    sc_signal< sc_lv<5> > j_0_mid2_fu_257_p3;
    sc_signal< sc_lv<4> > tmp_2_fu_399_p4;
    sc_signal< sc_lv<1> > icmp_ln91_5_fu_409_p2;
    sc_signal< sc_lv<1> > icmp_ln91_1_mid2_fu_378_p3;
    sc_signal< sc_lv<1> > icmp_ln91_3_fu_415_p2;
    sc_signal< sc_lv<1> > icmp_ln91_mid2_fu_314_p3;
    sc_signal< sc_lv<1> > and_ln91_2_fu_427_p2;
    sc_signal< sc_lv<1> > and_ln91_fu_421_p2;
    sc_signal< sc_lv<32> > sext_ln94_fu_439_p1;
    sc_signal< sc_lv<5> > add_ln92_1_fu_448_p2;
    sc_signal< sc_lv<11> > zext_ln92_1_fu_454_p1;
    sc_signal< sc_lv<11> > sub_ln92_mid2_fu_354_p3;
    sc_signal< sc_lv<11> > add_ln92_2_fu_458_p2;
    sc_signal< sc_lv<32> > sext_ln92_2_fu_475_p1;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state4;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<5> ap_const_lv5_1A;
    static const sc_lv<6> ap_const_lv6_3E;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<10> ap_const_lv10_310;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<5> ap_const_lv5_1C;
    static const sc_lv<5> ap_const_lv5_1E;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln89_fu_239_p2();
    void thread_add_ln92_1_fu_448_p2();
    void thread_add_ln92_2_fu_458_p2();
    void thread_add_ln92_4_fu_322_p2();
    void thread_add_ln92_fu_185_p2();
    void thread_and_ln91_1_fu_433_p2();
    void thread_and_ln91_2_fu_427_p2();
    void thread_and_ln91_fu_421_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state4();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_grp_fu_141_p2();
    void thread_i_0_cast7_fu_145_p1();
    void thread_i_0_cast7_mid1_fu_265_p1();
    void thread_i_fu_245_p2();
    void thread_icmp_ln89_fu_233_p2();
    void thread_icmp_ln90_fu_251_p2();
    void thread_icmp_ln91_1_fu_227_p2();
    void thread_icmp_ln91_1_mid2_fu_378_p3();
    void thread_icmp_ln91_2_fu_308_p2();
    void thread_icmp_ln91_3_fu_415_p2();
    void thread_icmp_ln91_4_fu_372_p2();
    void thread_icmp_ln91_5_fu_409_p2();
    void thread_icmp_ln91_fu_179_p2();
    void thread_icmp_ln91_mid2_fu_314_p3();
    void thread_input_matrix_address0();
    void thread_input_matrix_ce0();
    void thread_j_0_mid2_fu_257_p3();
    void thread_j_fu_469_p2();
    void thread_output_matrix_address0();
    void thread_output_matrix_address1();
    void thread_output_matrix_ce0();
    void thread_output_matrix_ce1();
    void thread_output_matrix_d0();
    void thread_output_matrix_d1();
    void thread_output_matrix_we0();
    void thread_output_matrix_we1();
    void thread_select_ln89_fu_391_p3();
    void thread_sext_ln92_1_fu_207_p1();
    void thread_sext_ln92_2_fu_475_p1();
    void thread_sext_ln92_3_fu_344_p1();
    void thread_sext_ln92_fu_464_p1();
    void thread_sext_ln94_fu_439_p1();
    void thread_shl_ln3_fu_191_p3();
    void thread_shl_ln92_1_fu_199_p3();
    void thread_shl_ln92_1_mid1_fu_336_p3();
    void thread_shl_ln92_mid1_fu_328_p3();
    void thread_shl_ln94_1_fu_161_p3();
    void thread_shl_ln94_1_mid1_fu_281_p3();
    void thread_shl_ln94_mid1_fu_269_p3();
    void thread_shl_ln_fu_149_p3();
    void thread_sub_ln92_1_fu_348_p2();
    void thread_sub_ln92_fu_211_p2();
    void thread_sub_ln92_mid2_fu_354_p3();
    void thread_sub_ln94_1_fu_293_p2();
    void thread_sub_ln94_fu_173_p2();
    void thread_sub_ln94_mid2_fu_299_p3();
    void thread_tmp_1_fu_362_p4();
    void thread_tmp_2_fu_399_p4();
    void thread_tmp_fu_217_p4();
    void thread_zext_ln90_mid2_cast_fu_386_p1();
    void thread_zext_ln92_1_fu_454_p1();
    void thread_zext_ln92_fu_478_p1();
    void thread_zext_ln94_1_fu_157_p1();
    void thread_zext_ln94_2_fu_169_p1();
    void thread_zext_ln94_3_fu_277_p1();
    void thread_zext_ln94_4_fu_289_p1();
    void thread_zext_ln94_fu_443_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
