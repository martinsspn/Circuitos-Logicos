LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
ENTITY somador IS
GENERIC(W : NATURAL := 8);
PORT (a, b : IN STD_LOGIC_VECTOR(W-1 DOWNTO 0); -- data inputs
		s : OUT STD_LOGIC_VECTOR(W-1 DOWNTO 0)); -- data output
END somador;

ARCHITECTURE behavior OF somador IS

signal x, y, z : std_logic_vector(8 downto 0);
BEGIN
	process(x)
	begin
		y(8) <= '0';
		y(7 downto 0) <= a;
		z(8) <= '0';
		z(7 downto 0) <= b;
		x <= y + z;
		if (x > "011111111") then
			s <= "11111111";
		else
			s <= x(7 downto 0);
		end if;
	end process;
END behavior;