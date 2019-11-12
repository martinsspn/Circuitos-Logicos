ENTITY demux IS
PORT(Ai : IN BIT_VECTOR(3 DOWNTO 0);
	  sel1 : IN BIT_VECTOR(1 DOWNTO 0);
	  S1, S2, S3, S4: OUT BIT_VECTOR(3 DOWNTO 0));  
END demux;
ARCHITECTURE structural OF demux IS
COMPONENT demux_1x4 IS
PORT(a : IN BIT;
	  sel : IN BIT_VECTOR (1 DOWNTO 0);
	  s1, s2, s3, s4 : OUT BIT);
END COMPONENT;

SIGNAL X : BIT_VECTOR(3 DOWNTO 0);

BEGIN
	X <= Ai;
	
	d1 : demux_1x4 PORT MAP(X(3), sel1, S1(3), S2(3), S3(3), S4(3));
	d2 : demux_1x4 PORT MAP(X(2), sel1, S1(2), S2(2), S3(2), S4(2));
	d3 : demux_1x4 PORT MAP(X(1), sel1, S1(1), S2(1), S3(1), S4(1));
	d4 : demux_1x4 PORT MAP(X(0), sel1, S1(0), S2(0), S3(0), S4(0));
END structural;
