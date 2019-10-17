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
-- Generated on "10/17/2019 07:57:37"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          demux_4x8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY demux_4x8_vhd_vec_tst IS
END demux_4x8_vhd_vec_tst;
ARCHITECTURE demux_4x8_arch OF demux_4x8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL E : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL S1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL S2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL sel : STD_LOGIC;
COMPONENT demux_4x8
	PORT (
	E : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	S1 : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	S2 : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	sel : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : demux_4x8
	PORT MAP (
-- list connections between master ports and signals
	E => E,
	S1 => S1,
	S2 => S2,
	sel => sel
	);
-- E[3]
t_prcs_E_3: PROCESS
BEGIN
	E(3) <= '1';
WAIT;
END PROCESS t_prcs_E_3;
-- E[2]
t_prcs_E_2: PROCESS
BEGIN
	E(2) <= '1';
WAIT;
END PROCESS t_prcs_E_2;
-- E[1]
t_prcs_E_1: PROCESS
BEGIN
	E(1) <= '1';
WAIT;
END PROCESS t_prcs_E_1;
-- E[0]
t_prcs_E_0: PROCESS
BEGIN
	E(0) <= '1';
WAIT;
END PROCESS t_prcs_E_0;

-- sel
t_prcs_sel: PROCESS
BEGIN
LOOP
	sel <= '0';
	WAIT FOR 5000 ps;
	sel <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 10000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_sel;
END demux_4x8_arch;
