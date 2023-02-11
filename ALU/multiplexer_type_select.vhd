LIBRARY ieee;
USE ieee.std_logic_1164.all;

-----------------------------------------------------------------------------------------------------------
--2-to-1 multiplexer. Chooses 4bit output from 2 inputs depending on the select input push button


ENTITY multiplexer_type_select IS
	PORT
	(
		pb_select: IN std_logic;                             --3rd Push button for selecting to display the sum or individual digit                 
		input_A, input_B:IN std_logic_vector(3 downto 0);    --2 4-bit inputs to be selected (hexA and sum of hexA and hexB) or (hexB and carry of hexA and hexB concatenated with "000")
		chosen_hex: OUT std_logic_vector(3 downto 0)         --chosen 4-bit output
	);
END multiplexer_type_select;

ARCHITECTURE multiplexer_logic OF multiplexer_type_select IS

	signal hex_four_bits 			: std_logic_vector(3 downto 0);       -- 4bit signal variable for converting 1bit select input 

BEGIN 

hex_four_bits(0) <= pb_select;            --convert 1bit select input into 4bit for boolean operation with the 4bit inputs
hex_four_bits(1) <= pb_select;            --"																									 "
hex_four_bits(2) <= pb_select;            --"																									 "
hex_four_bits(3) <= pb_select;            --"																									 "

chosen_hex <= ((input_A AND hex_four_bits) OR (input_B AND (NOT hex_four_bits)));          --hexA AND select input for default output when select input = 0. 
                                                                                           --hexB AND negated select input for secondary output when select input = 1.
																														 --OR the outputs from both and gates for the output

END multiplexer_logic; 
