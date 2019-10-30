ENTITY controladorEnable IS
PORT(TC1 : IN BIT_VECTOR(1 DOWNTO 0);
	  SEL1 : IN BIT;
	  rc1 : IN BIT;
	  E, E1, E2, E3, E4 : IN BIT_VECTOR(3 DOWNTO 0);
	  C : OUT BIT_VECTOR(7 DOWNTO 0));
END controladorEnable;
ARCHITECTURE behavior OF controladorEnable IS
BEGIN
	PROCESS(RC1 ,TC1, SEL1)
	BEGIN
		CASE RC1 IS
			WHEN '1' => IF (TC1 = "00") THEN
								IF (SEL1 = '0') THEN
									C <= (OTHERS => '0');
									C(7) <= '1'; ---- COUNTER M0
								ELSE
									C <= (OTHERS => '0');
									C(6) <= '1'; ---- REG M0
								END IF;
							END IF;
							IF (TC1 = "01") THEN
								IF (SEL1 = '0') THEN
									C <= (OTHERS => '0');
									C(5) <= '1'; ---- COUNTER M1
								ELSE
									C <= (OTHERS => '0');
									C(4) <= '1'; ---- REG M1
								END IF;
							END IF;
							IF (TC1 = "10") THEN
								IF (SEL1 = '0') THEN
									C <= (OTHERS => '0');
									C(3) <= '1'; ----- COUNTER H0
								ELSE
									C <= (OTHERS => '0');
									C(2) <= '1'; ----- REG H0
								END IF;
							END IF;
							
							IF (TC1 = "11") THEN
								IF (SEL1 = '0') THEN
									C <= (OTHERS => '0');
									C(1) <= '1'; ----- COUNTER H1
								ELSE
									C <= (OTHERS => '0');
									C(0) <= '1'; ----- REG H1
								END IF;
							END IF;
			WHEN '0' => C(7) <= '1';
							IF(E1 =  "1001") THEN
								C(5) <= '1';
							ELSE
								C(5) <= '0';
							END IF;
							
							IF(E2 = "0101" AND E1 = "1001") THEN
								C(3) <= '1';
							ELSE
								C(3) <= '0';
							END IF;
							
							IF(E3 = "1001" AND E4 /= "0010" AND E2 = "0101" AND E1 = "1001") THEN
								C(1) <= '1';
							ELSIF(E3 = "0011" AND E4 = "0010" AND E2 = "0101" AND E1 = "1001") THEN
								C(1) <= '1';
							ELSE
								C(1) <= '0';
							END IF;
		END CASE;			
	END PROCESS;
END behavior;