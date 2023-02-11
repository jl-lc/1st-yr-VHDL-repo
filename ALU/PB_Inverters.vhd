LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY PB_Inverters IS
	PORT
	(
		pb_n:IN std_logic_vector(3 downto 0); --Inputs for push buttons (active low) to be inverted to active high
		pb:OUT std_logic_vector(3 downto 0)   --Output of the inverted inputs
	);
END PB_Inverters;

ARCHITECTURE gates OF PB_Inverters IS

BEGIN 

pb <= not(pb_n); --Invert the pb_n inputs output as pb ouputs

END gates; 
