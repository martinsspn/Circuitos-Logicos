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
-- Generated on "11/24/2019 01:21:38"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          topLevel
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY topLevel_vhd_vec_tst IS
END topLevel_vhd_vec_tst;
ARCHITECTURE topLevel_arch OF topLevel_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clearn : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL maior : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL menor : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL qtdMaior : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT topLevel
	PORT (
	clearn : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	maior : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	menor : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	qtdMaior : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : topLevel
	PORT MAP (
-- list connections between master ports and signals
	clearn => clearn,
	clock => clock,
	maior => maior,
	menor => menor,
	qtdMaior => qtdMaior
	);

-- clearn
t_prcs_clearn: PROCESS
BEGIN
	clearn <= '1';
WAIT;
END PROCESS t_prcs_clearn;

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1700000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
END topLevel_arch;
