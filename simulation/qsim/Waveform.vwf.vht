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
-- Generated on "10/24/2019 05:04:24"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          RelogioDigital
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RelogioDigital_vhd_vec_tst IS
END RelogioDigital_vhd_vec_tst;
ARCHITECTURE RelogioDigital_arch OF RelogioDigital_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL H0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL H1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL load : STD_LOGIC;
SIGNAL M0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL M1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL sel : STD_LOGIC;
SIGNAL tc : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL teclas : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT RelogioDigital
	PORT (
	clock : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	H0 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	H1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	load : IN STD_LOGIC;
	M0 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	M1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	sel : IN STD_LOGIC;
	tc : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	teclas : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : RelogioDigital
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	enable => enable,
	H0 => H0,
	H1 => H1,
	load => load,
	M0 => M0,
	M1 => M1,
	sel => sel,
	tc => tc,
	teclas => teclas
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;

-- sel
t_prcs_sel: PROCESS
BEGIN
	sel <= '0';
WAIT;
END PROCESS t_prcs_sel;

-- load
t_prcs_load: PROCESS
BEGIN
	load <= '1';
	WAIT FOR 730000 ps;
	load <= '0';
WAIT;
END PROCESS t_prcs_load;
-- tc[1]
t_prcs_tc_1: PROCESS
BEGIN
	tc(1) <= '0';
WAIT;
END PROCESS t_prcs_tc_1;
-- tc[0]
t_prcs_tc_0: PROCESS
BEGIN
	tc(0) <= '0';
WAIT;
END PROCESS t_prcs_tc_0;
-- teclas[9]
t_prcs_teclas_9: PROCESS
BEGIN
	teclas(9) <= '0';
WAIT;
END PROCESS t_prcs_teclas_9;
-- teclas[8]
t_prcs_teclas_8: PROCESS
BEGIN
	teclas(8) <= '0';
WAIT;
END PROCESS t_prcs_teclas_8;
-- teclas[7]
t_prcs_teclas_7: PROCESS
BEGIN
	teclas(7) <= '0';
WAIT;
END PROCESS t_prcs_teclas_7;
-- teclas[6]
t_prcs_teclas_6: PROCESS
BEGIN
	teclas(6) <= '0';
WAIT;
END PROCESS t_prcs_teclas_6;
-- teclas[5]
t_prcs_teclas_5: PROCESS
BEGIN
	teclas(5) <= '0';
WAIT;
END PROCESS t_prcs_teclas_5;
-- teclas[4]
t_prcs_teclas_4: PROCESS
BEGIN
	teclas(4) <= '0';
	WAIT FOR 430000 ps;
	teclas(4) <= '1';
	WAIT FOR 230000 ps;
	teclas(4) <= '0';
WAIT;
END PROCESS t_prcs_teclas_4;
-- teclas[3]
t_prcs_teclas_3: PROCESS
BEGIN
	teclas(3) <= '0';
	WAIT FOR 210000 ps;
	teclas(3) <= '1';
	WAIT FOR 220000 ps;
	teclas(3) <= '0';
WAIT;
END PROCESS t_prcs_teclas_3;
-- teclas[2]
t_prcs_teclas_2: PROCESS
BEGIN
	teclas(2) <= '1';
	WAIT FOR 210000 ps;
	teclas(2) <= '0';
WAIT;
END PROCESS t_prcs_teclas_2;
-- teclas[1]
t_prcs_teclas_1: PROCESS
BEGIN
	teclas(1) <= '0';
WAIT;
END PROCESS t_prcs_teclas_1;
-- teclas[0]
t_prcs_teclas_0: PROCESS
BEGIN
	teclas(0) <= '0';
WAIT;
END PROCESS t_prcs_teclas_0;
END RelogioDigital_arch;
