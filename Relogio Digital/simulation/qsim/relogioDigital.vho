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

-- DATE "10/31/2019 07:40:25"

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
	H1 : BUFFER std_logic_vector(6 DOWNTO 0);
	H0 : BUFFER std_logic_vector(6 DOWNTO 0);
	M1 : BUFFER std_logic_vector(6 DOWNTO 0);
	M0 : BUFFER std_logic_vector(6 DOWNTO 0);
	alarme : BUFFER std_logic
	);
END RelogioDigital;

-- Design Ports Information
-- teclas[0]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1[2]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1[3]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1[4]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1[5]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1[6]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H0[0]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H0[1]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H0[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H0[3]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H0[4]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H0[5]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H0[6]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[1]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[2]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[4]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[5]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[6]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M0[0]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M0[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M0[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M0[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M0[4]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M0[5]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M0[6]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarme	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclas[4]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclas[6]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclas[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclas[7]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tc[0]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tc[1]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RC	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclas[1]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclas[3]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclas[9]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclas[2]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclas[8]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_H1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_H0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_M1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_M0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_alarme : std_logic;
SIGNAL \teclas[0]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \sel~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \c4|q[0]~_wirecell_combout\ : std_logic;
SIGNAL \tc[0]~input_o\ : std_logic;
SIGNAL \tc[1]~input_o\ : std_logic;
SIGNAL \teclas[7]~input_o\ : std_logic;
SIGNAL \teclas[3]~input_o\ : std_logic;
SIGNAL \teclas[5]~input_o\ : std_logic;
SIGNAL \teclas[9]~input_o\ : std_logic;
SIGNAL \teclas[1]~input_o\ : std_logic;
SIGNAL \ct|s4~combout\ : std_logic;
SIGNAL \dm|d4|s4~0_combout\ : std_logic;
SIGNAL \c4|Add0~1_combout\ : std_logic;
SIGNAL \teclas[6]~input_o\ : std_logic;
SIGNAL \teclas[2]~input_o\ : std_logic;
SIGNAL \dm|d3|s4~0_combout\ : std_logic;
SIGNAL \RC~input_o\ : std_logic;
SIGNAL \c2|q[2]~0_combout\ : std_logic;
SIGNAL \c3|q[0]~_wirecell_combout\ : std_logic;
SIGNAL \dm|d4|s3~0_combout\ : std_logic;
SIGNAL \c3|Add0~1_combout\ : std_logic;
SIGNAL \dm|d3|s3~0_combout\ : std_logic;
SIGNAL \c2|q[0]~_wirecell_combout\ : std_logic;
SIGNAL \dm|d4|s2~0_combout\ : std_logic;
SIGNAL \c2|Add0~0_combout\ : std_logic;
SIGNAL \teclas[4]~input_o\ : std_logic;
SIGNAL \dm|d2|s2~0_combout\ : std_logic;
SIGNAL \c1|q[0]~_wirecell_combout\ : std_logic;
SIGNAL \dm|d4|s1~0_combout\ : std_logic;
SIGNAL \c1|Add0~1_combout\ : std_logic;
SIGNAL \dm|d3|s1~0_combout\ : std_logic;
SIGNAL \ce|C[7]~8_combout\ : std_logic;
SIGNAL \c1|Add0~2_combout\ : std_logic;
SIGNAL \teclas[8]~input_o\ : std_logic;
SIGNAL \dm|d1|s1~0_combout\ : std_logic;
SIGNAL \ctrl|Equal0~0_combout\ : std_logic;
SIGNAL \c1|Add0~0_combout\ : std_logic;
SIGNAL \dm|d2|s1~0_combout\ : std_logic;
SIGNAL \ce|C[5]~6_combout\ : std_logic;
SIGNAL \ce|C[5]~7_combout\ : std_logic;
SIGNAL \c2|Add0~2_combout\ : std_logic;
SIGNAL \dm|d1|s2~0_combout\ : std_logic;
SIGNAL \ctrl|Equal1~0_combout\ : std_logic;
SIGNAL \c2|Add0~1_combout\ : std_logic;
SIGNAL \dm|d3|s2~0_combout\ : std_logic;
SIGNAL \ce|C[3]~3_combout\ : std_logic;
SIGNAL \ce|C[5]~2_combout\ : std_logic;
SIGNAL \ce|C[3]~5_combout\ : std_logic;
SIGNAL \c3|Add0~0_combout\ : std_logic;
SIGNAL \dm|d2|s3~0_combout\ : std_logic;
SIGNAL \c3|Add0~2_combout\ : std_logic;
SIGNAL \dm|d1|s3~0_combout\ : std_logic;
SIGNAL \c4|Add0~2_combout\ : std_logic;
SIGNAL \dm|d1|s4~0_combout\ : std_logic;
SIGNAL \ctrl|Equal2~1_combout\ : std_logic;
SIGNAL \ctrl|E~0_combout\ : std_logic;
SIGNAL \ce|C[1]~0_combout\ : std_logic;
SIGNAL \ce|C[1]~1_combout\ : std_logic;
SIGNAL \ce|C[1]~4_combout\ : std_logic;
SIGNAL \ctrl|Equal2~0_combout\ : std_logic;
SIGNAL \c4|Add0~0_combout\ : std_logic;
SIGNAL \dm|d2|s4~0_combout\ : std_logic;
SIGNAL \ce|C[0]~9_combout\ : std_logic;
SIGNAL \mt4|S[2]~0_combout\ : std_logic;
SIGNAL \mt4|S[1]~2_combout\ : std_logic;
SIGNAL \dc1|g~0_combout\ : std_logic;
SIGNAL \mt4|S[0]~1_combout\ : std_logic;
SIGNAL \dc1|a~combout\ : std_logic;
SIGNAL \dc1|b~combout\ : std_logic;
SIGNAL \dc1|c~combout\ : std_logic;
SIGNAL \dc1|d~0_combout\ : std_logic;
SIGNAL \dc1|e~0_combout\ : std_logic;
SIGNAL \dc1|f~0_combout\ : std_logic;
SIGNAL \dc1|g~1_combout\ : std_logic;
SIGNAL \ce|C[2]~10_combout\ : std_logic;
SIGNAL \mt3|S[2]~1_combout\ : std_logic;
SIGNAL \mt3|S[0]~0_combout\ : std_logic;
SIGNAL \dc2|a~0_combout\ : std_logic;
SIGNAL \mt3|S[1]~2_combout\ : std_logic;
SIGNAL \dc2|a~combout\ : std_logic;
SIGNAL \dc2|b~combout\ : std_logic;
SIGNAL \dc2|c~combout\ : std_logic;
SIGNAL \dc2|d~0_combout\ : std_logic;
SIGNAL \dc2|e~0_combout\ : std_logic;
SIGNAL \dc2|f~0_combout\ : std_logic;
SIGNAL \dc2|g~0_combout\ : std_logic;
SIGNAL \ce|C[4]~11_combout\ : std_logic;
SIGNAL \mt2|S[0]~1_combout\ : std_logic;
SIGNAL \mt2|S[1]~2_combout\ : std_logic;
SIGNAL \dc3|g~0_combout\ : std_logic;
SIGNAL \mt2|S[2]~0_combout\ : std_logic;
SIGNAL \dc3|a~combout\ : std_logic;
SIGNAL \dc3|b~combout\ : std_logic;
SIGNAL \dc3|c~combout\ : std_logic;
SIGNAL \dc3|d~0_combout\ : std_logic;
SIGNAL \dc3|e~0_combout\ : std_logic;
SIGNAL \dc3|f~0_combout\ : std_logic;
SIGNAL \dc3|g~1_combout\ : std_logic;
SIGNAL \ce|C[6]~12_combout\ : std_logic;
SIGNAL \mt1|S[1]~2_combout\ : std_logic;
SIGNAL \dc4|g~0_combout\ : std_logic;
SIGNAL \mt1|S[0]~1_combout\ : std_logic;
SIGNAL \mt1|S[2]~0_combout\ : std_logic;
SIGNAL \dc4|a~combout\ : std_logic;
SIGNAL \dc4|b~combout\ : std_logic;
SIGNAL \dc4|c~combout\ : std_logic;
SIGNAL \dc4|d~0_combout\ : std_logic;
SIGNAL \dc4|e~0_combout\ : std_logic;
SIGNAL \dc4|f~0_combout\ : std_logic;
SIGNAL \dc4|g~1_combout\ : std_logic;
SIGNAL \comp|S~4_combout\ : std_logic;
SIGNAL \comp|S~0_combout\ : std_logic;
SIGNAL \comp|Equal3~0_combout\ : std_logic;
SIGNAL \comp|S~2_combout\ : std_logic;
SIGNAL \comp|S~1_combout\ : std_logic;
SIGNAL \comp|S~3_combout\ : std_logic;
SIGNAL \comp|S~combout\ : std_logic;
SIGNAL \c4|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r4|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r3|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r1|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c3|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r2|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c2|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c1|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ce|C\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ctrl|E\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_clock~inputCLKENA0_outclk\ : std_logic;
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
SIGNAL \ctrl|ALT_INV_E\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ce|ALT_INV_C\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ctrl|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ce|ALT_INV_C[6]~12_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ce|ALT_INV_C[4]~11_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_E~0_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ce|ALT_INV_C[2]~10_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ce|ALT_INV_C[0]~9_combout\ : std_logic;
SIGNAL \ce|ALT_INV_C[5]~6_combout\ : std_logic;
SIGNAL \ct|ALT_INV_s4~combout\ : std_logic;
SIGNAL \ce|ALT_INV_C[3]~3_combout\ : std_logic;
SIGNAL \ce|ALT_INV_C[5]~2_combout\ : std_logic;
SIGNAL \ce|ALT_INV_C[1]~1_combout\ : std_logic;
SIGNAL \ce|ALT_INV_C[1]~0_combout\ : std_logic;
SIGNAL \comp|ALT_INV_S~4_combout\ : std_logic;
SIGNAL \comp|ALT_INV_S~3_combout\ : std_logic;
SIGNAL \comp|ALT_INV_S~2_combout\ : std_logic;
SIGNAL \comp|ALT_INV_S~1_combout\ : std_logic;
SIGNAL \comp|ALT_INV_S~0_combout\ : std_logic;
SIGNAL \comp|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \dc4|ALT_INV_g~0_combout\ : std_logic;
SIGNAL \mt1|ALT_INV_S[1]~2_combout\ : std_logic;
SIGNAL \mt1|ALT_INV_S[0]~1_combout\ : std_logic;
SIGNAL \mt1|ALT_INV_S[2]~0_combout\ : std_logic;
SIGNAL \dc3|ALT_INV_g~0_combout\ : std_logic;
SIGNAL \mt2|ALT_INV_S[1]~2_combout\ : std_logic;
SIGNAL \mt2|ALT_INV_S[0]~1_combout\ : std_logic;
SIGNAL \mt2|ALT_INV_S[2]~0_combout\ : std_logic;
SIGNAL \dc2|ALT_INV_a~0_combout\ : std_logic;
SIGNAL \mt3|ALT_INV_S[1]~2_combout\ : std_logic;
SIGNAL \mt3|ALT_INV_S[2]~1_combout\ : std_logic;
SIGNAL \mt3|ALT_INV_S[0]~0_combout\ : std_logic;
SIGNAL \dc1|ALT_INV_g~0_combout\ : std_logic;
SIGNAL \mt4|ALT_INV_S[1]~2_combout\ : std_logic;
SIGNAL \mt4|ALT_INV_S[0]~1_combout\ : std_logic;
SIGNAL \mt4|ALT_INV_S[2]~0_combout\ : std_logic;
SIGNAL \c1|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r1|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c2|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r2|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c3|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r3|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c4|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r4|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);

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
\ALT_INV_clock~inputCLKENA0_outclk\ <= NOT \clock~inputCLKENA0_outclk\;
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
\ctrl|ALT_INV_E\(3) <= NOT \ctrl|E\(3);
\ce|ALT_INV_C\(6) <= NOT \ce|C\(6);
\ctrl|ALT_INV_E\(2) <= NOT \ctrl|E\(2);
\ce|ALT_INV_C\(4) <= NOT \ce|C\(4);
\ctrl|ALT_INV_E\(1) <= NOT \ctrl|E\(1);
\ce|ALT_INV_C\(2) <= NOT \ce|C\(2);
\ctrl|ALT_INV_E\(0) <= NOT \ctrl|E\(0);
\ce|ALT_INV_C\(0) <= NOT \ce|C\(0);
\ctrl|ALT_INV_Equal0~0_combout\ <= NOT \ctrl|Equal0~0_combout\;
\ce|ALT_INV_C[6]~12_combout\ <= NOT \ce|C[6]~12_combout\;
\ctrl|ALT_INV_Equal1~0_combout\ <= NOT \ctrl|Equal1~0_combout\;
\ce|ALT_INV_C[4]~11_combout\ <= NOT \ce|C[4]~11_combout\;
\ctrl|ALT_INV_E~0_combout\ <= NOT \ctrl|E~0_combout\;
\ctrl|ALT_INV_Equal2~1_combout\ <= NOT \ctrl|Equal2~1_combout\;
\ce|ALT_INV_C[2]~10_combout\ <= NOT \ce|C[2]~10_combout\;
\ctrl|ALT_INV_Equal2~0_combout\ <= NOT \ctrl|Equal2~0_combout\;
\ce|ALT_INV_C[0]~9_combout\ <= NOT \ce|C[0]~9_combout\;
\ce|ALT_INV_C[5]~6_combout\ <= NOT \ce|C[5]~6_combout\;
\ct|ALT_INV_s4~combout\ <= NOT \ct|s4~combout\;
\ce|ALT_INV_C[3]~3_combout\ <= NOT \ce|C[3]~3_combout\;
\ce|ALT_INV_C[5]~2_combout\ <= NOT \ce|C[5]~2_combout\;
\ce|ALT_INV_C[1]~1_combout\ <= NOT \ce|C[1]~1_combout\;
\ce|ALT_INV_C[1]~0_combout\ <= NOT \ce|C[1]~0_combout\;
\comp|ALT_INV_S~4_combout\ <= NOT \comp|S~4_combout\;
\comp|ALT_INV_S~3_combout\ <= NOT \comp|S~3_combout\;
\comp|ALT_INV_S~2_combout\ <= NOT \comp|S~2_combout\;
\comp|ALT_INV_S~1_combout\ <= NOT \comp|S~1_combout\;
\comp|ALT_INV_S~0_combout\ <= NOT \comp|S~0_combout\;
\comp|ALT_INV_Equal3~0_combout\ <= NOT \comp|Equal3~0_combout\;
\dc4|ALT_INV_g~0_combout\ <= NOT \dc4|g~0_combout\;
\mt1|ALT_INV_S[1]~2_combout\ <= NOT \mt1|S[1]~2_combout\;
\mt1|ALT_INV_S[0]~1_combout\ <= NOT \mt1|S[0]~1_combout\;
\mt1|ALT_INV_S[2]~0_combout\ <= NOT \mt1|S[2]~0_combout\;
\dc3|ALT_INV_g~0_combout\ <= NOT \dc3|g~0_combout\;
\mt2|ALT_INV_S[1]~2_combout\ <= NOT \mt2|S[1]~2_combout\;
\mt2|ALT_INV_S[0]~1_combout\ <= NOT \mt2|S[0]~1_combout\;
\mt2|ALT_INV_S[2]~0_combout\ <= NOT \mt2|S[2]~0_combout\;
\dc2|ALT_INV_a~0_combout\ <= NOT \dc2|a~0_combout\;
\mt3|ALT_INV_S[1]~2_combout\ <= NOT \mt3|S[1]~2_combout\;
\mt3|ALT_INV_S[2]~1_combout\ <= NOT \mt3|S[2]~1_combout\;
\mt3|ALT_INV_S[0]~0_combout\ <= NOT \mt3|S[0]~0_combout\;
\dc1|ALT_INV_g~0_combout\ <= NOT \dc1|g~0_combout\;
\mt4|ALT_INV_S[1]~2_combout\ <= NOT \mt4|S[1]~2_combout\;
\mt4|ALT_INV_S[0]~1_combout\ <= NOT \mt4|S[0]~1_combout\;
\mt4|ALT_INV_S[2]~0_combout\ <= NOT \mt4|S[2]~0_combout\;
\c1|ALT_INV_q\(3) <= NOT \c1|q\(3);
\r1|ALT_INV_q\(3) <= NOT \r1|q\(3);
\c1|ALT_INV_q\(1) <= NOT \c1|q\(1);
\r1|ALT_INV_q\(1) <= NOT \r1|q\(1);
\c1|ALT_INV_q\(0) <= NOT \c1|q\(0);
\r1|ALT_INV_q\(0) <= NOT \r1|q\(0);
\c1|ALT_INV_q\(2) <= NOT \c1|q\(2);
\r1|ALT_INV_q\(2) <= NOT \r1|q\(2);
\c2|ALT_INV_q\(3) <= NOT \c2|q\(3);
\r2|ALT_INV_q\(3) <= NOT \r2|q\(3);
\c2|ALT_INV_q\(1) <= NOT \c2|q\(1);
\r2|ALT_INV_q\(1) <= NOT \r2|q\(1);
\c2|ALT_INV_q\(0) <= NOT \c2|q\(0);
\r2|ALT_INV_q\(0) <= NOT \r2|q\(0);
\c2|ALT_INV_q\(2) <= NOT \c2|q\(2);
\r2|ALT_INV_q\(2) <= NOT \r2|q\(2);
\c3|ALT_INV_q\(3) <= NOT \c3|q\(3);
\r3|ALT_INV_q\(3) <= NOT \r3|q\(3);
\c3|ALT_INV_q\(1) <= NOT \c3|q\(1);
\r3|ALT_INV_q\(1) <= NOT \r3|q\(1);
\c3|ALT_INV_q\(2) <= NOT \c3|q\(2);
\r3|ALT_INV_q\(2) <= NOT \r3|q\(2);
\c3|ALT_INV_q\(0) <= NOT \c3|q\(0);
\r3|ALT_INV_q\(0) <= NOT \r3|q\(0);
\c4|ALT_INV_q\(3) <= NOT \c4|q\(3);
\r4|ALT_INV_q\(3) <= NOT \r4|q\(3);
\c4|ALT_INV_q\(1) <= NOT \c4|q\(1);
\r4|ALT_INV_q\(1) <= NOT \r4|q\(1);
\c4|ALT_INV_q\(0) <= NOT \c4|q\(0);
\r4|ALT_INV_q\(0) <= NOT \r4|q\(0);
\c4|ALT_INV_q\(2) <= NOT \c4|q\(2);
\r4|ALT_INV_q\(2) <= NOT \r4|q\(2);

-- Location: IOOBUF_X60_Y0_N53
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

-- Location: IOOBUF_X58_Y0_N76
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

-- Location: IOOBUF_X62_Y0_N36
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

-- Location: IOOBUF_X60_Y0_N2
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

-- Location: IOOBUF_X58_Y0_N42
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

-- Location: IOOBUF_X60_Y0_N36
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

-- Location: IOOBUF_X62_Y0_N2
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

-- Location: IOOBUF_X58_Y0_N93
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

-- Location: IOOBUF_X50_Y0_N93
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

-- Location: IOOBUF_X50_Y0_N42
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

-- Location: IOOBUF_X58_Y0_N59
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

-- Location: IOOBUF_X60_Y0_N19
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

-- Location: IOOBUF_X66_Y0_N42
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

-- Location: IOOBUF_X62_Y0_N19
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

-- Location: IOOBUF_X40_Y0_N19
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

-- Location: IOOBUF_X68_Y0_N19
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

-- Location: IOOBUF_X40_Y0_N2
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

-- Location: IOOBUF_X38_Y0_N2
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

-- Location: IOOBUF_X62_Y0_N53
\M1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc3|g~1_combout\,
	devoe => ww_devoe,
	o => ww_M1(6));

-- Location: IOOBUF_X64_Y0_N53
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

-- Location: IOOBUF_X64_Y0_N2
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

-- Location: IOOBUF_X66_Y0_N76
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

-- Location: IOOBUF_X64_Y0_N19
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

-- Location: IOOBUF_X64_Y0_N36
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

-- Location: IOOBUF_X66_Y0_N93
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

-- Location: IOOBUF_X68_Y0_N36
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

-- Location: IOIBUF_X56_Y0_N1
\sel~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel,
	o => \sel~input_o\);

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

-- Location: LABCELL_X56_Y3_N48
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

-- Location: IOIBUF_X56_Y0_N52
\tc[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tc(0),
	o => \tc[0]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\tc[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tc(1),
	o => \tc[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N35
\teclas[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(7),
	o => \teclas[7]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\teclas[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(3),
	o => \teclas[3]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\teclas[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(5),
	o => \teclas[5]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\teclas[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(9),
	o => \teclas[9]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\teclas[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(1),
	o => \teclas[1]~input_o\);

-- Location: LABCELL_X55_Y1_N57
\ct|s4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ct|s4~combout\ = ( !\teclas[9]~input_o\ & ( !\teclas[1]~input_o\ & ( (!\teclas[7]~input_o\ & (!\teclas[3]~input_o\ & !\teclas[5]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclas[7]~input_o\,
	datab => \ALT_INV_teclas[3]~input_o\,
	datac => \ALT_INV_teclas[5]~input_o\,
	datae => \ALT_INV_teclas[9]~input_o\,
	dataf => \ALT_INV_teclas[1]~input_o\,
	combout => \ct|s4~combout\);

-- Location: LABCELL_X55_Y3_N21
\dm|d4|s4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d4|s4~0_combout\ = ( !\ct|s4~combout\ & ( (\tc[0]~input_o\ & \tc[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_tc[0]~input_o\,
	datad => \ALT_INV_tc[1]~input_o\,
	dataf => \ct|ALT_INV_s4~combout\,
	combout => \dm|d4|s4~0_combout\);

-- Location: LABCELL_X56_Y3_N6
\c4|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c4|Add0~1_combout\ = ( \c4|q\(0) & ( !\c4|q\(1) ) ) # ( !\c4|q\(0) & ( \c4|q\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \c4|ALT_INV_q\(1),
	dataf => \c4|ALT_INV_q\(0),
	combout => \c4|Add0~1_combout\);

-- Location: IOIBUF_X52_Y0_N1
\teclas[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(6),
	o => \teclas[6]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\teclas[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(2),
	o => \teclas[2]~input_o\);

-- Location: LABCELL_X55_Y3_N45
\dm|d3|s4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d3|s4~0_combout\ = ( \teclas[3]~input_o\ & ( \teclas[2]~input_o\ & ( (\tc[1]~input_o\ & \tc[0]~input_o\) ) ) ) # ( !\teclas[3]~input_o\ & ( \teclas[2]~input_o\ & ( (\tc[1]~input_o\ & \tc[0]~input_o\) ) ) ) # ( \teclas[3]~input_o\ & ( 
-- !\teclas[2]~input_o\ & ( (\tc[1]~input_o\ & \tc[0]~input_o\) ) ) ) # ( !\teclas[3]~input_o\ & ( !\teclas[2]~input_o\ & ( (\tc[1]~input_o\ & (\tc[0]~input_o\ & ((\teclas[7]~input_o\) # (\teclas[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tc[1]~input_o\,
	datab => \ALT_INV_teclas[6]~input_o\,
	datac => \ALT_INV_tc[0]~input_o\,
	datad => \ALT_INV_teclas[7]~input_o\,
	datae => \ALT_INV_teclas[3]~input_o\,
	dataf => \ALT_INV_teclas[2]~input_o\,
	combout => \dm|d3|s4~0_combout\);

-- Location: IOIBUF_X56_Y0_N35
\RC~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RC,
	o => \RC~input_o\);

-- Location: LABCELL_X57_Y1_N6
\c2|q[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c2|q[2]~0_combout\ = (\RC~input_o\ & \sel~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_RC~input_o\,
	datad => \ALT_INV_sel~input_o\,
	combout => \c2|q[2]~0_combout\);

-- Location: LABCELL_X57_Y3_N33
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

-- Location: LABCELL_X55_Y3_N27
\dm|d4|s3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d4|s3~0_combout\ = ( !\ct|s4~combout\ & ( (\tc[1]~input_o\ & !\tc[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tc[1]~input_o\,
	datab => \ALT_INV_tc[0]~input_o\,
	dataf => \ct|ALT_INV_s4~combout\,
	combout => \dm|d4|s3~0_combout\);

-- Location: LABCELL_X57_Y3_N21
\c3|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c3|Add0~1_combout\ = ( \c3|q\(0) & ( !\c3|q\(1) ) ) # ( !\c3|q\(0) & ( \c3|q\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \c3|ALT_INV_q\(1),
	dataf => \c3|ALT_INV_q\(0),
	combout => \c3|Add0~1_combout\);

-- Location: LABCELL_X55_Y3_N15
\dm|d3|s3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d3|s3~0_combout\ = ( \teclas[3]~input_o\ & ( \teclas[2]~input_o\ & ( (\tc[1]~input_o\ & !\tc[0]~input_o\) ) ) ) # ( !\teclas[3]~input_o\ & ( \teclas[2]~input_o\ & ( (\tc[1]~input_o\ & !\tc[0]~input_o\) ) ) ) # ( \teclas[3]~input_o\ & ( 
-- !\teclas[2]~input_o\ & ( (\tc[1]~input_o\ & !\tc[0]~input_o\) ) ) ) # ( !\teclas[3]~input_o\ & ( !\teclas[2]~input_o\ & ( (\tc[1]~input_o\ & (!\tc[0]~input_o\ & ((\teclas[7]~input_o\) # (\teclas[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tc[1]~input_o\,
	datab => \ALT_INV_teclas[6]~input_o\,
	datac => \ALT_INV_tc[0]~input_o\,
	datad => \ALT_INV_teclas[7]~input_o\,
	datae => \ALT_INV_teclas[3]~input_o\,
	dataf => \ALT_INV_teclas[2]~input_o\,
	combout => \dm|d3|s3~0_combout\);

-- Location: LABCELL_X56_Y1_N30
\c2|q[0]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \c2|q[0]~_wirecell_combout\ = ( !\c2|q\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \c2|ALT_INV_q\(0),
	combout => \c2|q[0]~_wirecell_combout\);

-- Location: LABCELL_X55_Y3_N6
\dm|d4|s2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d4|s2~0_combout\ = ( !\tc[1]~input_o\ & ( !\ct|s4~combout\ & ( \tc[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_tc[0]~input_o\,
	datae => \ALT_INV_tc[1]~input_o\,
	dataf => \ct|ALT_INV_s4~combout\,
	combout => \dm|d4|s2~0_combout\);

-- Location: LABCELL_X56_Y1_N39
\c2|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c2|Add0~0_combout\ = ( \c2|q\(1) & ( !\c2|q\(0) $ (!\c2|q\(2)) ) ) # ( !\c2|q\(1) & ( \c2|q\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c2|ALT_INV_q\(0),
	datad => \c2|ALT_INV_q\(2),
	dataf => \c2|ALT_INV_q\(1),
	combout => \c2|Add0~0_combout\);

-- Location: IOIBUF_X52_Y0_N52
\teclas[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(4),
	o => \teclas[4]~input_o\);

-- Location: LABCELL_X55_Y3_N54
\dm|d2|s2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d2|s2~0_combout\ = ( \teclas[5]~input_o\ & ( \teclas[4]~input_o\ & ( (!\tc[1]~input_o\ & \tc[0]~input_o\) ) ) ) # ( !\teclas[5]~input_o\ & ( \teclas[4]~input_o\ & ( (!\tc[1]~input_o\ & \tc[0]~input_o\) ) ) ) # ( \teclas[5]~input_o\ & ( 
-- !\teclas[4]~input_o\ & ( (!\tc[1]~input_o\ & \tc[0]~input_o\) ) ) ) # ( !\teclas[5]~input_o\ & ( !\teclas[4]~input_o\ & ( (!\tc[1]~input_o\ & (\tc[0]~input_o\ & ((\teclas[7]~input_o\) # (\teclas[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tc[1]~input_o\,
	datab => \ALT_INV_teclas[6]~input_o\,
	datac => \ALT_INV_teclas[7]~input_o\,
	datad => \ALT_INV_tc[0]~input_o\,
	datae => \ALT_INV_teclas[5]~input_o\,
	dataf => \ALT_INV_teclas[4]~input_o\,
	combout => \dm|d2|s2~0_combout\);

-- Location: LABCELL_X57_Y1_N9
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

-- Location: LABCELL_X55_Y1_N45
\dm|d4|s1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d4|s1~0_combout\ = ( !\tc[0]~input_o\ & ( (!\ct|s4~combout\ & !\tc[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ct|ALT_INV_s4~combout\,
	datab => \ALT_INV_tc[1]~input_o\,
	dataf => \ALT_INV_tc[0]~input_o\,
	combout => \dm|d4|s1~0_combout\);

-- Location: LABCELL_X57_Y1_N21
\c1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add0~1_combout\ = ( \c1|q\(1) & ( !\c1|q\(0) ) ) # ( !\c1|q\(1) & ( \c1|q\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110000110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_q\(0),
	datae => \c1|ALT_INV_q\(1),
	combout => \c1|Add0~1_combout\);

-- Location: LABCELL_X55_Y1_N30
\dm|d3|s1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d3|s1~0_combout\ = ( \teclas[6]~input_o\ & ( !\tc[0]~input_o\ & ( !\tc[1]~input_o\ ) ) ) # ( !\teclas[6]~input_o\ & ( !\tc[0]~input_o\ & ( (!\tc[1]~input_o\ & (((\teclas[7]~input_o\) # (\teclas[3]~input_o\)) # (\teclas[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclas[2]~input_o\,
	datab => \ALT_INV_teclas[3]~input_o\,
	datac => \ALT_INV_teclas[7]~input_o\,
	datad => \ALT_INV_tc[1]~input_o\,
	datae => \ALT_INV_teclas[6]~input_o\,
	dataf => \ALT_INV_tc[0]~input_o\,
	combout => \dm|d3|s1~0_combout\);

-- Location: LABCELL_X57_Y1_N48
\ce|C[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ce|C[7]~8_combout\ = ( !\sel~input_o\ & ( \RC~input_o\ & ( (!\tc[1]~input_o\ & !\tc[0]~input_o\) ) ) ) # ( \sel~input_o\ & ( !\RC~input_o\ ) ) # ( !\sel~input_o\ & ( !\RC~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tc[1]~input_o\,
	datac => \ALT_INV_tc[0]~input_o\,
	datae => \ALT_INV_sel~input_o\,
	dataf => \ALT_INV_RC~input_o\,
	combout => \ce|C[7]~8_combout\);

-- Location: FF_X57_Y1_N23
\c1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \c1|Add0~1_combout\,
	asdata => \dm|d3|s1~0_combout\,
	clrn => \ctrl|E\(3),
	sclr => \c2|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|q\(1));

-- Location: LABCELL_X57_Y1_N42
\c1|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add0~2_combout\ = ( \c1|q\(3) & ( \c1|q\(1) & ( (!\c1|q\(2)) # (!\c1|q\(0)) ) ) ) # ( !\c1|q\(3) & ( \c1|q\(1) & ( (\c1|q\(2) & \c1|q\(0)) ) ) ) # ( \c1|q\(3) & ( !\c1|q\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000011000000111111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_q\(2),
	datac => \c1|ALT_INV_q\(0),
	datae => \c1|ALT_INV_q\(3),
	dataf => \c1|ALT_INV_q\(1),
	combout => \c1|Add0~2_combout\);

-- Location: IOIBUF_X54_Y0_N18
\teclas[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(8),
	o => \teclas[8]~input_o\);

-- Location: LABCELL_X55_Y1_N0
\dm|d1|s1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d1|s1~0_combout\ = ( !\tc[0]~input_o\ & ( (!\tc[1]~input_o\ & ((\teclas[9]~input_o\) # (\teclas[8]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000011100000111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclas[8]~input_o\,
	datab => \ALT_INV_teclas[9]~input_o\,
	datac => \ALT_INV_tc[1]~input_o\,
	dataf => \ALT_INV_tc[0]~input_o\,
	combout => \dm|d1|s1~0_combout\);

-- Location: FF_X57_Y1_N44
\c1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \c1|Add0~2_combout\,
	asdata => \dm|d1|s1~0_combout\,
	clrn => \ctrl|E\(3),
	sclr => \c2|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|q\(3));

-- Location: LABCELL_X57_Y1_N57
\ctrl|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Equal0~0_combout\ = ( \c1|q\(1) & ( !\c1|q\(2) & ( (!\c1|q\(0) & \c1|q\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_q\(0),
	datac => \c1|ALT_INV_q\(3),
	datae => \c1|ALT_INV_q\(1),
	dataf => \c1|ALT_INV_q\(2),
	combout => \ctrl|Equal0~0_combout\);

-- Location: LABCELL_X57_Y1_N24
\ctrl|E[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|E\(3) = ( GLOBAL(\clock~inputCLKENA0_outclk\) & ( \ctrl|Equal0~0_combout\ & ( \ctrl|E\(3) ) ) ) # ( GLOBAL(\clock~inputCLKENA0_outclk\) & ( !\ctrl|Equal0~0_combout\ & ( \ctrl|E\(3) ) ) ) # ( !GLOBAL(\clock~inputCLKENA0_outclk\) & ( 
-- !\ctrl|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ctrl|ALT_INV_E\(3),
	datae => \ALT_INV_clock~inputCLKENA0_outclk\,
	dataf => \ctrl|ALT_INV_Equal0~0_combout\,
	combout => \ctrl|E\(3));

-- Location: FF_X57_Y1_N11
\c1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \c1|q[0]~_wirecell_combout\,
	asdata => \dm|d4|s1~0_combout\,
	clrn => \ctrl|E\(3),
	sclr => \c2|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|q\(0));

-- Location: LABCELL_X57_Y1_N39
\c1|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add0~0_combout\ = ( \c1|q\(2) & ( \c1|q\(1) & ( !\c1|q\(0) ) ) ) # ( !\c1|q\(2) & ( \c1|q\(1) & ( \c1|q\(0) ) ) ) # ( \c1|q\(2) & ( !\c1|q\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_q\(0),
	datae => \c1|ALT_INV_q\(2),
	dataf => \c1|ALT_INV_q\(1),
	combout => \c1|Add0~0_combout\);

-- Location: LABCELL_X55_Y1_N39
\dm|d2|s1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d2|s1~0_combout\ = ( !\tc[1]~input_o\ & ( !\tc[0]~input_o\ & ( (((\teclas[6]~input_o\) # (\teclas[5]~input_o\)) # (\teclas[4]~input_o\)) # (\teclas[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclas[7]~input_o\,
	datab => \ALT_INV_teclas[4]~input_o\,
	datac => \ALT_INV_teclas[5]~input_o\,
	datad => \ALT_INV_teclas[6]~input_o\,
	datae => \ALT_INV_tc[1]~input_o\,
	dataf => \ALT_INV_tc[0]~input_o\,
	combout => \dm|d2|s1~0_combout\);

-- Location: FF_X57_Y1_N41
\c1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \c1|Add0~0_combout\,
	asdata => \dm|d2|s1~0_combout\,
	clrn => \ctrl|E\(3),
	sclr => \c2|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|q\(2));

-- Location: LABCELL_X56_Y1_N9
\ce|C[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ce|C[5]~6_combout\ = ( \tc[0]~input_o\ & ( (!\sel~input_o\ & (\RC~input_o\ & !\tc[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel~input_o\,
	datac => \ALT_INV_RC~input_o\,
	datad => \ALT_INV_tc[1]~input_o\,
	dataf => \ALT_INV_tc[0]~input_o\,
	combout => \ce|C[5]~6_combout\);

-- Location: LABCELL_X56_Y1_N54
\ce|C[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ce|C[5]~7_combout\ = ( \RC~input_o\ & ( \ce|C[5]~6_combout\ ) ) # ( !\RC~input_o\ & ( \ce|C[5]~6_combout\ ) ) # ( !\RC~input_o\ & ( !\ce|C[5]~6_combout\ & ( (!\c1|q\(2) & (\c1|q\(3) & (!\c1|q\(1) & \c1|q\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_q\(2),
	datab => \c1|ALT_INV_q\(3),
	datac => \c1|ALT_INV_q\(1),
	datad => \c1|ALT_INV_q\(0),
	datae => \ALT_INV_RC~input_o\,
	dataf => \ce|ALT_INV_C[5]~6_combout\,
	combout => \ce|C[5]~7_combout\);

-- Location: FF_X56_Y1_N41
\c2|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \c2|Add0~0_combout\,
	asdata => \dm|d2|s2~0_combout\,
	clrn => \ctrl|E\(2),
	sclr => \c2|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c2|q\(2));

-- Location: LABCELL_X56_Y1_N36
\c2|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c2|Add0~2_combout\ = ( \c2|q\(2) & ( !\c2|q\(3) $ (((!\c2|q\(0)) # (!\c2|q\(1)))) ) ) # ( !\c2|q\(2) & ( \c2|q\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c2|ALT_INV_q\(0),
	datac => \c2|ALT_INV_q\(1),
	datad => \c2|ALT_INV_q\(3),
	dataf => \c2|ALT_INV_q\(2),
	combout => \c2|Add0~2_combout\);

-- Location: LABCELL_X55_Y3_N3
\dm|d1|s2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d1|s2~0_combout\ = ( \teclas[8]~input_o\ & ( (\tc[0]~input_o\ & !\tc[1]~input_o\) ) ) # ( !\teclas[8]~input_o\ & ( (\teclas[9]~input_o\ & (\tc[0]~input_o\ & !\tc[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclas[9]~input_o\,
	datac => \ALT_INV_tc[0]~input_o\,
	datad => \ALT_INV_tc[1]~input_o\,
	dataf => \ALT_INV_teclas[8]~input_o\,
	combout => \dm|d1|s2~0_combout\);

-- Location: FF_X56_Y1_N38
\c2|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \c2|Add0~2_combout\,
	asdata => \dm|d1|s2~0_combout\,
	clrn => \ctrl|E\(2),
	sclr => \c2|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c2|q\(3));

-- Location: LABCELL_X56_Y1_N12
\ctrl|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Equal1~0_combout\ = ( !\c2|q\(3) & ( \c2|q\(2) & ( (\c2|q\(1) & !\c2|q\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c2|ALT_INV_q\(1),
	datad => \c2|ALT_INV_q\(0),
	datae => \c2|ALT_INV_q\(3),
	dataf => \c2|ALT_INV_q\(2),
	combout => \ctrl|Equal1~0_combout\);

-- Location: LABCELL_X56_Y1_N24
\ctrl|E[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|E\(2) = ( GLOBAL(\clock~inputCLKENA0_outclk\) & ( \ctrl|Equal1~0_combout\ & ( \ctrl|E\(2) ) ) ) # ( GLOBAL(\clock~inputCLKENA0_outclk\) & ( !\ctrl|Equal1~0_combout\ & ( \ctrl|E\(2) ) ) ) # ( !GLOBAL(\clock~inputCLKENA0_outclk\) & ( 
-- !\ctrl|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ctrl|ALT_INV_E\(2),
	datae => \ALT_INV_clock~inputCLKENA0_outclk\,
	dataf => \ctrl|ALT_INV_Equal1~0_combout\,
	combout => \ctrl|E\(2));

-- Location: FF_X56_Y1_N32
\c2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \c2|q[0]~_wirecell_combout\,
	asdata => \dm|d4|s2~0_combout\,
	clrn => \ctrl|E\(2),
	sclr => \c2|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c2|q\(0));

-- Location: LABCELL_X56_Y1_N51
\c2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c2|Add0~1_combout\ = !\c2|q\(0) $ (!\c2|q\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c2|ALT_INV_q\(0),
	datad => \c2|ALT_INV_q\(1),
	combout => \c2|Add0~1_combout\);

-- Location: LABCELL_X55_Y3_N57
\dm|d3|s2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d3|s2~0_combout\ = ( \teclas[3]~input_o\ & ( \teclas[2]~input_o\ & ( (!\tc[1]~input_o\ & \tc[0]~input_o\) ) ) ) # ( !\teclas[3]~input_o\ & ( \teclas[2]~input_o\ & ( (!\tc[1]~input_o\ & \tc[0]~input_o\) ) ) ) # ( \teclas[3]~input_o\ & ( 
-- !\teclas[2]~input_o\ & ( (!\tc[1]~input_o\ & \tc[0]~input_o\) ) ) ) # ( !\teclas[3]~input_o\ & ( !\teclas[2]~input_o\ & ( (!\tc[1]~input_o\ & (\tc[0]~input_o\ & ((\teclas[7]~input_o\) # (\teclas[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tc[1]~input_o\,
	datab => \ALT_INV_teclas[6]~input_o\,
	datac => \ALT_INV_tc[0]~input_o\,
	datad => \ALT_INV_teclas[7]~input_o\,
	datae => \ALT_INV_teclas[3]~input_o\,
	dataf => \ALT_INV_teclas[2]~input_o\,
	combout => \dm|d3|s2~0_combout\);

-- Location: FF_X56_Y1_N53
\c2|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \c2|Add0~1_combout\,
	asdata => \dm|d3|s2~0_combout\,
	clrn => \ctrl|E\(2),
	sclr => \c2|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c2|q\(1));

-- Location: LABCELL_X57_Y3_N27
\ce|C[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ce|C[3]~3_combout\ = ( \c2|q\(0) & ( (!\c2|q\(1) & (!\c2|q\(3) & \c2|q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c2|ALT_INV_q\(1),
	datac => \c2|ALT_INV_q\(3),
	datad => \c2|ALT_INV_q\(2),
	dataf => \c2|ALT_INV_q\(0),
	combout => \ce|C[3]~3_combout\);

-- Location: LABCELL_X56_Y3_N54
\ce|C[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ce|C[5]~2_combout\ = ( !\RC~input_o\ & ( (\c1|q\(0) & (!\c1|q\(2) & (!\c1|q\(1) & \c1|q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_q\(0),
	datab => \c1|ALT_INV_q\(2),
	datac => \c1|ALT_INV_q\(1),
	datad => \c1|ALT_INV_q\(3),
	dataf => \ALT_INV_RC~input_o\,
	combout => \ce|C[5]~2_combout\);

-- Location: LABCELL_X57_Y3_N6
\ce|C[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ce|C[3]~5_combout\ = ( \ce|C[3]~3_combout\ & ( \ce|C[5]~2_combout\ ) ) # ( !\ce|C[3]~3_combout\ & ( \ce|C[5]~2_combout\ & ( (\tc[1]~input_o\ & (\RC~input_o\ & (!\sel~input_o\ & !\tc[0]~input_o\))) ) ) ) # ( \ce|C[3]~3_combout\ & ( !\ce|C[5]~2_combout\ & 
-- ( (\tc[1]~input_o\ & (\RC~input_o\ & (!\sel~input_o\ & !\tc[0]~input_o\))) ) ) ) # ( !\ce|C[3]~3_combout\ & ( !\ce|C[5]~2_combout\ & ( (\tc[1]~input_o\ & (\RC~input_o\ & (!\sel~input_o\ & !\tc[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tc[1]~input_o\,
	datab => \ALT_INV_RC~input_o\,
	datac => \ALT_INV_sel~input_o\,
	datad => \ALT_INV_tc[0]~input_o\,
	datae => \ce|ALT_INV_C[3]~3_combout\,
	dataf => \ce|ALT_INV_C[5]~2_combout\,
	combout => \ce|C[3]~5_combout\);

-- Location: FF_X57_Y3_N23
\c3|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \c3|Add0~1_combout\,
	asdata => \dm|d3|s3~0_combout\,
	clrn => \ctrl|E\(1),
	sclr => \c2|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|q\(1));

-- Location: LABCELL_X57_Y3_N0
\c3|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c3|Add0~0_combout\ = ( \c3|q\(0) & ( !\c3|q\(1) $ (!\c3|q\(2)) ) ) # ( !\c3|q\(0) & ( \c3|q\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c3|ALT_INV_q\(1),
	datad => \c3|ALT_INV_q\(2),
	dataf => \c3|ALT_INV_q\(0),
	combout => \c3|Add0~0_combout\);

-- Location: LABCELL_X55_Y3_N12
\dm|d2|s3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d2|s3~0_combout\ = ( \teclas[5]~input_o\ & ( \teclas[4]~input_o\ & ( (\tc[1]~input_o\ & !\tc[0]~input_o\) ) ) ) # ( !\teclas[5]~input_o\ & ( \teclas[4]~input_o\ & ( (\tc[1]~input_o\ & !\tc[0]~input_o\) ) ) ) # ( \teclas[5]~input_o\ & ( 
-- !\teclas[4]~input_o\ & ( (\tc[1]~input_o\ & !\tc[0]~input_o\) ) ) ) # ( !\teclas[5]~input_o\ & ( !\teclas[4]~input_o\ & ( (\tc[1]~input_o\ & (!\tc[0]~input_o\ & ((\teclas[7]~input_o\) # (\teclas[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100000000010101010000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tc[1]~input_o\,
	datab => \ALT_INV_teclas[6]~input_o\,
	datac => \ALT_INV_teclas[7]~input_o\,
	datad => \ALT_INV_tc[0]~input_o\,
	datae => \ALT_INV_teclas[5]~input_o\,
	dataf => \ALT_INV_teclas[4]~input_o\,
	combout => \dm|d2|s3~0_combout\);

-- Location: FF_X57_Y3_N2
\c3|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \c3|Add0~0_combout\,
	asdata => \dm|d2|s3~0_combout\,
	clrn => \ctrl|E\(1),
	sclr => \c2|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|q\(2));

-- Location: LABCELL_X57_Y3_N36
\c3|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c3|Add0~2_combout\ = ( \c3|q\(0) & ( !\c3|q\(3) $ (((!\c3|q\(2)) # (!\c3|q\(1)))) ) ) # ( !\c3|q\(0) & ( \c3|q\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100010001111011100001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c3|ALT_INV_q\(2),
	datab => \c3|ALT_INV_q\(1),
	datad => \c3|ALT_INV_q\(3),
	dataf => \c3|ALT_INV_q\(0),
	combout => \c3|Add0~2_combout\);

-- Location: LABCELL_X55_Y3_N24
\dm|d1|s3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d1|s3~0_combout\ = ( \teclas[8]~input_o\ & ( (\tc[1]~input_o\ & !\tc[0]~input_o\) ) ) # ( !\teclas[8]~input_o\ & ( (\tc[1]~input_o\ & (!\tc[0]~input_o\ & \teclas[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tc[1]~input_o\,
	datab => \ALT_INV_tc[0]~input_o\,
	datac => \ALT_INV_teclas[9]~input_o\,
	dataf => \ALT_INV_teclas[8]~input_o\,
	combout => \dm|d1|s3~0_combout\);

-- Location: FF_X57_Y3_N38
\c3|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \c3|Add0~2_combout\,
	asdata => \dm|d1|s3~0_combout\,
	clrn => \ctrl|E\(1),
	sclr => \c2|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|q\(3));

-- Location: LABCELL_X56_Y3_N33
\c4|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c4|Add0~2_combout\ = ( \c4|q\(2) & ( !\c4|q\(3) $ (((!\c4|q\(0)) # (!\c4|q\(1)))) ) ) # ( !\c4|q\(2) & ( \c4|q\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100010001111011100001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c4|ALT_INV_q\(0),
	datab => \c4|ALT_INV_q\(1),
	datad => \c4|ALT_INV_q\(3),
	dataf => \c4|ALT_INV_q\(2),
	combout => \c4|Add0~2_combout\);

-- Location: LABCELL_X55_Y3_N30
\dm|d1|s4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d1|s4~0_combout\ = ( \teclas[9]~input_o\ & ( (\tc[1]~input_o\ & \tc[0]~input_o\) ) ) # ( !\teclas[9]~input_o\ & ( (\teclas[8]~input_o\ & (\tc[1]~input_o\ & \tc[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_teclas[8]~input_o\,
	datac => \ALT_INV_tc[1]~input_o\,
	datad => \ALT_INV_tc[0]~input_o\,
	dataf => \ALT_INV_teclas[9]~input_o\,
	combout => \dm|d1|s4~0_combout\);

-- Location: FF_X56_Y3_N35
\c4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \c4|Add0~2_combout\,
	asdata => \dm|d1|s4~0_combout\,
	clrn => \ctrl|E\(0),
	sclr => \c2|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c4|q\(3));

-- Location: LABCELL_X56_Y3_N9
\ctrl|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Equal2~1_combout\ = ( !\c4|q\(3) & ( (\c4|q\(1) & !\c4|q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c4|ALT_INV_q\(1),
	datad => \c4|ALT_INV_q\(2),
	dataf => \c4|ALT_INV_q\(3),
	combout => \ctrl|Equal2~1_combout\);

-- Location: LABCELL_X56_Y3_N12
\ctrl|E~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|E~0_combout\ = ( \c3|q\(1) & ( \ctrl|Equal2~1_combout\ & ( ((\c3|q\(3) & (!\c3|q\(0) & !\c3|q\(2)))) # (\c4|q\(0)) ) ) ) # ( !\c3|q\(1) & ( \ctrl|Equal2~1_combout\ & ( ((!\c3|q\(3) & (!\c3|q\(0) & \c3|q\(2)))) # (\c4|q\(0)) ) ) ) # ( \c3|q\(1) & ( 
-- !\ctrl|Equal2~1_combout\ & ( (\c3|q\(3) & (!\c3|q\(0) & !\c3|q\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000000000001010101110101010111010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c4|ALT_INV_q\(0),
	datab => \c3|ALT_INV_q\(3),
	datac => \c3|ALT_INV_q\(0),
	datad => \c3|ALT_INV_q\(2),
	datae => \c3|ALT_INV_q\(1),
	dataf => \ctrl|ALT_INV_Equal2~1_combout\,
	combout => \ctrl|E~0_combout\);

-- Location: LABCELL_X56_Y3_N30
\ctrl|E[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|E\(1) = ( \ctrl|E~0_combout\ & ( (\ctrl|E\(1) & GLOBAL(\clock~inputCLKENA0_outclk\)) ) ) # ( !\ctrl|E~0_combout\ & ( (!GLOBAL(\clock~inputCLKENA0_outclk\)) # (\ctrl|E\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ctrl|ALT_INV_E\(1),
	datad => \ALT_INV_clock~inputCLKENA0_outclk\,
	dataf => \ctrl|ALT_INV_E~0_combout\,
	combout => \ctrl|E\(1));

-- Location: FF_X57_Y3_N35
\c3|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \c3|q[0]~_wirecell_combout\,
	asdata => \dm|d4|s3~0_combout\,
	clrn => \ctrl|E\(1),
	sclr => \c2|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|q\(0));

-- Location: LABCELL_X56_Y3_N3
\ce|C[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ce|C[1]~0_combout\ = ( \RC~input_o\ & ( (!\sel~input_o\ & (\tc[1]~input_o\ & \tc[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel~input_o\,
	datab => \ALT_INV_tc[1]~input_o\,
	datac => \ALT_INV_tc[0]~input_o\,
	dataf => \ALT_INV_RC~input_o\,
	combout => \ce|C[1]~0_combout\);

-- Location: LABCELL_X56_Y3_N24
\ce|C[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ce|C[1]~1_combout\ = ( !\c3|q\(1) & ( \c4|q\(3) & ( \c3|q\(3) ) ) ) # ( \c3|q\(1) & ( !\c4|q\(3) & ( (!\c4|q\(2) & (\c4|q\(1) & (!\c4|q\(0) & !\c3|q\(3)))) ) ) ) # ( !\c3|q\(1) & ( !\c4|q\(3) & ( (\c3|q\(3) & (((!\c4|q\(1)) # (\c4|q\(0))) # (\c4|q\(2)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011111001000000000000000000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c4|ALT_INV_q\(2),
	datab => \c4|ALT_INV_q\(1),
	datac => \c4|ALT_INV_q\(0),
	datad => \c3|ALT_INV_q\(3),
	datae => \c3|ALT_INV_q\(1),
	dataf => \c4|ALT_INV_q\(3),
	combout => \ce|C[1]~1_combout\);

-- Location: LABCELL_X56_Y3_N18
\ce|C[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ce|C[1]~4_combout\ = ( \ce|C[3]~3_combout\ & ( \ce|C[5]~2_combout\ & ( ((\c3|q\(0) & (!\c3|q\(2) & \ce|C[1]~1_combout\))) # (\ce|C[1]~0_combout\) ) ) ) # ( !\ce|C[3]~3_combout\ & ( \ce|C[5]~2_combout\ & ( \ce|C[1]~0_combout\ ) ) ) # ( \ce|C[3]~3_combout\ 
-- & ( !\ce|C[5]~2_combout\ & ( \ce|C[1]~0_combout\ ) ) ) # ( !\ce|C[3]~3_combout\ & ( !\ce|C[5]~2_combout\ & ( \ce|C[1]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c3|ALT_INV_q\(0),
	datab => \c3|ALT_INV_q\(2),
	datac => \ce|ALT_INV_C[1]~0_combout\,
	datad => \ce|ALT_INV_C[1]~1_combout\,
	datae => \ce|ALT_INV_C[3]~3_combout\,
	dataf => \ce|ALT_INV_C[5]~2_combout\,
	combout => \ce|C[1]~4_combout\);

-- Location: FF_X56_Y3_N8
\c4|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \c4|Add0~1_combout\,
	asdata => \dm|d3|s4~0_combout\,
	clrn => \ctrl|E\(0),
	sclr => \c2|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c4|q\(1));

-- Location: LABCELL_X56_Y3_N39
\ctrl|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Equal2~0_combout\ = ( !\c4|q\(3) & ( (\c4|q\(0) & (\c4|q\(1) & !\c4|q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c4|ALT_INV_q\(0),
	datac => \c4|ALT_INV_q\(1),
	datad => \c4|ALT_INV_q\(2),
	dataf => \c4|ALT_INV_q\(3),
	combout => \ctrl|Equal2~0_combout\);

-- Location: LABCELL_X56_Y3_N51
\ctrl|E[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|E\(0) = ( \ctrl|Equal2~0_combout\ & ( (\ctrl|E\(0) & GLOBAL(\clock~inputCLKENA0_outclk\)) ) ) # ( !\ctrl|Equal2~0_combout\ & ( (!GLOBAL(\clock~inputCLKENA0_outclk\)) # (\ctrl|E\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ctrl|ALT_INV_E\(0),
	datad => \ALT_INV_clock~inputCLKENA0_outclk\,
	dataf => \ctrl|ALT_INV_Equal2~0_combout\,
	combout => \ctrl|E\(0));

-- Location: FF_X56_Y3_N50
\c4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \c4|q[0]~_wirecell_combout\,
	asdata => \dm|d4|s4~0_combout\,
	clrn => \ctrl|E\(0),
	sclr => \c2|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c4|q\(0));

-- Location: LABCELL_X56_Y3_N36
\c4|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c4|Add0~0_combout\ = !\c4|q\(2) $ (((!\c4|q\(0)) # (!\c4|q\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111101110000100011110111000010001111011100001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c4|ALT_INV_q\(0),
	datab => \c4|ALT_INV_q\(1),
	datad => \c4|ALT_INV_q\(2),
	combout => \c4|Add0~0_combout\);

-- Location: LABCELL_X55_Y3_N42
\dm|d2|s4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dm|d2|s4~0_combout\ = ( \teclas[5]~input_o\ & ( \teclas[4]~input_o\ & ( (\tc[1]~input_o\ & \tc[0]~input_o\) ) ) ) # ( !\teclas[5]~input_o\ & ( \teclas[4]~input_o\ & ( (\tc[1]~input_o\ & \tc[0]~input_o\) ) ) ) # ( \teclas[5]~input_o\ & ( 
-- !\teclas[4]~input_o\ & ( (\tc[1]~input_o\ & \tc[0]~input_o\) ) ) ) # ( !\teclas[5]~input_o\ & ( !\teclas[4]~input_o\ & ( (\tc[1]~input_o\ & (\tc[0]~input_o\ & ((\teclas[7]~input_o\) # (\teclas[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tc[1]~input_o\,
	datab => \ALT_INV_teclas[6]~input_o\,
	datac => \ALT_INV_teclas[7]~input_o\,
	datad => \ALT_INV_tc[0]~input_o\,
	datae => \ALT_INV_teclas[5]~input_o\,
	dataf => \ALT_INV_teclas[4]~input_o\,
	combout => \dm|d2|s4~0_combout\);

-- Location: FF_X56_Y3_N38
\c4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputCLKENA0_outclk\,
	d => \c4|Add0~0_combout\,
	asdata => \dm|d2|s4~0_combout\,
	clrn => \ctrl|E\(0),
	sclr => \c2|q[2]~0_combout\,
	sload => \RC~input_o\,
	ena => \ce|C[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c4|q\(2));

-- Location: LABCELL_X55_Y3_N51
\ce|C[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ce|C[0]~9_combout\ = ( \sel~input_o\ & ( (\tc[1]~input_o\ & \tc[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tc[1]~input_o\,
	datab => \ALT_INV_tc[0]~input_o\,
	dataf => \ALT_INV_sel~input_o\,
	combout => \ce|C[0]~9_combout\);

-- Location: LABCELL_X55_Y3_N18
\ce|C[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ce|C\(0) = ( \RC~input_o\ & ( \ce|C[0]~9_combout\ ) ) # ( !\RC~input_o\ & ( \ce|C\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ce|ALT_INV_C[0]~9_combout\,
	datac => \ce|ALT_INV_C\(0),
	dataf => \ALT_INV_RC~input_o\,
	combout => \ce|C\(0));

-- Location: FF_X55_Y3_N44
\r4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dm|d2|s4~0_combout\,
	sclr => \ALT_INV_sel~input_o\,
	ena => \ce|C\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r4|q\(2));

-- Location: LABCELL_X55_Y3_N39
\mt4|S[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mt4|S[2]~0_combout\ = ( \r4|q\(2) & ( (\c4|q\(2)) # (\sel~input_o\) ) ) # ( !\r4|q\(2) & ( (!\sel~input_o\ & \c4|q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel~input_o\,
	datac => \c4|ALT_INV_q\(2),
	dataf => \r4|ALT_INV_q\(2),
	combout => \mt4|S[2]~0_combout\);

-- Location: FF_X55_Y3_N47
\r4|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dm|d3|s4~0_combout\,
	sclr => \ALT_INV_sel~input_o\,
	ena => \ce|C\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r4|q\(1));

-- Location: LABCELL_X56_Y2_N24
\mt4|S[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mt4|S[1]~2_combout\ = ( \sel~input_o\ & ( \c4|q\(1) & ( \r4|q\(1) ) ) ) # ( !\sel~input_o\ & ( \c4|q\(1) ) ) # ( \sel~input_o\ & ( !\c4|q\(1) & ( \r4|q\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \r4|ALT_INV_q\(1),
	datae => \ALT_INV_sel~input_o\,
	dataf => \c4|ALT_INV_q\(1),
	combout => \mt4|S[1]~2_combout\);

-- Location: FF_X55_Y3_N32
\r4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dm|d1|s4~0_combout\,
	sclr => \ALT_INV_sel~input_o\,
	ena => \ce|C\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r4|q\(3));

-- Location: LABCELL_X57_Y3_N30
\dc1|g~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc1|g~0_combout\ = ( \c4|q\(3) & ( (!\r4|q\(3) & \sel~input_o\) ) ) # ( !\c4|q\(3) & ( (!\r4|q\(3)) # (!\sel~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r4|ALT_INV_q\(3),
	datac => \ALT_INV_sel~input_o\,
	dataf => \c4|ALT_INV_q\(3),
	combout => \dc1|g~0_combout\);

-- Location: FF_X55_Y3_N23
\r4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dm|d4|s4~0_combout\,
	sclr => \ALT_INV_sel~input_o\,
	ena => \ce|C\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r4|q\(0));

-- Location: LABCELL_X56_Y3_N0
\mt4|S[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mt4|S[0]~1_combout\ = ( \c4|q\(0) & ( (!\sel~input_o\) # (\r4|q\(0)) ) ) # ( !\c4|q\(0) & ( (\sel~input_o\ & \r4|q\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel~input_o\,
	datad => \r4|ALT_INV_q\(0),
	dataf => \c4|ALT_INV_q\(0),
	combout => \mt4|S[0]~1_combout\);

-- Location: LABCELL_X56_Y2_N6
\dc1|a\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc1|a~combout\ = ( \dc1|g~0_combout\ & ( \mt4|S[0]~1_combout\ & ( (\mt4|S[1]~2_combout\) # (\mt4|S[2]~0_combout\) ) ) ) # ( !\dc1|g~0_combout\ & ( \mt4|S[0]~1_combout\ ) ) # ( \dc1|g~0_combout\ & ( !\mt4|S[0]~1_combout\ & ( (!\mt4|S[2]~0_combout\) # 
-- (\mt4|S[1]~2_combout\) ) ) ) # ( !\dc1|g~0_combout\ & ( !\mt4|S[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110011111100111111111111111111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mt4|ALT_INV_S[2]~0_combout\,
	datac => \mt4|ALT_INV_S[1]~2_combout\,
	datae => \dc1|ALT_INV_g~0_combout\,
	dataf => \mt4|ALT_INV_S[0]~1_combout\,
	combout => \dc1|a~combout\);

-- Location: LABCELL_X56_Y2_N39
\dc1|b\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc1|b~combout\ = ( \mt4|S[0]~1_combout\ & ( (!\mt4|S[2]~0_combout\) # (\mt4|S[1]~2_combout\) ) ) # ( !\mt4|S[0]~1_combout\ & ( (!\mt4|S[1]~2_combout\) # (!\mt4|S[2]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101011110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt4|ALT_INV_S[1]~2_combout\,
	datac => \mt4|ALT_INV_S[2]~0_combout\,
	dataf => \mt4|ALT_INV_S[0]~1_combout\,
	combout => \dc1|b~combout\);

-- Location: LABCELL_X56_Y2_N54
\dc1|c\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc1|c~combout\ = ( \mt4|S[0]~1_combout\ ) # ( !\mt4|S[0]~1_combout\ & ( (!\mt4|S[1]~2_combout\) # (\mt4|S[2]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt4|ALT_INV_S[1]~2_combout\,
	datab => \mt4|ALT_INV_S[2]~0_combout\,
	dataf => \mt4|ALT_INV_S[0]~1_combout\,
	combout => \dc1|c~combout\);

-- Location: LABCELL_X56_Y2_N57
\dc1|d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc1|d~0_combout\ = ( \mt4|S[0]~1_combout\ & ( !\mt4|S[1]~2_combout\ $ (!\mt4|S[2]~0_combout\) ) ) # ( !\mt4|S[0]~1_combout\ & ( (!\mt4|S[2]~0_combout\) # (\mt4|S[1]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt4|ALT_INV_S[1]~2_combout\,
	datab => \mt4|ALT_INV_S[2]~0_combout\,
	dataf => \mt4|ALT_INV_S[0]~1_combout\,
	combout => \dc1|d~0_combout\);

-- Location: LABCELL_X56_Y2_N0
\dc1|e~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc1|e~0_combout\ = ( !\mt4|S[0]~1_combout\ & ( (!\mt4|S[2]~0_combout\) # (\mt4|S[1]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mt4|ALT_INV_S[2]~0_combout\,
	datac => \mt4|ALT_INV_S[1]~2_combout\,
	dataf => \mt4|ALT_INV_S[0]~1_combout\,
	combout => \dc1|e~0_combout\);

-- Location: LABCELL_X56_Y2_N33
\dc1|f~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc1|f~0_combout\ = ( \dc1|g~0_combout\ & ( \mt4|S[1]~2_combout\ & ( (!\mt4|S[0]~1_combout\ & \mt4|S[2]~0_combout\) ) ) ) # ( !\dc1|g~0_combout\ & ( \mt4|S[1]~2_combout\ ) ) # ( \dc1|g~0_combout\ & ( !\mt4|S[1]~2_combout\ & ( (!\mt4|S[0]~1_combout\) # 
-- (\mt4|S[2]~0_combout\) ) ) ) # ( !\dc1|g~0_combout\ & ( !\mt4|S[1]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101011111010111111111111111111110000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt4|ALT_INV_S[0]~1_combout\,
	datac => \mt4|ALT_INV_S[2]~0_combout\,
	datae => \dc1|ALT_INV_g~0_combout\,
	dataf => \mt4|ALT_INV_S[1]~2_combout\,
	combout => \dc1|f~0_combout\);

-- Location: LABCELL_X56_Y2_N36
\dc1|g~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc1|g~1_combout\ = ( \mt4|S[0]~1_combout\ & ( (!\dc1|g~0_combout\) # (!\mt4|S[1]~2_combout\ $ (!\mt4|S[2]~0_combout\)) ) ) # ( !\mt4|S[0]~1_combout\ & ( ((!\dc1|g~0_combout\) # (\mt4|S[2]~0_combout\)) # (\mt4|S[1]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101110111111111110111011111111111011001101111111101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt4|ALT_INV_S[1]~2_combout\,
	datab => \mt4|ALT_INV_S[2]~0_combout\,
	datad => \dc1|ALT_INV_g~0_combout\,
	dataf => \mt4|ALT_INV_S[0]~1_combout\,
	combout => \dc1|g~1_combout\);

-- Location: LABCELL_X55_Y3_N48
\ce|C[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ce|C[2]~10_combout\ = ( \sel~input_o\ & ( (\tc[1]~input_o\ & !\tc[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tc[1]~input_o\,
	datab => \ALT_INV_tc[0]~input_o\,
	dataf => \ALT_INV_sel~input_o\,
	combout => \ce|C[2]~10_combout\);

-- Location: LABCELL_X55_Y3_N33
\ce|C[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ce|C\(2) = ( \ce|C\(2) & ( (!\RC~input_o\) # (\ce|C[2]~10_combout\) ) ) # ( !\ce|C\(2) & ( (\ce|C[2]~10_combout\ & \RC~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ce|ALT_INV_C[2]~10_combout\,
	datac => \ALT_INV_RC~input_o\,
	dataf => \ce|ALT_INV_C\(2),
	combout => \ce|C\(2));

-- Location: FF_X55_Y3_N14
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

-- Location: LABCELL_X57_Y3_N3
\mt3|S[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mt3|S[2]~1_combout\ = ( \sel~input_o\ & ( \r3|q\(2) ) ) # ( !\sel~input_o\ & ( \c3|q\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c3|ALT_INV_q\(2),
	datad => \r3|ALT_INV_q\(2),
	dataf => \ALT_INV_sel~input_o\,
	combout => \mt3|S[2]~1_combout\);

-- Location: FF_X55_Y3_N29
\r3|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dm|d4|s3~0_combout\,
	sclr => \ALT_INV_sel~input_o\,
	ena => \ce|C\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r3|q\(0));

-- Location: LABCELL_X57_Y3_N18
\mt3|S[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mt3|S[0]~0_combout\ = (!\sel~input_o\ & (\c3|q\(0))) # (\sel~input_o\ & ((\r3|q\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c3|ALT_INV_q\(0),
	datac => \ALT_INV_sel~input_o\,
	datad => \r3|ALT_INV_q\(0),
	combout => \mt3|S[0]~0_combout\);

-- Location: FF_X55_Y3_N26
\r3|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dm|d1|s3~0_combout\,
	sclr => \ALT_INV_sel~input_o\,
	ena => \ce|C\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r3|q\(3));

-- Location: LABCELL_X56_Y3_N57
\dc2|a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc2|a~0_combout\ = ( \r3|q\(3) & ( (!\c3|q\(3) & !\sel~input_o\) ) ) # ( !\r3|q\(3) & ( (!\c3|q\(3)) # (\sel~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c3|ALT_INV_q\(3),
	datad => \ALT_INV_sel~input_o\,
	dataf => \r3|ALT_INV_q\(3),
	combout => \dc2|a~0_combout\);

-- Location: FF_X55_Y3_N17
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

-- Location: LABCELL_X57_Y3_N39
\mt3|S[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mt3|S[1]~2_combout\ = ( \sel~input_o\ & ( \r3|q\(1) ) ) # ( !\sel~input_o\ & ( \c3|q\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c3|ALT_INV_q\(1),
	datad => \r3|ALT_INV_q\(1),
	dataf => \ALT_INV_sel~input_o\,
	combout => \mt3|S[1]~2_combout\);

-- Location: LABCELL_X56_Y2_N3
\dc2|a\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc2|a~combout\ = ( \mt3|S[1]~2_combout\ ) # ( !\mt3|S[1]~2_combout\ & ( (!\dc2|a~0_combout\) # (!\mt3|S[2]~1_combout\ $ (\mt3|S[0]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110100101111111111010010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt3|ALT_INV_S[2]~1_combout\,
	datac => \mt3|ALT_INV_S[0]~0_combout\,
	datad => \dc2|ALT_INV_a~0_combout\,
	dataf => \mt3|ALT_INV_S[1]~2_combout\,
	combout => \dc2|a~combout\);

-- Location: LABCELL_X56_Y2_N12
\dc2|b\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc2|b~combout\ = ( \mt3|S[1]~2_combout\ & ( (!\mt3|S[2]~1_combout\) # (\mt3|S[0]~0_combout\) ) ) # ( !\mt3|S[1]~2_combout\ & ( (!\mt3|S[2]~1_combout\) # (!\mt3|S[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111010111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt3|ALT_INV_S[2]~1_combout\,
	datab => \mt3|ALT_INV_S[0]~0_combout\,
	dataf => \mt3|ALT_INV_S[1]~2_combout\,
	combout => \dc2|b~combout\);

-- Location: LABCELL_X56_Y2_N15
\dc2|c\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc2|c~combout\ = ( \mt3|S[1]~2_combout\ & ( (\mt3|S[0]~0_combout\) # (\mt3|S[2]~1_combout\) ) ) # ( !\mt3|S[1]~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt3|ALT_INV_S[2]~1_combout\,
	datab => \mt3|ALT_INV_S[0]~0_combout\,
	dataf => \mt3|ALT_INV_S[1]~2_combout\,
	combout => \dc2|c~combout\);

-- Location: LABCELL_X56_Y2_N45
\dc2|d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc2|d~0_combout\ = ( \mt3|S[1]~2_combout\ & ( (!\mt3|S[2]~1_combout\) # (!\mt3|S[0]~0_combout\) ) ) # ( !\mt3|S[1]~2_combout\ & ( !\mt3|S[2]~1_combout\ $ (\mt3|S[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100111101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt3|ALT_INV_S[2]~1_combout\,
	datab => \mt3|ALT_INV_S[0]~0_combout\,
	dataf => \mt3|ALT_INV_S[1]~2_combout\,
	combout => \dc2|d~0_combout\);

-- Location: LABCELL_X56_Y2_N42
\dc2|e~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc2|e~0_combout\ = ( \mt3|S[1]~2_combout\ & ( !\mt3|S[0]~0_combout\ ) ) # ( !\mt3|S[1]~2_combout\ & ( (!\mt3|S[2]~1_combout\ & !\mt3|S[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt3|ALT_INV_S[2]~1_combout\,
	datab => \mt3|ALT_INV_S[0]~0_combout\,
	dataf => \mt3|ALT_INV_S[1]~2_combout\,
	combout => \dc2|e~0_combout\);

-- Location: LABCELL_X56_Y2_N48
\dc2|f~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc2|f~0_combout\ = ( \mt3|S[1]~2_combout\ & ( (!\dc2|a~0_combout\) # ((!\mt3|S[0]~0_combout\ & \mt3|S[2]~1_combout\)) ) ) # ( !\mt3|S[1]~2_combout\ & ( (!\mt3|S[0]~0_combout\) # ((!\dc2|a~0_combout\) # (\mt3|S[2]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001111111111111100111111111111000011001111111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mt3|ALT_INV_S[0]~0_combout\,
	datac => \mt3|ALT_INV_S[2]~1_combout\,
	datad => \dc2|ALT_INV_a~0_combout\,
	dataf => \mt3|ALT_INV_S[1]~2_combout\,
	combout => \dc2|f~0_combout\);

-- Location: LABCELL_X56_Y2_N51
\dc2|g~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc2|g~0_combout\ = ( \mt3|S[1]~2_combout\ & ( (!\mt3|S[2]~1_combout\) # ((!\mt3|S[0]~0_combout\) # (!\dc2|a~0_combout\)) ) ) # ( !\mt3|S[1]~2_combout\ & ( (!\dc2|a~0_combout\) # (\mt3|S[2]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101111111110101010111111111111011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt3|ALT_INV_S[2]~1_combout\,
	datab => \mt3|ALT_INV_S[0]~0_combout\,
	datad => \dc2|ALT_INV_a~0_combout\,
	dataf => \mt3|ALT_INV_S[1]~2_combout\,
	combout => \dc2|g~0_combout\);

-- Location: LABCELL_X55_Y3_N36
\ce|C[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ce|C[4]~11_combout\ = (\sel~input_o\ & (!\tc[1]~input_o\ & \tc[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel~input_o\,
	datac => \ALT_INV_tc[1]~input_o\,
	datad => \ALT_INV_tc[0]~input_o\,
	combout => \ce|C[4]~11_combout\);

-- Location: LABCELL_X55_Y3_N0
\ce|C[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ce|C\(4) = ( \RC~input_o\ & ( \ce|C[4]~11_combout\ ) ) # ( !\RC~input_o\ & ( \ce|C\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ce|ALT_INV_C[4]~11_combout\,
	datad => \ce|ALT_INV_C\(4),
	dataf => \ALT_INV_RC~input_o\,
	combout => \ce|C\(4));

-- Location: FF_X55_Y3_N8
\r2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dm|d4|s2~0_combout\,
	sclr => \ALT_INV_sel~input_o\,
	ena => \ce|C\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r2|q\(0));

-- Location: LABCELL_X56_Y4_N24
\mt2|S[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mt2|S[0]~1_combout\ = ( \r2|q\(0) & ( \sel~input_o\ ) ) # ( \r2|q\(0) & ( !\sel~input_o\ & ( \c2|q\(0) ) ) ) # ( !\r2|q\(0) & ( !\sel~input_o\ & ( \c2|q\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c2|ALT_INV_q\(0),
	datae => \r2|ALT_INV_q\(0),
	dataf => \ALT_INV_sel~input_o\,
	combout => \mt2|S[0]~1_combout\);

-- Location: FF_X55_Y3_N59
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
	ena => \ce|C\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r2|q\(1));

-- Location: LABCELL_X56_Y4_N9
\mt2|S[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mt2|S[1]~2_combout\ = ( \c2|q\(1) & ( \r2|q\(1) ) ) # ( !\c2|q\(1) & ( \r2|q\(1) & ( \sel~input_o\ ) ) ) # ( \c2|q\(1) & ( !\r2|q\(1) & ( !\sel~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sel~input_o\,
	datae => \c2|ALT_INV_q\(1),
	dataf => \r2|ALT_INV_q\(1),
	combout => \mt2|S[1]~2_combout\);

-- Location: FF_X55_Y3_N5
\r2|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dm|d1|s2~0_combout\,
	sclr => \ALT_INV_sel~input_o\,
	ena => \ce|C\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r2|q\(3));

-- Location: LABCELL_X57_Y3_N57
\dc3|g~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc3|g~0_combout\ = ( \r2|q\(3) & ( (!\sel~input_o\ & !\c2|q\(3)) ) ) # ( !\r2|q\(3) & ( (!\c2|q\(3)) # (\sel~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101011111010110100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel~input_o\,
	datac => \c2|ALT_INV_q\(3),
	dataf => \r2|ALT_INV_q\(3),
	combout => \dc3|g~0_combout\);

-- Location: FF_X55_Y3_N56
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
	ena => \ce|C\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r2|q\(2));

-- Location: LABCELL_X57_Y3_N54
\mt2|S[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mt2|S[2]~0_combout\ = ( \r2|q\(2) & ( (\c2|q\(2)) # (\sel~input_o\) ) ) # ( !\r2|q\(2) & ( (!\sel~input_o\ & \c2|q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel~input_o\,
	datad => \c2|ALT_INV_q\(2),
	dataf => \r2|ALT_INV_q\(2),
	combout => \mt2|S[2]~0_combout\);

-- Location: LABCELL_X56_Y4_N48
\dc3|a\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc3|a~combout\ = ( \dc3|g~0_combout\ & ( \mt2|S[2]~0_combout\ & ( (\mt2|S[1]~2_combout\) # (\mt2|S[0]~1_combout\) ) ) ) # ( !\dc3|g~0_combout\ & ( \mt2|S[2]~0_combout\ ) ) # ( \dc3|g~0_combout\ & ( !\mt2|S[2]~0_combout\ & ( (!\mt2|S[0]~1_combout\) # 
-- (\mt2|S[1]~2_combout\) ) ) ) # ( !\dc3|g~0_combout\ & ( !\mt2|S[2]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101110111011101111111111111111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt2|ALT_INV_S[0]~1_combout\,
	datab => \mt2|ALT_INV_S[1]~2_combout\,
	datae => \dc3|ALT_INV_g~0_combout\,
	dataf => \mt2|ALT_INV_S[2]~0_combout\,
	combout => \dc3|a~combout\);

-- Location: LABCELL_X56_Y4_N57
\dc3|b\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc3|b~combout\ = ( \mt2|S[2]~0_combout\ & ( !\mt2|S[0]~1_combout\ $ (\mt2|S[1]~2_combout\) ) ) # ( !\mt2|S[2]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt2|ALT_INV_S[0]~1_combout\,
	datac => \mt2|ALT_INV_S[1]~2_combout\,
	dataf => \mt2|ALT_INV_S[2]~0_combout\,
	combout => \dc3|b~combout\);

-- Location: LABCELL_X56_Y4_N0
\dc3|c\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc3|c~combout\ = ( \mt2|S[2]~0_combout\ ) # ( !\mt2|S[2]~0_combout\ & ( (!\mt2|S[1]~2_combout\) # (\mt2|S[0]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mt2|ALT_INV_S[1]~2_combout\,
	datac => \mt2|ALT_INV_S[0]~1_combout\,
	dataf => \mt2|ALT_INV_S[2]~0_combout\,
	combout => \dc3|c~combout\);

-- Location: LABCELL_X56_Y4_N33
\dc3|d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc3|d~0_combout\ = ( \mt2|S[2]~0_combout\ & ( !\mt2|S[0]~1_combout\ $ (!\mt2|S[1]~2_combout\) ) ) # ( !\mt2|S[2]~0_combout\ & ( (!\mt2|S[0]~1_combout\) # (\mt2|S[1]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt2|ALT_INV_S[0]~1_combout\,
	datac => \mt2|ALT_INV_S[1]~2_combout\,
	dataf => \mt2|ALT_INV_S[2]~0_combout\,
	combout => \dc3|d~0_combout\);

-- Location: LABCELL_X56_Y4_N12
\dc3|e~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc3|e~0_combout\ = ( \mt2|S[2]~0_combout\ & ( (\mt2|S[1]~2_combout\ & !\mt2|S[0]~1_combout\) ) ) # ( !\mt2|S[2]~0_combout\ & ( !\mt2|S[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mt2|ALT_INV_S[1]~2_combout\,
	datac => \mt2|ALT_INV_S[0]~1_combout\,
	dataf => \mt2|ALT_INV_S[2]~0_combout\,
	combout => \dc3|e~0_combout\);

-- Location: LABCELL_X56_Y4_N45
\dc3|f~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc3|f~0_combout\ = ( \dc3|g~0_combout\ & ( \mt2|S[0]~1_combout\ & ( (\mt2|S[2]~0_combout\ & !\mt2|S[1]~2_combout\) ) ) ) # ( !\dc3|g~0_combout\ & ( \mt2|S[0]~1_combout\ ) ) # ( \dc3|g~0_combout\ & ( !\mt2|S[0]~1_combout\ & ( (!\mt2|S[1]~2_combout\) # 
-- (\mt2|S[2]~0_combout\) ) ) ) # ( !\dc3|g~0_combout\ & ( !\mt2|S[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111100111111001111111111111111110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mt2|ALT_INV_S[2]~0_combout\,
	datac => \mt2|ALT_INV_S[1]~2_combout\,
	datae => \dc3|ALT_INV_g~0_combout\,
	dataf => \mt2|ALT_INV_S[0]~1_combout\,
	combout => \dc3|f~0_combout\);

-- Location: LABCELL_X56_Y4_N39
\dc3|g~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc3|g~1_combout\ = ( \dc3|g~0_combout\ & ( \mt2|S[0]~1_combout\ & ( !\mt2|S[2]~0_combout\ $ (!\mt2|S[1]~2_combout\) ) ) ) # ( !\dc3|g~0_combout\ & ( \mt2|S[0]~1_combout\ ) ) # ( \dc3|g~0_combout\ & ( !\mt2|S[0]~1_combout\ & ( (\mt2|S[1]~2_combout\) # 
-- (\mt2|S[2]~0_combout\) ) ) ) # ( !\dc3|g~0_combout\ & ( !\mt2|S[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001111110011111111111111111111110011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mt2|ALT_INV_S[2]~0_combout\,
	datac => \mt2|ALT_INV_S[1]~2_combout\,
	datae => \dc3|ALT_INV_g~0_combout\,
	dataf => \mt2|ALT_INV_S[0]~1_combout\,
	combout => \dc3|g~1_combout\);

-- Location: LABCELL_X55_Y1_N51
\ce|C[6]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ce|C[6]~12_combout\ = ( \sel~input_o\ & ( !\tc[0]~input_o\ & ( !\tc[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_tc[1]~input_o\,
	datae => \ALT_INV_sel~input_o\,
	dataf => \ALT_INV_tc[0]~input_o\,
	combout => \ce|C[6]~12_combout\);

-- Location: LABCELL_X55_Y1_N3
\ce|C[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ce|C\(6) = ( \ce|C\(6) & ( (!\RC~input_o\) # (\ce|C[6]~12_combout\) ) ) # ( !\ce|C\(6) & ( (\ce|C[6]~12_combout\ & \RC~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ce|ALT_INV_C[6]~12_combout\,
	datad => \ALT_INV_RC~input_o\,
	dataf => \ce|ALT_INV_C\(6),
	combout => \ce|C\(6));

-- Location: FF_X55_Y1_N32
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
	ena => \ce|C\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|q\(1));

-- Location: LABCELL_X56_Y1_N6
\mt1|S[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mt1|S[1]~2_combout\ = (!\sel~input_o\ & (\c1|q\(1))) # (\sel~input_o\ & ((\r1|q\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel~input_o\,
	datac => \c1|ALT_INV_q\(1),
	datad => \r1|ALT_INV_q\(1),
	combout => \mt1|S[1]~2_combout\);

-- Location: FF_X55_Y1_N2
\r1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dm|d1|s1~0_combout\,
	sclr => \ALT_INV_sel~input_o\,
	ena => \ce|C\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|q\(3));

-- Location: LABCELL_X56_Y4_N3
\dc4|g~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc4|g~0_combout\ = ( \r1|q\(3) & ( (!\sel~input_o\ & !\c1|q\(3)) ) ) # ( !\r1|q\(3) & ( (!\c1|q\(3)) # (\sel~input_o\) ) )

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
	combout => \dc4|g~0_combout\);

-- Location: FF_X55_Y1_N47
\r1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \dm|d4|s1~0_combout\,
	sclr => \ALT_INV_sel~input_o\,
	ena => \ce|C\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|q\(0));

-- Location: LABCELL_X56_Y1_N48
\mt1|S[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mt1|S[0]~1_combout\ = (!\sel~input_o\ & (\c1|q\(0))) # (\sel~input_o\ & ((\r1|q\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel~input_o\,
	datac => \c1|ALT_INV_q\(0),
	datad => \r1|ALT_INV_q\(0),
	combout => \mt1|S[0]~1_combout\);

-- Location: FF_X55_Y1_N41
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
	ena => \ce|C\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|q\(2));

-- Location: LABCELL_X56_Y1_N42
\mt1|S[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mt1|S[2]~0_combout\ = ( \sel~input_o\ & ( \c1|q\(2) & ( \r1|q\(2) ) ) ) # ( !\sel~input_o\ & ( \c1|q\(2) ) ) # ( \sel~input_o\ & ( !\c1|q\(2) & ( \r1|q\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \r1|ALT_INV_q\(2),
	datae => \ALT_INV_sel~input_o\,
	dataf => \c1|ALT_INV_q\(2),
	combout => \mt1|S[2]~0_combout\);

-- Location: LABCELL_X57_Y4_N27
\dc4|a\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc4|a~combout\ = ( \mt1|S[2]~0_combout\ & ( ((!\dc4|g~0_combout\) # (\mt1|S[0]~1_combout\)) # (\mt1|S[1]~2_combout\) ) ) # ( !\mt1|S[2]~0_combout\ & ( ((!\dc4|g~0_combout\) # (!\mt1|S[0]~1_combout\)) # (\mt1|S[1]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111011101111111111101110111011101111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt1|ALT_INV_S[1]~2_combout\,
	datab => \dc4|ALT_INV_g~0_combout\,
	datad => \mt1|ALT_INV_S[0]~1_combout\,
	dataf => \mt1|ALT_INV_S[2]~0_combout\,
	combout => \dc4|a~combout\);

-- Location: LABCELL_X57_Y4_N33
\dc4|b\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc4|b~combout\ = ( \mt1|S[2]~0_combout\ & ( !\mt1|S[1]~2_combout\ $ (\mt1|S[0]~1_combout\) ) ) # ( !\mt1|S[2]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt1|ALT_INV_S[1]~2_combout\,
	datad => \mt1|ALT_INV_S[0]~1_combout\,
	dataf => \mt1|ALT_INV_S[2]~0_combout\,
	combout => \dc4|b~combout\);

-- Location: LABCELL_X57_Y4_N15
\dc4|c\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc4|c~combout\ = ( \mt1|S[2]~0_combout\ ) # ( !\mt1|S[2]~0_combout\ & ( (!\mt1|S[1]~2_combout\) # (\mt1|S[0]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt1|ALT_INV_S[1]~2_combout\,
	datad => \mt1|ALT_INV_S[0]~1_combout\,
	dataf => \mt1|ALT_INV_S[2]~0_combout\,
	combout => \dc4|c~combout\);

-- Location: LABCELL_X57_Y4_N18
\dc4|d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc4|d~0_combout\ = ( \mt1|S[2]~0_combout\ & ( !\mt1|S[0]~1_combout\ $ (!\mt1|S[1]~2_combout\) ) ) # ( !\mt1|S[2]~0_combout\ & ( (!\mt1|S[0]~1_combout\) # (\mt1|S[1]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt1|ALT_INV_S[0]~1_combout\,
	datac => \mt1|ALT_INV_S[1]~2_combout\,
	dataf => \mt1|ALT_INV_S[2]~0_combout\,
	combout => \dc4|d~0_combout\);

-- Location: LABCELL_X57_Y4_N36
\dc4|e~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc4|e~0_combout\ = ( \mt1|S[2]~0_combout\ & ( (!\mt1|S[0]~1_combout\ & \mt1|S[1]~2_combout\) ) ) # ( !\mt1|S[2]~0_combout\ & ( !\mt1|S[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt1|ALT_INV_S[0]~1_combout\,
	datac => \mt1|ALT_INV_S[1]~2_combout\,
	dataf => \mt1|ALT_INV_S[2]~0_combout\,
	combout => \dc4|e~0_combout\);

-- Location: LABCELL_X57_Y4_N54
\dc4|f~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc4|f~0_combout\ = ( \mt1|S[1]~2_combout\ & ( \dc4|g~0_combout\ & ( (!\mt1|S[0]~1_combout\ & \mt1|S[2]~0_combout\) ) ) ) # ( !\mt1|S[1]~2_combout\ & ( \dc4|g~0_combout\ & ( (!\mt1|S[0]~1_combout\) # (\mt1|S[2]~0_combout\) ) ) ) # ( \mt1|S[1]~2_combout\ & 
-- ( !\dc4|g~0_combout\ ) ) # ( !\mt1|S[1]~2_combout\ & ( !\dc4|g~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101111101011110000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt1|ALT_INV_S[0]~1_combout\,
	datac => \mt1|ALT_INV_S[2]~0_combout\,
	datae => \mt1|ALT_INV_S[1]~2_combout\,
	dataf => \dc4|ALT_INV_g~0_combout\,
	combout => \dc4|f~0_combout\);

-- Location: LABCELL_X57_Y4_N51
\dc4|g~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc4|g~1_combout\ = ( \mt1|S[2]~0_combout\ & ( (!\mt1|S[1]~2_combout\) # ((!\dc4|g~0_combout\) # (!\mt1|S[0]~1_combout\)) ) ) # ( !\mt1|S[2]~0_combout\ & ( (!\dc4|g~0_combout\) # (\mt1|S[1]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111111111111011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mt1|ALT_INV_S[1]~2_combout\,
	datab => \dc4|ALT_INV_g~0_combout\,
	datad => \mt1|ALT_INV_S[0]~1_combout\,
	dataf => \mt1|ALT_INV_S[2]~0_combout\,
	combout => \dc4|g~1_combout\);

-- Location: LABCELL_X56_Y3_N42
\comp|S~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|S~4_combout\ = ( \r4|q\(0) & ( \c4|q\(2) & ( (\r4|q\(2) & (\c4|q\(0) & (!\r4|q\(1) $ (\c4|q\(1))))) ) ) ) # ( !\r4|q\(0) & ( \c4|q\(2) & ( (\r4|q\(2) & (!\c4|q\(0) & (!\r4|q\(1) $ (\c4|q\(1))))) ) ) ) # ( \r4|q\(0) & ( !\c4|q\(2) & ( (!\r4|q\(2) & 
-- (\c4|q\(0) & (!\r4|q\(1) $ (\c4|q\(1))))) ) ) ) # ( !\r4|q\(0) & ( !\c4|q\(2) & ( (!\r4|q\(2) & (!\c4|q\(0) & (!\r4|q\(1) $ (\c4|q\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000000001001000000001001000000000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r4|ALT_INV_q\(1),
	datab => \c4|ALT_INV_q\(1),
	datac => \r4|ALT_INV_q\(2),
	datad => \c4|ALT_INV_q\(0),
	datae => \r4|ALT_INV_q\(0),
	dataf => \c4|ALT_INV_q\(2),
	combout => \comp|S~4_combout\);

-- Location: LABCELL_X56_Y1_N18
\comp|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|S~0_combout\ = ( \r1|q\(1) & ( \c1|q\(0) & ( (\r1|q\(0) & (\c1|q\(1) & (!\c1|q\(2) $ (\r1|q\(2))))) ) ) ) # ( !\r1|q\(1) & ( \c1|q\(0) & ( (\r1|q\(0) & (!\c1|q\(1) & (!\c1|q\(2) $ (\r1|q\(2))))) ) ) ) # ( \r1|q\(1) & ( !\c1|q\(0) & ( (!\r1|q\(0) & 
-- (\c1|q\(1) & (!\c1|q\(2) $ (\r1|q\(2))))) ) ) ) # ( !\r1|q\(1) & ( !\c1|q\(0) & ( (!\r1|q\(0) & (!\c1|q\(1) & (!\c1|q\(2) $ (\r1|q\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000000010000000010000100000000100000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_q\(2),
	datab => \r1|ALT_INV_q\(0),
	datac => \c1|ALT_INV_q\(1),
	datad => \r1|ALT_INV_q\(2),
	datae => \r1|ALT_INV_q\(1),
	dataf => \c1|ALT_INV_q\(0),
	combout => \comp|S~0_combout\);

-- Location: LABCELL_X57_Y3_N24
\comp|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|Equal3~0_combout\ = ( \c4|q\(3) & ( !\r4|q\(3) ) ) # ( !\c4|q\(3) & ( \r4|q\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \r4|ALT_INV_q\(3),
	dataf => \c4|ALT_INV_q\(3),
	combout => \comp|Equal3~0_combout\);

-- Location: LABCELL_X57_Y3_N42
\comp|S~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|S~2_combout\ = ( \c2|q\(3) & ( \c3|q\(0) & ( (\r2|q\(3) & (\r3|q\(0) & (!\c2|q\(2) $ (\r2|q\(2))))) ) ) ) # ( !\c2|q\(3) & ( \c3|q\(0) & ( (!\r2|q\(3) & (\r3|q\(0) & (!\c2|q\(2) $ (\r2|q\(2))))) ) ) ) # ( \c2|q\(3) & ( !\c3|q\(0) & ( (\r2|q\(3) & 
-- (!\r3|q\(0) & (!\c2|q\(2) $ (\r2|q\(2))))) ) ) ) # ( !\c2|q\(3) & ( !\c3|q\(0) & ( (!\r2|q\(3) & (!\r3|q\(0) & (!\c2|q\(2) $ (\r2|q\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r2|ALT_INV_q\(3),
	datab => \c2|ALT_INV_q\(2),
	datac => \r3|ALT_INV_q\(0),
	datad => \r2|ALT_INV_q\(2),
	datae => \c2|ALT_INV_q\(3),
	dataf => \c3|ALT_INV_q\(0),
	combout => \comp|S~2_combout\);

-- Location: LABCELL_X56_Y4_N18
\comp|S~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|S~1_combout\ = ( \r2|q\(0) & ( \r2|q\(1) & ( (\c2|q\(0) & (\c2|q\(1) & (!\r1|q\(3) $ (\c1|q\(3))))) ) ) ) # ( !\r2|q\(0) & ( \r2|q\(1) & ( (!\c2|q\(0) & (\c2|q\(1) & (!\r1|q\(3) $ (\c1|q\(3))))) ) ) ) # ( \r2|q\(0) & ( !\r2|q\(1) & ( (\c2|q\(0) & 
-- (!\c2|q\(1) & (!\r1|q\(3) $ (\c1|q\(3))))) ) ) ) # ( !\r2|q\(0) & ( !\r2|q\(1) & ( (!\c2|q\(0) & (!\c2|q\(1) & (!\r1|q\(3) $ (\c1|q\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c2|ALT_INV_q\(0),
	datab => \r1|ALT_INV_q\(3),
	datac => \c2|ALT_INV_q\(1),
	datad => \c1|ALT_INV_q\(3),
	datae => \r2|ALT_INV_q\(0),
	dataf => \r2|ALT_INV_q\(1),
	combout => \comp|S~1_combout\);

-- Location: LABCELL_X57_Y3_N48
\comp|S~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|S~3_combout\ = ( \c3|q\(2) & ( \c3|q\(1) & ( (\r3|q\(1) & (\r3|q\(2) & (!\r3|q\(3) $ (\c3|q\(3))))) ) ) ) # ( !\c3|q\(2) & ( \c3|q\(1) & ( (\r3|q\(1) & (!\r3|q\(2) & (!\r3|q\(3) $ (\c3|q\(3))))) ) ) ) # ( \c3|q\(2) & ( !\c3|q\(1) & ( (!\r3|q\(1) & 
-- (\r3|q\(2) & (!\r3|q\(3) $ (\c3|q\(3))))) ) ) ) # ( !\c3|q\(2) & ( !\c3|q\(1) & ( (!\r3|q\(1) & (!\r3|q\(2) & (!\r3|q\(3) $ (\c3|q\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000000010000000001001000000000100000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r3|ALT_INV_q\(1),
	datab => \r3|ALT_INV_q\(3),
	datac => \r3|ALT_INV_q\(2),
	datad => \c3|ALT_INV_q\(3),
	datae => \c3|ALT_INV_q\(2),
	dataf => \c3|ALT_INV_q\(1),
	combout => \comp|S~3_combout\);

-- Location: LABCELL_X57_Y3_N12
\comp|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp|S~combout\ = ( \comp|S~1_combout\ & ( \comp|S~3_combout\ & ( (\comp|S~4_combout\ & (\comp|S~0_combout\ & (!\comp|Equal3~0_combout\ & \comp|S~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp|ALT_INV_S~4_combout\,
	datab => \comp|ALT_INV_S~0_combout\,
	datac => \comp|ALT_INV_Equal3~0_combout\,
	datad => \comp|ALT_INV_S~2_combout\,
	datae => \comp|ALT_INV_S~1_combout\,
	dataf => \comp|ALT_INV_S~3_combout\,
	combout => \comp|S~combout\);

-- Location: IOIBUF_X80_Y81_N18
\teclas[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(0),
	o => \teclas[0]~input_o\);

-- Location: LABCELL_X48_Y63_N0
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


