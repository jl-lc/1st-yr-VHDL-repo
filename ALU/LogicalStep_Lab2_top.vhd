library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--main entity declaration
entity LogicalStep_Lab2_top is port (
   clkin_50			: in	std_logic;                    -- System clock
	pb_n				: in	std_logic_vector(3 downto 0); -- Push buttons for multiplexers
 	sw   				: in  std_logic_vector(7 downto 0); -- The switch inputs
   leds				: out std_logic_vector(7 downto 0); -- for displaying the switch content
   seg7_data 		: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  	: out	std_logic;				    		-- seg7 digit1 selector
	seg7_char2  	: out	std_logic				    		-- seg7 digit2 selector
	
); 
end LogicalStep_Lab2_top;

architecture SimpleCircuit of LogicalStep_Lab2_top is
--
-- Components Used ---
------------------------------------------------------------------- 
  component SevenSegment port (
   hex   		:  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
   sevenseg 	:  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
   ); 
   end component;
	
	component segment7_mux port (
		clk : in std_logic := '0';                      -- For switching between the seven segment displays
		DIN2 : in std_logic_vector(6 downto 0);         -- For setting left seven segment display output
		DIN1 : in std_logic_vector(6 downto 0);         -- For setting right seven segment display output
		DOUT : out std_logic_vector(6 downto 0);        -- Display data 
		DIG2 : out std_logic;                           -- Left display character
		DIG1 : out std_logic                            -- Right display character
	);
	end component;
	
	--Not needed--------------------------------------------------------------
	component hex_mux port (
		hex_num3,hex_num2,hex_num1,hex_num0 : in std_logic_vector(3 downto 0);
		mux_select									: in std_logic_vector(1 downto 0);
		hex_out										: out std_logic_vector(3 downto 0)
	);
	end component;
	--------------------------------------------------------------------------
	
	component logic_processor port(
		logic_in0,logic_in1                 : in std_logic_vector(3 downto 0);    --4-bit HexA and HexB innputs 
		logic_select									: in std_logic_vector(1 downto 0); --Push buttons for selecting between AND OR XOR XNOR boolean functions
		logic_out									: out std_logic_vector(3 downto 0)    --LEDS for output of the result of the boolean functions
	);
	end component;
	
	component PB_Inverters port(
		pb_n:IN std_logic_vector(3 downto 0); --Inputs for push buttons (active low) to be inverted to active high
		pb:OUT std_logic_vector(3 downto 0)   --Output of the inverted inputs
	);
	end component;
	
	component full_adder_4bit port (
		BUS0_b				: in std_logic_vector(3 downto 0); --First 4-bit inputs (HexA)
		BUS1_b				: in std_logic_vector(3 downto 0); --Second 4-bit inputs (HexB)
		carry_in				: in std_logic;                    --0 placeholder carry in
		SUM_b					: out	std_logic_vector(3 downto 0);--Sum of inputs
		carry_out3			: out std_logic                    --Carry of the sum
	);
	end component;
	
	component multiplexer_type_select PORT (
		pb_select: IN std_logic;                             --3rd Push button for selecting to display the sum or individual digit                 
		input_A, input_B:IN std_logic_vector(3 downto 0);    --2 4-bit inputs to be selected (hexA and sum of hexA and hexB) or (hexB and carry of hexA and hexB concatenated with "000")
		chosen_hex: OUT std_logic_vector(3 downto 0)         --chosen 4-bit output
	);
	end component;
	
	
-- Create any signals, or temporary variables to be used
--
--  std_logic_vector is a signal which can be used for logic operations such as OR, AND, NOT, XOR
--
	signal seg7_A		: std_logic_vector(6 downto 0);       --Seven segment A output
	signal hex_A		: std_logic_vector(3 downto 0);       --Placeholder for the bits of the digit corresponding to seven segment A
	signal hex_B		: std_logic_vector(3 downto 0);       --Placeholder for the bits of the digit corresponding to seven segment B
	signal seg7_B		: std_logic_vector(6 downto 0);       --Seven segment B output
	signal pb 			: std_logic_vector(3 downto 0);       --Push bttons for multiplexers
	signal full_adder_4bit_hex_sum 			: std_logic_vector(3 downto 0); --Sum of Hex values
	signal full_adder_4bit_carry_out 			: std_logic;                 --Carry out without concatenation
	signal full_adder_4bit_carry_out_concatenated : std_logic_vector(3 downto 0); --Carry out with concatenation
	signal multiplexer_result_A : std_logic_vector(3 downto 0); --result of either (hexA) or (sum of hexA and hexB)
	signal multiplexer_result_B : std_logic_vector(3 downto 0); --result of either (hexB) or (carry of hexA and hexB concatenated with "000")
	
-- Here the circuit begins

begin

	hex_A <= sw(3 downto 0); --Input for 4-bit seven segment A declaration (switch inputs 0 to 3 on the board)
	
	hex_B <= sw(7 downto 4); --Input for 4-bit seven segment B declaration (switch inputs 4 to 7 on the board)

	full_adder_4bit_carry_out_concatenated <= ("000" & full_adder_4bit_carry_out); --Concatenate the output for the carry 

--COMPONENT HOOKUP
--
-- generate the seven segment coding

	--Instances of the componenets with definitions as seen above 
	
	INST1: SevenSegment port map(multiplexer_result_A, seg7_A);                                                                --Display for seven segment A
	INST2: SevenSegment port map(multiplexer_result_B , seg7_B);                                                               --Display for seven segment B
	INST3: segment7_mux port map(clkin_50, seg7_A, seg7_B, seg7_data, seg7_char2, seg7_char1);                                 --Switches between the seven segment displays (effectively outputting on each display at a very fast clock rate)
	INST4: logic_processor port map(hex_A, hex_B, pb(1 downto 0), leds(3 downto 0));                                           --Logic for displaying the results of the boolean operations on the 4-bit hex inputs on leds (0 to 3)
	INST5: PB_Inverters port map(pb_n, pb);                                                                                    --Invert push button from active low to active high
	INST6: full_adder_4bit port map(hex_A, hex_B, '0', full_adder_4bit_hex_sum, full_adder_4bit_carry_out);                    --Add the two 4-bit inputs
	INST7: multiplexer_type_select port map(pb_n(2), hex_A, full_adder_4bit_hex_sum, multiplexer_result_A);                    --Output for the sum of the 4-bit inputs or the 4-bit input values themselves
	INST8: multiplexer_type_select port map(pb_n(2), hex_B, full_adder_4bit_carry_out_concatenated, multiplexer_result_B);     --Output for the Concatenated carry of the 4-bit inputs or the 4-bit input values themselves

	
end SimpleCircuit;

