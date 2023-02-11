library ieee;
use ieee.std_logic_1164.all;

-----------------------------------------------------------------------------------------------------------
--

entity Component_Motion is 
port (
	CLK, RESET, ALTB, AEQB, AGTB, motion, ext_out													: in std_logic;      --
	CLK_EN, up_down, ext_en, error																	: out std_logic	--
);
end Component_Motion;


architecture LOGIC of Component_Motion is 

--absolute genius move 
component State_Machine_Grabber IS Port
(
 clk_input, reset, grappler, grappler_en						: IN std_logic;							--I0 is enable, I1 is pb
 LED1 						: OUT std_logic						--o1 is lr, o2 is clkEN, o3 is ext_out
 );
end component;

signal motion_in : std_logic := '0';
signal motion_in_process : std_logic;
signal CLK_IN : std_logic;
signal RESET_IN : std_logic;

-- TYPE STATE_NAMES IS (STOP, ERROR, LT, GT);   -- list all the STATE_NAMES values
--
-- 
-- SIGNAL current_state, next_state	:  STATE_NAMES;     	-- signals of type STATE_NAMES
 

begin

----state machine
--Register_Section: PROCESS (CLK, RESET, next_state)  -- this process synchronizes the activity to a clock
--BEGIN
--	IF (RESET = '1') THEN
--		current_state <= STOP;
--	ELSIF(rising_edge(CLK)) THEN
--		current_state <= next_State;
--	END IF;
--END PROCESS;	
--
--
--
---- TRANSITION LOGIC PROCESS
--
--Transition_Section: PROCESS (motion_in, ext_out, current_state, STOP, ERROR, LT, GT) 
--
--BEGIN
--     CASE current_state IS
--         WHEN STOP =>
--				IF ((motion_in = '1') AND (ext_out = '1')) THEN
--					next_state <= ERROR;
--				ELSIF (motion_in = '1' AND ext_out = '0') THEN
--					IF ()
--					
--					
--					error <= '1';
--					CLK_EN <= '0';
--					up_down <= '-';
--					ext_en <= '1';
--					motion_in_process <= '0';
--				ELSIF (motion_in = '1' AND ext_out = '0') THEN
--					error <= '0';
--					CLK_EN <= '1';
--					if(AEQTB = '1') THEN
--						next_state <= AEQTB;
--					elsif(ALTB = '1') THEN
--						next_state <= ALTB;
--					else
--						next_state <= STOP;
--					
--
--         WHEN S2 =>		
--				IF(I0='1')) THEN
--					next_state <= S6;
--				ELSIF(I1='1') THEN
--					next_state <= S3;
--				ELSE
--					next_state <= S2;
--				END IF;
--				
--         WHEN S3 =>		
--				IF(I0='1') THEN
--					next_state <= S4;
--				ELSE
--					next_state <= S3;
--				END IF;
--
--         WHEN S4 =>		
--					next_state <= S5;
--
--         WHEN S5 =>		
--					next_state <= S6;
--				
--         WHEN S6 =>		
--				IF(I0='1') THEN
--					next_state <= S7;
--				ELSE
--					next_state <= S6;
--				END IF;
--				
--         WHEN S7 =>		
--				IF(I2='1') THEN
--					next_state <= S0;
--				ELSE
--					next_state <= S7;
--				END IF;
--
--				WHEN OTHERS =>
--               next_state <= S0;
-- 		END CASE;
-- END PROCESS;
--
---- DECODER SECTION PROCESS
--
--Decoder_Section: PROCESS (I0, I1, I2, current_state) 
--
--BEGIN
--     CASE current_state IS
--         WHEN S0 =>		
--			output1 <= '1';
--			output2 <= '0';
--			
--         WHEN S1 =>		
--			output1 <= '0';
--			output2 <= '0';
--
--         WHEN S2 =>		
--			output1 <= '0';
--			output2 <= '0';
--			
--         WHEN S3 =>		
--			output1 <= '0';
--			output2 <= '0';
--
--         WHEN S4 =>		
--			output1 <= '0';
--			output2 <= '0';
--
--         WHEN S5 =>		
--			output1 <= '0';
--			output2 <= '0';
--				
--         WHEN S6 =>		
--			output1 <= '0';
--			output2 <= '1';
--				
--         WHEN S7 =>		
--			output1 <= '0';
--			output2 <= '0';
--				
--         WHEN others =>		
-- 			output1 <= '0';
--			output2 <= '0';
--	  END CASE;
-- END PROCESS;
--
--
--
--
--
--
--




CLK_IN <= CLK;
RESET_IN <= RESET;

process (CLK_IN, RESET_IN) is
begin

	if (RESET_IN = '1') then
		CLK_EN <= '0';
		up_down <= '-';
		ext_en <= '1';
		error <= '0';
			
	elsif (rising_edge(CLK_IN)) then
		if (AEQB = '0') then
			motion_in_process <= '0';
			
		elsif ((motion_in = '1') AND (ext_out = '1')) then
			error <= '1';
			CLK_EN <= '0';
			up_down <= '-';
			ext_en <= '1';
			motion_in_process <= '1';

		elsif ((motion_in = '1') AND (ext_out = '0')) then
			if (AEQB = '1') then
				CLK_EN <= '0';
				up_down <= '-';
				ext_en <= '1';
				motion_in_process <= '1';
				error <= '0';
			elsif (ALTB = '1') then
				CLK_EN <= '1';
				up_down <= '1';
				ext_en <= '0';
				motion_in_process <= '0';
				error <= '0';
			elsif (AGTB = '1') then
				CLK_EN <= '1';
				up_down <= '0';
				ext_en <= '0';
				error <= '0';
				motion_in_process <= '0';
			end if;
		end if;
	end if;
	
end process;


INST1: State_Machine_Grabber port map(CLK_IN, motion_in_process, motion, '1', motion_in);																	--

end LOGIC;
