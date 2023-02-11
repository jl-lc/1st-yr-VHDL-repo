library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------------------------------------------------------------------------------------
--full adder for 4-bit hex numbers

entity full_adder_4bit is 
port (
	BUS0_b				: in std_logic_vector(3 downto 0); --First 4-bit inputs (HexA)
	BUS1_b				: in std_logic_vector(3 downto 0); --Second 4-bit inputs (HexB)
	carry_in				: in std_logic;                    --0 placeholder carry in
	SUM_b					: out	std_logic_vector(3 downto 0);--Sum of inputs
	carry_out3			: out std_logic                    --Carry of the sum
);
end full_adder_4bit;

architecture full_adder_4bit_logic of full_adder_4bit is 

	component full_adder_1bit port (
	input_a,input_b                  : in std_logic;     --input of the first bit from 1bit adder
	carry_in									: in std_logic;     --input of the second bit from 1bit adder
	sum_out,carry_out						: out std_logic     --sum and carry out from 1bit adder
	);
   end component;

	signal carry_in_between 						: std_logic_vector(2 downto 0);     --carry values across 1bit adders

begin

INST1: full_adder_1bit port map(BUS0_b(0), BUS1_b(0), carry_in, SUM_b(0), carry_in_between(0));               --1bit adder for the first bit
INST2: full_adder_1bit port map(BUS0_b(1), BUS1_b(1), carry_in_between(0), SUM_b(1), carry_in_between(1));    --1bit adder for the second bit
INST3: full_adder_1bit port map(BUS0_b(2), BUS1_b(2), carry_in_between(1), SUM_b(2), carry_in_between(2));    --1bit adder for the third bit
INST4: full_adder_1bit port map(BUS0_b(3), BUS1_b(3), carry_in_between(2), SUM_b(3), carry_out3);             --1bit adder for the fourth bit

			  
end full_adder_4bit_logic;