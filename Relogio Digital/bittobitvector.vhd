ENTITY bittobitvector IS
PORT(A, B, C, D : IN BIT;
	  S : OUT BIT_VECTOR(3 DOWNTO 0));
END bittobitvector;

ARCHITECTURE structural OF bittobitvector IS
BEGIN
	S(0) <= A;
	S(1) <= B;
	S(2) <= C;
	S(3) <= D;
END structural;
