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

-- DATE "10/17/2019 07:57:00"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	demux_4x8 IS
    PORT (
	E : IN std_logic_vector(3 DOWNTO 0);
	sel : IN std_logic;
	S1 : BUFFER std_logic_vector(3 DOWNTO 0);
	S2 : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END demux_4x8;

-- Design Ports Information
-- S1[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[1]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[2]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[3]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2[1]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2[2]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2[3]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[0]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[2]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF demux_4x8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_E : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sel : std_logic;
SIGNAL ww_S1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \sel~input_o\ : std_logic;
SIGNAL \E[0]~input_o\ : std_logic;
SIGNAL \S1~0_combout\ : std_logic;
SIGNAL \E[1]~input_o\ : std_logic;
SIGNAL \S1~1_combout\ : std_logic;
SIGNAL \E[2]~input_o\ : std_logic;
SIGNAL \S1~2_combout\ : std_logic;
SIGNAL \E[3]~input_o\ : std_logic;
SIGNAL \S1~3_combout\ : std_logic;
SIGNAL \S2~0_combout\ : std_logic;
SIGNAL \S2~1_combout\ : std_logic;
SIGNAL \S2~2_combout\ : std_logic;
SIGNAL \S2~3_combout\ : std_logic;
SIGNAL \ALT_INV_E[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_E[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_E[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel~input_o\ : std_logic;
SIGNAL \ALT_INV_E[0]~input_o\ : std_logic;

BEGIN

ww_E <= E;
ww_sel <= sel;
S1 <= ww_S1;
S2 <= ww_S2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_E[3]~input_o\ <= NOT \E[3]~input_o\;
\ALT_INV_E[2]~input_o\ <= NOT \E[2]~input_o\;
\ALT_INV_E[1]~input_o\ <= NOT \E[1]~input_o\;
\ALT_INV_sel~input_o\ <= NOT \sel~input_o\;
\ALT_INV_E[0]~input_o\ <= NOT \E[0]~input_o\;

-- Location: IOOBUF_X89_Y38_N22
\S1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S1~0_combout\,
	devoe => ww_devoe,
	o => ww_S1(0));

-- Location: IOOBUF_X89_Y38_N56
\S1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S1~1_combout\,
	devoe => ww_devoe,
	o => ww_S1(1));

-- Location: IOOBUF_X89_Y37_N39
\S1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S1~2_combout\,
	devoe => ww_devoe,
	o => ww_S1(2));

-- Location: IOOBUF_X89_Y37_N56
\S1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S1~3_combout\,
	devoe => ww_devoe,
	o => ww_S1(3));

-- Location: IOOBUF_X89_Y36_N56
\S2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S2~0_combout\,
	devoe => ww_devoe,
	o => ww_S2(0));

-- Location: IOOBUF_X89_Y36_N5
\S2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S2~1_combout\,
	devoe => ww_devoe,
	o => ww_S2(1));

-- Location: IOOBUF_X89_Y36_N39
\S2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S2~2_combout\,
	devoe => ww_devoe,
	o => ww_S2(2));

-- Location: IOOBUF_X89_Y37_N22
\S2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S2~3_combout\,
	devoe => ww_devoe,
	o => ww_S2(3));

-- Location: IOIBUF_X89_Y35_N95
\sel~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel,
	o => \sel~input_o\);

-- Location: IOIBUF_X89_Y38_N4
\E[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(0),
	o => \E[0]~input_o\);

-- Location: LABCELL_X88_Y36_N30
\S1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1~0_combout\ = ( !\sel~input_o\ & ( \E[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_sel~input_o\,
	dataf => \ALT_INV_E[0]~input_o\,
	combout => \S1~0_combout\);

-- Location: IOIBUF_X89_Y36_N21
\E[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(1),
	o => \E[1]~input_o\);

-- Location: LABCELL_X88_Y36_N6
\S1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1~1_combout\ = ( !\sel~input_o\ & ( \E[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_sel~input_o\,
	dataf => \ALT_INV_E[1]~input_o\,
	combout => \S1~1_combout\);

-- Location: IOIBUF_X89_Y38_N38
\E[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(2),
	o => \E[2]~input_o\);

-- Location: LABCELL_X88_Y37_N0
\S1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1~2_combout\ = ( !\sel~input_o\ & ( \E[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_sel~input_o\,
	dataf => \ALT_INV_E[2]~input_o\,
	combout => \S1~2_combout\);

-- Location: IOIBUF_X89_Y37_N4
\E[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(3),
	o => \E[3]~input_o\);

-- Location: LABCELL_X88_Y37_N9
\S1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1~3_combout\ = ( !\sel~input_o\ & ( \E[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_sel~input_o\,
	dataf => \ALT_INV_E[3]~input_o\,
	combout => \S1~3_combout\);

-- Location: LABCELL_X88_Y36_N15
\S2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S2~0_combout\ = ( \sel~input_o\ & ( \E[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_sel~input_o\,
	dataf => \ALT_INV_E[0]~input_o\,
	combout => \S2~0_combout\);

-- Location: LABCELL_X88_Y36_N51
\S2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S2~1_combout\ = ( \sel~input_o\ & ( \E[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_sel~input_o\,
	dataf => \ALT_INV_E[1]~input_o\,
	combout => \S2~1_combout\);

-- Location: LABCELL_X88_Y36_N27
\S2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S2~2_combout\ = ( \sel~input_o\ & ( \E[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_sel~input_o\,
	dataf => \ALT_INV_E[2]~input_o\,
	combout => \S2~2_combout\);

-- Location: LABCELL_X88_Y37_N42
\S2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \S2~3_combout\ = ( \sel~input_o\ & ( \E[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_sel~input_o\,
	dataf => \ALT_INV_E[3]~input_o\,
	combout => \S2~3_combout\);

-- Location: LABCELL_X48_Y36_N3
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


