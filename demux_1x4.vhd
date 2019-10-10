ENTITY demux_1x4 IS
PORT(a : IN BIT;
	  sel : IN BIT_VECTOR (1 DOWNTO 0);
	  s1, s2, s3, s4 : OUT BIT);
END demux_1x4;
ARCHITECTURE structural OF demux_1x4 IS
BEGIN
	s1 <= a AND (NOT sel(1) AND NOT sel(0));
	s2 <= a AND (NOT sel(1) AND sel(0));
	s3 <= a and (sel(1) AND NOT sel(0));
	s4 <= a AND (sel(1) AND sel(0));
END structural;