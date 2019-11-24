LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
ENTITY topLevel IS
PORT(clock : IN BIT;
	  clearn : IN BIT;
	  maior, menor : OUT BIT_VECTOR(7 DOWNTO 0);
	  qtdMaior : OUT BIT_VECTOR(7 DOWNTO 0));
END topLevel;

ARCHITECTURE arch OF topLevel IS

type memory is array(0 to 9) of bit_vector(7 downto 0);

signal mem : memory;

COMPONENT pc IS
PORT(state_reg : IN BIT_VECTOR(5 DOWNTO 0);
	  lerMem : OUT BIT_VECTOR(9 DOWNTO 0);
	  enabler1 : OUT BIT;
	  tx : OUT BIT;
	  enableQTD : OUT BIT;
	  enableRMaior : OUT BIT;
	  enableRMenor : OUT BIT;
	  enableRQTD : OUT BIT);
END COMPONENT;

COMPONENT po IS
PORT(e1: IN BIT_VECTOR(7 DOWNTO 0);
	  enabler1 : IN BIT;
	  enableQTD : IN BIT;
	  media : IN BIT_VECTOR(7 downto 0);
	  tx : IN BIT;
	  clk : IN BIT;
	  maior : OUT BIT_VECTOR(7 DOWNTO 0);
	  menor : out BIT_VECTOR(7 DOWNTO 0);
	  quantidade : OUT BIT_VECTOR(7 DOWNTO 0));
END COMPONENT;

COMPONENT fte IS
PORT (clk : IN BIT; -- clock
		clrn: IN BIT; -- clear	
		state_reg : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0)); -- output
END COMPONENT;

COMPONENT leitorMemoria IS
PORT(e0 ,e1, e2, e3, e4, e5, e6, e7, e8, e9 : IN BIT_VECTOR(7 DOWNTO 0);
	  seletor : IN BIT_VECTOR(9 DOWNTO 0);
	  saida : OUT BIT_VECTOR(7 DOWNTO 0));
END COMPONENT;

COMPONENT reg_pp_Wbits IS
PORT (d : IN BIT_VECTOR(7 DOWNTO 0);-- data input
		clk : IN BIT; -- clock
		ena : IN BIT; -- enable
		q : OUT BIT_VECTOR(7 DOWNTO 0));-- data output
END COMPONENT;

component media is
port(e0, e1, e2, e3, e4, e5, e6, e7, e8, e9 : IN BIT_VECTOR(7 DOWNTO 0);
	  s1 : out bit_vector(7 downto 0));
end component;


SIGNAL a : BIT_VECTOR(5 DOWNTO 0);
SIGNAL leitor : BIT_VECTOR(9 DOWNTO 0);
SIGNAL enR1, enQTD, enRQTD, enMENOR, enMAIOR : BIT;
SIGNAL ML, MA, m1, m2, m3 : BIT_VECTOR(7 DOWNTO 0);
SIGNAL t : BIT;



BEGIN
	
	mem(0) <= "00000101";
	mem(1) <= "01001010";
	mem(2) <= "00000011";
	mem(3) <= "00001010";
	mem(4) <= "11111111";
	mem(5) <= "00010000";
	mem(6) <= "10101010";
	mem(7) <= "00000001";
	mem(8) <= "00000101";
	mem(9) <= "00000111";

	
	md : media port map(mem(0), mem(1), mem(2), mem(3), mem(4), mem(5), mem(6), mem(7), mem(8), mem(9), MA); 
	ft : fte PORT MAP(clock, clearn, to_bitvector(state_reg) => a);
	pc1 : pc PORT MAP(a, leitor, enR1, t, enQTD, enMAIOR, enMENOR, enRQTD);
	LM : leitorMemoria PORT MAP(mem(0), mem(1), mem(2), mem(3), mem(4), mem(5), mem(6), mem(7), mem(8), mem(9), leitor, ML);
	po1 : po PORT MAP(ML, enR1, enQTD, MA, t, clock, m1, m2, m3);
	rMaior : reg_pp_Wbits PORT MAP(m1, clock, enMaior, maior);
	rMenor : reg_pp_Wbits PORT MAP(m2, clock, enMenor, menor);
	rgM : reg_pp_Wbits PORT MAP(m3, clock, enRQTD, qtdMaior);
	
END arch;
