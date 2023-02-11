library ieee;
use ieee.std_logic_1164.all;


entity LogicalStep_Lab3_top is port (
	clkin_50		: in 	std_logic;
	pb_n			: in	std_logic_vector(3 downto 0);
 	sw   			: in  std_logic_vector(7 downto 0); 	
	
	----------------------------------------------------
--HVAC_temp : out std_logic_vector(3 downto 0); -- used for simulations only. Comment out for FPGA download compiles.
	----------------------------------------------------
	
   leds			: out std_logic_vector(7 downto 0);
   seg7_data 	: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  : out	std_logic;				    		-- seg7 digit1 selector
	seg7_char2  : out	std_logic				    		-- seg7 digit2 selector
	
); 
end LogicalStep_Lab3_top;

architecture design of LogicalStep_Lab3_top is
--
-- Provided Project Components Used
------------------------------------------------------------------- 
component SevenSegment  port (
   hex	   :  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
   sevenseg :  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
); 
end component SevenSegment;

component segment7_mux port (
          clk        : in  std_logic := '0';
			 DIN2 		: in  std_logic_vector(6 downto 0);	
			 DIN1 		: in  std_logic_vector(6 downto 0);
			 DOUT			: out	std_logic_vector(6 downto 0);
			 DIG2			: out	std_logic;
			 DIG1			: out	std_logic
        );
end component segment7_mux;

--	
component Tester port (
	MC_TESTMODE				: in  std_logic;
	I1EQI2,I1GTI2,I1LTI2	: in	std_logic;
	input1					: in  std_logic_vector(3 downto 0);
	input2					: in  std_logic_vector(3 downto 0);
	TEST_PASS  				: out	std_logic							 
); 
end component;
----	
component HVAC 	port (
	HVAC_SIM					: in boolean;
	clk						: in std_logic; 
	run_n		   			: in std_logic;
	increase, decrease	: in std_logic;
	temp						: out std_logic_vector (3 downto 0)
);
end component;
------------------------------------------------------------------
-- Add any Other Components here
------------------------------------------------------------------
component compx4  port (
	A,B									: in std_logic_vector(3 downto 0);      --
	AGTB, AEQB, ALTB					: out std_logic    						    --
); 
end component compx4;

component PB_Inverters port(
	pb_n:IN std_logic_vector(3 downto 0); --Inputs for push buttons (active low) to be inverted to active high
	pb:OUT std_logic_vector(3 downto 0)   --Output of the inverted inputs
);
end component;

component MUX port(
	hex_num0,hex_num1 		: in std_logic_vector(3 downto 0);     --4-bit inputs for multiplexer input
	mux_select					: in std_logic;     							--output select
	hex_out						: out std_logic_vector(3 downto 0)     --Result output of the hex inputs
);
end component;

component energy_monitor port(
 	AGTB, AEQB, ALTB															: in  std_logic;
   vacation_mode, MC_test_mode, window_open, door_open			: in	std_logic;
	furnace, at_temp, AC, blower, window, door, vacation, decrease, increase, run_n  		: out	std_logic							 
);
end component;

------------------------------------------------------------------	
-- Create any additional internal signals to be used
------------------------------------------------------------------	
constant HVAC_SIM : boolean := FALSE; -- set to FALSE when compiling for FPGA download to LogicalStep board 
                                      -- or TRUE for doing simulations with the HVAC Component
------------------------------------------------------------------	

-- global clock
signal clk_in					: std_logic;
signal hex_A, hex_B 			: std_logic_vector(3 downto 0);
signal hexA_7seg, hexB_7seg: std_logic_vector(6 downto 0);

	
signal pb 						: std_logic_vector(3 downto 0);       --Push buttons
signal vacation_mode 		: std_logic;    						     --inverted pb(3)
signal MC_test_mode	 		: std_logic;    						     --inverted pb(2)
signal window_open 			: std_logic;    						     --inverted pb(1)
signal door_open 				: std_logic;    						     --inverted pb(0)

signal desired_temp 			: std_logic_vector(3 downto 0);       --sw(3 downto 0)
signal vacation_temp 		: std_logic_vector(3 downto 0);       --sw(7 downto 4)

signal mux_temp 				: std_logic_vector(3 downto 0);       --mux output
signal current_temp 			: std_logic_vector(3 downto 0);       --HVAC output

signal AGTB	 					: std_logic;    						     --AGTB output from compx4
signal AEQB 					: std_logic;    						     --AEQB output from compx4
signal ALTB 					: std_logic;    						     --ALTB output from compx4

signal mt_seg7					: std_logic_vector(6 downto 0);       --Seven segment mt output
signal ct_seg7					: std_logic_vector(6 downto 0);       --Seven segment ct output

signal decrease	 			: std_logic;    						     --decrease output of Energy_Monitor
signal increase	 			: std_logic;    						     --increase output of Energy_Monitor
signal run_n		 			: std_logic;    						     --run_n output of Energy_Monitor

signal furnace		 			: std_logic;    						     --leds(0)
signal at_temp		 			: std_logic;    						     --leds(1)
signal AC			 			: std_logic;    						     --leds(2)
signal blower		 			: std_logic;    						     --leds(3)
signal window		 			: std_logic;    						     --leds(4)
signal door			 			: std_logic;    						     --leds(5)
signal MC_test_pass 			: std_logic;    						     --leds(6)
signal vacation	 			: std_logic;    						     --leds(7)
------------------------------------------------------------------- 


begin -- Here the circuit begins

clk_in <= clkin_50;	--hook up the clock input

-- temp inputs hook-up to internal busses.
-- hex_A <= sw(3 downto 0);
-- hex_B <= sw(7 downto 4);

-- switches signals
desired_temp <= sw(3 downto 0);
vacation_temp <= sw(7 downto 4);
----- Simulations only
--HVAC_temp <= current_temp;

-- pb signals
vacation_mode <= pb(3);
MC_test_mode <= pb(2);
window_open <= pb(1);
door_open <= pb(0);

--leds
leds(0) <= furnace;
leds(1) <= at_temp;
leds(2) <= AC;
leds(3) <= blower;
leds(4) <= window;
leds(5) <= door;
leds(6) <= MC_test_pass;
leds(7) <= vacation;
	 
inst1:  compx4 port map (mux_temp, current_temp, AGTB, AEQB, ALTB);
INST2:  PB_Inverters port map(pb_n, pb);                                                            --Invert push button from active low to active high
INST3:  MUX port map(desired_temp, vacation_temp, vacation_mode, mux_temp);                         --
INST4:  SevenSegment port map(mux_temp, mt_seg7);                                                   --
INST5:  SevenSegment port map(current_temp , ct_seg7);                                              --
INST6:  segment7_mux port map(clk_in, mt_seg7, ct_seg7, seg7_data, seg7_char1, seg7_char2);       --Switches between the seven segment displays
INST7:  Tester port map(MC_test_mode, AEQB, AGTB, ALTB, desired_temp, current_temp, MC_test_pass);  --Switches between the seven segment displays
INST8:  HVAC port map(HVAC_SIM, clk_in, run_n, increase, decrease, current_temp); 					 --Switches between the seven segment displays
INST9:  energy_monitor port map(AGTB, AEQB, ALTB, vacation_mode, MC_test_mode, window_open, door_open, furnace, at_temp, AC, blower, window, door, vacation, decrease, increase, run_n); 

end design;

