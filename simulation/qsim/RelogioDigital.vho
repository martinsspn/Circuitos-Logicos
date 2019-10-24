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

-- DATE "10/24/2019 05:04:26"

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
	load : IN std_logic;
	enable : IN std_logic;
	H1 : BUFFER std_logic_vector(6 DOWNTO 0);
	H0 : BUFFER std_logic_vector(6 DOWNTO 0);
	M1 : BUFFER std_logic_vector(6 DOWNTO 0);
	M0 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END RelogioDigital;

-- Design Ports Information
-- teclas[0]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1[0]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1[1]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1[3]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1[4]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1[5]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1[6]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H0[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H0[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H0[2]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H0[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H0[4]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H0[5]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H0[6]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[0]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[1]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[2]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[3]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[4]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[5]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[6]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M0[0]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M0[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M0[2]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M0[3]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M0[4]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M0[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M0[6]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tc[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tc[0]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclas[1]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclas[5]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclas[9]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclas[3]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclas[7]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclas[4]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclas[6]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclas[8]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclas[2]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_load : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_H1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_H0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_M1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_M0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \teclas[0]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \teclas[3]~input_o\ : std_logic;
SIGNAL \teclas[7]~input_o\ : std_logic;
SIGNAL \teclas[2]~input_o\ : std_logic;
SIGNAL \teclas[6]~input_o\ : std_logic;
SIGNAL \ct|s3~combout\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \tc[1]~input_o\ : std_logic;
SIGNAL \tc[0]~input_o\ : std_logic;
SIGNAL \c1|q~0_combout\ : std_logic;
SIGNAL \teclas[5]~input_o\ : std_logic;
SIGNAL \teclas[1]~input_o\ : std_logic;
SIGNAL \teclas[9]~input_o\ : std_logic;
SIGNAL \ct|s4~combout\ : std_logic;
SIGNAL \c1|q~1_combout\ : std_logic;
SIGNAL \teclas[4]~input_o\ : std_logic;
SIGNAL \ct|s2~combout\ : std_logic;
SIGNAL \c1|q~2_combout\ : std_logic;
SIGNAL \sel~input_o\ : std_logic;
SIGNAL \c3|q[3]~0_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \teclas[8]~input_o\ : std_logic;
SIGNAL \c1|q~5_combout\ : std_logic;
SIGNAL \c1|q~3_combout\ : std_logic;
SIGNAL \ctrl|Equal0~0_combout\ : std_logic;
SIGNAL \c1|q~4_combout\ : std_logic;
SIGNAL \dc1|a~combout\ : std_logic;
SIGNAL \dc1|b~combout\ : std_logic;
SIGNAL \dc1|c~combout\ : std_logic;
SIGNAL \dc1|d~0_combout\ : std_logic;
SIGNAL \dc1|e~0_combout\ : std_logic;
SIGNAL \dc1|f~0_combout\ : std_logic;
SIGNAL \dc1|g~0_combout\ : std_logic;
SIGNAL \c2|q~0_combout\ : std_logic;
SIGNAL \c2|q~1_combout\ : std_logic;
SIGNAL \c2|q~5_combout\ : std_logic;
SIGNAL \c2|q~2_combout\ : std_logic;
SIGNAL \c2|q~4_combout\ : std_logic;
SIGNAL \ctrl|e[2]~0_combout\ : std_logic;
SIGNAL \dc2|a~0_combout\ : std_logic;
SIGNAL \c2|q~3_combout\ : std_logic;
SIGNAL \dc2|a~combout\ : std_logic;
SIGNAL \dc2|b~combout\ : std_logic;
SIGNAL \dc2|c~combout\ : std_logic;
SIGNAL \dc2|d~0_combout\ : std_logic;
SIGNAL \dc2|e~0_combout\ : std_logic;
SIGNAL \dc2|f~0_combout\ : std_logic;
SIGNAL \dc2|g~0_combout\ : std_logic;
SIGNAL \c3|q~1_combout\ : std_logic;
SIGNAL \c3|q~2_combout\ : std_logic;
SIGNAL \c3|q~5_combout\ : std_logic;
SIGNAL \c3|q~3_combout\ : std_logic;
SIGNAL \c3|q~6_combout\ : std_logic;
SIGNAL \c3|q~4_combout\ : std_logic;
SIGNAL \ctrl|e[1]~2_combout\ : std_logic;
SIGNAL \c4|q~0_combout\ : std_logic;
SIGNAL \c4|q~1_combout\ : std_logic;
SIGNAL \c4|q~3_combout\ : std_logic;
SIGNAL \c4|q~5_combout\ : std_logic;
SIGNAL \c4|q~4_combout\ : std_logic;
SIGNAL \ctrl|e[0]~4_combout\ : std_logic;
SIGNAL \c4|q~2_combout\ : std_logic;
SIGNAL \ctrl|e[1]~1_combout\ : std_logic;
SIGNAL \ctrl|e[1]~3_combout\ : std_logic;
SIGNAL \dc3|a~combout\ : std_logic;
SIGNAL \dc3|b~combout\ : std_logic;
SIGNAL \dc3|c~combout\ : std_logic;
SIGNAL \dc3|d~0_combout\ : std_logic;
SIGNAL \dc3|e~0_combout\ : std_logic;
SIGNAL \dc3|f~0_combout\ : std_logic;
SIGNAL \dc3|g~0_combout\ : std_logic;
SIGNAL \dc4|a~combout\ : std_logic;
SIGNAL \dc4|b~combout\ : std_logic;
SIGNAL \dc4|c~0_combout\ : std_logic;
SIGNAL \dc4|d~0_combout\ : std_logic;
SIGNAL \dc4|e~0_combout\ : std_logic;
SIGNAL \dc4|f~0_combout\ : std_logic;
SIGNAL \dc4|g~0_combout\ : std_logic;
SIGNAL \c4|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c3|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ctrl|e\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c2|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c1|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_teclas[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclas[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclas[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclas[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel~input_o\ : std_logic;
SIGNAL \ALT_INV_teclas[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclas[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclas[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclas[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_teclas[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_tc[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_tc[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_load~input_o\ : std_logic;
SIGNAL \c4|ALT_INV_q~5_combout\ : std_logic;
SIGNAL \c3|ALT_INV_q~6_combout\ : std_logic;
SIGNAL \c2|ALT_INV_q~5_combout\ : std_logic;
SIGNAL \c1|ALT_INV_q~5_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_e\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ctrl|ALT_INV_e[0]~4_combout\ : std_logic;
SIGNAL \c4|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_e[1]~3_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_e[1]~2_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_e[1]~1_combout\ : std_logic;
SIGNAL \c3|ALT_INV_q~1_combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_e[2]~0_combout\ : std_logic;
SIGNAL \dc2|ALT_INV_a~0_combout\ : std_logic;
SIGNAL \c2|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \ct|ALT_INV_s3~combout\ : std_logic;
SIGNAL \ct|ALT_INV_s2~combout\ : std_logic;
SIGNAL \ctrl|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ct|ALT_INV_s4~combout\ : std_logic;
SIGNAL \c1|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \dc4|ALT_INV_c~0_combout\ : std_logic;
SIGNAL \c4|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c3|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c2|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c1|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_teclas <= teclas;
ww_tc <= tc;
ww_sel <= sel;
ww_clock <= clock;
ww_load <= load;
ww_enable <= enable;
H1 <= ww_H1;
H0 <= ww_H0;
M1 <= ww_M1;
M0 <= ww_M0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_teclas[2]~input_o\ <= NOT \teclas[2]~input_o\;
\ALT_INV_teclas[8]~input_o\ <= NOT \teclas[8]~input_o\;
\ALT_INV_teclas[6]~input_o\ <= NOT \teclas[6]~input_o\;
\ALT_INV_teclas[4]~input_o\ <= NOT \teclas[4]~input_o\;
\ALT_INV_sel~input_o\ <= NOT \sel~input_o\;
\ALT_INV_teclas[7]~input_o\ <= NOT \teclas[7]~input_o\;
\ALT_INV_teclas[3]~input_o\ <= NOT \teclas[3]~input_o\;
\ALT_INV_teclas[9]~input_o\ <= NOT \teclas[9]~input_o\;
\ALT_INV_teclas[5]~input_o\ <= NOT \teclas[5]~input_o\;
\ALT_INV_teclas[1]~input_o\ <= NOT \teclas[1]~input_o\;
\ALT_INV_tc[0]~input_o\ <= NOT \tc[0]~input_o\;
\ALT_INV_tc[1]~input_o\ <= NOT \tc[1]~input_o\;
\ALT_INV_load~input_o\ <= NOT \load~input_o\;
\c4|ALT_INV_q~5_combout\ <= NOT \c4|q~5_combout\;
\c3|ALT_INV_q~6_combout\ <= NOT \c3|q~6_combout\;
\c2|ALT_INV_q~5_combout\ <= NOT \c2|q~5_combout\;
\c1|ALT_INV_q~5_combout\ <= NOT \c1|q~5_combout\;
\ctrl|ALT_INV_e\(0) <= NOT \ctrl|e\(0);
\ctrl|ALT_INV_e[0]~4_combout\ <= NOT \ctrl|e[0]~4_combout\;
\c4|ALT_INV_q~0_combout\ <= NOT \c4|q~0_combout\;
\ctrl|ALT_INV_e[1]~3_combout\ <= NOT \ctrl|e[1]~3_combout\;
\ctrl|ALT_INV_e[1]~2_combout\ <= NOT \ctrl|e[1]~2_combout\;
\ctrl|ALT_INV_e[1]~1_combout\ <= NOT \ctrl|e[1]~1_combout\;
\c3|ALT_INV_q~1_combout\ <= NOT \c3|q~1_combout\;
\ctrl|ALT_INV_e\(2) <= NOT \ctrl|e\(2);
\ctrl|ALT_INV_e[2]~0_combout\ <= NOT \ctrl|e[2]~0_combout\;
\dc2|ALT_INV_a~0_combout\ <= NOT \dc2|a~0_combout\;
\c2|ALT_INV_q~0_combout\ <= NOT \c2|q~0_combout\;
\ct|ALT_INV_s3~combout\ <= NOT \ct|s3~combout\;
\ct|ALT_INV_s2~combout\ <= NOT \ct|s2~combout\;
\ctrl|ALT_INV_Equal0~0_combout\ <= NOT \ctrl|Equal0~0_combout\;
\ct|ALT_INV_s4~combout\ <= NOT \ct|s4~combout\;
\c1|ALT_INV_q~0_combout\ <= NOT \c1|q~0_combout\;
\dc4|ALT_INV_c~0_combout\ <= NOT \dc4|c~0_combout\;
\c4|ALT_INV_q\(3) <= NOT \c4|q\(3);
\c4|ALT_INV_q\(1) <= NOT \c4|q\(1);
\c4|ALT_INV_q\(2) <= NOT \c4|q\(2);
\c4|ALT_INV_q\(0) <= NOT \c4|q\(0);
\c3|ALT_INV_q\(1) <= NOT \c3|q\(1);
\c3|ALT_INV_q\(3) <= NOT \c3|q\(3);
\c3|ALT_INV_q\(2) <= NOT \c3|q\(2);
\c3|ALT_INV_q\(0) <= NOT \c3|q\(0);
\c2|ALT_INV_q\(3) <= NOT \c2|q\(3);
\c2|ALT_INV_q\(1) <= NOT \c2|q\(1);
\c2|ALT_INV_q\(2) <= NOT \c2|q\(2);
\c2|ALT_INV_q\(0) <= NOT \c2|q\(0);
\c1|ALT_INV_q\(1) <= NOT \c1|q\(1);
\c1|ALT_INV_q\(3) <= NOT \c1|q\(3);
\c1|ALT_INV_q\(2) <= NOT \c1|q\(2);
\c1|ALT_INV_q\(0) <= NOT \c1|q\(0);

-- Location: IOOBUF_X64_Y0_N36
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

-- Location: IOOBUF_X60_Y0_N19
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

-- Location: IOOBUF_X62_Y0_N53
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

-- Location: IOOBUF_X60_Y0_N2
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

-- Location: IOOBUF_X60_Y0_N53
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

-- Location: IOOBUF_X62_Y0_N36
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

-- Location: IOOBUF_X62_Y0_N19
\H1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc1|g~0_combout\,
	devoe => ww_devoe,
	o => ww_H1(6));

-- Location: IOOBUF_X64_Y0_N19
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

-- Location: IOOBUF_X68_Y0_N36
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

-- Location: IOOBUF_X66_Y0_N93
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

-- Location: IOOBUF_X66_Y0_N76
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

-- Location: IOOBUF_X72_Y0_N19
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

-- Location: IOOBUF_X66_Y0_N42
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

-- Location: IOOBUF_X68_Y0_N53
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

-- Location: IOOBUF_X89_Y4_N79
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

-- Location: IOOBUF_X89_Y4_N96
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

-- Location: IOOBUF_X66_Y0_N59
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

-- Location: IOOBUF_X89_Y6_N22
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

-- Location: IOOBUF_X72_Y0_N53
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

-- Location: IOOBUF_X89_Y4_N62
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

-- Location: IOOBUF_X89_Y4_N45
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

-- Location: IOOBUF_X56_Y0_N2
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

-- Location: IOOBUF_X58_Y0_N93
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

-- Location: IOOBUF_X58_Y0_N59
\M0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc4|ALT_INV_c~0_combout\,
	devoe => ww_devoe,
	o => ww_M0(2));

-- Location: IOOBUF_X64_Y0_N2
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

-- Location: IOOBUF_X58_Y0_N76
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

-- Location: IOOBUF_X62_Y0_N2
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

-- Location: IOOBUF_X60_Y0_N36
\M0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dc4|g~0_combout\,
	devoe => ww_devoe,
	o => ww_M0(6));

-- Location: IOIBUF_X89_Y35_N61
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
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

-- Location: IOIBUF_X89_Y6_N38
\teclas[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(3),
	o => \teclas[3]~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\teclas[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(7),
	o => \teclas[7]~input_o\);

-- Location: IOIBUF_X89_Y6_N4
\teclas[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(2),
	o => \teclas[2]~input_o\);

-- Location: IOIBUF_X89_Y8_N21
\teclas[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(6),
	o => \teclas[6]~input_o\);

-- Location: LABCELL_X73_Y2_N27
\ct|s3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ct|s3~combout\ = ( !\teclas[6]~input_o\ & ( (!\teclas[3]~input_o\ & (!\teclas[7]~input_o\ & !\teclas[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclas[3]~input_o\,
	datab => \ALT_INV_teclas[7]~input_o\,
	datac => \ALT_INV_teclas[2]~input_o\,
	dataf => \ALT_INV_teclas[6]~input_o\,
	combout => \ct|s3~combout\);

-- Location: IOIBUF_X70_Y0_N35
\load~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\tc[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tc(1),
	o => \tc[1]~input_o\);

-- Location: IOIBUF_X70_Y0_N52
\tc[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tc(0),
	o => \tc[0]~input_o\);

-- Location: LABCELL_X73_Y2_N54
\c1|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|q~0_combout\ = ( \load~input_o\ & ( (!\tc[1]~input_o\ & !\tc[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_tc[1]~input_o\,
	datad => \ALT_INV_tc[0]~input_o\,
	dataf => \ALT_INV_load~input_o\,
	combout => \c1|q~0_combout\);

-- Location: IOIBUF_X68_Y0_N1
\teclas[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(5),
	o => \teclas[5]~input_o\);

-- Location: IOIBUF_X89_Y6_N55
\teclas[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(1),
	o => \teclas[1]~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\teclas[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(9),
	o => \teclas[9]~input_o\);

-- Location: LABCELL_X73_Y2_N24
\ct|s4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ct|s4~combout\ = ( !\teclas[9]~input_o\ & ( (!\teclas[3]~input_o\ & (!\teclas[7]~input_o\ & (!\teclas[5]~input_o\ & !\teclas[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclas[3]~input_o\,
	datab => \ALT_INV_teclas[7]~input_o\,
	datac => \ALT_INV_teclas[5]~input_o\,
	datad => \ALT_INV_teclas[1]~input_o\,
	dataf => \ALT_INV_teclas[9]~input_o\,
	combout => \ct|s4~combout\);

-- Location: MLABCELL_X72_Y2_N54
\c1|q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|q~1_combout\ = ( \ct|s4~combout\ & ( (!\load~input_o\ & !\c1|q\(0)) ) ) # ( !\ct|s4~combout\ & ( ((!\load~input_o\ & !\c1|q\(0))) # (\c1|q~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100110011111100110011001111110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_q~0_combout\,
	datac => \ALT_INV_load~input_o\,
	datad => \c1|ALT_INV_q\(0),
	dataf => \ct|ALT_INV_s4~combout\,
	combout => \c1|q~1_combout\);

-- Location: IOIBUF_X68_Y0_N18
\teclas[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(4),
	o => \teclas[4]~input_o\);

-- Location: LABCELL_X73_Y2_N57
\ct|s2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ct|s2~combout\ = ( !\teclas[6]~input_o\ & ( (!\teclas[5]~input_o\ & (!\teclas[7]~input_o\ & !\teclas[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclas[5]~input_o\,
	datac => \ALT_INV_teclas[7]~input_o\,
	datad => \ALT_INV_teclas[4]~input_o\,
	dataf => \ALT_INV_teclas[6]~input_o\,
	combout => \ct|s2~combout\);

-- Location: MLABCELL_X72_Y2_N48
\c1|q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|q~2_combout\ = ( \c1|q\(2) & ( \c1|q\(0) & ( (!\ct|s2~combout\ & (((!\c1|q\(1) & !\load~input_o\)) # (\c1|q~0_combout\))) # (\ct|s2~combout\ & (((!\c1|q\(1) & !\load~input_o\)))) ) ) ) # ( !\c1|q\(2) & ( \c1|q\(0) & ( (!\ct|s2~combout\ & (((\c1|q\(1) 
-- & !\load~input_o\)) # (\c1|q~0_combout\))) # (\ct|s2~combout\ & (((\c1|q\(1) & !\load~input_o\)))) ) ) ) # ( \c1|q\(2) & ( !\c1|q\(0) & ( (!\load~input_o\) # ((!\ct|s2~combout\ & \c1|q~0_combout\)) ) ) ) # ( !\c1|q\(2) & ( !\c1|q\(0) & ( (!\ct|s2~combout\ 
-- & \c1|q~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010111111110010001000101111001000101111001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ct|ALT_INV_s2~combout\,
	datab => \c1|ALT_INV_q~0_combout\,
	datac => \c1|ALT_INV_q\(1),
	datad => \ALT_INV_load~input_o\,
	datae => \c1|ALT_INV_q\(2),
	dataf => \c1|ALT_INV_q\(0),
	combout => \c1|q~2_combout\);

-- Location: IOIBUF_X72_Y0_N1
\sel~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel,
	o => \sel~input_o\);

-- Location: LABCELL_X73_Y2_N33
\c3|q[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c3|q[3]~0_combout\ = ( \sel~input_o\ & ( \load~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load~input_o\,
	dataf => \ALT_INV_sel~input_o\,
	combout => \c3|q[3]~0_combout\);

-- Location: IOIBUF_X72_Y0_N35
\enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: FF_X72_Y2_N50
\c1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c1|q~2_combout\,
	clrn => \ctrl|ALT_INV_Equal0~0_combout\,
	sclr => \c3|q[3]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|q\(2));

-- Location: IOIBUF_X64_Y0_N52
\teclas[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(8),
	o => \teclas[8]~input_o\);

-- Location: LABCELL_X71_Y2_N18
\c1|q~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|q~5_combout\ = ( !\tc[1]~input_o\ & ( (!\tc[0]~input_o\ & ((\teclas[8]~input_o\) # (\teclas[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001010100010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tc[0]~input_o\,
	datab => \ALT_INV_teclas[9]~input_o\,
	datac => \ALT_INV_teclas[8]~input_o\,
	dataf => \ALT_INV_tc[1]~input_o\,
	combout => \c1|q~5_combout\);

-- Location: MLABCELL_X72_Y2_N18
\c1|q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|q~3_combout\ = ( \c1|q\(3) & ( \c1|q\(1) & ( (!\load~input_o\ & ((!\c1|q\(2)) # ((!\c1|q\(0))))) # (\load~input_o\ & (((\c1|q~5_combout\)))) ) ) ) # ( !\c1|q\(3) & ( \c1|q\(1) & ( (!\load~input_o\ & (\c1|q\(2) & (\c1|q\(0)))) # (\load~input_o\ & 
-- (((\c1|q~5_combout\)))) ) ) ) # ( \c1|q\(3) & ( !\c1|q\(1) & ( (!\load~input_o\) # (\c1|q~5_combout\) ) ) ) # ( !\c1|q\(3) & ( !\c1|q\(1) & ( (\load~input_o\ & \c1|q~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111100000100001101111100100011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_q\(2),
	datab => \ALT_INV_load~input_o\,
	datac => \c1|ALT_INV_q\(0),
	datad => \c1|ALT_INV_q~5_combout\,
	datae => \c1|ALT_INV_q\(3),
	dataf => \c1|ALT_INV_q\(1),
	combout => \c1|q~3_combout\);

-- Location: FF_X72_Y2_N20
\c1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c1|q~3_combout\,
	clrn => \ctrl|ALT_INV_Equal0~0_combout\,
	sclr => \c3|q[3]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|q\(3));

-- Location: MLABCELL_X72_Y2_N30
\ctrl|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|Equal0~0_combout\ = ( \c1|q\(2) ) # ( !\c1|q\(2) & ( ((!\c1|q\(3)) # (!\c1|q\(0))) # (\c1|q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110101111111111111010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_q\(1),
	datac => \c1|ALT_INV_q\(3),
	datad => \c1|ALT_INV_q\(0),
	dataf => \c1|ALT_INV_q\(2),
	combout => \ctrl|Equal0~0_combout\);

-- Location: FF_X72_Y2_N56
\c1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c1|q~1_combout\,
	clrn => \ctrl|ALT_INV_Equal0~0_combout\,
	sclr => \c3|q[3]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|q\(0));

-- Location: MLABCELL_X72_Y2_N3
\c1|q~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|q~4_combout\ = ( \c1|q\(0) & ( (!\ct|s3~combout\ & (((!\load~input_o\ & !\c1|q\(1))) # (\c1|q~0_combout\))) # (\ct|s3~combout\ & (!\load~input_o\ & ((!\c1|q\(1))))) ) ) # ( !\c1|q\(0) & ( (!\ct|s3~combout\ & (((!\load~input_o\ & \c1|q\(1))) # 
-- (\c1|q~0_combout\))) # (\ct|s3~combout\ & (!\load~input_o\ & ((\c1|q\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011001110000010101100111011001110000010101100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ct|ALT_INV_s3~combout\,
	datab => \ALT_INV_load~input_o\,
	datac => \c1|ALT_INV_q~0_combout\,
	datad => \c1|ALT_INV_q\(1),
	dataf => \c1|ALT_INV_q\(0),
	combout => \c1|q~4_combout\);

-- Location: FF_X72_Y2_N5
\c1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c1|q~4_combout\,
	clrn => \ctrl|ALT_INV_Equal0~0_combout\,
	sclr => \c3|q[3]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|q\(1));

-- Location: LABCELL_X66_Y2_N0
\dc1|a\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc1|a~combout\ = ( \c1|q\(0) & ( \c1|q\(2) ) ) # ( !\c1|q\(0) & ( \c1|q\(2) & ( (\c1|q\(3)) # (\c1|q\(1)) ) ) ) # ( \c1|q\(0) & ( !\c1|q\(2) & ( (\c1|q\(3)) # (\c1|q\(1)) ) ) ) # ( !\c1|q\(0) & ( !\c1|q\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010111110101111101011111010111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_q\(1),
	datac => \c1|ALT_INV_q\(3),
	datae => \c1|ALT_INV_q\(0),
	dataf => \c1|ALT_INV_q\(2),
	combout => \dc1|a~combout\);

-- Location: LABCELL_X66_Y2_N33
\dc1|b\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc1|b~combout\ = ( \c1|q\(0) & ( \c1|q\(2) & ( \c1|q\(1) ) ) ) # ( !\c1|q\(0) & ( \c1|q\(2) & ( !\c1|q\(1) ) ) ) # ( \c1|q\(0) & ( !\c1|q\(2) ) ) # ( !\c1|q\(0) & ( !\c1|q\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_q\(1),
	datae => \c1|ALT_INV_q\(0),
	dataf => \c1|ALT_INV_q\(2),
	combout => \dc1|b~combout\);

-- Location: LABCELL_X66_Y2_N36
\dc1|c\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc1|c~combout\ = ( \c1|q\(0) & ( \c1|q\(2) ) ) # ( !\c1|q\(0) & ( \c1|q\(2) ) ) # ( \c1|q\(0) & ( !\c1|q\(2) ) ) # ( !\c1|q\(0) & ( !\c1|q\(2) & ( !\c1|q\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_q\(1),
	datae => \c1|ALT_INV_q\(0),
	dataf => \c1|ALT_INV_q\(2),
	combout => \dc1|c~combout\);

-- Location: LABCELL_X66_Y2_N57
\dc1|d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc1|d~0_combout\ = ( \c1|q\(0) & ( \c1|q\(2) & ( !\c1|q\(1) ) ) ) # ( !\c1|q\(0) & ( \c1|q\(2) & ( \c1|q\(1) ) ) ) # ( \c1|q\(0) & ( !\c1|q\(2) & ( \c1|q\(1) ) ) ) # ( !\c1|q\(0) & ( !\c1|q\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101010101010101010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_q\(1),
	datae => \c1|ALT_INV_q\(0),
	dataf => \c1|ALT_INV_q\(2),
	combout => \dc1|d~0_combout\);

-- Location: LABCELL_X66_Y2_N24
\dc1|e~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc1|e~0_combout\ = ( \c1|q\(2) & ( (\c1|q\(1) & !\c1|q\(0)) ) ) # ( !\c1|q\(2) & ( !\c1|q\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_q\(1),
	datad => \c1|ALT_INV_q\(0),
	dataf => \c1|ALT_INV_q\(2),
	combout => \dc1|e~0_combout\);

-- Location: LABCELL_X66_Y2_N42
\dc1|f~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc1|f~0_combout\ = ( \c1|q\(0) & ( \c1|q\(2) & ( (!\c1|q\(1)) # (\c1|q\(3)) ) ) ) # ( !\c1|q\(0) & ( \c1|q\(2) ) ) # ( \c1|q\(0) & ( !\c1|q\(2) & ( \c1|q\(3) ) ) ) # ( !\c1|q\(0) & ( !\c1|q\(2) & ( (!\c1|q\(1)) # (\c1|q\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111000011110000111111111111111111111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_q\(1),
	datac => \c1|ALT_INV_q\(3),
	datae => \c1|ALT_INV_q\(0),
	dataf => \c1|ALT_INV_q\(2),
	combout => \dc1|f~0_combout\);

-- Location: LABCELL_X66_Y2_N15
\dc1|g~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc1|g~0_combout\ = ( \c1|q\(0) & ( \c1|q\(2) & ( (!\c1|q\(1)) # (\c1|q\(3)) ) ) ) # ( !\c1|q\(0) & ( \c1|q\(2) ) ) # ( \c1|q\(0) & ( !\c1|q\(2) & ( (\c1|q\(1)) # (\c1|q\(3)) ) ) ) # ( !\c1|q\(0) & ( !\c1|q\(2) & ( (\c1|q\(1)) # (\c1|q\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111111111111111111111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_q\(3),
	datad => \c1|ALT_INV_q\(1),
	datae => \c1|ALT_INV_q\(0),
	dataf => \c1|ALT_INV_q\(2),
	combout => \dc1|g~0_combout\);

-- Location: LABCELL_X71_Y2_N33
\c2|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c2|q~0_combout\ = (\load~input_o\ & (!\tc[1]~input_o\ & \tc[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load~input_o\,
	datac => \ALT_INV_tc[1]~input_o\,
	datad => \ALT_INV_tc[0]~input_o\,
	combout => \c2|q~0_combout\);

-- Location: LABCELL_X71_Y2_N15
\c2|q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c2|q~1_combout\ = ( \c2|q~0_combout\ & ( (!\ct|s4~combout\) # ((!\load~input_o\ & !\c2|q\(0))) ) ) # ( !\c2|q~0_combout\ & ( (!\load~input_o\ & !\c2|q\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000011111010111100001111101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load~input_o\,
	datac => \ct|ALT_INV_s4~combout\,
	datad => \c2|ALT_INV_q\(0),
	dataf => \c2|ALT_INV_q~0_combout\,
	combout => \c2|q~1_combout\);

-- Location: LABCELL_X71_Y2_N3
\c2|q~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \c2|q~5_combout\ = ( \teclas[9]~input_o\ & ( (!\tc[1]~input_o\ & \tc[0]~input_o\) ) ) # ( !\teclas[9]~input_o\ & ( (\teclas[8]~input_o\ & (!\tc[1]~input_o\ & \tc[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_teclas[8]~input_o\,
	datac => \ALT_INV_tc[1]~input_o\,
	datad => \ALT_INV_tc[0]~input_o\,
	dataf => \ALT_INV_teclas[9]~input_o\,
	combout => \c2|q~5_combout\);

-- Location: LABCELL_X71_Y2_N24
\c2|q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c2|q~2_combout\ = ( \c2|q\(2) & ( \c2|q\(0) & ( (!\load~input_o\ & ((!\c2|q\(1)) # ((!\ct|s2~combout\ & \c2|q~0_combout\)))) # (\load~input_o\ & (!\ct|s2~combout\ & (\c2|q~0_combout\))) ) ) ) # ( !\c2|q\(2) & ( \c2|q\(0) & ( (!\load~input_o\ & 
-- (((!\ct|s2~combout\ & \c2|q~0_combout\)) # (\c2|q\(1)))) # (\load~input_o\ & (!\ct|s2~combout\ & (\c2|q~0_combout\))) ) ) ) # ( \c2|q\(2) & ( !\c2|q\(0) & ( (!\load~input_o\) # ((!\ct|s2~combout\ & \c2|q~0_combout\)) ) ) ) # ( !\c2|q\(2) & ( !\c2|q\(0) & 
-- ( (!\ct|s2~combout\ & \c2|q~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100101011101010111000001100101011101010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load~input_o\,
	datab => \ct|ALT_INV_s2~combout\,
	datac => \c2|ALT_INV_q~0_combout\,
	datad => \c2|ALT_INV_q\(1),
	datae => \c2|ALT_INV_q\(2),
	dataf => \c2|ALT_INV_q\(0),
	combout => \c2|q~2_combout\);

-- Location: FF_X71_Y2_N26
\c2|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c2|q~2_combout\,
	clrn => \ctrl|ALT_INV_e\(2),
	sclr => \c3|q[3]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c2|q\(2));

-- Location: LABCELL_X71_Y2_N42
\c2|q~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \c2|q~4_combout\ = ( \c2|q\(3) & ( \c2|q\(0) & ( (!\load~input_o\ & (((!\c2|q\(2)) # (!\c2|q\(1))))) # (\load~input_o\ & (\c2|q~5_combout\)) ) ) ) # ( !\c2|q\(3) & ( \c2|q\(0) & ( (!\load~input_o\ & (((\c2|q\(2) & \c2|q\(1))))) # (\load~input_o\ & 
-- (\c2|q~5_combout\)) ) ) ) # ( \c2|q\(3) & ( !\c2|q\(0) & ( (!\load~input_o\) # (\c2|q~5_combout\) ) ) ) # ( !\c2|q\(3) & ( !\c2|q\(0) & ( (\c2|q~5_combout\ & \load~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100010001000111011101110111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c2|ALT_INV_q~5_combout\,
	datab => \ALT_INV_load~input_o\,
	datac => \c2|ALT_INV_q\(2),
	datad => \c2|ALT_INV_q\(1),
	datae => \c2|ALT_INV_q\(3),
	dataf => \c2|ALT_INV_q\(0),
	combout => \c2|q~4_combout\);

-- Location: FF_X71_Y2_N44
\c2|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c2|q~4_combout\,
	clrn => \ctrl|ALT_INV_e\(2),
	sclr => \c3|q[3]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c2|q\(3));

-- Location: LABCELL_X71_Y2_N30
\ctrl|e[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|e[2]~0_combout\ = ( !\c2|q\(1) & ( !\c2|q\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c2|ALT_INV_q\(3),
	dataf => \c2|ALT_INV_q\(1),
	combout => \ctrl|e[2]~0_combout\);

-- Location: LABCELL_X71_Y2_N48
\dc2|a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc2|a~0_combout\ = ( \c2|q\(0) & ( \c2|q\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c2|ALT_INV_q\(2),
	dataf => \c2|ALT_INV_q\(0),
	combout => \dc2|a~0_combout\);

-- Location: LABCELL_X71_Y2_N0
\ctrl|e[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|e\(2) = ( \ctrl|Equal0~0_combout\ ) # ( !\ctrl|Equal0~0_combout\ & ( (!\ctrl|e[2]~0_combout\) # (!\dc2|a~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111001111110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ctrl|ALT_INV_e[2]~0_combout\,
	datac => \dc2|ALT_INV_a~0_combout\,
	dataf => \ctrl|ALT_INV_Equal0~0_combout\,
	combout => \ctrl|e\(2));

-- Location: FF_X71_Y2_N17
\c2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c2|q~1_combout\,
	clrn => \ctrl|ALT_INV_e\(2),
	sclr => \c3|q[3]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c2|q\(0));

-- Location: LABCELL_X71_Y2_N9
\c2|q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \c2|q~3_combout\ = ( \c2|q\(0) & ( (!\c2|q~0_combout\ & (!\load~input_o\ & ((!\c2|q\(1))))) # (\c2|q~0_combout\ & ((!\ct|s3~combout\) # ((!\load~input_o\ & !\c2|q\(1))))) ) ) # ( !\c2|q\(0) & ( (!\c2|q~0_combout\ & (!\load~input_o\ & ((\c2|q\(1))))) # 
-- (\c2|q~0_combout\ & ((!\ct|s3~combout\) # ((!\load~input_o\ & \c2|q\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011011100010100001101110011011100010100001101110001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c2|ALT_INV_q~0_combout\,
	datab => \ALT_INV_load~input_o\,
	datac => \ct|ALT_INV_s3~combout\,
	datad => \c2|ALT_INV_q\(1),
	dataf => \c2|ALT_INV_q\(0),
	combout => \c2|q~3_combout\);

-- Location: FF_X71_Y2_N11
\c2|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c2|q~3_combout\,
	clrn => \ctrl|ALT_INV_e\(2),
	sclr => \c3|q[3]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c2|q\(1));

-- Location: LABCELL_X71_Y2_N36
\dc2|a\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc2|a~combout\ = ( \c2|q\(0) & ( ((\c2|q\(3)) # (\c2|q\(2))) # (\c2|q\(1)) ) ) # ( !\c2|q\(0) & ( ((!\c2|q\(2)) # (\c2|q\(3))) # (\c2|q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111011111110111111101111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c2|ALT_INV_q\(1),
	datab => \c2|ALT_INV_q\(2),
	datac => \c2|ALT_INV_q\(3),
	dataf => \c2|ALT_INV_q\(0),
	combout => \dc2|a~combout\);

-- Location: LABCELL_X71_Y2_N6
\dc2|b\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc2|b~combout\ = ( \c2|q\(0) & ( (!\c2|q\(2)) # (\c2|q\(1)) ) ) # ( !\c2|q\(0) & ( (!\c2|q\(1)) # (!\c2|q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c2|ALT_INV_q\(1),
	datad => \c2|ALT_INV_q\(2),
	dataf => \c2|ALT_INV_q\(0),
	combout => \dc2|b~combout\);

-- Location: LABCELL_X71_Y2_N51
\dc2|c\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc2|c~combout\ = ( \c2|q\(0) ) # ( !\c2|q\(0) & ( (!\c2|q\(1)) # (\c2|q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c2|ALT_INV_q\(2),
	datad => \c2|ALT_INV_q\(1),
	dataf => \c2|ALT_INV_q\(0),
	combout => \dc2|c~combout\);

-- Location: LABCELL_X71_Y2_N39
\dc2|d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc2|d~0_combout\ = ( \c2|q\(0) & ( !\c2|q\(1) $ (!\c2|q\(2)) ) ) # ( !\c2|q\(0) & ( (!\c2|q\(2)) # (\c2|q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c2|ALT_INV_q\(1),
	datab => \c2|ALT_INV_q\(2),
	dataf => \c2|ALT_INV_q\(0),
	combout => \dc2|d~0_combout\);

-- Location: MLABCELL_X72_Y2_N15
\dc2|e~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc2|e~0_combout\ = ( \c2|q\(2) & ( (!\c2|q\(0) & \c2|q\(1)) ) ) # ( !\c2|q\(2) & ( !\c2|q\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c2|ALT_INV_q\(0),
	datad => \c2|ALT_INV_q\(1),
	dataf => \c2|ALT_INV_q\(2),
	combout => \dc2|e~0_combout\);

-- Location: LABCELL_X71_Y2_N54
\dc2|f~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc2|f~0_combout\ = ( \c2|q\(0) & ( ((\c2|q\(2) & !\c2|q\(1))) # (\c2|q\(3)) ) ) # ( !\c2|q\(0) & ( ((!\c2|q\(1)) # (\c2|q\(2))) # (\c2|q\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111111101111111011101110101011101010111010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c2|ALT_INV_q\(3),
	datab => \c2|ALT_INV_q\(2),
	datac => \c2|ALT_INV_q\(1),
	dataf => \c2|ALT_INV_q\(0),
	combout => \dc2|f~0_combout\);

-- Location: LABCELL_X71_Y2_N57
\dc2|g~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc2|g~0_combout\ = ( \c2|q\(0) & ( (!\c2|q\(2) $ (!\c2|q\(1))) # (\c2|q\(3)) ) ) # ( !\c2|q\(0) & ( ((\c2|q\(1)) # (\c2|q\(2))) # (\c2|q\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111111111011101111111111101110111110111010111011111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c2|ALT_INV_q\(3),
	datab => \c2|ALT_INV_q\(2),
	datad => \c2|ALT_INV_q\(1),
	dataf => \c2|ALT_INV_q\(0),
	combout => \dc2|g~0_combout\);

-- Location: LABCELL_X73_Y2_N21
\c3|q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c3|q~1_combout\ = ( \load~input_o\ & ( (\tc[1]~input_o\ & !\tc[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_tc[1]~input_o\,
	datad => \ALT_INV_tc[0]~input_o\,
	dataf => \ALT_INV_load~input_o\,
	combout => \c3|q~1_combout\);

-- Location: LABCELL_X73_Y2_N42
\c3|q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c3|q~2_combout\ = ( \load~input_o\ & ( (\c3|q~1_combout\ & !\ct|s4~combout\) ) ) # ( !\load~input_o\ & ( (!\c3|q\(0)) # ((\c3|q~1_combout\ & !\ct|s4~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110000111111110011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c3|ALT_INV_q~1_combout\,
	datac => \ct|ALT_INV_s4~combout\,
	datad => \c3|ALT_INV_q\(0),
	dataf => \ALT_INV_load~input_o\,
	combout => \c3|q~2_combout\);

-- Location: LABCELL_X73_Y2_N3
\c3|q~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \c3|q~5_combout\ = ( \c3|q\(0) & ( (!\load~input_o\ & ((!\c3|q\(1)) # ((\c3|q~1_combout\ & !\ct|s3~combout\)))) # (\load~input_o\ & (\c3|q~1_combout\ & (!\ct|s3~combout\))) ) ) # ( !\c3|q\(0) & ( (!\load~input_o\ & (((\c3|q~1_combout\ & !\ct|s3~combout\)) 
-- # (\c3|q\(1)))) # (\load~input_o\ & (\c3|q~1_combout\ & (!\ct|s3~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000010111010001100001011101010111010001100001011101000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load~input_o\,
	datab => \c3|ALT_INV_q~1_combout\,
	datac => \ct|ALT_INV_s3~combout\,
	datad => \c3|ALT_INV_q\(1),
	dataf => \c3|ALT_INV_q\(0),
	combout => \c3|q~5_combout\);

-- Location: FF_X73_Y2_N5
\c3|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c3|q~5_combout\,
	clrn => \ctrl|ALT_INV_e[1]~3_combout\,
	sclr => \c3|q[3]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|q\(1));

-- Location: LABCELL_X73_Y2_N36
\c3|q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \c3|q~3_combout\ = ( \c3|q\(2) & ( \c3|q\(1) & ( (!\load~input_o\ & ((!\c3|q\(0)) # ((!\ct|s2~combout\ & \c3|q~1_combout\)))) # (\load~input_o\ & (!\ct|s2~combout\ & (\c3|q~1_combout\))) ) ) ) # ( !\c3|q\(2) & ( \c3|q\(1) & ( (!\load~input_o\ & 
-- (((!\ct|s2~combout\ & \c3|q~1_combout\)) # (\c3|q\(0)))) # (\load~input_o\ & (!\ct|s2~combout\ & (\c3|q~1_combout\))) ) ) ) # ( \c3|q\(2) & ( !\c3|q\(1) & ( (!\load~input_o\) # ((!\ct|s2~combout\ & \c3|q~1_combout\)) ) ) ) # ( !\c3|q\(2) & ( !\c3|q\(1) & 
-- ( (!\ct|s2~combout\ & \c3|q~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100101011101010111000001100101011101010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load~input_o\,
	datab => \ct|ALT_INV_s2~combout\,
	datac => \c3|ALT_INV_q~1_combout\,
	datad => \c3|ALT_INV_q\(0),
	datae => \c3|ALT_INV_q\(2),
	dataf => \c3|ALT_INV_q\(1),
	combout => \c3|q~3_combout\);

-- Location: FF_X73_Y2_N38
\c3|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c3|q~3_combout\,
	clrn => \ctrl|ALT_INV_e[1]~3_combout\,
	sclr => \c3|q[3]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|q\(2));

-- Location: LABCELL_X71_Y2_N21
\c3|q~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \c3|q~6_combout\ = ( \tc[1]~input_o\ & ( (!\tc[0]~input_o\ & ((\teclas[8]~input_o\) # (\teclas[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010101010100010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tc[0]~input_o\,
	datab => \ALT_INV_teclas[9]~input_o\,
	datad => \ALT_INV_teclas[8]~input_o\,
	dataf => \ALT_INV_tc[1]~input_o\,
	combout => \c3|q~6_combout\);

-- Location: LABCELL_X73_Y2_N12
\c3|q~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \c3|q~4_combout\ = ( \c3|q\(3) & ( \c3|q\(1) & ( (!\load~input_o\ & (((!\c3|q\(2)) # (!\c3|q\(0))))) # (\load~input_o\ & (\c3|q~6_combout\)) ) ) ) # ( !\c3|q\(3) & ( \c3|q\(1) & ( (!\load~input_o\ & (((\c3|q\(2) & \c3|q\(0))))) # (\load~input_o\ & 
-- (\c3|q~6_combout\)) ) ) ) # ( \c3|q\(3) & ( !\c3|q\(1) & ( (!\load~input_o\) # (\c3|q~6_combout\) ) ) ) # ( !\c3|q\(3) & ( !\c3|q\(1) & ( (\c3|q~6_combout\ & \load~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100010001000111011101110111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c3|ALT_INV_q~6_combout\,
	datab => \ALT_INV_load~input_o\,
	datac => \c3|ALT_INV_q\(2),
	datad => \c3|ALT_INV_q\(0),
	datae => \c3|ALT_INV_q\(3),
	dataf => \c3|ALT_INV_q\(1),
	combout => \c3|q~4_combout\);

-- Location: FF_X73_Y2_N14
\c3|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c3|q~4_combout\,
	clrn => \ctrl|ALT_INV_e[1]~3_combout\,
	sclr => \c3|q[3]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|q\(3));

-- Location: LABCELL_X73_Y2_N51
\ctrl|e[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|e[1]~2_combout\ = ( \c3|q\(3) & ( (!\c3|q\(1) & (\c3|q\(0) & !\c3|q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c3|ALT_INV_q\(1),
	datac => \c3|ALT_INV_q\(0),
	datad => \c3|ALT_INV_q\(2),
	dataf => \c3|ALT_INV_q\(3),
	combout => \ctrl|e[1]~2_combout\);

-- Location: LABCELL_X73_Y2_N0
\c4|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c4|q~0_combout\ = ( \tc[1]~input_o\ & ( (\load~input_o\ & \tc[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load~input_o\,
	datad => \ALT_INV_tc[0]~input_o\,
	dataf => \ALT_INV_tc[1]~input_o\,
	combout => \c4|q~0_combout\);

-- Location: MLABCELL_X72_Y2_N42
\c4|q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c4|q~1_combout\ = ( \ct|s4~combout\ & ( (!\load~input_o\ & !\c4|q\(0)) ) ) # ( !\ct|s4~combout\ & ( ((!\load~input_o\ & !\c4|q\(0))) # (\c4|q~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100001111101011110000111110101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load~input_o\,
	datac => \c4|ALT_INV_q~0_combout\,
	datad => \c4|ALT_INV_q\(0),
	dataf => \ct|ALT_INV_s4~combout\,
	combout => \c4|q~1_combout\);

-- Location: MLABCELL_X72_Y2_N12
\c4|q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \c4|q~3_combout\ = ( \c4|q\(0) & ( (!\ct|s3~combout\ & (((!\load~input_o\ & !\c4|q\(1))) # (\c4|q~0_combout\))) # (\ct|s3~combout\ & (!\load~input_o\ & ((!\c4|q\(1))))) ) ) # ( !\c4|q\(0) & ( (!\ct|s3~combout\ & (((!\load~input_o\ & \c4|q\(1))) # 
-- (\c4|q~0_combout\))) # (\ct|s3~combout\ & (!\load~input_o\ & ((\c4|q\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011001110000010101100111011001110000010101100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ct|ALT_INV_s3~combout\,
	datab => \ALT_INV_load~input_o\,
	datac => \c4|ALT_INV_q~0_combout\,
	datad => \c4|ALT_INV_q\(1),
	dataf => \c4|ALT_INV_q\(0),
	combout => \c4|q~3_combout\);

-- Location: FF_X72_Y2_N14
\c4|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c4|q~3_combout\,
	clrn => \ctrl|ALT_INV_e\(0),
	sclr => \c3|q[3]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c4|q\(1));

-- Location: LABCELL_X71_Y2_N12
\c4|q~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \c4|q~5_combout\ = ( \tc[1]~input_o\ & ( (\tc[0]~input_o\ & ((\teclas[8]~input_o\) # (\teclas[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_teclas[9]~input_o\,
	datac => \ALT_INV_tc[0]~input_o\,
	datad => \ALT_INV_teclas[8]~input_o\,
	dataf => \ALT_INV_tc[1]~input_o\,
	combout => \c4|q~5_combout\);

-- Location: MLABCELL_X72_Y2_N36
\c4|q~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \c4|q~4_combout\ = ( \c4|q\(3) & ( \c4|q\(0) & ( (!\load~input_o\ & ((!\c4|q\(2)) # ((!\c4|q\(1))))) # (\load~input_o\ & (((\c4|q~5_combout\)))) ) ) ) # ( !\c4|q\(3) & ( \c4|q\(0) & ( (!\load~input_o\ & (\c4|q\(2) & ((\c4|q\(1))))) # (\load~input_o\ & 
-- (((\c4|q~5_combout\)))) ) ) ) # ( \c4|q\(3) & ( !\c4|q\(0) & ( (!\load~input_o\) # (\c4|q~5_combout\) ) ) ) # ( !\c4|q\(3) & ( !\c4|q\(0) & ( (\load~input_o\ & \c4|q~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100000101001001111010111110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load~input_o\,
	datab => \c4|ALT_INV_q\(2),
	datac => \c4|ALT_INV_q~5_combout\,
	datad => \c4|ALT_INV_q\(1),
	datae => \c4|ALT_INV_q\(3),
	dataf => \c4|ALT_INV_q\(0),
	combout => \c4|q~4_combout\);

-- Location: FF_X72_Y2_N38
\c4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c4|q~4_combout\,
	clrn => \ctrl|ALT_INV_e\(0),
	sclr => \c3|q[3]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c4|q\(3));

-- Location: MLABCELL_X72_Y2_N33
\ctrl|e[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|e[0]~4_combout\ = ( !\c4|q\(2) & ( (\c4|q\(0) & (!\c4|q\(1) & \c4|q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c4|ALT_INV_q\(0),
	datac => \c4|ALT_INV_q\(1),
	datad => \c4|ALT_INV_q\(3),
	dataf => \c4|ALT_INV_q\(2),
	combout => \ctrl|e[0]~4_combout\);

-- Location: MLABCELL_X72_Y2_N24
\ctrl|e[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|e\(0) = ( \ctrl|e[1]~1_combout\ & ( \ctrl|e[2]~0_combout\ & ( (!\ctrl|e[0]~4_combout\) # ((!\dc2|a~0_combout\) # (\ctrl|Equal0~0_combout\)) ) ) ) # ( !\ctrl|e[1]~1_combout\ & ( \ctrl|e[2]~0_combout\ & ( (!\ctrl|e[0]~4_combout\) # 
-- ((!\dc2|a~0_combout\) # ((!\ctrl|e[1]~2_combout\) # (\ctrl|Equal0~0_combout\))) ) ) ) # ( \ctrl|e[1]~1_combout\ & ( !\ctrl|e[2]~0_combout\ ) ) # ( !\ctrl|e[1]~1_combout\ & ( !\ctrl|e[2]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111110111111111110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_e[0]~4_combout\,
	datab => \dc2|ALT_INV_a~0_combout\,
	datac => \ctrl|ALT_INV_e[1]~2_combout\,
	datad => \ctrl|ALT_INV_Equal0~0_combout\,
	datae => \ctrl|ALT_INV_e[1]~1_combout\,
	dataf => \ctrl|ALT_INV_e[2]~0_combout\,
	combout => \ctrl|e\(0));

-- Location: FF_X72_Y2_N44
\c4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c4|q~1_combout\,
	clrn => \ctrl|ALT_INV_e\(0),
	sclr => \c3|q[3]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c4|q\(0));

-- Location: MLABCELL_X72_Y2_N6
\c4|q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c4|q~2_combout\ = ( \c4|q\(2) & ( \c4|q\(1) & ( (!\ct|s2~combout\ & (((!\load~input_o\ & !\c4|q\(0))) # (\c4|q~0_combout\))) # (\ct|s2~combout\ & (!\load~input_o\ & ((!\c4|q\(0))))) ) ) ) # ( !\c4|q\(2) & ( \c4|q\(1) & ( (!\ct|s2~combout\ & 
-- (((!\load~input_o\ & \c4|q\(0))) # (\c4|q~0_combout\))) # (\ct|s2~combout\ & (!\load~input_o\ & ((\c4|q\(0))))) ) ) ) # ( \c4|q\(2) & ( !\c4|q\(1) & ( (!\load~input_o\) # ((!\ct|s2~combout\ & \c4|q~0_combout\)) ) ) ) # ( !\c4|q\(2) & ( !\c4|q\(1) & ( 
-- (!\ct|s2~combout\ & \c4|q~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010110011101100111000001010110011101100111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ct|ALT_INV_s2~combout\,
	datab => \ALT_INV_load~input_o\,
	datac => \c4|ALT_INV_q~0_combout\,
	datad => \c4|ALT_INV_q\(0),
	datae => \c4|ALT_INV_q\(2),
	dataf => \c4|ALT_INV_q\(1),
	combout => \c4|q~2_combout\);

-- Location: FF_X72_Y2_N8
\c4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c4|q~2_combout\,
	clrn => \ctrl|ALT_INV_e\(0),
	sclr => \c3|q[3]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c4|q\(2));

-- Location: MLABCELL_X72_Y2_N45
\ctrl|e[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|e[1]~1_combout\ = ( !\c4|q\(0) & ( (!\c4|q\(2) & (\c4|q\(1) & !\c4|q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c4|ALT_INV_q\(2),
	datac => \c4|ALT_INV_q\(1),
	datad => \c4|ALT_INV_q\(3),
	dataf => \c4|ALT_INV_q\(0),
	combout => \ctrl|e[1]~1_combout\);

-- Location: LABCELL_X73_Y2_N18
\ctrl|e[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrl|e[1]~3_combout\ = ( \ctrl|e[2]~0_combout\ & ( ((!\dc2|a~0_combout\) # ((!\ctrl|e[1]~2_combout\ & !\ctrl|e[1]~1_combout\))) # (\ctrl|Equal0~0_combout\) ) ) # ( !\ctrl|e[2]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111110101011111111111010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|ALT_INV_Equal0~0_combout\,
	datab => \ctrl|ALT_INV_e[1]~2_combout\,
	datac => \ctrl|ALT_INV_e[1]~1_combout\,
	datad => \dc2|ALT_INV_a~0_combout\,
	dataf => \ctrl|ALT_INV_e[2]~0_combout\,
	combout => \ctrl|e[1]~3_combout\);

-- Location: FF_X73_Y2_N44
\c3|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \c3|q~2_combout\,
	clrn => \ctrl|ALT_INV_e[1]~3_combout\,
	sclr => \c3|q[3]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c3|q\(0));

-- Location: LABCELL_X73_Y2_N6
\dc3|a\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc3|a~combout\ = ( \c3|q\(1) ) # ( !\c3|q\(1) & ( (!\c3|q\(0) $ (\c3|q\(2))) # (\c3|q\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101101110111101110110111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c3|ALT_INV_q\(0),
	datab => \c3|ALT_INV_q\(3),
	datad => \c3|ALT_INV_q\(2),
	dataf => \c3|ALT_INV_q\(1),
	combout => \dc3|a~combout\);

-- Location: LABCELL_X73_Y2_N45
\dc3|b\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc3|b~combout\ = ( \c3|q\(1) & ( (!\c3|q\(2)) # (\c3|q\(0)) ) ) # ( !\c3|q\(1) & ( (!\c3|q\(0)) # (!\c3|q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101011110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c3|ALT_INV_q\(0),
	datac => \c3|ALT_INV_q\(2),
	dataf => \c3|ALT_INV_q\(1),
	combout => \dc3|b~combout\);

-- Location: MLABCELL_X72_Y2_N57
\dc3|c\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc3|c~combout\ = (!\c3|q\(1)) # ((\c3|q\(0)) # (\c3|q\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111111111111101011111111111110101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c3|ALT_INV_q\(1),
	datac => \c3|ALT_INV_q\(2),
	datad => \c3|ALT_INV_q\(0),
	combout => \dc3|c~combout\);

-- Location: LABCELL_X73_Y2_N30
\dc3|d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc3|d~0_combout\ = ( \c3|q\(1) & ( (!\c3|q\(2)) # (!\c3|q\(0)) ) ) # ( !\c3|q\(1) & ( !\c3|q\(2) $ (\c3|q\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001111111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c3|ALT_INV_q\(2),
	datac => \c3|ALT_INV_q\(0),
	dataf => \c3|ALT_INV_q\(1),
	combout => \dc3|d~0_combout\);

-- Location: MLABCELL_X72_Y2_N0
\dc3|e~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc3|e~0_combout\ = ( !\c3|q\(0) & ( (!\c3|q\(2)) # (\c3|q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c3|ALT_INV_q\(1),
	datad => \c3|ALT_INV_q\(2),
	dataf => \c3|ALT_INV_q\(0),
	combout => \dc3|e~0_combout\);

-- Location: LABCELL_X73_Y2_N48
\dc3|f~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc3|f~0_combout\ = ( \c3|q\(3) ) # ( !\c3|q\(3) & ( (!\c3|q\(1) & ((!\c3|q\(0)) # (\c3|q\(2)))) # (\c3|q\(1) & (\c3|q\(2) & !\c3|q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001010110010101100101011001011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c3|ALT_INV_q\(1),
	datab => \c3|ALT_INV_q\(2),
	datac => \c3|ALT_INV_q\(0),
	dataf => \c3|ALT_INV_q\(3),
	combout => \dc3|f~0_combout\);

-- Location: LABCELL_X73_Y2_N9
\dc3|g~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc3|g~0_combout\ = ( \c3|q\(1) & ( (!\c3|q\(0)) # ((!\c3|q\(2)) # (\c3|q\(3))) ) ) # ( !\c3|q\(1) & ( (\c3|q\(2)) # (\c3|q\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111101011111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c3|ALT_INV_q\(0),
	datac => \c3|ALT_INV_q\(3),
	datad => \c3|ALT_INV_q\(2),
	dataf => \c3|ALT_INV_q\(1),
	combout => \dc3|g~0_combout\);

-- Location: LABCELL_X66_Y2_N27
\dc4|a\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc4|a~combout\ = ( \c4|q\(0) & ( ((\c4|q\(1)) # (\c4|q\(3))) # (\c4|q\(2)) ) ) # ( !\c4|q\(0) & ( (!\c4|q\(2)) # ((\c4|q\(1)) # (\c4|q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111101111111011111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c4|ALT_INV_q\(2),
	datab => \c4|ALT_INV_q\(3),
	datac => \c4|ALT_INV_q\(1),
	dataf => \c4|ALT_INV_q\(0),
	combout => \dc4|a~combout\);

-- Location: LABCELL_X66_Y2_N18
\dc4|b\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc4|b~combout\ = ( \c4|q\(0) & ( (!\c4|q\(2)) # (\c4|q\(1)) ) ) # ( !\c4|q\(0) & ( (!\c4|q\(2)) # (!\c4|q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111010111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c4|ALT_INV_q\(2),
	datab => \c4|ALT_INV_q\(1),
	dataf => \c4|ALT_INV_q\(0),
	combout => \dc4|b~combout\);

-- Location: LABCELL_X66_Y2_N21
\dc4|c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc4|c~0_combout\ = ( !\c4|q\(0) & ( (!\c4|q\(2) & \c4|q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c4|ALT_INV_q\(2),
	datab => \c4|ALT_INV_q\(1),
	dataf => \c4|ALT_INV_q\(0),
	combout => \dc4|c~0_combout\);

-- Location: LABCELL_X66_Y2_N51
\dc4|d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc4|d~0_combout\ = ( \c4|q\(0) & ( !\c4|q\(2) $ (!\c4|q\(1)) ) ) # ( !\c4|q\(0) & ( (!\c4|q\(2)) # (\c4|q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c4|ALT_INV_q\(2),
	datab => \c4|ALT_INV_q\(1),
	dataf => \c4|ALT_INV_q\(0),
	combout => \dc4|d~0_combout\);

-- Location: LABCELL_X66_Y2_N48
\dc4|e~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc4|e~0_combout\ = ( !\c4|q\(0) & ( (!\c4|q\(2)) # (\c4|q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c4|ALT_INV_q\(2),
	datab => \c4|ALT_INV_q\(1),
	dataf => \c4|ALT_INV_q\(0),
	combout => \dc4|e~0_combout\);

-- Location: LABCELL_X66_Y2_N6
\dc4|f~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc4|f~0_combout\ = ( \c4|q\(0) & ( ((\c4|q\(2) & !\c4|q\(1))) # (\c4|q\(3)) ) ) # ( !\c4|q\(0) & ( ((!\c4|q\(1)) # (\c4|q\(3))) # (\c4|q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111111111110111011111111101000100111111110100010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c4|ALT_INV_q\(2),
	datab => \c4|ALT_INV_q\(1),
	datad => \c4|ALT_INV_q\(3),
	dataf => \c4|ALT_INV_q\(0),
	combout => \dc4|f~0_combout\);

-- Location: LABCELL_X66_Y2_N9
\dc4|g~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dc4|g~0_combout\ = ( \c4|q\(0) & ( (!\c4|q\(2) $ (!\c4|q\(1))) # (\c4|q\(3)) ) ) # ( !\c4|q\(0) & ( ((\c4|q\(3)) # (\c4|q\(1))) # (\c4|q\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111101101111011011110110111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c4|ALT_INV_q\(2),
	datab => \c4|ALT_INV_q\(1),
	datac => \c4|ALT_INV_q\(3),
	dataf => \c4|ALT_INV_q\(0),
	combout => \dc4|g~0_combout\);

-- Location: IOIBUF_X89_Y35_N78
\teclas[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclas(0),
	o => \teclas[0]~input_o\);

-- Location: MLABCELL_X84_Y65_N3
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

