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
-- Generated on "10/25/2019 15:01:29"
                                                             
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
SIGNAL t0 : STD_LOGIC;
SIGNAL t1 : STD_LOGIC;
SIGNAL t2 : STD_LOGIC;
SIGNAL t3 : STD_LOGIC;
SIGNAL t4 : STD_LOGIC;
SIGNAL t5 : STD_LOGIC;
SIGNAL t6 : STD_LOGIC;
SIGNAL t7 : STD_LOGIC;
SIGNAL t8 : STD_LOGIC;
SIGNAL t9 : STD_LOGIC;
SIGNAL tc : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT RelogioDigital
	PORT (
	clock : IN STD_LOGIC;
	H0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	H1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	M0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	M1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	RC : IN STD_LOGIC;
	sel : IN STD_LOGIC;
	t0 : IN STD_LOGIC;
	t1 : IN STD_LOGIC;
	t2 : IN STD_LOGIC;
	t3 : IN STD_LOGIC;
	t4 : IN STD_LOGIC;
	t5 : IN STD_LOGIC;
	t6 : IN STD_LOGIC;
	t7 : IN STD_LOGIC;
	t8 : IN STD_LOGIC;
	t9 : IN STD_LOGIC;
	tc : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
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
	t0 => t0,
	t1 => t1,
	t2 => t2,
	t3 => t3,
	t4 => t4,
	t5 => t5,
	t6 => t6,
	t7 => t7,
	t8 => t8,
	t9 => t9,
	tc => tc
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;

-- RC
t_prcs_RC: PROCESS
BEGIN
	RC <= '0';
WAIT;
END PROCESS t_prcs_RC;

-- sel
t_prcs_sel: PROCESS
BEGIN
	sel <= '0';
WAIT;
END PROCESS t_prcs_sel;

-- t0
t_prcs_t0: PROCESS
BEGIN
	t0 <= '0';
WAIT;
END PROCESS t_prcs_t0;

-- t1
t_prcs_t1: PROCESS
BEGIN
	t1 <= '0';
WAIT;
END PROCESS t_prcs_t1;

-- t2
t_prcs_t2: PROCESS
BEGIN
	t2 <= '0';
WAIT;
END PROCESS t_prcs_t2;

-- t3
t_prcs_t3: PROCESS
BEGIN
	t3 <= '0';
WAIT;
END PROCESS t_prcs_t3;

-- t4
t_prcs_t4: PROCESS
BEGIN
	t4 <= '0';
WAIT;
END PROCESS t_prcs_t4;

-- t5
t_prcs_t5: PROCESS
BEGIN
	t5 <= '0';
WAIT;
END PROCESS t_prcs_t5;

-- t6
t_prcs_t6: PROCESS
BEGIN
	t6 <= '0';
WAIT;
END PROCESS t_prcs_t6;

-- t7
t_prcs_t7: PROCESS
BEGIN
	t7 <= '0';
WAIT;
END PROCESS t_prcs_t7;

-- t8
t_prcs_t8: PROCESS
BEGIN
	t8 <= '0';
WAIT;
END PROCESS t_prcs_t8;

-- t9
t_prcs_t9: PROCESS
BEGIN
	t9 <= '0';
WAIT;
END PROCESS t_prcs_t9;
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
END RelogioDigital_arch;
