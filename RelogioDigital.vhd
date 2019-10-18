LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY RelogioDigital IS
PORT(teclas : IN BIT_VECTOR(9 DOWNTO 0); -- teclas 9 a 0
	  tc : IN BIT_VECTOR(1 DOWNTO 0); -- tecla de controle
	  sel : IN BIT;
	  clock : IN BIT;
	  load : IN BIT;
	  enable: IN BIT;
	  H1, H0, M1, M0 : OUT BIT_VECTOR(6 DOWNTO 0)); -- saidas do circuito
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
	  sel : IN BIT;
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
PORT(A, B, C, D : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	  e : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0));
END COMPONENT;

COMPONENT decod IS
PORT(Ai : IN BIT_VECTOR(3 DOWNTO 0);
	  a, b, c, d, e, f, g: OUT BIT);
END COMPONENT;

SIGNAL A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R : BIT_VECTOR(3 DOWNTO 0);

BEGIN
	ct : codTeclado PORT MAP(teclas(9), teclas(8), teclas(7), teclas(6), teclas(5), teclas(4), teclas(3), teclas(2), teclas(1), teclas(0), A(3), A(2), A(1), A(0));
	dm : demux PORT MAP(A, tc, B, C, D, E);
	dm2_1 : demux_4x8 PORT MAP(B, sel, F, G);  
	dm2_2 : demux_4x8 PORT MAP(C, sel, H, I);
	dm2_3 : demux_4x8 PORT MAP(D, sel, J, K);
	dm2_4 : demux_4x8 PORT MAP(E, sel, L, M);
	
	c1: counter_Wbits PORT MAP(to_stdlogicvector(F), clock, R(3), enable, load, TO_BITVECTOR(q) => N);
	c2: counter_Wbits PORT MAP(to_stdlogicvector(H), clock, R(2), enable, load, TO_BITVECTOR(q) => O);
	c3: counter_Wbits PORT MAP(to_stdlogicvector(J), clock, R(1), enable, load, TO_BITVECTOR(q) => P);
	c4: counter_Wbits PORT MAP(to_stdlogicvector(L), clock, R(0), enable, load, TO_BITVECTOR(q) => Q);
	
	ctrl: controladorCounter PORT MAP(to_stdlogicvector(N), to_stdlogicvector(O), to_stdlogicvector(P), to_stdlogicvector(Q), TO_BITVECTOR(e) => R);
	
	
	dc1 : decod PORT MAP(N, H1(0), H1(1), H1(2), H1(3), H1(4), H1(5), H1(6));
	dc2 : decod PORT MAP(O, H0(0), H0(1), H0(2), H0(3), H0(4), H0(5), H0(6));
	dc3 : decod PORT MAP(P, M1(0), M1(1), M1(2), M1(3), M1(4), M1(5), M1(6));
	dc4 : decod PORT MAP(Q, M0(0), M0(1), M0(2), M0(3), M0(4), M0(5), M0(6));

END structural;

