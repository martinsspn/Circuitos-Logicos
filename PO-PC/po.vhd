LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
ENTITY po IS
PORT(e1: IN BIT_VECTOR(7 DOWNTO 0);
	  enabler1 : IN BIT;
	  enableSoma : IN BIT;
	  enableQTD : IN BIT;
	  enableDivisao : IN BIT;
	  tx : IN BIT;
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
PORT (a, b : IN STD_LOGIC_VECTOR(W-1 DOWNTO 0); -- data inputs
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

COMPONENT divisor IS
PORT(a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	  s : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END COMPONENT;

COMPONENT multplex IS
PORT(A, B : IN BIT_VECTOR(7 DOWNTO 0);
	  sel1 : IN BIT;
	  S : OUT BIT_VECTOR(7 DOWNTO 0));
END COMPONENT;

COMPONENT enableQuantidade is
port(a, b : in bit;
	  s : out bit);
end COMPONENT;

SIGNAL ar, br, cr, dr, er, fr, soma, divisao, smaior, smenor, sDivisao, sMult, qtd : BIT_VECTOR(7 DOWNTO 0);
SIGNAL compMaior, compMenor, eM, enQTD : BIT; 

BEGIN
	
	r1 : reg_pp_Wbits PORT MAP(e1, clk, enabler1, ar);
	rgMaior : reg_pp_Wbits PORT MAP(ar, clk, compMaior, smaior); 
	rgMenor : reg_pp_Wbits PORT MAP(ar, clk, compMenor, smenor);
	cmpMaior : comparadorMaior PORT MAP(to_stdlogicvector(ar), to_stdlogicvector(smaior), compMaior);
	cmpMenor : comparadorMenor PORT MAP(to_stdlogicvector(ar), to_stdlogicvector(smenor), tx, compMenor);	
	maior <= smaior;
	menor <= smenor;
	
	
	
	
	
	
	
	
	
	rgSoma : reg_pp_Wbits PORT MAP(br, clk, enableSoma, soma);

	
	smd : somador PORT MAP(to_stdlogicvector(ar), to_stdlogicvector(soma), to_bitvector(s) => br);
	
	rgDivisor : reg_pp_Wbits PORT MAP(divisao, clk, enableDivisao, sDivisao);
	
	div : divisor PORT MAP(to_stdlogicvector(soma), to_bitvector(s) => divisao);
	
	cmpM2 : comparadorMaior PORT MAP(to_stdlogicvector(ar), to_stdlogicvector(sDivisao), eM);
	
	en : enableQuantidade PORT MAP(eM, enableQTD, enQTD);
	
	rg : reg_pp_Wbits PORT MAP(br, clk, eM, qtd);
	
	quantidade <= qtd;

END arch;