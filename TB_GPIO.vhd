
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-------------------------------------------------------
entity GPIO_tb is
end GPIO_tb;
-------------------------------------------------------
ARCHITECTURE testbench OF GPIO_tb IS
	SIGNAL	DDRX_tb 			:	std_logic_vector(7 DOWNTO 0);
	SIGNAL	DATA_IN_tb 		: 	std_logic_vector(7 DOWNTO 0);
	SIGNAL	PIN_tb 			: 	std_logic_vector(7 DOWNTO 0); --
-------------------------------------------------------
BEGIN
	DUT: ENTITY work.GPIO
	PORT MAP	(	DATO_IN => DATA_IN_tb,
					PIN => PIN_tb,
					DDRX => DDRX_tb 
					);
	signal_generation: PROCESS
	BEGIN

		DDRX_tb	<="00000000";
		WAIT FOR 40 ns;
		
		DATA_IN_tb<="10101010";
		wait for 40 ns;
		
		DDRX_tb	<="00001111";
		WAIT FOR 40 ns;

		DDRX_tb<="11110000";
		wait for 40 ns;
		
		ddrX_tb<="00001111";
		wait for 40 ns;
		
		datA_IN_tb<="11111111";
		ddrX_tb<="01010101";
		wait for 40 ns;
		
		ddrX_tb<="10101010";
		WAIT FOR 1 us;
		
	END PROCESS signal_generation;
	
END ARCHITECTURE;