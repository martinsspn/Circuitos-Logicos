ENTITY pc IS
PORT(state_reg : IN BIT_VECTOR(5 DOWNTO 0);
	  lerMem : OUT BIT_VECTOR(9 DOWNTO 0);
	  enabler1 : OUT BIT;
	  enableSoma : OUT BIT;
	  tx : OUT BIT;
	  enableQTD : OUT BIT;
	  enableRMaior : OUT BIT;
	  enableRMenor : OUT BIT;
	  enableRQTD : OUT BIT;
	  enableDivisao : OUT BIT);
END pc;
ARCHITECTURE arch OF pc IS

BEGIN

	PROCESS(state_reg)
	BEGIN
		
		
		CASE (state_reg) IS
			WHEN "000000" => enabler1 <= '1';
								 lerMem(0) <= '1';
								 enableSoma <= '1';
								 tx <= '1';
								 enableQTD <= '0';
								 
			WHEN "000001" => enabler1 <= '0';
								 lerMem(0) <= '0';
								 		
			
			WHEN "000010" => enabler1 <= '1';
								 lerMem(1) <= '1';
								 tx <= '0';
			
			WHEN "000011" => enabler1 <= '0';
								 lerMem(1) <= '0';
								 
								 
			WHEN "000100" => enabler1 <= '1';
								 lerMem(2) <= '1';
								 
			When "000101" => enabler1 <= '0';
								 lerMem(2) <= '0';
								 
								 
			when "000110" => enabler1 <= '1';
								 lerMem(3) <= '1';
								 
			when "000111" => enabler1 <= '0';
								 lerMem(3) <= '0';
								 
		
			when "001000" => enabler1 <= '1';
								 lerMem(4) <= '1';
								 
			when "001001" => enabler1 <= '0';
								 lerMem(4) <= '0';
								 
								 
			when "001010" => enabler1 <= '1';
								 lerMem(5) <= '1';
								 
			when "001011" => enabler1 <= '0';
								 lerMem(5) <= '0';
								 
								 
			when "001100" => enabler1 <= '1';
								 lerMem(6) <= '1';
								 
			when "001101" => enabler1 <= '0';
								 lerMem(6) <= '0';
								 
								 
			when "001110" => enabler1 <= '1';
								 lerMem(7) <= '1';
								 
			when "001111" => enabler1 <= '0';
								 lerMem(7) <= '0';
								 
								 
			when "010000" => enabler1 <= '1';
								 lerMem(8) <= '1';
								 
			when "010001" => enabler1 <= '0';
								 lerMem(8) <= '0';
								 
								 
			when "010010" => enabler1 <= '1';
								 lerMem(9) <= '1';
								 
			when "010011" => enabler1 <= '0';
								 lerMem(9) <= '0';
								 
								 
			when "010100" => enableRMenor <= '1';
								 enableSoma <= '0';
								 enableDivisao <= '1';
								 
								 
			WHEN "010101" => enabler1 <= '1';
								 lerMem(0) <= '1';
								 enableRMenor <= '0';
								 enableQTD <= '1';
			
			WHEN "010110" => enabler1 <= '0';
								 lerMem(0) <= '0';
					
			WHEN "010111" => enabler1 <= '1';
								 lerMem(1) <= '1';
					
			WHEN "011000" => enabler1 <= '0';
								 lerMem(1) <= '0';
								 
			WHEN "011001" => enabler1 <= '1';
								 lerMem(2) <= '1';
								 
			When "011010" => enabler1 <= '0';
								 lerMem(2) <= '0';
								 
								 
			when "011011" => enabler1 <= '1';
								 lerMem(3) <= '1';
								 
			when "011100" => enabler1 <= '0';
								 lerMem(3) <= '0';
								 
								 
			when "011101" => enabler1 <= '1';
								 lerMem(4) <= '1';
								 
								 
			when "011110" => enabler1 <= '0';
								 lerMem(4) <= '0';
								 
								 
			
			when "011111" => enabler1 <= '1';
								 lerMem(5) <= '1';
					
			when "100000" => enabler1 <= '0';
								 lerMem(5) <= '0';
								 
								 
								 
			when "100001" =>enabler1 <= '1';
								 lerMem(6) <= '1';

								 
			when "100010" => enabler1 <= '0';
								 lerMem(6) <= '0';
								 
								 
								 
			when "100011" => enabler1 <= '1';
								 lerMem(7) <= '1';

								 
			when "100100" => enabler1 <= '0';
								 lerMem(7) <= '0';
								 
								 
								 
			when "100101" =>enabler1 <= '1';
								 lerMem(8) <= '1';
								 
								 
			when "100110" => enabler1 <= '0';
								 lerMem(8) <= '0';
								 
								 
								 
			when "100111" =>enabler1 <= '1';
								 lerMem(9) <= '1';
								 
								 
			when "101000" => enabler1 <= '0';
								 lerMem(9) <= '0';
								 
								 
								 
			when "101001" => enableRMenor <= '1';
								 enableRMaior <= '1';
								 enableQTD <= '0';
								 enableRQTD <= '1';
			
			when "101010" => enableRMenor <= '0';
								  enableRMaior <= '0';
								  enableRQTD <= '0';
								  
			When others =>  
								 enabler1 <= '0';
								 lerMem <= "0000000000";
								 
			end case;		
	END PROCESS;
END arch;