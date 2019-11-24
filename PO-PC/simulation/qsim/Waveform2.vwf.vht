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
-- Generated on "11/22/2019 21:59:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          divisor
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY divisor_vhd_vec_tst IS
END divisor_vhd_vec_tst;
ARCHITECTURE divisor_arch OF divisor_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL y : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL y_inv : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT divisor
	PORT (
	y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	y_inv : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : divisor
	PORT MAP (
-- list connections between master ports and signals
	y => y,
	y_inv => y_inv
	);
-- y[3]
t_prcs_y_3: PROCESS
BEGIN
	y(3) <= '0';
WAIT;
END PROCESS t_prcs_y_3;
-- y[2]
t_prcs_y_2: PROCESS
BEGIN
	y(2) <= '1';
WAIT;
END PROCESS t_prcs_y_2;
-- y[1]
t_prcs_y_1: PROCESS
BEGIN
	y(1) <= '0';
WAIT;
END PROCESS t_prcs_y_1;
-- y[0]
t_prcs_y_0: PROCESS
BEGIN
	y(0) <= '0';
WAIT;
END PROCESS t_prcs_y_0;
END divisor_arch;
