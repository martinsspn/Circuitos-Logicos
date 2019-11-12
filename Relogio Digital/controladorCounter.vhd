LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
ENTITY controladorCounter IS
PORT(M0, M1, H0, H1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	  clk : IN BIT;
	  E : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0));
END controladorCounter;
ARCHITECTURE behavior OF controladorCounter IS
BEGIN
	PROCESS(M0, M1, H0, H1, E)
	BEGIN
		IF(clk = '0') THEN
			IF(M0 = "1010") THEN
				E(3) <= '0';
			ELSE
				E(3) <= '1';
			END IF;
			
			IF(M1 = "0110") THEN
				E(2) <= '0';
			ELSE
				E(2) <= '1';
			END IF;
			
			IF(H1 = "0011") THEN
				E(1) <= '0';
			ELSE 
				IF(H0 = "1010") THEN
					E(1) <= '0';
				ELSIF(H1 = "0010" AND H0 = "0100") THEN
					E(1) <= '0';
				ELSE 
					E(1) <= '1';
				END IF;
			END IF;
			
			IF(H1 = "0011") THEN
				E(0) <= '0';
			ELSE
				E(0) <= '1';		
			END IF;
		END IF;
	END PROCESS;
END behavior;