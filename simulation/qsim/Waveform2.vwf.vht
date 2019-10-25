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
-- Generated on "10/25/2019 13:44:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          controladorEnable
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY controladorEnable_vhd_vec_tst IS
END controladorEnable_vhd_vec_tst;
ARCHITECTURE controladorEnable_arch OF controladorEnable_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL C : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL rc : STD_LOGIC;
SIGNAL SEL : STD_LOGIC;
SIGNAL TC : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT controladorEnable
	PORT (
	C : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	rc : IN STD_LOGIC;
	SEL : IN STD_LOGIC;
	TC : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : controladorEnable
	PORT MAP (
-- list connections between master ports and signals
	C => C,
	rc => rc,
	SEL => SEL,
	TC => TC
	);

-- rc
t_prcs_rc: PROCESS
BEGIN
	rc <= '1';
WAIT;
END PROCESS t_prcs_rc;

-- SEL
t_prcs_SEL: PROCESS
BEGIN
LOOP
	SEL <= '0';
	WAIT FOR 1250 ps;
	SEL <= '1';
	WAIT FOR 1250 ps;
	IF (NOW >= 10000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SEL;
-- TC[1]
t_prcs_TC_1: PROCESS
BEGIN
LOOP
	TC(1) <= '0';
	WAIT FOR 5000 ps;
	TC(1) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 10000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_TC_1;
-- TC[0]
t_prcs_TC_0: PROCESS
BEGIN
LOOP
	TC(0) <= '0';
	WAIT FOR 2500 ps;
	TC(0) <= '1';
	WAIT FOR 2500 ps;
	IF (NOW >= 10000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_TC_0;
END controladorEnable_arch;
