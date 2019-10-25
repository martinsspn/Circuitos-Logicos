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
-- Generated on "10/25/2019 14:20:20"
                                                             
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
SIGNAL H0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL H1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL M0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL M1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL RC : STD_LOGIC;
SIGNAL sel : STD_LOGIC;
SIGNAL tc : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL TECLAS : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT RelogioDigital
	PORT (
	clock : IN STD_LOGIC;
	H0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	H1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	M0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	M1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	RC : IN STD_LOGIC;
	sel : IN STD_LOGIC;
	tc : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	TECLAS : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : RelogioDigital
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	H0 => H0,
	H1 => H1,
	M0 => M0,
	M1 => M1,
	RC => RC,
	sel => sel,
	tc => tc,
	TECLAS => TECLAS
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 1000 ps;
	clock <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 10000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- RC
t_prcs_RC: PROCESS
BEGIN
LOOP
	RC <= '0';
	WAIT FOR 5000 ps;
	RC <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 10000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_RC;

-- sel
t_prcs_sel: PROCESS
BEGIN
	sel <= '0';
WAIT;
END PROCESS t_prcs_sel;
-- tc[1]
t_prcs_tc_1: PROCESS
BEGIN
LOOP
	tc(1) <= '0';
	WAIT FOR 2500 ps;
	tc(1) <= '1';
	WAIT FOR 2500 ps;
	IF (NOW >= 10000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_tc_1;
-- tc[0]
t_prcs_tc_0: PROCESS
BEGIN
LOOP
	tc(0) <= '0';
	WAIT FOR 1250 ps;
	tc(0) <= '1';
	WAIT FOR 1250 ps;
	IF (NOW >= 10000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_tc_0;
END RelogioDigital_arch;
