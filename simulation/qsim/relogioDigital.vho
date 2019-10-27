-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/26/2019 21:11:06"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RelogioDigital IS
    PORT (
	teclas : IN std_logic_vector(9 DOWNTO 0);
	tc : IN std_logic_vector(1 DOWNTO 0);
	sel : IN std_logic;
	clock : IN std_logic;
	RC : IN std_logic;
	H1 : BUFFER std_logic_vector(7 DOWNTO 0);
	H0 : BUFFER std_logic_vector(7 DOWNTO 0);
	M1 : BUFFER std_logic_vector(7 DOWNTO 0);
	M0 : BUFFER std_logic_vector(7 DOWNTO 0);
	alarme : BUFFER std_logic
	);
END RelogioDigital;

-- Design Ports Information
-- teclas[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1[0]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1[3]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1[5]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1[6]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1[7]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H0[0]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H0[1]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H0[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H0[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H0[4]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H0[5]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H0[6]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H0[7]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[1]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[2]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[4]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[6]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M0[0]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M0[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M0[2]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M0[3]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M0[4]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M0[5]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M0[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M0[7]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarme	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclas[4]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclas[6]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclas[5]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclas[7]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tc[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tc[1]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RC	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclas[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclas[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclas[9]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclas[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclas[8]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RelogioDigital IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_teclas : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_tc : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_sel : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_RC : std_logic;
SIGNAL ww_H1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_H0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_M1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_M0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_alarme : std_logic;
SIGNAL \teclas[0]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \c1|q[0]~_wirecell_combout\ : std_logic;
SIGNAL \tc[1]~input_o\ : std_logic;
SIGNAL \teclas[1]~input_o\ : std_logic;
SIGNAL \teclas[5]~input_o\ : std_logic;
SIGNAL \teclas[3]~input_o\ : std_logic;
SIGNAL \teclas[7]~input_o\ : std_logic;
SIGNAL \teclas[9]~input_o\ : std_logic;
SIGNAL \ct|s4~combout\ : std_logic;
SIGNAL \tc[0]~input_o\ : std_logic;
SIGNAL \dm|d4|s1~0_combout\ : std_logic;
SIGNAL \c1|Add0~2_combout\ : std_logic;
SIGNAL \teclas[8]~input_o\ : std_logic;
SIGNAL \dm|d1|s1~0_combout\ : std_logic;
SIGNAL \RC~input_o\ : std_logic;
SIGNAL \sel~input_o\ : std_logic;
SIGNAL \c3|q[2]~0_combout\ : std_logic;
SIGNAL \ctrl|Equal0~0_combout\ : std_logic;
SIGNAL \c1|Add0~1_combout\ : std_logic;
SIGNAL \teclas[6]~input_o\ : std_logic;
SIGNAL \teclas[2]~input_o\ : std_logic;
SIGNAL \dm|d3|s1~0_combout\ : std_logic;
SIGNAL \c1|Add0~0_combout\ : std_logic;
SIGNAL \teclas[4]~input_o\ : std_logic;
SIGNAL \dm|d2|s1~0_combout\ : std_logic;
SIGNAL \ce|C[6]~0_combout\ : std_logic;
SIGNAL \mt1|S[2]~0_combout\ : std_logic;
SIGNAL \mt1|S[1]~2_combout\ : std_logic;
SIGNAL \dc1|g~0_combout\ : std_logic;
SIGNAL \mt1|S[0]~1_combout\ : std_logic;
SIGNAL \dc1|a~combout\ : std_logic;
SIGNAL \dc1|b~combout\ : std_logic;
SIGNAL \dc1|c~combout\ : std_logic;
SIGNAL \dc1|d~0_combout\ : std_logic;
SIGNAL \dc1|e~0_combout\ : std_logic;
SIGNAL \dc1|f~0_combout\ : std_logic;
SIGNAL \dc1|g~1_combout\ : std_logic;
SIGNAL \c2|q[0]~_wirecell_combout\ : std_logic;
SIGNAL \dm|d4|s2~0_combout\ : std_logic;
SIGNAL \c2|Add0~1_combout\ : std_logic;
SIGNAL \dm|d3|s2~0_combout\ : std_logic;
SIGNAL \ce|C[5]~2_combout\ : std_logic;
SIGNAL \c2|Add0~0_combout\ : std_logic;
SIGNAL \dm|d2|s2~0_combout\ : std_logic;
SIGNAL \ctrl|process_0~1_combout\ : std_logic;
SIGNAL \ctrl|process_0~0_combout\ : std_logic;
SIGNAL \ctrl|process_0~2_combout\ : std_logic;
SIGNAL \c2|Add0~2_combout\ : std_logic;
SIGNAL \dm|d1|s2~0_combout\ : std_logic;
SIGNAL \ce|C[4]~1_combout\ : std_logic;
SIGNAL \dc2|a~0_combout\ : std_logic;
SIGNAL \mt2|S[2]~1_combout\ : std_logic;
SIGNAL \mt2|S[0]~0_combout\ : std_logic;
SIGNAL \mt2|S[1]~2_combout\ : std_logic;
SIGNAL \dc2|a~combout\ : std_logic;
SIGNAL \dc2|b~combout\ : std_logic;
SIGNAL \dc2|c~combout\ : std_logic;
SIGNAL \dc2|d~0_combout\ : std_logic;
SIGNAL \dc2|e~0_combout\ : std_logic;
SIGNAL \dc2|f~0_combout\ : std_logic;
SIGNAL \dc2|g~0_combout\ : std_logic;
SIGNAL \c3|q[0]~_wirecell_combout\ : std_logic;
SIGNAL \dm|d4|s3~0_combout\ : std_logic;
SIGNAL \c3|Add0~0_combout\ : std_logic;
SIGNAL \dm|d2|s3~0_combout\ : std_logic;
SIGNAL \ce|Equal2~0_combout\ : std_logic;
SIGNAL \ce|C[3]~6_combout\ : std_logic;
SIGNAL \ce|comb~0_combout\ : std_logic;
SIGNAL \c3|Add0~2_combout\ : std_logic;
SIGNAL \dm|d1|s3~0_combout\ : std_logic;
SIGNAL \ctrl|E[1]~1_combout\ : std_logic;
SIGNAL \c4|q[0]~_wirecell_combout\ : std_logic;
SIGNAL \dm|d4|s4~combout\ : std_logic;
SIGNAL \c4|Add0~1_combout\ : std_logic;
SIGNAL \dm|d3|s4~combout\ : std_logic;
SIGNAL \ce|C[1]~4_combout\ : std_logic;
SIGNAL \c4|Add0~2_combout\ : std_logic;
SIGNAL \dm|d1|s4~combout\ : std_logic;
SIGNAL \ctrl|process_0~3_combout\ : std_logic;
SIGNAL \ctrl|process_0~4_combout\ : std_logic;
SIGNAL \c4|Add0~0_combout\ : std_logic;
SIGNAL \dm|d2|s4~combout\ : std_logic;
SIGNAL \ctrl|E[1]~0_combout\ : std_logic;
SIGNAL \ctrl|E[1]~2_combout\ : std_logic;
SIGNAL \c3|Add0~1_combout\ : std_logic;
SIGNAL \dm|d3|s3~0_combout\ : std_logic;
SIGNAL \ce|C[2]~5_combout\ : std_logic;
SIGNAL \mt3|S[1]~2_combout\ : std_logic;
SIGNAL \dc3|a~0_combout\ : std_logic;
SIGNAL \mt3|S[0]~0_combout\ : std_logic;
SIGNAL \mt3|S[2]~1_combout\ : std_logic;
SIGNAL \dc3|a~combout\ : std_logic;
SIGNAL \dc3|b~combout\ : std_logic;
SIGNAL \dc3|c~combout\ : std_logic;
SIGNAL \dc3|d~0_combout\ : std_logic;
SIGNAL \dc3|e~0_combout\ : std_logic;
SIGNAL \dc3|f~0_combout\ : std_logic;
SIGNAL \dc3|g~0_combout\ : std_logic;
SIGNAL \ce|C[0]~3_combout\ : std_logic;
SIGNAL \mt4|S[0]~1_combout\ : std_logic;
SIGNAL \mt4|S[2]~0_combout\ : std_logic;
SIGNAL \mt4|S[1]~2_combout\ : std_logic;
SIGNAL \dc4|g~0_combout\ : std_logic;
SIGNAL \dc4|a~combout\ : std_logic;
SIGNAL \dc4|b~combout\ : std_logic;
SIGNAL \dc4|c~combout\ : std_logic;
SIGNAL \dc4|d~0_combout\ : std_logic;
SIGNAL \dc4|e~0_combout\ : std_logic;
SIGNAL \dc4|f~0_combout\ : std_logic;
SIGNAL \dc4|g~1_combout\ : std_logic;
SIGNAL \comp|S~4_combout\ : std_logic;
SIGNAL \comp|S~2_combout\ : std_logic;
SIGNAL \comp|S~0_combout\ : std_logic;
SIGNAL \comp|S~3_combout\ : std_logic;
SIGNAL \comp|S~1_combout\ : std_logic;
SIGNAL \comp|Equal3~0_combout\ : std_logic;
SIGNAL \comp|S~combout\ : std_logic;
SIGNAL \c4|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r1|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r4|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c1|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r2|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c2|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r3|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c3|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ce|C\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mt2|ALT_INV_S[2]~1_combout\ : std_logic;
SIGNAL \mt2|ALT_INV_S[0]~0_combout\ : std_logic;
SIGNAL \dc1|ALT_INV_g~0_combout\ : std_logic;
SIGNAL \mt1|ALT_INV_S[1]~2_combout\ : std_logic;
SIGNAL \mt1|ALT_INV_S[0]~1_combout\ : std_logic;
SIGNAL \mt1|ALT_INV_S[2]~0_combout\ : std_logic;
SIGNAL \c4|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r4|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c3|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r3|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c2|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r2|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c1|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r1|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_teclas[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclas[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclas[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclas[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclas[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_RC~input_o\ : std_logic;
SIGNAL \ALT_INV_tc[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_tc[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclas[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclas[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclas[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclas[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel~input_o\ : std_logic;
SIGNAL \ce|ALT_INV_C\ : std_logic_vector(3 DOWNTO 2);
SIGNAL \ce|ALT_INV_C[3]~6_combout\ : std_logic;
SIGNAL \ce|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \ce|ALT_INV_C[2]~5_combout\ : std_logic;
SIGNAL \ce|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_E[1]~2_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_E[1]~1_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_E[1]~0_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ct|ALT_INV_s4~combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \comp|ALT_INV_S~4_combout\ : std_logic;
SIGNAL \comp|ALT_INV_S~3_combout\ : std_logic;
SIGNAL \comp|ALT_INV_S~2_combout\ : std_logic;
SIGNAL \comp|ALT_INV_S~1_combout\ : std_logic;
SIGNAL \comp|ALT_INV_S~0_combout\ : std_logic;
SIGNAL \comp|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \dc4|ALT_INV_g~0_combout\ : std_logic;
SIGNAL \mt4|ALT_INV_S[1]~2_combout\ : std_logic;
SIGNAL \mt4|ALT_INV_S[0]~1_combout\ : std_logic;
SIGNAL \mt4|ALT_INV_S[2]~0_combout\ : std_logic;
SIGNAL \dc3|ALT_INV_a~0_combout\ : std_logic;
SIGNAL \mt3|ALT_INV_S[1]~2_combout\ : std_logic;
SIGNAL \mt3|ALT_INV_S[2]~1_combout\ : std_logic;
SIGNAL \mt3|ALT_INV_S[0]~0_combout\ : std_logic;
SIGNAL \dc2|ALT_INV_a~0_combout\ : std_logic;
SIGNAL \mt2|ALT_INV_S[1]~2_combout\ : std_logic;

BEGIN

ww_teclas <= teclas;
ww_tc <= tc;
ww_sel <= sel;
ww_clock <= clock;
ww_RC <= RC;
H1 <= ww_H1;
H0 <= ww_H0;
M1 <= ww_M1;
M0 <= ww_M0;
alarme <= ww_alarme;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\mt2|ALT_INV_S[2]~1_combout\ <= NOT \mt2|S[2]~1_combout\;
\mt2|ALT_INV_S[0]~0_combout\ <= NOT \mt2|S[0]~0_combout\;
\dc1|ALT_INV_g~0_combout\ <= NOT \dc1|g~0_combout\;
\mt1|ALT_INV_S[1]~2_combout\ <= NOT \mt1|S[1]~2_combout\;
\mt1|ALT_INV_S[0]~1_combout\ <= NOT \mt1|S[0]~1_combout\;
\mt1|ALT_INV_S[2]~0_combout\ <= NOT \mt1|S[2]~0_combout\;
\c4|ALT_INV_q\(3) <= NOT \c4|q\(3);
\r4|ALT_INV_q\(3) <= NOT \r4|q\(3);
\c4|ALT_INV_q\(1) <= NOT \c4|q\(1);
\r4|ALT_INV_q\(1) <= NOT \r4|q\(1);
\c4|ALT_INV_q\(0) <= NOT \c4|q\(0);
\r4|ALT_INV_q\(0) <= NOT \r4|q\(0);
\c4|ALT_INV_q\(2) <= NOT \c4|q\(2);
\r4|ALT_INV_q\(2) <= NOT \r4|q\(2);
\c3|ALT_INV_q\(3) <= NOT \c3|q\(3);
\r3|ALT_INV_q\(3) <= NOT \r3|q\(3);
\c3|ALT_INV_q\(1) <= NOT \c3|q\(1);
\r3|ALT_INV_q\(1) <= NOT \r3|q\(1);
\c3|ALT_INV_q\(2) <= NOT \c3|q\(2);
\r3|ALT_INV_q\(2) <= NOT \r3|q\(2);
\c3|ALT_INV_q\(0) <= NOT \c3|q\(0);
\r3|ALT_INV_q\(0) <= NOT \r3|q\(0);
\c2|ALT_INV_q\(3) <= NOT \c2|q\(3);
\r2|ALT_INV_q\(3) <= NOT \r2|q\(3);
\c2|ALT_INV_q\(1) <= NOT \c2|q\(1);
\r2|ALT_INV_q\(1) <= NOT \r2|q\(1);
\c2|ALT_INV_q\(2) <= NOT \c2|q\(2);
\r2|ALT_INV_q\(2) <= NOT \r2|q\(2);
\c2|ALT_INV_q\(0) <= NOT \c2|q\(0);
\r2|ALT_INV_q\(0) <= NOT \r2|q\(0);
\c1|ALT_INV_q\(3) <= NOT \c1|q\(3);
\r1|ALT_INV_q\(3) <= NOT \r1|q\(3);
\c1|ALT_INV_q\(1) <= NOT \c1|q\(1);
\r1|ALT_INV_q\(1) <= NOT \r1|q\(1);
\c1|ALT_INV_q\(0) <= NOT \c1|q\(0);
\r1|ALT_INV_q\(0) <= NOT \r1|q\(0);
\c1|ALT_INV_q\(2) <= NOT \c1|q\(2);
\r1|ALT_INV_q\(2) <= NOT \r1|q\(2);
\ALT_INV_teclas[8]~input_o\ <= NOT \teclas[8]~input_o\;
\ALT_INV_teclas[2]~input_o\ <= NOT \teclas[2]~input_o\;
\ALT_INV_teclas[9]~input_o\ <= NOT \teclas[9]~input_o\;
\ALT_INV_teclas[3]~input_o\ <= NOT \teclas[3]~input_o\;
\ALT_INV_teclas[1]~input_o\ <= NOT \teclas[1]~input_o\;
\ALT_INV_RC~input_o\ <= NOT \RC~input_o\;
\ALT_INV_tc[1]~input_o\ <= NOT \tc[1]~input_o\;
\ALT_INV_tc[0]~input_o\ <= NOT \tc[0]~input_o\;
\ALT_INV_teclas[7]~input_o\ <= NOT \teclas[7]~input_o\;
\ALT_INV_teclas[5]~input_o\ <= NOT \teclas[5]~input_o\;
\ALT_INV_teclas[6]~input_o\ <= NOT \teclas[6]~input_o\;
\ALT_INV_teclas[4]~input_o\ <= NOT \teclas[4]~input_o\;
\ALT_INV_sel~input_o\ <= NOT \sel~input_o\;
\ce|ALT_INV_C\(3) <= NOT \ce|C\(3);
\ce|ALT_INV_C\(2) <= NOT \ce|C\(2);
\ce|ALT_INV_C[3]~6_combout\ <= NOT \ce|C[3]~6_combout\;
\ce|ALT_INV_comb~0_combout\ <= NOT \ce|comb~0_combout\;
\ce|ALT_INV_C[2]~5_combout\ <= NOT \ce|C[2]~5_combout\;
\ce|ALT_INV_Equal2~0_combout\ <= NOT \ce|Equal2~0_combout\;
\ctrl|ALT_INV_process_0~4_combout\ <= NOT \ctrl|process_0~4_combout\;
\ctrl|ALT_INV_process_0~3_combout\ <= NOT \ctrl|process_0~3_combout\;
\ctrl|ALT_INV_E[1]~2_combout\ <= NOT \ctrl|E[1]~2_combout\;
\ctrl|ALT_INV_E[1]~1_combout\ <= NOT \ctrl|E[1]~1_combout\;
\ctrl|ALT_INV_E[1]~0_combout\ <= NOT \ctrl|E[1]~0_combout\;
\ctrl|ALT_INV_process_0~2_combout\ <= NOT \ctrl|process_0~2_combout\;
\ctrl|ALT_INV_process_0~1_combout\ <= NOT \ctrl|process_0~1_combout\;
\ctrl|ALT_INV_process_0~0_combout\ <= NOT \ctrl|process_0~0_combout\;
\ct|ALT_INV_s4~combout\ <= NOT \ct|s4~combout\;
\ctrl|ALT_INV_Equal0~0_combout\ <= NOT \ctrl|Equal0~0_combout\;
\comp|ALT_INV_S~4_combout\ <= NOT \comp|S~4_combout\;
\comp|ALT_INV_S~3_combout\ <= NOT \comp|S~3_combout\;
\comp|ALT_INV_S~2_combout\ <= NOT \comp|S~2_combout\;
\comp|ALT_INV_S~1_combout\ <= NOT \comp|S~1_combout\;
\comp|ALT_INV_S~0_combout\ <= NOT \comp|S~0_combout\;
\comp|ALT_INV_Equal3~0_combout\ <= NOT \comp|Equal3~0_combout\;
\dc4|ALT_INV_g~0_combout\ <= NOT \dc4|g~0_combout\;
\mt4|ALT_INV_S[1]~2_combout\ <= NOT \mt4|S[1]~2_combout\;
\mt4|ALT_INV_S[0]~1_combout\ <= NOT \mt4|S[0]~1_combout\;
\mt4|ALT_INV_S[2]~0_combout\ <= NOT \mt4|S[2]~0_combout\;
\dc3|ALT_INV_a~0_combout\ <= NOT \dc3|a~0_combout\;
\mt3|ALT_INV_S[1]~2_combout\ <= NOT \mt3|S[1]~2_combout\;
\mt3|ALT_INV_S[2]~1_combout\ <= NOT \mt3|S[2]~1_combout\;
\mt3|ALT_INV_S[0]~0_combout\ <= NOT \mt3|S[0]~0_combout\;
\dc2|ALT_INV_a~0_combout\ <= NOT \dc2|a~0_combout\;
\mt2|ALT_INV_S[1]~2_combout\ <= NOT \mt2|S[1]~2_combout\;

-- Location: IOOBUF_X40_Y0_N19
\H1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc1|a~combout\,
	devoe => ww_devoe,
	o => ww_H1(0));

-- Location: IOOBUF_X50_Y0_N59
\H1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc1|b~combout\,
	devoe => ww_devoe,
	o => ww_H1(1));

-- Location: IOOBUF_X66_Y0_N76
\H1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc1|c~combout\,
	devoe => ww_devoe,
	o => ww_H1(2));

-- Location: IOOBUF_X56_Y0_N2
\H1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc1|d~0_combout\,
	devoe => ww_devoe,
	o => ww_H1(3));

-- Location: IOOBUF_X54_Y0_N53
\H1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc1|e~0_combout\,
	devoe => ww_devoe,
	o => ww_H1(4));

-- Location: IOOBUF_X50_Y0_N76
\H1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc1|f~0_combout\,
	devoe => ww_devoe,
	o => ww_H1(5));

-- Location: IOOBUF_X40_Y0_N36
\H1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc1|g~1_combout\,
	devoe => ww_devoe,
	o => ww_H1(6));

-- Location: IOOBUF_X68_Y81_N19
\H1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_H1(7));

-- Location: IOOBUF_X40_Y0_N53
\H0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc2|a~combout\,
	devoe => ww_devoe,
	o => ww_H0(0));

-- Location: IOOBUF_X52_Y0_N2
\H0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc2|b~combout\,
	devoe => ww_devoe,
	o => ww_H0(1));

-- Location: IOOBUF_X52_Y0_N53
\H0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc2|c~combout\,
	devoe => ww_devoe,
	o => ww_H0(2));

-- Location: IOOBUF_X38_Y0_N19
\H0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc2|d~0_combout\,
	devoe => ww_devoe,
	o => ww_H0(3));

-- Location: IOOBUF_X50_Y0_N93
\H0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc2|e~0_combout\,
	devoe => ww_devoe,
	o => ww_H0(4));

-- Location: IOOBUF_X52_Y0_N19
\H0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc2|f~0_combout\,
	devoe => ww_devoe,
	o => ww_H0(5));

-- Location: IOOBUF_X38_Y0_N53
\H0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc2|g~0_combout\,
	devoe => ww_devoe,
	o => ww_H0(6));

-- Location: IOOBUF_X89_Y38_N22
\H0[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_H0(7));

-- Location: IOOBUF_X50_Y0_N42
\M1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc3|a~combout\,
	devoe => ww_devoe,
	o => ww_M1(0));

-- Location: IOOBUF_X64_Y0_N36
\M1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc3|b~combout\,
	devoe => ww_devoe,
	o => ww_M1(1));

-- Location: IOOBUF_X66_Y0_N93
\M1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc3|c~combout\,
	devoe => ww_devoe,
	o => ww_M1(2));

-- Location: IOOBUF_X64_Y0_N19
\M1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc3|d~0_combout\,
	devoe => ww_devoe,
	o => ww_M1(3));

-- Location: IOOBUF_X64_Y0_N2
\M1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc3|e~0_combout\,
	devoe => ww_devoe,
	o => ww_M1(4));

-- Location: IOOBUF_X54_Y0_N36
\M1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc3|f~0_combout\,
	devoe => ww_devoe,
	o => ww_M1(5));

-- Location: IOOBUF_X52_Y0_N36
\M1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc3|g~0_combout\,
	devoe => ww_devoe,
	o => ww_M1(6));

-- Location: IOOBUF_X66_Y81_N93
\M1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_M1(7));

-- Location: IOOBUF_X62_Y0_N19
\M0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc4|a~combout\,
	devoe => ww_devoe,
	o => ww_M0(0));

-- Location: IOOBUF_X66_Y0_N42
\M0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc4|b~combout\,
	devoe => ww_devoe,
	o => ww_M0(1));

-- Location: IOOBUF_X62_Y0_N36
\M0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc4|c~combout\,
	devoe => ww_devoe,
	o => ww_M0(2));

-- Location: IOOBUF_X60_Y0_N53
\M0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc4|d~0_combout\,
	devoe => ww_devoe,
	o => ww_M0(3));

-- Location: IOOBUF_X66_Y0_N59
\M0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc4|e~0_combout\,
	devoe => ww_devoe,
	o => ww_M0(4));

-- Location: IOOBUF_X62_Y0_N53
\M0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc4|f~0_combout\,
	devoe => ww_devoe,
	o => ww_M0(5));

-- Location: IOOBUF_X62_Y0_N2
\M0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc4|g~1_combout\,
	devoe => ww_devoe,
	o => ww_M0(6));

-- Location: IOOBUF_X64_Y81_N53
\M0[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_M0(7));

-- Location: IOOBUF_X64_Y0_N53
\alarme~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp|S~combout\,
	devoe => ww_devoe,
	o => ww_alarme);

-- Location: IOIBUF_X89_Y35_N44
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G9
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: LABCELL_X60_Y1_N9
\c1|q[0]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|q[0]~_wirecell_combout\ = !\c1|q\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \c1|ALT_INV_q\(0),
	combout => \c1|q[0]~_wirecell_combout\);

-- Location: IOIBUF_X60_Y0_N18
\tc[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tc(1),
	o => \tc[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\teclas[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(1),
	o => \teclas[1]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\teclas[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(5),
	o => \teclas[5]~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\teclas[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(3),
	o => \teclas[3]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\teclas[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(7),
	o => \teclas[7]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\teclas[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(9),
	o => \teclas[9]~input_o\);

-- Location: LABCELL_X55_Y1_N0
\ct|s4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ct|s4~combout\ = ( !\teclas[9]~input_o\ & ( (!\teclas[1]~input_o\ & (!\teclas[5]~input_o\ & (!\teclas[3]~input_o\ & !\teclas[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclas[1]~input_o\,
	datab => \ALT_INV_teclas[5]~input_o\,
	datac => \ALT_INV_teclas[3]~input_o\,
	datad => \ALT_INV_teclas[7]~input_o\,
	dataf => \ALT_INV_teclas[9]~input_o\,
	combout => \ct|s4~combout\);

-- Location: IOIBUF_X58_Y0_N58
\tc[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tc(0),
	o => \tc[0]~input_o\);

-- Location: MLABCELL_X59_Y1_N12
\dm|d4|s1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d4|s1~0_combout\ = (!\tc[1]~input_o\ & (!\ct|s4~combout\ & !\tc[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_tc[1]~input_o\,
	datac => \ct|ALT_INV_s4~combout\,
	datad => \ALT_INV_tc[0]~input_o\,
	combout => \dm|d4|s1~0_combout\);

-- Location: LABCELL_X60_Y1_N12
\c1|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add0~2_combout\ = ( \c1|q\(0) & ( !\c1|q\(3) $ (((!\c1|q\(1)) # (!\c1|q\(2)))) ) ) # ( !\c1|q\(0) & ( \c1|q\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_q\(1),
	datac => \c1|ALT_INV_q\(2),
	datad => \c1|ALT_INV_q\(3),
	dataf => \c1|ALT_INV_q\(0),
	combout => \c1|Add0~2_combout\);

-- Location: IOIBUF_X58_Y0_N75
\teclas[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(8),
	o => \teclas[8]~input_o\);

-- Location: LABCELL_X57_Y1_N30
\dm|d1|s1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d1|s1~0_combout\ = ( !\tc[0]~input_o\ & ( (!\tc[1]~input_o\ & ((\teclas[9]~input_o\) # (\teclas[8]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000000010111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclas[8]~input_o\,
	datac => \ALT_INV_teclas[9]~input_o\,
	datad => \ALT_INV_tc[1]~input_o\,
	dataf => \ALT_INV_tc[0]~input_o\,
	combout => \dm|d1|s1~0_combout\);

-- Location: IOIBUF_X60_Y0_N1
\RC~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RC,
	o => \RC~input_o\);

-- Location: IOIBUF_X60_Y0_N35
\sel~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel,
	o => \sel~input_o\);

-- Location: MLABCELL_X59_Y1_N15
\c3|q[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c3|q[2]~0_combout\ = ( \sel~input_o\ & ( \RC~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_RC~input_o\,
	dataf => \ALT_INV_sel~input_o\,
	combout => \c3|q[2]~0_combout\);

-- Location: LABCELL_X60_Y1_N45
\ce|C[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ce|C\(7) = ( \tc[0]~input_o\ & ( !\RC~input_o\ ) ) # ( !\tc[0]~input_o\ & ( (!\RC~input_o\) # ((!\sel~input_o\ & !\tc[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111000000111111111100000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sel~input_o\,
	datac => \ALT_INV_tc[1]~input_o\,
	datad => \ALT_INV_RC~input_o\,
	dataf => \ALT_INV_tc[0]~input_o\,
	combout => \ce|C\(7));

-- Location: FF_X60_Y1_N14
\c1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c1|Add0~2_combout\,
	asdata => \dm|d1|s1~0_combout\,
	clrn => \ctrl|ALT_INV_Equal0~0_combout\,
	sclr => \c3|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|q\(3));

-- Location: LABCELL_X60_Y1_N0
\ctrl|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Equal0~0_combout\ = ( \c1|q\(3) & ( (\c1|q\(0) & (!\c1|q\(1) & !\c1|q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_q\(0),
	datac => \c1|ALT_INV_q\(1),
	datad => \c1|ALT_INV_q\(2),
	dataf => \c1|ALT_INV_q\(3),
	combout => \ctrl|Equal0~0_combout\);

-- Location: FF_X60_Y1_N11
\c1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c1|q[0]~_wirecell_combout\,
	asdata => \dm|d4|s1~0_combout\,
	clrn => \ctrl|ALT_INV_Equal0~0_combout\,
	sclr => \c3|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|q\(0));

-- Location: LABCELL_X60_Y1_N54
\c1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add0~1_combout\ = ( \c1|q\(0) & ( !\c1|q\(1) ) ) # ( !\c1|q\(0) & ( \c1|q\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \c1|ALT_INV_q\(1),
	dataf => \c1|ALT_INV_q\(0),
	combout => \c1|Add0~1_combout\);

-- Location: IOIBUF_X56_Y0_N18
\teclas[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(6),
	o => \teclas[6]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\teclas[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(2),
	o => \teclas[2]~input_o\);

-- Location: LABCELL_X57_Y1_N45
\dm|d3|s1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d3|s1~0_combout\ = ( \teclas[3]~input_o\ & ( \teclas[2]~input_o\ & ( (!\tc[0]~input_o\ & !\tc[1]~input_o\) ) ) ) # ( !\teclas[3]~input_o\ & ( \teclas[2]~input_o\ & ( (!\tc[0]~input_o\ & !\tc[1]~input_o\) ) ) ) # ( \teclas[3]~input_o\ & ( 
-- !\teclas[2]~input_o\ & ( (!\tc[0]~input_o\ & !\tc[1]~input_o\) ) ) ) # ( !\teclas[3]~input_o\ & ( !\teclas[2]~input_o\ & ( (!\tc[0]~input_o\ & (!\tc[1]~input_o\ & ((\teclas[6]~input_o\) # (\teclas[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclas[7]~input_o\,
	datab => \ALT_INV_tc[0]~input_o\,
	datac => \ALT_INV_tc[1]~input_o\,
	datad => \ALT_INV_teclas[6]~input_o\,
	datae => \ALT_INV_teclas[3]~input_o\,
	dataf => \ALT_INV_teclas[2]~input_o\,
	combout => \dm|d3|s1~0_combout\);

-- Location: FF_X60_Y1_N56
\c1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c1|Add0~1_combout\,
	asdata => \dm|d3|s1~0_combout\,
	clrn => \ctrl|ALT_INV_Equal0~0_combout\,
	sclr => \c3|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|q\(1));

-- Location: LABCELL_X60_Y1_N24
\c1|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add0~0_combout\ = ( \c1|q\(0) & ( !\c1|q\(1) $ (!\c1|q\(2)) ) ) # ( !\c1|q\(0) & ( \c1|q\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_q\(1),
	datad => \c1|ALT_INV_q\(2),
	dataf => \c1|ALT_INV_q\(0),
	combout => \c1|Add0~0_combout\);

-- Location: IOIBUF_X58_Y0_N41
\teclas[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(4),
	o => \teclas[4]~input_o\);

-- Location: LABCELL_X57_Y1_N42
\dm|d2|s1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d2|s1~0_combout\ = ( \teclas[4]~input_o\ & ( \teclas[5]~input_o\ & ( (!\tc[0]~input_o\ & !\tc[1]~input_o\) ) ) ) # ( !\teclas[4]~input_o\ & ( \teclas[5]~input_o\ & ( (!\tc[0]~input_o\ & !\tc[1]~input_o\) ) ) ) # ( \teclas[4]~input_o\ & ( 
-- !\teclas[5]~input_o\ & ( (!\tc[0]~input_o\ & !\tc[1]~input_o\) ) ) ) # ( !\teclas[4]~input_o\ & ( !\teclas[5]~input_o\ & ( (!\tc[0]~input_o\ & (!\tc[1]~input_o\ & ((\teclas[6]~input_o\) # (\teclas[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclas[7]~input_o\,
	datab => \ALT_INV_tc[0]~input_o\,
	datac => \ALT_INV_teclas[6]~input_o\,
	datad => \ALT_INV_tc[1]~input_o\,
	datae => \ALT_INV_teclas[4]~input_o\,
	dataf => \ALT_INV_teclas[5]~input_o\,
	combout => \dm|d2|s1~0_combout\);

-- Location: FF_X60_Y1_N26
\c1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c1|Add0~0_combout\,
	asdata => \dm|d2|s1~0_combout\,
	clrn => \ctrl|ALT_INV_Equal0~0_combout\,
	sclr => \c3|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|q\(2));

-- Location: LABCELL_X57_Y1_N48
\ce|C[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ce|C[6]~0_combout\ = ( \sel~input_o\ & ( (!\RC~input_o\) # ((!\tc[0]~input_o\ & !\tc[1]~input_o\)) ) ) # ( !\sel~input_o\ & ( !\RC~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111000111110001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tc[0]~input_o\,
	datab => \ALT_INV_tc[1]~input_o\,
	datac => \ALT_INV_RC~input_o\,
	dataf => \ALT_INV_sel~input_o\,
	combout => \ce|C[6]~0_combout\);

-- Location: FF_X57_Y1_N44
\r1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dm|d2|s1~0_combout\,
	sclr => \ALT_INV_sel~input_o\,
	ena => \ce|C[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|q\(2));

-- Location: LABCELL_X60_Y1_N57
\mt1|S[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mt1|S[2]~0_combout\ = (!\sel~input_o\ & (\c1|q\(2))) # (\sel~input_o\ & ((\r1|q\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_q\(2),
	datab => \ALT_INV_sel~input_o\,
	datac => \r1|ALT_INV_q\(2),
	combout => \mt1|S[2]~0_combout\);

-- Location: FF_X57_Y1_N47
\r1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dm|d3|s1~0_combout\,
	sclr => \ALT_INV_sel~input_o\,
	ena => \ce|C[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|q\(1));

-- Location: LABCELL_X60_Y1_N42
\mt1|S[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mt1|S[1]~2_combout\ = ( \r1|q\(1) & ( (\c1|q\(1)) # (\sel~input_o\) ) ) # ( !\r1|q\(1) & ( (!\sel~input_o\ & \c1|q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sel~input_o\,
	datac => \c1|ALT_INV_q\(1),
	dataf => \r1|ALT_INV_q\(1),
	combout => \mt1|S[1]~2_combout\);

-- Location: FF_X57_Y1_N50
\r1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \dm|d1|s1~0_combout\,
	sclr => \ALT_INV_sel~input_o\,
	sload => VCC,
	ena => \ce|C[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|q\(3));

-- Location: LABCELL_X56_Y1_N27
\dc1|g~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc1|g~0_combout\ = ( \r1|q\(3) & ( (!\sel~input_o\ & !\c1|q\(3)) ) ) # ( !\r1|q\(3) & ( (!\c1|q\(3)) # (\sel~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101011111010110100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel~input_o\,
	datac => \c1|ALT_INV_q\(3),
	dataf => \r1|ALT_INV_q\(3),
	combout => \dc1|g~0_combout\);

-- Location: FF_X57_Y1_N59
\r1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \dm|d4|s1~0_combout\,
	sclr => \ALT_INV_sel~input_o\,
	sload => VCC,
	ena => \ce|C[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|q\(0));

-- Location: LABCELL_X60_Y1_N3
\mt1|S[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mt1|S[0]~1_combout\ = ( \r1|q\(0) & ( (\sel~input_o\) # (\c1|q\(0)) ) ) # ( !\r1|q\(0) & ( (\c1|q\(0) & !\sel~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_q\(0),
	datac => \ALT_INV_sel~input_o\,
	dataf => \r1|ALT_INV_q\(0),
	combout => \mt1|S[0]~1_combout\);

-- Location: LABCELL_X55_Y1_N12
\dc1|a\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc1|a~combout\ = ( \mt1|S[0]~1_combout\ & ( ((!\dc1|g~0_combout\) # (\mt1|S[1]~2_combout\)) # (\mt1|S[2]~0_combout\) ) ) # ( !\mt1|S[0]~1_combout\ & ( (!\mt1|S[2]~0_combout\) # ((!\dc1|g~0_combout\) # (\mt1|S[1]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001111111111111100111111111111001111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mt1|ALT_INV_S[2]~0_combout\,
	datac => \mt1|ALT_INV_S[1]~2_combout\,
	datad => \dc1|ALT_INV_g~0_combout\,
	dataf => \mt1|ALT_INV_S[0]~1_combout\,
	combout => \dc1|a~combout\);

-- Location: LABCELL_X56_Y1_N9
\dc1|b\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc1|b~combout\ = ( \mt1|S[2]~0_combout\ & ( !\mt1|S[0]~1_combout\ $ (\mt1|S[1]~2_combout\) ) ) # ( !\mt1|S[2]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt1|ALT_INV_S[0]~1_combout\,
	datac => \mt1|ALT_INV_S[1]~2_combout\,
	dataf => \mt1|ALT_INV_S[2]~0_combout\,
	combout => \dc1|b~combout\);

-- Location: LABCELL_X60_Y1_N15
\dc1|c\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc1|c~combout\ = (!\mt1|S[1]~2_combout\) # ((\mt1|S[0]~1_combout\) # (\mt1|S[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111111111110011111111111111001111111111111100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mt1|ALT_INV_S[1]~2_combout\,
	datac => \mt1|ALT_INV_S[2]~0_combout\,
	datad => \mt1|ALT_INV_S[0]~1_combout\,
	combout => \dc1|c~combout\);

-- Location: MLABCELL_X59_Y1_N57
\dc1|d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc1|d~0_combout\ = (!\mt1|S[0]~1_combout\ & ((!\mt1|S[2]~0_combout\) # (\mt1|S[1]~2_combout\))) # (\mt1|S[0]~1_combout\ & (!\mt1|S[1]~2_combout\ $ (!\mt1|S[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100111100110011110011110011001111001111001100111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mt1|ALT_INV_S[0]~1_combout\,
	datac => \mt1|ALT_INV_S[1]~2_combout\,
	datad => \mt1|ALT_INV_S[2]~0_combout\,
	combout => \dc1|d~0_combout\);

-- Location: LABCELL_X55_Y1_N39
\dc1|e~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc1|e~0_combout\ = ( \mt1|S[1]~2_combout\ & ( !\mt1|S[0]~1_combout\ ) ) # ( !\mt1|S[1]~2_combout\ & ( (!\mt1|S[2]~0_combout\ & !\mt1|S[0]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mt1|ALT_INV_S[2]~0_combout\,
	datad => \mt1|ALT_INV_S[0]~1_combout\,
	dataf => \mt1|ALT_INV_S[1]~2_combout\,
	combout => \dc1|e~0_combout\);

-- Location: LABCELL_X55_Y1_N15
\dc1|f~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc1|f~0_combout\ = ( \mt1|S[0]~1_combout\ & ( (!\dc1|g~0_combout\) # ((!\mt1|S[1]~2_combout\ & \mt1|S[2]~0_combout\)) ) ) # ( !\mt1|S[0]~1_combout\ & ( (!\mt1|S[1]~2_combout\) # ((!\dc1|g~0_combout\) # (\mt1|S[2]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111011111110111111101111110010111100101111001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt1|ALT_INV_S[1]~2_combout\,
	datab => \mt1|ALT_INV_S[2]~0_combout\,
	datac => \dc1|ALT_INV_g~0_combout\,
	dataf => \mt1|ALT_INV_S[0]~1_combout\,
	combout => \dc1|f~0_combout\);

-- Location: LABCELL_X55_Y1_N6
\dc1|g~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc1|g~1_combout\ = ( \mt1|S[0]~1_combout\ & ( (!\dc1|g~0_combout\) # (!\mt1|S[2]~0_combout\ $ (!\mt1|S[1]~2_combout\)) ) ) # ( !\mt1|S[0]~1_combout\ & ( ((!\dc1|g~0_combout\) # (\mt1|S[1]~2_combout\)) # (\mt1|S[2]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100111111111111110011111111111111001111001111111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mt1|ALT_INV_S[2]~0_combout\,
	datac => \mt1|ALT_INV_S[1]~2_combout\,
	datad => \dc1|ALT_INV_g~0_combout\,
	dataf => \mt1|ALT_INV_S[0]~1_combout\,
	combout => \dc1|g~1_combout\);

-- Location: LABCELL_X56_Y1_N6
\c2|q[0]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \c2|q[0]~_wirecell_combout\ = !\c2|q\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \c2|ALT_INV_q\(0),
	combout => \c2|q[0]~_wirecell_combout\);

-- Location: LABCELL_X56_Y1_N3
\dm|d4|s2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d4|s2~0_combout\ = ( \tc[0]~input_o\ & ( (!\tc[1]~input_o\ & !\ct|s4~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_tc[1]~input_o\,
	datad => \ct|ALT_INV_s4~combout\,
	dataf => \ALT_INV_tc[0]~input_o\,
	combout => \dm|d4|s2~0_combout\);

-- Location: LABCELL_X56_Y1_N42
\c2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c2|Add0~1_combout\ = ( !\c2|q\(1) & ( \c2|q\(0) ) ) # ( \c2|q\(1) & ( !\c2|q\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \c2|ALT_INV_q\(1),
	dataf => \c2|ALT_INV_q\(0),
	combout => \c2|Add0~1_combout\);

-- Location: LABCELL_X55_Y1_N18
\dm|d3|s2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d3|s2~0_combout\ = ( \teclas[2]~input_o\ & ( \teclas[3]~input_o\ & ( (\tc[0]~input_o\ & !\tc[1]~input_o\) ) ) ) # ( !\teclas[2]~input_o\ & ( \teclas[3]~input_o\ & ( (\tc[0]~input_o\ & !\tc[1]~input_o\) ) ) ) # ( \teclas[2]~input_o\ & ( 
-- !\teclas[3]~input_o\ & ( (\tc[0]~input_o\ & !\tc[1]~input_o\) ) ) ) # ( !\teclas[2]~input_o\ & ( !\teclas[3]~input_o\ & ( (\tc[0]~input_o\ & (!\tc[1]~input_o\ & ((\teclas[7]~input_o\) # (\teclas[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100000000010101010000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tc[0]~input_o\,
	datab => \ALT_INV_teclas[6]~input_o\,
	datac => \ALT_INV_teclas[7]~input_o\,
	datad => \ALT_INV_tc[1]~input_o\,
	datae => \ALT_INV_teclas[2]~input_o\,
	dataf => \ALT_INV_teclas[3]~input_o\,
	combout => \dm|d3|s2~0_combout\);

-- Location: LABCELL_X56_Y1_N24
\ce|C[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ce|C[5]~2_combout\ = ( \tc[0]~input_o\ & ( (!\RC~input_o\) # ((!\sel~input_o\ & !\tc[1]~input_o\)) ) ) # ( !\tc[0]~input_o\ & ( !\RC~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111000111110001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel~input_o\,
	datab => \ALT_INV_tc[1]~input_o\,
	datac => \ALT_INV_RC~input_o\,
	dataf => \ALT_INV_tc[0]~input_o\,
	combout => \ce|C[5]~2_combout\);

-- Location: FF_X56_Y1_N44
\c2|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c2|Add0~1_combout\,
	asdata => \dm|d3|s2~0_combout\,
	clrn => \ctrl|ALT_INV_process_0~2_combout\,
	sclr => \c3|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c2|q\(1));

-- Location: LABCELL_X56_Y1_N33
\c2|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c2|Add0~0_combout\ = ( \c2|q\(0) & ( !\c2|q\(1) $ (!\c2|q\(2)) ) ) # ( !\c2|q\(0) & ( \c2|q\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c2|ALT_INV_q\(1),
	datad => \c2|ALT_INV_q\(2),
	dataf => \c2|ALT_INV_q\(0),
	combout => \c2|Add0~0_combout\);

-- Location: LABCELL_X55_Y1_N21
\dm|d2|s2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d2|s2~0_combout\ = ( \teclas[5]~input_o\ & ( \teclas[4]~input_o\ & ( (\tc[0]~input_o\ & !\tc[1]~input_o\) ) ) ) # ( !\teclas[5]~input_o\ & ( \teclas[4]~input_o\ & ( (\tc[0]~input_o\ & !\tc[1]~input_o\) ) ) ) # ( \teclas[5]~input_o\ & ( 
-- !\teclas[4]~input_o\ & ( (\tc[0]~input_o\ & !\tc[1]~input_o\) ) ) ) # ( !\teclas[5]~input_o\ & ( !\teclas[4]~input_o\ & ( (\tc[0]~input_o\ & (!\tc[1]~input_o\ & ((\teclas[7]~input_o\) # (\teclas[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tc[0]~input_o\,
	datab => \ALT_INV_teclas[6]~input_o\,
	datac => \ALT_INV_tc[1]~input_o\,
	datad => \ALT_INV_teclas[7]~input_o\,
	datae => \ALT_INV_teclas[5]~input_o\,
	dataf => \ALT_INV_teclas[4]~input_o\,
	combout => \dm|d2|s2~0_combout\);

-- Location: FF_X56_Y1_N35
\c2|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c2|Add0~0_combout\,
	asdata => \dm|d2|s2~0_combout\,
	clrn => \ctrl|ALT_INV_process_0~2_combout\,
	sclr => \c3|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c2|q\(2));

-- Location: LABCELL_X56_Y1_N15
\ctrl|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|process_0~1_combout\ = ( \c2|q\(0) & ( \c2|q\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c2|ALT_INV_q\(2),
	dataf => \c2|ALT_INV_q\(0),
	combout => \ctrl|process_0~1_combout\);

-- Location: LABCELL_X60_Y1_N30
\ctrl|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|process_0~0_combout\ = ( !\c2|q\(1) & ( !\c2|q\(3) & ( (!\c1|q\(2) & (\c1|q\(0) & (!\c1|q\(1) & \c1|q\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_q\(2),
	datab => \c1|ALT_INV_q\(0),
	datac => \c1|ALT_INV_q\(1),
	datad => \c1|ALT_INV_q\(3),
	datae => \c2|ALT_INV_q\(1),
	dataf => \c2|ALT_INV_q\(3),
	combout => \ctrl|process_0~0_combout\);

-- Location: LABCELL_X56_Y1_N51
\ctrl|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|process_0~2_combout\ = ( \ctrl|process_0~0_combout\ & ( \ctrl|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ctrl|ALT_INV_process_0~1_combout\,
	dataf => \ctrl|ALT_INV_process_0~0_combout\,
	combout => \ctrl|process_0~2_combout\);

-- Location: FF_X56_Y1_N8
\c2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c2|q[0]~_wirecell_combout\,
	asdata => \dm|d4|s2~0_combout\,
	clrn => \ctrl|ALT_INV_process_0~2_combout\,
	sclr => \c3|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c2|q\(0));

-- Location: LABCELL_X56_Y1_N57
\c2|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c2|Add0~2_combout\ = ( \c2|q\(3) & ( \c2|q\(1) & ( (!\c2|q\(0)) # (!\c2|q\(2)) ) ) ) # ( !\c2|q\(3) & ( \c2|q\(1) & ( (\c2|q\(0) & \c2|q\(2)) ) ) ) # ( \c2|q\(3) & ( !\c2|q\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000011111111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c2|ALT_INV_q\(0),
	datad => \c2|ALT_INV_q\(2),
	datae => \c2|ALT_INV_q\(3),
	dataf => \c2|ALT_INV_q\(1),
	combout => \c2|Add0~2_combout\);

-- Location: LABCELL_X55_Y1_N27
\dm|d1|s2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d1|s2~0_combout\ = ( \tc[0]~input_o\ & ( (!\tc[1]~input_o\ & ((\teclas[8]~input_o\) # (\teclas[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclas[9]~input_o\,
	datac => \ALT_INV_teclas[8]~input_o\,
	datad => \ALT_INV_tc[1]~input_o\,
	dataf => \ALT_INV_tc[0]~input_o\,
	combout => \dm|d1|s2~0_combout\);

-- Location: FF_X56_Y1_N59
\c2|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c2|Add0~2_combout\,
	asdata => \dm|d1|s2~0_combout\,
	clrn => \ctrl|ALT_INV_process_0~2_combout\,
	sclr => \c3|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c2|q\(3));

-- Location: LABCELL_X55_Y1_N30
\ce|C[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ce|C[4]~1_combout\ = ( \tc[0]~input_o\ & ( (!\RC~input_o\) # ((\sel~input_o\ & !\tc[1]~input_o\)) ) ) # ( !\tc[0]~input_o\ & ( !\RC~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110100111101001111010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel~input_o\,
	datab => \ALT_INV_tc[1]~input_o\,
	datac => \ALT_INV_RC~input_o\,
	dataf => \ALT_INV_tc[0]~input_o\,
	combout => \ce|C[4]~1_combout\);

-- Location: FF_X55_Y1_N32
\r2|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \dm|d1|s2~0_combout\,
	sclr => \ALT_INV_sel~input_o\,
	sload => VCC,
	ena => \ce|C[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r2|q\(3));

-- Location: LABCELL_X55_Y1_N48
\dc2|a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc2|a~0_combout\ = ( \r2|q\(3) & ( (!\c2|q\(3) & !\sel~input_o\) ) ) # ( !\r2|q\(3) & ( (!\c2|q\(3)) # (\sel~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111111001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c2|ALT_INV_q\(3),
	datad => \ALT_INV_sel~input_o\,
	dataf => \r2|ALT_INV_q\(3),
	combout => \dc2|a~0_combout\);

-- Location: FF_X55_Y1_N23
\r2|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dm|d2|s2~0_combout\,
	sclr => \ALT_INV_sel~input_o\,
	ena => \ce|C[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r2|q\(2));

-- Location: LABCELL_X56_Y1_N12
\mt2|S[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mt2|S[2]~1_combout\ = ( \sel~input_o\ & ( \r2|q\(2) ) ) # ( !\sel~input_o\ & ( \c2|q\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c2|ALT_INV_q\(2),
	datac => \r2|ALT_INV_q\(2),
	dataf => \ALT_INV_sel~input_o\,
	combout => \mt2|S[2]~1_combout\);

-- Location: FF_X55_Y1_N37
\r2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \dm|d4|s2~0_combout\,
	sclr => \ALT_INV_sel~input_o\,
	sload => VCC,
	ena => \ce|C[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r2|q\(0));

-- Location: LABCELL_X55_Y1_N36
\mt2|S[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mt2|S[0]~0_combout\ = ( \sel~input_o\ & ( \r2|q\(0) ) ) # ( !\sel~input_o\ & ( \c2|q\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c2|ALT_INV_q\(0),
	datad => \r2|ALT_INV_q\(0),
	dataf => \ALT_INV_sel~input_o\,
	combout => \mt2|S[0]~0_combout\);

-- Location: FF_X55_Y1_N20
\r2|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dm|d3|s2~0_combout\,
	sclr => \ALT_INV_sel~input_o\,
	ena => \ce|C[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r2|q\(1));

-- Location: LABCELL_X56_Y1_N30
\mt2|S[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mt2|S[1]~2_combout\ = (!\sel~input_o\ & (\c2|q\(1))) # (\sel~input_o\ & ((\r2|q\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c2|ALT_INV_q\(1),
	datac => \ALT_INV_sel~input_o\,
	datad => \r2|ALT_INV_q\(1),
	combout => \mt2|S[1]~2_combout\);

-- Location: LABCELL_X55_Y1_N54
\dc2|a\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc2|a~combout\ = ( \mt2|S[1]~2_combout\ ) # ( !\mt2|S[1]~2_combout\ & ( (!\dc2|a~0_combout\) # (!\mt2|S[2]~1_combout\ $ (\mt2|S[0]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111010111011111011101011101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc2|ALT_INV_a~0_combout\,
	datab => \mt2|ALT_INV_S[2]~1_combout\,
	datad => \mt2|ALT_INV_S[0]~0_combout\,
	dataf => \mt2|ALT_INV_S[1]~2_combout\,
	combout => \dc2|a~combout\);

-- Location: LABCELL_X56_Y1_N48
\dc2|b\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc2|b~combout\ = ( \mt2|S[1]~2_combout\ & ( (!\mt2|S[2]~1_combout\) # (\mt2|S[0]~0_combout\) ) ) # ( !\mt2|S[1]~2_combout\ & ( (!\mt2|S[2]~1_combout\) # (!\mt2|S[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100111111111100110011001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mt2|ALT_INV_S[2]~1_combout\,
	datad => \mt2|ALT_INV_S[0]~0_combout\,
	dataf => \mt2|ALT_INV_S[1]~2_combout\,
	combout => \dc2|b~combout\);

-- Location: LABCELL_X55_Y1_N24
\dc2|c\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc2|c~combout\ = ( \mt2|S[2]~1_combout\ ) # ( !\mt2|S[2]~1_combout\ & ( (!\mt2|S[1]~2_combout\) # (\mt2|S[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mt2|ALT_INV_S[1]~2_combout\,
	datad => \mt2|ALT_INV_S[0]~0_combout\,
	dataf => \mt2|ALT_INV_S[2]~1_combout\,
	combout => \dc2|c~combout\);

-- Location: LABCELL_X55_Y1_N33
\dc2|d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc2|d~0_combout\ = ( \mt2|S[1]~2_combout\ & ( (!\mt2|S[2]~1_combout\) # (!\mt2|S[0]~0_combout\) ) ) # ( !\mt2|S[1]~2_combout\ & ( !\mt2|S[2]~1_combout\ $ (\mt2|S[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mt2|ALT_INV_S[2]~1_combout\,
	datad => \mt2|ALT_INV_S[0]~0_combout\,
	dataf => \mt2|ALT_INV_S[1]~2_combout\,
	combout => \dc2|d~0_combout\);

-- Location: LABCELL_X55_Y1_N3
\dc2|e~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc2|e~0_combout\ = ( \mt2|S[1]~2_combout\ & ( !\mt2|S[0]~0_combout\ ) ) # ( !\mt2|S[1]~2_combout\ & ( (!\mt2|S[2]~1_combout\ & !\mt2|S[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mt2|ALT_INV_S[2]~1_combout\,
	datad => \mt2|ALT_INV_S[0]~0_combout\,
	dataf => \mt2|ALT_INV_S[1]~2_combout\,
	combout => \dc2|e~0_combout\);

-- Location: LABCELL_X55_Y1_N57
\dc2|f~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc2|f~0_combout\ = ( \mt2|S[1]~2_combout\ & ( (!\dc2|a~0_combout\) # ((\mt2|S[2]~1_combout\ & !\mt2|S[0]~0_combout\)) ) ) # ( !\mt2|S[1]~2_combout\ & ( (!\dc2|a~0_combout\) # ((!\mt2|S[0]~0_combout\) # (\mt2|S[2]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111011111111111011101110111011101010101011101110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dc2|ALT_INV_a~0_combout\,
	datab => \mt2|ALT_INV_S[2]~1_combout\,
	datad => \mt2|ALT_INV_S[0]~0_combout\,
	dataf => \mt2|ALT_INV_S[1]~2_combout\,
	combout => \dc2|f~0_combout\);

-- Location: LABCELL_X55_Y1_N42
\dc2|g~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc2|g~0_combout\ = ( \mt2|S[1]~2_combout\ & ( (!\mt2|S[2]~1_combout\) # ((!\dc2|a~0_combout\) # (!\mt2|S[0]~0_combout\)) ) ) # ( !\mt2|S[1]~2_combout\ & ( (!\dc2|a~0_combout\) # (\mt2|S[2]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100111111001111111111111111001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mt2|ALT_INV_S[2]~1_combout\,
	datac => \dc2|ALT_INV_a~0_combout\,
	datad => \mt2|ALT_INV_S[0]~0_combout\,
	dataf => \mt2|ALT_INV_S[1]~2_combout\,
	combout => \dc2|g~0_combout\);

-- Location: LABCELL_X61_Y1_N6
\c3|q[0]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \c3|q[0]~_wirecell_combout\ = !\c3|q\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \c3|ALT_INV_q\(0),
	combout => \c3|q[0]~_wirecell_combout\);

-- Location: LABCELL_X57_Y1_N51
\dm|d4|s3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d4|s3~0_combout\ = (!\tc[0]~input_o\ & (\tc[1]~input_o\ & !\ct|s4~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tc[0]~input_o\,
	datab => \ALT_INV_tc[1]~input_o\,
	datad => \ct|ALT_INV_s4~combout\,
	combout => \dm|d4|s3~0_combout\);

-- Location: LABCELL_X61_Y1_N54
\c3|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c3|Add0~0_combout\ = ( \c3|q\(0) & ( !\c3|q\(1) $ (!\c3|q\(2)) ) ) # ( !\c3|q\(0) & ( \c3|q\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c3|ALT_INV_q\(1),
	datad => \c3|ALT_INV_q\(2),
	dataf => \c3|ALT_INV_q\(0),
	combout => \c3|Add0~0_combout\);

-- Location: LABCELL_X57_Y1_N18
\dm|d2|s3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d2|s3~0_combout\ = ( \teclas[4]~input_o\ & ( \teclas[5]~input_o\ & ( (!\tc[0]~input_o\ & \tc[1]~input_o\) ) ) ) # ( !\teclas[4]~input_o\ & ( \teclas[5]~input_o\ & ( (!\tc[0]~input_o\ & \tc[1]~input_o\) ) ) ) # ( \teclas[4]~input_o\ & ( 
-- !\teclas[5]~input_o\ & ( (!\tc[0]~input_o\ & \tc[1]~input_o\) ) ) ) # ( !\teclas[4]~input_o\ & ( !\teclas[5]~input_o\ & ( (!\tc[0]~input_o\ & (\tc[1]~input_o\ & ((\teclas[7]~input_o\) # (\teclas[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tc[0]~input_o\,
	datab => \ALT_INV_teclas[6]~input_o\,
	datac => \ALT_INV_teclas[7]~input_o\,
	datad => \ALT_INV_tc[1]~input_o\,
	datae => \ALT_INV_teclas[4]~input_o\,
	dataf => \ALT_INV_teclas[5]~input_o\,
	combout => \dm|d2|s3~0_combout\);

-- Location: LABCELL_X57_Y1_N39
\ce|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ce|Equal2~0_combout\ = ( \tc[0]~input_o\ & ( \tc[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_tc[1]~input_o\,
	dataf => \ALT_INV_tc[0]~input_o\,
	combout => \ce|Equal2~0_combout\);

-- Location: LABCELL_X57_Y1_N3
\ce|C[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ce|C[3]~6_combout\ = ( \tc[0]~input_o\ ) # ( !\tc[0]~input_o\ & ( (!\tc[1]~input_o\) # (\sel~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101011111010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel~input_o\,
	datac => \ALT_INV_tc[1]~input_o\,
	dataf => \ALT_INV_tc[0]~input_o\,
	combout => \ce|C[3]~6_combout\);

-- Location: LABCELL_X57_Y1_N54
\ce|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ce|comb~0_combout\ = ( \tc[0]~input_o\ & ( (\tc[1]~input_o\ & \RC~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_tc[1]~input_o\,
	datad => \ALT_INV_RC~input_o\,
	dataf => \ALT_INV_tc[0]~input_o\,
	combout => \ce|comb~0_combout\);

-- Location: LABCELL_X57_Y1_N9
\ce|C[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ce|C\(3) = ( !\ce|comb~0_combout\ & ( (!\RC~input_o\) # ((!\ce|Equal2~0_combout\ & ((!\ce|C[3]~6_combout\))) # (\ce|Equal2~0_combout\ & (\ce|C\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111010001111111111101000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ce|ALT_INV_C\(3),
	datab => \ce|ALT_INV_Equal2~0_combout\,
	datac => \ce|ALT_INV_C[3]~6_combout\,
	datad => \ALT_INV_RC~input_o\,
	dataf => \ce|ALT_INV_comb~0_combout\,
	combout => \ce|C\(3));

-- Location: FF_X61_Y1_N56
\c3|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c3|Add0~0_combout\,
	asdata => \dm|d2|s3~0_combout\,
	clrn => \ctrl|ALT_INV_E[1]~2_combout\,
	sclr => \c3|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|q\(2));

-- Location: LABCELL_X61_Y1_N0
\c3|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c3|Add0~2_combout\ = ( \c3|q\(0) & ( !\c3|q\(3) $ (((!\c3|q\(1)) # (!\c3|q\(2)))) ) ) # ( !\c3|q\(0) & ( \c3|q\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c3|ALT_INV_q\(1),
	datac => \c3|ALT_INV_q\(2),
	datad => \c3|ALT_INV_q\(3),
	dataf => \c3|ALT_INV_q\(0),
	combout => \c3|Add0~2_combout\);

-- Location: LABCELL_X57_Y1_N36
\dm|d1|s3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d1|s3~0_combout\ = ( !\tc[0]~input_o\ & ( (\tc[1]~input_o\ & ((\teclas[9]~input_o\) # (\teclas[8]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclas[8]~input_o\,
	datab => \ALT_INV_tc[1]~input_o\,
	datac => \ALT_INV_teclas[9]~input_o\,
	dataf => \ALT_INV_tc[0]~input_o\,
	combout => \dm|d1|s3~0_combout\);

-- Location: FF_X61_Y1_N2
\c3|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c3|Add0~2_combout\,
	asdata => \dm|d1|s3~0_combout\,
	clrn => \ctrl|ALT_INV_E[1]~2_combout\,
	sclr => \c3|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|q\(3));

-- Location: LABCELL_X61_Y1_N27
\ctrl|E[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|E[1]~1_combout\ = ( \c3|q\(3) & ( \c3|q\(0) & ( (!\c3|q\(2) & !\c3|q\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c3|ALT_INV_q\(2),
	datad => \c3|ALT_INV_q\(1),
	datae => \c3|ALT_INV_q\(3),
	dataf => \c3|ALT_INV_q\(0),
	combout => \ctrl|E[1]~1_combout\);

-- Location: MLABCELL_X59_Y1_N42
\c4|q[0]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \c4|q[0]~_wirecell_combout\ = !\c4|q\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \c4|ALT_INV_q\(0),
	combout => \c4|q[0]~_wirecell_combout\);

-- Location: LABCELL_X57_Y1_N33
\dm|d4|s4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d4|s4~combout\ = (\ce|Equal2~0_combout\ & !\ct|s4~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ce|ALT_INV_Equal2~0_combout\,
	datad => \ct|ALT_INV_s4~combout\,
	combout => \dm|d4|s4~combout\);

-- Location: MLABCELL_X59_Y1_N21
\c4|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c4|Add0~1_combout\ = ( !\c4|q\(1) & ( \c4|q\(0) ) ) # ( \c4|q\(1) & ( !\c4|q\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \c4|ALT_INV_q\(1),
	dataf => \c4|ALT_INV_q\(0),
	combout => \c4|Add0~1_combout\);

-- Location: LABCELL_X57_Y1_N15
\dm|d3|s4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d3|s4~combout\ = ( \teclas[3]~input_o\ & ( \teclas[2]~input_o\ & ( (\tc[0]~input_o\ & \tc[1]~input_o\) ) ) ) # ( !\teclas[3]~input_o\ & ( \teclas[2]~input_o\ & ( (\tc[0]~input_o\ & \tc[1]~input_o\) ) ) ) # ( \teclas[3]~input_o\ & ( 
-- !\teclas[2]~input_o\ & ( (\tc[0]~input_o\ & \tc[1]~input_o\) ) ) ) # ( !\teclas[3]~input_o\ & ( !\teclas[2]~input_o\ & ( (\tc[0]~input_o\ & (\tc[1]~input_o\ & ((\teclas[7]~input_o\) # (\teclas[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tc[0]~input_o\,
	datab => \ALT_INV_teclas[6]~input_o\,
	datac => \ALT_INV_tc[1]~input_o\,
	datad => \ALT_INV_teclas[7]~input_o\,
	datae => \ALT_INV_teclas[3]~input_o\,
	dataf => \ALT_INV_teclas[2]~input_o\,
	combout => \dm|d3|s4~combout\);

-- Location: MLABCELL_X59_Y1_N39
\ce|C[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ce|C[1]~4_combout\ = ( \tc[0]~input_o\ & ( (!\RC~input_o\) # ((!\sel~input_o\ & \tc[1]~input_o\)) ) ) # ( !\tc[0]~input_o\ & ( !\RC~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000011001111111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sel~input_o\,
	datac => \ALT_INV_tc[1]~input_o\,
	datad => \ALT_INV_RC~input_o\,
	dataf => \ALT_INV_tc[0]~input_o\,
	combout => \ce|C[1]~4_combout\);

-- Location: FF_X59_Y1_N23
\c4|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c4|Add0~1_combout\,
	asdata => \dm|d3|s4~combout\,
	clrn => \ctrl|ALT_INV_process_0~4_combout\,
	sclr => \c3|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c4|q\(1));

-- Location: MLABCELL_X59_Y1_N54
\c4|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c4|Add0~2_combout\ = ( \c4|q\(0) & ( !\c4|q\(3) $ (((!\c4|q\(1)) # (!\c4|q\(2)))) ) ) # ( !\c4|q\(0) & ( \c4|q\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c4|ALT_INV_q\(1),
	datac => \c4|ALT_INV_q\(2),
	datad => \c4|ALT_INV_q\(3),
	dataf => \c4|ALT_INV_q\(0),
	combout => \c4|Add0~2_combout\);

-- Location: MLABCELL_X59_Y1_N48
\dm|d1|s4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d1|s4~combout\ = (\tc[1]~input_o\ & (\tc[0]~input_o\ & ((\teclas[8]~input_o\) # (\teclas[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011000000010000001100000001000000110000000100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclas[9]~input_o\,
	datab => \ALT_INV_tc[1]~input_o\,
	datac => \ALT_INV_tc[0]~input_o\,
	datad => \ALT_INV_teclas[8]~input_o\,
	combout => \dm|d1|s4~combout\);

-- Location: FF_X59_Y1_N56
\c4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c4|Add0~2_combout\,
	asdata => \dm|d1|s4~combout\,
	clrn => \ctrl|ALT_INV_process_0~4_combout\,
	sclr => \c3|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c4|q\(3));

-- Location: MLABCELL_X59_Y1_N30
\ctrl|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|process_0~3_combout\ = ( \c4|q\(0) & ( (!\c4|q\(1) & (!\c4|q\(2) & \c4|q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c4|ALT_INV_q\(1),
	datac => \c4|ALT_INV_q\(2),
	datad => \c4|ALT_INV_q\(3),
	dataf => \c4|ALT_INV_q\(0),
	combout => \ctrl|process_0~3_combout\);

-- Location: MLABCELL_X59_Y1_N0
\ctrl|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|process_0~4_combout\ = ( \ctrl|E[1]~1_combout\ & ( \ctrl|process_0~0_combout\ & ( (\ctrl|process_0~3_combout\ & \ctrl|process_0~1_combout\) ) ) ) # ( !\ctrl|E[1]~1_combout\ & ( \ctrl|process_0~0_combout\ & ( (\ctrl|process_0~3_combout\ & 
-- (\ctrl|process_0~1_combout\ & \ctrl|E[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|ALT_INV_process_0~3_combout\,
	datac => \ctrl|ALT_INV_process_0~1_combout\,
	datad => \ctrl|ALT_INV_E[1]~0_combout\,
	datae => \ctrl|ALT_INV_E[1]~1_combout\,
	dataf => \ctrl|ALT_INV_process_0~0_combout\,
	combout => \ctrl|process_0~4_combout\);

-- Location: FF_X59_Y1_N44
\c4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c4|q[0]~_wirecell_combout\,
	asdata => \dm|d4|s4~combout\,
	clrn => \ctrl|ALT_INV_process_0~4_combout\,
	sclr => \c3|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c4|q\(0));

-- Location: MLABCELL_X59_Y1_N51
\c4|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c4|Add0~0_combout\ = ( \c4|q\(1) & ( !\c4|q\(0) $ (!\c4|q\(2)) ) ) # ( !\c4|q\(1) & ( \c4|q\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c4|ALT_INV_q\(0),
	datad => \c4|ALT_INV_q\(2),
	dataf => \c4|ALT_INV_q\(1),
	combout => \c4|Add0~0_combout\);

-- Location: LABCELL_X57_Y1_N12
\dm|d2|s4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d2|s4~combout\ = ( \teclas[4]~input_o\ & ( \teclas[5]~input_o\ & ( (\tc[0]~input_o\ & \tc[1]~input_o\) ) ) ) # ( !\teclas[4]~input_o\ & ( \teclas[5]~input_o\ & ( (\tc[0]~input_o\ & \tc[1]~input_o\) ) ) ) # ( \teclas[4]~input_o\ & ( 
-- !\teclas[5]~input_o\ & ( (\tc[0]~input_o\ & \tc[1]~input_o\) ) ) ) # ( !\teclas[4]~input_o\ & ( !\teclas[5]~input_o\ & ( (\tc[0]~input_o\ & (\tc[1]~input_o\ & ((\teclas[7]~input_o\) # (\teclas[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tc[0]~input_o\,
	datab => \ALT_INV_teclas[6]~input_o\,
	datac => \ALT_INV_teclas[7]~input_o\,
	datad => \ALT_INV_tc[1]~input_o\,
	datae => \ALT_INV_teclas[4]~input_o\,
	dataf => \ALT_INV_teclas[5]~input_o\,
	combout => \dm|d2|s4~combout\);

-- Location: FF_X59_Y1_N53
\c4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c4|Add0~0_combout\,
	asdata => \dm|d2|s4~combout\,
	clrn => \ctrl|ALT_INV_process_0~4_combout\,
	sclr => \c3|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c4|q\(2));

-- Location: MLABCELL_X59_Y1_N27
\ctrl|E[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|E[1]~0_combout\ = ( !\c4|q\(0) & ( (!\c4|q\(2) & (\c4|q\(1) & !\c4|q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c4|ALT_INV_q\(2),
	datac => \c4|ALT_INV_q\(1),
	datad => \c4|ALT_INV_q\(3),
	dataf => \c4|ALT_INV_q\(0),
	combout => \ctrl|E[1]~0_combout\);

-- Location: LABCELL_X61_Y1_N33
\ctrl|E[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|E[1]~2_combout\ = ( \ctrl|E[1]~0_combout\ & ( \ctrl|process_0~0_combout\ & ( \ctrl|process_0~1_combout\ ) ) ) # ( !\ctrl|E[1]~0_combout\ & ( \ctrl|process_0~0_combout\ & ( (\ctrl|E[1]~1_combout\ & \ctrl|process_0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_E[1]~1_combout\,
	datad => \ctrl|ALT_INV_process_0~1_combout\,
	datae => \ctrl|ALT_INV_E[1]~0_combout\,
	dataf => \ctrl|ALT_INV_process_0~0_combout\,
	combout => \ctrl|E[1]~2_combout\);

-- Location: FF_X61_Y1_N8
\c3|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c3|q[0]~_wirecell_combout\,
	asdata => \dm|d4|s3~0_combout\,
	clrn => \ctrl|ALT_INV_E[1]~2_combout\,
	sclr => \c3|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|q\(0));

-- Location: LABCELL_X61_Y1_N51
\c3|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c3|Add0~1_combout\ = ( !\c3|q\(1) & ( \c3|q\(0) ) ) # ( \c3|q\(1) & ( !\c3|q\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \c3|ALT_INV_q\(1),
	dataf => \c3|ALT_INV_q\(0),
	combout => \c3|Add0~1_combout\);

-- Location: LABCELL_X57_Y1_N21
\dm|d3|s3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d3|s3~0_combout\ = ( \teclas[3]~input_o\ & ( \teclas[2]~input_o\ & ( (!\tc[0]~input_o\ & \tc[1]~input_o\) ) ) ) # ( !\teclas[3]~input_o\ & ( \teclas[2]~input_o\ & ( (!\tc[0]~input_o\ & \tc[1]~input_o\) ) ) ) # ( \teclas[3]~input_o\ & ( 
-- !\teclas[2]~input_o\ & ( (!\tc[0]~input_o\ & \tc[1]~input_o\) ) ) ) # ( !\teclas[3]~input_o\ & ( !\teclas[2]~input_o\ & ( (!\tc[0]~input_o\ & (\tc[1]~input_o\ & ((\teclas[7]~input_o\) # (\teclas[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tc[0]~input_o\,
	datab => \ALT_INV_teclas[6]~input_o\,
	datac => \ALT_INV_tc[1]~input_o\,
	datad => \ALT_INV_teclas[7]~input_o\,
	datae => \ALT_INV_teclas[3]~input_o\,
	dataf => \ALT_INV_teclas[2]~input_o\,
	combout => \dm|d3|s3~0_combout\);

-- Location: FF_X61_Y1_N53
\c3|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c3|Add0~1_combout\,
	asdata => \dm|d3|s3~0_combout\,
	clrn => \ctrl|ALT_INV_E[1]~2_combout\,
	sclr => \c3|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|q\(1));

-- Location: LABCELL_X57_Y1_N24
\ce|C[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ce|C[2]~5_combout\ = ( !\tc[0]~input_o\ & ( (\sel~input_o\ & \tc[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sel~input_o\,
	datad => \ALT_INV_tc[1]~input_o\,
	dataf => \ALT_INV_tc[0]~input_o\,
	combout => \ce|C[2]~5_combout\);

-- Location: LABCELL_X57_Y1_N27
\ce|C[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ce|C\(2) = ( !\ce|comb~0_combout\ & ( (!\RC~input_o\) # ((!\ce|Equal2~0_combout\ & (\ce|C[2]~5_combout\)) # (\ce|Equal2~0_combout\ & ((\ce|C\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011111110111001101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ce|ALT_INV_C[2]~5_combout\,
	datab => \ALT_INV_RC~input_o\,
	datac => \ce|ALT_INV_Equal2~0_combout\,
	datad => \ce|ALT_INV_C\(2),
	dataf => \ce|ALT_INV_comb~0_combout\,
	combout => \ce|C\(2));

-- Location: FF_X57_Y1_N23
\r3|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dm|d3|s3~0_combout\,
	sclr => \ALT_INV_sel~input_o\,
	ena => \ce|C\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r3|q\(1));

-- Location: LABCELL_X61_Y1_N3
\mt3|S[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mt3|S[1]~2_combout\ = (!\sel~input_o\ & (\c3|q\(1))) # (\sel~input_o\ & ((\r3|q\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c3|ALT_INV_q\(1),
	datac => \ALT_INV_sel~input_o\,
	datad => \r3|ALT_INV_q\(1),
	combout => \mt3|S[1]~2_combout\);

-- Location: FF_X57_Y1_N5
\r3|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \dm|d1|s3~0_combout\,
	sclr => \ALT_INV_sel~input_o\,
	sload => VCC,
	ena => \ce|C\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r3|q\(3));

-- Location: LABCELL_X61_Y1_N9
\dc3|a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc3|a~0_combout\ = (!\sel~input_o\ & (!\c3|q\(3))) # (\sel~input_o\ & ((!\r3|q\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110100000101011111010000010101111101000001010111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c3|ALT_INV_q\(3),
	datac => \ALT_INV_sel~input_o\,
	datad => \r3|ALT_INV_q\(3),
	combout => \dc3|a~0_combout\);

-- Location: FF_X57_Y1_N38
\r3|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \dm|d4|s3~0_combout\,
	sclr => \ALT_INV_sel~input_o\,
	sload => VCC,
	ena => \ce|C\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r3|q\(0));

-- Location: LABCELL_X56_Y1_N0
\mt3|S[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mt3|S[0]~0_combout\ = (!\sel~input_o\ & ((\c3|q\(0)))) # (\sel~input_o\ & (\r3|q\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel~input_o\,
	datab => \r3|ALT_INV_q\(0),
	datac => \c3|ALT_INV_q\(0),
	combout => \mt3|S[0]~0_combout\);

-- Location: FF_X57_Y1_N20
\r3|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dm|d2|s3~0_combout\,
	sclr => \ALT_INV_sel~input_o\,
	ena => \ce|C\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r3|q\(2));

-- Location: LABCELL_X61_Y1_N42
\mt3|S[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mt3|S[2]~1_combout\ = ( \r3|q\(2) & ( (\c3|q\(2)) # (\sel~input_o\) ) ) # ( !\r3|q\(2) & ( (!\sel~input_o\ & \c3|q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sel~input_o\,
	datac => \c3|ALT_INV_q\(2),
	dataf => \r3|ALT_INV_q\(2),
	combout => \mt3|S[2]~1_combout\);

-- Location: LABCELL_X55_Y1_N9
\dc3|a\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc3|a~combout\ = ( \mt3|S[2]~1_combout\ & ( ((!\dc3|a~0_combout\) # (\mt3|S[0]~0_combout\)) # (\mt3|S[1]~2_combout\) ) ) # ( !\mt3|S[2]~1_combout\ & ( ((!\dc3|a~0_combout\) # (!\mt3|S[0]~0_combout\)) # (\mt3|S[1]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110101111111111111010111110101111111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt3|ALT_INV_S[1]~2_combout\,
	datac => \dc3|ALT_INV_a~0_combout\,
	datad => \mt3|ALT_INV_S[0]~0_combout\,
	dataf => \mt3|ALT_INV_S[2]~1_combout\,
	combout => \dc3|a~combout\);

-- Location: LABCELL_X61_Y1_N45
\dc3|b\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc3|b~combout\ = ( \mt3|S[2]~1_combout\ & ( !\mt3|S[1]~2_combout\ $ (\mt3|S[0]~0_combout\) ) ) # ( !\mt3|S[2]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt3|ALT_INV_S[1]~2_combout\,
	datac => \mt3|ALT_INV_S[0]~0_combout\,
	dataf => \mt3|ALT_INV_S[2]~1_combout\,
	combout => \dc3|b~combout\);

-- Location: LABCELL_X61_Y1_N57
\dc3|c\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc3|c~combout\ = ( \mt3|S[0]~0_combout\ ) # ( !\mt3|S[0]~0_combout\ & ( (!\mt3|S[1]~2_combout\) # (\mt3|S[2]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt3|ALT_INV_S[1]~2_combout\,
	datac => \mt3|ALT_INV_S[2]~1_combout\,
	dataf => \mt3|ALT_INV_S[0]~0_combout\,
	combout => \dc3|c~combout\);

-- Location: LABCELL_X61_Y1_N12
\dc3|d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc3|d~0_combout\ = ( \mt3|S[2]~1_combout\ & ( !\mt3|S[1]~2_combout\ $ (!\mt3|S[0]~0_combout\) ) ) # ( !\mt3|S[2]~1_combout\ & ( (!\mt3|S[0]~0_combout\) # (\mt3|S[1]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt3|ALT_INV_S[1]~2_combout\,
	datab => \mt3|ALT_INV_S[0]~0_combout\,
	dataf => \mt3|ALT_INV_S[2]~1_combout\,
	combout => \dc3|d~0_combout\);

-- Location: LABCELL_X61_Y1_N15
\dc3|e~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc3|e~0_combout\ = ( \mt3|S[2]~1_combout\ & ( (\mt3|S[1]~2_combout\ & !\mt3|S[0]~0_combout\) ) ) # ( !\mt3|S[2]~1_combout\ & ( !\mt3|S[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt3|ALT_INV_S[1]~2_combout\,
	datab => \mt3|ALT_INV_S[0]~0_combout\,
	dataf => \mt3|ALT_INV_S[2]~1_combout\,
	combout => \dc3|e~0_combout\);

-- Location: LABCELL_X55_Y1_N45
\dc3|f~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc3|f~0_combout\ = ( \mt3|S[2]~1_combout\ & ( (!\mt3|S[1]~2_combout\) # ((!\dc3|a~0_combout\) # (!\mt3|S[0]~0_combout\)) ) ) # ( !\mt3|S[2]~1_combout\ & ( (!\dc3|a~0_combout\) # ((!\mt3|S[1]~2_combout\ & !\mt3|S[0]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011110000111110101111000011111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt3|ALT_INV_S[1]~2_combout\,
	datac => \dc3|ALT_INV_a~0_combout\,
	datad => \mt3|ALT_INV_S[0]~0_combout\,
	dataf => \mt3|ALT_INV_S[2]~1_combout\,
	combout => \dc3|f~0_combout\);

-- Location: LABCELL_X55_Y1_N51
\dc3|g~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc3|g~0_combout\ = ( \mt3|S[2]~1_combout\ & ( (!\mt3|S[1]~2_combout\) # ((!\dc3|a~0_combout\) # (!\mt3|S[0]~0_combout\)) ) ) # ( !\mt3|S[2]~1_combout\ & ( (!\dc3|a~0_combout\) # (\mt3|S[1]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101011111010111111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt3|ALT_INV_S[1]~2_combout\,
	datac => \dc3|ALT_INV_a~0_combout\,
	datad => \mt3|ALT_INV_S[0]~0_combout\,
	dataf => \mt3|ALT_INV_S[2]~1_combout\,
	combout => \dc3|g~0_combout\);

-- Location: LABCELL_X57_Y1_N57
\ce|C[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ce|C[0]~3_combout\ = ( \tc[0]~input_o\ & ( (!\RC~input_o\) # ((\sel~input_o\ & \tc[1]~input_o\)) ) ) # ( !\tc[0]~input_o\ & ( !\RC~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110001111100011111000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel~input_o\,
	datab => \ALT_INV_tc[1]~input_o\,
	datac => \ALT_INV_RC~input_o\,
	dataf => \ALT_INV_tc[0]~input_o\,
	combout => \ce|C[0]~3_combout\);

-- Location: FF_X57_Y1_N35
\r4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dm|d4|s4~combout\,
	sclr => \ALT_INV_sel~input_o\,
	ena => \ce|C[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r4|q\(0));

-- Location: MLABCELL_X59_Y1_N36
\mt4|S[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mt4|S[0]~1_combout\ = ( \c4|q\(0) & ( (!\sel~input_o\) # (\r4|q\(0)) ) ) # ( !\c4|q\(0) & ( (\sel~input_o\ & \r4|q\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sel~input_o\,
	datad => \r4|ALT_INV_q\(0),
	dataf => \c4|ALT_INV_q\(0),
	combout => \mt4|S[0]~1_combout\);

-- Location: FF_X57_Y1_N14
\r4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dm|d2|s4~combout\,
	sclr => \ALT_INV_sel~input_o\,
	ena => \ce|C[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r4|q\(2));

-- Location: MLABCELL_X59_Y1_N45
\mt4|S[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mt4|S[2]~0_combout\ = (!\sel~input_o\ & (\c4|q\(2))) # (\sel~input_o\ & ((\r4|q\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c4|ALT_INV_q\(2),
	datab => \ALT_INV_sel~input_o\,
	datac => \r4|ALT_INV_q\(2),
	combout => \mt4|S[2]~0_combout\);

-- Location: FF_X57_Y1_N17
\r4|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dm|d3|s4~combout\,
	sclr => \ALT_INV_sel~input_o\,
	ena => \ce|C[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r4|q\(1));

-- Location: MLABCELL_X59_Y1_N33
\mt4|S[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mt4|S[1]~2_combout\ = ( \sel~input_o\ & ( \r4|q\(1) ) ) # ( !\sel~input_o\ & ( \c4|q\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c4|ALT_INV_q\(1),
	datad => \r4|ALT_INV_q\(1),
	dataf => \ALT_INV_sel~input_o\,
	combout => \mt4|S[1]~2_combout\);

-- Location: FF_X57_Y1_N32
\r4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \dm|d1|s4~combout\,
	sclr => \ALT_INV_sel~input_o\,
	sload => VCC,
	ena => \ce|C[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r4|q\(3));

-- Location: LABCELL_X57_Y1_N0
\dc4|g~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc4|g~0_combout\ = ( \r4|q\(3) & ( (!\sel~input_o\ & !\c4|q\(3)) ) ) # ( !\r4|q\(3) & ( (!\c4|q\(3)) # (\sel~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101011111010110100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel~input_o\,
	datac => \c4|ALT_INV_q\(3),
	dataf => \r4|ALT_INV_q\(3),
	combout => \dc4|g~0_combout\);

-- Location: LABCELL_X60_Y1_N39
\dc4|a\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc4|a~combout\ = ( \dc4|g~0_combout\ & ( (!\mt4|S[0]~1_combout\ $ (\mt4|S[2]~0_combout\)) # (\mt4|S[1]~2_combout\) ) ) # ( !\dc4|g~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110011111100111111001111110011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt4|ALT_INV_S[0]~1_combout\,
	datab => \mt4|ALT_INV_S[2]~0_combout\,
	datac => \mt4|ALT_INV_S[1]~2_combout\,
	dataf => \dc4|ALT_INV_g~0_combout\,
	combout => \dc4|a~combout\);

-- Location: LABCELL_X60_Y1_N6
\dc4|b\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc4|b~combout\ = ( \mt4|S[0]~1_combout\ & ( (!\mt4|S[2]~0_combout\) # (\mt4|S[1]~2_combout\) ) ) # ( !\mt4|S[0]~1_combout\ & ( (!\mt4|S[1]~2_combout\) # (!\mt4|S[2]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100111111111100110011111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mt4|ALT_INV_S[1]~2_combout\,
	datad => \mt4|ALT_INV_S[2]~0_combout\,
	dataf => \mt4|ALT_INV_S[0]~1_combout\,
	combout => \dc4|b~combout\);

-- Location: MLABCELL_X59_Y1_N24
\dc4|c\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc4|c~combout\ = ( \mt4|S[1]~2_combout\ & ( (\mt4|S[0]~1_combout\) # (\mt4|S[2]~0_combout\) ) ) # ( !\mt4|S[1]~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mt4|ALT_INV_S[2]~0_combout\,
	datac => \mt4|ALT_INV_S[0]~1_combout\,
	dataf => \mt4|ALT_INV_S[1]~2_combout\,
	combout => \dc4|c~combout\);

-- Location: LABCELL_X60_Y1_N18
\dc4|d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc4|d~0_combout\ = (!\mt4|S[0]~1_combout\ & ((!\mt4|S[2]~0_combout\) # (\mt4|S[1]~2_combout\))) # (\mt4|S[0]~1_combout\ & (!\mt4|S[2]~0_combout\ $ (!\mt4|S[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100111101110100110011110111010011001111011101001100111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt4|ALT_INV_S[0]~1_combout\,
	datab => \mt4|ALT_INV_S[2]~0_combout\,
	datad => \mt4|ALT_INV_S[1]~2_combout\,
	combout => \dc4|d~0_combout\);

-- Location: LABCELL_X60_Y1_N27
\dc4|e~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc4|e~0_combout\ = (!\mt4|S[0]~1_combout\ & ((!\mt4|S[2]~0_combout\) # (\mt4|S[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010001010100010101000101010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt4|ALT_INV_S[0]~1_combout\,
	datab => \mt4|ALT_INV_S[2]~0_combout\,
	datac => \mt4|ALT_INV_S[1]~2_combout\,
	combout => \dc4|e~0_combout\);

-- Location: LABCELL_X60_Y1_N36
\dc4|f~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc4|f~0_combout\ = ( \dc4|g~0_combout\ & ( (!\mt4|S[0]~1_combout\ & ((!\mt4|S[1]~2_combout\) # (\mt4|S[2]~0_combout\))) # (\mt4|S[0]~1_combout\ & (\mt4|S[2]~0_combout\ & !\mt4|S[1]~2_combout\)) ) ) # ( !\dc4|g~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110111011001000101011101100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt4|ALT_INV_S[0]~1_combout\,
	datab => \mt4|ALT_INV_S[2]~0_combout\,
	datad => \mt4|ALT_INV_S[1]~2_combout\,
	dataf => \dc4|ALT_INV_g~0_combout\,
	combout => \dc4|f~0_combout\);

-- Location: LABCELL_X60_Y1_N21
\dc4|g~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc4|g~1_combout\ = ( \dc4|g~0_combout\ & ( (!\mt4|S[2]~0_combout\ & ((\mt4|S[1]~2_combout\))) # (\mt4|S[2]~0_combout\ & ((!\mt4|S[0]~1_combout\) # (!\mt4|S[1]~2_combout\))) ) ) # ( !\dc4|g~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100111110001111100011111000111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt4|ALT_INV_S[0]~1_combout\,
	datab => \mt4|ALT_INV_S[2]~0_combout\,
	datac => \mt4|ALT_INV_S[1]~2_combout\,
	dataf => \dc4|ALT_INV_g~0_combout\,
	combout => \dc4|g~1_combout\);

-- Location: MLABCELL_X59_Y1_N6
\comp|S~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|S~4_combout\ = ( \r4|q\(0) & ( \r4|q\(2) & ( (\c4|q\(2) & (\c4|q\(0) & (!\r4|q\(1) $ (\c4|q\(1))))) ) ) ) # ( !\r4|q\(0) & ( \r4|q\(2) & ( (\c4|q\(2) & (!\c4|q\(0) & (!\r4|q\(1) $ (\c4|q\(1))))) ) ) ) # ( \r4|q\(0) & ( !\r4|q\(2) & ( (!\c4|q\(2) & 
-- (\c4|q\(0) & (!\r4|q\(1) $ (\c4|q\(1))))) ) ) ) # ( !\r4|q\(0) & ( !\r4|q\(2) & ( (!\c4|q\(2) & (!\c4|q\(0) & (!\r4|q\(1) $ (\c4|q\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c4|ALT_INV_q\(2),
	datab => \c4|ALT_INV_q\(0),
	datac => \r4|ALT_INV_q\(1),
	datad => \c4|ALT_INV_q\(1),
	datae => \r4|ALT_INV_q\(0),
	dataf => \r4|ALT_INV_q\(2),
	combout => \comp|S~4_combout\);

-- Location: LABCELL_X56_Y1_N18
\comp|S~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|S~2_combout\ = ( \r3|q\(0) & ( \c2|q\(2) & ( (\r2|q\(2) & (\c3|q\(0) & (!\c2|q\(3) $ (\r2|q\(3))))) ) ) ) # ( !\r3|q\(0) & ( \c2|q\(2) & ( (\r2|q\(2) & (!\c3|q\(0) & (!\c2|q\(3) $ (\r2|q\(3))))) ) ) ) # ( \r3|q\(0) & ( !\c2|q\(2) & ( (!\r2|q\(2) & 
-- (\c3|q\(0) & (!\c2|q\(3) $ (\r2|q\(3))))) ) ) ) # ( !\r3|q\(0) & ( !\c2|q\(2) & ( (!\r2|q\(2) & (!\c3|q\(0) & (!\c2|q\(3) $ (\r2|q\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000000010000000001001000000000100000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r2|ALT_INV_q\(2),
	datab => \c2|ALT_INV_q\(3),
	datac => \c3|ALT_INV_q\(0),
	datad => \r2|ALT_INV_q\(3),
	datae => \r3|ALT_INV_q\(0),
	dataf => \c2|ALT_INV_q\(2),
	combout => \comp|S~2_combout\);

-- Location: LABCELL_X60_Y1_N48
\comp|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|S~0_combout\ = ( \c1|q\(1) & ( \c1|q\(2) & ( (\r1|q\(1) & (\r1|q\(2) & (!\r1|q\(0) $ (\c1|q\(0))))) ) ) ) # ( !\c1|q\(1) & ( \c1|q\(2) & ( (!\r1|q\(1) & (\r1|q\(2) & (!\r1|q\(0) $ (\c1|q\(0))))) ) ) ) # ( \c1|q\(1) & ( !\c1|q\(2) & ( (\r1|q\(1) & 
-- (!\r1|q\(2) & (!\r1|q\(0) $ (\c1|q\(0))))) ) ) ) # ( !\c1|q\(1) & ( !\c1|q\(2) & ( (!\r1|q\(1) & (!\r1|q\(2) & (!\r1|q\(0) $ (\c1|q\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r1|ALT_INV_q\(0),
	datab => \c1|ALT_INV_q\(0),
	datac => \r1|ALT_INV_q\(1),
	datad => \r1|ALT_INV_q\(2),
	datae => \c1|ALT_INV_q\(1),
	dataf => \c1|ALT_INV_q\(2),
	combout => \comp|S~0_combout\);

-- Location: LABCELL_X61_Y1_N18
\comp|S~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|S~3_combout\ = ( \r3|q\(3) & ( \r3|q\(2) & ( (\c3|q\(3) & (\c3|q\(2) & (!\r3|q\(1) $ (\c3|q\(1))))) ) ) ) # ( !\r3|q\(3) & ( \r3|q\(2) & ( (!\c3|q\(3) & (\c3|q\(2) & (!\r3|q\(1) $ (\c3|q\(1))))) ) ) ) # ( \r3|q\(3) & ( !\r3|q\(2) & ( (\c3|q\(3) & 
-- (!\c3|q\(2) & (!\r3|q\(1) $ (\c3|q\(1))))) ) ) ) # ( !\r3|q\(3) & ( !\r3|q\(2) & ( (!\c3|q\(3) & (!\c3|q\(2) & (!\r3|q\(1) $ (\c3|q\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c3|ALT_INV_q\(3),
	datab => \r3|ALT_INV_q\(1),
	datac => \c3|ALT_INV_q\(1),
	datad => \c3|ALT_INV_q\(2),
	datae => \r3|ALT_INV_q\(3),
	dataf => \r3|ALT_INV_q\(2),
	combout => \comp|S~3_combout\);

-- Location: LABCELL_X56_Y1_N39
\comp|S~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|S~1_combout\ = ( \c1|q\(3) & ( \c2|q\(1) & ( (\r2|q\(1) & (\r1|q\(3) & (!\c2|q\(0) $ (\r2|q\(0))))) ) ) ) # ( !\c1|q\(3) & ( \c2|q\(1) & ( (\r2|q\(1) & (!\r1|q\(3) & (!\c2|q\(0) $ (\r2|q\(0))))) ) ) ) # ( \c1|q\(3) & ( !\c2|q\(1) & ( (!\r2|q\(1) & 
-- (\r1|q\(3) & (!\c2|q\(0) $ (\r2|q\(0))))) ) ) ) # ( !\c1|q\(3) & ( !\c2|q\(1) & ( (!\r2|q\(1) & (!\r1|q\(3) & (!\c2|q\(0) $ (\r2|q\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r2|ALT_INV_q\(1),
	datab => \r1|ALT_INV_q\(3),
	datac => \c2|ALT_INV_q\(0),
	datad => \r2|ALT_INV_q\(0),
	datae => \c1|ALT_INV_q\(3),
	dataf => \c2|ALT_INV_q\(1),
	combout => \comp|S~1_combout\);

-- Location: LABCELL_X57_Y1_N6
\comp|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|Equal3~0_combout\ = ( \r4|q\(3) & ( !\c4|q\(3) ) ) # ( !\r4|q\(3) & ( \c4|q\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c4|ALT_INV_q\(3),
	dataf => \r4|ALT_INV_q\(3),
	combout => \comp|Equal3~0_combout\);

-- Location: LABCELL_X61_Y1_N36
\comp|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|S~combout\ = ( \comp|S~1_combout\ & ( !\comp|Equal3~0_combout\ & ( (\comp|S~4_combout\ & (\comp|S~2_combout\ & (\comp|S~0_combout\ & \comp|S~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp|ALT_INV_S~4_combout\,
	datab => \comp|ALT_INV_S~2_combout\,
	datac => \comp|ALT_INV_S~0_combout\,
	datad => \comp|ALT_INV_S~3_combout\,
	datae => \comp|ALT_INV_S~1_combout\,
	dataf => \comp|ALT_INV_Equal3~0_combout\,
	combout => \comp|S~combout\);

-- Location: IOIBUF_X38_Y0_N35
\teclas[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(0),
	o => \teclas[0]~input_o\);

-- Location: LABCELL_X71_Y23_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


