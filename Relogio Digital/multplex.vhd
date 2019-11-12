ENTITY multplex IS
PORT(A, B : IN BIT_VECTOR(3 DOWNTO 0);
	  sel1 : IN BIT;
	  S : OUT BIT_VECTOR(3 DOWNTO 0));
END multplex;
ARCHITECTURE behavior OF multplex IS
BEGIN
	PROCESS(sel1)
	BEGIN
		IF (sel1 = '0') THEN
			S <= A;
		ELSE
			S <= B;
		END IF;
	END PROCESS;
END behavior;