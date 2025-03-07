-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MaxPool2d is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    output_matrix_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    output_matrix_ce0 : OUT STD_LOGIC;
    output_matrix_we0 : OUT STD_LOGIC;
    output_matrix_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    locate_matrix_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    locate_matrix_ce0 : OUT STD_LOGIC;
    locate_matrix_we0 : OUT STD_LOGIC;
    locate_matrix_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    conv_out_2_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    conv_out_2_ce0 : OUT STD_LOGIC;
    conv_out_2_q0 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of MaxPool2d is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (15 downto 0) := "0000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (15 downto 0) := "0000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (15 downto 0) := "0000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (15 downto 0) := "0000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (15 downto 0) := "0000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (15 downto 0) := "0000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (15 downto 0) := "0001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (15 downto 0) := "0010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (15 downto 0) := "0100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (15 downto 0) := "1000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_FFFFFC19 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111110000011001";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv4_2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv23_0 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000000000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv9_181 : STD_LOGIC_VECTOR (8 downto 0) := "110000001";
    constant ap_const_lv8_7F : STD_LOGIC_VECTOR (7 downto 0) := "01111111";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_37 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110111";
    constant ap_const_lv5_2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal i_fu_213_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_reg_572 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal zext_ln41_fu_227_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln41_reg_577 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln38_fu_207_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln41_4_fu_241_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln41_4_reg_582 : STD_LOGIC_VECTOR (31 downto 0);
    signal sub_ln45_fu_257_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal sub_ln45_reg_587 : STD_LOGIC_VECTOR (6 downto 0);
    signal j_fu_273_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal j_reg_595 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal zext_ln42_fu_287_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln42_reg_600 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln39_fu_267_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln42_2_fu_297_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln42_2_reg_605 : STD_LOGIC_VECTOR (31 downto 0);
    signal output_matrix_addr_reg_610 : STD_LOGIC_VECTOR (5 downto 0);
    signal locate_matrix_addr_reg_615 : STD_LOGIC_VECTOR (5 downto 0);
    signal sub_ln43_fu_333_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal sub_ln43_reg_623 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal icmp_ln41_fu_316_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal col_2_fu_344_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal icmp_ln42_fu_339_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln43_fu_350_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln43_reg_636 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal grp_fu_195_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_s_reg_646 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_out_2_load_reg_652 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal icmp_ln43_5_fu_377_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln43_5_reg_658 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln43_6_fu_383_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln43_6_reg_663 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_V_fu_392_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_V_reg_668 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal tmp_V_2_fu_402_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal tmp_V_2_reg_674 : STD_LOGIC_VECTOR (22 downto 0);
    signal and_ln43_2_fu_434_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln43_2_reg_679 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_s_reg_683 : STD_LOGIC_VECTOR (0 downto 0);
    signal row_2_fu_563_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state13 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state13 : signal is "none";
    signal i_0_reg_117 : STD_LOGIC_VECTOR (2 downto 0);
    signal j_0_reg_128 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state16 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state16 : signal is "none";
    signal max_num_0_reg_139 : STD_LOGIC_VECTOR (31 downto 0);
    signal col_0_reg_151 : STD_LOGIC_VECTOR (31 downto 0);
    signal max_num_1_reg_161 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_phi_mux_max_num_2_phi_fu_187_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal row_0_reg_173 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Val2_12_fu_555_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal max_num_2_reg_183 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln45_fu_310_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sext_ln43_fu_355_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_195_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal col_fu_219_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln41_fu_235_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln_fu_245_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln45_2_fu_253_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln41_3_fu_231_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal row_fu_279_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln42_fu_291_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal j_0_cast3_fu_263_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln45_fu_301_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal sext_ln45_fu_306_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal shl_ln43_fu_321_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal shl_ln43_2_fu_327_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal bitcast_ln43_2_fu_360_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_14_fu_363_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln43_2_fu_373_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal p_Val2_s_fu_389_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln43_4_fu_412_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln43_fu_406_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln43_fu_418_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln43_2_fu_424_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln43_fu_428_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_202_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal mantissa_V_fu_448_p4 : STD_LOGIC_VECTOR (24 downto 0);
    signal zext_ln339_fu_461_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln339_fu_464_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal sub_ln1311_fu_478_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal isNeg_fu_470_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal sext_ln1311_fu_483_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal ush_fu_487_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal sext_ln1311_2_fu_495_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sext_ln1311_3_fu_499_p1 : STD_LOGIC_VECTOR (24 downto 0);
    signal zext_ln682_fu_457_p1 : STD_LOGIC_VECTOR (78 downto 0);
    signal zext_ln1287_fu_503_p1 : STD_LOGIC_VECTOR (78 downto 0);
    signal r_V_fu_507_p2 : STD_LOGIC_VECTOR (24 downto 0);
    signal tmp_8_fu_519_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_V_2_fu_513_p2 : STD_LOGIC_VECTOR (78 downto 0);
    signal zext_ln662_fu_527_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_11_fu_531_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Val2_11_fu_541_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal result_V_2_fu_549_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (15 downto 0);

    component forw_back_sitofp_dEe IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component forw_back_fcmp_32eOg IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        opcode : IN STD_LOGIC_VECTOR (4 downto 0);
        dout : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;



begin
    forw_back_sitofp_dEe_U20 : component forw_back_sitofp_dEe
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_195_p0,
        ce => ap_const_logic_1,
        dout => grp_fu_195_p1);

    forw_back_fcmp_32eOg_U21 : component forw_back_fcmp_32eOg
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 1)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => conv_out_2_q0,
        din1 => tmp_s_reg_646,
        ce => ap_const_logic_1,
        opcode => ap_const_lv5_2,
        dout => grp_fu_202_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    col_0_reg_151_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln42_fu_339_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                col_0_reg_151 <= col_2_fu_344_p2;
            elsif (((icmp_ln39_fu_267_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                col_0_reg_151 <= zext_ln41_reg_577;
            end if; 
        end if;
    end process;

    i_0_reg_117_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln39_fu_267_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                i_0_reg_117 <= i_reg_572;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_reg_117 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    j_0_reg_128_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln38_fu_207_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                j_0_reg_128 <= ap_const_lv3_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state16)) then 
                j_0_reg_128 <= j_reg_595;
            end if; 
        end if;
    end process;

    max_num_0_reg_139_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln42_fu_339_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                max_num_0_reg_139 <= max_num_1_reg_161;
            elsif (((icmp_ln39_fu_267_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                max_num_0_reg_139 <= ap_const_lv32_FFFFFC19;
            end if; 
        end if;
    end process;

    max_num_1_reg_161_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
                max_num_1_reg_161 <= ap_phi_mux_max_num_2_phi_fu_187_p4;
            elsif (((icmp_ln41_fu_316_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                max_num_1_reg_161 <= max_num_0_reg_139;
            end if; 
        end if;
    end process;

    max_num_2_reg_183_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_0 = and_ln43_2_fu_434_p2) and (ap_const_logic_1 = ap_CS_fsm_state10))) then 
                max_num_2_reg_183 <= max_num_1_reg_161;
            elsif (((ap_const_lv1_1 = and_ln43_2_reg_679) and (ap_const_logic_1 = ap_CS_fsm_state13))) then 
                max_num_2_reg_183 <= p_Val2_12_fu_555_p3;
            end if; 
        end if;
    end process;

    row_0_reg_173_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
                row_0_reg_173 <= row_2_fu_563_p2;
            elsif (((icmp_ln41_fu_316_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                row_0_reg_173 <= zext_ln42_reg_600;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
                add_ln43_reg_636 <= add_ln43_fu_350_p2;
                tmp_s_reg_646 <= grp_fu_195_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state10)) then
                and_ln43_2_reg_679 <= and_ln43_2_fu_434_p2;
                tmp_V_2_reg_674 <= tmp_V_2_fu_402_p1;
                tmp_V_reg_668 <= p_Val2_s_fu_389_p1(30 downto 23);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then
                conv_out_2_load_reg_652 <= conv_out_2_q0;
                icmp_ln43_5_reg_658 <= icmp_ln43_5_fu_377_p2;
                icmp_ln43_6_reg_663 <= icmp_ln43_6_fu_383_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_572 <= i_fu_213_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                j_reg_595 <= j_fu_273_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln39_fu_267_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                locate_matrix_addr_reg_615 <= zext_ln45_fu_310_p1(6 - 1 downto 0);
                output_matrix_addr_reg_610 <= zext_ln45_fu_310_p1(6 - 1 downto 0);
                    zext_ln42_2_reg_605(3 downto 1) <= zext_ln42_2_fu_297_p1(3 downto 1);
                    zext_ln42_reg_600(3 downto 1) <= zext_ln42_fu_287_p1(3 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = and_ln43_2_fu_434_p2) and (ap_const_logic_1 = ap_CS_fsm_state10))) then
                p_Result_s_reg_683 <= p_Val2_s_fu_389_p1(31 downto 31);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln41_fu_316_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    sub_ln43_reg_623(31 downto 2) <= sub_ln43_fu_333_p2(31 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln38_fu_207_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    sub_ln45_reg_587(6 downto 1) <= sub_ln45_fu_257_p2(6 downto 1);
                    zext_ln41_4_reg_582(3 downto 1) <= zext_ln41_4_fu_241_p1(3 downto 1);
                    zext_ln41_reg_577(3 downto 1) <= zext_ln41_fu_227_p1(3 downto 1);
            end if;
        end if;
    end process;
    zext_ln41_reg_577(0) <= '0';
    zext_ln41_reg_577(31 downto 4) <= "0000000000000000000000000000";
    zext_ln41_4_reg_582(0) <= '0';
    zext_ln41_4_reg_582(31 downto 4) <= "0000000000000000000000000000";
    sub_ln45_reg_587(0) <= '0';
    zext_ln42_reg_600(0) <= '0';
    zext_ln42_reg_600(31 downto 4) <= "0000000000000000000000000000";
    zext_ln42_2_reg_605(0) <= '0';
    zext_ln42_2_reg_605(31 downto 4) <= "0000000000000000000000000000";
    sub_ln43_reg_623(1 downto 0) <= "00";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln38_fu_207_p2, ap_CS_fsm_state3, icmp_ln39_fu_267_p2, ap_CS_fsm_state4, icmp_ln41_fu_316_p2, ap_CS_fsm_state5, icmp_ln42_fu_339_p2, ap_CS_fsm_state10, and_ln43_2_fu_434_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln38_fu_207_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((icmp_ln39_fu_267_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((icmp_ln41_fu_316_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state14;
                end if;
            when ap_ST_fsm_state5 => 
                if (((icmp_ln42_fu_339_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                if (((ap_const_lv1_0 = and_ln43_2_fu_434_p2) and (ap_const_logic_1 = ap_CS_fsm_state10))) then
                    ap_NS_fsm <= ap_ST_fsm_state13;
                else
                    ap_NS_fsm <= ap_ST_fsm_state11;
                end if;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state14 => 
                ap_NS_fsm <= ap_ST_fsm_state15;
            when ap_ST_fsm_state15 => 
                ap_NS_fsm <= ap_ST_fsm_state16;
            when ap_ST_fsm_state16 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXX";
        end case;
    end process;
    add_ln339_fu_464_p2 <= std_logic_vector(unsigned(zext_ln339_fu_461_p1) + unsigned(ap_const_lv9_181));
    add_ln41_fu_235_p2 <= std_logic_vector(unsigned(col_fu_219_p3) + unsigned(ap_const_lv4_2));
    add_ln42_fu_291_p2 <= std_logic_vector(unsigned(row_fu_279_p3) + unsigned(ap_const_lv4_2));
    add_ln43_fu_350_p2 <= std_logic_vector(unsigned(row_0_reg_173) + unsigned(sub_ln43_reg_623));
    add_ln45_fu_301_p2 <= std_logic_vector(unsigned(j_0_cast3_fu_263_p1) + unsigned(sub_ln45_reg_587));
    and_ln43_2_fu_434_p2 <= (grp_fu_202_p2 and and_ln43_fu_428_p2);
    and_ln43_fu_428_p2 <= (or_ln43_fu_418_p2 and or_ln43_2_fu_424_p2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state13 <= ap_CS_fsm(12);
    ap_CS_fsm_state16 <= ap_CS_fsm(15);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln38_fu_207_p2)
    begin
        if ((((icmp_ln38_fu_207_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_max_num_2_phi_fu_187_p4_assign_proc : process(and_ln43_2_reg_679, ap_CS_fsm_state13, p_Val2_12_fu_555_p3, max_num_2_reg_183)
    begin
        if (((ap_const_lv1_1 = and_ln43_2_reg_679) and (ap_const_logic_1 = ap_CS_fsm_state13))) then 
            ap_phi_mux_max_num_2_phi_fu_187_p4 <= p_Val2_12_fu_555_p3;
        else 
            ap_phi_mux_max_num_2_phi_fu_187_p4 <= max_num_2_reg_183;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln38_fu_207_p2)
    begin
        if (((icmp_ln38_fu_207_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    bitcast_ln43_2_fu_360_p1 <= tmp_s_reg_646;
    col_2_fu_344_p2 <= std_logic_vector(unsigned(col_0_reg_151) + unsigned(ap_const_lv32_1));
    col_fu_219_p3 <= (i_0_reg_117 & ap_const_lv1_0);
    conv_out_2_address0 <= sext_ln43_fu_355_p1(8 - 1 downto 0);

    conv_out_2_ce0_assign_proc : process(ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            conv_out_2_ce0 <= ap_const_logic_1;
        else 
            conv_out_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    grp_fu_195_p0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state5, add_ln43_reg_636, ap_CS_fsm_state10, max_num_0_reg_139, max_num_1_reg_161)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            grp_fu_195_p0 <= add_ln43_reg_636;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            grp_fu_195_p0 <= max_num_1_reg_161;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            grp_fu_195_p0 <= max_num_0_reg_139;
        else 
            grp_fu_195_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    i_fu_213_p2 <= std_logic_vector(unsigned(i_0_reg_117) + unsigned(ap_const_lv3_1));
    icmp_ln38_fu_207_p2 <= "1" when (i_0_reg_117 = ap_const_lv3_6) else "0";
    icmp_ln39_fu_267_p2 <= "1" when (j_0_reg_128 = ap_const_lv3_6) else "0";
    icmp_ln41_fu_316_p2 <= "1" when (signed(col_0_reg_151) < signed(zext_ln41_4_reg_582)) else "0";
    icmp_ln42_fu_339_p2 <= "1" when (signed(row_0_reg_173) < signed(zext_ln42_2_reg_605)) else "0";
    icmp_ln43_4_fu_412_p2 <= "1" when (tmp_V_2_fu_402_p1 = ap_const_lv23_0) else "0";
    icmp_ln43_5_fu_377_p2 <= "0" when (tmp_14_fu_363_p4 = ap_const_lv8_FF) else "1";
    icmp_ln43_6_fu_383_p2 <= "1" when (trunc_ln43_2_fu_373_p1 = ap_const_lv23_0) else "0";
    icmp_ln43_fu_406_p2 <= "0" when (tmp_V_fu_392_p4 = ap_const_lv8_FF) else "1";
    isNeg_fu_470_p3 <= add_ln339_fu_464_p2(8 downto 8);
    j_0_cast3_fu_263_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_0_reg_128),7));
    j_fu_273_p2 <= std_logic_vector(unsigned(j_0_reg_128) + unsigned(ap_const_lv3_1));
    locate_matrix_address0 <= locate_matrix_addr_reg_615;

    locate_matrix_ce0_assign_proc : process(ap_CS_fsm_state13)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
            locate_matrix_ce0 <= ap_const_logic_1;
        else 
            locate_matrix_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    locate_matrix_d0 <= grp_fu_195_p1;

    locate_matrix_we0_assign_proc : process(and_ln43_2_reg_679, ap_CS_fsm_state13)
    begin
        if (((ap_const_lv1_1 = and_ln43_2_reg_679) and (ap_const_logic_1 = ap_CS_fsm_state13))) then 
            locate_matrix_we0 <= ap_const_logic_1;
        else 
            locate_matrix_we0 <= ap_const_logic_0;
        end if; 
    end process;

    mantissa_V_fu_448_p4 <= ((ap_const_lv1_1 & tmp_V_2_reg_674) & ap_const_lv1_0);
    or_ln43_2_fu_424_p2 <= (icmp_ln43_6_reg_663 or icmp_ln43_5_reg_658);
    or_ln43_fu_418_p2 <= (icmp_ln43_fu_406_p2 or icmp_ln43_4_fu_412_p2);
    output_matrix_address0 <= output_matrix_addr_reg_610;

    output_matrix_ce0_assign_proc : process(ap_CS_fsm_state16)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state16)) then 
            output_matrix_ce0 <= ap_const_logic_1;
        else 
            output_matrix_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    output_matrix_d0 <= grp_fu_195_p1;

    output_matrix_we0_assign_proc : process(ap_CS_fsm_state16)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state16)) then 
            output_matrix_we0 <= ap_const_logic_1;
        else 
            output_matrix_we0 <= ap_const_logic_0;
        end if; 
    end process;

    p_Val2_11_fu_541_p3 <= 
        zext_ln662_fu_527_p1 when (isNeg_fu_470_p3(0) = '1') else 
        tmp_11_fu_531_p4;
    p_Val2_12_fu_555_p3 <= 
        result_V_2_fu_549_p2 when (p_Result_s_reg_683(0) = '1') else 
        p_Val2_11_fu_541_p3;
    p_Val2_s_fu_389_p1 <= conv_out_2_load_reg_652;
    r_V_2_fu_513_p2 <= std_logic_vector(shift_left(unsigned(zext_ln682_fu_457_p1),to_integer(unsigned('0' & zext_ln1287_fu_503_p1(31-1 downto 0)))));
    r_V_fu_507_p2 <= std_logic_vector(shift_right(unsigned(mantissa_V_fu_448_p4),to_integer(unsigned('0' & sext_ln1311_3_fu_499_p1(25-1 downto 0)))));
    result_V_2_fu_549_p2 <= std_logic_vector(unsigned(ap_const_lv32_0) - unsigned(p_Val2_11_fu_541_p3));
    row_2_fu_563_p2 <= std_logic_vector(unsigned(row_0_reg_173) + unsigned(ap_const_lv32_1));
    row_fu_279_p3 <= (j_0_reg_128 & ap_const_lv1_0);
        sext_ln1311_2_fu_495_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(ush_fu_487_p3),32));

        sext_ln1311_3_fu_499_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(ush_fu_487_p3),25));

        sext_ln1311_fu_483_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sub_ln1311_fu_478_p2),9));

        sext_ln43_fu_355_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln43_fu_350_p2),64));

        sext_ln45_fu_306_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln45_fu_301_p2),32));

    shl_ln43_2_fu_327_p2 <= std_logic_vector(shift_left(unsigned(col_0_reg_151),to_integer(unsigned('0' & ap_const_lv32_2(31-1 downto 0)))));
    shl_ln43_fu_321_p2 <= std_logic_vector(shift_left(unsigned(col_0_reg_151),to_integer(unsigned('0' & ap_const_lv32_4(31-1 downto 0)))));
    shl_ln_fu_245_p3 <= (i_0_reg_117 & ap_const_lv3_0);
    sub_ln1311_fu_478_p2 <= std_logic_vector(unsigned(ap_const_lv8_7F) - unsigned(tmp_V_reg_668));
    sub_ln43_fu_333_p2 <= std_logic_vector(unsigned(shl_ln43_fu_321_p2) - unsigned(shl_ln43_2_fu_327_p2));
    sub_ln45_fu_257_p2 <= std_logic_vector(unsigned(zext_ln45_2_fu_253_p1) - unsigned(zext_ln41_3_fu_231_p1));
    tmp_11_fu_531_p4 <= r_V_2_fu_513_p2(55 downto 24);
    tmp_14_fu_363_p4 <= bitcast_ln43_2_fu_360_p1(30 downto 23);
    tmp_8_fu_519_p3 <= r_V_fu_507_p2(24 downto 24);
    tmp_V_2_fu_402_p1 <= p_Val2_s_fu_389_p1(23 - 1 downto 0);
    tmp_V_fu_392_p4 <= p_Val2_s_fu_389_p1(30 downto 23);
    trunc_ln43_2_fu_373_p1 <= bitcast_ln43_2_fu_360_p1(23 - 1 downto 0);
    ush_fu_487_p3 <= 
        sext_ln1311_fu_483_p1 when (isNeg_fu_470_p3(0) = '1') else 
        add_ln339_fu_464_p2;
    zext_ln1287_fu_503_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sext_ln1311_2_fu_495_p1),79));
    zext_ln339_fu_461_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_V_reg_668),9));
    zext_ln41_3_fu_231_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(col_fu_219_p3),7));
    zext_ln41_4_fu_241_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln41_fu_235_p2),32));
    zext_ln41_fu_227_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(col_fu_219_p3),32));
    zext_ln42_2_fu_297_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln42_fu_291_p2),32));
    zext_ln42_fu_287_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(row_fu_279_p3),32));
    zext_ln45_2_fu_253_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln_fu_245_p3),7));
    zext_ln45_fu_310_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sext_ln45_fu_306_p1),64));
    zext_ln662_fu_527_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_8_fu_519_p3),32));
    zext_ln682_fu_457_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(mantissa_V_fu_448_p4),79));
end behav;
