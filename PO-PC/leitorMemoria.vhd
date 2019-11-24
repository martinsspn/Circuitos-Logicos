ENTITY leitorMemoria IS
PORT(e0 ,e1, e2, e3, e4, e5, e6, e7, e8, e9 : IN BIT_VECTOR(7 DOWNTO 0);
	  seletor : IN BIT_VECTOR(9 DOWNTO 0);
	  saida : OUT BIT_VECTOR(7 DOWNTO 0));
END leitorMemoria;

ARCHITECTURE arch OF leitorMemoria IS
BEGIN
	PROCESS(seletor)
	BEGIN
		CASE (seletor) IS
			WHEN "0000000001" => saida <= e0;
			WHEN "0000000010" => saida <= e1;
			WHEN "0000000100" => saida <= e2;
			WHEN "0000001000" => saida <= e3;
			WHEN "0000010000" => saida <= e4;
			WHEN "0000100000" => saida <= e5;
			WHEN "0001000000" => saida <= e6;
			WHEN "0010000000" => saida <= e7;
			WHEN "0100000000" => saida <= e8;
			WHEN "1000000000" => saida <= e9;
			WHEN OTHERS => saida <= "00000000";
		END CASE;
	END PROCESS;
END arch;