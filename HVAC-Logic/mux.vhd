library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------------------------------------------------------------------------------------
--Multiplexer (2 to 1) to select the output based on inputs and select 1bit inputs
entity MUX is 
port (
	hex_num0,hex_num1 		: in std_logic_vector(3 downto 0);     --4-bit inputs for multiplexer input
	mux_select					: in std_logic;     							--output select
	hex_out						: out std_logic_vector(3 downto 0)     --Result output of the hex inputs
);
end MUX;
architecture mux_logic of MUX is 
begin

with mux_select select 
hex_out <= hex_num0 when '0',        --Selects desired temp input when mux_select is 0
			  hex_num1 when '1';        --Selects vacation temp input when mux_select is 1
end mux_logic;






