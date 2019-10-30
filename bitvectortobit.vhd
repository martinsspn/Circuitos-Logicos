ENTITY bitvectortobit IS
PORT(E : IN BIT_VECTOR(7 DOWNTO 0);
	  E1, E2, E3, E4, E5, E6, E7, E8 : OUT BIT);
END bitvectortobit;

ARCHITECTURE structural OF bitvectortobit IS
BEGIN
	E1 <= E(0);
	E2 <= E(1);
	E3 <= E(2);
	E4 <= E(3);
	E5 <= E(4);
	E6 <= E(5);
	E7 <= E(6);
	E8 <= E(7);
END structural;