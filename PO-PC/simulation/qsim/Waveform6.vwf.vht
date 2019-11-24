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
-- Generated on "11/23/2019 00:47:02"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          po
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY po_vhd_vec_tst IS
END po_vhd_vec_tst;
ARCHITECTURE po_arch OF po_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL e1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Emaior : STD_LOGIC;
SIGNAL enableDivisao : STD_LOGIC;
SIGNAL enableMaior : STD_LOGIC;
SIGNAL enableMenor : STD_LOGIC;
SIGNAL enableQTD : STD_LOGIC;
SIGNAL enabler1 : STD_LOGIC;
SIGNAL enableSoma : STD_LOGIC;
SIGNAL maior : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL menor : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL quantidade : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL sel : STD_LOGIC;
COMPONENT po
	PORT (
	clock : IN STD_LOGIC;
	e1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Emaior : BUFFER STD_LOGIC;
	enableDivisao : IN STD_LOGIC;
	enableMaior : IN STD_LOGIC;
	enableMenor : IN STD_LOGIC;
	enableQTD : IN STD_LOGIC;
	enabler1 : IN STD_LOGIC;
	enableSoma : IN STD_LOGIC;
	maior : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	menor : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	quantidade : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	sel : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : po
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	e1 => e1,
	Emaior => Emaior,
	enableDivisao => enableDivisao,
	enableMaior => enableMaior,
	enableMenor => enableMenor,
	enableQTD => enableQTD,
	enabler1 => enabler1,
	enableSoma => enableSoma,
	maior => maior,
	menor => menor,
	quantidade => quantidade,
	sel => sel
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
-- e1[7]
t_prcs_e1_7: PROCESS
BEGIN
	e1(7) <= '1';
	WAIT FOR 10000 ps;
	e1(7) <= '0';
WAIT;
END PROCESS t_prcs_e1_7;
-- e1[6]
t_prcs_e1_6: PROCESS
BEGIN
	e1(6) <= '1';
	WAIT FOR 50000 ps;
	e1(6) <= '0';
	WAIT FOR 400000 ps;
	e1(6) <= '1';
	WAIT FOR 40000 ps;
	e1(6) <= '0';
WAIT;
END PROCESS t_prcs_e1_6;
-- e1[5]
t_prcs_e1_5: PROCESS
BEGIN
	e1(5) <= '1';
	WAIT FOR 10000 ps;
	e1(5) <= '0';
WAIT;
END PROCESS t_prcs_e1_5;
-- e1[4]
t_prcs_e1_4: PROCESS
BEGIN
	e1(4) <= '1';
	WAIT FOR 10000 ps;
	e1(4) <= '0';
WAIT;
END PROCESS t_prcs_e1_4;
-- e1[3]
t_prcs_e1_3: PROCESS
BEGIN
	e1(3) <= '1';
	WAIT FOR 10000 ps;
	e1(3) <= '0';
	WAIT FOR 320000 ps;
	e1(3) <= '1';
	WAIT FOR 120000 ps;
	e1(3) <= '0';
	WAIT FOR 320000 ps;
	e1(3) <= '1';
	WAIT FOR 120000 ps;
	e1(3) <= '0';
WAIT;
END PROCESS t_prcs_e1_3;
-- e1[2]
t_prcs_e1_2: PROCESS
BEGIN
	e1(2) <= '1';
	WAIT FOR 10000 ps;
	e1(2) <= '0';
	WAIT FOR 160000 ps;
	e1(2) <= '1';
	WAIT FOR 160000 ps;
	e1(2) <= '0';
	WAIT FOR 280000 ps;
	e1(2) <= '1';
	WAIT FOR 160000 ps;
	e1(2) <= '0';
WAIT;
END PROCESS t_prcs_e1_2;
-- e1[1]
t_prcs_e1_1: PROCESS
BEGIN
	e1(1) <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 2
	LOOP
		e1(1) <= '0';
		WAIT FOR 80000 ps;
		e1(1) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	e1(1) <= '0';
	WAIT FOR 80000 ps;
	e1(1) <= '1';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 2
	LOOP
		e1(1) <= '0';
		WAIT FOR 80000 ps;
		e1(1) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	e1(1) <= '0';
	WAIT FOR 80000 ps;
	e1(1) <= '1';
	WAIT FOR 40000 ps;
	e1(1) <= '0';
WAIT;
END PROCESS t_prcs_e1_1;
-- e1[0]
t_prcs_e1_0: PROCESS
BEGIN
	e1(0) <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 5
	LOOP
		e1(0) <= '0';
		WAIT FOR 40000 ps;
		e1(0) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	e1(0) <= '0';
	WAIT FOR 80000 ps;
	e1(0) <= '1';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 4
	LOOP
		e1(0) <= '0';
		WAIT FOR 40000 ps;
		e1(0) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	e1(0) <= '0';
WAIT;
END PROCESS t_prcs_e1_0;

-- enableDivisao
t_prcs_enableDivisao: PROCESS
BEGIN
	enableDivisao <= '0';
	WAIT FOR 450000 ps;
	enableDivisao <= '1';
	WAIT FOR 20000 ps;
	enableDivisao <= '0';
WAIT;
END PROCESS t_prcs_enableDivisao;

-- enableMaior
t_prcs_enableMaior: PROCESS
BEGIN
	enableMaior <= '0';
	WAIT FOR 30000 ps;
	enableMaior <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 10
	LOOP
		enableMaior <= '0';
		WAIT FOR 20000 ps;
		enableMaior <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	enableMaior <= '0';
WAIT;
END PROCESS t_prcs_enableMaior;

-- enableMenor
t_prcs_enableMenor: PROCESS
BEGIN
	enableMenor <= '0';
	WAIT FOR 30000 ps;
	enableMenor <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 10
	LOOP
		enableMenor <= '0';
		WAIT FOR 20000 ps;
		enableMenor <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	enableMenor <= '0';
WAIT;
END PROCESS t_prcs_enableMenor;

-- enableQTD
t_prcs_enableQTD: PROCESS
BEGIN
	enableQTD <= '0';
WAIT;
END PROCESS t_prcs_enableQTD;

-- enabler1
t_prcs_enabler1: PROCESS
BEGIN
	enabler1 <= '0';
	WAIT FOR 10000 ps;
	enabler1 <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 21
	LOOP
		enabler1 <= '0';
		WAIT FOR 20000 ps;
		enabler1 <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	enabler1 <= '0';
WAIT;
END PROCESS t_prcs_enabler1;

-- enableSoma
t_prcs_enableSoma: PROCESS
BEGIN
	enableSoma <= '0';
	WAIT FOR 30000 ps;
	enableSoma <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 10
	LOOP
		enableSoma <= '0';
		WAIT FOR 20000 ps;
		enableSoma <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	enableSoma <= '0';
WAIT;
END PROCESS t_prcs_enableSoma;

-- sel
t_prcs_sel: PROCESS
BEGIN
	sel <= '0';
	WAIT FOR 450000 ps;
	sel <= '1';
	WAIT FOR 420000 ps;
	sel <= '0';
WAIT;
END PROCESS t_prcs_sel;
END po_arch;
