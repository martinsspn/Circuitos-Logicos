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
-- Generated on "10/26/2019 20:04:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          comparador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY comparador_vhd_vec_tst IS
END comparador_vhd_vec_tst;
ARCHITECTURE comparador_arch OF comparador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL C : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL D : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL E : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL F : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL G : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL H : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL S : STD_LOGIC;
COMPONENT comparador
	PORT (
	A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	C : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	D : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	E : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	F : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	G : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	H : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	S : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : comparador
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C,
	D => D,
	E => E,
	F => F,
	G => G,
	H => H,
	S => S
	);
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	A(3) <= '0';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	A(2) <= '0';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	A(1) <= '0';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	A(0) <= '0';
WAIT;
END PROCESS t_prcs_A_0;
-- B[3]
t_prcs_B_3: PROCESS
BEGIN
	B(3) <= '0';
WAIT;
END PROCESS t_prcs_B_3;
-- B[2]
t_prcs_B_2: PROCESS
BEGIN
	B(2) <= '0';
WAIT;
END PROCESS t_prcs_B_2;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
	B(1) <= '0';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
	B(0) <= '0';
WAIT;
END PROCESS t_prcs_B_0;
-- C[3]
t_prcs_C_3: PROCESS
BEGIN
	C(3) <= '0';
WAIT;
END PROCESS t_prcs_C_3;
-- C[2]
t_prcs_C_2: PROCESS
BEGIN
	C(2) <= '0';
WAIT;
END PROCESS t_prcs_C_2;
-- C[1]
t_prcs_C_1: PROCESS
BEGIN
	C(1) <= '0';
WAIT;
END PROCESS t_prcs_C_1;
-- C[0]
t_prcs_C_0: PROCESS
BEGIN
	C(0) <= '0';
WAIT;
END PROCESS t_prcs_C_0;
-- D[3]
t_prcs_D_3: PROCESS
BEGIN
	D(3) <= '0';
	WAIT FOR 520000 ps;
	D(3) <= '1';
	WAIT FOR 460000 ps;
	D(3) <= '0';
WAIT;
END PROCESS t_prcs_D_3;
-- D[2]
t_prcs_D_2: PROCESS
BEGIN
	D(2) <= '0';
	WAIT FOR 520000 ps;
	D(2) <= '1';
	WAIT FOR 460000 ps;
	D(2) <= '0';
WAIT;
END PROCESS t_prcs_D_2;
-- D[1]
t_prcs_D_1: PROCESS
BEGIN
	D(1) <= '0';
	WAIT FOR 520000 ps;
	D(1) <= '1';
	WAIT FOR 460000 ps;
	D(1) <= '0';
WAIT;
END PROCESS t_prcs_D_1;
-- D[0]
t_prcs_D_0: PROCESS
BEGIN
	D(0) <= '0';
	WAIT FOR 520000 ps;
	D(0) <= '1';
	WAIT FOR 460000 ps;
	D(0) <= '0';
WAIT;
END PROCESS t_prcs_D_0;
-- E[3]
t_prcs_E_3: PROCESS
BEGIN
	E(3) <= '0';
WAIT;
END PROCESS t_prcs_E_3;
-- E[2]
t_prcs_E_2: PROCESS
BEGIN
	E(2) <= '0';
WAIT;
END PROCESS t_prcs_E_2;
-- E[1]
t_prcs_E_1: PROCESS
BEGIN
	E(1) <= '0';
WAIT;
END PROCESS t_prcs_E_1;
-- E[0]
t_prcs_E_0: PROCESS
BEGIN
	E(0) <= '0';
WAIT;
END PROCESS t_prcs_E_0;
-- F[3]
t_prcs_F_3: PROCESS
BEGIN
	F(3) <= '0';
WAIT;
END PROCESS t_prcs_F_3;
-- F[2]
t_prcs_F_2: PROCESS
BEGIN
	F(2) <= '0';
WAIT;
END PROCESS t_prcs_F_2;
-- F[1]
t_prcs_F_1: PROCESS
BEGIN
	F(1) <= '0';
WAIT;
END PROCESS t_prcs_F_1;
-- F[0]
t_prcs_F_0: PROCESS
BEGIN
	F(0) <= '0';
WAIT;
END PROCESS t_prcs_F_0;
-- G[3]
t_prcs_G_3: PROCESS
BEGIN
	G(3) <= '0';
WAIT;
END PROCESS t_prcs_G_3;
-- G[2]
t_prcs_G_2: PROCESS
BEGIN
	G(2) <= '0';
WAIT;
END PROCESS t_prcs_G_2;
-- G[1]
t_prcs_G_1: PROCESS
BEGIN
	G(1) <= '0';
WAIT;
END PROCESS t_prcs_G_1;
-- G[0]
t_prcs_G_0: PROCESS
BEGIN
	G(0) <= '0';
WAIT;
END PROCESS t_prcs_G_0;
-- H[3]
t_prcs_H_3: PROCESS
BEGIN
	H(3) <= '0';
WAIT;
END PROCESS t_prcs_H_3;
-- H[2]
t_prcs_H_2: PROCESS
BEGIN
	H(2) <= '0';
WAIT;
END PROCESS t_prcs_H_2;
-- H[1]
t_prcs_H_1: PROCESS
BEGIN
	H(1) <= '0';
WAIT;
END PROCESS t_prcs_H_1;
-- H[0]
t_prcs_H_0: PROCESS
BEGIN
	H(0) <= '0';
WAIT;
END PROCESS t_prcs_H_0;
END comparador_arch;
