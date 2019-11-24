LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
ENTITY po IS
PORT(e1: IN BIT_VECTOR(7 DOWNTO 0);
	  enabler1 : IN BIT;
	  enableQTD : IN BIT;
	  tx : IN BIT;
	  media : IN BIT_VECTOR(7 downto 0);
	  clk : IN BIT;
	  maior : OUT BIT_VECTOR(7 DOWNTO 0);
	  menor : out BIT_VECTOR(7 DOWNTO 0);
	  quantidade : OUT BIT_VECTOR(7 DOWNTO 0));
END po;

ARCHITECTURE arch OF po IS

COMPONENT reg_pp_Wbits IS
PORT (d : IN BIT_VECTOR(7 DOWNTO 0);-- data input
		clk : IN BIT; -- clock
		ena : IN BIT; -- enable
		q : OUT BIT_VECTOR(7 DOWNTO 0));-- data output
END COMPONENT;

COMPONENT somador IS
GENERIC(W : NATURAL := 8);
PORT (a : IN STD_LOGIC_VECTOR(W-1 DOWNTO 0); -- data inputs
		c : IN BIT;
		s : OUT STD_LOGIC_VECTOR(W-1 DOWNTO 0)); -- data output
END COMPONENT;


COMPONENT comparadorMaior IS
GENERIC(W : NATURAL := 8);
PORT (a, b : IN STD_LOGIC_VECTOR(W-1 DOWNTO 0);-- data inputs
		gt : OUT BIT); -- a > b
END COMPONENT;

COMPONENT comparadorMenor IS
GENERIC(W : NATURAL := 8);
PORT (a, b : IN STD_LOGIC_VECTOR(W-1 DOWNTO 0); -- data inputs
		tx : in bit;
		lt : OUT BIT); -- a < b
END COMPONENT;


SIGNAL ar, br, smaior, smenor, qtd : BIT_VECTOR(7 DOWNTO 0);
SIGNAL compMaior, compMenor, com : BIT; 

BEGIN
	
	r1 : reg_pp_Wbits PORT MAP(e1, clk, enabler1, ar);
	rgMaior : reg_pp_Wbits PORT MAP(ar, clk, compMaior, smaior); 
	rgMenor : reg_pp_Wbits PORT MAP(ar, clk, compMenor, smenor);
	cmpMaior : comparadorMaior PORT MAP(to_stdlogicvector(ar), to_stdlogicvector(smaior), compMaior);
	cmpMenor : comparadorMenor PORT MAP(to_stdlogicvector(ar), to_stdlogicvector(smenor), tx, compMenor);	
	maior <= smaior;
	menor <= smenor;
	comp : comparadorMaior PORT MAP(to_stdlogicvector(ar), to_stdlogicvector(media), com);
	smd : somador PORT MAP(to_stdlogicvector(qtd), com, to_bitvector(s) => br);
	rg : reg_pp_Wbits PORT MAP(br, clk, enableQTD, qtd);
	quantidade <= qtd;

END arch;