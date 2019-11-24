LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
USE IEEE.NUMERIC_STD.ALL;
entity media is
port(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9 : IN BIT_VECTOR(7 DOWNTO 0);
	  s1 : out bit_vector(7 downto 0));
end media;

architecture arch of media is

signal x, y, z: std_logic_vector(15 downto 0);

type memory is array(0 to 9) of bit_vector(15 downto 0);

signal mem : memory;

begin
	mem(0)(7 downto 0) <= e0;
	mem(1)(7 downto 0) <= e1;
	mem(2)(7 downto 0) <= e2;
	mem(3)(7 downto 0) <= e3;
	mem(4)(7 downto 0) <= e4;
	mem(5)(7 downto 0) <= e5;
	mem(6)(7 downto 0) <= e6;
	mem(7)(7 downto 0) <= e7;
	mem(8)(7 downto 0) <= e8;
	mem(9)(7 downto 0) <= e9;
	x <= to_stdlogicvector(mem(0)) + to_stdlogicvector(mem(1)) + to_stdlogicvector(mem(2)) + to_stdlogicvector(mem(3)) + to_stdlogicvector(mem(4)) +
	     to_stdlogicvector(mem(5)) + to_stdlogicvector(mem(6)) + to_stdlogicvector(mem(7)) + to_stdlogicvector(mem(8)) + to_stdlogicvector(mem(9));
	y(3 downto 0) <= "1010";
	z <= std_logic_vector(to_signed(to_integer(signed(x) / signed(y)), 16));
	s1 <= to_bitvector(z(7 downto 0));
end arch;