ENTITY reg_pp_Wbits IS
PORT (d : IN BIT_VECTOR(3 DOWNTO 0);-- data input
clk : IN BIT; -- clock
ena : IN BIT; -- enable
q : OUT BIT_VECTOR(3 DOWNTO 0));-- data output
END reg_pp_Wbits;
ARCHITECTURE arch_1 OF reg_pp_Wbits IS
BEGIN
	PROCESS(clk)
	BEGIN
		IF (clk'EVENT AND clk='1') THEN
			IF (ena='1') THEN
				q <= d;
			END IF;
		END IF;
	END PROCESS;
END arch_1;