LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
ENTITY fte IS
PORT (clk : IN BIT; -- clock
		clrn: IN BIT; -- clear	
		state_reg : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0)); -- output
END fte;

ARCHITECTURE arch_1 OF fte IS

BEGIN
	PROCESS(clk, clrn, state_reg)
	BEGIN
		IF (clrn = '0') THEN
			state_reg <= to_stdlogicvector("000000");
		ELSIF(clk'EVENT AND clk = '1') THEN
			state_reg <= state_reg + 1;
			IF(state_reg >= to_stdlogicvector("101010")) THEN
				state_reg <= to_stdlogicvector("000000");
			END IF;
		END IF;
	END PROCESS;
END arch_1;