library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity State_Machine_Extender IS Port
(
 clk_input, reset, enable, pb						: IN std_logic;							--I0 is enable, I1 is pb
 leds													: IN std_logic_vector(3 downto 0);  --I2 is leds
 lr, clkEN, ext_out, grappler_en						: OUT std_logic						--o1 is lr, o2 is clkEN, o3 is ext_out
 );
END ENTITY;
 

 Architecture SM of State_Machine_Extender is
 
 TYPE STATE_NAMES IS (BC, MLEFT, MRIGHT);   -- BC is base case, MLEFT is move left, MRIGHT is move right

 
 SIGNAL current_state, next_state	:  STATE_NAMES;     	-- signals of type STATE_NAMES


 BEGIN
 
 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_input, reset, next_state)  -- this process synchronizes the activity to a clock
BEGIN
	IF (reset = '1') THEN
		current_state <= BC;
	ELSIF(rising_edge(clk_input)) THEN
		current_state <= next_state;
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (enable, pb, leds, current_state) 

BEGIN
    CASE current_state IS
         WHEN BC =>
				IF(enable='0') THEN
					next_state <= BC;
				ELSIF (enable='1') THEN
					IF (pb='0') THEN
						next_state <= BC;
					ELSIF (pb='1' AND leds="1111") THEN
						next_state <= MLEFT;
					ELSIF (pb='1' AND leds="0000") THEN
						next_state <= MRIGHT;
					END IF;
				END IF;

         WHEN MLEFT =>
				IF (pb='0') THEN
					IF (leds="0000") THEN
						next_state <= BC;
					ELSE
						next_state <= MLEFT;
					END IF;
				ELSE
					next_state <= MLEFT;
				END IF;

         WHEN MRIGHT =>		
				IF (pb='0') THEN
					IF (leds="1111") THEN
						next_state <= BC;
					ELSE
						next_state <= MRIGHT;
					END IF;
				ELSE
					next_state <= MRIGHT;
				END IF;
					
					
				--WHEN OTHERS =>
               --next_state <= BC;
		END CASE;

END PROCESS;

-- DECODER SECTION PROCESS

Decoder_Section: PROCESS (enable, pb, leds, current_state) 

BEGIN
    CASE current_state IS
         WHEN BC =>
				IF(leds="0000") THEN
					ext_out <= '0';
					grappler_en <= '0';
				ELSE
					ext_out <= '1';
					grappler_en <= '1';
				END IF;
				
				clkEN <= '0';
				lr <= '-';
			
         WHEN MLEFT =>
				IF(leds="0000") THEN
					ext_out <= '0';
				ELSE
					ext_out <= '1';
				END IF;
				
				IF (pb='0') THEN	
					clkEN <= '1';
					lr <= '0';
				ELSE
					clkEN <= '0';
					lr <= '-';
				END IF; 

         WHEN MRIGHT =>		
				IF(leds="0000") THEN
					ext_out <= '0';
				ELSE
					ext_out <= '1';
				END IF;
				
				IF (pb='0') THEN					
					clkEN <= '1';
					lr <= '1';
				ELSE
					clkEN <= '0';
					lr <= '-';
				END IF;

         --WHEN others =>		
 			--lr <= '0';
			--clkEN <= '0';
			
		END CASE;
		
END PROCESS;

END ARCHITECTURE SM;
