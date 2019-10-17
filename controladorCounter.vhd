ENTITY controladorCounter IS
PORT(A, B, C, D : IN BIT_VECTOR(3 DOWNTO 0);
	  E : OUT BIT_VECTOR(3 DOWNTO 0));
END controladorCounter;
ARCHITECTURE behavior OF controladorCounter IS
BEGIN
	PROCESS(A, B, C, D, E)
	BEGIN
		IF(A'EVENT AND A = "1001") THEN
			E(3) <= '1';
		ELSE
			E(3) <= '0';
		END IF;
		
		IF(E(3) = '1' AND B'EVENT AND B = "0101") THEN
			E(2) <= '1';
		ELSE
			E(2) <= '0';
		END IF;
		
		IF(E(2) = '1' AND D = "0010") THEN
			E(1) <= '1';
		ELSE IF(E(2) = '1' AND C'EVENT AND C = "1001") THEN
			E(1) <= '1';
		ELSE 
			E(1) <= '0';
		END IF;
		
		IF(E(1) = '1' AND D = "1001") THEN
			E(0) <= '1';
		ELSE
			E(0) <= '0';		
		END IF;
	END PROCESS;
END behavior;