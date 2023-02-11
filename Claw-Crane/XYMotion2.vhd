library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity XYMotion_Component_2 IS Port
(
	CLK, RESET											: in	std_logic;
	ALTB, AEQB, AGTB									: in	std_logic;
	motion, ext_out									: in	std_logic;
	clk_en, up_down									: out std_logic;
	Capture_XY, error, extender_en				: out std_logic
 );
END ENTITY;
 

 Architecture SM of XYMotion_Component_2 is
 
 TYPE STATE_NAMES IS (BC, TRANSITION, MOTION_CASE);   -- BC is base case, MLEFT is move left, MRIGHT is move right

 
 SIGNAL current_state, next_state	:  STATE_NAMES;     	-- signals of type STATE_NAMES


 BEGIN
 
 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (CLK, RESET, next_state)  -- this process synchronizes the activity to a clock
BEGIN
	IF (RESET = '1') THEN
		current_state <= BC;
	ELSIF(rising_edge(CLK)) THEN
		current_state <= next_state;
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (current_state, motion, AEQB, ext_out) 

BEGIN
    CASE current_state IS
         WHEN BC =>
				IF (motion = '1') THEN
					next_state <= TRANSITION;
				ELSE
					next_state <= BC;
				END IF;

         WHEN TRANSITION =>
				IF (motion = '0') THEN
					next_state <= MOTION_CASE;
				ELSE
					next_state <= TRANSITION;
				END IF;

         WHEN MOTION_CASE =>	
				IF (ext_out = '1') THEN
					next_state <= MOTION_CASE;
				ELSIF (ext_out = '0') THEN					
					IF (AEQB = '0') THEN
						next_state <= MOTION_CASE;
					ELSE
						next_state <= BC;
					END IF;
				END IF;
					
				--WHEN OTHERS =>
               --next_state <= BC;
		END CASE;

END PROCESS;

-- DECODER SECTION PROCESS

Decoder_Section: PROCESS (motion, ext_out, AGTB, ALTB, current_state) 

BEGIN
    CASE current_state IS
         WHEN BC =>				
				clk_en <= '0';
				up_down <= '-';
				Capture_XY <= '0';
				extender_en <= '1';
				error <= '0';

         WHEN TRANSITION =>
				clk_en <= '0';
				up_down <= '-';
				Capture_XY <= '1';
				extender_en <= '1';
				error <= '0';

         WHEN MOTION_CASE =>
				IF (ext_out = '1') THEN
					clk_en <= '0';
					up_down <= '-';
					Capture_XY <= '0';
					extender_en <= '1';
					error <= '1';
				ELSIF (ext_out = '0') THEN
					clk_en <= '0';
					up_down <= '-';
					Capture_XY <= '0';
					extender_en <= '1';
					error <= '0';
				END IF;
				
				IF(AGTB = '1' AND ext_out = '0') THEN
					clk_en <= '1';
					up_down <= '0';
					Capture_XY <= '0';
					extender_en <= '0';
					error <= '0';
				ELSIF(ALTB = '1' AND ext_out = '0') THEN
					clk_en <= '1';
					up_down <= '1';
					Capture_XY <= '0';
					extender_en <= '0';
					error <= '0';
				END IF;
			
		END CASE;
END PROCESS;

END ARCHITECTURE SM;
