ENTITY demux_4x8 IS
PORT(E : IN BIT_VECTOR(3 DOWNTO 0);
	  sel1 : IN BIT;
	  S1, S2 : OUT BIT_VECTOR(3 DOWNTO 0));
END demux_4x8;
ARCHITECTURE behavior OF demux_4x8 IS
BEGIN
	PROCESS(sel1)
	BEGIN
		IF (sel1 = '0') THEN
			S1 <= E;
			S2 <= (OTHERS => '0');
		ELSE
			S1 <= (OTHERS => '0');
			S2 <= E;
		END IF;
	END PROCESS;
END behavior;
