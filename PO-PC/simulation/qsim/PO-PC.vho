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

-- DATE "11/24/2019 01:21:40"

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

ENTITY 	topLevel IS
    PORT (
	clock : IN std_logic;
	clearn : IN std_logic;
	maior : BUFFER std_logic_vector(7 DOWNTO 0);
	menor : BUFFER std_logic_vector(7 DOWNTO 0);
	qtdMaior : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END topLevel;

-- Design Ports Information
-- maior[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- maior[1]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- maior[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- maior[3]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- maior[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- maior[5]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- maior[6]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- maior[7]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- menor[0]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- menor[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- menor[2]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- menor[3]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- menor[4]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- menor[5]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- menor[6]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- menor[7]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qtdMaior[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qtdMaior[1]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qtdMaior[2]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qtdMaior[3]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qtdMaior[4]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qtdMaior[5]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qtdMaior[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qtdMaior[7]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clearn	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF topLevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_clearn : std_logic;
SIGNAL ww_maior : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_menor : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_qtdMaior : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ft|state_reg~0_combout\ : std_logic;
SIGNAL \clearn~input_o\ : std_logic;
SIGNAL \ft|state_reg~1_combout\ : std_logic;
SIGNAL \ft|state_reg~3_combout\ : std_logic;
SIGNAL \ft|state_reg~5_combout\ : std_logic;
SIGNAL \ft|state_reg~4_combout\ : std_logic;
SIGNAL \ft|state_reg~2_combout\ : std_logic;
SIGNAL \pc1|Mux24~0_combout\ : std_logic;
SIGNAL \pc1|Mux25~0_combout\ : std_logic;
SIGNAL \pc1|Mux8~0_combout\ : std_logic;
SIGNAL \pc1|Mux9~0_combout\ : std_logic;
SIGNAL \pc1|Mux27~0_combout\ : std_logic;
SIGNAL \pc1|Mux20~0_combout\ : std_logic;
SIGNAL \pc1|Mux21~0_combout\ : std_logic;
SIGNAL \pc1|Mux22~0_combout\ : std_logic;
SIGNAL \pc1|Mux23~0_combout\ : std_logic;
SIGNAL \LM|Equal1~0_combout\ : std_logic;
SIGNAL \pc1|Mux12~0_combout\ : std_logic;
SIGNAL \pc1|Mux13~0_combout\ : std_logic;
SIGNAL \pc1|Mux14~0_combout\ : std_logic;
SIGNAL \pc1|Mux15~0_combout\ : std_logic;
SIGNAL \pc1|Mux19~0_combout\ : std_logic;
SIGNAL \pc1|Mux10~0_combout\ : std_logic;
SIGNAL \pc1|Mux11~0_combout\ : std_logic;
SIGNAL \pc1|Mux17~0_combout\ : std_logic;
SIGNAL \LM|Equal0~0_combout\ : std_logic;
SIGNAL \LM|Equal6~0_combout\ : std_logic;
SIGNAL \LM|Selector6~2_combout\ : std_logic;
SIGNAL \LM|Selector6~0_combout\ : std_logic;
SIGNAL \LM|Selector5~2_combout\ : std_logic;
SIGNAL \LM|Selector5~0_combout\ : std_logic;
SIGNAL \LM|WideNor0~3_combout\ : std_logic;
SIGNAL \LM|WideNor0~2_combout\ : std_logic;
SIGNAL \LM|Equal1~1_combout\ : std_logic;
SIGNAL \LM|Equal2~0_combout\ : std_logic;
SIGNAL \LM|WideNor0~1_combout\ : std_logic;
SIGNAL \LM|Selector7~0_combout\ : std_logic;
SIGNAL \LM|Equal5~0_combout\ : std_logic;
SIGNAL \LM|Selector7~1_combout\ : std_logic;
SIGNAL \pc1|Mux28~0_combout\ : std_logic;
SIGNAL \pc1|Mux29~0_combout\ : std_logic;
SIGNAL \pc1|enabler1~combout\ : std_logic;
SIGNAL \LM|Equal4~0_combout\ : std_logic;
SIGNAL \LM|Selector2~0_combout\ : std_logic;
SIGNAL \LM|Selector1~0_combout\ : std_logic;
SIGNAL \LM|Selector3~0_combout\ : std_logic;
SIGNAL \po1|cmpMaior|LessThan0~0_combout\ : std_logic;
SIGNAL \LM|Selector4~0_combout\ : std_logic;
SIGNAL \po1|cmpMaior|LessThan0~2_combout\ : std_logic;
SIGNAL \LM|WideNor0~0_combout\ : std_logic;
SIGNAL \LM|Selector5~1_combout\ : std_logic;
SIGNAL \LM|Selector6~1_combout\ : std_logic;
SIGNAL \po1|cmpMaior|LessThan0~1_combout\ : std_logic;
SIGNAL \po1|cmpMaior|LessThan0~3_combout\ : std_logic;
SIGNAL \rMaior|q[0]~feeder_combout\ : std_logic;
SIGNAL \pc1|Mux0~0_combout\ : std_logic;
SIGNAL \pc1|Mux1~0_combout\ : std_logic;
SIGNAL \pc1|enableRMaior~combout\ : std_logic;
SIGNAL \rMaior|q[4]~feeder_combout\ : std_logic;
SIGNAL \po1|rgMaior|q[5]~DUPLICATE_q\ : std_logic;
SIGNAL \po1|rgMenor|q[0]~feeder_combout\ : std_logic;
SIGNAL \pc1|Mux7~0_combout\ : std_logic;
SIGNAL \pc1|tx~combout\ : std_logic;
SIGNAL \po1|rgMenor|q[6]~feeder_combout\ : std_logic;
SIGNAL \po1|rgMenor|q[5]~feeder_combout\ : std_logic;
SIGNAL \po1|cmpMenor|lt~1_combout\ : std_logic;
SIGNAL \po1|cmpMenor|lt~0_combout\ : std_logic;
SIGNAL \po1|rgMenor|q[4]~feeder_combout\ : std_logic;
SIGNAL \po1|cmpMenor|LessThan0~0_combout\ : std_logic;
SIGNAL \po1|cmpMenor|LessThan0~1_combout\ : std_logic;
SIGNAL \po1|cmpMenor|lt~2_combout\ : std_logic;
SIGNAL \pc1|Mux2~0_combout\ : std_logic;
SIGNAL \pc1|Mux3~0_combout\ : std_logic;
SIGNAL \pc1|enableRMenor~combout\ : std_logic;
SIGNAL \rMenor|q[1]~feeder_combout\ : std_logic;
SIGNAL \rMenor|q[4]~feeder_combout\ : std_logic;
SIGNAL \rMenor|q[5]~feeder_combout\ : std_logic;
SIGNAL \rMenor|q[6]~feeder_combout\ : std_logic;
SIGNAL \rMenor|q[7]~feeder_combout\ : std_logic;
SIGNAL \po1|rg|q[0]~1_combout\ : std_logic;
SIGNAL \pc1|Mux4~0_combout\ : std_logic;
SIGNAL \pc1|Mux5~0_combout\ : std_logic;
SIGNAL \pc1|enableQTD~combout\ : std_logic;
SIGNAL \po1|rg|q[0]~0_combout\ : std_logic;
SIGNAL \po1|smd|Add0~1_sumout\ : std_logic;
SIGNAL \po1|smd|Add0~2\ : std_logic;
SIGNAL \po1|smd|Add0~5_sumout\ : std_logic;
SIGNAL \po1|smd|Add0~6\ : std_logic;
SIGNAL \po1|smd|Add0~9_sumout\ : std_logic;
SIGNAL \po1|smd|Add0~10\ : std_logic;
SIGNAL \po1|smd|Add0~13_sumout\ : std_logic;
SIGNAL \po1|smd|Add0~14\ : std_logic;
SIGNAL \po1|smd|Add0~17_sumout\ : std_logic;
SIGNAL \po1|smd|Add0~18\ : std_logic;
SIGNAL \po1|smd|Add0~21_sumout\ : std_logic;
SIGNAL \po1|smd|Add0~22\ : std_logic;
SIGNAL \po1|smd|Add0~25_sumout\ : std_logic;
SIGNAL \rMaior|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \po1|r1|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ft|state_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \rMenor|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \rgM|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \po1|rgMenor|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \po1|rgMaior|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \po1|rg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pc1|lerMem\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \po1|rgMenor|ALT_INV_q\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \po1|rgMaior|ALT_INV_q\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pc1|ALT_INV_enabler1~combout\ : std_logic;
SIGNAL \pc1|ALT_INV_lerMem\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pc1|ALT_INV_enableQTD~combout\ : std_logic;
SIGNAL \pc1|ALT_INV_tx~combout\ : std_logic;
SIGNAL \pc1|ALT_INV_enableRMenor~combout\ : std_logic;
SIGNAL \pc1|ALT_INV_enableRMaior~combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \LM|ALT_INV_WideNor0~3_combout\ : std_logic;
SIGNAL \LM|ALT_INV_Selector6~2_combout\ : std_logic;
SIGNAL \LM|ALT_INV_Selector5~2_combout\ : std_logic;
SIGNAL \LM|ALT_INV_WideNor0~2_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \LM|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \LM|ALT_INV_WideNor0~1_combout\ : std_logic;
SIGNAL \LM|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \LM|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \LM|ALT_INV_WideNor0~0_combout\ : std_logic;
SIGNAL \LM|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \LM|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \LM|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \LM|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \LM|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \LM|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \LM|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \po1|cmpMenor|ALT_INV_lt~1_combout\ : std_logic;
SIGNAL \po1|cmpMenor|ALT_INV_lt~0_combout\ : std_logic;
SIGNAL \po1|cmpMenor|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \po1|cmpMenor|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ft|ALT_INV_state_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \pc1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \po1|cmpMaior|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \po1|cmpMaior|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \po1|r1|ALT_INV_q\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \po1|cmpMaior|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \po1|rg|ALT_INV_q\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_clearn <= clearn;
maior <= ww_maior;
menor <= ww_menor;
qtdMaior <= ww_qtdMaior;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\po1|rgMenor|ALT_INV_q\(5) <= NOT \po1|rgMenor|q\(5);
\po1|rgMenor|ALT_INV_q\(4) <= NOT \po1|rgMenor|q\(4);
\po1|rgMenor|ALT_INV_q\(3) <= NOT \po1|rgMenor|q\(3);
\po1|rgMenor|ALT_INV_q\(2) <= NOT \po1|rgMenor|q\(2);
\po1|rgMenor|ALT_INV_q\(1) <= NOT \po1|rgMenor|q\(1);
\po1|rgMenor|ALT_INV_q\(0) <= NOT \po1|rgMenor|q\(0);
\po1|rgMaior|ALT_INV_q\(6) <= NOT \po1|rgMaior|q\(6);
\po1|rgMaior|ALT_INV_q\(5) <= NOT \po1|rgMaior|q\(5);
\po1|rgMaior|ALT_INV_q\(4) <= NOT \po1|rgMaior|q\(4);
\po1|rgMaior|ALT_INV_q\(3) <= NOT \po1|rgMaior|q\(3);
\po1|rgMaior|ALT_INV_q\(2) <= NOT \po1|rgMaior|q\(2);
\po1|rgMaior|ALT_INV_q\(1) <= NOT \po1|rgMaior|q\(1);
\po1|rgMaior|ALT_INV_q\(0) <= NOT \po1|rgMaior|q\(0);
\pc1|ALT_INV_enabler1~combout\ <= NOT \pc1|enabler1~combout\;
\pc1|ALT_INV_lerMem\(4) <= NOT \pc1|lerMem\(4);
\pc1|ALT_INV_lerMem\(3) <= NOT \pc1|lerMem\(3);
\pc1|ALT_INV_lerMem\(5) <= NOT \pc1|lerMem\(5);
\pc1|ALT_INV_lerMem\(1) <= NOT \pc1|lerMem\(1);
\pc1|ALT_INV_lerMem\(2) <= NOT \pc1|lerMem\(2);
\pc1|ALT_INV_lerMem\(8) <= NOT \pc1|lerMem\(8);
\pc1|ALT_INV_lerMem\(7) <= NOT \pc1|lerMem\(7);
\pc1|ALT_INV_lerMem\(6) <= NOT \pc1|lerMem\(6);
\pc1|ALT_INV_lerMem\(0) <= NOT \pc1|lerMem\(0);
\pc1|ALT_INV_lerMem\(9) <= NOT \pc1|lerMem\(9);
\pc1|ALT_INV_enableQTD~combout\ <= NOT \pc1|enableQTD~combout\;
\pc1|ALT_INV_tx~combout\ <= NOT \pc1|tx~combout\;
\pc1|ALT_INV_enableRMenor~combout\ <= NOT \pc1|enableRMenor~combout\;
\pc1|ALT_INV_enableRMaior~combout\ <= NOT \pc1|enableRMaior~combout\;
\pc1|ALT_INV_Mux1~0_combout\ <= NOT \pc1|Mux1~0_combout\;
\pc1|ALT_INV_Mux29~0_combout\ <= NOT \pc1|Mux29~0_combout\;
\LM|ALT_INV_WideNor0~3_combout\ <= NOT \LM|WideNor0~3_combout\;
\LM|ALT_INV_Selector6~2_combout\ <= NOT \LM|Selector6~2_combout\;
\LM|ALT_INV_Selector5~2_combout\ <= NOT \LM|Selector5~2_combout\;
\LM|ALT_INV_WideNor0~2_combout\ <= NOT \LM|WideNor0~2_combout\;
\pc1|ALT_INV_Mux28~0_combout\ <= NOT \pc1|Mux28~0_combout\;
\pc1|ALT_INV_Mux17~0_combout\ <= NOT \pc1|Mux17~0_combout\;
\pc1|ALT_INV_Mux15~0_combout\ <= NOT \pc1|Mux15~0_combout\;
\pc1|ALT_INV_Mux14~0_combout\ <= NOT \pc1|Mux14~0_combout\;
\pc1|ALT_INV_Mux19~0_combout\ <= NOT \pc1|Mux19~0_combout\;
\pc1|ALT_INV_Mux11~0_combout\ <= NOT \pc1|Mux11~0_combout\;
\pc1|ALT_INV_Mux10~0_combout\ <= NOT \pc1|Mux10~0_combout\;
\pc1|ALT_INV_Mux13~0_combout\ <= NOT \pc1|Mux13~0_combout\;
\pc1|ALT_INV_Mux12~0_combout\ <= NOT \pc1|Mux12~0_combout\;
\pc1|ALT_INV_Mux25~0_combout\ <= NOT \pc1|Mux25~0_combout\;
\pc1|ALT_INV_Mux23~0_combout\ <= NOT \pc1|Mux23~0_combout\;
\pc1|ALT_INV_Mux22~0_combout\ <= NOT \pc1|Mux22~0_combout\;
\pc1|ALT_INV_Mux21~0_combout\ <= NOT \pc1|Mux21~0_combout\;
\pc1|ALT_INV_Mux20~0_combout\ <= NOT \pc1|Mux20~0_combout\;
\pc1|ALT_INV_Mux9~0_combout\ <= NOT \pc1|Mux9~0_combout\;
\pc1|ALT_INV_Mux8~0_combout\ <= NOT \pc1|Mux8~0_combout\;
\pc1|ALT_INV_Mux27~0_combout\ <= NOT \pc1|Mux27~0_combout\;
\pc1|ALT_INV_Mux24~0_combout\ <= NOT \pc1|Mux24~0_combout\;
\pc1|ALT_INV_Mux5~0_combout\ <= NOT \pc1|Mux5~0_combout\;
\pc1|ALT_INV_Mux4~0_combout\ <= NOT \pc1|Mux4~0_combout\;
\pc1|ALT_INV_Mux7~0_combout\ <= NOT \pc1|Mux7~0_combout\;
\LM|ALT_INV_Equal4~0_combout\ <= NOT \LM|Equal4~0_combout\;
\LM|ALT_INV_WideNor0~1_combout\ <= NOT \LM|WideNor0~1_combout\;
\LM|ALT_INV_Equal2~0_combout\ <= NOT \LM|Equal2~0_combout\;
\LM|ALT_INV_Selector6~0_combout\ <= NOT \LM|Selector6~0_combout\;
\LM|ALT_INV_WideNor0~0_combout\ <= NOT \LM|WideNor0~0_combout\;
\LM|ALT_INV_Selector5~0_combout\ <= NOT \LM|Selector5~0_combout\;
\LM|ALT_INV_Selector7~0_combout\ <= NOT \LM|Selector7~0_combout\;
\LM|ALT_INV_Equal1~1_combout\ <= NOT \LM|Equal1~1_combout\;
\LM|ALT_INV_Equal5~0_combout\ <= NOT \LM|Equal5~0_combout\;
\LM|ALT_INV_Equal6~0_combout\ <= NOT \LM|Equal6~0_combout\;
\LM|ALT_INV_Equal0~0_combout\ <= NOT \LM|Equal0~0_combout\;
\LM|ALT_INV_Equal1~0_combout\ <= NOT \LM|Equal1~0_combout\;
\pc1|ALT_INV_Mux3~0_combout\ <= NOT \pc1|Mux3~0_combout\;
\pc1|ALT_INV_Mux2~0_combout\ <= NOT \pc1|Mux2~0_combout\;
\po1|cmpMenor|ALT_INV_lt~1_combout\ <= NOT \po1|cmpMenor|lt~1_combout\;
\po1|cmpMenor|ALT_INV_lt~0_combout\ <= NOT \po1|cmpMenor|lt~0_combout\;
\po1|cmpMenor|ALT_INV_LessThan0~1_combout\ <= NOT \po1|cmpMenor|LessThan0~1_combout\;
\po1|cmpMenor|ALT_INV_LessThan0~0_combout\ <= NOT \po1|cmpMenor|LessThan0~0_combout\;
\ft|ALT_INV_state_reg\(4) <= NOT \ft|state_reg\(4);
\ft|ALT_INV_state_reg\(5) <= NOT \ft|state_reg\(5);
\ft|ALT_INV_state_reg\(3) <= NOT \ft|state_reg\(3);
\pc1|ALT_INV_Mux0~0_combout\ <= NOT \pc1|Mux0~0_combout\;
\ft|ALT_INV_state_reg\(0) <= NOT \ft|state_reg\(0);
\ft|ALT_INV_state_reg\(1) <= NOT \ft|state_reg\(1);
\ft|ALT_INV_state_reg\(2) <= NOT \ft|state_reg\(2);
\po1|cmpMaior|ALT_INV_LessThan0~2_combout\ <= NOT \po1|cmpMaior|LessThan0~2_combout\;
\po1|cmpMaior|ALT_INV_LessThan0~1_combout\ <= NOT \po1|cmpMaior|LessThan0~1_combout\;
\po1|r1|ALT_INV_q\(1) <= NOT \po1|r1|q\(1);
\po1|r1|ALT_INV_q\(2) <= NOT \po1|r1|q\(2);
\po1|cmpMaior|ALT_INV_LessThan0~0_combout\ <= NOT \po1|cmpMaior|LessThan0~0_combout\;
\po1|r1|ALT_INV_q\(4) <= NOT \po1|r1|q\(4);
\po1|r1|ALT_INV_q\(6) <= NOT \po1|r1|q\(6);
\po1|r1|ALT_INV_q\(5) <= NOT \po1|r1|q\(5);
\po1|r1|ALT_INV_q\(3) <= NOT \po1|r1|q\(3);
\po1|r1|ALT_INV_q\(0) <= NOT \po1|r1|q\(0);
\po1|rg|ALT_INV_q\(7) <= NOT \po1|rg|q\(7);
\po1|rg|ALT_INV_q\(6) <= NOT \po1|rg|q\(6);
\po1|rg|ALT_INV_q\(5) <= NOT \po1|rg|q\(5);
\po1|rg|ALT_INV_q\(4) <= NOT \po1|rg|q\(4);
\po1|rg|ALT_INV_q\(3) <= NOT \po1|rg|q\(3);
\po1|rg|ALT_INV_q\(2) <= NOT \po1|rg|q\(2);
\po1|rg|ALT_INV_q\(1) <= NOT \po1|rg|q\(1);
\po1|rg|ALT_INV_q\(0) <= NOT \po1|rg|q\(0);
\po1|rgMenor|ALT_INV_q\(6) <= NOT \po1|rgMenor|q\(6);

-- Location: IOOBUF_X89_Y36_N39
\maior[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rMaior|q\(0),
	devoe => ww_devoe,
	o => ww_maior(0));

-- Location: IOOBUF_X89_Y6_N22
\maior[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rMaior|q\(1),
	devoe => ww_devoe,
	o => ww_maior(1));

-- Location: IOOBUF_X89_Y35_N45
\maior[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rMaior|q\(2),
	devoe => ww_devoe,
	o => ww_maior(2));

-- Location: IOOBUF_X89_Y9_N56
\maior[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rMaior|q\(3),
	devoe => ww_devoe,
	o => ww_maior(3));

-- Location: IOOBUF_X89_Y36_N22
\maior[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rMaior|q\(4),
	devoe => ww_devoe,
	o => ww_maior(4));

-- Location: IOOBUF_X89_Y9_N39
\maior[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rMaior|q\(5),
	devoe => ww_devoe,
	o => ww_maior(5));

-- Location: IOOBUF_X89_Y9_N5
\maior[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rMaior|q\(6),
	devoe => ww_devoe,
	o => ww_maior(6));

-- Location: IOOBUF_X89_Y37_N22
\maior[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rMaior|q\(7),
	devoe => ww_devoe,
	o => ww_maior(7));

-- Location: IOOBUF_X89_Y4_N79
\menor[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rMenor|q\(0),
	devoe => ww_devoe,
	o => ww_menor(0));

-- Location: IOOBUF_X89_Y6_N5
\menor[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rMenor|q\(1),
	devoe => ww_devoe,
	o => ww_menor(1));

-- Location: IOOBUF_X89_Y4_N45
\menor[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rMenor|q\(2),
	devoe => ww_devoe,
	o => ww_menor(2));

-- Location: IOOBUF_X89_Y4_N96
\menor[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rMenor|q\(3),
	devoe => ww_devoe,
	o => ww_menor(3));

-- Location: IOOBUF_X89_Y36_N5
\menor[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rMenor|q\(4),
	devoe => ww_devoe,
	o => ww_menor(4));

-- Location: IOOBUF_X89_Y8_N56
\menor[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rMenor|q\(5),
	devoe => ww_devoe,
	o => ww_menor(5));

-- Location: IOOBUF_X89_Y8_N22
\menor[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rMenor|q\(6),
	devoe => ww_devoe,
	o => ww_menor(6));

-- Location: IOOBUF_X89_Y8_N5
\menor[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rMenor|q\(7),
	devoe => ww_devoe,
	o => ww_menor(7));

-- Location: IOOBUF_X89_Y6_N56
\qtdMaior[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rgM|q\(0),
	devoe => ww_devoe,
	o => ww_qtdMaior(0));

-- Location: IOOBUF_X80_Y81_N19
\qtdMaior[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rgM|q\(1),
	devoe => ww_devoe,
	o => ww_qtdMaior(1));

-- Location: IOOBUF_X89_Y36_N56
\qtdMaior[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rgM|q\(2),
	devoe => ww_devoe,
	o => ww_qtdMaior(2));

-- Location: IOOBUF_X89_Y35_N96
\qtdMaior[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rgM|q\(3),
	devoe => ww_devoe,
	o => ww_qtdMaior(3));

-- Location: IOOBUF_X89_Y6_N39
\qtdMaior[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rgM|q\(4),
	devoe => ww_devoe,
	o => ww_qtdMaior(4));

-- Location: IOOBUF_X89_Y9_N22
\qtdMaior[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rgM|q\(5),
	devoe => ww_devoe,
	o => ww_qtdMaior(5));

-- Location: IOOBUF_X89_Y35_N79
\qtdMaior[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rgM|q\(6),
	devoe => ww_devoe,
	o => ww_qtdMaior(6));

-- Location: IOOBUF_X72_Y0_N19
\qtdMaior[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rgM|q\(7),
	devoe => ww_devoe,
	o => ww_qtdMaior(7));

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

-- Location: LABCELL_X85_Y21_N54
\ft|state_reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ft|state_reg~0_combout\ = ( \ft|state_reg\(2) & ( \ft|state_reg\(1) & ( (!\ft|state_reg\(0) & ((!\ft|state_reg\(5)) # ((!\ft|state_reg\(4) & !\ft|state_reg\(3))))) ) ) ) # ( !\ft|state_reg\(2) & ( \ft|state_reg\(1) & ( (\ft|state_reg\(0) & 
-- ((!\ft|state_reg\(5)) # ((!\ft|state_reg\(4) & !\ft|state_reg\(3))))) ) ) ) # ( \ft|state_reg\(2) & ( !\ft|state_reg\(1) & ( (!\ft|state_reg\(5)) # ((!\ft|state_reg\(4) & !\ft|state_reg\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111000001010100010100001010100010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(0),
	datab => \ft|ALT_INV_state_reg\(4),
	datac => \ft|ALT_INV_state_reg\(5),
	datad => \ft|ALT_INV_state_reg\(3),
	datae => \ft|ALT_INV_state_reg\(2),
	dataf => \ft|ALT_INV_state_reg\(1),
	combout => \ft|state_reg~0_combout\);

-- Location: IOIBUF_X89_Y8_N38
\clearn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clearn,
	o => \clearn~input_o\);

-- Location: FF_X85_Y21_N56
\ft|state_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ft|state_reg~0_combout\,
	clrn => \clearn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ft|state_reg\(2));

-- Location: LABCELL_X83_Y21_N12
\ft|state_reg~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ft|state_reg~1_combout\ = ( \ft|state_reg\(2) & ( \ft|state_reg\(4) & ( (!\ft|state_reg\(5) & (!\ft|state_reg\(1) $ (!\ft|state_reg\(0)))) ) ) ) # ( !\ft|state_reg\(2) & ( \ft|state_reg\(4) & ( (!\ft|state_reg\(5) & (!\ft|state_reg\(1) $ 
-- (!\ft|state_reg\(0)))) ) ) ) # ( \ft|state_reg\(2) & ( !\ft|state_reg\(4) & ( (!\ft|state_reg\(5) & (!\ft|state_reg\(1) $ (((!\ft|state_reg\(0)))))) # (\ft|state_reg\(5) & (!\ft|state_reg\(3) & (!\ft|state_reg\(1) $ (!\ft|state_reg\(0))))) ) ) ) # ( 
-- !\ft|state_reg\(2) & ( !\ft|state_reg\(4) & ( (!\ft|state_reg\(1) & (((\ft|state_reg\(0))))) # (\ft|state_reg\(1) & (!\ft|state_reg\(0) & ((!\ft|state_reg\(5)) # (!\ft|state_reg\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001011001100001100101100100000100010100010000010001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(5),
	datab => \ft|ALT_INV_state_reg\(1),
	datac => \ft|ALT_INV_state_reg\(3),
	datad => \ft|ALT_INV_state_reg\(0),
	datae => \ft|ALT_INV_state_reg\(2),
	dataf => \ft|ALT_INV_state_reg\(4),
	combout => \ft|state_reg~1_combout\);

-- Location: FF_X84_Y21_N26
\ft|state_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \ft|state_reg~1_combout\,
	clrn => \clearn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ft|state_reg\(1));

-- Location: LABCELL_X85_Y21_N30
\ft|state_reg~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ft|state_reg~3_combout\ = ( \ft|state_reg\(3) & ( \ft|state_reg\(2) & ( (!\ft|state_reg\(5) & ((!\ft|state_reg\(0)) # (!\ft|state_reg\(1)))) ) ) ) # ( !\ft|state_reg\(3) & ( \ft|state_reg\(2) & ( (\ft|state_reg\(0) & (\ft|state_reg\(1) & 
-- ((!\ft|state_reg\(4)) # (!\ft|state_reg\(5))))) ) ) ) # ( \ft|state_reg\(3) & ( !\ft|state_reg\(2) & ( (!\ft|state_reg\(5)) # ((!\ft|state_reg\(4) & !\ft|state_reg\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111000000000000010101001111000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(0),
	datab => \ft|ALT_INV_state_reg\(4),
	datac => \ft|ALT_INV_state_reg\(5),
	datad => \ft|ALT_INV_state_reg\(1),
	datae => \ft|ALT_INV_state_reg\(3),
	dataf => \ft|ALT_INV_state_reg\(2),
	combout => \ft|state_reg~3_combout\);

-- Location: FF_X85_Y21_N32
\ft|state_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ft|state_reg~3_combout\,
	clrn => \clearn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ft|state_reg\(3));

-- Location: LABCELL_X85_Y21_N15
\ft|state_reg~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ft|state_reg~5_combout\ = ( \ft|state_reg\(4) & ( \ft|state_reg\(1) & ( (!\ft|state_reg\(5) & ((!\ft|state_reg\(0)) # ((!\ft|state_reg\(3)) # (!\ft|state_reg\(2))))) ) ) ) # ( !\ft|state_reg\(4) & ( \ft|state_reg\(1) & ( (!\ft|state_reg\(5) & 
-- (\ft|state_reg\(0) & (\ft|state_reg\(3) & \ft|state_reg\(2)))) ) ) ) # ( \ft|state_reg\(4) & ( !\ft|state_reg\(1) & ( !\ft|state_reg\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000101010101010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(5),
	datab => \ft|ALT_INV_state_reg\(0),
	datac => \ft|ALT_INV_state_reg\(3),
	datad => \ft|ALT_INV_state_reg\(2),
	datae => \ft|ALT_INV_state_reg\(4),
	dataf => \ft|ALT_INV_state_reg\(1),
	combout => \ft|state_reg~5_combout\);

-- Location: FF_X85_Y21_N17
\ft|state_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ft|state_reg~5_combout\,
	clrn => \clearn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ft|state_reg\(4));

-- Location: MLABCELL_X84_Y21_N0
\ft|state_reg~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ft|state_reg~4_combout\ = ( \ft|state_reg\(5) & ( \ft|state_reg\(3) & ( (!\ft|state_reg\(4) & (!\ft|state_reg\(1) & !\ft|state_reg\(2))) ) ) ) # ( !\ft|state_reg\(5) & ( \ft|state_reg\(3) & ( (\ft|state_reg\(0) & (\ft|state_reg\(4) & (\ft|state_reg\(1) & 
-- \ft|state_reg\(2)))) ) ) ) # ( \ft|state_reg\(5) & ( !\ft|state_reg\(3) & ( !\ft|state_reg\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000011100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(0),
	datab => \ft|ALT_INV_state_reg\(4),
	datac => \ft|ALT_INV_state_reg\(1),
	datad => \ft|ALT_INV_state_reg\(2),
	datae => \ft|ALT_INV_state_reg\(5),
	dataf => \ft|ALT_INV_state_reg\(3),
	combout => \ft|state_reg~4_combout\);

-- Location: FF_X84_Y21_N2
\ft|state_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ft|state_reg~4_combout\,
	clrn => \clearn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ft|state_reg\(5));

-- Location: MLABCELL_X84_Y21_N6
\ft|state_reg~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ft|state_reg~2_combout\ = ( \ft|state_reg\(4) & ( !\ft|state_reg\(0) & ( !\ft|state_reg\(5) ) ) ) # ( !\ft|state_reg\(4) & ( !\ft|state_reg\(0) & ( (!\ft|state_reg\(5)) # ((!\ft|state_reg\(3)) # ((!\ft|state_reg\(1) & !\ft|state_reg\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(5),
	datab => \ft|ALT_INV_state_reg\(1),
	datac => \ft|ALT_INV_state_reg\(3),
	datad => \ft|ALT_INV_state_reg\(2),
	datae => \ft|ALT_INV_state_reg\(4),
	dataf => \ft|ALT_INV_state_reg\(0),
	combout => \ft|state_reg~2_combout\);

-- Location: FF_X84_Y21_N35
\ft|state_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \ft|state_reg~2_combout\,
	clrn => \clearn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ft|state_reg\(0));

-- Location: MLABCELL_X84_Y21_N12
\pc1|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux24~0_combout\ = ( !\ft|state_reg\(3) & ( (!\ft|state_reg\(0) & (!\ft|state_reg\(5) & \ft|state_reg\(4))) # (\ft|state_reg\(0) & (\ft|state_reg\(5) & !\ft|state_reg\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000000000000111100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ft|ALT_INV_state_reg\(0),
	datac => \ft|ALT_INV_state_reg\(5),
	datad => \ft|ALT_INV_state_reg\(4),
	dataf => \ft|ALT_INV_state_reg\(3),
	combout => \pc1|Mux24~0_combout\);

-- Location: MLABCELL_X84_Y21_N30
\pc1|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux25~0_combout\ = ( \ft|state_reg\(5) & ( \ft|state_reg\(3) & ( (((\ft|state_reg\(0) & \ft|state_reg\(1))) # (\ft|state_reg\(2))) # (\ft|state_reg\(4)) ) ) ) # ( \ft|state_reg\(5) & ( !\ft|state_reg\(3) & ( ((\ft|state_reg\(2) & (!\ft|state_reg\(0) 
-- $ (!\ft|state_reg\(1))))) # (\ft|state_reg\(4)) ) ) ) # ( !\ft|state_reg\(5) & ( !\ft|state_reg\(3) & ( (\ft|state_reg\(4) & (!\ft|state_reg\(1) & !\ft|state_reg\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010101010111110100000000000000000101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(4),
	datab => \ft|ALT_INV_state_reg\(0),
	datac => \ft|ALT_INV_state_reg\(1),
	datad => \ft|ALT_INV_state_reg\(2),
	datae => \ft|ALT_INV_state_reg\(5),
	dataf => \ft|ALT_INV_state_reg\(3),
	combout => \pc1|Mux25~0_combout\);

-- Location: MLABCELL_X84_Y21_N48
\pc1|lerMem[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|lerMem\(8) = ( \pc1|Mux25~0_combout\ & ( \pc1|Mux24~0_combout\ ) ) # ( !\pc1|Mux25~0_combout\ & ( \pc1|lerMem\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pc1|ALT_INV_lerMem\(8),
	datad => \pc1|ALT_INV_Mux24~0_combout\,
	dataf => \pc1|ALT_INV_Mux25~0_combout\,
	combout => \pc1|lerMem\(8));

-- Location: LABCELL_X81_Y21_N9
\pc1|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux8~0_combout\ = ( \ft|state_reg\(2) & ( (!\ft|state_reg\(0)) # (\ft|state_reg\(5)) ) ) # ( !\ft|state_reg\(2) & ( (\ft|state_reg\(5)) # (\ft|state_reg\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(0),
	datad => \ft|ALT_INV_state_reg\(5),
	dataf => \ft|ALT_INV_state_reg\(2),
	combout => \pc1|Mux8~0_combout\);

-- Location: MLABCELL_X84_Y21_N27
\pc1|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux9~0_combout\ = ( \ft|state_reg\(5) & ( \ft|state_reg\(0) & ( ((\ft|state_reg\(3) & ((\ft|state_reg\(1)) # (\ft|state_reg\(2))))) # (\ft|state_reg\(4)) ) ) ) # ( !\ft|state_reg\(5) & ( \ft|state_reg\(0) & ( (!\ft|state_reg\(3) & (!\ft|state_reg\(1) 
-- & (!\ft|state_reg\(4) $ (\ft|state_reg\(2))))) ) ) ) # ( \ft|state_reg\(5) & ( !\ft|state_reg\(0) & ( ((\ft|state_reg\(3) & \ft|state_reg\(2))) # (\ft|state_reg\(4)) ) ) ) # ( !\ft|state_reg\(5) & ( !\ft|state_reg\(0) & ( (!\ft|state_reg\(3) & 
-- ((!\ft|state_reg\(4) & (!\ft|state_reg\(2) & !\ft|state_reg\(1))) # (\ft|state_reg\(4) & (\ft|state_reg\(2) & \ft|state_reg\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000100010101110101011110000100000000000101011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(4),
	datab => \ft|ALT_INV_state_reg\(3),
	datac => \ft|ALT_INV_state_reg\(2),
	datad => \ft|ALT_INV_state_reg\(1),
	datae => \ft|ALT_INV_state_reg\(5),
	dataf => \ft|ALT_INV_state_reg\(0),
	combout => \pc1|Mux9~0_combout\);

-- Location: MLABCELL_X82_Y21_N12
\pc1|lerMem[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|lerMem\(0) = (!\pc1|Mux9~0_combout\ & (\pc1|lerMem\(0))) # (\pc1|Mux9~0_combout\ & ((!\pc1|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111110000001100111111000000110011111100000011001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pc1|ALT_INV_lerMem\(0),
	datac => \pc1|ALT_INV_Mux8~0_combout\,
	datad => \pc1|ALT_INV_Mux9~0_combout\,
	combout => \pc1|lerMem\(0));

-- Location: LABCELL_X85_Y21_N18
\pc1|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux27~0_combout\ = ( \ft|state_reg\(5) & ( \ft|state_reg\(2) & ( (((\ft|state_reg\(0) & \ft|state_reg\(1))) # (\ft|state_reg\(4))) # (\ft|state_reg\(3)) ) ) ) # ( \ft|state_reg\(5) & ( !\ft|state_reg\(2) & ( ((\ft|state_reg\(3) & (!\ft|state_reg\(0) 
-- $ (\ft|state_reg\(1))))) # (\ft|state_reg\(4)) ) ) ) # ( !\ft|state_reg\(5) & ( !\ft|state_reg\(2) & ( (!\ft|state_reg\(3) & (\ft|state_reg\(1) & \ft|state_reg\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100001000011111111100000000000000000011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(0),
	datab => \ft|ALT_INV_state_reg\(3),
	datac => \ft|ALT_INV_state_reg\(1),
	datad => \ft|ALT_INV_state_reg\(4),
	datae => \ft|ALT_INV_state_reg\(5),
	dataf => \ft|ALT_INV_state_reg\(2),
	combout => \pc1|Mux27~0_combout\);

-- Location: MLABCELL_X84_Y21_N54
\pc1|lerMem[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|lerMem\(9) = ( \pc1|Mux27~0_combout\ & ( \pc1|Mux24~0_combout\ ) ) # ( !\pc1|Mux27~0_combout\ & ( \pc1|lerMem\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pc1|ALT_INV_lerMem\(9),
	datad => \pc1|ALT_INV_Mux24~0_combout\,
	dataf => \pc1|ALT_INV_Mux27~0_combout\,
	combout => \pc1|lerMem\(9));

-- Location: LABCELL_X85_Y21_N45
\pc1|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux20~0_combout\ = ( !\ft|state_reg\(1) & ( (!\ft|state_reg\(4) & ((!\ft|state_reg\(0) & (\ft|state_reg\(2) & !\ft|state_reg\(5))) # (\ft|state_reg\(0) & (!\ft|state_reg\(2) & \ft|state_reg\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000000001000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(0),
	datab => \ft|ALT_INV_state_reg\(2),
	datac => \ft|ALT_INV_state_reg\(4),
	datad => \ft|ALT_INV_state_reg\(5),
	dataf => \ft|ALT_INV_state_reg\(1),
	combout => \pc1|Mux20~0_combout\);

-- Location: LABCELL_X85_Y21_N24
\pc1|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux21~0_combout\ = ( \ft|state_reg\(5) & ( \ft|state_reg\(1) & ( (!\ft|state_reg\(3) $ (((\ft|state_reg\(0)) # (\ft|state_reg\(2))))) # (\ft|state_reg\(4)) ) ) ) # ( \ft|state_reg\(5) & ( !\ft|state_reg\(1) & ( ((!\ft|state_reg\(2) & 
-- (!\ft|state_reg\(3) & \ft|state_reg\(0))) # (\ft|state_reg\(2) & (\ft|state_reg\(3)))) # (\ft|state_reg\(4)) ) ) ) # ( !\ft|state_reg\(5) & ( !\ft|state_reg\(1) & ( (\ft|state_reg\(2) & (\ft|state_reg\(3) & !\ft|state_reg\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000110011111111100000000000000001001001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(2),
	datab => \ft|ALT_INV_state_reg\(3),
	datac => \ft|ALT_INV_state_reg\(0),
	datad => \ft|ALT_INV_state_reg\(4),
	datae => \ft|ALT_INV_state_reg\(5),
	dataf => \ft|ALT_INV_state_reg\(1),
	combout => \pc1|Mux21~0_combout\);

-- Location: MLABCELL_X84_Y21_N45
\pc1|lerMem[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|lerMem\(6) = ( \pc1|Mux21~0_combout\ & ( \pc1|Mux20~0_combout\ ) ) # ( !\pc1|Mux21~0_combout\ & ( \pc1|lerMem\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pc1|ALT_INV_Mux20~0_combout\,
	datad => \pc1|ALT_INV_lerMem\(6),
	dataf => \pc1|ALT_INV_Mux21~0_combout\,
	combout => \pc1|lerMem\(6));

-- Location: LABCELL_X81_Y21_N30
\pc1|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux22~0_combout\ = ( \ft|state_reg\(3) & ( (!\ft|state_reg\(0) & (!\ft|state_reg\(5) & !\ft|state_reg\(4))) ) ) # ( !\ft|state_reg\(3) & ( (\ft|state_reg\(0) & (\ft|state_reg\(5) & !\ft|state_reg\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(0),
	datac => \ft|ALT_INV_state_reg\(5),
	datad => \ft|ALT_INV_state_reg\(4),
	dataf => \ft|ALT_INV_state_reg\(3),
	combout => \pc1|Mux22~0_combout\);

-- Location: LABCELL_X85_Y21_N0
\pc1|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux23~0_combout\ = ( \ft|state_reg\(5) & ( \ft|state_reg\(3) & ( (((\ft|state_reg\(0) & \ft|state_reg\(1))) # (\ft|state_reg\(4))) # (\ft|state_reg\(2)) ) ) ) # ( !\ft|state_reg\(5) & ( \ft|state_reg\(3) & ( (\ft|state_reg\(2) & (!\ft|state_reg\(4) & 
-- \ft|state_reg\(1))) ) ) ) # ( \ft|state_reg\(5) & ( !\ft|state_reg\(3) & ( ((!\ft|state_reg\(2) & (\ft|state_reg\(0) & \ft|state_reg\(1))) # (\ft|state_reg\(2) & (!\ft|state_reg\(0) & !\ft|state_reg\(1)))) # (\ft|state_reg\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011100110011101100000000010001000111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(2),
	datab => \ft|ALT_INV_state_reg\(4),
	datac => \ft|ALT_INV_state_reg\(0),
	datad => \ft|ALT_INV_state_reg\(1),
	datae => \ft|ALT_INV_state_reg\(5),
	dataf => \ft|ALT_INV_state_reg\(3),
	combout => \pc1|Mux23~0_combout\);

-- Location: LABCELL_X83_Y21_N0
\pc1|lerMem[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|lerMem\(7) = ( \pc1|Mux23~0_combout\ & ( \pc1|Mux22~0_combout\ ) ) # ( !\pc1|Mux23~0_combout\ & ( \pc1|lerMem\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pc1|ALT_INV_Mux22~0_combout\,
	datad => \pc1|ALT_INV_lerMem\(7),
	dataf => \pc1|ALT_INV_Mux23~0_combout\,
	combout => \pc1|lerMem\(7));

-- Location: MLABCELL_X82_Y21_N15
\LM|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Equal1~0_combout\ = ( !\pc1|lerMem\(7) & ( (!\pc1|lerMem\(8) & (!\pc1|lerMem\(0) & (!\pc1|lerMem\(9) & !\pc1|lerMem\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|ALT_INV_lerMem\(8),
	datab => \pc1|ALT_INV_lerMem\(0),
	datac => \pc1|ALT_INV_lerMem\(9),
	datad => \pc1|ALT_INV_lerMem\(6),
	dataf => \pc1|ALT_INV_lerMem\(7),
	combout => \LM|Equal1~0_combout\);

-- Location: LABCELL_X81_Y21_N33
\pc1|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux12~0_combout\ = ( \ft|state_reg\(2) & ( (!\ft|state_reg\(0) & !\ft|state_reg\(5)) ) ) # ( !\ft|state_reg\(2) & ( (\ft|state_reg\(0) & !\ft|state_reg\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(0),
	datad => \ft|ALT_INV_state_reg\(5),
	dataf => \ft|ALT_INV_state_reg\(2),
	combout => \pc1|Mux12~0_combout\);

-- Location: LABCELL_X81_Y21_N18
\pc1|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux13~0_combout\ = ( \ft|state_reg\(5) & ( \ft|state_reg\(3) & ( (((\ft|state_reg\(0) & \ft|state_reg\(1))) # (\ft|state_reg\(4))) # (\ft|state_reg\(2)) ) ) ) # ( !\ft|state_reg\(5) & ( \ft|state_reg\(3) & ( (!\ft|state_reg\(2) & (\ft|state_reg\(4) & 
-- (!\ft|state_reg\(0) $ (!\ft|state_reg\(1))))) ) ) ) # ( \ft|state_reg\(5) & ( !\ft|state_reg\(3) & ( \ft|state_reg\(4) ) ) ) # ( !\ft|state_reg\(5) & ( !\ft|state_reg\(3) & ( (\ft|state_reg\(2) & (!\ft|state_reg\(4) & !\ft|state_reg\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000000011110000111100000010000010000101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(2),
	datab => \ft|ALT_INV_state_reg\(0),
	datac => \ft|ALT_INV_state_reg\(4),
	datad => \ft|ALT_INV_state_reg\(1),
	datae => \ft|ALT_INV_state_reg\(5),
	dataf => \ft|ALT_INV_state_reg\(3),
	combout => \pc1|Mux13~0_combout\);

-- Location: LABCELL_X81_Y21_N6
\pc1|lerMem[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|lerMem\(2) = ( \pc1|Mux13~0_combout\ & ( \pc1|Mux12~0_combout\ ) ) # ( !\pc1|Mux13~0_combout\ & ( \pc1|lerMem\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pc1|ALT_INV_lerMem\(2),
	datac => \pc1|ALT_INV_Mux12~0_combout\,
	dataf => \pc1|ALT_INV_Mux13~0_combout\,
	combout => \pc1|lerMem\(2));

-- Location: LABCELL_X85_Y21_N42
\pc1|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux14~0_combout\ = ( \ft|state_reg\(0) & ( (!\ft|state_reg\(2) & (!\ft|state_reg\(5) & \ft|state_reg\(1))) ) ) # ( !\ft|state_reg\(0) & ( (\ft|state_reg\(2) & (!\ft|state_reg\(5) & \ft|state_reg\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ft|ALT_INV_state_reg\(2),
	datac => \ft|ALT_INV_state_reg\(5),
	datad => \ft|ALT_INV_state_reg\(1),
	dataf => \ft|ALT_INV_state_reg\(0),
	combout => \pc1|Mux14~0_combout\);

-- Location: LABCELL_X81_Y21_N42
\pc1|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux15~0_combout\ = ( \ft|state_reg\(5) & ( \ft|state_reg\(2) & ( (\ft|state_reg\(4)) # (\ft|state_reg\(3)) ) ) ) # ( !\ft|state_reg\(5) & ( \ft|state_reg\(2) & ( (!\ft|state_reg\(3) & (((!\ft|state_reg\(4) & \ft|state_reg\(1))))) # (\ft|state_reg\(3) 
-- & (!\ft|state_reg\(0) & (\ft|state_reg\(4) & !\ft|state_reg\(1)))) ) ) ) # ( \ft|state_reg\(5) & ( !\ft|state_reg\(2) & ( ((\ft|state_reg\(0) & (\ft|state_reg\(3) & \ft|state_reg\(1)))) # (\ft|state_reg\(4)) ) ) ) # ( !\ft|state_reg\(5) & ( 
-- !\ft|state_reg\(2) & ( (\ft|state_reg\(0) & (\ft|state_reg\(3) & (\ft|state_reg\(4) & \ft|state_reg\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000011110001111100000010110000000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(0),
	datab => \ft|ALT_INV_state_reg\(3),
	datac => \ft|ALT_INV_state_reg\(4),
	datad => \ft|ALT_INV_state_reg\(1),
	datae => \ft|ALT_INV_state_reg\(5),
	dataf => \ft|ALT_INV_state_reg\(2),
	combout => \pc1|Mux15~0_combout\);

-- Location: LABCELL_X83_Y21_N39
\pc1|lerMem[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|lerMem\(3) = ( \pc1|Mux15~0_combout\ & ( \pc1|Mux14~0_combout\ ) ) # ( !\pc1|Mux15~0_combout\ & ( \pc1|lerMem\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pc1|ALT_INV_Mux14~0_combout\,
	datad => \pc1|ALT_INV_lerMem\(3),
	dataf => \pc1|ALT_INV_Mux15~0_combout\,
	combout => \pc1|lerMem\(3));

-- Location: LABCELL_X81_Y21_N0
\pc1|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux19~0_combout\ = ( \ft|state_reg\(5) & ( \ft|state_reg\(1) & ( ((\ft|state_reg\(3) & ((\ft|state_reg\(0)) # (\ft|state_reg\(2))))) # (\ft|state_reg\(4)) ) ) ) # ( !\ft|state_reg\(5) & ( \ft|state_reg\(1) & ( (\ft|state_reg\(3) & 
-- ((!\ft|state_reg\(2) & (!\ft|state_reg\(4))) # (\ft|state_reg\(2) & (\ft|state_reg\(4) & \ft|state_reg\(0))))) ) ) ) # ( \ft|state_reg\(5) & ( !\ft|state_reg\(1) & ( ((!\ft|state_reg\(2) & (!\ft|state_reg\(3) & !\ft|state_reg\(0))) # (\ft|state_reg\(2) & 
-- (\ft|state_reg\(3)))) # (\ft|state_reg\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100111110001111100100000001000010001111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(2),
	datab => \ft|ALT_INV_state_reg\(3),
	datac => \ft|ALT_INV_state_reg\(4),
	datad => \ft|ALT_INV_state_reg\(0),
	datae => \ft|ALT_INV_state_reg\(5),
	dataf => \ft|ALT_INV_state_reg\(1),
	combout => \pc1|Mux19~0_combout\);

-- Location: MLABCELL_X82_Y21_N48
\pc1|lerMem[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|lerMem\(5) = ( \pc1|Mux19~0_combout\ & ( !\pc1|Mux8~0_combout\ ) ) # ( !\pc1|Mux19~0_combout\ & ( \pc1|lerMem\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pc1|ALT_INV_Mux8~0_combout\,
	datad => \pc1|ALT_INV_lerMem\(5),
	dataf => \pc1|ALT_INV_Mux19~0_combout\,
	combout => \pc1|lerMem\(5));

-- Location: MLABCELL_X84_Y21_N36
\pc1|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux10~0_combout\ = ( \ft|state_reg\(0) & ( (!\ft|state_reg\(5) & (\ft|state_reg\(1) & \ft|state_reg\(2))) ) ) # ( !\ft|state_reg\(0) & ( (!\ft|state_reg\(5) & (\ft|state_reg\(1) & !\ft|state_reg\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(5),
	datac => \ft|ALT_INV_state_reg\(1),
	datad => \ft|ALT_INV_state_reg\(2),
	dataf => \ft|ALT_INV_state_reg\(0),
	combout => \pc1|Mux10~0_combout\);

-- Location: LABCELL_X85_Y21_N36
\pc1|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux11~0_combout\ = ( \ft|state_reg\(5) & ( \ft|state_reg\(3) & ( (((\ft|state_reg\(0) & \ft|state_reg\(1))) # (\ft|state_reg\(4))) # (\ft|state_reg\(2)) ) ) ) # ( !\ft|state_reg\(5) & ( \ft|state_reg\(3) & ( (!\ft|state_reg\(2) & (\ft|state_reg\(4) & 
-- (!\ft|state_reg\(0) & !\ft|state_reg\(1)))) ) ) ) # ( \ft|state_reg\(5) & ( !\ft|state_reg\(3) & ( \ft|state_reg\(4) ) ) ) # ( !\ft|state_reg\(5) & ( !\ft|state_reg\(3) & ( (\ft|state_reg\(1) & ((!\ft|state_reg\(2) & (!\ft|state_reg\(4))) # 
-- (\ft|state_reg\(2) & (\ft|state_reg\(4) & \ft|state_reg\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001001001100110011001100100000000000000111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(2),
	datab => \ft|ALT_INV_state_reg\(4),
	datac => \ft|ALT_INV_state_reg\(0),
	datad => \ft|ALT_INV_state_reg\(1),
	datae => \ft|ALT_INV_state_reg\(5),
	dataf => \ft|ALT_INV_state_reg\(3),
	combout => \pc1|Mux11~0_combout\);

-- Location: LABCELL_X83_Y21_N54
\pc1|lerMem[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|lerMem\(1) = ( \pc1|Mux11~0_combout\ & ( \pc1|Mux10~0_combout\ ) ) # ( !\pc1|Mux11~0_combout\ & ( \pc1|lerMem\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pc1|ALT_INV_Mux10~0_combout\,
	datad => \pc1|ALT_INV_lerMem\(1),
	dataf => \pc1|ALT_INV_Mux11~0_combout\,
	combout => \pc1|lerMem\(1));

-- Location: LABCELL_X85_Y21_N48
\pc1|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux17~0_combout\ = ( \ft|state_reg\(5) & ( \ft|state_reg\(0) & ( ((\ft|state_reg\(3) & ((\ft|state_reg\(1)) # (\ft|state_reg\(2))))) # (\ft|state_reg\(4)) ) ) ) # ( !\ft|state_reg\(5) & ( \ft|state_reg\(0) & ( (\ft|state_reg\(3) & (!\ft|state_reg\(1) 
-- & (!\ft|state_reg\(2) $ (\ft|state_reg\(4))))) ) ) ) # ( \ft|state_reg\(5) & ( !\ft|state_reg\(0) & ( ((\ft|state_reg\(2) & \ft|state_reg\(3))) # (\ft|state_reg\(4)) ) ) ) # ( !\ft|state_reg\(5) & ( !\ft|state_reg\(0) & ( (\ft|state_reg\(3) & 
-- ((!\ft|state_reg\(2) & (!\ft|state_reg\(1) & !\ft|state_reg\(4))) # (\ft|state_reg\(2) & (\ft|state_reg\(1) & \ft|state_reg\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000001000100011111111100100000000100000001001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(2),
	datab => \ft|ALT_INV_state_reg\(3),
	datac => \ft|ALT_INV_state_reg\(1),
	datad => \ft|ALT_INV_state_reg\(4),
	datae => \ft|ALT_INV_state_reg\(5),
	dataf => \ft|ALT_INV_state_reg\(0),
	combout => \pc1|Mux17~0_combout\);

-- Location: MLABCELL_X82_Y21_N45
\pc1|lerMem[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|lerMem\(4) = ( \pc1|Mux8~0_combout\ & ( (\pc1|lerMem\(4) & !\pc1|Mux17~0_combout\) ) ) # ( !\pc1|Mux8~0_combout\ & ( (\pc1|Mux17~0_combout\) # (\pc1|lerMem\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pc1|ALT_INV_lerMem\(4),
	datad => \pc1|ALT_INV_Mux17~0_combout\,
	dataf => \pc1|ALT_INV_Mux8~0_combout\,
	combout => \pc1|lerMem\(4));

-- Location: LABCELL_X83_Y21_N6
\LM|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Equal0~0_combout\ = ( !\pc1|lerMem\(1) & ( !\pc1|lerMem\(4) & ( (!\pc1|lerMem\(2) & (!\pc1|lerMem\(3) & (!\pc1|lerMem\(9) & !\pc1|lerMem\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|ALT_INV_lerMem\(2),
	datab => \pc1|ALT_INV_lerMem\(3),
	datac => \pc1|ALT_INV_lerMem\(9),
	datad => \pc1|ALT_INV_lerMem\(5),
	datae => \pc1|ALT_INV_lerMem\(1),
	dataf => \pc1|ALT_INV_lerMem\(4),
	combout => \LM|Equal0~0_combout\);

-- Location: LABCELL_X83_Y21_N30
\LM|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Equal6~0_combout\ = ( \LM|Equal0~0_combout\ & ( (!\pc1|lerMem\(8) & (!\pc1|lerMem\(0) & (!\pc1|lerMem\(7) & \pc1|lerMem\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|ALT_INV_lerMem\(8),
	datab => \pc1|ALT_INV_lerMem\(0),
	datac => \pc1|ALT_INV_lerMem\(7),
	datad => \pc1|ALT_INV_lerMem\(6),
	dataf => \LM|ALT_INV_Equal0~0_combout\,
	combout => \LM|Equal6~0_combout\);

-- Location: LABCELL_X83_Y21_N57
\LM|Selector6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Selector6~2_combout\ = ( !\pc1|lerMem\(8) & ( (!\pc1|lerMem\(1) & (!\pc1|lerMem\(2) & (!\pc1|lerMem\(7) $ (!\pc1|lerMem\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010000000000010001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|ALT_INV_lerMem\(1),
	datab => \pc1|ALT_INV_lerMem\(2),
	datac => \pc1|ALT_INV_lerMem\(7),
	datad => \pc1|ALT_INV_lerMem\(5),
	dataf => \pc1|ALT_INV_lerMem\(8),
	combout => \LM|Selector6~2_combout\);

-- Location: LABCELL_X83_Y21_N48
\LM|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Selector6~0_combout\ = ( !\pc1|lerMem\(0) & ( !\pc1|lerMem\(3) & ( (!\pc1|lerMem\(6) & (\LM|Selector6~2_combout\ & (!\pc1|lerMem\(4) & !\pc1|lerMem\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|ALT_INV_lerMem\(6),
	datab => \LM|ALT_INV_Selector6~2_combout\,
	datac => \pc1|ALT_INV_lerMem\(4),
	datad => \pc1|ALT_INV_lerMem\(9),
	datae => \pc1|ALT_INV_lerMem\(0),
	dataf => \pc1|ALT_INV_lerMem\(3),
	combout => \LM|Selector6~0_combout\);

-- Location: LABCELL_X83_Y21_N33
\LM|Selector5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Selector5~2_combout\ = ( !\pc1|lerMem\(9) & ( (!\pc1|lerMem\(1) & (!\pc1|lerMem\(5) & (!\pc1|lerMem\(8) $ (!\pc1|lerMem\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000000000011000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|ALT_INV_lerMem\(8),
	datab => \pc1|ALT_INV_lerMem\(0),
	datac => \pc1|ALT_INV_lerMem\(1),
	datad => \pc1|ALT_INV_lerMem\(5),
	dataf => \pc1|ALT_INV_lerMem\(9),
	combout => \LM|Selector5~2_combout\);

-- Location: LABCELL_X83_Y21_N18
\LM|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Selector5~0_combout\ = ( \LM|Selector5~2_combout\ & ( !\pc1|lerMem\(7) & ( (!\pc1|lerMem\(6) & (!\pc1|lerMem\(2) & (!\pc1|lerMem\(4) & !\pc1|lerMem\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|ALT_INV_lerMem\(6),
	datab => \pc1|ALT_INV_lerMem\(2),
	datac => \pc1|ALT_INV_lerMem\(4),
	datad => \pc1|ALT_INV_lerMem\(3),
	datae => \LM|ALT_INV_Selector5~2_combout\,
	dataf => \pc1|ALT_INV_lerMem\(7),
	combout => \LM|Selector5~0_combout\);

-- Location: MLABCELL_X84_Y21_N15
\LM|WideNor0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|WideNor0~3_combout\ = ( !\pc1|lerMem\(1) & ( (!\pc1|lerMem\(6) & (!\pc1|lerMem\(0) & !\pc1|lerMem\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|ALT_INV_lerMem\(6),
	datac => \pc1|ALT_INV_lerMem\(0),
	datad => \pc1|ALT_INV_lerMem\(5),
	dataf => \pc1|ALT_INV_lerMem\(1),
	combout => \LM|WideNor0~3_combout\);

-- Location: LABCELL_X83_Y21_N3
\LM|WideNor0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|WideNor0~2_combout\ = ( \pc1|lerMem\(9) & ( (!\pc1|lerMem\(7) & (!\pc1|lerMem\(3) & (!\pc1|lerMem\(4) & !\pc1|lerMem\(8)))) ) ) # ( !\pc1|lerMem\(9) & ( (!\pc1|lerMem\(7) & (!\pc1|lerMem\(3) & (\pc1|lerMem\(4) & !\pc1|lerMem\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|ALT_INV_lerMem\(7),
	datab => \pc1|ALT_INV_lerMem\(3),
	datac => \pc1|ALT_INV_lerMem\(4),
	datad => \pc1|ALT_INV_lerMem\(8),
	dataf => \pc1|ALT_INV_lerMem\(9),
	combout => \LM|WideNor0~2_combout\);

-- Location: LABCELL_X83_Y21_N24
\LM|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Equal1~1_combout\ = ( !\pc1|lerMem\(0) & ( !\pc1|lerMem\(9) & ( (!\pc1|lerMem\(6) & (!\pc1|lerMem\(5) & (!\pc1|lerMem\(7) & !\pc1|lerMem\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|ALT_INV_lerMem\(6),
	datab => \pc1|ALT_INV_lerMem\(5),
	datac => \pc1|ALT_INV_lerMem\(7),
	datad => \pc1|ALT_INV_lerMem\(8),
	datae => \pc1|ALT_INV_lerMem\(0),
	dataf => \pc1|ALT_INV_lerMem\(9),
	combout => \LM|Equal1~1_combout\);

-- Location: MLABCELL_X84_Y21_N57
\LM|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Equal2~0_combout\ = ( !\pc1|lerMem\(3) & ( (!\pc1|lerMem\(1) & (\LM|Equal1~1_combout\ & (\pc1|lerMem\(2) & !\pc1|lerMem\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|ALT_INV_lerMem\(1),
	datab => \LM|ALT_INV_Equal1~1_combout\,
	datac => \pc1|ALT_INV_lerMem\(2),
	datad => \pc1|ALT_INV_lerMem\(4),
	dataf => \pc1|ALT_INV_lerMem\(3),
	combout => \LM|Equal2~0_combout\);

-- Location: MLABCELL_X84_Y21_N18
\LM|WideNor0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|WideNor0~1_combout\ = ( \LM|WideNor0~2_combout\ & ( !\LM|Equal2~0_combout\ & ( (!\LM|Selector6~0_combout\ & (!\LM|Selector5~0_combout\ & ((!\LM|WideNor0~3_combout\) # (\pc1|lerMem\(2))))) ) ) ) # ( !\LM|WideNor0~2_combout\ & ( !\LM|Equal2~0_combout\ & 
-- ( (!\LM|Selector6~0_combout\ & !\LM|Selector5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100000001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LM|ALT_INV_Selector6~0_combout\,
	datab => \LM|ALT_INV_Selector5~0_combout\,
	datac => \LM|ALT_INV_WideNor0~3_combout\,
	datad => \pc1|ALT_INV_lerMem\(2),
	datae => \LM|ALT_INV_WideNor0~2_combout\,
	dataf => \LM|ALT_INV_Equal2~0_combout\,
	combout => \LM|WideNor0~1_combout\);

-- Location: LABCELL_X83_Y21_N36
\LM|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Selector7~0_combout\ = ( \pc1|lerMem\(1) & ( (!\pc1|lerMem\(3) & (!\pc1|lerMem\(2) & (\LM|Equal1~1_combout\ & !\pc1|lerMem\(4)))) ) ) # ( !\pc1|lerMem\(1) & ( (\pc1|lerMem\(3) & (!\pc1|lerMem\(2) & (\LM|Equal1~1_combout\ & !\pc1|lerMem\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|ALT_INV_lerMem\(3),
	datab => \pc1|ALT_INV_lerMem\(2),
	datac => \LM|ALT_INV_Equal1~1_combout\,
	datad => \pc1|ALT_INV_lerMem\(4),
	dataf => \pc1|ALT_INV_lerMem\(1),
	combout => \LM|Selector7~0_combout\);

-- Location: MLABCELL_X84_Y21_N42
\LM|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Equal5~0_combout\ = ( !\pc1|lerMem\(3) & ( (!\pc1|lerMem\(1) & (!\pc1|lerMem\(2) & (\pc1|lerMem\(5) & !\pc1|lerMem\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|ALT_INV_lerMem\(1),
	datab => \pc1|ALT_INV_lerMem\(2),
	datac => \pc1|ALT_INV_lerMem\(5),
	datad => \pc1|ALT_INV_lerMem\(4),
	dataf => \pc1|ALT_INV_lerMem\(3),
	combout => \LM|Equal5~0_combout\);

-- Location: MLABCELL_X84_Y21_N51
\LM|Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Selector7~1_combout\ = ( \LM|Equal5~0_combout\ & ( (!\LM|Equal1~0_combout\ & (!\LM|Equal6~0_combout\ & (!\LM|WideNor0~1_combout\ & !\LM|Selector7~0_combout\))) ) ) # ( !\LM|Equal5~0_combout\ & ( (!\LM|Equal6~0_combout\ & (!\LM|WideNor0~1_combout\ & 
-- !\LM|Selector7~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LM|ALT_INV_Equal1~0_combout\,
	datab => \LM|ALT_INV_Equal6~0_combout\,
	datac => \LM|ALT_INV_WideNor0~1_combout\,
	datad => \LM|ALT_INV_Selector7~0_combout\,
	dataf => \LM|ALT_INV_Equal5~0_combout\,
	combout => \LM|Selector7~1_combout\);

-- Location: LABCELL_X81_Y21_N54
\pc1|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux28~0_combout\ = ( \ft|state_reg\(3) & ( (!\ft|state_reg\(5) & (!\ft|state_reg\(0) $ (\ft|state_reg\(4)))) ) ) # ( !\ft|state_reg\(3) & ( (!\ft|state_reg\(5) & (!\ft|state_reg\(0) $ (((\ft|state_reg\(4) & \ft|state_reg\(2)))))) # (\ft|state_reg\(5) 
-- & (\ft|state_reg\(0) & (!\ft|state_reg\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100010010010100110001001001010000010100000101000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(5),
	datab => \ft|ALT_INV_state_reg\(0),
	datac => \ft|ALT_INV_state_reg\(4),
	datad => \ft|ALT_INV_state_reg\(2),
	dataf => \ft|ALT_INV_state_reg\(3),
	combout => \pc1|Mux28~0_combout\);

-- Location: LABCELL_X81_Y21_N24
\pc1|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux29~0_combout\ = ( \ft|state_reg\(3) & ( \ft|state_reg\(2) ) ) # ( !\ft|state_reg\(3) & ( \ft|state_reg\(2) & ( (!\ft|state_reg\(4)) # (((\ft|state_reg\(1)) # (\ft|state_reg\(0))) # (\ft|state_reg\(5))) ) ) ) # ( \ft|state_reg\(3) & ( 
-- !\ft|state_reg\(2) & ( ((!\ft|state_reg\(5)) # (!\ft|state_reg\(0) $ (\ft|state_reg\(1)))) # (\ft|state_reg\(4)) ) ) ) # ( !\ft|state_reg\(3) & ( !\ft|state_reg\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111011101111110111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(4),
	datab => \ft|ALT_INV_state_reg\(5),
	datac => \ft|ALT_INV_state_reg\(0),
	datad => \ft|ALT_INV_state_reg\(1),
	datae => \ft|ALT_INV_state_reg\(3),
	dataf => \ft|ALT_INV_state_reg\(2),
	combout => \pc1|Mux29~0_combout\);

-- Location: LABCELL_X81_Y21_N57
\pc1|enabler1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|enabler1~combout\ = ( \pc1|Mux29~0_combout\ & ( \pc1|Mux28~0_combout\ ) ) # ( !\pc1|Mux29~0_combout\ & ( \pc1|enabler1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pc1|ALT_INV_Mux28~0_combout\,
	datad => \pc1|ALT_INV_enabler1~combout\,
	dataf => \pc1|ALT_INV_Mux29~0_combout\,
	combout => \pc1|enabler1~combout\);

-- Location: FF_X84_Y21_N53
\po1|r1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \LM|Selector7~1_combout\,
	ena => \pc1|enabler1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|r1|q\(0));

-- Location: MLABCELL_X82_Y21_N51
\LM|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Equal4~0_combout\ = ( !\pc1|lerMem\(3) & ( (\LM|Equal1~1_combout\ & (\pc1|lerMem\(4) & (!\pc1|lerMem\(1) & !\pc1|lerMem\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LM|ALT_INV_Equal1~1_combout\,
	datab => \pc1|ALT_INV_lerMem\(4),
	datac => \pc1|ALT_INV_lerMem\(1),
	datad => \pc1|ALT_INV_lerMem\(2),
	dataf => \pc1|ALT_INV_lerMem\(3),
	combout => \LM|Equal4~0_combout\);

-- Location: MLABCELL_X82_Y21_N57
\LM|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Selector2~0_combout\ = ( \LM|Equal4~0_combout\ ) # ( !\LM|Equal4~0_combout\ & ( \LM|Equal6~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \LM|ALT_INV_Equal6~0_combout\,
	dataf => \LM|ALT_INV_Equal4~0_combout\,
	combout => \LM|Selector2~0_combout\);

-- Location: FF_X82_Y21_N59
\po1|r1|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \LM|Selector2~0_combout\,
	ena => \pc1|enabler1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|r1|q\(5));

-- Location: FF_X82_Y21_N38
\po1|rgMaior|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|r1|q\(5),
	sload => VCC,
	ena => \po1|cmpMaior|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgMaior|q\(5));

-- Location: MLABCELL_X82_Y21_N9
\LM|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Selector1~0_combout\ = ( \LM|Equal1~1_combout\ & ( (!\pc1|lerMem\(3) & (!\pc1|lerMem\(2) & (!\pc1|lerMem\(1) $ (!\pc1|lerMem\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001001000000000000100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|ALT_INV_lerMem\(1),
	datab => \pc1|ALT_INV_lerMem\(3),
	datac => \pc1|ALT_INV_lerMem\(4),
	datad => \pc1|ALT_INV_lerMem\(2),
	dataf => \LM|ALT_INV_Equal1~1_combout\,
	combout => \LM|Selector1~0_combout\);

-- Location: FF_X82_Y21_N11
\po1|r1|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \LM|Selector1~0_combout\,
	ena => \pc1|enabler1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|r1|q\(6));

-- Location: MLABCELL_X82_Y21_N18
\LM|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Selector3~0_combout\ = ( !\pc1|lerMem\(2) & ( !\pc1|lerMem\(1) & ( (\LM|Equal1~0_combout\ & (!\pc1|lerMem\(3) & (!\pc1|lerMem\(4) $ (!\pc1|lerMem\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LM|ALT_INV_Equal1~0_combout\,
	datab => \pc1|ALT_INV_lerMem\(4),
	datac => \pc1|ALT_INV_lerMem\(5),
	datad => \pc1|ALT_INV_lerMem\(3),
	datae => \pc1|ALT_INV_lerMem\(2),
	dataf => \pc1|ALT_INV_lerMem\(1),
	combout => \LM|Selector3~0_combout\);

-- Location: FF_X82_Y21_N20
\po1|r1|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \LM|Selector3~0_combout\,
	ena => \pc1|enabler1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|r1|q\(4));

-- Location: FF_X82_Y21_N29
\po1|rgMaior|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|r1|q\(4),
	sload => VCC,
	ena => \po1|cmpMaior|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgMaior|q\(4));

-- Location: FF_X82_Y21_N1
\po1|rgMaior|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|r1|q\(6),
	sload => VCC,
	ena => \po1|cmpMaior|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgMaior|q\(6));

-- Location: MLABCELL_X82_Y21_N3
\po1|cmpMaior|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|cmpMaior|LessThan0~0_combout\ = ( \po1|rgMaior|q\(4) & ( \po1|rgMaior|q\(6) & ( (\po1|r1|q\(6) & (\po1|r1|q\(4) & (!\po1|rgMaior|q\(5) $ (\po1|r1|q\(5))))) ) ) ) # ( !\po1|rgMaior|q\(4) & ( \po1|rgMaior|q\(6) & ( (\po1|r1|q\(6) & (!\po1|r1|q\(4) & 
-- (!\po1|rgMaior|q\(5) $ (\po1|r1|q\(5))))) ) ) ) # ( \po1|rgMaior|q\(4) & ( !\po1|rgMaior|q\(6) & ( (!\po1|r1|q\(6) & (\po1|r1|q\(4) & (!\po1|rgMaior|q\(5) $ (\po1|r1|q\(5))))) ) ) ) # ( !\po1|rgMaior|q\(4) & ( !\po1|rgMaior|q\(6) & ( (!\po1|r1|q\(6) & 
-- (!\po1|r1|q\(4) & (!\po1|rgMaior|q\(5) $ (\po1|r1|q\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000000001001000000001001000000000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|rgMaior|ALT_INV_q\(5),
	datab => \po1|r1|ALT_INV_q\(5),
	datac => \po1|r1|ALT_INV_q\(6),
	datad => \po1|r1|ALT_INV_q\(4),
	datae => \po1|rgMaior|ALT_INV_q\(4),
	dataf => \po1|rgMaior|ALT_INV_q\(6),
	combout => \po1|cmpMaior|LessThan0~0_combout\);

-- Location: MLABCELL_X82_Y21_N6
\LM|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Selector4~0_combout\ = ( \LM|Equal4~0_combout\ ) # ( !\LM|Equal4~0_combout\ & ( (\LM|Selector7~0_combout\) # (\LM|Equal6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \LM|ALT_INV_Equal6~0_combout\,
	datad => \LM|ALT_INV_Selector7~0_combout\,
	dataf => \LM|ALT_INV_Equal4~0_combout\,
	combout => \LM|Selector4~0_combout\);

-- Location: FF_X82_Y21_N8
\po1|r1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \LM|Selector4~0_combout\,
	ena => \pc1|enabler1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|r1|q\(3));

-- Location: FF_X82_Y21_N44
\po1|rgMaior|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|r1|q\(3),
	sload => VCC,
	ena => \po1|cmpMaior|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgMaior|q\(3));

-- Location: MLABCELL_X82_Y21_N39
\po1|cmpMaior|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|cmpMaior|LessThan0~2_combout\ = ( \po1|rgMaior|q\(4) & ( \po1|rgMaior|q\(6) & ( (!\po1|rgMaior|q\(5) & \po1|r1|q\(5)) ) ) ) # ( !\po1|rgMaior|q\(4) & ( \po1|rgMaior|q\(6) & ( (!\po1|rgMaior|q\(5) & (((\po1|r1|q\(6) & \po1|r1|q\(4))) # 
-- (\po1|r1|q\(5)))) # (\po1|rgMaior|q\(5) & (\po1|r1|q\(5) & (\po1|r1|q\(6) & \po1|r1|q\(4)))) ) ) ) # ( \po1|rgMaior|q\(4) & ( !\po1|rgMaior|q\(6) & ( (!\po1|rgMaior|q\(5) & ((\po1|r1|q\(6)) # (\po1|r1|q\(5)))) # (\po1|rgMaior|q\(5) & (\po1|r1|q\(5) & 
-- \po1|r1|q\(6))) ) ) ) # ( !\po1|rgMaior|q\(4) & ( !\po1|rgMaior|q\(6) & ( (!\po1|rgMaior|q\(5) & (((\po1|r1|q\(4)) # (\po1|r1|q\(6))) # (\po1|r1|q\(5)))) # (\po1|rgMaior|q\(5) & (\po1|r1|q\(5) & ((\po1|r1|q\(4)) # (\po1|r1|q\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101110111011001010110010101100100010001010110010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|rgMaior|ALT_INV_q\(5),
	datab => \po1|r1|ALT_INV_q\(5),
	datac => \po1|r1|ALT_INV_q\(6),
	datad => \po1|r1|ALT_INV_q\(4),
	datae => \po1|rgMaior|ALT_INV_q\(4),
	dataf => \po1|rgMaior|ALT_INV_q\(6),
	combout => \po1|cmpMaior|LessThan0~2_combout\);

-- Location: MLABCELL_X82_Y21_N30
\LM|WideNor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|WideNor0~0_combout\ = ( !\pc1|lerMem\(2) & ( !\pc1|lerMem\(1) & ( (!\pc1|lerMem\(6) & (\LM|WideNor0~2_combout\ & (!\pc1|lerMem\(5) & !\pc1|lerMem\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|ALT_INV_lerMem\(6),
	datab => \LM|ALT_INV_WideNor0~2_combout\,
	datac => \pc1|ALT_INV_lerMem\(5),
	datad => \pc1|ALT_INV_lerMem\(0),
	datae => \pc1|ALT_INV_lerMem\(2),
	dataf => \pc1|ALT_INV_lerMem\(1),
	combout => \LM|WideNor0~0_combout\);

-- Location: MLABCELL_X82_Y21_N54
\LM|Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Selector5~1_combout\ = ( \LM|WideNor0~0_combout\ ) # ( !\LM|WideNor0~0_combout\ & ( \LM|Selector5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LM|ALT_INV_Selector5~0_combout\,
	dataf => \LM|ALT_INV_WideNor0~0_combout\,
	combout => \LM|Selector5~1_combout\);

-- Location: FF_X82_Y21_N56
\po1|r1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \LM|Selector5~1_combout\,
	ena => \pc1|enabler1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|r1|q\(2));

-- Location: LABCELL_X83_Y21_N42
\LM|Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Selector6~1_combout\ = ( \LM|Selector7~0_combout\ & ( \LM|WideNor0~0_combout\ & ( (!\LM|Selector5~0_combout\ & !\LM|Selector6~0_combout\) ) ) ) # ( !\LM|Selector7~0_combout\ & ( \LM|WideNor0~0_combout\ & ( (!\LM|Selector5~0_combout\ & 
-- !\LM|Selector6~0_combout\) ) ) ) # ( \LM|Selector7~0_combout\ & ( !\LM|WideNor0~0_combout\ & ( (!\LM|Selector5~0_combout\ & !\LM|Selector6~0_combout\) ) ) ) # ( !\LM|Selector7~0_combout\ & ( !\LM|WideNor0~0_combout\ & ( (!\LM|Selector5~0_combout\ & 
-- (!\LM|Selector6~0_combout\ & ((\LM|Equal6~0_combout\) # (\LM|Equal2~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LM|ALT_INV_Selector5~0_combout\,
	datab => \LM|ALT_INV_Equal2~0_combout\,
	datac => \LM|ALT_INV_Selector6~0_combout\,
	datad => \LM|ALT_INV_Equal6~0_combout\,
	datae => \LM|ALT_INV_Selector7~0_combout\,
	dataf => \LM|ALT_INV_WideNor0~0_combout\,
	combout => \LM|Selector6~1_combout\);

-- Location: FF_X83_Y21_N44
\po1|r1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \LM|Selector6~1_combout\,
	ena => \pc1|enabler1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|r1|q\(1));

-- Location: FF_X82_Y21_N5
\po1|rgMaior|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|r1|q\(2),
	sload => VCC,
	ena => \po1|cmpMaior|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgMaior|q\(2));

-- Location: FF_X82_Y21_N26
\po1|rgMaior|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|r1|q\(1),
	sload => VCC,
	ena => \po1|cmpMaior|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgMaior|q\(1));

-- Location: MLABCELL_X82_Y21_N24
\po1|cmpMaior|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|cmpMaior|LessThan0~1_combout\ = ( \po1|rgMaior|q\(1) & ( \po1|r1|q\(0) & ( (!\po1|r1|q\(2) & (\po1|r1|q\(1) & (!\po1|rgMaior|q\(2) & !\po1|rgMaior|q\(0)))) # (\po1|r1|q\(2) & ((!\po1|rgMaior|q\(2)) # ((\po1|r1|q\(1) & !\po1|rgMaior|q\(0))))) ) ) ) # 
-- ( !\po1|rgMaior|q\(1) & ( \po1|r1|q\(0) & ( (!\po1|r1|q\(2) & (!\po1|rgMaior|q\(2) & ((!\po1|rgMaior|q\(0)) # (\po1|r1|q\(1))))) # (\po1|r1|q\(2) & (((!\po1|rgMaior|q\(2)) # (!\po1|rgMaior|q\(0))) # (\po1|r1|q\(1)))) ) ) ) # ( \po1|rgMaior|q\(1) & ( 
-- !\po1|r1|q\(0) & ( (\po1|r1|q\(2) & !\po1|rgMaior|q\(2)) ) ) ) # ( !\po1|rgMaior|q\(1) & ( !\po1|r1|q\(0) & ( (!\po1|r1|q\(2) & (\po1|r1|q\(1) & !\po1|rgMaior|q\(2))) # (\po1|r1|q\(2) & ((!\po1|rgMaior|q\(2)) # (\po1|r1|q\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001010100000101000011110101011100010111000101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|r1|ALT_INV_q\(2),
	datab => \po1|r1|ALT_INV_q\(1),
	datac => \po1|rgMaior|ALT_INV_q\(2),
	datad => \po1|rgMaior|ALT_INV_q\(0),
	datae => \po1|rgMaior|ALT_INV_q\(1),
	dataf => \po1|r1|ALT_INV_q\(0),
	combout => \po1|cmpMaior|LessThan0~1_combout\);

-- Location: MLABCELL_X82_Y21_N42
\po1|cmpMaior|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|cmpMaior|LessThan0~3_combout\ = ( \po1|cmpMaior|LessThan0~1_combout\ & ( ((\po1|cmpMaior|LessThan0~0_combout\ & ((!\po1|rgMaior|q\(3)) # (\po1|r1|q\(3))))) # (\po1|cmpMaior|LessThan0~2_combout\) ) ) # ( !\po1|cmpMaior|LessThan0~1_combout\ & ( 
-- ((\po1|cmpMaior|LessThan0~0_combout\ & (!\po1|rgMaior|q\(3) & \po1|r1|q\(3)))) # (\po1|cmpMaior|LessThan0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101001111000011110100111101001111010111110100111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|cmpMaior|ALT_INV_LessThan0~0_combout\,
	datab => \po1|rgMaior|ALT_INV_q\(3),
	datac => \po1|cmpMaior|ALT_INV_LessThan0~2_combout\,
	datad => \po1|r1|ALT_INV_q\(3),
	dataf => \po1|cmpMaior|ALT_INV_LessThan0~1_combout\,
	combout => \po1|cmpMaior|LessThan0~3_combout\);

-- Location: FF_X82_Y21_N41
\po1|rgMaior|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|r1|q\(0),
	sload => VCC,
	ena => \po1|cmpMaior|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgMaior|q\(0));

-- Location: LABCELL_X81_Y21_N12
\rMaior|q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rMaior|q[0]~feeder_combout\ = \po1|rgMaior|q\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \po1|rgMaior|ALT_INV_q\(0),
	combout => \rMaior|q[0]~feeder_combout\);

-- Location: LABCELL_X81_Y21_N15
\pc1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux0~0_combout\ = ( !\ft|state_reg\(2) & ( (\ft|state_reg\(0) & !\ft|state_reg\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(0),
	datad => \ft|ALT_INV_state_reg\(1),
	dataf => \ft|ALT_INV_state_reg\(2),
	combout => \pc1|Mux0~0_combout\);

-- Location: LABCELL_X81_Y21_N36
\pc1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux1~0_combout\ = ( \ft|state_reg\(5) & ( !\ft|state_reg\(2) & ( (\ft|state_reg\(3) & (!\ft|state_reg\(4) & (!\ft|state_reg\(0) $ (!\ft|state_reg\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(0),
	datab => \ft|ALT_INV_state_reg\(3),
	datac => \ft|ALT_INV_state_reg\(4),
	datad => \ft|ALT_INV_state_reg\(1),
	datae => \ft|ALT_INV_state_reg\(5),
	dataf => \ft|ALT_INV_state_reg\(2),
	combout => \pc1|Mux1~0_combout\);

-- Location: LABCELL_X81_Y21_N48
\pc1|enableRMaior\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|enableRMaior~combout\ = ( \pc1|Mux1~0_combout\ & ( \pc1|Mux0~0_combout\ ) ) # ( !\pc1|Mux1~0_combout\ & ( \pc1|enableRMaior~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pc1|ALT_INV_Mux0~0_combout\,
	datac => \pc1|ALT_INV_enableRMaior~combout\,
	dataf => \pc1|ALT_INV_Mux1~0_combout\,
	combout => \pc1|enableRMaior~combout\);

-- Location: FF_X81_Y21_N14
\rMaior|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \rMaior|q[0]~feeder_combout\,
	ena => \pc1|enableRMaior~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rMaior|q\(0));

-- Location: FF_X81_Y21_N16
\rMaior|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|rgMaior|q\(1),
	sload => VCC,
	ena => \pc1|enableRMaior~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rMaior|q\(1));

-- Location: FF_X82_Y21_N34
\rMaior|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|rgMaior|q\(2),
	sload => VCC,
	ena => \pc1|enableRMaior~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rMaior|q\(2));

-- Location: FF_X82_Y21_N16
\rMaior|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|rgMaior|q\(3),
	sload => VCC,
	ena => \pc1|enableRMaior~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rMaior|q\(3));

-- Location: LABCELL_X81_Y21_N51
\rMaior|q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rMaior|q[4]~feeder_combout\ = \po1|rgMaior|q\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|rgMaior|ALT_INV_q\(4),
	combout => \rMaior|q[4]~feeder_combout\);

-- Location: FF_X81_Y21_N52
\rMaior|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \rMaior|q[4]~feeder_combout\,
	ena => \pc1|enableRMaior~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rMaior|q\(4));

-- Location: FF_X82_Y21_N37
\po1|rgMaior|q[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|r1|q\(5),
	sload => VCC,
	ena => \po1|cmpMaior|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgMaior|q[5]~DUPLICATE_q\);

-- Location: FF_X81_Y21_N47
\rMaior|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|rgMaior|q[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \pc1|enableRMaior~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rMaior|q\(5));

-- Location: FF_X82_Y21_N32
\rMaior|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|rgMaior|q\(6),
	sload => VCC,
	ena => \pc1|enableRMaior~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rMaior|q\(6));

-- Location: FF_X81_Y21_N49
\rMaior|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|rgMaior|q[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \pc1|enableRMaior~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rMaior|q\(7));

-- Location: LABCELL_X83_Y20_N3
\po1|rgMenor|q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|rgMenor|q[0]~feeder_combout\ = ( \po1|r1|q\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \po1|r1|ALT_INV_q\(0),
	combout => \po1|rgMenor|q[0]~feeder_combout\);

-- Location: MLABCELL_X84_Y21_N39
\pc1|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux7~0_combout\ = ( !\ft|state_reg\(3) & ( (!\ft|state_reg\(5) & (!\ft|state_reg\(2) & (!\ft|state_reg\(0) & !\ft|state_reg\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(5),
	datab => \ft|ALT_INV_state_reg\(2),
	datac => \ft|ALT_INV_state_reg\(0),
	datad => \ft|ALT_INV_state_reg\(4),
	dataf => \ft|ALT_INV_state_reg\(3),
	combout => \pc1|Mux7~0_combout\);

-- Location: LABCELL_X83_Y20_N24
\pc1|tx\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|tx~combout\ = ( \ft|state_reg\(1) & ( (\pc1|tx~combout\ & !\pc1|Mux7~0_combout\) ) ) # ( !\ft|state_reg\(1) & ( (\pc1|Mux7~0_combout\) # (\pc1|tx~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pc1|ALT_INV_tx~combout\,
	datad => \pc1|ALT_INV_Mux7~0_combout\,
	dataf => \ft|ALT_INV_state_reg\(1),
	combout => \pc1|tx~combout\);

-- Location: LABCELL_X83_Y20_N12
\po1|rgMenor|q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|rgMenor|q[6]~feeder_combout\ = ( \po1|r1|q\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \po1|r1|ALT_INV_q\(6),
	combout => \po1|rgMenor|q[6]~feeder_combout\);

-- Location: FF_X83_Y20_N14
\po1|rgMenor|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|rgMenor|q[6]~feeder_combout\,
	ena => \po1|cmpMenor|lt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgMenor|q\(6));

-- Location: LABCELL_X83_Y20_N30
\po1|rgMenor|q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|rgMenor|q[5]~feeder_combout\ = ( \po1|r1|q\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \po1|r1|ALT_INV_q\(5),
	combout => \po1|rgMenor|q[5]~feeder_combout\);

-- Location: FF_X83_Y20_N32
\po1|rgMenor|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|rgMenor|q[5]~feeder_combout\,
	ena => \po1|cmpMenor|lt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgMenor|q\(5));

-- Location: LABCELL_X83_Y20_N27
\po1|cmpMenor|lt~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|cmpMenor|lt~1_combout\ = ( \po1|r1|q\(5) & ( (!\pc1|tx~combout\ & ((!\po1|rgMenor|q\(6)) # ((!\po1|rgMenor|q\(5)) # (\po1|r1|q\(6))))) ) ) # ( !\po1|r1|q\(5) & ( (!\pc1|tx~combout\ & (!\po1|rgMenor|q\(5) & ((!\po1|rgMenor|q\(6)) # (\po1|r1|q\(6))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010100000100000001010000010101000101010101010100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|ALT_INV_tx~combout\,
	datab => \po1|rgMenor|ALT_INV_q\(6),
	datac => \po1|rgMenor|ALT_INV_q\(5),
	datad => \po1|r1|ALT_INV_q\(6),
	dataf => \po1|r1|ALT_INV_q\(5),
	combout => \po1|cmpMenor|lt~1_combout\);

-- Location: FF_X83_Y20_N8
\po1|rgMenor|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|r1|q\(3),
	sload => VCC,
	ena => \po1|cmpMenor|lt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgMenor|q\(3));

-- Location: FF_X83_Y20_N20
\po1|rgMenor|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|r1|q\(2),
	sload => VCC,
	ena => \po1|cmpMenor|lt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgMenor|q\(2));

-- Location: FF_X83_Y20_N50
\po1|rgMenor|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|r1|q\(1),
	sload => VCC,
	ena => \po1|cmpMenor|lt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgMenor|q\(1));

-- Location: LABCELL_X83_Y20_N54
\po1|cmpMenor|lt~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|cmpMenor|lt~0_combout\ = ( \po1|r1|q\(2) & ( \po1|r1|q\(0) & ( (\po1|rgMenor|q\(2) & (\po1|rgMenor|q\(1) & !\po1|r1|q\(1))) ) ) ) # ( !\po1|r1|q\(2) & ( \po1|r1|q\(0) & ( ((\po1|rgMenor|q\(1) & !\po1|r1|q\(1))) # (\po1|rgMenor|q\(2)) ) ) ) # ( 
-- \po1|r1|q\(2) & ( !\po1|r1|q\(0) & ( (\po1|rgMenor|q\(2) & ((!\po1|rgMenor|q\(1) & (\po1|rgMenor|q\(0) & !\po1|r1|q\(1))) # (\po1|rgMenor|q\(1) & ((!\po1|r1|q\(1)) # (\po1|rgMenor|q\(0)))))) ) ) ) # ( !\po1|r1|q\(2) & ( !\po1|r1|q\(0) & ( 
-- ((!\po1|rgMenor|q\(1) & (\po1|rgMenor|q\(0) & !\po1|r1|q\(1))) # (\po1|rgMenor|q\(1) & ((!\po1|r1|q\(1)) # (\po1|rgMenor|q\(0))))) # (\po1|rgMenor|q\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101010111000101010000000101110111010101010001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|rgMenor|ALT_INV_q\(2),
	datab => \po1|rgMenor|ALT_INV_q\(1),
	datac => \po1|rgMenor|ALT_INV_q\(0),
	datad => \po1|r1|ALT_INV_q\(1),
	datae => \po1|r1|ALT_INV_q\(2),
	dataf => \po1|r1|ALT_INV_q\(0),
	combout => \po1|cmpMenor|lt~0_combout\);

-- Location: LABCELL_X83_Y20_N21
\po1|rgMenor|q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|rgMenor|q[4]~feeder_combout\ = ( \po1|r1|q\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \po1|r1|ALT_INV_q\(4),
	combout => \po1|rgMenor|q[4]~feeder_combout\);

-- Location: FF_X83_Y20_N23
\po1|rgMenor|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|rgMenor|q[4]~feeder_combout\,
	ena => \po1|cmpMenor|lt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgMenor|q\(4));

-- Location: LABCELL_X83_Y20_N36
\po1|cmpMenor|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|cmpMenor|LessThan0~0_combout\ = ( \po1|r1|q\(4) & ( \po1|r1|q\(5) & ( (\po1|rgMenor|q\(5) & (\po1|rgMenor|q\(4) & (!\po1|rgMenor|q\(6) $ (\po1|r1|q\(6))))) ) ) ) # ( !\po1|r1|q\(4) & ( \po1|r1|q\(5) & ( (\po1|rgMenor|q\(5) & (!\po1|rgMenor|q\(4) & 
-- (!\po1|rgMenor|q\(6) $ (\po1|r1|q\(6))))) ) ) ) # ( \po1|r1|q\(4) & ( !\po1|r1|q\(5) & ( (!\po1|rgMenor|q\(5) & (\po1|rgMenor|q\(4) & (!\po1|rgMenor|q\(6) $ (\po1|r1|q\(6))))) ) ) ) # ( !\po1|r1|q\(4) & ( !\po1|r1|q\(5) & ( (!\po1|rgMenor|q\(5) & 
-- (!\po1|rgMenor|q\(4) & (!\po1|rgMenor|q\(6) $ (\po1|r1|q\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000000010000000010000100000000100000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|rgMenor|ALT_INV_q\(6),
	datab => \po1|rgMenor|ALT_INV_q\(5),
	datac => \po1|rgMenor|ALT_INV_q\(4),
	datad => \po1|r1|ALT_INV_q\(6),
	datae => \po1|r1|ALT_INV_q\(4),
	dataf => \po1|r1|ALT_INV_q\(5),
	combout => \po1|cmpMenor|LessThan0~0_combout\);

-- Location: LABCELL_X83_Y20_N42
\po1|cmpMenor|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|cmpMenor|LessThan0~1_combout\ = ( \po1|r1|q\(6) & ( \po1|r1|q\(5) & ( (\po1|rgMenor|q\(4) & (\po1|rgMenor|q\(5) & (!\po1|r1|q\(4) & \po1|rgMenor|q\(6)))) ) ) ) # ( !\po1|r1|q\(6) & ( \po1|r1|q\(5) & ( (\po1|rgMenor|q\(4) & (\po1|rgMenor|q\(5) & 
-- (!\po1|r1|q\(4) & !\po1|rgMenor|q\(6)))) ) ) ) # ( \po1|r1|q\(6) & ( !\po1|r1|q\(5) & ( (\po1|rgMenor|q\(4) & (!\po1|rgMenor|q\(5) & (!\po1|r1|q\(4) & \po1|rgMenor|q\(6)))) ) ) ) # ( !\po1|r1|q\(6) & ( !\po1|r1|q\(5) & ( (\po1|rgMenor|q\(4) & 
-- (!\po1|rgMenor|q\(5) & (!\po1|r1|q\(4) & !\po1|rgMenor|q\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000100000000010000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|rgMenor|ALT_INV_q\(4),
	datab => \po1|rgMenor|ALT_INV_q\(5),
	datac => \po1|r1|ALT_INV_q\(4),
	datad => \po1|rgMenor|ALT_INV_q\(6),
	datae => \po1|r1|ALT_INV_q\(6),
	dataf => \po1|r1|ALT_INV_q\(5),
	combout => \po1|cmpMenor|LessThan0~1_combout\);

-- Location: LABCELL_X83_Y20_N9
\po1|cmpMenor|lt~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|cmpMenor|lt~2_combout\ = ( \po1|cmpMenor|LessThan0~0_combout\ & ( \po1|cmpMenor|LessThan0~1_combout\ ) ) # ( !\po1|cmpMenor|LessThan0~0_combout\ & ( \po1|cmpMenor|LessThan0~1_combout\ ) ) # ( \po1|cmpMenor|LessThan0~0_combout\ & ( 
-- !\po1|cmpMenor|LessThan0~1_combout\ & ( (!\po1|cmpMenor|lt~1_combout\) # ((!\po1|r1|q\(3) & ((\po1|cmpMenor|lt~0_combout\) # (\po1|rgMenor|q\(3)))) # (\po1|r1|q\(3) & (\po1|rgMenor|q\(3) & \po1|cmpMenor|lt~0_combout\))) ) ) ) # ( 
-- !\po1|cmpMenor|LessThan0~0_combout\ & ( !\po1|cmpMenor|LessThan0~1_combout\ & ( !\po1|cmpMenor|lt~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101011101110111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|cmpMenor|ALT_INV_lt~1_combout\,
	datab => \po1|r1|ALT_INV_q\(3),
	datac => \po1|rgMenor|ALT_INV_q\(3),
	datad => \po1|cmpMenor|ALT_INV_lt~0_combout\,
	datae => \po1|cmpMenor|ALT_INV_LessThan0~0_combout\,
	dataf => \po1|cmpMenor|ALT_INV_LessThan0~1_combout\,
	combout => \po1|cmpMenor|lt~2_combout\);

-- Location: FF_X83_Y20_N5
\po1|rgMenor|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|rgMenor|q[0]~feeder_combout\,
	ena => \po1|cmpMenor|lt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgMenor|q\(0));

-- Location: MLABCELL_X84_Y20_N54
\pc1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux2~0_combout\ = ( \ft|state_reg\(2) & ( !\ft|state_reg\(1) & ( !\ft|state_reg\(0) ) ) ) # ( !\ft|state_reg\(2) & ( !\ft|state_reg\(1) & ( \ft|state_reg\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ft|ALT_INV_state_reg\(0),
	datae => \ft|ALT_INV_state_reg\(2),
	dataf => \ft|ALT_INV_state_reg\(1),
	combout => \pc1|Mux2~0_combout\);

-- Location: LABCELL_X85_Y21_N6
\pc1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux3~0_combout\ = ( \ft|state_reg\(5) & ( \ft|state_reg\(0) & ( (!\ft|state_reg\(2) & (\ft|state_reg\(3) & (!\ft|state_reg\(1) & !\ft|state_reg\(4)))) ) ) ) # ( !\ft|state_reg\(5) & ( \ft|state_reg\(0) & ( (\ft|state_reg\(2) & (!\ft|state_reg\(3) & 
-- (!\ft|state_reg\(1) & \ft|state_reg\(4)))) ) ) ) # ( \ft|state_reg\(5) & ( !\ft|state_reg\(0) & ( (!\ft|state_reg\(2) & (\ft|state_reg\(3) & (\ft|state_reg\(1) & !\ft|state_reg\(4)))) ) ) ) # ( !\ft|state_reg\(5) & ( !\ft|state_reg\(0) & ( 
-- (\ft|state_reg\(2) & (!\ft|state_reg\(3) & (!\ft|state_reg\(1) & \ft|state_reg\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000100000000000000000010000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(2),
	datab => \ft|ALT_INV_state_reg\(3),
	datac => \ft|ALT_INV_state_reg\(1),
	datad => \ft|ALT_INV_state_reg\(4),
	datae => \ft|ALT_INV_state_reg\(5),
	dataf => \ft|ALT_INV_state_reg\(0),
	combout => \pc1|Mux3~0_combout\);

-- Location: MLABCELL_X84_Y20_N36
\pc1|enableRMenor\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|enableRMenor~combout\ = ( \pc1|enableRMenor~combout\ & ( \pc1|Mux3~0_combout\ & ( \pc1|Mux2~0_combout\ ) ) ) # ( !\pc1|enableRMenor~combout\ & ( \pc1|Mux3~0_combout\ & ( \pc1|Mux2~0_combout\ ) ) ) # ( \pc1|enableRMenor~combout\ & ( 
-- !\pc1|Mux3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pc1|ALT_INV_Mux2~0_combout\,
	datae => \pc1|ALT_INV_enableRMenor~combout\,
	dataf => \pc1|ALT_INV_Mux3~0_combout\,
	combout => \pc1|enableRMenor~combout\);

-- Location: FF_X84_Y20_N38
\rMenor|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|rgMenor|q\(0),
	sload => VCC,
	ena => \pc1|enableRMenor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rMenor|q\(0));

-- Location: MLABCELL_X84_Y20_N45
\rMenor|q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rMenor|q[1]~feeder_combout\ = ( \po1|rgMenor|q\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \po1|rgMenor|ALT_INV_q\(1),
	combout => \rMenor|q[1]~feeder_combout\);

-- Location: FF_X84_Y20_N46
\rMenor|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \rMenor|q[1]~feeder_combout\,
	ena => \pc1|enableRMenor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rMenor|q\(1));

-- Location: FF_X84_Y20_N40
\rMenor|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|rgMenor|q\(2),
	sload => VCC,
	ena => \pc1|enableRMenor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rMenor|q\(2));

-- Location: FF_X84_Y20_N25
\rMenor|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|rgMenor|q\(3),
	sload => VCC,
	ena => \pc1|enableRMenor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rMenor|q\(3));

-- Location: MLABCELL_X84_Y20_N33
\rMenor|q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rMenor|q[4]~feeder_combout\ = ( \po1|rgMenor|q\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \po1|rgMenor|ALT_INV_q\(4),
	combout => \rMenor|q[4]~feeder_combout\);

-- Location: FF_X84_Y20_N34
\rMenor|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \rMenor|q[4]~feeder_combout\,
	ena => \pc1|enableRMenor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rMenor|q\(4));

-- Location: MLABCELL_X84_Y20_N3
\rMenor|q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rMenor|q[5]~feeder_combout\ = ( \po1|rgMenor|q\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \po1|rgMenor|ALT_INV_q\(5),
	combout => \rMenor|q[5]~feeder_combout\);

-- Location: FF_X84_Y20_N4
\rMenor|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \rMenor|q[5]~feeder_combout\,
	ena => \pc1|enableRMenor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rMenor|q\(5));

-- Location: MLABCELL_X84_Y20_N42
\rMenor|q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rMenor|q[6]~feeder_combout\ = ( \po1|rgMenor|q\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \po1|rgMenor|ALT_INV_q\(6),
	combout => \rMenor|q[6]~feeder_combout\);

-- Location: FF_X84_Y20_N43
\rMenor|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \rMenor|q[6]~feeder_combout\,
	ena => \pc1|enableRMenor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rMenor|q\(6));

-- Location: MLABCELL_X84_Y20_N27
\rMenor|q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rMenor|q[7]~feeder_combout\ = ( \po1|rgMenor|q\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \po1|rgMenor|ALT_INV_q\(5),
	combout => \rMenor|q[7]~feeder_combout\);

-- Location: FF_X84_Y20_N28
\rMenor|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \rMenor|q[7]~feeder_combout\,
	ena => \pc1|enableRMenor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rMenor|q\(7));

-- Location: LABCELL_X80_Y21_N27
\po1|rg|q[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|rg|q[0]~1_combout\ = ( !\po1|rg|q\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \po1|rg|ALT_INV_q\(0),
	combout => \po1|rg|q[0]~1_combout\);

-- Location: LABCELL_X80_Y21_N39
\pc1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux4~0_combout\ = ( !\ft|state_reg\(1) & ( \ft|state_reg\(2) & ( \ft|state_reg\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ft|ALT_INV_state_reg\(0),
	datae => \ft|ALT_INV_state_reg\(1),
	dataf => \ft|ALT_INV_state_reg\(2),
	combout => \pc1|Mux4~0_combout\);

-- Location: LABCELL_X80_Y21_N30
\pc1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux5~0_combout\ = ( !\ft|state_reg\(5) & ( \ft|state_reg\(4) & ( (\ft|state_reg\(0) & (\ft|state_reg\(2) & (!\ft|state_reg\(1) & !\ft|state_reg\(3)))) ) ) ) # ( \ft|state_reg\(5) & ( !\ft|state_reg\(4) & ( (\ft|state_reg\(0) & (!\ft|state_reg\(2) & 
-- (!\ft|state_reg\(1) & \ft|state_reg\(3)))) ) ) ) # ( !\ft|state_reg\(5) & ( !\ft|state_reg\(4) & ( (!\ft|state_reg\(0) & (!\ft|state_reg\(2) & (!\ft|state_reg\(1) & !\ft|state_reg\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000100000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(0),
	datab => \ft|ALT_INV_state_reg\(2),
	datac => \ft|ALT_INV_state_reg\(1),
	datad => \ft|ALT_INV_state_reg\(3),
	datae => \ft|ALT_INV_state_reg\(5),
	dataf => \ft|ALT_INV_state_reg\(4),
	combout => \pc1|Mux5~0_combout\);

-- Location: LABCELL_X80_Y21_N51
\pc1|enableQTD\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|enableQTD~combout\ = ( \pc1|Mux5~0_combout\ & ( \pc1|Mux4~0_combout\ ) ) # ( !\pc1|Mux5~0_combout\ & ( \pc1|enableQTD~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pc1|ALT_INV_Mux4~0_combout\,
	datad => \pc1|ALT_INV_enableQTD~combout\,
	dataf => \pc1|ALT_INV_Mux5~0_combout\,
	combout => \pc1|enableQTD~combout\);

-- Location: LABCELL_X80_Y21_N54
\po1|rg|q[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|rg|q[0]~0_combout\ = ( \po1|r1|q\(5) & ( \pc1|enableQTD~combout\ ) ) # ( !\po1|r1|q\(5) & ( \pc1|enableQTD~combout\ & ( \po1|r1|q\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \po1|r1|ALT_INV_q\(6),
	datae => \po1|r1|ALT_INV_q\(5),
	dataf => \pc1|ALT_INV_enableQTD~combout\,
	combout => \po1|rg|q[0]~0_combout\);

-- Location: FF_X80_Y21_N29
\po1|rg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|rg|q[0]~1_combout\,
	ena => \po1|rg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rg|q\(0));

-- Location: FF_X81_Y21_N38
\rgM|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|rg|q\(0),
	sload => VCC,
	ena => \pc1|enableRMaior~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgM|q\(0));

-- Location: LABCELL_X80_Y21_N0
\po1|smd|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|smd|Add0~1_sumout\ = SUM(( \po1|rg|q\(1) ) + ( \po1|rg|q\(0) ) + ( !VCC ))
-- \po1|smd|Add0~2\ = CARRY(( \po1|rg|q\(1) ) + ( \po1|rg|q\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \po1|rg|ALT_INV_q\(0),
	datad => \po1|rg|ALT_INV_q\(1),
	cin => GND,
	sumout => \po1|smd|Add0~1_sumout\,
	cout => \po1|smd|Add0~2\);

-- Location: FF_X80_Y21_N2
\po1|rg|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|smd|Add0~1_sumout\,
	ena => \po1|rg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rg|q\(1));

-- Location: FF_X80_Y21_N49
\rgM|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|rg|q\(1),
	sload => VCC,
	ena => \pc1|enableRMaior~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgM|q\(1));

-- Location: LABCELL_X80_Y21_N3
\po1|smd|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|smd|Add0~5_sumout\ = SUM(( \po1|rg|q\(2) ) + ( GND ) + ( \po1|smd|Add0~2\ ))
-- \po1|smd|Add0~6\ = CARRY(( \po1|rg|q\(2) ) + ( GND ) + ( \po1|smd|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \po1|rg|ALT_INV_q\(2),
	cin => \po1|smd|Add0~2\,
	sumout => \po1|smd|Add0~5_sumout\,
	cout => \po1|smd|Add0~6\);

-- Location: FF_X80_Y21_N5
\po1|rg|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|smd|Add0~5_sumout\,
	ena => \po1|rg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rg|q\(2));

-- Location: FF_X81_Y21_N41
\rgM|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|rg|q\(2),
	sload => VCC,
	ena => \pc1|enableRMaior~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgM|q\(2));

-- Location: LABCELL_X80_Y21_N6
\po1|smd|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|smd|Add0~9_sumout\ = SUM(( \po1|rg|q\(3) ) + ( GND ) + ( \po1|smd|Add0~6\ ))
-- \po1|smd|Add0~10\ = CARRY(( \po1|rg|q\(3) ) + ( GND ) + ( \po1|smd|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \po1|rg|ALT_INV_q\(3),
	cin => \po1|smd|Add0~6\,
	sumout => \po1|smd|Add0~9_sumout\,
	cout => \po1|smd|Add0~10\);

-- Location: FF_X80_Y21_N7
\po1|rg|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|smd|Add0~9_sumout\,
	ena => \po1|rg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rg|q\(3));

-- Location: FF_X81_Y21_N13
\rgM|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|rg|q\(3),
	sload => VCC,
	ena => \pc1|enableRMaior~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgM|q\(3));

-- Location: LABCELL_X80_Y21_N9
\po1|smd|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|smd|Add0~13_sumout\ = SUM(( \po1|rg|q\(4) ) + ( GND ) + ( \po1|smd|Add0~10\ ))
-- \po1|smd|Add0~14\ = CARRY(( \po1|rg|q\(4) ) + ( GND ) + ( \po1|smd|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \po1|rg|ALT_INV_q\(4),
	cin => \po1|smd|Add0~10\,
	sumout => \po1|smd|Add0~13_sumout\,
	cout => \po1|smd|Add0~14\);

-- Location: FF_X80_Y21_N11
\po1|rg|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|smd|Add0~13_sumout\,
	ena => \po1|rg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rg|q\(4));

-- Location: FF_X81_Y21_N22
\rgM|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|rg|q\(4),
	sload => VCC,
	ena => \pc1|enableRMaior~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgM|q\(4));

-- Location: LABCELL_X80_Y21_N12
\po1|smd|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|smd|Add0~17_sumout\ = SUM(( \po1|rg|q\(5) ) + ( GND ) + ( \po1|smd|Add0~14\ ))
-- \po1|smd|Add0~18\ = CARRY(( \po1|rg|q\(5) ) + ( GND ) + ( \po1|smd|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \po1|rg|ALT_INV_q\(5),
	cin => \po1|smd|Add0~14\,
	sumout => \po1|smd|Add0~17_sumout\,
	cout => \po1|smd|Add0~18\);

-- Location: FF_X80_Y21_N13
\po1|rg|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|smd|Add0~17_sumout\,
	ena => \po1|rg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rg|q\(5));

-- Location: FF_X81_Y21_N53
\rgM|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|rg|q\(5),
	sload => VCC,
	ena => \pc1|enableRMaior~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgM|q\(5));

-- Location: LABCELL_X80_Y21_N15
\po1|smd|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|smd|Add0~21_sumout\ = SUM(( \po1|rg|q\(6) ) + ( GND ) + ( \po1|smd|Add0~18\ ))
-- \po1|smd|Add0~22\ = CARRY(( \po1|rg|q\(6) ) + ( GND ) + ( \po1|smd|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \po1|rg|ALT_INV_q\(6),
	cin => \po1|smd|Add0~18\,
	sumout => \po1|smd|Add0~21_sumout\,
	cout => \po1|smd|Add0~22\);

-- Location: FF_X80_Y21_N16
\po1|rg|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|smd|Add0~21_sumout\,
	ena => \po1|rg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rg|q\(6));

-- Location: FF_X81_Y21_N28
\rgM|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|rg|q\(6),
	sload => VCC,
	ena => \pc1|enableRMaior~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgM|q\(6));

-- Location: LABCELL_X80_Y21_N18
\po1|smd|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|smd|Add0~25_sumout\ = SUM(( \po1|rg|q\(7) ) + ( GND ) + ( \po1|smd|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \po1|rg|ALT_INV_q\(7),
	cin => \po1|smd|Add0~22\,
	sumout => \po1|smd|Add0~25_sumout\);

-- Location: FF_X80_Y21_N20
\po1|rg|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|smd|Add0~25_sumout\,
	ena => \po1|rg|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rg|q\(7));

-- Location: FF_X80_Y21_N32
\rgM|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|rg|q\(7),
	sload => VCC,
	ena => \pc1|enableRMaior~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgM|q\(7));

-- Location: LABCELL_X7_Y35_N3
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


