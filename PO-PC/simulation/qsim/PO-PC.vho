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

-- DATE "11/24/2019 00:07:17"

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
-- maior[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- maior[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- maior[2]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- maior[3]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- maior[4]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- maior[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- maior[6]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- maior[7]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- menor[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- menor[1]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- menor[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- menor[3]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- menor[4]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- menor[5]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- menor[6]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- menor[7]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qtdMaior[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qtdMaior[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qtdMaior[2]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qtdMaior[3]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qtdMaior[4]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qtdMaior[5]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qtdMaior[6]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qtdMaior[7]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clearn	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \ft|state_reg~1_combout\ : std_logic;
SIGNAL \clearn~input_o\ : std_logic;
SIGNAL \ft|state_reg~4_combout\ : std_logic;
SIGNAL \ft|state_reg~5_combout\ : std_logic;
SIGNAL \ft|state_reg~3_combout\ : std_logic;
SIGNAL \ft|state_reg~2_combout\ : std_logic;
SIGNAL \ft|state_reg~0_combout\ : std_logic;
SIGNAL \pc1|Mux28~0_combout\ : std_logic;
SIGNAL \pc1|Mux29~0_combout\ : std_logic;
SIGNAL \pc1|Mux24~0_combout\ : std_logic;
SIGNAL \pc1|Mux25~0_combout\ : std_logic;
SIGNAL \pc1|Mux18~0_combout\ : std_logic;
SIGNAL \pc1|Mux19~0_combout\ : std_logic;
SIGNAL \pc1|Mux12~0_combout\ : std_logic;
SIGNAL \pc1|Mux21~0_combout\ : std_logic;
SIGNAL \pc1|Mux16~0_combout\ : std_logic;
SIGNAL \pc1|Mux17~0_combout\ : std_logic;
SIGNAL \pc1|Mux14~0_combout\ : std_logic;
SIGNAL \pc1|Mux15~0_combout\ : std_logic;
SIGNAL \LM|Equal5~0_combout\ : std_logic;
SIGNAL \pc1|Mux23~0_combout\ : std_logic;
SIGNAL \pc1|Mux31~0_combout\ : std_logic;
SIGNAL \LM|Equal0~0_combout\ : std_logic;
SIGNAL \pc1|Mux26~0_combout\ : std_logic;
SIGNAL \pc1|Mux27~0_combout\ : std_logic;
SIGNAL \pc1|Mux13~0_combout\ : std_logic;
SIGNAL \LM|Equal6~0_combout\ : std_logic;
SIGNAL \LM|Equal9~0_combout\ : std_logic;
SIGNAL \LM|Equal1~0_combout\ : std_logic;
SIGNAL \LM|Selector7~0_combout\ : std_logic;
SIGNAL \LM|Equal5~1_combout\ : std_logic;
SIGNAL \LM|Selector6~0_combout\ : std_logic;
SIGNAL \LM|Equal2~0_combout\ : std_logic;
SIGNAL \LM|Equal2~1_combout\ : std_logic;
SIGNAL \LM|Equal4~0_combout\ : std_logic;
SIGNAL \LM|WideNor0~0_combout\ : std_logic;
SIGNAL \LM|WideNor0~combout\ : std_logic;
SIGNAL \LM|Selector7~1_combout\ : std_logic;
SIGNAL \pc1|Mux32~0_combout\ : std_logic;
SIGNAL \pc1|Mux33~0_combout\ : std_logic;
SIGNAL \pc1|enabler1~combout\ : std_logic;
SIGNAL \LM|Selector1~0_combout\ : std_logic;
SIGNAL \LM|Selector2~0_combout\ : std_logic;
SIGNAL \LM|Selector4~0_combout\ : std_logic;
SIGNAL \po1|rgMaior|q[3]~DUPLICATE_q\ : std_logic;
SIGNAL \LM|Selector6~1_combout\ : std_logic;
SIGNAL \LM|Selector5~0_combout\ : std_logic;
SIGNAL \po1|rgMaior|q[0]~DUPLICATE_q\ : std_logic;
SIGNAL \po1|cmpMaior|LessThan0~0_combout\ : std_logic;
SIGNAL \LM|Selector3~0_combout\ : std_logic;
SIGNAL \po1|cmpMaior|LessThan0~1_combout\ : std_logic;
SIGNAL \po1|cmpMaior|LessThan0~2_combout\ : std_logic;
SIGNAL \rMaior|q[0]~feeder_combout\ : std_logic;
SIGNAL \pc1|Mux0~0_combout\ : std_logic;
SIGNAL \pc1|Mux1~0_combout\ : std_logic;
SIGNAL \pc1|enableRMaior~combout\ : std_logic;
SIGNAL \rMaior|q[4]~feeder_combout\ : std_logic;
SIGNAL \rMaior|q[5]~feeder_combout\ : std_logic;
SIGNAL \rMaior|q[6]~feeder_combout\ : std_logic;
SIGNAL \rMaior|q[7]~feeder_combout\ : std_logic;
SIGNAL \pc1|Mux9~0_combout\ : std_logic;
SIGNAL \pc1|tx~combout\ : std_logic;
SIGNAL \po1|cmpMenor|lt~0_combout\ : std_logic;
SIGNAL \po1|cmpMenor|lt~1_combout\ : std_logic;
SIGNAL \po1|cmpMenor|lt~2_combout\ : std_logic;
SIGNAL \pc1|Mux4~0_combout\ : std_logic;
SIGNAL \pc1|Mux5~0_combout\ : std_logic;
SIGNAL \pc1|enableRMenor~combout\ : std_logic;
SIGNAL \po1|smd|Add0~2\ : std_logic;
SIGNAL \po1|smd|Add0~9_sumout\ : std_logic;
SIGNAL \pc1|Mux10~0_combout\ : std_logic;
SIGNAL \pc1|Mux11~0_combout\ : std_logic;
SIGNAL \pc1|enableSoma~combout\ : std_logic;
SIGNAL \po1|smd|Add0~10\ : std_logic;
SIGNAL \po1|smd|Add0~13_sumout\ : std_logic;
SIGNAL \po1|smd|Add0~14\ : std_logic;
SIGNAL \po1|smd|Add0~17_sumout\ : std_logic;
SIGNAL \po1|smd|Add0~18\ : std_logic;
SIGNAL \po1|smd|Add0~21_sumout\ : std_logic;
SIGNAL \po1|smd|Add0~22\ : std_logic;
SIGNAL \po1|smd|Add0~25_sumout\ : std_logic;
SIGNAL \po1|smd|Add0~26\ : std_logic;
SIGNAL \po1|smd|Add0~29_sumout\ : std_logic;
SIGNAL \po1|smd|Add0~30\ : std_logic;
SIGNAL \po1|smd|Add0~33_sumout\ : std_logic;
SIGNAL \po1|smd|Add0~34\ : std_logic;
SIGNAL \po1|smd|Add0~5_sumout\ : std_logic;
SIGNAL \po1|smd|Add0~1_sumout\ : std_logic;
SIGNAL \po1|rg|q[0]~feeder_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \po1|rgDivisor|q[5]~0_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[28]~12_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[28]~13_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_5~6\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_5~5_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[29]~6_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[29]~7_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[28]~14_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[27]~20_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_6~30_cout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_6~26\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_6~22\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_6~5_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_6~6\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[40]~0_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[40]~1_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[39]~8_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[38]~15_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[38]~16_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[37]~21_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[36]~25_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_6~21_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_6~25_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_7~34_cout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_7~30\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_7~26\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_7~22\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_7~18\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_7~14\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_7~10\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_7~6\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \po1|rgDivisor|q[2]~3_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_7~5_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[50]~2_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[50]~3_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[49]~9_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_7~9_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[48]~17_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_7~13_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[47]~22_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_7~17_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[47]~23_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[46]~26_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_7~21_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[45]~29_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_7~25_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_7~29_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_8~38_cout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_8~34\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_8~30\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_8~26\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_8~22\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_8~18\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_8~14\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_8~10\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_8~5_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_8~6\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_8~1_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[60]~4_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[60]~5_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[59]~11_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_8~9_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[58]~18_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_8~13_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[58]~19_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[57]~24_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_8~17_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[56]~27_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_8~21_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[56]~28_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[55]~30_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_8~25_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_8~29_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|StageOut[54]~31_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_8~33_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_9~42_cout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_9~38_cout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_9~34_cout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_9~30_cout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_9~26_cout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_9~22_cout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_9~18_cout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_9~14_cout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_9~10_cout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_9~6_cout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|op_9~1_sumout\ : std_logic;
SIGNAL \po1|rgDivisor|q[0]~5_combout\ : std_logic;
SIGNAL \po1|rgDivisor|q[1]~4_combout\ : std_logic;
SIGNAL \po1|cmpM2|LessThan0~0_combout\ : std_logic;
SIGNAL \po1|rgDivisor|q[3]~2_combout\ : std_logic;
SIGNAL \po1|cmpM2|LessThan0~1_combout\ : std_logic;
SIGNAL \po1|rgDivisor|q[4]~1_combout\ : std_logic;
SIGNAL \po1|cmpM2|LessThan0~2_combout\ : std_logic;
SIGNAL \po1|rg|q[1]~feeder_combout\ : std_logic;
SIGNAL \po1|rg|q[2]~feeder_combout\ : std_logic;
SIGNAL \po1|rg|q[3]~feeder_combout\ : std_logic;
SIGNAL \po1|rg|q[4]~feeder_combout\ : std_logic;
SIGNAL \po1|rg|q[5]~feeder_combout\ : std_logic;
SIGNAL \po1|rg|q[6]~feeder_combout\ : std_logic;
SIGNAL \po1|rg|q[7]~feeder_combout\ : std_logic;
SIGNAL \po1|rg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \po1|rgSoma|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \rMaior|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ft|state_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \rMenor|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \po1|r1|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \rgM|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \po1|rgMenor|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \po1|rgMaior|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \po1|rgDivisor|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pc1|lerMem\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\ : std_logic;
SIGNAL \po1|rgSoma|ALT_INV_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \po1|smd|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \po1|smd|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \po1|smd|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \po1|smd|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \po1|smd|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \po1|smd|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \po1|smd|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \po1|smd|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \LM|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \LM|ALT_INV_WideNor0~0_combout\ : std_logic;
SIGNAL \LM|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \LM|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \LM|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \LM|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \LM|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \LM|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \LM|ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \LM|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \LM|ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \po1|cmpM2|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \po1|cmpM2|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \po1|rgDivisor|ALT_INV_q\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \pc1|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \po1|cmpMenor|ALT_INV_lt~1_combout\ : std_logic;
SIGNAL \po1|cmpMenor|ALT_INV_lt~0_combout\ : std_logic;
SIGNAL \ft|ALT_INV_state_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \pc1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \po1|cmpMaior|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \po1|cmpMaior|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \po1|r1|ALT_INV_q\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \po1|rgMenor|ALT_INV_q\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \po1|rgMaior|ALT_INV_q\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \po1|rgMaior|ALT_INV_q[3]~DUPLICATE_q\ : std_logic;
SIGNAL \po1|rgMaior|ALT_INV_q[0]~DUPLICATE_q\ : std_logic;
SIGNAL \pc1|ALT_INV_enableSoma~combout\ : std_logic;
SIGNAL \pc1|ALT_INV_enabler1~combout\ : std_logic;
SIGNAL \pc1|ALT_INV_lerMem\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pc1|ALT_INV_tx~combout\ : std_logic;
SIGNAL \pc1|ALT_INV_enableRMenor~combout\ : std_logic;
SIGNAL \pc1|ALT_INV_enableRMaior~combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux33~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[54]~31_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[55]~30_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~29_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[56]~28_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[56]~27_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[46]~26_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~25_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[57]~24_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[47]~23_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[47]~22_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~21_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~20_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[58]~19_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[58]~18_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[48]~17_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[38]~16_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[38]~15_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[28]~14_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[28]~13_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[28]~12_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[59]~11_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~10_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~9_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[39]~8_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[29]~7_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[29]~6_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~5_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~4_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~3_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~2_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~1_combout\ : std_logic;
SIGNAL \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux32~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \pc1|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \LM|ALT_INV_WideNor0~combout\ : std_logic;
SIGNAL \LM|ALT_INV_Equal2~1_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_clearn <= clearn;
maior <= ww_maior;
menor <= ww_menor;
qtdMaior <= ww_qtdMaior;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_8~13_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_7~13_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_6~13_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_5~13_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_8~9_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_7~9_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_6~9_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_5~9_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_8~5_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_7~5_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_6~5_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_5~5_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\;
\po1|rgSoma|ALT_INV_q\(7) <= NOT \po1|rgSoma|q\(7);
\po1|rgSoma|ALT_INV_q\(6) <= NOT \po1|rgSoma|q\(6);
\po1|rgSoma|ALT_INV_q\(5) <= NOT \po1|rgSoma|q\(5);
\po1|rgSoma|ALT_INV_q\(4) <= NOT \po1|rgSoma|q\(4);
\po1|rgSoma|ALT_INV_q\(3) <= NOT \po1|rgSoma|q\(3);
\po1|rgSoma|ALT_INV_q\(2) <= NOT \po1|rgSoma|q\(2);
\po1|rgSoma|ALT_INV_q\(1) <= NOT \po1|rgSoma|q\(1);
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_9~1_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_8~1_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\;
\po1|rgSoma|ALT_INV_q\(0) <= NOT \po1|rgSoma|q\(0);
\po1|smd|ALT_INV_Add0~33_sumout\ <= NOT \po1|smd|Add0~33_sumout\;
\po1|smd|ALT_INV_Add0~29_sumout\ <= NOT \po1|smd|Add0~29_sumout\;
\po1|smd|ALT_INV_Add0~25_sumout\ <= NOT \po1|smd|Add0~25_sumout\;
\po1|smd|ALT_INV_Add0~21_sumout\ <= NOT \po1|smd|Add0~21_sumout\;
\po1|smd|ALT_INV_Add0~17_sumout\ <= NOT \po1|smd|Add0~17_sumout\;
\po1|smd|ALT_INV_Add0~13_sumout\ <= NOT \po1|smd|Add0~13_sumout\;
\po1|smd|ALT_INV_Add0~9_sumout\ <= NOT \po1|smd|Add0~9_sumout\;
\po1|smd|ALT_INV_Add0~1_sumout\ <= NOT \po1|smd|Add0~1_sumout\;
\LM|ALT_INV_Selector6~0_combout\ <= NOT \LM|Selector6~0_combout\;
\LM|ALT_INV_WideNor0~0_combout\ <= NOT \LM|WideNor0~0_combout\;
\LM|ALT_INV_Equal4~0_combout\ <= NOT \LM|Equal4~0_combout\;
\LM|ALT_INV_Equal2~0_combout\ <= NOT \LM|Equal2~0_combout\;
\LM|ALT_INV_Selector7~0_combout\ <= NOT \LM|Selector7~0_combout\;
\LM|ALT_INV_Equal6~0_combout\ <= NOT \LM|Equal6~0_combout\;
\LM|ALT_INV_Equal0~0_combout\ <= NOT \LM|Equal0~0_combout\;
\LM|ALT_INV_Equal1~0_combout\ <= NOT \LM|Equal1~0_combout\;
\LM|ALT_INV_Equal5~1_combout\ <= NOT \LM|Equal5~1_combout\;
\LM|ALT_INV_Equal5~0_combout\ <= NOT \LM|Equal5~0_combout\;
\LM|ALT_INV_Equal9~0_combout\ <= NOT \LM|Equal9~0_combout\;
\po1|cmpM2|ALT_INV_LessThan0~1_combout\ <= NOT \po1|cmpM2|LessThan0~1_combout\;
\po1|cmpM2|ALT_INV_LessThan0~0_combout\ <= NOT \po1|cmpM2|LessThan0~0_combout\;
\po1|rgDivisor|ALT_INV_q\(0) <= NOT \po1|rgDivisor|q\(0);
\po1|rgDivisor|ALT_INV_q\(1) <= NOT \po1|rgDivisor|q\(1);
\po1|rgDivisor|ALT_INV_q\(2) <= NOT \po1|rgDivisor|q\(2);
\po1|rgDivisor|ALT_INV_q\(3) <= NOT \po1|rgDivisor|q\(3);
\po1|rgDivisor|ALT_INV_q\(4) <= NOT \po1|rgDivisor|q\(4);
\po1|rgDivisor|ALT_INV_q\(5) <= NOT \po1|rgDivisor|q\(5);
\pc1|ALT_INV_Mux5~0_combout\ <= NOT \pc1|Mux5~0_combout\;
\pc1|ALT_INV_Mux4~0_combout\ <= NOT \pc1|Mux4~0_combout\;
\po1|cmpMenor|ALT_INV_lt~1_combout\ <= NOT \po1|cmpMenor|lt~1_combout\;
\po1|cmpMenor|ALT_INV_lt~0_combout\ <= NOT \po1|cmpMenor|lt~0_combout\;
\ft|ALT_INV_state_reg\(4) <= NOT \ft|state_reg\(4);
\ft|ALT_INV_state_reg\(5) <= NOT \ft|state_reg\(5);
\ft|ALT_INV_state_reg\(3) <= NOT \ft|state_reg\(3);
\pc1|ALT_INV_Mux0~0_combout\ <= NOT \pc1|Mux0~0_combout\;
\ft|ALT_INV_state_reg\(1) <= NOT \ft|state_reg\(1);
\ft|ALT_INV_state_reg\(2) <= NOT \ft|state_reg\(2);
\ft|ALT_INV_state_reg\(0) <= NOT \ft|state_reg\(0);
\po1|cmpMaior|ALT_INV_LessThan0~1_combout\ <= NOT \po1|cmpMaior|LessThan0~1_combout\;
\po1|cmpMaior|ALT_INV_LessThan0~0_combout\ <= NOT \po1|cmpMaior|LessThan0~0_combout\;
\po1|r1|ALT_INV_q\(1) <= NOT \po1|r1|q\(1);
\po1|r1|ALT_INV_q\(2) <= NOT \po1|r1|q\(2);
\po1|r1|ALT_INV_q\(3) <= NOT \po1|r1|q\(3);
\po1|r1|ALT_INV_q\(4) <= NOT \po1|r1|q\(4);
\po1|r1|ALT_INV_q\(6) <= NOT \po1|r1|q\(6);
\po1|r1|ALT_INV_q\(5) <= NOT \po1|r1|q\(5);
\po1|r1|ALT_INV_q\(0) <= NOT \po1|r1|q\(0);
\po1|rgMenor|ALT_INV_q\(6) <= NOT \po1|rgMenor|q\(6);
\po1|rgMenor|ALT_INV_q\(5) <= NOT \po1|rgMenor|q\(5);
\po1|rgMenor|ALT_INV_q\(4) <= NOT \po1|rgMenor|q\(4);
\po1|rgMenor|ALT_INV_q\(3) <= NOT \po1|rgMenor|q\(3);
\po1|rgMenor|ALT_INV_q\(2) <= NOT \po1|rgMenor|q\(2);
\po1|rgMenor|ALT_INV_q\(1) <= NOT \po1|rgMenor|q\(1);
\po1|rgMenor|ALT_INV_q\(0) <= NOT \po1|rgMenor|q\(0);
\po1|rgMaior|ALT_INV_q\(6) <= NOT \po1|rgMaior|q\(6);
\po1|rgMaior|ALT_INV_q\(5) <= NOT \po1|rgMaior|q\(5);
\po1|rgMaior|ALT_INV_q\(4) <= NOT \po1|rgMaior|q\(4);
\po1|rgMaior|ALT_INV_q\(2) <= NOT \po1|rgMaior|q\(2);
\po1|rgMaior|ALT_INV_q\(1) <= NOT \po1|rgMaior|q\(1);
\po1|rgMaior|ALT_INV_q\(0) <= NOT \po1|rgMaior|q\(0);
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_8~33_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_8~29_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_7~29_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_8~25_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_7~25_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_6~25_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_8~21_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_7~21_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_6~21_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_5~21_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_8~17_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_7~17_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_6~17_sumout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|op_5~17_sumout\;
\po1|rgMaior|ALT_INV_q[3]~DUPLICATE_q\ <= NOT \po1|rgMaior|q[3]~DUPLICATE_q\;
\po1|rgMaior|ALT_INV_q[0]~DUPLICATE_q\ <= NOT \po1|rgMaior|q[0]~DUPLICATE_q\;
\pc1|ALT_INV_enableSoma~combout\ <= NOT \pc1|enableSoma~combout\;
\pc1|ALT_INV_enabler1~combout\ <= NOT \pc1|enabler1~combout\;
\pc1|ALT_INV_lerMem\(4) <= NOT \pc1|lerMem\(4);
\pc1|ALT_INV_lerMem\(3) <= NOT \pc1|lerMem\(3);
\pc1|ALT_INV_lerMem\(1) <= NOT \pc1|lerMem\(1);
\pc1|ALT_INV_lerMem\(2) <= NOT \pc1|lerMem\(2);
\pc1|ALT_INV_lerMem\(8) <= NOT \pc1|lerMem\(8);
\pc1|ALT_INV_lerMem\(7) <= NOT \pc1|lerMem\(7);
\pc1|ALT_INV_lerMem\(6) <= NOT \pc1|lerMem\(6);
\pc1|ALT_INV_lerMem\(0) <= NOT \pc1|lerMem\(0);
\pc1|ALT_INV_lerMem\(9) <= NOT \pc1|lerMem\(9);
\pc1|ALT_INV_lerMem\(5) <= NOT \pc1|lerMem\(5);
\pc1|ALT_INV_tx~combout\ <= NOT \pc1|tx~combout\;
\pc1|ALT_INV_enableRMenor~combout\ <= NOT \pc1|enableRMenor~combout\;
\pc1|ALT_INV_enableRMaior~combout\ <= NOT \pc1|enableRMaior~combout\;
\pc1|ALT_INV_Mux1~0_combout\ <= NOT \pc1|Mux1~0_combout\;
\pc1|ALT_INV_Mux23~0_combout\ <= NOT \pc1|Mux23~0_combout\;
\pc1|ALT_INV_Mux31~0_combout\ <= NOT \pc1|Mux31~0_combout\;
\pc1|ALT_INV_Mux13~0_combout\ <= NOT \pc1|Mux13~0_combout\;
\pc1|ALT_INV_Mux24~0_combout\ <= NOT \pc1|Mux24~0_combout\;
\pc1|ALT_INV_Mux25~0_combout\ <= NOT \pc1|Mux25~0_combout\;
\pc1|ALT_INV_Mux27~0_combout\ <= NOT \pc1|Mux27~0_combout\;
\pc1|ALT_INV_Mux29~0_combout\ <= NOT \pc1|Mux29~0_combout\;
\pc1|ALT_INV_Mux17~0_combout\ <= NOT \pc1|Mux17~0_combout\;
\pc1|ALT_INV_Mux15~0_combout\ <= NOT \pc1|Mux15~0_combout\;
\pc1|ALT_INV_Mux19~0_combout\ <= NOT \pc1|Mux19~0_combout\;
\pc1|ALT_INV_Mux21~0_combout\ <= NOT \pc1|Mux21~0_combout\;
\pc1|ALT_INV_Mux33~0_combout\ <= NOT \pc1|Mux33~0_combout\;
\pc1|ALT_INV_Mux11~0_combout\ <= NOT \pc1|Mux11~0_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[54]~31_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[54]~31_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[55]~30_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[55]~30_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~29_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[45]~29_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[56]~28_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[56]~28_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[56]~27_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[56]~27_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[46]~26_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[46]~26_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~25_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[36]~25_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[57]~24_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[57]~24_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[47]~23_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[47]~23_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[47]~22_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[47]~22_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~21_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[37]~21_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~20_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[27]~20_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[58]~19_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[58]~19_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[58]~18_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[58]~18_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[48]~17_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[48]~17_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[38]~16_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[38]~16_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[38]~15_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[38]~15_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[28]~14_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[28]~14_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[28]~13_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[28]~13_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[28]~12_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[28]~12_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[59]~11_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[59]~11_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~10_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~9_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[49]~9_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[39]~8_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[39]~8_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[29]~7_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[29]~7_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[29]~6_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[29]~6_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~5_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[60]~5_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~4_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[60]~4_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~3_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[50]~3_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~2_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[50]~2_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~1_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[40]~1_combout\;
\po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~0_combout\ <= NOT \po1|div|Div0|auto_generated|divider|divider|StageOut[40]~0_combout\;
\pc1|ALT_INV_Mux10~0_combout\ <= NOT \pc1|Mux10~0_combout\;
\pc1|ALT_INV_Mux32~0_combout\ <= NOT \pc1|Mux32~0_combout\;
\pc1|ALT_INV_Mux18~0_combout\ <= NOT \pc1|Mux18~0_combout\;
\pc1|ALT_INV_Mux14~0_combout\ <= NOT \pc1|Mux14~0_combout\;
\pc1|ALT_INV_Mux16~0_combout\ <= NOT \pc1|Mux16~0_combout\;
\pc1|ALT_INV_Mux26~0_combout\ <= NOT \pc1|Mux26~0_combout\;
\pc1|ALT_INV_Mux28~0_combout\ <= NOT \pc1|Mux28~0_combout\;
\pc1|ALT_INV_Mux12~0_combout\ <= NOT \pc1|Mux12~0_combout\;
\pc1|ALT_INV_Mux9~0_combout\ <= NOT \pc1|Mux9~0_combout\;
\LM|ALT_INV_WideNor0~combout\ <= NOT \LM|WideNor0~combout\;
\LM|ALT_INV_Equal2~1_combout\ <= NOT \LM|Equal2~1_combout\;

-- Location: IOOBUF_X28_Y0_N19
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

-- Location: IOOBUF_X28_Y0_N53
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

-- Location: IOOBUF_X8_Y0_N36
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

-- Location: IOOBUF_X6_Y0_N2
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

-- Location: IOOBUF_X26_Y0_N59
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

-- Location: IOOBUF_X28_Y0_N2
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

-- Location: IOOBUF_X30_Y0_N2
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

-- Location: IOOBUF_X26_Y0_N42
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

-- Location: IOOBUF_X2_Y0_N42
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

-- Location: IOOBUF_X4_Y0_N53
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

-- Location: IOOBUF_X4_Y0_N2
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

-- Location: IOOBUF_X2_Y0_N93
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

-- Location: IOOBUF_X2_Y0_N76
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

-- Location: IOOBUF_X4_Y0_N19
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

-- Location: IOOBUF_X4_Y0_N36
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

-- Location: IOOBUF_X26_Y0_N93
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

-- Location: IOOBUF_X8_Y0_N19
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

-- Location: IOOBUF_X6_Y0_N19
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

-- Location: IOOBUF_X28_Y0_N36
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

-- Location: IOOBUF_X6_Y0_N53
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

-- Location: IOOBUF_X6_Y0_N36
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

-- Location: IOOBUF_X8_Y0_N2
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

-- Location: IOOBUF_X8_Y0_N53
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

-- Location: IOOBUF_X26_Y0_N76
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

-- Location: LABCELL_X7_Y4_N24
\ft|state_reg~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ft|state_reg~1_combout\ = ( \ft|state_reg\(5) & ( \ft|state_reg\(2) & ( (!\ft|state_reg\(3) & (!\ft|state_reg\(4) & ((!\ft|state_reg\(0)) # (!\ft|state_reg\(1))))) ) ) ) # ( !\ft|state_reg\(5) & ( \ft|state_reg\(2) & ( (!\ft|state_reg\(0)) # 
-- (!\ft|state_reg\(1)) ) ) ) # ( \ft|state_reg\(5) & ( !\ft|state_reg\(2) & ( (!\ft|state_reg\(3) & (\ft|state_reg\(0) & (!\ft|state_reg\(4) & \ft|state_reg\(1)))) ) ) ) # ( !\ft|state_reg\(5) & ( !\ft|state_reg\(2) & ( (\ft|state_reg\(0) & 
-- \ft|state_reg\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000010000011111111110011001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(3),
	datab => \ft|ALT_INV_state_reg\(0),
	datac => \ft|ALT_INV_state_reg\(4),
	datad => \ft|ALT_INV_state_reg\(1),
	datae => \ft|ALT_INV_state_reg\(5),
	dataf => \ft|ALT_INV_state_reg\(2),
	combout => \ft|state_reg~1_combout\);

-- Location: IOIBUF_X2_Y0_N58
\clearn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clearn,
	o => \clearn~input_o\);

-- Location: FF_X8_Y4_N20
\ft|state_reg[2]\ : dffeas
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
	q => \ft|state_reg\(2));

-- Location: MLABCELL_X8_Y4_N6
\ft|state_reg~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ft|state_reg~4_combout\ = ( \ft|state_reg\(5) & ( \ft|state_reg\(1) & ( (!\ft|state_reg\(3) & !\ft|state_reg\(4)) ) ) ) # ( !\ft|state_reg\(5) & ( \ft|state_reg\(1) & ( (\ft|state_reg\(2) & (\ft|state_reg\(0) & (\ft|state_reg\(3) & \ft|state_reg\(4)))) ) 
-- ) ) # ( \ft|state_reg\(5) & ( !\ft|state_reg\(1) & ( (!\ft|state_reg\(4) & ((!\ft|state_reg\(2)) # (!\ft|state_reg\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000000000000000000000011111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(2),
	datab => \ft|ALT_INV_state_reg\(0),
	datac => \ft|ALT_INV_state_reg\(3),
	datad => \ft|ALT_INV_state_reg\(4),
	datae => \ft|ALT_INV_state_reg\(5),
	dataf => \ft|ALT_INV_state_reg\(1),
	combout => \ft|state_reg~4_combout\);

-- Location: FF_X8_Y4_N8
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

-- Location: MLABCELL_X8_Y4_N30
\ft|state_reg~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ft|state_reg~5_combout\ = ( \ft|state_reg\(4) & ( \ft|state_reg\(2) & ( (!\ft|state_reg\(5) & ((!\ft|state_reg\(1)) # ((!\ft|state_reg\(0)) # (!\ft|state_reg\(3))))) ) ) ) # ( !\ft|state_reg\(4) & ( \ft|state_reg\(2) & ( (\ft|state_reg\(1) & 
-- (\ft|state_reg\(0) & (\ft|state_reg\(3) & !\ft|state_reg\(5)))) ) ) ) # ( \ft|state_reg\(4) & ( !\ft|state_reg\(2) & ( !\ft|state_reg\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000001000000001111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(1),
	datab => \ft|ALT_INV_state_reg\(0),
	datac => \ft|ALT_INV_state_reg\(3),
	datad => \ft|ALT_INV_state_reg\(5),
	datae => \ft|ALT_INV_state_reg\(4),
	dataf => \ft|ALT_INV_state_reg\(2),
	combout => \ft|state_reg~5_combout\);

-- Location: FF_X8_Y4_N32
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

-- Location: LABCELL_X7_Y4_N51
\ft|state_reg~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ft|state_reg~3_combout\ = ( \ft|state_reg\(5) & ( \ft|state_reg\(2) & ( (!\ft|state_reg\(3) & (\ft|state_reg\(0) & (\ft|state_reg\(1) & !\ft|state_reg\(4)))) ) ) ) # ( !\ft|state_reg\(5) & ( \ft|state_reg\(2) & ( !\ft|state_reg\(3) $ 
-- (((!\ft|state_reg\(0)) # (!\ft|state_reg\(1)))) ) ) ) # ( \ft|state_reg\(5) & ( !\ft|state_reg\(2) & ( (\ft|state_reg\(3) & (!\ft|state_reg\(1) & !\ft|state_reg\(4))) ) ) ) # ( !\ft|state_reg\(5) & ( !\ft|state_reg\(2) & ( \ft|state_reg\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100000000000001010110010101100000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(3),
	datab => \ft|ALT_INV_state_reg\(0),
	datac => \ft|ALT_INV_state_reg\(1),
	datad => \ft|ALT_INV_state_reg\(4),
	datae => \ft|ALT_INV_state_reg\(5),
	dataf => \ft|ALT_INV_state_reg\(2),
	combout => \ft|state_reg~3_combout\);

-- Location: FF_X8_Y4_N2
\ft|state_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \ft|state_reg~3_combout\,
	clrn => \clearn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ft|state_reg\(3));

-- Location: LABCELL_X7_Y4_N30
\ft|state_reg~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ft|state_reg~2_combout\ = ( !\ft|state_reg\(5) & ( \ft|state_reg\(4) & ( !\ft|state_reg\(0) $ (!\ft|state_reg\(1)) ) ) ) # ( \ft|state_reg\(5) & ( !\ft|state_reg\(4) & ( (!\ft|state_reg\(0) & (\ft|state_reg\(1) & (!\ft|state_reg\(3)))) # 
-- (\ft|state_reg\(0) & (!\ft|state_reg\(1) & ((!\ft|state_reg\(3)) # (!\ft|state_reg\(2))))) ) ) ) # ( !\ft|state_reg\(5) & ( !\ft|state_reg\(4) & ( !\ft|state_reg\(0) $ (!\ft|state_reg\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001000110000001100110011001100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(0),
	datab => \ft|ALT_INV_state_reg\(1),
	datac => \ft|ALT_INV_state_reg\(3),
	datad => \ft|ALT_INV_state_reg\(2),
	datae => \ft|ALT_INV_state_reg\(5),
	dataf => \ft|ALT_INV_state_reg\(4),
	combout => \ft|state_reg~2_combout\);

-- Location: FF_X8_Y4_N50
\ft|state_reg[1]\ : dffeas
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
	q => \ft|state_reg\(1));

-- Location: LABCELL_X7_Y4_N9
\ft|state_reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ft|state_reg~0_combout\ = ( !\ft|state_reg\(5) & ( \ft|state_reg\(4) & ( !\ft|state_reg\(0) ) ) ) # ( \ft|state_reg\(5) & ( !\ft|state_reg\(4) & ( (!\ft|state_reg\(0) & ((!\ft|state_reg\(3)) # ((!\ft|state_reg\(1) & !\ft|state_reg\(2))))) ) ) ) # ( 
-- !\ft|state_reg\(5) & ( !\ft|state_reg\(4) & ( !\ft|state_reg\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(0),
	datab => \ft|ALT_INV_state_reg\(1),
	datac => \ft|ALT_INV_state_reg\(2),
	datad => \ft|ALT_INV_state_reg\(3),
	datae => \ft|ALT_INV_state_reg\(5),
	dataf => \ft|ALT_INV_state_reg\(4),
	combout => \ft|state_reg~0_combout\);

-- Location: FF_X8_Y4_N41
\ft|state_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \ft|state_reg~0_combout\,
	clrn => \clearn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ft|state_reg\(0));

-- Location: LABCELL_X9_Y4_N9
\pc1|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux28~0_combout\ = ( \ft|state_reg\(4) & ( !\ft|state_reg\(3) & ( (!\ft|state_reg\(0) & !\ft|state_reg\(5)) ) ) ) # ( !\ft|state_reg\(4) & ( !\ft|state_reg\(3) & ( (\ft|state_reg\(0) & \ft|state_reg\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(0),
	datad => \ft|ALT_INV_state_reg\(5),
	datae => \ft|ALT_INV_state_reg\(4),
	dataf => \ft|ALT_INV_state_reg\(3),
	combout => \pc1|Mux28~0_combout\);

-- Location: LABCELL_X9_Y4_N36
\pc1|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux29~0_combout\ = ( \ft|state_reg\(0) & ( \ft|state_reg\(3) & ( (\ft|state_reg\(5) & (((\ft|state_reg\(2)) # (\ft|state_reg\(1))) # (\ft|state_reg\(4)))) ) ) ) # ( !\ft|state_reg\(0) & ( \ft|state_reg\(3) & ( (\ft|state_reg\(5) & 
-- ((\ft|state_reg\(2)) # (\ft|state_reg\(4)))) ) ) ) # ( \ft|state_reg\(0) & ( !\ft|state_reg\(3) & ( (!\ft|state_reg\(1) & ((!\ft|state_reg\(2) & ((\ft|state_reg\(4)))) # (\ft|state_reg\(2) & (\ft|state_reg\(5))))) # (\ft|state_reg\(1) & (\ft|state_reg\(5) 
-- & (\ft|state_reg\(4)))) ) ) ) # ( !\ft|state_reg\(0) & ( !\ft|state_reg\(3) & ( (!\ft|state_reg\(5) & (\ft|state_reg\(4) & (!\ft|state_reg\(1) & !\ft|state_reg\(2)))) # (\ft|state_reg\(5) & (((\ft|state_reg\(1) & \ft|state_reg\(2))) # 
-- (\ft|state_reg\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100010101001100010101000100010001010101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(5),
	datab => \ft|ALT_INV_state_reg\(4),
	datac => \ft|ALT_INV_state_reg\(1),
	datad => \ft|ALT_INV_state_reg\(2),
	datae => \ft|ALT_INV_state_reg\(0),
	dataf => \ft|ALT_INV_state_reg\(3),
	combout => \pc1|Mux29~0_combout\);

-- Location: LABCELL_X10_Y4_N21
\pc1|lerMem[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|lerMem\(8) = ( \pc1|Mux29~0_combout\ & ( \pc1|Mux28~0_combout\ ) ) # ( !\pc1|Mux29~0_combout\ & ( \pc1|lerMem\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pc1|ALT_INV_Mux28~0_combout\,
	datad => \pc1|ALT_INV_lerMem\(8),
	dataf => \pc1|ALT_INV_Mux29~0_combout\,
	combout => \pc1|lerMem\(8));

-- Location: MLABCELL_X8_Y4_N24
\pc1|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux24~0_combout\ = ( !\ft|state_reg\(4) & ( (!\ft|state_reg\(1) & ((!\ft|state_reg\(5) & (!\ft|state_reg\(0) & \ft|state_reg\(2))) # (\ft|state_reg\(5) & (\ft|state_reg\(0) & !\ft|state_reg\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000000000000101000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(1),
	datab => \ft|ALT_INV_state_reg\(5),
	datac => \ft|ALT_INV_state_reg\(0),
	datad => \ft|ALT_INV_state_reg\(2),
	dataf => \ft|ALT_INV_state_reg\(4),
	combout => \pc1|Mux24~0_combout\);

-- Location: LABCELL_X7_Y4_N36
\pc1|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux25~0_combout\ = ( \ft|state_reg\(5) & ( \ft|state_reg\(4) ) ) # ( \ft|state_reg\(5) & ( !\ft|state_reg\(4) & ( (!\ft|state_reg\(3) & (!\ft|state_reg\(2) & (!\ft|state_reg\(0) $ (!\ft|state_reg\(1))))) # (\ft|state_reg\(3) & (((\ft|state_reg\(0) & 
-- \ft|state_reg\(1))) # (\ft|state_reg\(2)))) ) ) ) # ( !\ft|state_reg\(5) & ( !\ft|state_reg\(4) & ( (!\ft|state_reg\(1) & (\ft|state_reg\(3) & \ft|state_reg\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100011000010000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(0),
	datab => \ft|ALT_INV_state_reg\(1),
	datac => \ft|ALT_INV_state_reg\(3),
	datad => \ft|ALT_INV_state_reg\(2),
	datae => \ft|ALT_INV_state_reg\(5),
	dataf => \ft|ALT_INV_state_reg\(4),
	combout => \pc1|Mux25~0_combout\);

-- Location: MLABCELL_X8_Y4_N27
\pc1|lerMem[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|lerMem\(6) = ( \pc1|Mux25~0_combout\ & ( \pc1|Mux24~0_combout\ ) ) # ( !\pc1|Mux25~0_combout\ & ( \pc1|lerMem\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pc1|ALT_INV_Mux24~0_combout\,
	datad => \pc1|ALT_INV_lerMem\(6),
	dataf => \pc1|ALT_INV_Mux25~0_combout\,
	combout => \pc1|lerMem\(6));

-- Location: LABCELL_X9_Y4_N0
\pc1|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux18~0_combout\ = ( \ft|state_reg\(2) & ( (!\ft|state_reg\(0) & (!\ft|state_reg\(5) & \ft|state_reg\(1))) ) ) # ( !\ft|state_reg\(2) & ( (\ft|state_reg\(0) & (!\ft|state_reg\(5) & \ft|state_reg\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ft|ALT_INV_state_reg\(0),
	datac => \ft|ALT_INV_state_reg\(5),
	datad => \ft|ALT_INV_state_reg\(1),
	dataf => \ft|ALT_INV_state_reg\(2),
	combout => \pc1|Mux18~0_combout\);

-- Location: MLABCELL_X8_Y4_N3
\pc1|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux19~0_combout\ = ( \ft|state_reg\(3) & ( \ft|state_reg\(5) & ( (((\ft|state_reg\(1) & \ft|state_reg\(0))) # (\ft|state_reg\(2))) # (\ft|state_reg\(4)) ) ) ) # ( !\ft|state_reg\(3) & ( \ft|state_reg\(5) & ( \ft|state_reg\(4) ) ) ) # ( 
-- \ft|state_reg\(3) & ( !\ft|state_reg\(5) & ( (\ft|state_reg\(4) & ((!\ft|state_reg\(1) & (!\ft|state_reg\(0) & \ft|state_reg\(2))) # (\ft|state_reg\(1) & (\ft|state_reg\(0) & !\ft|state_reg\(2))))) ) ) ) # ( !\ft|state_reg\(3) & ( !\ft|state_reg\(5) & ( 
-- (\ft|state_reg\(1) & (!\ft|state_reg\(4) & \ft|state_reg\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000010010000000110011001100110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(1),
	datab => \ft|ALT_INV_state_reg\(4),
	datac => \ft|ALT_INV_state_reg\(0),
	datad => \ft|ALT_INV_state_reg\(2),
	datae => \ft|ALT_INV_state_reg\(3),
	dataf => \ft|ALT_INV_state_reg\(5),
	combout => \pc1|Mux19~0_combout\);

-- Location: LABCELL_X9_Y4_N51
\pc1|lerMem[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|lerMem\(3) = ( \pc1|Mux19~0_combout\ & ( \pc1|Mux18~0_combout\ ) ) # ( !\pc1|Mux19~0_combout\ & ( \pc1|lerMem\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|ALT_INV_lerMem\(3),
	datac => \pc1|ALT_INV_Mux18~0_combout\,
	dataf => \pc1|ALT_INV_Mux19~0_combout\,
	combout => \pc1|lerMem\(3));

-- Location: MLABCELL_X8_Y4_N12
\pc1|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux12~0_combout\ = ( \ft|state_reg\(5) ) # ( !\ft|state_reg\(5) & ( !\ft|state_reg\(0) $ (!\ft|state_reg\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(0),
	datac => \ft|ALT_INV_state_reg\(2),
	dataf => \ft|ALT_INV_state_reg\(5),
	combout => \pc1|Mux12~0_combout\);

-- Location: LABCELL_X7_Y4_N12
\pc1|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux21~0_combout\ = ( \ft|state_reg\(3) & ( \ft|state_reg\(4) & ( ((\ft|state_reg\(2) & (!\ft|state_reg\(0) $ (!\ft|state_reg\(1))))) # (\ft|state_reg\(5)) ) ) ) # ( !\ft|state_reg\(3) & ( \ft|state_reg\(4) & ( \ft|state_reg\(5) ) ) ) # ( 
-- \ft|state_reg\(3) & ( !\ft|state_reg\(4) & ( (!\ft|state_reg\(5) & (!\ft|state_reg\(2) & ((!\ft|state_reg\(1))))) # (\ft|state_reg\(5) & (((\ft|state_reg\(0) & \ft|state_reg\(1))) # (\ft|state_reg\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100110010001010101010101010101010101011101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(5),
	datab => \ft|ALT_INV_state_reg\(2),
	datac => \ft|ALT_INV_state_reg\(0),
	datad => \ft|ALT_INV_state_reg\(1),
	datae => \ft|ALT_INV_state_reg\(3),
	dataf => \ft|ALT_INV_state_reg\(4),
	combout => \pc1|Mux21~0_combout\);

-- Location: LABCELL_X10_Y4_N39
\pc1|lerMem[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|lerMem\(4) = ( \pc1|Mux21~0_combout\ & ( !\pc1|Mux12~0_combout\ ) ) # ( !\pc1|Mux21~0_combout\ & ( \pc1|lerMem\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pc1|ALT_INV_lerMem\(4),
	datad => \pc1|ALT_INV_Mux12~0_combout\,
	dataf => \pc1|ALT_INV_Mux21~0_combout\,
	combout => \pc1|lerMem\(4));

-- Location: LABCELL_X10_Y4_N18
\pc1|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux16~0_combout\ = ( \ft|state_reg\(2) & ( (!\ft|state_reg\(0) & !\ft|state_reg\(5)) ) ) # ( !\ft|state_reg\(2) & ( (\ft|state_reg\(0) & !\ft|state_reg\(5)) ) )

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
	combout => \pc1|Mux16~0_combout\);

-- Location: LABCELL_X9_Y4_N24
\pc1|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux17~0_combout\ = ( \ft|state_reg\(4) & ( \ft|state_reg\(3) & ( ((!\ft|state_reg\(2) & (!\ft|state_reg\(0) $ (!\ft|state_reg\(1))))) # (\ft|state_reg\(5)) ) ) ) # ( !\ft|state_reg\(4) & ( \ft|state_reg\(3) & ( (\ft|state_reg\(5) & 
-- (((\ft|state_reg\(0) & \ft|state_reg\(1))) # (\ft|state_reg\(2)))) ) ) ) # ( \ft|state_reg\(4) & ( !\ft|state_reg\(3) & ( \ft|state_reg\(5) ) ) ) # ( !\ft|state_reg\(4) & ( !\ft|state_reg\(3) & ( (\ft|state_reg\(2) & (!\ft|state_reg\(5) & 
-- !\ft|state_reg\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000011110000111100000011000001110100111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(0),
	datab => \ft|ALT_INV_state_reg\(2),
	datac => \ft|ALT_INV_state_reg\(5),
	datad => \ft|ALT_INV_state_reg\(1),
	datae => \ft|ALT_INV_state_reg\(4),
	dataf => \ft|ALT_INV_state_reg\(3),
	combout => \pc1|Mux17~0_combout\);

-- Location: LABCELL_X10_Y4_N57
\pc1|lerMem[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|lerMem\(2) = ( \pc1|lerMem\(2) & ( \pc1|Mux17~0_combout\ & ( \pc1|Mux16~0_combout\ ) ) ) # ( !\pc1|lerMem\(2) & ( \pc1|Mux17~0_combout\ & ( \pc1|Mux16~0_combout\ ) ) ) # ( \pc1|lerMem\(2) & ( !\pc1|Mux17~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|ALT_INV_Mux16~0_combout\,
	datae => \pc1|ALT_INV_lerMem\(2),
	dataf => \pc1|ALT_INV_Mux17~0_combout\,
	combout => \pc1|lerMem\(2));

-- Location: LABCELL_X10_Y4_N24
\pc1|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux14~0_combout\ = ( \ft|state_reg\(1) & ( !\ft|state_reg\(5) & ( !\ft|state_reg\(0) $ (\ft|state_reg\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(0),
	datad => \ft|ALT_INV_state_reg\(2),
	datae => \ft|ALT_INV_state_reg\(1),
	dataf => \ft|ALT_INV_state_reg\(5),
	combout => \pc1|Mux14~0_combout\);

-- Location: MLABCELL_X8_Y4_N36
\pc1|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux15~0_combout\ = ( \ft|state_reg\(4) & ( \ft|state_reg\(2) & ( ((!\ft|state_reg\(3) & (\ft|state_reg\(1) & \ft|state_reg\(0)))) # (\ft|state_reg\(5)) ) ) ) # ( !\ft|state_reg\(4) & ( \ft|state_reg\(2) & ( (\ft|state_reg\(3) & \ft|state_reg\(5)) ) ) 
-- ) # ( \ft|state_reg\(4) & ( !\ft|state_reg\(2) & ( ((\ft|state_reg\(3) & (!\ft|state_reg\(1) & !\ft|state_reg\(0)))) # (\ft|state_reg\(5)) ) ) ) # ( !\ft|state_reg\(4) & ( !\ft|state_reg\(2) & ( (\ft|state_reg\(1) & ((!\ft|state_reg\(3) & 
-- (!\ft|state_reg\(5))) # (\ft|state_reg\(3) & (\ft|state_reg\(5) & \ft|state_reg\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001001011100110011001100010001000100010011001100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(3),
	datab => \ft|ALT_INV_state_reg\(5),
	datac => \ft|ALT_INV_state_reg\(1),
	datad => \ft|ALT_INV_state_reg\(0),
	datae => \ft|ALT_INV_state_reg\(4),
	dataf => \ft|ALT_INV_state_reg\(2),
	combout => \pc1|Mux15~0_combout\);

-- Location: LABCELL_X10_Y4_N48
\pc1|lerMem[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|lerMem\(1) = ( \pc1|Mux15~0_combout\ & ( \pc1|Mux14~0_combout\ ) ) # ( !\pc1|Mux15~0_combout\ & ( \pc1|lerMem\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pc1|ALT_INV_Mux14~0_combout\,
	datac => \pc1|ALT_INV_lerMem\(1),
	dataf => \pc1|ALT_INV_Mux15~0_combout\,
	combout => \pc1|lerMem\(1));

-- Location: LABCELL_X10_Y4_N12
\LM|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Equal5~0_combout\ = ( !\pc1|lerMem\(1) & ( (!\pc1|lerMem\(3) & (!\pc1|lerMem\(4) & !\pc1|lerMem\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|ALT_INV_lerMem\(3),
	datab => \pc1|ALT_INV_lerMem\(4),
	datac => \pc1|ALT_INV_lerMem\(2),
	dataf => \pc1|ALT_INV_lerMem\(1),
	combout => \LM|Equal5~0_combout\);

-- Location: LABCELL_X7_Y4_N42
\pc1|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux23~0_combout\ = ( \ft|state_reg\(5) & ( \ft|state_reg\(4) ) ) # ( !\ft|state_reg\(5) & ( \ft|state_reg\(4) & ( (\ft|state_reg\(0) & (\ft|state_reg\(1) & (\ft|state_reg\(3) & \ft|state_reg\(2)))) ) ) ) # ( \ft|state_reg\(5) & ( !\ft|state_reg\(4) & 
-- ( (!\ft|state_reg\(3) & (!\ft|state_reg\(0) & (!\ft|state_reg\(1) & !\ft|state_reg\(2)))) # (\ft|state_reg\(3) & (((\ft|state_reg\(0) & \ft|state_reg\(1))) # (\ft|state_reg\(2)))) ) ) ) # ( !\ft|state_reg\(5) & ( !\ft|state_reg\(4) & ( (\ft|state_reg\(1) 
-- & (\ft|state_reg\(3) & !\ft|state_reg\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000100000010000111100000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(0),
	datab => \ft|ALT_INV_state_reg\(1),
	datac => \ft|ALT_INV_state_reg\(3),
	datad => \ft|ALT_INV_state_reg\(2),
	datae => \ft|ALT_INV_state_reg\(5),
	dataf => \ft|ALT_INV_state_reg\(4),
	combout => \pc1|Mux23~0_combout\);

-- Location: LABCELL_X7_Y4_N3
\pc1|lerMem[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|lerMem\(5) = ( \pc1|lerMem\(5) & ( \pc1|Mux23~0_combout\ & ( !\pc1|Mux12~0_combout\ ) ) ) # ( !\pc1|lerMem\(5) & ( \pc1|Mux23~0_combout\ & ( !\pc1|Mux12~0_combout\ ) ) ) # ( \pc1|lerMem\(5) & ( !\pc1|Mux23~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pc1|ALT_INV_Mux12~0_combout\,
	datae => \pc1|ALT_INV_lerMem\(5),
	dataf => \pc1|ALT_INV_Mux23~0_combout\,
	combout => \pc1|lerMem\(5));

-- Location: LABCELL_X9_Y4_N42
\pc1|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux31~0_combout\ = ( \ft|state_reg\(4) & ( \ft|state_reg\(3) & ( \ft|state_reg\(5) ) ) ) # ( !\ft|state_reg\(4) & ( \ft|state_reg\(3) & ( (\ft|state_reg\(5) & ((!\ft|state_reg\(1) $ (\ft|state_reg\(0))) # (\ft|state_reg\(2)))) ) ) ) # ( 
-- \ft|state_reg\(4) & ( !\ft|state_reg\(3) & ( ((!\ft|state_reg\(2) & \ft|state_reg\(1))) # (\ft|state_reg\(5)) ) ) ) # ( !\ft|state_reg\(4) & ( !\ft|state_reg\(3) & ( (\ft|state_reg\(5) & (\ft|state_reg\(2) & (\ft|state_reg\(1) & \ft|state_reg\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001010111010101110101010001000101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(5),
	datab => \ft|ALT_INV_state_reg\(2),
	datac => \ft|ALT_INV_state_reg\(1),
	datad => \ft|ALT_INV_state_reg\(0),
	datae => \ft|ALT_INV_state_reg\(4),
	dataf => \ft|ALT_INV_state_reg\(3),
	combout => \pc1|Mux31~0_combout\);

-- Location: LABCELL_X9_Y4_N15
\pc1|lerMem[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|lerMem\(9) = ( \pc1|Mux31~0_combout\ & ( \pc1|Mux28~0_combout\ ) ) # ( !\pc1|Mux31~0_combout\ & ( \pc1|lerMem\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|ALT_INV_Mux28~0_combout\,
	datab => \pc1|ALT_INV_lerMem\(9),
	dataf => \pc1|ALT_INV_Mux31~0_combout\,
	combout => \pc1|lerMem\(9));

-- Location: LABCELL_X11_Y4_N27
\LM|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Equal0~0_combout\ = ( !\pc1|lerMem\(9) & ( (\LM|Equal5~0_combout\ & !\pc1|lerMem\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LM|ALT_INV_Equal5~0_combout\,
	datad => \pc1|ALT_INV_lerMem\(5),
	dataf => \pc1|ALT_INV_lerMem\(9),
	combout => \LM|Equal0~0_combout\);

-- Location: LABCELL_X9_Y4_N21
\pc1|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux26~0_combout\ = ( \ft|state_reg\(3) & ( (!\ft|state_reg\(0) & (!\ft|state_reg\(4) & !\ft|state_reg\(5))) ) ) # ( !\ft|state_reg\(3) & ( (\ft|state_reg\(0) & (!\ft|state_reg\(4) & \ft|state_reg\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(0),
	datac => \ft|ALT_INV_state_reg\(4),
	datad => \ft|ALT_INV_state_reg\(5),
	dataf => \ft|ALT_INV_state_reg\(3),
	combout => \pc1|Mux26~0_combout\);

-- Location: LABCELL_X9_Y4_N33
\pc1|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux27~0_combout\ = ( \ft|state_reg\(5) & ( \ft|state_reg\(3) & ( (((\ft|state_reg\(1) & \ft|state_reg\(0))) # (\ft|state_reg\(4))) # (\ft|state_reg\(2)) ) ) ) # ( !\ft|state_reg\(5) & ( \ft|state_reg\(3) & ( (\ft|state_reg\(1) & (\ft|state_reg\(2) & 
-- !\ft|state_reg\(4))) ) ) ) # ( \ft|state_reg\(5) & ( !\ft|state_reg\(3) & ( ((!\ft|state_reg\(1) & (\ft|state_reg\(2) & !\ft|state_reg\(0))) # (\ft|state_reg\(1) & (!\ft|state_reg\(2) & \ft|state_reg\(0)))) # (\ft|state_reg\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001011110100111100010000000100000011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(1),
	datab => \ft|ALT_INV_state_reg\(2),
	datac => \ft|ALT_INV_state_reg\(4),
	datad => \ft|ALT_INV_state_reg\(0),
	datae => \ft|ALT_INV_state_reg\(5),
	dataf => \ft|ALT_INV_state_reg\(3),
	combout => \pc1|Mux27~0_combout\);

-- Location: LABCELL_X9_Y4_N54
\pc1|lerMem[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|lerMem\(7) = ( \pc1|Mux27~0_combout\ & ( \pc1|Mux26~0_combout\ ) ) # ( !\pc1|Mux27~0_combout\ & ( \pc1|lerMem\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pc1|ALT_INV_Mux26~0_combout\,
	datad => \pc1|ALT_INV_lerMem\(7),
	dataf => \pc1|ALT_INV_Mux27~0_combout\,
	combout => \pc1|lerMem\(7));

-- Location: MLABCELL_X8_Y4_N51
\pc1|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux13~0_combout\ = ( \ft|state_reg\(4) & ( \ft|state_reg\(1) & ( ((\ft|state_reg\(2) & (!\ft|state_reg\(0) & !\ft|state_reg\(3)))) # (\ft|state_reg\(5)) ) ) ) # ( !\ft|state_reg\(4) & ( \ft|state_reg\(1) & ( (\ft|state_reg\(5) & (\ft|state_reg\(3) & 
-- ((\ft|state_reg\(0)) # (\ft|state_reg\(2))))) ) ) ) # ( \ft|state_reg\(4) & ( !\ft|state_reg\(1) & ( ((\ft|state_reg\(2) & (\ft|state_reg\(0) & !\ft|state_reg\(3)))) # (\ft|state_reg\(5)) ) ) ) # ( !\ft|state_reg\(4) & ( !\ft|state_reg\(1) & ( 
-- (!\ft|state_reg\(2) & (!\ft|state_reg\(5) & !\ft|state_reg\(3))) # (\ft|state_reg\(2) & (\ft|state_reg\(5) & \ft|state_reg\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000101000111110000111100000000000001110100111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(2),
	datab => \ft|ALT_INV_state_reg\(0),
	datac => \ft|ALT_INV_state_reg\(5),
	datad => \ft|ALT_INV_state_reg\(3),
	datae => \ft|ALT_INV_state_reg\(4),
	dataf => \ft|ALT_INV_state_reg\(1),
	combout => \pc1|Mux13~0_combout\);

-- Location: LABCELL_X11_Y4_N45
\pc1|lerMem[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|lerMem\(0) = ( \pc1|Mux13~0_combout\ & ( !\pc1|Mux12~0_combout\ ) ) # ( !\pc1|Mux13~0_combout\ & ( \pc1|lerMem\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pc1|ALT_INV_Mux12~0_combout\,
	datad => \pc1|ALT_INV_lerMem\(0),
	dataf => \pc1|ALT_INV_Mux13~0_combout\,
	combout => \pc1|lerMem\(0));

-- Location: LABCELL_X11_Y4_N0
\LM|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Equal6~0_combout\ = ( !\pc1|lerMem\(0) & ( (!\pc1|lerMem\(8) & (\pc1|lerMem\(6) & (\LM|Equal0~0_combout\ & !\pc1|lerMem\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|ALT_INV_lerMem\(8),
	datab => \pc1|ALT_INV_lerMem\(6),
	datac => \LM|ALT_INV_Equal0~0_combout\,
	datad => \pc1|ALT_INV_lerMem\(7),
	dataf => \pc1|ALT_INV_lerMem\(0),
	combout => \LM|Equal6~0_combout\);

-- Location: LABCELL_X11_Y4_N30
\LM|Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Equal9~0_combout\ = ( !\pc1|lerMem\(8) & ( (!\pc1|lerMem\(6) & (!\pc1|lerMem\(0) & !\pc1|lerMem\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|ALT_INV_lerMem\(6),
	datab => \pc1|ALT_INV_lerMem\(0),
	datac => \pc1|ALT_INV_lerMem\(7),
	dataf => \pc1|ALT_INV_lerMem\(8),
	combout => \LM|Equal9~0_combout\);

-- Location: LABCELL_X11_Y4_N54
\LM|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Equal1~0_combout\ = ( !\pc1|lerMem\(9) & ( (\LM|Equal9~0_combout\ & !\pc1|lerMem\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \LM|ALT_INV_Equal9~0_combout\,
	datad => \pc1|ALT_INV_lerMem\(5),
	dataf => \pc1|ALT_INV_lerMem\(9),
	combout => \LM|Equal1~0_combout\);

-- Location: LABCELL_X11_Y4_N6
\LM|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Selector7~0_combout\ = ( \LM|Equal1~0_combout\ & ( \pc1|lerMem\(1) & ( (!\LM|Equal6~0_combout\ & (((\pc1|lerMem\(2)) # (\pc1|lerMem\(3))) # (\pc1|lerMem\(4)))) ) ) ) # ( !\LM|Equal1~0_combout\ & ( \pc1|lerMem\(1) & ( !\LM|Equal6~0_combout\ ) ) ) # ( 
-- \LM|Equal1~0_combout\ & ( !\pc1|lerMem\(1) & ( (!\LM|Equal6~0_combout\ & (((!\pc1|lerMem\(3)) # (\pc1|lerMem\(2))) # (\pc1|lerMem\(4)))) ) ) ) # ( !\LM|Equal1~0_combout\ & ( !\pc1|lerMem\(1) & ( !\LM|Equal6~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101000101010101010101010101010100010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LM|ALT_INV_Equal6~0_combout\,
	datab => \pc1|ALT_INV_lerMem\(4),
	datac => \pc1|ALT_INV_lerMem\(3),
	datad => \pc1|ALT_INV_lerMem\(2),
	datae => \LM|ALT_INV_Equal1~0_combout\,
	dataf => \pc1|ALT_INV_lerMem\(1),
	combout => \LM|Selector7~0_combout\);

-- Location: LABCELL_X11_Y4_N15
\LM|Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Equal5~1_combout\ = ( !\pc1|lerMem\(9) & ( (\LM|Equal5~0_combout\ & (\LM|Equal9~0_combout\ & \pc1|lerMem\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LM|ALT_INV_Equal5~0_combout\,
	datac => \LM|ALT_INV_Equal9~0_combout\,
	datad => \pc1|ALT_INV_lerMem\(5),
	dataf => \pc1|ALT_INV_lerMem\(9),
	combout => \LM|Equal5~1_combout\);

-- Location: LABCELL_X11_Y4_N18
\LM|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Selector6~0_combout\ = ( \pc1|lerMem\(6) & ( \pc1|lerMem\(0) & ( !\LM|Equal5~1_combout\ ) ) ) # ( !\pc1|lerMem\(6) & ( \pc1|lerMem\(0) & ( (!\LM|Equal5~1_combout\ & (((!\LM|Equal0~0_combout\) # (\pc1|lerMem\(7))) # (\pc1|lerMem\(8)))) ) ) ) # ( 
-- \pc1|lerMem\(6) & ( !\pc1|lerMem\(0) & ( !\LM|Equal5~1_combout\ ) ) ) # ( !\pc1|lerMem\(6) & ( !\pc1|lerMem\(0) & ( (!\LM|Equal5~1_combout\ & ((!\LM|Equal0~0_combout\) # (!\pc1|lerMem\(8) $ (\pc1|lerMem\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110100000000111111110000000011011111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|ALT_INV_lerMem\(8),
	datab => \LM|ALT_INV_Equal0~0_combout\,
	datac => \pc1|ALT_INV_lerMem\(7),
	datad => \LM|ALT_INV_Equal5~1_combout\,
	datae => \pc1|ALT_INV_lerMem\(6),
	dataf => \pc1|ALT_INV_lerMem\(0),
	combout => \LM|Selector6~0_combout\);

-- Location: LABCELL_X11_Y4_N33
\LM|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Equal2~0_combout\ = ( \LM|Equal1~0_combout\ & ( !\pc1|lerMem\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pc1|ALT_INV_lerMem\(1),
	dataf => \LM|ALT_INV_Equal1~0_combout\,
	combout => \LM|Equal2~0_combout\);

-- Location: LABCELL_X11_Y4_N51
\LM|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Equal2~1_combout\ = ( \pc1|lerMem\(2) & ( (\LM|Equal2~0_combout\ & (!\pc1|lerMem\(4) & !\pc1|lerMem\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LM|ALT_INV_Equal2~0_combout\,
	datac => \pc1|ALT_INV_lerMem\(4),
	datad => \pc1|ALT_INV_lerMem\(3),
	dataf => \pc1|ALT_INV_lerMem\(2),
	combout => \LM|Equal2~1_combout\);

-- Location: LABCELL_X11_Y4_N57
\LM|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Equal4~0_combout\ = ( \pc1|lerMem\(4) & ( (\LM|Equal2~0_combout\ & (!\pc1|lerMem\(2) & !\pc1|lerMem\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LM|ALT_INV_Equal2~0_combout\,
	datac => \pc1|ALT_INV_lerMem\(2),
	datad => \pc1|ALT_INV_lerMem\(3),
	dataf => \pc1|ALT_INV_lerMem\(4),
	combout => \LM|Equal4~0_combout\);

-- Location: LABCELL_X11_Y4_N42
\LM|WideNor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|WideNor0~0_combout\ = ( !\LM|Equal4~0_combout\ & ( (!\LM|Equal9~0_combout\) # ((!\LM|Equal5~0_combout\) # ((!\pc1|lerMem\(9)) # (\pc1|lerMem\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111111111111101111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LM|ALT_INV_Equal9~0_combout\,
	datab => \LM|ALT_INV_Equal5~0_combout\,
	datac => \pc1|ALT_INV_lerMem\(9),
	datad => \pc1|ALT_INV_lerMem\(5),
	dataf => \LM|ALT_INV_Equal4~0_combout\,
	combout => \LM|WideNor0~0_combout\);

-- Location: LABCELL_X11_Y4_N36
\LM|WideNor0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|WideNor0~combout\ = ( \LM|WideNor0~0_combout\ & ( (\LM|Selector7~0_combout\ & (\LM|Selector6~0_combout\ & !\LM|Equal2~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \LM|ALT_INV_Selector7~0_combout\,
	datac => \LM|ALT_INV_Selector6~0_combout\,
	datad => \LM|ALT_INV_Equal2~1_combout\,
	dataf => \LM|ALT_INV_WideNor0~0_combout\,
	combout => \LM|WideNor0~combout\);

-- Location: LABCELL_X11_Y4_N39
\LM|Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Selector7~1_combout\ = ( !\LM|Equal5~1_combout\ & ( (!\LM|WideNor0~combout\ & \LM|Selector7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LM|ALT_INV_WideNor0~combout\,
	datac => \LM|ALT_INV_Selector7~0_combout\,
	dataf => \LM|ALT_INV_Equal5~1_combout\,
	combout => \LM|Selector7~1_combout\);

-- Location: LABCELL_X10_Y4_N0
\pc1|Mux32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux32~0_combout\ = ( \ft|state_reg\(4) & ( (!\ft|state_reg\(5) & (!\ft|state_reg\(0) $ (((\ft|state_reg\(3)) # (\ft|state_reg\(2)))))) ) ) # ( !\ft|state_reg\(4) & ( (!\ft|state_reg\(0) & (!\ft|state_reg\(5))) # (\ft|state_reg\(0) & 
-- (\ft|state_reg\(5) & !\ft|state_reg\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100000101001011010000010010000010100001001000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(0),
	datab => \ft|ALT_INV_state_reg\(2),
	datac => \ft|ALT_INV_state_reg\(5),
	datad => \ft|ALT_INV_state_reg\(3),
	dataf => \ft|ALT_INV_state_reg\(4),
	combout => \pc1|Mux32~0_combout\);

-- Location: LABCELL_X10_Y4_N33
\pc1|Mux33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux33~0_combout\ = ( \ft|state_reg\(3) & ( \ft|state_reg\(4) ) ) # ( !\ft|state_reg\(3) & ( \ft|state_reg\(4) & ( ((!\ft|state_reg\(2)) # ((\ft|state_reg\(5)) # (\ft|state_reg\(0)))) # (\ft|state_reg\(1)) ) ) ) # ( \ft|state_reg\(3) & ( 
-- !\ft|state_reg\(4) & ( ((!\ft|state_reg\(5)) # (!\ft|state_reg\(1) $ (\ft|state_reg\(0)))) # (\ft|state_reg\(2)) ) ) ) # ( !\ft|state_reg\(3) & ( !\ft|state_reg\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111011011111011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(1),
	datab => \ft|ALT_INV_state_reg\(2),
	datac => \ft|ALT_INV_state_reg\(0),
	datad => \ft|ALT_INV_state_reg\(5),
	datae => \ft|ALT_INV_state_reg\(3),
	dataf => \ft|ALT_INV_state_reg\(4),
	combout => \pc1|Mux33~0_combout\);

-- Location: LABCELL_X10_Y4_N9
\pc1|enabler1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|enabler1~combout\ = ( \pc1|Mux33~0_combout\ & ( \pc1|Mux32~0_combout\ ) ) # ( !\pc1|Mux33~0_combout\ & ( \pc1|enabler1~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pc1|ALT_INV_enabler1~combout\,
	datac => \pc1|ALT_INV_Mux32~0_combout\,
	dataf => \pc1|ALT_INV_Mux33~0_combout\,
	combout => \pc1|enabler1~combout\);

-- Location: FF_X11_Y4_N41
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

-- Location: LABCELL_X10_Y4_N36
\LM|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Selector1~0_combout\ = ( !\pc1|lerMem\(3) & ( (\LM|Equal1~0_combout\ & (!\pc1|lerMem\(2) & (!\pc1|lerMem\(4) $ (!\pc1|lerMem\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000100000000100000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|ALT_INV_lerMem\(4),
	datab => \LM|ALT_INV_Equal1~0_combout\,
	datac => \pc1|ALT_INV_lerMem\(2),
	datad => \pc1|ALT_INV_lerMem\(1),
	dataf => \pc1|ALT_INV_lerMem\(3),
	combout => \LM|Selector1~0_combout\);

-- Location: FF_X10_Y4_N38
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

-- Location: FF_X6_Y4_N2
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
	ena => \po1|cmpMaior|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgMaior|q\(6));

-- Location: LABCELL_X11_Y4_N48
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

-- Location: FF_X11_Y4_N50
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

-- Location: FF_X6_Y4_N17
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
	ena => \po1|cmpMaior|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgMaior|q\(5));

-- Location: LABCELL_X11_Y4_N12
\LM|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Selector4~0_combout\ = ( \LM|Selector7~0_combout\ & ( \LM|Equal4~0_combout\ ) ) # ( !\LM|Selector7~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \LM|ALT_INV_Equal4~0_combout\,
	dataf => \LM|ALT_INV_Selector7~0_combout\,
	combout => \LM|Selector4~0_combout\);

-- Location: FF_X11_Y4_N14
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

-- Location: FF_X6_Y4_N23
\po1|rgMaior|q[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|r1|q\(3),
	sload => VCC,
	ena => \po1|cmpMaior|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgMaior|q[3]~DUPLICATE_q\);

-- Location: LABCELL_X11_Y4_N3
\LM|Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Selector6~1_combout\ = ( !\LM|WideNor0~combout\ & ( \LM|Selector6~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \LM|ALT_INV_Selector6~0_combout\,
	dataf => \LM|ALT_INV_WideNor0~combout\,
	combout => \LM|Selector6~1_combout\);

-- Location: FF_X11_Y4_N5
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

-- Location: FF_X6_Y4_N38
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
	ena => \po1|cmpMaior|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgMaior|q\(1));

-- Location: LABCELL_X10_Y4_N45
\LM|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Selector5~0_combout\ = ( \pc1|lerMem\(8) & ( \pc1|lerMem\(0) & ( !\LM|WideNor0~0_combout\ ) ) ) # ( !\pc1|lerMem\(8) & ( \pc1|lerMem\(0) & ( (!\LM|WideNor0~0_combout\) # ((\LM|Equal0~0_combout\ & (!\pc1|lerMem\(7) & !\pc1|lerMem\(6)))) ) ) ) # ( 
-- \pc1|lerMem\(8) & ( !\pc1|lerMem\(0) & ( (!\LM|WideNor0~0_combout\) # ((\LM|Equal0~0_combout\ & (!\pc1|lerMem\(7) & !\pc1|lerMem\(6)))) ) ) ) # ( !\pc1|lerMem\(8) & ( !\pc1|lerMem\(0) & ( !\LM|WideNor0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101110101010101010111010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LM|ALT_INV_WideNor0~0_combout\,
	datab => \LM|ALT_INV_Equal0~0_combout\,
	datac => \pc1|ALT_INV_lerMem\(7),
	datad => \pc1|ALT_INV_lerMem\(6),
	datae => \pc1|ALT_INV_lerMem\(8),
	dataf => \pc1|ALT_INV_lerMem\(0),
	combout => \LM|Selector5~0_combout\);

-- Location: FF_X10_Y4_N47
\po1|r1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \LM|Selector5~0_combout\,
	ena => \pc1|enabler1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|r1|q\(2));

-- Location: FF_X6_Y4_N40
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
	ena => \po1|cmpMaior|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgMaior|q\(2));

-- Location: FF_X6_Y4_N47
\po1|rgMaior|q[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|r1|q\(0),
	sload => VCC,
	ena => \po1|cmpMaior|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgMaior|q[0]~DUPLICATE_q\);

-- Location: MLABCELL_X6_Y4_N36
\po1|cmpMaior|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|cmpMaior|LessThan0~0_combout\ = ( \po1|r1|q\(1) & ( \po1|r1|q\(2) & ( (!\po1|rgMaior|q\(1)) # ((!\po1|rgMaior|q\(2)) # ((\po1|r1|q\(0) & !\po1|rgMaior|q[0]~DUPLICATE_q\))) ) ) ) # ( !\po1|r1|q\(1) & ( \po1|r1|q\(2) & ( (!\po1|rgMaior|q\(2)) # 
-- ((!\po1|rgMaior|q\(1) & (\po1|r1|q\(0) & !\po1|rgMaior|q[0]~DUPLICATE_q\))) ) ) ) # ( \po1|r1|q\(1) & ( !\po1|r1|q\(2) & ( (!\po1|rgMaior|q\(2) & ((!\po1|rgMaior|q\(1)) # ((\po1|r1|q\(0) & !\po1|rgMaior|q[0]~DUPLICATE_q\)))) ) ) ) # ( !\po1|r1|q\(1) & ( 
-- !\po1|r1|q\(2) & ( (!\po1|rgMaior|q\(1) & (\po1|r1|q\(0) & (!\po1|rgMaior|q\(2) & !\po1|rgMaior|q[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000101100001010000011110010111100001111101111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|rgMaior|ALT_INV_q\(1),
	datab => \po1|r1|ALT_INV_q\(0),
	datac => \po1|rgMaior|ALT_INV_q\(2),
	datad => \po1|rgMaior|ALT_INV_q[0]~DUPLICATE_q\,
	datae => \po1|r1|ALT_INV_q\(1),
	dataf => \po1|r1|ALT_INV_q\(2),
	combout => \po1|cmpMaior|LessThan0~0_combout\);

-- Location: LABCELL_X11_Y4_N24
\LM|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LM|Selector3~0_combout\ = ( \LM|Equal5~1_combout\ ) # ( !\LM|Equal5~1_combout\ & ( \LM|Equal4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \LM|ALT_INV_Equal4~0_combout\,
	dataf => \LM|ALT_INV_Equal5~1_combout\,
	combout => \LM|Selector3~0_combout\);

-- Location: FF_X11_Y4_N26
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

-- Location: FF_X6_Y4_N56
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
	ena => \po1|cmpMaior|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgMaior|q\(4));

-- Location: MLABCELL_X6_Y4_N54
\po1|cmpMaior|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|cmpMaior|LessThan0~1_combout\ = ( \po1|rgMaior|q\(4) & ( (\po1|r1|q\(4) & ((!\po1|rgMaior|q[3]~DUPLICATE_q\ & ((\po1|r1|q\(3)) # (\po1|cmpMaior|LessThan0~0_combout\))) # (\po1|rgMaior|q[3]~DUPLICATE_q\ & (\po1|cmpMaior|LessThan0~0_combout\ & 
-- \po1|r1|q\(3))))) ) ) # ( !\po1|rgMaior|q\(4) & ( ((!\po1|rgMaior|q[3]~DUPLICATE_q\ & ((\po1|r1|q\(3)) # (\po1|cmpMaior|LessThan0~0_combout\))) # (\po1|rgMaior|q[3]~DUPLICATE_q\ & (\po1|cmpMaior|LessThan0~0_combout\ & \po1|r1|q\(3)))) # (\po1|r1|q\(4)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101111111111001010111111111100000000001010110000000000101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|rgMaior|ALT_INV_q[3]~DUPLICATE_q\,
	datab => \po1|cmpMaior|ALT_INV_LessThan0~0_combout\,
	datac => \po1|r1|ALT_INV_q\(3),
	datad => \po1|r1|ALT_INV_q\(4),
	dataf => \po1|rgMaior|ALT_INV_q\(4),
	combout => \po1|cmpMaior|LessThan0~1_combout\);

-- Location: MLABCELL_X6_Y4_N0
\po1|cmpMaior|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|cmpMaior|LessThan0~2_combout\ = ( \po1|r1|q\(5) & ( (!\po1|rgMaior|q\(5)) # ((!\po1|rgMaior|q\(6) & ((\po1|r1|q\(6)) # (\po1|cmpMaior|LessThan0~1_combout\))) # (\po1|rgMaior|q\(6) & (\po1|cmpMaior|LessThan0~1_combout\ & \po1|r1|q\(6)))) ) ) # ( 
-- !\po1|r1|q\(5) & ( (!\po1|rgMaior|q\(5) & ((!\po1|rgMaior|q\(6) & ((\po1|r1|q\(6)) # (\po1|cmpMaior|LessThan0~1_combout\))) # (\po1|rgMaior|q\(6) & (\po1|cmpMaior|LessThan0~1_combout\ & \po1|r1|q\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010001100000010001000110011001110111011111100111011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|rgMaior|ALT_INV_q\(6),
	datab => \po1|rgMaior|ALT_INV_q\(5),
	datac => \po1|cmpMaior|ALT_INV_LessThan0~1_combout\,
	datad => \po1|r1|ALT_INV_q\(6),
	dataf => \po1|r1|ALT_INV_q\(5),
	combout => \po1|cmpMaior|LessThan0~2_combout\);

-- Location: FF_X6_Y4_N46
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
	ena => \po1|cmpMaior|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgMaior|q\(0));

-- Location: LABCELL_X12_Y4_N24
\rMaior|q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rMaior|q[0]~feeder_combout\ = ( \po1|rgMaior|q\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \po1|rgMaior|ALT_INV_q\(0),
	combout => \rMaior|q[0]~feeder_combout\);

-- Location: MLABCELL_X8_Y4_N57
\pc1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux0~0_combout\ = ( !\ft|state_reg\(1) & ( (!\ft|state_reg\(2) & \ft|state_reg\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(2),
	datac => \ft|ALT_INV_state_reg\(0),
	dataf => \ft|ALT_INV_state_reg\(1),
	combout => \pc1|Mux0~0_combout\);

-- Location: LABCELL_X12_Y4_N12
\pc1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux1~0_combout\ = ( \ft|state_reg\(5) & ( !\ft|state_reg\(4) & ( (\ft|state_reg\(3) & (!\ft|state_reg\(2) & (!\ft|state_reg\(1) $ (!\ft|state_reg\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(3),
	datab => \ft|ALT_INV_state_reg\(1),
	datac => \ft|ALT_INV_state_reg\(0),
	datad => \ft|ALT_INV_state_reg\(2),
	datae => \ft|ALT_INV_state_reg\(5),
	dataf => \ft|ALT_INV_state_reg\(4),
	combout => \pc1|Mux1~0_combout\);

-- Location: LABCELL_X12_Y4_N57
\pc1|enableRMaior\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|enableRMaior~combout\ = ( \pc1|enableRMaior~combout\ & ( \pc1|Mux1~0_combout\ & ( \pc1|Mux0~0_combout\ ) ) ) # ( !\pc1|enableRMaior~combout\ & ( \pc1|Mux1~0_combout\ & ( \pc1|Mux0~0_combout\ ) ) ) # ( \pc1|enableRMaior~combout\ & ( 
-- !\pc1|Mux1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pc1|ALT_INV_Mux0~0_combout\,
	datae => \pc1|ALT_INV_enableRMaior~combout\,
	dataf => \pc1|ALT_INV_Mux1~0_combout\,
	combout => \pc1|enableRMaior~combout\);

-- Location: FF_X12_Y4_N25
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

-- Location: FF_X12_Y4_N59
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

-- Location: FF_X12_Y4_N22
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

-- Location: FF_X6_Y4_N22
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
	ena => \po1|cmpMaior|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgMaior|q\(3));

-- Location: FF_X12_Y4_N13
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

-- Location: LABCELL_X12_Y4_N33
\rMaior|q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rMaior|q[4]~feeder_combout\ = ( \po1|rgMaior|q\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \po1|rgMaior|ALT_INV_q\(4),
	combout => \rMaior|q[4]~feeder_combout\);

-- Location: FF_X12_Y4_N34
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

-- Location: LABCELL_X12_Y4_N48
\rMaior|q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rMaior|q[5]~feeder_combout\ = ( \po1|rgMaior|q\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \po1|rgMaior|ALT_INV_q\(5),
	combout => \rMaior|q[5]~feeder_combout\);

-- Location: FF_X12_Y4_N49
\rMaior|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \rMaior|q[5]~feeder_combout\,
	ena => \pc1|enableRMaior~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rMaior|q\(5));

-- Location: LABCELL_X12_Y4_N51
\rMaior|q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rMaior|q[6]~feeder_combout\ = ( \po1|rgMaior|q\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \po1|rgMaior|ALT_INV_q\(6),
	combout => \rMaior|q[6]~feeder_combout\);

-- Location: FF_X12_Y4_N52
\rMaior|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \rMaior|q[6]~feeder_combout\,
	ena => \pc1|enableRMaior~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rMaior|q\(6));

-- Location: LABCELL_X12_Y4_N36
\rMaior|q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rMaior|q[7]~feeder_combout\ = ( \po1|rgMaior|q\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \po1|rgMaior|ALT_INV_q\(5),
	combout => \rMaior|q[7]~feeder_combout\);

-- Location: FF_X12_Y4_N37
\rMaior|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \rMaior|q[7]~feeder_combout\,
	ena => \pc1|enableRMaior~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rMaior|q\(7));

-- Location: FF_X6_Y4_N26
\po1|rgMenor|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|r1|q\(6),
	sload => VCC,
	ena => \po1|cmpMenor|lt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgMenor|q\(6));

-- Location: MLABCELL_X8_Y4_N54
\pc1|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux9~0_combout\ = ( !\ft|state_reg\(4) & ( (!\ft|state_reg\(2) & (!\ft|state_reg\(0) & (!\ft|state_reg\(3) & !\ft|state_reg\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(2),
	datab => \ft|ALT_INV_state_reg\(0),
	datac => \ft|ALT_INV_state_reg\(3),
	datad => \ft|ALT_INV_state_reg\(5),
	dataf => \ft|ALT_INV_state_reg\(4),
	combout => \pc1|Mux9~0_combout\);

-- Location: MLABCELL_X8_Y4_N42
\pc1|tx\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|tx~combout\ = ( \pc1|Mux9~0_combout\ & ( !\ft|state_reg\(1) ) ) # ( !\pc1|Mux9~0_combout\ & ( \pc1|tx~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ft|ALT_INV_state_reg\(1),
	datad => \pc1|ALT_INV_tx~combout\,
	dataf => \pc1|ALT_INV_Mux9~0_combout\,
	combout => \pc1|tx~combout\);

-- Location: FF_X6_Y4_N35
\po1|rgMenor|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|r1|q\(5),
	sload => VCC,
	ena => \po1|cmpMenor|lt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgMenor|q\(5));

-- Location: FF_X7_Y4_N8
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

-- Location: FF_X6_Y4_N32
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

-- Location: FF_X6_Y4_N50
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

-- Location: MLABCELL_X6_Y4_N30
\po1|cmpMenor|lt~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|cmpMenor|lt~0_combout\ = ( \po1|r1|q\(2) & ( \po1|rgMenor|q\(1) & ( (\po1|rgMenor|q\(2) & ((!\po1|r1|q\(1)) # ((\po1|rgMenor|q\(0) & !\po1|r1|q\(0))))) ) ) ) # ( !\po1|r1|q\(2) & ( \po1|rgMenor|q\(1) & ( ((!\po1|r1|q\(1)) # ((\po1|rgMenor|q\(0) & 
-- !\po1|r1|q\(0)))) # (\po1|rgMenor|q\(2)) ) ) ) # ( \po1|r1|q\(2) & ( !\po1|rgMenor|q\(1) & ( (\po1|rgMenor|q\(0) & (\po1|rgMenor|q\(2) & (!\po1|r1|q\(1) & !\po1|r1|q\(0)))) ) ) ) # ( !\po1|r1|q\(2) & ( !\po1|rgMenor|q\(1) & ( ((\po1|rgMenor|q\(0) & 
-- (!\po1|r1|q\(1) & !\po1|r1|q\(0)))) # (\po1|rgMenor|q\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001100110011000100000000000011110111111100110011000100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|rgMenor|ALT_INV_q\(0),
	datab => \po1|rgMenor|ALT_INV_q\(2),
	datac => \po1|r1|ALT_INV_q\(1),
	datad => \po1|r1|ALT_INV_q\(0),
	datae => \po1|r1|ALT_INV_q\(2),
	dataf => \po1|rgMenor|ALT_INV_q\(1),
	combout => \po1|cmpMenor|lt~0_combout\);

-- Location: FF_X6_Y4_N53
\po1|rgMenor|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|r1|q\(4),
	sload => VCC,
	ena => \po1|cmpMenor|lt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgMenor|q\(4));

-- Location: MLABCELL_X6_Y4_N51
\po1|cmpMenor|lt~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|cmpMenor|lt~1_combout\ = ( \po1|r1|q\(4) & ( \po1|rgMenor|q\(4) & ( (!\po1|r1|q\(3) & ((\po1|cmpMenor|lt~0_combout\) # (\po1|rgMenor|q\(3)))) # (\po1|r1|q\(3) & (\po1|rgMenor|q\(3) & \po1|cmpMenor|lt~0_combout\)) ) ) ) # ( !\po1|r1|q\(4) & ( 
-- \po1|rgMenor|q\(4) ) ) # ( !\po1|r1|q\(4) & ( !\po1|rgMenor|q\(4) & ( (!\po1|r1|q\(3) & ((\po1|cmpMenor|lt~0_combout\) # (\po1|rgMenor|q\(3)))) # (\po1|r1|q\(3) & (\po1|rgMenor|q\(3) & \po1|cmpMenor|lt~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101111000000000000000011111111111111110000101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|r1|ALT_INV_q\(3),
	datac => \po1|rgMenor|ALT_INV_q\(3),
	datad => \po1|cmpMenor|ALT_INV_lt~0_combout\,
	datae => \po1|r1|ALT_INV_q\(4),
	dataf => \po1|rgMenor|ALT_INV_q\(4),
	combout => \po1|cmpMenor|lt~1_combout\);

-- Location: MLABCELL_X6_Y4_N24
\po1|cmpMenor|lt~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|cmpMenor|lt~2_combout\ = ( \po1|r1|q\(6) & ( \po1|cmpMenor|lt~1_combout\ & ( ((!\po1|rgMenor|q\(6) & (\po1|rgMenor|q\(5) & !\po1|r1|q\(5))) # (\po1|rgMenor|q\(6) & ((!\po1|r1|q\(5)) # (\po1|rgMenor|q\(5))))) # (\pc1|tx~combout\) ) ) ) # ( 
-- !\po1|r1|q\(6) & ( \po1|cmpMenor|lt~1_combout\ & ( ((!\po1|r1|q\(5)) # (\po1|rgMenor|q\(5))) # (\pc1|tx~combout\) ) ) ) # ( \po1|r1|q\(6) & ( !\po1|cmpMenor|lt~1_combout\ & ( ((\po1|rgMenor|q\(5) & !\po1|r1|q\(5))) # (\pc1|tx~combout\) ) ) ) # ( 
-- !\po1|r1|q\(6) & ( !\po1|cmpMenor|lt~1_combout\ & ( ((!\po1|rgMenor|q\(6) & (\po1|rgMenor|q\(5) & !\po1|r1|q\(5))) # (\po1|rgMenor|q\(6) & ((!\po1|r1|q\(5)) # (\po1|rgMenor|q\(5))))) # (\pc1|tx~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100110111001111110011001111111111001111110111111100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|rgMenor|ALT_INV_q\(6),
	datab => \pc1|ALT_INV_tx~combout\,
	datac => \po1|rgMenor|ALT_INV_q\(5),
	datad => \po1|r1|ALT_INV_q\(5),
	datae => \po1|r1|ALT_INV_q\(6),
	dataf => \po1|cmpMenor|ALT_INV_lt~1_combout\,
	combout => \po1|cmpMenor|lt~2_combout\);

-- Location: FF_X6_Y4_N29
\po1|rgMenor|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|r1|q\(0),
	sload => VCC,
	ena => \po1|cmpMenor|lt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgMenor|q\(0));

-- Location: MLABCELL_X6_Y4_N3
\pc1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux4~0_combout\ = ( !\ft|state_reg\(1) & ( !\ft|state_reg\(0) $ (!\ft|state_reg\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ft|ALT_INV_state_reg\(0),
	datad => \ft|ALT_INV_state_reg\(2),
	dataf => \ft|ALT_INV_state_reg\(1),
	combout => \pc1|Mux4~0_combout\);

-- Location: LABCELL_X7_Y4_N54
\pc1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux5~0_combout\ = ( !\ft|state_reg\(3) & ( \ft|state_reg\(4) & ( (!\ft|state_reg\(5) & (!\ft|state_reg\(1) & \ft|state_reg\(2))) ) ) ) # ( \ft|state_reg\(3) & ( !\ft|state_reg\(4) & ( (\ft|state_reg\(5) & (!\ft|state_reg\(2) & (!\ft|state_reg\(1) $ 
-- (!\ft|state_reg\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101000000000000000000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(5),
	datab => \ft|ALT_INV_state_reg\(1),
	datac => \ft|ALT_INV_state_reg\(0),
	datad => \ft|ALT_INV_state_reg\(2),
	datae => \ft|ALT_INV_state_reg\(3),
	dataf => \ft|ALT_INV_state_reg\(4),
	combout => \pc1|Mux5~0_combout\);

-- Location: MLABCELL_X6_Y4_N57
\pc1|enableRMenor\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|enableRMenor~combout\ = ( \pc1|Mux5~0_combout\ & ( \pc1|Mux4~0_combout\ ) ) # ( !\pc1|Mux5~0_combout\ & ( \pc1|enableRMenor~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pc1|ALT_INV_Mux4~0_combout\,
	datad => \pc1|ALT_INV_enableRMenor~combout\,
	dataf => \pc1|ALT_INV_Mux5~0_combout\,
	combout => \pc1|enableRMenor~combout\);

-- Location: FF_X6_Y4_N10
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

-- Location: FF_X7_Y4_N58
\rMenor|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|rgMenor|q\(1),
	sload => VCC,
	ena => \pc1|enableRMenor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rMenor|q\(1));

-- Location: FF_X7_Y4_N2
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

-- Location: FF_X7_Y4_N47
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

-- Location: FF_X6_Y4_N7
\rMenor|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|rgMenor|q\(4),
	sload => VCC,
	ena => \pc1|enableRMenor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rMenor|q\(4));

-- Location: FF_X7_Y4_N34
\rMenor|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|rgMenor|q\(5),
	sload => VCC,
	ena => \pc1|enableRMenor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rMenor|q\(5));

-- Location: FF_X7_Y4_N50
\rMenor|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|rgMenor|q\(6),
	sload => VCC,
	ena => \pc1|enableRMenor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rMenor|q\(6));

-- Location: FF_X7_Y4_N16
\rMenor|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \po1|rgMenor|q\(5),
	sload => VCC,
	ena => \pc1|enableRMenor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rMenor|q\(7));

-- Location: MLABCELL_X8_Y5_N30
\po1|smd|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|smd|Add0~1_sumout\ = SUM(( \po1|rgSoma|q\(0) ) + ( \po1|r1|q\(0) ) + ( !VCC ))
-- \po1|smd|Add0~2\ = CARRY(( \po1|rgSoma|q\(0) ) + ( \po1|r1|q\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \po1|r1|ALT_INV_q\(0),
	datad => \po1|rgSoma|ALT_INV_q\(0),
	cin => GND,
	sumout => \po1|smd|Add0~1_sumout\,
	cout => \po1|smd|Add0~2\);

-- Location: MLABCELL_X8_Y5_N33
\po1|smd|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|smd|Add0~9_sumout\ = SUM(( \po1|rgSoma|q\(1) ) + ( \po1|r1|q\(1) ) + ( \po1|smd|Add0~2\ ))
-- \po1|smd|Add0~10\ = CARRY(( \po1|rgSoma|q\(1) ) + ( \po1|r1|q\(1) ) + ( \po1|smd|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \po1|r1|ALT_INV_q\(1),
	datad => \po1|rgSoma|ALT_INV_q\(1),
	cin => \po1|smd|Add0~2\,
	sumout => \po1|smd|Add0~9_sumout\,
	cout => \po1|smd|Add0~10\);

-- Location: MLABCELL_X8_Y4_N45
\pc1|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux10~0_combout\ = ( !\ft|state_reg\(2) & ( (!\ft|state_reg\(1) & !\ft|state_reg\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(1),
	datab => \ft|ALT_INV_state_reg\(0),
	dataf => \ft|ALT_INV_state_reg\(2),
	combout => \pc1|Mux10~0_combout\);

-- Location: MLABCELL_X8_Y4_N21
\pc1|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|Mux11~0_combout\ = ( \ft|state_reg\(3) & ( \ft|state_reg\(5) ) ) # ( !\ft|state_reg\(3) & ( \ft|state_reg\(5) ) ) # ( \ft|state_reg\(3) & ( !\ft|state_reg\(5) ) ) # ( !\ft|state_reg\(3) & ( !\ft|state_reg\(5) & ( ((!\ft|state_reg\(4) $ 
-- (!\ft|state_reg\(2))) # (\ft|state_reg\(0))) # (\ft|state_reg\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111011111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ft|ALT_INV_state_reg\(1),
	datab => \ft|ALT_INV_state_reg\(4),
	datac => \ft|ALT_INV_state_reg\(0),
	datad => \ft|ALT_INV_state_reg\(2),
	datae => \ft|ALT_INV_state_reg\(3),
	dataf => \ft|ALT_INV_state_reg\(5),
	combout => \pc1|Mux11~0_combout\);

-- Location: MLABCELL_X8_Y4_N15
\pc1|enableSoma\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc1|enableSoma~combout\ = ( \pc1|Mux11~0_combout\ & ( \pc1|enableSoma~combout\ ) ) # ( !\pc1|Mux11~0_combout\ & ( \pc1|Mux10~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pc1|ALT_INV_enableSoma~combout\,
	datad => \pc1|ALT_INV_Mux10~0_combout\,
	dataf => \pc1|ALT_INV_Mux11~0_combout\,
	combout => \pc1|enableSoma~combout\);

-- Location: FF_X8_Y5_N35
\po1|rgSoma|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|smd|Add0~9_sumout\,
	asdata => VCC,
	sload => \po1|smd|Add0~5_sumout\,
	ena => \pc1|enableSoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgSoma|q\(1));

-- Location: MLABCELL_X8_Y5_N36
\po1|smd|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|smd|Add0~13_sumout\ = SUM(( \po1|rgSoma|q\(2) ) + ( \po1|r1|q\(2) ) + ( \po1|smd|Add0~10\ ))
-- \po1|smd|Add0~14\ = CARRY(( \po1|rgSoma|q\(2) ) + ( \po1|r1|q\(2) ) + ( \po1|smd|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \po1|r1|ALT_INV_q\(2),
	datad => \po1|rgSoma|ALT_INV_q\(2),
	cin => \po1|smd|Add0~10\,
	sumout => \po1|smd|Add0~13_sumout\,
	cout => \po1|smd|Add0~14\);

-- Location: FF_X8_Y5_N38
\po1|rgSoma|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|smd|Add0~13_sumout\,
	asdata => VCC,
	sload => \po1|smd|Add0~5_sumout\,
	ena => \pc1|enableSoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgSoma|q\(2));

-- Location: MLABCELL_X8_Y5_N39
\po1|smd|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|smd|Add0~17_sumout\ = SUM(( \po1|rgSoma|q\(3) ) + ( \po1|r1|q\(3) ) + ( \po1|smd|Add0~14\ ))
-- \po1|smd|Add0~18\ = CARRY(( \po1|rgSoma|q\(3) ) + ( \po1|r1|q\(3) ) + ( \po1|smd|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|r1|ALT_INV_q\(3),
	datad => \po1|rgSoma|ALT_INV_q\(3),
	cin => \po1|smd|Add0~14\,
	sumout => \po1|smd|Add0~17_sumout\,
	cout => \po1|smd|Add0~18\);

-- Location: FF_X8_Y5_N41
\po1|rgSoma|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|smd|Add0~17_sumout\,
	asdata => VCC,
	sload => \po1|smd|Add0~5_sumout\,
	ena => \pc1|enableSoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgSoma|q\(3));

-- Location: MLABCELL_X8_Y5_N42
\po1|smd|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|smd|Add0~21_sumout\ = SUM(( \po1|rgSoma|q\(4) ) + ( \po1|r1|q\(4) ) + ( \po1|smd|Add0~18\ ))
-- \po1|smd|Add0~22\ = CARRY(( \po1|rgSoma|q\(4) ) + ( \po1|r1|q\(4) ) + ( \po1|smd|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \po1|r1|ALT_INV_q\(4),
	datad => \po1|rgSoma|ALT_INV_q\(4),
	cin => \po1|smd|Add0~18\,
	sumout => \po1|smd|Add0~21_sumout\,
	cout => \po1|smd|Add0~22\);

-- Location: FF_X8_Y5_N44
\po1|rgSoma|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|smd|Add0~21_sumout\,
	asdata => VCC,
	sload => \po1|smd|Add0~5_sumout\,
	ena => \pc1|enableSoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgSoma|q\(4));

-- Location: MLABCELL_X8_Y5_N45
\po1|smd|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|smd|Add0~25_sumout\ = SUM(( \po1|rgSoma|q\(5) ) + ( \po1|r1|q\(5) ) + ( \po1|smd|Add0~22\ ))
-- \po1|smd|Add0~26\ = CARRY(( \po1|rgSoma|q\(5) ) + ( \po1|r1|q\(5) ) + ( \po1|smd|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \po1|r1|ALT_INV_q\(5),
	datad => \po1|rgSoma|ALT_INV_q\(5),
	cin => \po1|smd|Add0~22\,
	sumout => \po1|smd|Add0~25_sumout\,
	cout => \po1|smd|Add0~26\);

-- Location: FF_X8_Y5_N47
\po1|rgSoma|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|smd|Add0~25_sumout\,
	asdata => VCC,
	sload => \po1|smd|Add0~5_sumout\,
	ena => \pc1|enableSoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgSoma|q\(5));

-- Location: MLABCELL_X8_Y5_N48
\po1|smd|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|smd|Add0~29_sumout\ = SUM(( \po1|rgSoma|q\(6) ) + ( \po1|r1|q\(6) ) + ( \po1|smd|Add0~26\ ))
-- \po1|smd|Add0~30\ = CARRY(( \po1|rgSoma|q\(6) ) + ( \po1|r1|q\(6) ) + ( \po1|smd|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \po1|r1|ALT_INV_q\(6),
	datad => \po1|rgSoma|ALT_INV_q\(6),
	cin => \po1|smd|Add0~26\,
	sumout => \po1|smd|Add0~29_sumout\,
	cout => \po1|smd|Add0~30\);

-- Location: FF_X8_Y5_N50
\po1|rgSoma|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|smd|Add0~29_sumout\,
	asdata => VCC,
	sload => \po1|smd|Add0~5_sumout\,
	ena => \pc1|enableSoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgSoma|q\(6));

-- Location: MLABCELL_X8_Y5_N51
\po1|smd|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|smd|Add0~33_sumout\ = SUM(( \po1|rgSoma|q\(7) ) + ( \po1|r1|q\(5) ) + ( \po1|smd|Add0~30\ ))
-- \po1|smd|Add0~34\ = CARRY(( \po1|rgSoma|q\(7) ) + ( \po1|r1|q\(5) ) + ( \po1|smd|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \po1|r1|ALT_INV_q\(5),
	datad => \po1|rgSoma|ALT_INV_q\(7),
	cin => \po1|smd|Add0~30\,
	sumout => \po1|smd|Add0~33_sumout\,
	cout => \po1|smd|Add0~34\);

-- Location: FF_X8_Y5_N53
\po1|rgSoma|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|smd|Add0~33_sumout\,
	asdata => VCC,
	sload => \po1|smd|Add0~5_sumout\,
	ena => \pc1|enableSoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgSoma|q\(7));

-- Location: MLABCELL_X8_Y5_N54
\po1|smd|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|smd|Add0~5_sumout\ = SUM(( GND ) + ( GND ) + ( \po1|smd|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \po1|smd|Add0~34\,
	sumout => \po1|smd|Add0~5_sumout\);

-- Location: FF_X8_Y5_N31
\po1|rgSoma|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|smd|Add0~1_sumout\,
	asdata => VCC,
	sload => \po1|smd|Add0~5_sumout\,
	ena => \pc1|enableSoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgSoma|q\(0));

-- Location: LABCELL_X10_Y4_N6
\po1|rg|q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|rg|q[0]~feeder_combout\ = ( \po1|smd|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \po1|smd|ALT_INV_Add0~1_sumout\,
	combout => \po1|rg|q[0]~feeder_combout\);

-- Location: MLABCELL_X8_Y5_N0
\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ = SUM(( \po1|rgSoma|q\(5) ) + ( !VCC ) + ( !VCC ))
-- \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ = CARRY(( \po1|rgSoma|q\(5) ) + ( !VCC ) + ( !VCC ))
-- \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \po1|rgSoma|ALT_INV_q\(5),
	cin => GND,
	sharein => GND,
	sumout => \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	shareout => \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\);

-- Location: MLABCELL_X8_Y5_N3
\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ = SUM(( \po1|rgSoma|q\(6) ) + ( \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( 
-- \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ = CARRY(( \po1|rgSoma|q\(6) ) + ( \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( 
-- \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \po1|rgSoma|ALT_INV_q\(6),
	cin => \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	sharein => \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\,
	shareout => \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\);

-- Location: MLABCELL_X8_Y5_N6
\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ = SUM(( !\po1|rgSoma|q\(7) ) + ( \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ ) + ( 
-- \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ ))
-- \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ = CARRY(( !\po1|rgSoma|q\(7) ) + ( \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ ) + ( 
-- \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ ))
-- \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ = SHARE(\po1|rgSoma|q\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \po1|rgSoma|ALT_INV_q\(7),
	cin => \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\,
	sharein => \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\,
	shareout => \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\);

-- Location: MLABCELL_X8_Y5_N9
\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ = SUM(( GND ) + ( \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ ) + ( \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ ))
-- \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ = CARRY(( GND ) + ( \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ ) + ( \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ ))
-- \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\,
	sharein => \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\,
	shareout => \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: MLABCELL_X8_Y5_N12
\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ = SUM(( VCC ) + ( \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ ) + ( \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\,
	sharein => \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\);

-- Location: LABCELL_X7_Y5_N0
\po1|rgDivisor|q[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|rgDivisor|q[5]~0_combout\ = ( !\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \po1|rgDivisor|q[5]~0_combout\);

-- Location: FF_X7_Y5_N1
\po1|rgDivisor|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|rgDivisor|q[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgDivisor|q\(5));

-- Location: MLABCELL_X8_Y5_N18
\po1|div|Div0|auto_generated|divider|divider|StageOut[28]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[28]~12_combout\ = ( !\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[28]~12_combout\);

-- Location: MLABCELL_X8_Y5_N27
\po1|div|Div0|auto_generated|divider|divider|StageOut[28]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[28]~13_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \po1|rgSoma|q\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|rgSoma|ALT_INV_q\(6),
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[28]~13_combout\);

-- Location: LABCELL_X9_Y5_N12
\po1|div|Div0|auto_generated|divider|divider|op_5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_5~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_5~26_cout\);

-- Location: LABCELL_X9_Y5_N15
\po1|div|Div0|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( \po1|rgSoma|q\(4) ) + ( VCC ) + ( \po1|div|Div0|auto_generated|divider|divider|op_5~26_cout\ ))
-- \po1|div|Div0|auto_generated|divider|divider|op_5~22\ = CARRY(( \po1|rgSoma|q\(4) ) + ( VCC ) + ( \po1|div|Div0|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \po1|rgSoma|ALT_INV_q\(4),
	cin => \po1|div|Div0|auto_generated|divider|divider|op_5~26_cout\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_5~22\);

-- Location: LABCELL_X9_Y5_N18
\po1|div|Div0|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( (!\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\po1|rgSoma|q\(5))) ) + ( GND ) + ( \po1|div|Div0|auto_generated|divider|divider|op_5~22\ ))
-- \po1|div|Div0|auto_generated|divider|divider|op_5~18\ = CARRY(( (!\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\po1|rgSoma|q\(5))) ) + ( GND ) + ( \po1|div|Div0|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|rgSoma|ALT_INV_q\(5),
	datab => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_5~22\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_5~18\);

-- Location: LABCELL_X9_Y5_N21
\po1|div|Div0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (\po1|div|Div0|auto_generated|divider|divider|StageOut[28]~13_combout\) # (\po1|div|Div0|auto_generated|divider|divider|StageOut[28]~12_combout\) ) + ( VCC ) + ( 
-- \po1|div|Div0|auto_generated|divider|divider|op_5~18\ ))
-- \po1|div|Div0|auto_generated|divider|divider|op_5~14\ = CARRY(( (\po1|div|Div0|auto_generated|divider|divider|StageOut[28]~13_combout\) # (\po1|div|Div0|auto_generated|divider|divider|StageOut[28]~12_combout\) ) + ( VCC ) + ( 
-- \po1|div|Div0|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[28]~12_combout\,
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[28]~13_combout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_5~18\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_5~14\);

-- Location: LABCELL_X9_Y5_N24
\po1|div|Div0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( (!\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\po1|rgSoma|q\(7))) ) + ( GND ) + ( \po1|div|Div0|auto_generated|divider|divider|op_5~14\ ))
-- \po1|div|Div0|auto_generated|divider|divider|op_5~10\ = CARRY(( (!\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\po1|rgSoma|q\(7))) ) + ( GND ) + ( \po1|div|Div0|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \po1|rgSoma|ALT_INV_q\(7),
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_5~14\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_5~10\);

-- Location: LABCELL_X9_Y5_N27
\po1|div|Div0|auto_generated|divider|divider|op_5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_5~5_sumout\ = SUM(( (!\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\) ) + ( VCC ) + ( 
-- \po1|div|Div0|auto_generated|divider|divider|op_5~10\ ))
-- \po1|div|Div0|auto_generated|divider|divider|op_5~6\ = CARRY(( (!\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\) ) + ( VCC ) + ( 
-- \po1|div|Div0|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_5~10\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_5~5_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_5~6\);

-- Location: LABCELL_X9_Y5_N30
\po1|div|Div0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \po1|div|Div0|auto_generated|divider|divider|op_5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \po1|div|Div0|auto_generated|divider|divider|op_5~6\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: LABCELL_X7_Y5_N33
\po1|div|Div0|auto_generated|divider|divider|StageOut[29]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[29]~6_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ & ( !\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[29]~6_combout\);

-- Location: MLABCELL_X8_Y5_N24
\po1|div|Div0|auto_generated|divider|divider|StageOut[29]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[29]~7_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \po1|rgSoma|q\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \po1|rgSoma|ALT_INV_q\(7),
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[29]~7_combout\);

-- Location: LABCELL_X7_Y5_N12
\po1|div|Div0|auto_generated|divider|divider|StageOut[28]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[28]~14_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ & ( \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( 
-- \po1|rgSoma|q\(6) ) ) ) # ( !\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ & ( \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \po1|rgSoma|q\(6) ) ) ) # ( 
-- \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ & ( !\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \po1|rgSoma|ALT_INV_q\(6),
	datae => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[28]~14_combout\);

-- Location: MLABCELL_X8_Y5_N21
\po1|div|Div0|auto_generated|divider|divider|StageOut[27]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[27]~20_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \po1|rgSoma|q\(5) ) ) # ( 
-- !\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \po1|rgSoma|ALT_INV_q\(5),
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[27]~20_combout\);

-- Location: LABCELL_X9_Y5_N36
\po1|div|Div0|auto_generated|divider|divider|op_6~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_6~30_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_6~30_cout\);

-- Location: LABCELL_X9_Y5_N39
\po1|div|Div0|auto_generated|divider|divider|op_6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_6~25_sumout\ = SUM(( \po1|rgSoma|q\(3) ) + ( VCC ) + ( \po1|div|Div0|auto_generated|divider|divider|op_6~30_cout\ ))
-- \po1|div|Div0|auto_generated|divider|divider|op_6~26\ = CARRY(( \po1|rgSoma|q\(3) ) + ( VCC ) + ( \po1|div|Div0|auto_generated|divider|divider|op_6~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|rgSoma|ALT_INV_q\(3),
	cin => \po1|div|Div0|auto_generated|divider|divider|op_6~30_cout\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_6~25_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_6~26\);

-- Location: LABCELL_X9_Y5_N42
\po1|div|Div0|auto_generated|divider|divider|op_6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_6~21_sumout\ = SUM(( GND ) + ( (!\po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|op_5~21_sumout\))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\po1|rgSoma|q\(4))) ) + ( \po1|div|Div0|auto_generated|divider|divider|op_6~26\ ))
-- \po1|div|Div0|auto_generated|divider|divider|op_6~22\ = CARRY(( GND ) + ( (!\po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|op_5~21_sumout\))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\po1|rgSoma|q\(4))) ) + ( \po1|div|Div0|auto_generated|divider|divider|op_6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \po1|rgSoma|ALT_INV_q\(4),
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_6~26\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_6~21_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_6~22\);

-- Location: LABCELL_X9_Y5_N45
\po1|div|Div0|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( (!\po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|op_5~17_sumout\))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\po1|div|Div0|auto_generated|divider|divider|StageOut[27]~20_combout\)) ) + ( VCC ) + ( \po1|div|Div0|auto_generated|divider|divider|op_6~22\ ))
-- \po1|div|Div0|auto_generated|divider|divider|op_6~18\ = CARRY(( (!\po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|op_5~17_sumout\))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\po1|div|Div0|auto_generated|divider|divider|StageOut[27]~20_combout\)) ) + ( VCC ) + ( \po1|div|Div0|auto_generated|divider|divider|op_6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~20_combout\,
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_6~22\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_6~18\);

-- Location: LABCELL_X9_Y5_N48
\po1|div|Div0|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( (!\po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|op_5~13_sumout\))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\po1|div|Div0|auto_generated|divider|divider|StageOut[28]~14_combout\)) ) + ( GND ) + ( \po1|div|Div0|auto_generated|divider|divider|op_6~18\ ))
-- \po1|div|Div0|auto_generated|divider|divider|op_6~14\ = CARRY(( (!\po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|op_5~13_sumout\))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\po1|div|Div0|auto_generated|divider|divider|StageOut[28]~14_combout\)) ) + ( GND ) + ( \po1|div|Div0|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[28]~14_combout\,
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_6~18\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_6~14\);

-- Location: LABCELL_X9_Y5_N51
\po1|div|Div0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( (!\po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\po1|div|Div0|auto_generated|divider|divider|op_5~9_sumout\)))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\po1|div|Div0|auto_generated|divider|divider|StageOut[29]~7_combout\)) # (\po1|div|Div0|auto_generated|divider|divider|StageOut[29]~6_combout\))) ) + ( VCC ) + ( 
-- \po1|div|Div0|auto_generated|divider|divider|op_6~14\ ))
-- \po1|div|Div0|auto_generated|divider|divider|op_6~10\ = CARRY(( (!\po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\po1|div|Div0|auto_generated|divider|divider|op_5~9_sumout\)))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\po1|div|Div0|auto_generated|divider|divider|StageOut[29]~7_combout\)) # (\po1|div|Div0|auto_generated|divider|divider|StageOut[29]~6_combout\))) ) + ( VCC ) + ( 
-- \po1|div|Div0|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[29]~6_combout\,
	datab => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[29]~7_combout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_6~14\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_6~10\);

-- Location: LABCELL_X9_Y5_N54
\po1|div|Div0|auto_generated|divider|divider|op_6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_6~5_sumout\ = SUM(( (!\po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\po1|div|Div0|auto_generated|divider|divider|op_5~5_sumout\)))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (!\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\))) ) + ( VCC ) + ( 
-- \po1|div|Div0|auto_generated|divider|divider|op_6~10\ ))
-- \po1|div|Div0|auto_generated|divider|divider|op_6~6\ = CARRY(( (!\po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\po1|div|Div0|auto_generated|divider|divider|op_5~5_sumout\)))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (!\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\))) ) + ( VCC ) + ( 
-- \po1|div|Div0|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datab => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\,
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_6~10\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_6~5_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_6~6\);

-- Location: LABCELL_X9_Y5_N57
\po1|div|Div0|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \po1|div|Div0|auto_generated|divider|divider|op_6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \po1|div|Div0|auto_generated|divider|divider|op_6~6\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: LABCELL_X9_Y5_N0
\po1|div|Div0|auto_generated|divider|divider|StageOut[40]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[40]~0_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|op_5~5_sumout\ & ( !\po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[40]~0_combout\);

-- Location: LABCELL_X7_Y5_N6
\po1|div|Div0|auto_generated|divider|divider|StageOut[40]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[40]~1_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ & ( \po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( 
-- !\po1|div|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datae => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[40]~1_combout\);

-- Location: LABCELL_X7_Y5_N48
\po1|div|Div0|auto_generated|divider|divider|StageOut[39]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[39]~8_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( (\po1|div|Div0|auto_generated|divider|divider|StageOut[29]~7_combout\) # 
-- (\po1|div|Div0|auto_generated|divider|divider|StageOut[29]~6_combout\) ) ) # ( !\po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \po1|div|Div0|auto_generated|divider|divider|op_5~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[29]~6_combout\,
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[29]~7_combout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[39]~8_combout\);

-- Location: LABCELL_X9_Y5_N3
\po1|div|Div0|auto_generated|divider|divider|StageOut[38]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[38]~15_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|op_5~13_sumout\ & ( !\po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[38]~15_combout\);

-- Location: LABCELL_X7_Y5_N57
\po1|div|Div0|auto_generated|divider|divider|StageOut[38]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[38]~16_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \po1|div|Div0|auto_generated|divider|divider|StageOut[28]~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[28]~14_combout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[38]~16_combout\);

-- Location: LABCELL_X7_Y5_N36
\po1|div|Div0|auto_generated|divider|divider|StageOut[37]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[37]~21_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|op_5~17_sumout\ & ( \po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( 
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[27]~20_combout\ ) ) ) # ( !\po1|div|Div0|auto_generated|divider|divider|op_5~17_sumout\ & ( \po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( 
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[27]~20_combout\ ) ) ) # ( \po1|div|Div0|auto_generated|divider|divider|op_5~17_sumout\ & ( !\po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~20_combout\,
	datae => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[37]~21_combout\);

-- Location: LABCELL_X12_Y5_N57
\po1|div|Div0|auto_generated|divider|divider|StageOut[36]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[36]~25_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|op_5~21_sumout\ & ( \po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \po1|rgSoma|q\(4) ) ) ) # ( 
-- !\po1|div|Div0|auto_generated|divider|divider|op_5~21_sumout\ & ( \po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \po1|rgSoma|q\(4) ) ) ) # ( \po1|div|Div0|auto_generated|divider|divider|op_5~21_sumout\ & ( 
-- !\po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \po1|rgSoma|ALT_INV_q\(4),
	datae => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[36]~25_combout\);

-- Location: LABCELL_X10_Y5_N0
\po1|div|Div0|auto_generated|divider|divider|op_7~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_7~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_7~34_cout\);

-- Location: LABCELL_X10_Y5_N3
\po1|div|Div0|auto_generated|divider|divider|op_7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_7~29_sumout\ = SUM(( \po1|rgSoma|q\(2) ) + ( VCC ) + ( \po1|div|Div0|auto_generated|divider|divider|op_7~34_cout\ ))
-- \po1|div|Div0|auto_generated|divider|divider|op_7~30\ = CARRY(( \po1|rgSoma|q\(2) ) + ( VCC ) + ( \po1|div|Div0|auto_generated|divider|divider|op_7~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|rgSoma|ALT_INV_q\(2),
	cin => \po1|div|Div0|auto_generated|divider|divider|op_7~34_cout\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_7~29_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_7~30\);

-- Location: LABCELL_X10_Y5_N6
\po1|div|Div0|auto_generated|divider|divider|op_7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_7~25_sumout\ = SUM(( (!\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|op_6~25_sumout\))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\po1|rgSoma|q\(3))) ) + ( GND ) + ( \po1|div|Div0|auto_generated|divider|divider|op_7~30\ ))
-- \po1|div|Div0|auto_generated|divider|divider|op_7~26\ = CARRY(( (!\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|op_6~25_sumout\))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\po1|rgSoma|q\(3))) ) + ( GND ) + ( \po1|div|Div0|auto_generated|divider|divider|op_7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \po1|rgSoma|ALT_INV_q\(3),
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_7~30\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_7~25_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_7~26\);

-- Location: LABCELL_X10_Y5_N9
\po1|div|Div0|auto_generated|divider|divider|op_7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_7~21_sumout\ = SUM(( (!\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|op_6~21_sumout\))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\po1|div|Div0|auto_generated|divider|divider|StageOut[36]~25_combout\)) ) + ( VCC ) + ( \po1|div|Div0|auto_generated|divider|divider|op_7~26\ ))
-- \po1|div|Div0|auto_generated|divider|divider|op_7~22\ = CARRY(( (!\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|op_6~21_sumout\))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\po1|div|Div0|auto_generated|divider|divider|StageOut[36]~25_combout\)) ) + ( VCC ) + ( \po1|div|Div0|auto_generated|divider|divider|op_7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~25_combout\,
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_7~26\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_7~21_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_7~22\);

-- Location: LABCELL_X10_Y5_N12
\po1|div|Div0|auto_generated|divider|divider|op_7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_7~17_sumout\ = SUM(( (!\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|op_6~17_sumout\))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\po1|div|Div0|auto_generated|divider|divider|StageOut[37]~21_combout\)) ) + ( GND ) + ( \po1|div|Div0|auto_generated|divider|divider|op_7~22\ ))
-- \po1|div|Div0|auto_generated|divider|divider|op_7~18\ = CARRY(( (!\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|op_6~17_sumout\))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\po1|div|Div0|auto_generated|divider|divider|StageOut[37]~21_combout\)) ) + ( GND ) + ( \po1|div|Div0|auto_generated|divider|divider|op_7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~21_combout\,
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_7~22\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_7~17_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_7~18\);

-- Location: LABCELL_X10_Y5_N15
\po1|div|Div0|auto_generated|divider|divider|op_7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_7~13_sumout\ = SUM(( (!\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\po1|div|Div0|auto_generated|divider|divider|op_6~13_sumout\)))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\po1|div|Div0|auto_generated|divider|divider|StageOut[38]~16_combout\)) # (\po1|div|Div0|auto_generated|divider|divider|StageOut[38]~15_combout\))) ) + ( VCC ) + ( 
-- \po1|div|Div0|auto_generated|divider|divider|op_7~18\ ))
-- \po1|div|Div0|auto_generated|divider|divider|op_7~14\ = CARRY(( (!\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\po1|div|Div0|auto_generated|divider|divider|op_6~13_sumout\)))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\po1|div|Div0|auto_generated|divider|divider|StageOut[38]~16_combout\)) # (\po1|div|Div0|auto_generated|divider|divider|StageOut[38]~15_combout\))) ) + ( VCC ) + ( 
-- \po1|div|Div0|auto_generated|divider|divider|op_7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[38]~15_combout\,
	datab => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[38]~16_combout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_7~18\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_7~13_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_7~14\);

-- Location: LABCELL_X10_Y5_N18
\po1|div|Div0|auto_generated|divider|divider|op_7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_7~9_sumout\ = SUM(( (!\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|op_6~9_sumout\))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\po1|div|Div0|auto_generated|divider|divider|StageOut[39]~8_combout\)) ) + ( VCC ) + ( \po1|div|Div0|auto_generated|divider|divider|op_7~14\ ))
-- \po1|div|Div0|auto_generated|divider|divider|op_7~10\ = CARRY(( (!\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|op_6~9_sumout\))) # (\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ 
-- & (\po1|div|Div0|auto_generated|divider|divider|StageOut[39]~8_combout\)) ) + ( VCC ) + ( \po1|div|Div0|auto_generated|divider|divider|op_7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[39]~8_combout\,
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_7~14\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_7~9_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_7~10\);

-- Location: LABCELL_X10_Y5_N21
\po1|div|Div0|auto_generated|divider|divider|op_7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_7~5_sumout\ = SUM(( (!\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\po1|div|Div0|auto_generated|divider|divider|op_6~5_sumout\)) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\po1|div|Div0|auto_generated|divider|divider|StageOut[40]~1_combout\) # (\po1|div|Div0|auto_generated|divider|divider|StageOut[40]~0_combout\)))) ) + ( VCC ) + ( 
-- \po1|div|Div0|auto_generated|divider|divider|op_7~10\ ))
-- \po1|div|Div0|auto_generated|divider|divider|op_7~6\ = CARRY(( (!\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\po1|div|Div0|auto_generated|divider|divider|op_6~5_sumout\)) # (\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\po1|div|Div0|auto_generated|divider|divider|StageOut[40]~1_combout\) # (\po1|div|Div0|auto_generated|divider|divider|StageOut[40]~0_combout\)))) ) + ( VCC ) + ( \po1|div|Div0|auto_generated|divider|divider|op_7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	datab => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~0_combout\,
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~1_combout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_7~10\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_7~5_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_7~6\);

-- Location: LABCELL_X10_Y5_N24
\po1|div|Div0|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \po1|div|Div0|auto_generated|divider|divider|op_7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \po1|div|Div0|auto_generated|divider|divider|op_7~6\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\);

-- Location: LABCELL_X12_Y5_N48
\po1|rgDivisor|q[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|rgDivisor|q[2]~3_combout\ = ( !\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \po1|rgDivisor|q[2]~3_combout\);

-- Location: FF_X12_Y5_N49
\po1|rgDivisor|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|rgDivisor|q[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgDivisor|q\(2));

-- Location: LABCELL_X12_Y5_N33
\po1|div|Div0|auto_generated|divider|divider|StageOut[50]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[50]~2_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|op_6~5_sumout\ & ( !\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[50]~2_combout\);

-- Location: LABCELL_X7_Y5_N27
\po1|div|Div0|auto_generated|divider|divider|StageOut[50]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[50]~3_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( (\po1|div|Div0|auto_generated|divider|divider|StageOut[40]~0_combout\) # 
-- (\po1|div|Div0|auto_generated|divider|divider|StageOut[40]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~1_combout\,
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~0_combout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[50]~3_combout\);

-- Location: LABCELL_X12_Y5_N45
\po1|div|Div0|auto_generated|divider|divider|StageOut[49]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[49]~9_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|op_6~9_sumout\ & ( !\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[49]~9_combout\);

-- Location: LABCELL_X7_Y5_N18
\po1|div|Div0|auto_generated|divider|divider|StageOut[49]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( \po1|div|Div0|auto_generated|divider|divider|StageOut[39]~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[39]~8_combout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\);

-- Location: LABCELL_X9_Y5_N9
\po1|div|Div0|auto_generated|divider|divider|StageOut[48]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[48]~17_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|op_6~13_sumout\ & ( ((!\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\) # 
-- (\po1|div|Div0|auto_generated|divider|divider|StageOut[38]~16_combout\)) # (\po1|div|Div0|auto_generated|divider|divider|StageOut[38]~15_combout\) ) ) # ( !\po1|div|Div0|auto_generated|divider|divider|op_6~13_sumout\ & ( 
-- (\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|StageOut[38]~16_combout\) # (\po1|div|Div0|auto_generated|divider|divider|StageOut[38]~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111111110101111111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[38]~15_combout\,
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[38]~16_combout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[48]~17_combout\);

-- Location: LABCELL_X9_Y5_N6
\po1|div|Div0|auto_generated|divider|divider|StageOut[47]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[47]~22_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|op_6~17_sumout\ & ( !\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[47]~22_combout\);

-- Location: LABCELL_X7_Y5_N45
\po1|div|Div0|auto_generated|divider|divider|StageOut[47]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[47]~23_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|StageOut[37]~21_combout\ & ( \po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~21_combout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[47]~23_combout\);

-- Location: LABCELL_X12_Y5_N27
\po1|div|Div0|auto_generated|divider|divider|StageOut[46]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[46]~26_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|StageOut[36]~25_combout\ & ( \po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ ) ) # ( 
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[36]~25_combout\ & ( !\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( \po1|div|Div0|auto_generated|divider|divider|op_6~21_sumout\ ) ) ) # ( 
-- !\po1|div|Div0|auto_generated|divider|divider|StageOut[36]~25_combout\ & ( !\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( \po1|div|Div0|auto_generated|divider|divider|op_6~21_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	datae => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~25_combout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[46]~26_combout\);

-- Location: LABCELL_X12_Y5_N39
\po1|div|Div0|auto_generated|divider|divider|StageOut[45]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[45]~29_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|op_6~25_sumout\ & ( \po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( \po1|rgSoma|q\(3) ) ) ) # ( 
-- !\po1|div|Div0|auto_generated|divider|divider|op_6~25_sumout\ & ( \po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( \po1|rgSoma|q\(3) ) ) ) # ( \po1|div|Div0|auto_generated|divider|divider|op_6~25_sumout\ & ( 
-- !\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|rgSoma|ALT_INV_q\(3),
	datae => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[45]~29_combout\);

-- Location: LABCELL_X10_Y5_N30
\po1|div|Div0|auto_generated|divider|divider|op_8~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_8~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_8~38_cout\);

-- Location: LABCELL_X10_Y5_N33
\po1|div|Div0|auto_generated|divider|divider|op_8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_8~33_sumout\ = SUM(( \po1|rgSoma|q\(1) ) + ( VCC ) + ( \po1|div|Div0|auto_generated|divider|divider|op_8~38_cout\ ))
-- \po1|div|Div0|auto_generated|divider|divider|op_8~34\ = CARRY(( \po1|rgSoma|q\(1) ) + ( VCC ) + ( \po1|div|Div0|auto_generated|divider|divider|op_8~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|rgSoma|ALT_INV_q\(1),
	cin => \po1|div|Div0|auto_generated|divider|divider|op_8~38_cout\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_8~33_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_8~34\);

-- Location: LABCELL_X10_Y5_N36
\po1|div|Div0|auto_generated|divider|divider|op_8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_8~29_sumout\ = SUM(( (!\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|op_7~29_sumout\))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\po1|rgSoma|q\(2))) ) + ( GND ) + ( \po1|div|Div0|auto_generated|divider|divider|op_8~34\ ))
-- \po1|div|Div0|auto_generated|divider|divider|op_8~30\ = CARRY(( (!\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|op_7~29_sumout\))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\po1|rgSoma|q\(2))) ) + ( GND ) + ( \po1|div|Div0|auto_generated|divider|divider|op_8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|rgSoma|ALT_INV_q\(2),
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_8~34\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_8~29_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_8~30\);

-- Location: LABCELL_X10_Y5_N39
\po1|div|Div0|auto_generated|divider|divider|op_8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_8~25_sumout\ = SUM(( (!\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|op_7~25_sumout\))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\po1|div|Div0|auto_generated|divider|divider|StageOut[45]~29_combout\)) ) + ( VCC ) + ( \po1|div|Div0|auto_generated|divider|divider|op_8~30\ ))
-- \po1|div|Div0|auto_generated|divider|divider|op_8~26\ = CARRY(( (!\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|op_7~25_sumout\))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\po1|div|Div0|auto_generated|divider|divider|StageOut[45]~29_combout\)) ) + ( VCC ) + ( \po1|div|Div0|auto_generated|divider|divider|op_8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~29_combout\,
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_8~30\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_8~25_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_8~26\);

-- Location: LABCELL_X10_Y5_N42
\po1|div|Div0|auto_generated|divider|divider|op_8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_8~21_sumout\ = SUM(( (!\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|op_7~21_sumout\))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\po1|div|Div0|auto_generated|divider|divider|StageOut[46]~26_combout\)) ) + ( GND ) + ( \po1|div|Div0|auto_generated|divider|divider|op_8~26\ ))
-- \po1|div|Div0|auto_generated|divider|divider|op_8~22\ = CARRY(( (!\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|op_7~21_sumout\))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\po1|div|Div0|auto_generated|divider|divider|StageOut[46]~26_combout\)) ) + ( GND ) + ( \po1|div|Div0|auto_generated|divider|divider|op_8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[46]~26_combout\,
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_8~26\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_8~21_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_8~22\);

-- Location: LABCELL_X10_Y5_N45
\po1|div|Div0|auto_generated|divider|divider|op_8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_8~17_sumout\ = SUM(( (!\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\po1|div|Div0|auto_generated|divider|divider|op_7~17_sumout\)))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\po1|div|Div0|auto_generated|divider|divider|StageOut[47]~23_combout\)) # (\po1|div|Div0|auto_generated|divider|divider|StageOut[47]~22_combout\))) ) + ( VCC ) + ( 
-- \po1|div|Div0|auto_generated|divider|divider|op_8~22\ ))
-- \po1|div|Div0|auto_generated|divider|divider|op_8~18\ = CARRY(( (!\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\po1|div|Div0|auto_generated|divider|divider|op_7~17_sumout\)))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\po1|div|Div0|auto_generated|divider|divider|StageOut[47]~23_combout\)) # (\po1|div|Div0|auto_generated|divider|divider|StageOut[47]~22_combout\))) ) + ( VCC ) + ( 
-- \po1|div|Div0|auto_generated|divider|divider|op_8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[47]~22_combout\,
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[47]~23_combout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_8~22\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_8~17_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_8~18\);

-- Location: LABCELL_X10_Y5_N48
\po1|div|Div0|auto_generated|divider|divider|op_8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_8~13_sumout\ = SUM(( VCC ) + ( (!\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|op_7~13_sumout\))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\po1|div|Div0|auto_generated|divider|divider|StageOut[48]~17_combout\)) ) + ( \po1|div|Div0|auto_generated|divider|divider|op_8~18\ ))
-- \po1|div|Div0|auto_generated|divider|divider|op_8~14\ = CARRY(( VCC ) + ( (!\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|op_7~13_sumout\))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\po1|div|Div0|auto_generated|divider|divider|StageOut[48]~17_combout\)) ) + ( \po1|div|Div0|auto_generated|divider|divider|op_8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[48]~17_combout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_8~18\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_8~13_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_8~14\);

-- Location: LABCELL_X10_Y5_N51
\po1|div|Div0|auto_generated|divider|divider|op_8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_8~9_sumout\ = SUM(( (!\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\po1|div|Div0|auto_generated|divider|divider|op_7~9_sumout\)))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\po1|div|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\)) # (\po1|div|Div0|auto_generated|divider|divider|StageOut[49]~9_combout\))) ) + ( VCC ) + ( 
-- \po1|div|Div0|auto_generated|divider|divider|op_8~14\ ))
-- \po1|div|Div0|auto_generated|divider|divider|op_8~10\ = CARRY(( (!\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\po1|div|Div0|auto_generated|divider|divider|op_7~9_sumout\)))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\po1|div|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\)) # (\po1|div|Div0|auto_generated|divider|divider|StageOut[49]~9_combout\))) ) + ( VCC ) + ( 
-- \po1|div|Div0|auto_generated|divider|divider|op_8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~9_combout\,
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~10_combout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_8~14\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_8~9_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_8~10\);

-- Location: LABCELL_X10_Y5_N54
\po1|div|Div0|auto_generated|divider|divider|op_8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_8~5_sumout\ = SUM(( (!\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\po1|div|Div0|auto_generated|divider|divider|op_7~5_sumout\)) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\po1|div|Div0|auto_generated|divider|divider|StageOut[50]~3_combout\) # (\po1|div|Div0|auto_generated|divider|divider|StageOut[50]~2_combout\)))) ) + ( VCC ) + ( 
-- \po1|div|Div0|auto_generated|divider|divider|op_8~10\ ))
-- \po1|div|Div0|auto_generated|divider|divider|op_8~6\ = CARRY(( (!\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\po1|div|Div0|auto_generated|divider|divider|op_7~5_sumout\)) # (\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\po1|div|Div0|auto_generated|divider|divider|StageOut[50]~3_combout\) # (\po1|div|Div0|auto_generated|divider|divider|StageOut[50]~2_combout\)))) ) + ( VCC ) + ( \po1|div|Div0|auto_generated|divider|divider|op_8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	datab => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~2_combout\,
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~3_combout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_8~10\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_8~5_sumout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_8~6\);

-- Location: LABCELL_X10_Y5_N57
\po1|div|Div0|auto_generated|divider|divider|op_8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_8~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \po1|div|Div0|auto_generated|divider|divider|op_8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \po1|div|Div0|auto_generated|divider|divider|op_8~6\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_8~1_sumout\);

-- Location: LABCELL_X11_Y5_N42
\po1|div|Div0|auto_generated|divider|divider|StageOut[60]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[60]~4_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|op_7~5_sumout\ & ( !\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[60]~4_combout\);

-- Location: LABCELL_X12_Y5_N0
\po1|div|Div0|auto_generated|divider|divider|StageOut[60]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[60]~5_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|StageOut[50]~3_combout\ & ( \po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ ) ) # ( 
-- !\po1|div|Div0|auto_generated|divider|divider|StageOut[50]~3_combout\ & ( \po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( \po1|div|Div0|auto_generated|divider|divider|StageOut[50]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~2_combout\,
	datae => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~3_combout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[60]~5_combout\);

-- Location: LABCELL_X11_Y5_N51
\po1|div|Div0|auto_generated|divider|divider|StageOut[59]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[59]~11_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (\po1|div|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\) # 
-- (\po1|div|Div0|auto_generated|divider|divider|StageOut[49]~9_combout\) ) ) # ( !\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( \po1|div|Div0|auto_generated|divider|divider|op_7~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~9_combout\,
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~10_combout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[59]~11_combout\);

-- Location: LABCELL_X11_Y5_N0
\po1|div|Div0|auto_generated|divider|divider|StageOut[58]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[58]~18_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|op_7~13_sumout\ & ( !\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[58]~18_combout\);

-- Location: LABCELL_X12_Y5_N15
\po1|div|Div0|auto_generated|divider|divider|StageOut[58]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[58]~19_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( \po1|div|Div0|auto_generated|divider|divider|StageOut[48]~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[48]~17_combout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[58]~19_combout\);

-- Location: LABCELL_X11_Y5_N57
\po1|div|Div0|auto_generated|divider|divider|StageOut[57]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[57]~24_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|StageOut[47]~22_combout\ & ( (\po1|div|Div0|auto_generated|divider|divider|op_7~17_sumout\) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\) ) ) # ( !\po1|div|Div0|auto_generated|divider|divider|StageOut[47]~22_combout\ & ( (!\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- ((\po1|div|Div0|auto_generated|divider|divider|op_7~17_sumout\))) # (\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\po1|div|Div0|auto_generated|divider|divider|StageOut[47]~23_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[47]~23_combout\,
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[47]~22_combout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[57]~24_combout\);

-- Location: LABCELL_X11_Y5_N3
\po1|div|Div0|auto_generated|divider|divider|StageOut[56]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[56]~27_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|op_7~21_sumout\ & ( !\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[56]~27_combout\);

-- Location: LABCELL_X12_Y5_N9
\po1|div|Div0|auto_generated|divider|divider|StageOut[56]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[56]~28_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|StageOut[46]~26_combout\ & ( \po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[46]~26_combout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[56]~28_combout\);

-- Location: LABCELL_X11_Y5_N54
\po1|div|Div0|auto_generated|divider|divider|StageOut[55]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[55]~30_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|StageOut[45]~29_combout\ & ( (\po1|div|Div0|auto_generated|divider|divider|op_7~25_sumout\) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\) ) ) # ( !\po1|div|Div0|auto_generated|divider|divider|StageOut[45]~29_combout\ & ( (!\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- \po1|div|Div0|auto_generated|divider|divider|op_7~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~29_combout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[55]~30_combout\);

-- Location: LABCELL_X11_Y5_N45
\po1|div|Div0|auto_generated|divider|divider|StageOut[54]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|StageOut[54]~31_combout\ = ( \po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( \po1|rgSoma|q\(2) ) ) # ( !\po1|div|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( 
-- \po1|div|Div0|auto_generated|divider|divider|op_7~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|rgSoma|ALT_INV_q\(2),
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \po1|div|Div0|auto_generated|divider|divider|StageOut[54]~31_combout\);

-- Location: LABCELL_X11_Y5_N6
\po1|div|Div0|auto_generated|divider|divider|op_9~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_9~42_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_9~42_cout\);

-- Location: LABCELL_X11_Y5_N9
\po1|div|Div0|auto_generated|divider|divider|op_9~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_9~38_cout\ = CARRY(( \po1|rgSoma|q\(0) ) + ( VCC ) + ( \po1|div|Div0|auto_generated|divider|divider|op_9~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \po1|rgSoma|ALT_INV_q\(0),
	cin => \po1|div|Div0|auto_generated|divider|divider|op_9~42_cout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_9~38_cout\);

-- Location: LABCELL_X11_Y5_N12
\po1|div|Div0|auto_generated|divider|divider|op_9~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_9~34_cout\ = CARRY(( (!\po1|div|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|op_8~33_sumout\))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (\po1|rgSoma|q\(1))) ) + ( GND ) + ( \po1|div|Div0|auto_generated|divider|divider|op_9~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \po1|rgSoma|ALT_INV_q\(1),
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_9~38_cout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_9~34_cout\);

-- Location: LABCELL_X11_Y5_N15
\po1|div|Div0|auto_generated|divider|divider|op_9~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_9~30_cout\ = CARRY(( (!\po1|div|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (\po1|div|Div0|auto_generated|divider|divider|op_8~29_sumout\)) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|StageOut[54]~31_combout\))) ) + ( VCC ) + ( \po1|div|Div0|auto_generated|divider|divider|op_9~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\,
	datab => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[54]~31_combout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_9~34_cout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_9~30_cout\);

-- Location: LABCELL_X11_Y5_N18
\po1|div|Div0|auto_generated|divider|divider|op_9~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_9~26_cout\ = CARRY(( (!\po1|div|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|op_8~25_sumout\))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (\po1|div|Div0|auto_generated|divider|divider|StageOut[55]~30_combout\)) ) + ( GND ) + ( \po1|div|Div0|auto_generated|divider|divider|op_9~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[55]~30_combout\,
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_9~30_cout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_9~26_cout\);

-- Location: LABCELL_X11_Y5_N21
\po1|div|Div0|auto_generated|divider|divider|op_9~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_9~22_cout\ = CARRY(( (!\po1|div|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (((\po1|div|Div0|auto_generated|divider|divider|op_8~21_sumout\)))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (((\po1|div|Div0|auto_generated|divider|divider|StageOut[56]~28_combout\)) # (\po1|div|Div0|auto_generated|divider|divider|StageOut[56]~27_combout\))) ) + ( VCC ) + ( 
-- \po1|div|Div0|auto_generated|divider|divider|op_9~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[56]~27_combout\,
	datab => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\,
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[56]~28_combout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_9~26_cout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_9~22_cout\);

-- Location: LABCELL_X11_Y5_N24
\po1|div|Div0|auto_generated|divider|divider|op_9~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_9~18_cout\ = CARRY(( (!\po1|div|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|op_8~17_sumout\))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (\po1|div|Div0|auto_generated|divider|divider|StageOut[57]~24_combout\)) ) + ( VCC ) + ( \po1|div|Div0|auto_generated|divider|divider|op_9~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[57]~24_combout\,
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_9~22_cout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_9~18_cout\);

-- Location: LABCELL_X11_Y5_N27
\po1|div|Div0|auto_generated|divider|divider|op_9~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_9~14_cout\ = CARRY(( (!\po1|div|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (((\po1|div|Div0|auto_generated|divider|divider|op_8~13_sumout\)))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (((\po1|div|Div0|auto_generated|divider|divider|StageOut[58]~19_combout\)) # (\po1|div|Div0|auto_generated|divider|divider|StageOut[58]~18_combout\))) ) + ( VCC ) + ( 
-- \po1|div|Div0|auto_generated|divider|divider|op_9~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[58]~18_combout\,
	datab => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\,
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[58]~19_combout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_9~18_cout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_9~14_cout\);

-- Location: LABCELL_X11_Y5_N30
\po1|div|Div0|auto_generated|divider|divider|op_9~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_9~10_cout\ = CARRY(( (!\po1|div|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\po1|div|Div0|auto_generated|divider|divider|op_8~9_sumout\))) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (\po1|div|Div0|auto_generated|divider|divider|StageOut[59]~11_combout\)) ) + ( VCC ) + ( \po1|div|Div0|auto_generated|divider|divider|op_9~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[59]~11_combout\,
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_9~14_cout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_9~10_cout\);

-- Location: LABCELL_X11_Y5_N33
\po1|div|Div0|auto_generated|divider|divider|op_9~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_9~6_cout\ = CARRY(( (!\po1|div|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (\po1|div|Div0|auto_generated|divider|divider|op_8~5_sumout\)) # 
-- (\po1|div|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (((\po1|div|Div0|auto_generated|divider|divider|StageOut[60]~5_combout\) # (\po1|div|Div0|auto_generated|divider|divider|StageOut[60]~4_combout\)))) ) + ( VCC ) + ( 
-- \po1|div|Div0|auto_generated|divider|divider|op_9~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\,
	datab => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~4_combout\,
	datad => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~5_combout\,
	cin => \po1|div|Div0|auto_generated|divider|divider|op_9~10_cout\,
	cout => \po1|div|Div0|auto_generated|divider|divider|op_9~6_cout\);

-- Location: LABCELL_X11_Y5_N36
\po1|div|Div0|auto_generated|divider|divider|op_9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|div|Div0|auto_generated|divider|divider|op_9~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \po1|div|Div0|auto_generated|divider|divider|op_9~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \po1|div|Div0|auto_generated|divider|divider|op_9~6_cout\,
	sumout => \po1|div|Div0|auto_generated|divider|divider|op_9~1_sumout\);

-- Location: LABCELL_X11_Y5_N48
\po1|rgDivisor|q[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|rgDivisor|q[0]~5_combout\ = ( !\po1|div|Div0|auto_generated|divider|divider|op_9~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	combout => \po1|rgDivisor|q[0]~5_combout\);

-- Location: FF_X11_Y5_N50
\po1|rgDivisor|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|rgDivisor|q[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgDivisor|q\(0));

-- Location: LABCELL_X12_Y5_N51
\po1|rgDivisor|q[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|rgDivisor|q[1]~4_combout\ = ( !\po1|div|Div0|auto_generated|divider|divider|op_8~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \po1|rgDivisor|q[1]~4_combout\);

-- Location: FF_X12_Y5_N53
\po1|rgDivisor|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|rgDivisor|q[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgDivisor|q\(1));

-- Location: MLABCELL_X6_Y4_N42
\po1|cmpM2|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|cmpM2|LessThan0~0_combout\ = ( \po1|rgDivisor|q\(1) & ( (\po1|r1|q\(1) & (\po1|r1|q\(0) & !\po1|rgDivisor|q\(0))) ) ) # ( !\po1|rgDivisor|q\(1) & ( ((\po1|r1|q\(0) & !\po1|rgDivisor|q\(0))) # (\po1|r1|q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101010101000100010000000001110111010101010001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|r1|ALT_INV_q\(1),
	datab => \po1|r1|ALT_INV_q\(0),
	datad => \po1|rgDivisor|ALT_INV_q\(0),
	datae => \po1|rgDivisor|ALT_INV_q\(1),
	combout => \po1|cmpM2|LessThan0~0_combout\);

-- Location: LABCELL_X9_Y4_N3
\po1|rgDivisor|q[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|rgDivisor|q[3]~2_combout\ = ( !\po1|div|Div0|auto_generated|divider|divider|op_6~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \po1|rgDivisor|q[3]~2_combout\);

-- Location: FF_X9_Y4_N4
\po1|rgDivisor|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|rgDivisor|q[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgDivisor|q\(3));

-- Location: MLABCELL_X6_Y4_N12
\po1|cmpM2|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|cmpM2|LessThan0~1_combout\ = ( \po1|r1|q\(3) & ( (!\po1|rgDivisor|q\(3)) # ((!\po1|rgDivisor|q\(2) & ((\po1|r1|q\(2)) # (\po1|cmpM2|LessThan0~0_combout\))) # (\po1|rgDivisor|q\(2) & (\po1|cmpM2|LessThan0~0_combout\ & \po1|r1|q\(2)))) ) ) # ( 
-- !\po1|r1|q\(3) & ( (!\po1|rgDivisor|q\(3) & ((!\po1|rgDivisor|q\(2) & ((\po1|r1|q\(2)) # (\po1|cmpM2|LessThan0~0_combout\))) # (\po1|rgDivisor|q\(2) & (\po1|cmpM2|LessThan0~0_combout\ & \po1|r1|q\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100000000111111110010101100101011000000001111111100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|rgDivisor|ALT_INV_q\(2),
	datab => \po1|cmpM2|ALT_INV_LessThan0~0_combout\,
	datac => \po1|r1|ALT_INV_q\(2),
	datad => \po1|rgDivisor|ALT_INV_q\(3),
	datae => \po1|r1|ALT_INV_q\(3),
	combout => \po1|cmpM2|LessThan0~1_combout\);

-- Location: LABCELL_X12_Y4_N45
\po1|rgDivisor|q[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|rgDivisor|q[4]~1_combout\ = ( !\po1|div|Div0|auto_generated|divider|divider|op_5~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \po1|div|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \po1|rgDivisor|q[4]~1_combout\);

-- Location: FF_X12_Y4_N46
\po1|rgDivisor|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|rgDivisor|q[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rgDivisor|q\(4));

-- Location: MLABCELL_X6_Y4_N18
\po1|cmpM2|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|cmpM2|LessThan0~2_combout\ = ( \po1|r1|q\(4) & ( \po1|rgDivisor|q\(4) & ( (((!\po1|rgDivisor|q\(5) & \po1|cmpM2|LessThan0~1_combout\)) # (\po1|r1|q\(5))) # (\po1|r1|q\(6)) ) ) ) # ( !\po1|r1|q\(4) & ( \po1|rgDivisor|q\(4) & ( (\po1|r1|q\(5)) # 
-- (\po1|r1|q\(6)) ) ) ) # ( \po1|r1|q\(4) & ( !\po1|rgDivisor|q\(4) & ( ((!\po1|rgDivisor|q\(5)) # (\po1|r1|q\(5))) # (\po1|r1|q\(6)) ) ) ) # ( !\po1|r1|q\(4) & ( !\po1|rgDivisor|q\(4) & ( (((!\po1|rgDivisor|q\(5) & \po1|cmpM2|LessThan0~1_combout\)) # 
-- (\po1|r1|q\(5))) # (\po1|r1|q\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111110111111101111111011101110111011101110111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \po1|r1|ALT_INV_q\(6),
	datab => \po1|r1|ALT_INV_q\(5),
	datac => \po1|rgDivisor|ALT_INV_q\(5),
	datad => \po1|cmpM2|ALT_INV_LessThan0~1_combout\,
	datae => \po1|r1|ALT_INV_q\(4),
	dataf => \po1|rgDivisor|ALT_INV_q\(4),
	combout => \po1|cmpM2|LessThan0~2_combout\);

-- Location: FF_X10_Y4_N7
\po1|rg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|rg|q[0]~feeder_combout\,
	asdata => VCC,
	sload => \po1|smd|Add0~5_sumout\,
	ena => \po1|cmpM2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rg|q\(0));

-- Location: FF_X11_Y4_N11
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

-- Location: LABCELL_X7_Y4_N21
\po1|rg|q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|rg|q[1]~feeder_combout\ = ( \po1|smd|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \po1|smd|ALT_INV_Add0~9_sumout\,
	combout => \po1|rg|q[1]~feeder_combout\);

-- Location: FF_X7_Y4_N23
\po1|rg|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|rg|q[1]~feeder_combout\,
	asdata => VCC,
	sload => \po1|smd|Add0~5_sumout\,
	ena => \po1|cmpM2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rg|q\(1));

-- Location: FF_X9_Y4_N31
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

-- Location: LABCELL_X9_Y4_N48
\po1|rg|q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|rg|q[2]~feeder_combout\ = \po1|smd|Add0~13_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \po1|smd|ALT_INV_Add0~13_sumout\,
	combout => \po1|rg|q[2]~feeder_combout\);

-- Location: FF_X9_Y4_N49
\po1|rg|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|rg|q[2]~feeder_combout\,
	asdata => VCC,
	sload => \po1|smd|Add0~5_sumout\,
	ena => \po1|cmpM2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rg|q\(2));

-- Location: FF_X12_Y4_N55
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

-- Location: LABCELL_X9_Y4_N57
\po1|rg|q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|rg|q[3]~feeder_combout\ = \po1|smd|Add0~17_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \po1|smd|ALT_INV_Add0~17_sumout\,
	combout => \po1|rg|q[3]~feeder_combout\);

-- Location: FF_X9_Y4_N58
\po1|rg|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|rg|q[3]~feeder_combout\,
	asdata => VCC,
	sload => \po1|smd|Add0~5_sumout\,
	ena => \po1|cmpM2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rg|q\(3));

-- Location: FF_X9_Y4_N11
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

-- Location: LABCELL_X10_Y4_N15
\po1|rg|q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|rg|q[4]~feeder_combout\ = ( \po1|smd|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \po1|smd|ALT_INV_Add0~21_sumout\,
	combout => \po1|rg|q[4]~feeder_combout\);

-- Location: FF_X10_Y4_N16
\po1|rg|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|rg|q[4]~feeder_combout\,
	asdata => VCC,
	sload => \po1|smd|Add0~5_sumout\,
	ena => \po1|cmpM2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rg|q\(4));

-- Location: FF_X12_Y4_N41
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

-- Location: LABCELL_X9_Y4_N12
\po1|rg|q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|rg|q[5]~feeder_combout\ = \po1|smd|Add0~25_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \po1|smd|ALT_INV_Add0~25_sumout\,
	combout => \po1|rg|q[5]~feeder_combout\);

-- Location: FF_X9_Y4_N14
\po1|rg|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|rg|q[5]~feeder_combout\,
	asdata => VCC,
	sload => \po1|smd|Add0~5_sumout\,
	ena => \po1|cmpM2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rg|q\(5));

-- Location: FF_X9_Y4_N29
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

-- Location: LABCELL_X10_Y4_N3
\po1|rg|q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|rg|q[6]~feeder_combout\ = \po1|smd|Add0~29_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \po1|smd|ALT_INV_Add0~29_sumout\,
	combout => \po1|rg|q[6]~feeder_combout\);

-- Location: FF_X10_Y4_N5
\po1|rg|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|rg|q[6]~feeder_combout\,
	asdata => VCC,
	sload => \po1|smd|Add0~5_sumout\,
	ena => \po1|cmpM2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rg|q\(6));

-- Location: FF_X11_Y4_N22
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

-- Location: LABCELL_X9_Y4_N18
\po1|rg|q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \po1|rg|q[7]~feeder_combout\ = ( \po1|smd|Add0~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \po1|smd|ALT_INV_Add0~33_sumout\,
	combout => \po1|rg|q[7]~feeder_combout\);

-- Location: FF_X9_Y4_N19
\po1|rg|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \po1|rg|q[7]~feeder_combout\,
	asdata => VCC,
	sload => \po1|smd|Add0~5_sumout\,
	ena => \po1|cmpM2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \po1|rg|q\(7));

-- Location: FF_X12_Y4_N16
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

-- Location: LABCELL_X83_Y44_N0
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


