library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity State_Machine_Grabber IS Port
(
 clk_input, reset, grappler, grappler_en						: IN std_logic;							--I0 is enable, I1 is pb
 LED1 						: OUT std_logic						--o1 is lr, o2 is clkEN, o3 is ext_out
 );
END ENTITY;
 

 Architecture SM of State_Machine_Grabber is
 
 TYPE STATE_NAMES IS (GOPEN, GOPENHOLD, GCLOSED, GCLOSEDHOLD);   -- BC is base case, MLEFT is move left, MRIGHT is move right

 
 SIGNAL current_state, next_state	:  STATE_NAMES;     	-- signals of type STATE_NAMES


 BEGIN
 
 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_input, reset, next_state)  -- this process synchronizes the activity to a clock
BEGIN
	IF (reset = '1') THEN
		current_state <= GCLOSED;
	ELSIF(rising_edge(clk_input)) THEN
		current_state <= next_state;
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS
-- Add Else
Transition_Section: PROCESS (grappler, grappler_en, current_state) 

BEGIN
    CASE current_state IS
			WHEN GOPEN =>
				If(grappler_en='0') THEN
					next_state <= GOPEN;
				ELSIF (grappler_en='1') THEN
					IF(grappler='1') THEN
						next_state <= GCLOSEDHOLD;
					ELSE
						next_state <= GOPEN;
					END IF;
				END IF;
				
			WHEN GCLOSEDHOLD =>
				if(grappler='0') THEN
					next_state <= GCLOSED;
				ELSE
					next_state <= GCLOSEDHOLD;
				END IF;
				
				
			WHEN GCLOSED => 
				If(grappler_en='0') THEN
					next_state <= GCLOSED;
				ELSIF (grappler_en='1') THEN
					IF(grappler='1') THEN
						next_state <= GOPENHOLD;
					ELSE
						next_state <= GCLOSED;
					END IF;
				END IF;		
			
			WHEN GOPENHOLD =>
				if(grappler='0') THEN
					next_state <= GOPEN;
				ELSE
					next_state <= GOPENHOLD;
				END IF;
	 

		END CASE;

END PROCESS;

-- DECODER SECTION PROCESS

Decoder_Section: PROCESS (current_state) 

BEGIN
    CASE current_state IS
         WHEN GOPEN =>
				LED1 <= '1';
			
         WHEN GOPENHOLD =>
				LED1 <= '1';
				
         WHEN GCLOSEDHOLD =>
				LED1 <= '0';
				
         WHEN GCLOSED =>
				LED1 <= '0';
			
		END CASE;
END PROCESS;

END ARCHITECTURE SM;
