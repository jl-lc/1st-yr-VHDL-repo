library ieee;
use ieee.std_logic_1164.all;

-----------------------------------------------------------------------------------------------------------
--For outputting boolean operation ouputs

entity logic_processor is 
port (
	logic_in0,logic_in1                 : in std_logic_vector(3 downto 0);      --4bit inputs to be performed by the logical operations
	logic_select									: in std_logic_vector(1 downto 0);   --1bit to select which operation to perform on the inputs
	logic_out									: out std_logic_vector(3 downto 0)      --4bit output of the operation selected
);
end logic_processor;
architecture logic_logic of logic_processor is 
begin

with logic_select(1 downto 0) select 
logic_out <= (logic_in0 AND logic_in1) when "00",   -- AND operation when 00 is the logic_select input 
			  (logic_in0 OR logic_in1) when "01",      -- OR operation when 01 is the logic_select input 
			  (logic_in0 XOR logic_in1) when "10",     -- XOR operation when 10 is the logic_select input 
			  (logic_in0 XNOR logic_in1) when "11";    -- XNOR operation when 11 is the logic_select input 
end logic_logic;






