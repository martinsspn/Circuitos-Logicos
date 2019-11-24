library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
entity divisor is
port(a   : in STD_LOGIC_VECTOR(7 downto 0);
     s   : out STD_LOGIC_VECTOR(7 downto 0));
end divisor;

architecture arch of divisor is

signal c, b, d : std_logic_vector(8 downto 0);

begin
	c(8) <= '0';
	c(7 downto 0) <= a;
	b <= to_stdlogicvector("000001010");
	d <= std_logic_vector(to_signed(to_integer(signed(c) / signed(b)), 9));
	s <= d(7 downto 0);
end arch;