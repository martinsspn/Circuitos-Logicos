entity enableQuantidade is
port(a, b : in bit;
	  s : out bit);
end enableQuantidade;

architecture arch of enableQuantidade is
begin
	s <= a and b;
end arch;