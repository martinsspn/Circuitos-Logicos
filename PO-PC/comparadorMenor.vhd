LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
ENTITY comparadorMenor IS
GENERIC(W : NATURAL := 8);
PORT (a, b : IN STD_LOGIC_VECTOR(W-1 DOWNTO 0); -- data inputs
		tx : in bit;
		lt : OUT BIT); -- a < b
END comparadorMenor;

ARCHITECTURE behavior OF comparadorMenor IS
BEGIN
	process(tx)
	begin
		if (tx = '1') then
			lt <= '1';
		else
			if(a < b) then
				lt <= '1';
			else
				lt <= '0';
			end if;
		end if;
	end process;
END behavior;