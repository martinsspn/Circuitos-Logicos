ENTITY controladorEnable IS
PORT(TC : IN BIT_VECTOR(1 DOWNTO 0);
	  SEL : IN BIT;
	  rc : IN BIT;
	  C : OUT BIT_VECTOR(7 DOWNTO 0));
END controladorEnable;
ARCHITECTURE behavior OF controladorEnable IS
BEGIN
	PROCESS(TC, SEL)
	BEGIN
		CASE rc IS
			WHEN '1' => IF (TC = "00") THEN
					IF (SEL = '0') THEN
						C(7) <= '1';
						C(6 DOWNTO 0) <= '0';
					ELSE
						C(7) <= '0';
						C(6) <= '1';
						C(5 DOWNTO 0) <= '0';
						END IF;
					END IF;
					
					IF (TC = "01") THEN
						IF (SEL = '0') THEN
							C(7 DOWNTO 6) <= 0;
							C(5) <= '1';
							C(4 DOWNTO 0) <= '0';
						ELSE
							C(7 DOWNTO 5) <= '0';
							C(4) <= '1';
							C(3 DOWNTO 0) <= '0';
						END IF;
					END IF;
					IF (TC = "10") THEN
						IF (SEL = '0') THEN
							C(7 DOWNTO 4) <= '0';
							C(3) <= '1';
							C(2 DOWNTO 0) <= '0';
						ELSE
							C(7 DOWNTO 3) <= '0';
							C(2) <= '1';
							C(1 DOWNTO 0) <= '0';
						END IF;
					END IF;
					
					IF (TC = "11") THEN
						IF (SEL = '0') THEN
							C(7 DOWNTO 2) <= 0;
							C(1) <= '1';
							C(0) <= '0';
						ELSE
							C(7 DOWNTO 1) <= '0';
							C(0) <= '1';
						END IF;
					END IF;
			WHEN '0' => C <= (OTHERS => '0');
		END CASE;
					
	END PROCESS;
END bEhavior;