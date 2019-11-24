LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
ENTITY somador IS
GENERIC(W : NATURAL := 8);
PORT (a : IN STD_LOGIC_VECTOR(W-1 DOWNTO 0); -- data inputs
		c : IN BIT;
		s : OUT STD_LOGIC_VECTOR(W-1 DOWNTO 0)); -- data output
END somador;

ARCHITECTURE behavior OF somador IS

BEGIN
	s <= a + 1 WHEN (c = '1') ELSE a;

END behavior;