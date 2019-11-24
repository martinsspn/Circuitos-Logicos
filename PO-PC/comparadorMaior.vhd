LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
ENTITY comparadorMaior IS
GENERIC(W : NATURAL := 8);
PORT (a, b : IN STD_LOGIC_VECTOR(W-1 DOWNTO 0);-- data inputs
		gt : OUT BIT); -- a > b
END comparadorMaior;

ARCHITECTURE behavior OF comparadorMaior IS
BEGIN
	gt <= '1' WHEN (a > b) ELSE '0';
END behavior;