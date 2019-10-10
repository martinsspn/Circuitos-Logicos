ENTITY codTeclado IS
PORT(t9, t8, t7, t6, t5, t4, t3, t2, t1, t0 : IN BIT;
	  s1, s2, s3, s4 : OUT BIT);
end codTeclado;
ARCHITECTURE structural OF codTeclado IS
BEGIN
	s1 <= (t8 or t9);
	s2 <= (t4 or t5 or t6 or t7);
	s3 <= (t2 or t3 or t6 or t7);
	s4 <= (t1 or t3 or t5 or t7 or t9);
	
END structural;