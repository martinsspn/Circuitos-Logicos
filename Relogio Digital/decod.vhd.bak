ENTITY decod IS
PORT(Ai : IN BIT_VECTOR(3 DOWNTO 0);
	  a, b, c, d, e, f, g: OUT BIT);
END decod;
ARCHITECTURE structural OF decod IS
BEGIN	
	--A(3) -> A, A(2) -> B, A(1) -> C, A(0) -> D
	a <= (Ai(1) OR Ai(3) OR (NOT Ai(2) AND NOT Ai(0)) OR (Ai(2) AND  Ai(0)));
	b <= (NOT Ai(2) OR (NOT Ai(1) AND NOT Ai(0)) OR (Ai(1) AND Ai(0)));
	c <= (Ai(0) OR Ai(2) OR NOT Ai(1));
	d <= ((NOT Ai(2) AND NOT Ai(0)) OR (NOT Ai(2) AND Ai(1)) OR (Ai(1) AND NOT Ai(0)) OR (Ai(2) AND NOT Ai(1) AND Ai(0)));
	e <= ((NOT Ai(2) AND NOT Ai(0)) OR (Ai(1) AND NOT Ai(0)));
	f <= (Ai(3) OR (NOT Ai(1) AND NOT Ai(0)) OR (Ai(2) AND NOT Ai(1)) OR (Ai(2) AND NOT Ai(0)));
	g <= (Ai(3) OR (NOT Ai(2) AND Ai(1)) OR (Ai(1) AND NOT Ai(0)) OR (Ai(2) AND NOT Ai(1)));
end structural;