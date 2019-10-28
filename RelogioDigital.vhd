LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
ENTITY RelogioDigital IS
PORT(teclas : IN BIT_VECTOR(9 DOWNTO 0);
		tc : IN BIT_vector(1 downto 0);
		sel : IN BIT;
		clock : IN BIT;
		RC : IN BIT;
		H1, H0, M1, M0: OUT BIT_veCTOR(6 DOWNTO 0);
		alarme : OUT BIT);
END RelogioDigital;

ARCHITECTURE structural OF RelogioDigital IS

COMPONENT codTeclado IS
PORT(t9, t8, t7, t6, t5, t4, t3, t2, t1, t0 : IN BIT;
	  s1, s2, s3, s4 : OUT BIT);
END COMPONENT;

COMPONENT demux IS
PORT(Ai : IN BIT_VECTOR(3 DOWNTO 0);
	  sel1 : IN BIT_VECTOR(1 DOWNTO 0);
	  S1, S2, S3, S4: OUT BIT_VECTOR(3 DOWNTO 0));
END COMPONENT;

COMPONENT demux_4x8 IS
PORT(E : IN BIT_VECTOR(3 DOWNTO 0);
	  sel1 : IN BIT;
	  S1, S2 : OUT BIT_VECTOR(3 DOWNTO 0));
END COMPONENT;

COMPONENT counter_Wbits IS
PORT (d : IN STD_LOGIC_VECTOR(3 DOWNTO 0);-- data input
clk : IN BIT; -- clock
clrn: IN BIT; -- clear
ena : IN BIT; -- enable
load: IN BIT; -- load
q : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0));-- data output
END COMPONENT;

COMPONENT controladorCounter IS
PORT(M0, M1, H0, H1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	  clk : IN BIT;
	  E : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0));
END COMPONENT;

COMPONENT controladorEnable IS
PORT(TC1 : IN BIT_VECTOR(1 DOWNTO 0);
	  SEL1 : IN BIT;
	  rc1 : IN BIT;
	  E : IN BIT_VECTOR(3 DOWNTO 0);
	  C : OUT BIT_VECTOR(7 DOWNTO 0));
END COMPONENT;

COMPONENT reg_pp_Wbits IS
PORT (d : IN BIT_VECTOR(3 DOWNTO 0);-- data input
clk : IN BIT; -- clock
ena : IN BIT; -- enable
q : OUT BIT_VECTOR(3 DOWNTO 0));-- data outputEND COMPONENT;
END COMPONENT;

COMPONENT multplex IS
PORT(A, B : IN BIT_VECTOR(3 DOWNTO 0);
	  sel1 : IN BIT;
	  S : OUT BIT_VECTOR(3 DOWNTO 0));
END COMPONENT;

COMPONENT decod IS
PORT(Ai : IN BIT_VECTOR(3 DOWNTO 0);
	  a, b, c, d, e, f, g: OUT BIT);
END COMPONENT;

COMPONENT comparador IS
PORT(A, B, C, D, E, F, G, H : IN BIT_VECTOR(3 DOWNTO 0);
     S : OUT BIT);
END COMPONENT;

SIGNAL sA, sB, sC, sD, sE, sF, sG, sH, sI, sJ, sK, sL, sM, sN, sO, sP, sQ, sR, sS, sT, sU, sV, sX, sY, sW, sZ : BIT_VECTOR(3 DOWNTO 0);
SIGNAL ENABLE : BIT_VECTOR(7 DOWNTO 0);

BEGIN
	ct : codTeclado PORT MAP(teclas(9), teclas(8), teclas(7), teclas(6), teclas(5), teclas(4), teclas(3), teclas(2), teclas(1), teclas(0), sA(3), sA(2), sA(1), sA(0));
	dm : demux PORT MAP(sA, tc, sB, sC, sD, sE);
	
	ce : controladorEnable PORT MAP(tc, sel, RC, sR, ENABLE);
	
	dm2_1 : demux_4x8 PORT MAP(sB, sel, sF, sG);  
	dm2_2 : demux_4x8 PORT MAP(sC, sel, sH, sI);
	dm2_3 : demux_4x8 PORT MAP(sD, sel, sJ, sK);
	dm2_4 : demux_4x8 PORT MAP(sE, sel, sL, sM);
	
	
	c1 : counter_Wbits PORT MAP(to_stdlogicvector(sF), clock, sR(3), ENABLE(7), RC, TO_BITVECTOR(q) => sN);
	c2 : counter_Wbits PORT MAP(to_stdlogicvector(sH), clock, sR(2), ENABLE(5), RC, TO_BITVECTOR(q) => sO);
	c3 : counter_Wbits PORT MAP(to_stdlogicvector(sJ), clock, sR(1), ENABLE(3), RC, TO_BITVECTOR(q) => sP);
	c4 : counter_Wbits PORT MAP(to_stdlogicvector(sL), clock, sR(0), ENABLE(1), RC, TO_BITVECTOR(q) => sQ);
	
	ctrl : controladorCounter PORT MAP(to_stdlogicvector(sN), to_stdlogicvector(sO), to_stdlogicvector(sP), to_stdlogicvector(sQ), clock, TO_BITVECTOR(e) => sR);
	
	r1 : reg_pp_Wbits PORT MAP(sG, clock, ENABLE(6), sS);
	r2 : reg_pp_Wbits PORT MAP(sI, clock, ENABLE(4), sT);
	r3 : reg_pp_Wbits PORT MAP(sK, clock, ENABLE(2), sU);
	r4 : reg_pp_Wbits PORT MAP(sM, clock, ENABLE(0), sV);
		
	mt1 : multplex PORT MAP(sN, sS, sel, sX);
	mt2 : multplex PORT MAP(sO, sT, sel, sY);
	mt3 : multplex PORT MAP(sP, sU, sel, sW);
	mt4 : multplex PORT MAP(sQ, sV, sel, sZ);
	
	comp : comparador PORT MAP(sN, sO, sP, sQ, sS, sT, sU, sV, alarme);
	
	dc1 : decod PORT MAP(sZ, H1(0), H1(1), H1(2), H1(3), H1(4), H1(5), H1(6));
	dc2 : decod PORT MAP(sW, H0(0), H0(1), H0(2), H0(3), H0(4), H0(5), H0(6));
	dc3 : decod PORT MAP(sY, M1(0), M1(1), M1(2), M1(3), M1(4), M1(5), M1(6));
	dc4 : decod PORT MAP(sX, M0(0), M0(1), M0(2), M0(3), M0(4), M0(5), M0(6));

END structural;

