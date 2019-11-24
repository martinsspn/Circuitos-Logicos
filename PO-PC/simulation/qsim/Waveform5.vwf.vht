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
-- Generated on "11/23/2019 00:05:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          pc
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY pc_vhd_vec_tst IS
END pc_vhd_vec_tst;
ARCHITECTURE pc_arch OF pc_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL Emaior : STD_LOGIC;
SIGNAL enableDivisao : STD_LOGIC;
SIGNAL enableMaior : STD_LOGIC;
SIGNAL enableMenor : STD_LOGIC;
SIGNAL enableQTD : STD_LOGIC;
SIGNAL enabler1 : STD_LOGIC;
SIGNAL enableRMaior : STD_LOGIC;
SIGNAL enableRMenor : STD_LOGIC;
SIGNAL enableRQTD : STD_LOGIC;
SIGNAL enableSoma : STD_LOGIC;
SIGNAL lerMem : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL sel : STD_LOGIC;
SIGNAL state_reg : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT pc
	PORT (
	clock : IN STD_LOGIC;
	Emaior : IN STD_LOGIC;
	enableDivisao : BUFFER STD_LOGIC;
	enableMaior : BUFFER STD_LOGIC;
	enableMenor : BUFFER STD_LOGIC;
	enableQTD : BUFFER STD_LOGIC;
	enabler1 : BUFFER STD_LOGIC;
	enableRMaior : BUFFER STD_LOGIC;
	enableRMenor : BUFFER STD_LOGIC;
	enableRQTD : BUFFER STD_LOGIC;
	enableSoma : BUFFER STD_LOGIC;
	lerMem : BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0);
	sel : BUFFER STD_LOGIC;
	state_reg : IN STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : pc
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	Emaior => Emaior,
	enableDivisao => enableDivisao,
	enableMaior => enableMaior,
	enableMenor => enableMenor,
	enableQTD => enableQTD,
	enabler1 => enabler1,
	enableRMaior => enableRMaior,
	enableRMenor => enableRMenor,
	enableRQTD => enableRQTD,
	enableSoma => enableSoma,
	lerMem => lerMem,
	sel => sel,
	state_reg => state_reg
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
	FOR i IN 1 TO 11
	LOOP
		clock <= '0';
		WAIT FOR 10000 ps;
		clock <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 36
	LOOP
		clock <= '0';
		WAIT FOR 10000 ps;
		clock <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_clock;

-- Emaior
t_prcs_Emaior: PROCESS
BEGIN
	Emaior <= '0';
	WAIT FOR 440000 ps;
	Emaior <= '1';
	WAIT FOR 20000 ps;
	Emaior <= '0';
	WAIT FOR 20000 ps;
	Emaior <= '1';
	WAIT FOR 20000 ps;
	Emaior <= '0';
	WAIT FOR 20000 ps;
	Emaior <= '1';
	WAIT FOR 20000 ps;
	Emaior <= '0';
WAIT;
END PROCESS t_prcs_Emaior;
-- state_reg[5]
t_prcs_state_reg_5: PROCESS
BEGIN
	state_reg(5) <= '0';
	WAIT FOR 640000 ps;
	state_reg(5) <= '1';
WAIT;
END PROCESS t_prcs_state_reg_5;
-- state_reg[4]
t_prcs_state_reg_4: PROCESS
BEGIN
	state_reg(4) <= '0';
	WAIT FOR 320000 ps;
	state_reg(4) <= '1';
	WAIT FOR 320000 ps;
	state_reg(4) <= '0';
	WAIT FOR 320000 ps;
	state_reg(4) <= '1';
WAIT;
END PROCESS t_prcs_state_reg_4;
-- state_reg[3]
t_prcs_state_reg_3: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		state_reg(3) <= '0';
		WAIT FOR 160000 ps;
		state_reg(3) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	state_reg(3) <= '0';
WAIT;
END PROCESS t_prcs_state_reg_3;
-- state_reg[2]
t_prcs_state_reg_2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		state_reg(2) <= '0';
		WAIT FOR 80000 ps;
		state_reg(2) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	state_reg(2) <= '0';
WAIT;
END PROCESS t_prcs_state_reg_2;
-- state_reg[1]
t_prcs_state_reg_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		state_reg(1) <= '0';
		WAIT FOR 40000 ps;
		state_reg(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	state_reg(1) <= '0';
WAIT;
END PROCESS t_prcs_state_reg_1;
-- state_reg[0]
t_prcs_state_reg_0: PROCESS
BEGIN
LOOP
	state_reg(0) <= '0';
	WAIT FOR 20000 ps;
	state_reg(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_state_reg_0;
END pc_arch;
