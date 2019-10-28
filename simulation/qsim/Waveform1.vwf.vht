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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/28/2019 15:31:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          decod
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY decod_vhd_vec_tst IS
END decod_vhd_vec_tst;
ARCHITECTURE decod_arch OF decod_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL Ai : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL b : STD_LOGIC;
SIGNAL c : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL e : STD_LOGIC;
SIGNAL f : STD_LOGIC;
SIGNAL g : STD_LOGIC;
COMPONENT decod
	PORT (
	a : BUFFER STD_LOGIC;
	Ai : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	b : BUFFER STD_LOGIC;
	c : BUFFER STD_LOGIC;
	d : BUFFER STD_LOGIC;
	e : BUFFER STD_LOGIC;
	f : BUFFER STD_LOGIC;
	g : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : decod
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	Ai => Ai,
	b => b,
	c => c,
	d => d,
	e => e,
	f => f,
	g => g
	);
-- Ai[3]
t_prcs_Ai_3: PROCESS
BEGIN
	Ai(3) <= '0';
	WAIT FOR 160000 ps;
	Ai(3) <= '1';
WAIT;
END PROCESS t_prcs_Ai_3;
-- Ai[2]
t_prcs_Ai_2: PROCESS
BEGIN
	Ai(2) <= '0';
	WAIT FOR 80000 ps;
	Ai(2) <= '1';
	WAIT FOR 80000 ps;
	Ai(2) <= '0';
WAIT;
END PROCESS t_prcs_Ai_2;
-- Ai[1]
t_prcs_Ai_1: PROCESS
BEGIN
	Ai(1) <= '0';
	WAIT FOR 40000 ps;
	Ai(1) <= '1';
	WAIT FOR 40000 ps;
	Ai(1) <= '0';
	WAIT FOR 40000 ps;
	Ai(1) <= '1';
	WAIT FOR 40000 ps;
	Ai(1) <= '0';
WAIT;
END PROCESS t_prcs_Ai_1;
-- Ai[0]
t_prcs_Ai_0: PROCESS
BEGIN
	Ai(0) <= '0';
	WAIT FOR 20000 ps;
	Ai(0) <= '1';
	WAIT FOR 20000 ps;
	Ai(0) <= '0';
	WAIT FOR 20000 ps;
	Ai(0) <= '1';
	WAIT FOR 20000 ps;
	Ai(0) <= '0';
	WAIT FOR 20000 ps;
	Ai(0) <= '1';
	WAIT FOR 20000 ps;
	Ai(0) <= '0';
	WAIT FOR 20000 ps;
	Ai(0) <= '1';
	WAIT FOR 20000 ps;
	Ai(0) <= '0';
	WAIT FOR 20000 ps;
	Ai(0) <= '1';
WAIT;
END PROCESS t_prcs_Ai_0;
END decod_arch;
