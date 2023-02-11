library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity Shift_Register IS Port
(
 clk_input, reset, parallel_load	: IN std_logic;
 L																	: IN std_logic_vector(3 downto 0);
 outputs															: OUT std_logic_vector(3 downto 0)
 );
END ENTITY;

 Architecture SR of Shift_Register is
 
 signal registers : std_logic_vector(3 downto 0);
 
 BEGIN
 
Register_Section: PROCESS (clk_input, reset, parallel_load)  -- this process synchronizes the activity to a clock
BEGIN
	IF (reset = '1') THEN
		registers(0) <= '0';
		registers(1) <= '0';
		registers(2) <= '0';
		registers(3) <= '0';
	ELSIF(parallel_load = '1' and rising_edge(clk_input)) THEN
		registers(0) <= L(0);
		registers(1) <= L(1);
		registers(2) <= L(2);
		registers(3) <= L(3);	
	END IF;
	outputs <= registers;
END PROCESS;	
 
 END SR;