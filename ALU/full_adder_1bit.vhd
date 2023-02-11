library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------------------------------------------------------------------------------------
--full 1-bit adder for constructing the 4-bit full adder

entity full_adder_1bit is 
port (
	input_a,input_b                  : in std_logic;     --input of the first bit from 1bit adder
	carry_in									: in std_logic;     --input of the second bit from 1bit adder
	sum_out,carry_out						: out std_logic     --sum and carry out from 1bit adder
);
end full_adder_1bit;

architecture full_adder_1bit_logic of full_adder_1bit is 

	signal half_adder_carry_out		: std_logic;       --half adder carry out
	signal half_adder_sum_out			: std_logic;       --half adder sum
	signal bitwixt							: std_logic;       --In between variable for the and of carry in and the sum ouput of input a and b

begin

half_adder_carry_out <= (input_a AND input_b);         --and of input a and input b in half adder
half_adder_sum_out <= (input_a XOR input_b);           --xor of input a and input b in half adder
bitwixt <= (carry_in AND half_adder_sum_out);          --and of carry in and half adder sum out

carry_out <= (bitwixt OR half_adder_carry_out);        --or of bitwixt and half adder carry out
sum_out <= (carry_in XOR half_adder_sum_out);          --xor of carry in and half adder sum out

			  
end full_adder_1bit_logic;

