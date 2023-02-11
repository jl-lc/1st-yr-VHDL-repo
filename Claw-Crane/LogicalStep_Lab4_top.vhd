LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY LogicalStep_Lab4_top IS
   PORT
	(
	Clkin_50		: in	std_logic;
	pb_n			: in	std_logic_vector(3 downto 0);
 	sw   			: in  std_logic_vector(7 downto 0); 
	leds			: out std_logic_vector(7 downto 0);

------------------------------------------------------------------	
--	xreg, yreg	: out std_logic_vector(3 downto 0);-- (for SIMULATION only)
--	xPOS, yPOS	: out std_logic_vector(3 downto 0);-- (for SIMULATION only)
------------------------------------------------------------------	
   seg7_data 	: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment display (for LogicalStep only)
	seg7_char1  : out	std_logic;				    		-- seg7 digit1 selector (for LogicalStep only)
	seg7_char2  : out	std_logic				    		-- seg7 digit2 selector (for LogicalStep only)
	
	);
END LogicalStep_Lab4_top;

ARCHITECTURE Circuit OF LogicalStep_Lab4_top IS

-- Provided Project Components Used
------------------------------------------------------------------- 
COMPONENT Clock_Source 	port (SIM_FLAG: in boolean;clk_input: in std_logic;clock_out: out std_logic);
END COMPONENT;

component Synch_inverter is port(
	sync_clk			: in std_logic := '0';
	input3,input2,input1,input0	: in std_logic := '0';
	sync_reset,sync_motion,sync_extender,sync_grappler	: out std_logic
	);
end component;

component SevenSegment
  port 
   (
      hex	   :  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
      sevenseg :  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
   ); 
end component SevenSegment;

component segment7_mux 
  port 
   (
      clk        : in  std_logic := '0';
		DIN2 		: in  std_logic_vector(6 downto 0);	
		DIN1 		: in  std_logic_vector(6 downto 0);
		DOUT			: out	std_logic_vector(6 downto 0);
		DIG2			: out	std_logic;
		DIG1			: out	std_logic
   );
end component segment7_mux;
------------------------------------------------------------------
-- Add any Other Components here
------------------------------------------------------------------
component compx4 is 
port (
	A,B										: in std_logic_vector(3 downto 0);      --
	AGTB, AEQB, ALTB						: out std_logic    						    --
);
end component;

component State_Machine_Extender IS Port
(
 clk_input, reset, enable, pb						: IN std_logic;							--I0 is enable, I1 is pb
 leds													: IN std_logic_vector(3 downto 0);  --I2 is leds
 lr, clkEN, ext_out, grappler_en						: OUT std_logic						--o1 is lr, o2 is clkEN, o3 is ext_out
 );
END component;

component Bidir_shift_reg is port 
	(
		CLK		: in std_logic := '0';
		RESET		: in std_logic := '0';
		CLK_EN	: in std_logic := '0'; 
		LEFT0_RIGHT1	: in std_logic := '0';
		REG_BITS	: out std_logic_vector(3 downto 0)
	);
end component;

component State_Machine_Grabber IS Port
(
 clk_input, reset, grappler, grappler_en						: IN std_logic;							--I0 is enable, I1 is pb
 LED1 						: OUT std_logic						--o1 is lr, o2 is clkEN, o3 is ext_out
 );
end component;

component Shift_Register IS Port
(
 clk_input, reset, parallel_load	: IN std_logic;
 L																	: IN std_logic_vector(3 downto 0);
 outputs															: OUT std_logic_vector(3 downto 0)
 );
end component;

component U_D_Bin_Counter4bit is port 
	(
		CLK	: in std_logic := '0';
		RESET	: in std_logic := '0';
		CLK_EN	: in std_logic := '0';
		UP1_DOWN0	: in std_logic := '0';
		COUNTER_BITS	: out std_logic_vector(3 downto 0)
	);
end component;

component XYMotion IS
   PORT
	(
	CLK, RESET											: in	std_logic;
	X_LT, X_EQ, X_GT, Y_LT, Y_EQ, Y_GT			: in	std_logic;
	motion, ext_out									: in	std_logic;
	X_clk_en, Y_clk_en, X_up_down, Y_up_down	: out std_logic;
	Capture_XY, error, extender_en				: out std_logic
	);
end component;

------------------------------------------------------------------
-- provided signals
-------------------------------------------------------------------
------------------------------------------------------------------	
constant SIM_FLAG : boolean := FALSE; -- set to FALSE when compiling for FPGA download to LogicalStep board
------------------------------------------------------------------	
------------------------------------------------------------------	
-- Create any additional internal signals to be used
signal clk_in, clock	: std_logic;

signal X_LT : std_logic;
signal X_EQ : std_logic;
signal X_GT : std_logic;
signal Y_LT : std_logic;
signal Y_EQ : std_logic;
signal Y_GT : std_logic;

--XY_Motion ouputs
signal x_clk_en : std_logic;
signal x_up_down : std_logic;
signal y_clk_en : std_logic;
signal y_up_down : std_logic;

--comparator inputs
signal X_pos : std_logic_vector(3 downto 0);
signal X_reg : std_logic_vector(3 downto 0);
signal Y_pos : std_logic_vector(3 downto 0);
signal Y_reg : std_logic_vector(3 downto 0);

--register inputs
signal X_target : std_logic_vector(3 downto 0);
signal Y_target : std_logic_vector(3 downto 0);

--output decoder
signal X_pos_seven : std_logic_vector(6 downto 0);
signal Y_pos_seven : std_logic_vector(6 downto 0);

--output signals
signal ext_pos		: std_logic_vector(3 downto 0);

--communication signals between extender block and xy_motion
signal extender_en : std_logic;
signal extender_out : std_logic;
signal capture_XY : std_logic;

--communication signals between extender block and grappler
signal grappler_en : std_logic;

--communication signals between extender block and bidir shift reg
signal clk_en   : std_logic;
signal left_right   : std_logic;

--push button outputs from sync inverter block
signal sync_reset : std_logic;
signal motion : std_logic;
signal extender : std_logic;
signal grappler : std_logic;

--output from grappler
signal grappler_out : std_logic;
	
BEGIN
clk_in <= clkin_50;

Clock_Selector: Clock_source port map(SIM_FLAG, clk_in, clock);


--output assignments
leds(5 downto 2) <= ext_pos;


leds(1) <= grappler_out;
X_target <= sw(7 downto 4);
Y_target <= sw(3 downto 0);

INST1: Synch_inverter port map(clock, pb_n(3), pb_n(2), pb_n(1), pb_n(0), sync_reset, motion, extender, grappler); 
--INST2: Bidir_shift_reg port map(clock, pb(0), sw(0), sw(1), leds(7 downto 0));
INST2: U_D_Bin_Counter4bit port map(clock, sync_reset, x_clk_en, x_up_down, X_pos);		--x counter
INST3: U_D_Bin_Counter4bit port map(clock, sync_reset, y_clk_en, y_up_down, Y_pos);		--y counter

INST4: Shift_Register port map(clock, sync_reset, capture_XY, X_target, X_reg);			--x register
INST5: Shift_Register port map(clock, sync_reset, capture_XY, Y_target, Y_reg);			--y register
INST6: XYMotion port map(clock, sync_reset, X_LT, X_EQ, X_GT, Y_LT, Y_EQ, Y_GT, motion, extender_out, x_clk_en, y_clk_en, x_up_down, y_up_down, capture_XY, leds(0), extender_en);

INST7: compx4 port map(x_pos, x_reg, X_GT, X_EQ, X_LT);		--x comparator
INST8: compx4 port map(Y_pos, Y_reg, Y_GT, Y_EQ, Y_LT);		--y comparator

INST9: SevenSegment port map(X_pos, X_pos_seven);				--x to 7
INST10: SevenSegment port map(Y_pos, Y_pos_seven);				--y to 7
INST11: segment7_mux port map(clk_in, Y_pos_seven, X_pos_seven, seg7_data, seg7_char2, seg7_char1);				--heheheha

INST12: State_Machine_Extender port map(clock, sync_reset, extender_en, extender, ext_pos, left_right, clk_en, extender_out, grappler_en);
INST13: Bidir_shift_reg port map(clock, sync_reset, clk_en, left_right, ext_pos);
INST14: State_Machine_Grabber port map(clock, sync_reset, grappler, grappler_en, grappler_out);
 

END Circuit;
