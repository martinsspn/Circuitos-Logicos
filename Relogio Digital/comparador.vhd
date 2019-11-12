ENTITY comparador IS
PORT(A, B, C, D, E, F, G, H : IN BIT_VECTOR(3 DOWNTO 0);
     S : OUT BIT);
END comparador;
ARCHITECTURE behavior OF comparador IS
BEGIN
	PROCESS(A, B, C, D, E, F, G, H)
	BEGIN
		IF(A = E AND B = F AND C = G AND D = H) THEN
			S <= '1';
		ELSE
			S <= '0';
		END IF;
	END PROCESS;
END behavior;