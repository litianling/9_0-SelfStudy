// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Conv2d_7_HH_
#define _Conv2d_7_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "forw_back_fadd_32bkb.h"
#include "forw_back_fmul_32cud.h"

namespace ap_rtl {

struct Conv2d_7 : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<10> > input_matrix_address0;
    sc_out< sc_logic > input_matrix_ce0;
    sc_in< sc_lv<32> > input_matrix_q0;
    sc_out< sc_lv<4> > kernel_address0;
    sc_out< sc_logic > kernel_ce0;
    sc_in< sc_lv<32> > kernel_q0;
    sc_out< sc_lv<10> > out_matrix_address0;
    sc_out< sc_logic > out_matrix_ce0;
    sc_out< sc_logic > out_matrix_we0;
    sc_out< sc_lv<32> > out_matrix_d0;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    Conv2d_7(sc_module_name name);
    SC_HAS_PROCESS(Conv2d_7);

    ~Conv2d_7();

    sc_trace_file* mVcdFile;

    forw_back_fadd_32bkb<1,4,32,32,32>* forw_back_fadd_32bkb_U1;
    forw_back_fmul_32cud<1,3,32,32,32>* forw_back_fmul_32cud_U2;
    sc_signal< sc_lv<7> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<64> > indvar_flatten_reg_201;
    sc_signal< sc_lv<32> > col_0_reg_212;
    sc_signal< sc_lv<32> > empty_reg_221;
    sc_signal< sc_lv<32> > row_0_reg_233;
    sc_signal< sc_lv<1> > icmp_ln31_fu_281_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<10> > add_ln31_fu_287_p2;
    sc_signal< sc_lv<10> > add_ln31_reg_723;
    sc_signal< sc_lv<32> > select_ln31_fu_323_p3;
    sc_signal< sc_lv<32> > select_ln31_reg_728;
    sc_signal< sc_lv<32> > select_ln31_1_fu_331_p3;
    sc_signal< sc_lv<32> > select_ln31_1_reg_733;
    sc_signal< sc_lv<32> > select_ln31_2_fu_339_p3;
    sc_signal< sc_lv<32> > select_ln31_2_reg_738;
    sc_signal< sc_lv<5> > select_ln31_3_fu_347_p3;
    sc_signal< sc_lv<5> > select_ln31_3_reg_743;
    sc_signal< sc_lv<5> > select_ln31_6_fu_403_p3;
    sc_signal< sc_lv<5> > select_ln31_6_reg_748;
    sc_signal< sc_lv<32> > zext_ln31_fu_411_p1;
    sc_signal< sc_lv<32> > zext_ln31_reg_753;
    sc_signal< sc_lv<32> > select_ln31_8_fu_453_p3;
    sc_signal< sc_lv<32> > select_ln31_8_reg_760;
    sc_signal< sc_lv<32> > select_ln31_9_fu_461_p3;
    sc_signal< sc_lv<32> > select_ln31_9_reg_765;
    sc_signal< sc_lv<32> > select_ln31_10_fu_469_p3;
    sc_signal< sc_lv<32> > select_ln31_10_reg_770;
    sc_signal< sc_lv<32> > row_cast_fu_501_p1;
    sc_signal< sc_lv<32> > row_cast_reg_775;
    sc_signal< sc_lv<10> > out_matrix_addr_reg_782;
    sc_signal< sc_lv<32> > zext_ln35_fu_526_p1;
    sc_signal< sc_lv<32> > zext_ln35_reg_787;
    sc_signal< sc_lv<64> > mul_ln33_fu_538_p2;
    sc_signal< sc_lv<64> > mul_ln33_reg_792;
    sc_signal< sc_lv<1> > icmp_ln34_fu_579_p2;
    sc_signal< sc_lv<1> > icmp_ln34_reg_797;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state11_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln34_reg_797_pp0_iter1_reg;
    sc_signal< sc_lv<1> > icmp_ln34_reg_797_pp0_iter2_reg;
    sc_signal< sc_lv<64> > add_ln34_fu_584_p2;
    sc_signal< sc_lv<64> > add_ln34_reg_801;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<32> > select_ln35_fu_601_p3;
    sc_signal< sc_lv<32> > select_ln35_reg_806;
    sc_signal< sc_lv<32> > select_ln34_fu_664_p3;
    sc_signal< sc_lv<32> > select_ln34_reg_811;
    sc_signal< sc_lv<32> > input_matrix_load_reg_826;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< bool > ap_block_state4_pp0_stage1_iter0;
    sc_signal< bool > ap_block_state8_pp0_stage1_iter1;
    sc_signal< bool > ap_block_state12_pp0_stage1_iter2;
    sc_signal< bool > ap_block_pp0_stage1_11001;
    sc_signal< sc_lv<32> > kernel_load_reg_831;
    sc_signal< sc_lv<32> > row_1_fu_694_p2;
    sc_signal< sc_lv<32> > row_1_reg_836;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage3;
    sc_signal< bool > ap_block_state6_pp0_stage3_iter0;
    sc_signal< bool > ap_block_state10_pp0_stage3_iter1;
    sc_signal< bool > ap_block_pp0_stage3_11001;
    sc_signal< sc_lv<32> > grp_fu_247_p2;
    sc_signal< sc_lv<32> > tmp_reg_841;
    sc_signal< sc_lv<32> > grp_fu_242_p2;
    sc_signal< sc_lv<32> > tmp_s_reg_846;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<5> > j_fu_699_p2;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<32> > add_ln32_2_fu_704_p2;
    sc_signal< sc_lv<32> > add_ln32_3_fu_709_p2;
    sc_signal< sc_lv<32> > add_ln32_4_fu_714_p2;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage3_subdone;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< sc_lv<10> > indvar_flatten42_reg_102;
    sc_signal< sc_lv<32> > phi_ln31_reg_113;
    sc_signal< sc_lv<32> > phi_ln31_1_reg_124;
    sc_signal< sc_lv<32> > indvars_iv12_reg_135;
    sc_signal< sc_lv<5> > col_reg_146;
    sc_signal< sc_lv<32> > phi_ln32_reg_157;
    sc_signal< sc_lv<32> > phi_ln32_1_reg_168;
    sc_signal< sc_lv<32> > indvars_iv19_reg_179;
    sc_signal< sc_lv<5> > row_reg_190;
    sc_signal< sc_lv<64> > ap_phi_mux_indvar_flatten_phi_fu_205_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<32> > ap_phi_mux_col_0_phi_fu_215_p4;
    sc_signal< sc_lv<32> > ap_phi_mux_empty_phi_fu_225_p4;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< sc_lv<32> > ap_phi_mux_row_0_phi_fu_236_p4;
    sc_signal< sc_lv<64> > zext_ln33_fu_515_p1;
    sc_signal< sc_lv<64> > sext_ln36_fu_678_p1;
    sc_signal< sc_lv<64> > sext_ln36_1_fu_689_p1;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage2;
    sc_signal< bool > ap_block_pp0_stage2;
    sc_signal< sc_lv<10> > shl_ln_fu_251_p3;
    sc_signal< sc_lv<7> > shl_ln33_1_fu_263_p3;
    sc_signal< sc_lv<11> > zext_ln33_1_fu_259_p1;
    sc_signal< sc_lv<11> > zext_ln33_2_fu_271_p1;
    sc_signal< sc_lv<1> > icmp_ln32_fu_317_p2;
    sc_signal< sc_lv<32> > add_ln31_2_fu_299_p2;
    sc_signal< sc_lv<32> > add_ln31_3_fu_305_p2;
    sc_signal< sc_lv<1> > icmp_ln31_1_fu_355_p2;
    sc_signal< sc_lv<32> > select_ln31_4_fu_361_p3;
    sc_signal< sc_lv<32> > add_ln31_4_fu_311_p2;
    sc_signal< sc_lv<1> > icmp_ln31_2_fu_375_p2;
    sc_signal< sc_lv<32> > select_ln3134_fu_381_p3;
    sc_signal< sc_lv<32> > add_ln31_5_fu_369_p2;
    sc_signal< sc_lv<32> > add_ln3133_fu_389_p2;
    sc_signal< sc_lv<5> > i_fu_293_p2;
    sc_signal< sc_lv<10> > shl_ln33_mid1_fu_415_p3;
    sc_signal< sc_lv<7> > shl_ln33_1_mid1_fu_427_p3;
    sc_signal< sc_lv<11> > zext_ln33_3_fu_423_p1;
    sc_signal< sc_lv<11> > zext_ln33_4_fu_435_p1;
    sc_signal< sc_lv<11> > sub_ln33_1_fu_439_p2;
    sc_signal< sc_lv<11> > sub_ln33_fu_275_p2;
    sc_signal< sc_lv<1> > icmp_ln32_1_fu_477_p2;
    sc_signal< sc_lv<32> > select_ln32_fu_483_p3;
    sc_signal< sc_lv<11> > row_cast1_fu_497_p1;
    sc_signal< sc_lv<11> > select_ln31_7_fu_445_p3;
    sc_signal< sc_lv<11> > add_ln33_fu_505_p2;
    sc_signal< sc_lv<32> > sext_ln33_fu_511_p1;
    sc_signal< sc_lv<5> > add_ln35_fu_520_p2;
    sc_signal< sc_lv<32> > select_ln31_5_fu_395_p3;
    sc_signal< sc_lv<32> > add_ln32_fu_491_p2;
    sc_signal< sc_lv<32> > mul_ln33_fu_538_p0;
    sc_signal< sc_lv<32> > mul_ln33_fu_538_p1;
    sc_signal< sc_lv<32> > shl_ln36_fu_544_p2;
    sc_signal< sc_lv<32> > shl_ln36_1_fu_550_p2;
    sc_signal< sc_lv<32> > sub_ln36_fu_562_p2;
    sc_signal< sc_lv<32> > shl_ln36_2_fu_567_p2;
    sc_signal< sc_lv<1> > icmp_ln35_fu_596_p2;
    sc_signal< sc_lv<32> > col_2_fu_590_p2;
    sc_signal< sc_lv<32> > shl_ln36_3_fu_608_p2;
    sc_signal< sc_lv<32> > shl_ln36_4_fu_614_p2;
    sc_signal< sc_lv<32> > sub_ln36_1_fu_556_p2;
    sc_signal< sc_lv<32> > sub_ln36_3_fu_620_p2;
    sc_signal< sc_lv<32> > sub_ln36_4_fu_634_p2;
    sc_signal< sc_lv<32> > shl_ln36_5_fu_639_p2;
    sc_signal< sc_lv<32> > sub_ln36_2_fu_573_p2;
    sc_signal< sc_lv<32> > sub_ln36_5_fu_645_p2;
    sc_signal< sc_lv<32> > select_ln35_2_fu_651_p3;
    sc_signal< sc_lv<32> > select_ln35_1_fu_626_p3;
    sc_signal< sc_lv<32> > add_ln36_fu_672_p2;
    sc_signal< sc_lv<32> > sub_ln35_fu_659_p2;
    sc_signal< sc_lv<32> > add_ln36_1_fu_683_p2;
    sc_signal< bool > ap_block_pp0_stage3;
    sc_signal< sc_lv<7> > ap_NS_fsm;
    sc_signal< bool > ap_block_state5_pp0_stage2_iter0;
    sc_signal< bool > ap_block_state9_pp0_stage2_iter1;
    sc_signal< bool > ap_block_pp0_stage2_subdone;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_lv<64> > mul_ln33_fu_538_p00;
    sc_signal< sc_lv<64> > mul_ln33_fu_538_p10;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<7> ap_ST_fsm_state1;
    static const sc_lv<7> ap_ST_fsm_state2;
    static const sc_lv<7> ap_ST_fsm_pp0_stage0;
    static const sc_lv<7> ap_ST_fsm_pp0_stage1;
    static const sc_lv<7> ap_ST_fsm_pp0_stage2;
    static const sc_lv<7> ap_ST_fsm_pp0_stage3;
    static const sc_lv<7> ap_ST_fsm_state13;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<10> ap_const_lv10_310;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<32> ap_const_lv32_FFFFFFFF;
    static const sc_lv<5> ap_const_lv5_1C;
    static const sc_lv<5> ap_const_lv5_3;
    static const sc_lv<64> ap_const_lv64_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_add_ln3133_fu_389_p2();
    void thread_add_ln31_2_fu_299_p2();
    void thread_add_ln31_3_fu_305_p2();
    void thread_add_ln31_4_fu_311_p2();
    void thread_add_ln31_5_fu_369_p2();
    void thread_add_ln31_fu_287_p2();
    void thread_add_ln32_2_fu_704_p2();
    void thread_add_ln32_3_fu_709_p2();
    void thread_add_ln32_4_fu_714_p2();
    void thread_add_ln32_fu_491_p2();
    void thread_add_ln33_fu_505_p2();
    void thread_add_ln34_fu_584_p2();
    void thread_add_ln35_fu_520_p2();
    void thread_add_ln36_1_fu_683_p2();
    void thread_add_ln36_fu_672_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_pp0_stage2();
    void thread_ap_CS_fsm_pp0_stage3();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state2();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp0_stage1();
    void thread_ap_block_pp0_stage1_11001();
    void thread_ap_block_pp0_stage1_subdone();
    void thread_ap_block_pp0_stage2();
    void thread_ap_block_pp0_stage2_subdone();
    void thread_ap_block_pp0_stage3();
    void thread_ap_block_pp0_stage3_11001();
    void thread_ap_block_pp0_stage3_subdone();
    void thread_ap_block_state10_pp0_stage3_iter1();
    void thread_ap_block_state11_pp0_stage0_iter2();
    void thread_ap_block_state12_pp0_stage1_iter2();
    void thread_ap_block_state3_pp0_stage0_iter0();
    void thread_ap_block_state4_pp0_stage1_iter0();
    void thread_ap_block_state5_pp0_stage2_iter0();
    void thread_ap_block_state6_pp0_stage3_iter0();
    void thread_ap_block_state7_pp0_stage0_iter1();
    void thread_ap_block_state8_pp0_stage1_iter1();
    void thread_ap_block_state9_pp0_stage2_iter1();
    void thread_ap_condition_pp0_exit_iter0_state3();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_col_0_phi_fu_215_p4();
    void thread_ap_phi_mux_empty_phi_fu_225_p4();
    void thread_ap_phi_mux_indvar_flatten_phi_fu_205_p4();
    void thread_ap_phi_mux_row_0_phi_fu_236_p4();
    void thread_ap_ready();
    void thread_col_2_fu_590_p2();
    void thread_i_fu_293_p2();
    void thread_icmp_ln31_1_fu_355_p2();
    void thread_icmp_ln31_2_fu_375_p2();
    void thread_icmp_ln31_fu_281_p2();
    void thread_icmp_ln32_1_fu_477_p2();
    void thread_icmp_ln32_fu_317_p2();
    void thread_icmp_ln34_fu_579_p2();
    void thread_icmp_ln35_fu_596_p2();
    void thread_input_matrix_address0();
    void thread_input_matrix_ce0();
    void thread_j_fu_699_p2();
    void thread_kernel_address0();
    void thread_kernel_ce0();
    void thread_mul_ln33_fu_538_p0();
    void thread_mul_ln33_fu_538_p00();
    void thread_mul_ln33_fu_538_p1();
    void thread_mul_ln33_fu_538_p10();
    void thread_mul_ln33_fu_538_p2();
    void thread_out_matrix_address0();
    void thread_out_matrix_ce0();
    void thread_out_matrix_d0();
    void thread_out_matrix_we0();
    void thread_row_1_fu_694_p2();
    void thread_row_cast1_fu_497_p1();
    void thread_row_cast_fu_501_p1();
    void thread_select_ln3134_fu_381_p3();
    void thread_select_ln31_10_fu_469_p3();
    void thread_select_ln31_1_fu_331_p3();
    void thread_select_ln31_2_fu_339_p3();
    void thread_select_ln31_3_fu_347_p3();
    void thread_select_ln31_4_fu_361_p3();
    void thread_select_ln31_5_fu_395_p3();
    void thread_select_ln31_6_fu_403_p3();
    void thread_select_ln31_7_fu_445_p3();
    void thread_select_ln31_8_fu_453_p3();
    void thread_select_ln31_9_fu_461_p3();
    void thread_select_ln31_fu_323_p3();
    void thread_select_ln32_fu_483_p3();
    void thread_select_ln34_fu_664_p3();
    void thread_select_ln35_1_fu_626_p3();
    void thread_select_ln35_2_fu_651_p3();
    void thread_select_ln35_fu_601_p3();
    void thread_sext_ln33_fu_511_p1();
    void thread_sext_ln36_1_fu_689_p1();
    void thread_sext_ln36_fu_678_p1();
    void thread_shl_ln33_1_fu_263_p3();
    void thread_shl_ln33_1_mid1_fu_427_p3();
    void thread_shl_ln33_mid1_fu_415_p3();
    void thread_shl_ln36_1_fu_550_p2();
    void thread_shl_ln36_2_fu_567_p2();
    void thread_shl_ln36_3_fu_608_p2();
    void thread_shl_ln36_4_fu_614_p2();
    void thread_shl_ln36_5_fu_639_p2();
    void thread_shl_ln36_fu_544_p2();
    void thread_shl_ln_fu_251_p3();
    void thread_sub_ln33_1_fu_439_p2();
    void thread_sub_ln33_fu_275_p2();
    void thread_sub_ln35_fu_659_p2();
    void thread_sub_ln36_1_fu_556_p2();
    void thread_sub_ln36_2_fu_573_p2();
    void thread_sub_ln36_3_fu_620_p2();
    void thread_sub_ln36_4_fu_634_p2();
    void thread_sub_ln36_5_fu_645_p2();
    void thread_sub_ln36_fu_562_p2();
    void thread_zext_ln31_fu_411_p1();
    void thread_zext_ln33_1_fu_259_p1();
    void thread_zext_ln33_2_fu_271_p1();
    void thread_zext_ln33_3_fu_423_p1();
    void thread_zext_ln33_4_fu_435_p1();
    void thread_zext_ln33_fu_515_p1();
    void thread_zext_ln35_fu_526_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
