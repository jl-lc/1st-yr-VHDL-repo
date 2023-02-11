library ieee;
use ieee.std_logic_1164.all;


entity energy_monitor is port (
 	AGTB, AEQB, ALTB															: in  std_logic;
   vacation_mode, MC_test_mode, window_open, door_open			: in	std_logic;
	furnace, at_temp, AC, blower, window, door, vacation, decrease, increase, run_n  		: out	std_logic							 
	); 
end energy_monitor;

architecture energy_monitor_logic of energy_monitor is

signal EQ_PASS, GT_PASS, LT_PASS : std_logic;

begin

energy_monitor1: 
PROCESS (AGTB, AEQB, ALTB, vacation_mode, MC_test_mode, window_open, door_open) is
 
begin

		IF(AGTB = '1') THEN 
			increase <= '1';
		ELSE
			increase <= '0';
		END IF;
		
		IF(ALTB = '1') THEN 
			decrease <= '1';
		ELSE
			decrease <= '0';
		END IF;
		

		IF(AEQB = '1') THEN 
			run_n <= '1';
			at_temp <= '1';
			blower <= '0';
		ELSE
			run_n <= '0';
			at_temp <= '0';
			blower <= '1';	
		END IF;
		
		
		IF(window_open = '1' OR door_open = '1' OR MC_test_mode = '1') THEN 
			run_n <= '1';
		ELSE
			run_n <= '0';	
		END IF;
		
		
		IF(ALTB = '1') THEN
			AC <= '1';
		ELSE
			AC <= '0';	
		END IF;
		
		IF(AGTB = '1') THEN
			furnace <= '1';
		ELSE
			furnace <= '0';
		END IF;
		
		
		IF(door_open = '1') THEN
			door <= '1';
			blower <= '0';
		ELSE
			door <= '0';		
		END IF;
		
		
		IF(window_open = '1') THEN
			window <= '1';
			blower <= '0';
		ELSE
			window <= '0';
		END IF;
		
		IF(MC_test_mode = '1') THEN
			blower <= '0';
		END IF;
		
		IF(vacation_mode = '1') THEN
			vacation <= '1';
		ELSE
			vacation <= '0';	
		END IF;
		
		
end process;

end;