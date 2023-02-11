-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

-- DATE "07/15/2022 18:41:14"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab4_top IS
    PORT (
	Clkin_50 : IN std_logic;
	pb_n : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : BUFFER std_logic_vector(7 DOWNTO 0);
	seg7_data : BUFFER std_logic_vector(6 DOWNTO 0);
	seg7_char1 : BUFFER std_logic;
	seg7_char2 : BUFFER std_logic
	);
END LogicalStep_Lab4_top;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[2]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[3]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[4]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[5]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[6]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[7]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[0]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[1]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[2]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[3]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[4]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[5]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[6]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char1	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char2	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Clkin_50	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF LogicalStep_Lab4_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clkin_50 : std_logic;
SIGNAL ww_pb_n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \INST12|Selector3~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clkin_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock_Selector|clk_divider:counter[23]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
SIGNAL \seg7_data[6]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \seg7_data[0]~output_o\ : std_logic;
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \Clkin_50~input_o\ : std_logic;
SIGNAL \Clkin_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[0]~0_combout\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[0]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[1]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[1]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[1]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[2]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[2]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[2]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[3]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[3]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[3]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[4]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[4]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[4]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[5]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[5]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[5]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[6]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[6]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[6]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[7]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[7]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[7]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[8]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[8]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[8]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[9]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[9]~q\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[10]~2_cout\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[10]~4_cout\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[10]~6_cout\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[10]~8_cout\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[10]~10_cout\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[10]~12_cout\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[10]~14_cout\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[10]~16_cout\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[10]~18_cout\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[10]~19_combout\ : std_logic;
SIGNAL \INST11|clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[9]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[1]~4_cout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[11]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[11]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[11]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[12]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[12]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[12]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[13]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[13]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[13]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[14]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[14]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[14]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[15]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[15]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[15]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[16]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[16]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[16]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[17]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[17]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[17]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[18]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[18]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[18]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[19]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[19]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[19]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[20]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[20]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[20]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[21]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[21]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[21]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[22]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[22]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[22]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[23]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[23]~q\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\ : std_logic;
SIGNAL \pb_n[3]~input_o\ : std_logic;
SIGNAL \INST1|stages_pb3[0]~0_combout\ : std_logic;
SIGNAL \INST1|stages_pb3[1]~feeder_combout\ : std_logic;
SIGNAL \INST1|sync_reset~feeder_combout\ : std_logic;
SIGNAL \INST1|sync_reset~q\ : std_logic;
SIGNAL \pb_n[2]~input_o\ : std_logic;
SIGNAL \INST1|stages_pb2[0]~0_combout\ : std_logic;
SIGNAL \INST1|stages_pb2[1]~feeder_combout\ : std_logic;
SIGNAL \INST1|sync_motion~feeder_combout\ : std_logic;
SIGNAL \INST1|sync_motion~q\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \INST6|INST1|Selector1~0_combout\ : std_logic;
SIGNAL \INST2|ud_bin_counter[2]~9\ : std_logic;
SIGNAL \INST2|ud_bin_counter[3]~10_combout\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \INST7|ALTB~0_combout\ : std_logic;
SIGNAL \INST7|ALTB~1_combout\ : std_logic;
SIGNAL \INST6|INST1|clk_en~0_combout\ : std_logic;
SIGNAL \INST6|INST1|clk_en~1_combout\ : std_logic;
SIGNAL \INST3|ud_bin_counter[1]~5_cout\ : std_logic;
SIGNAL \INST3|ud_bin_counter[1]~6_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \INST8|ALTB~1_combout\ : std_logic;
SIGNAL \INST3|ud_bin_counter[1]~7\ : std_logic;
SIGNAL \INST3|ud_bin_counter[2]~8_combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \INST8|ALTB~0_combout\ : std_logic;
SIGNAL \INST8|AGTB~0_combout\ : std_logic;
SIGNAL \INST6|INST2|clk_en~0_combout\ : std_logic;
SIGNAL \INST8|AGTB~1_combout\ : std_logic;
SIGNAL \INST6|INST2|Selector2~0_combout\ : std_logic;
SIGNAL \INST6|INST2|Selector2~1_combout\ : std_logic;
SIGNAL \INST6|INST2|up_down~combout\ : std_logic;
SIGNAL \INST3|process_0~0_combout\ : std_logic;
SIGNAL \INST3|ud_bin_counter[2]~9\ : std_logic;
SIGNAL \INST3|ud_bin_counter[3]~10_combout\ : std_logic;
SIGNAL \INST8|AGTB~2_combout\ : std_logic;
SIGNAL \INST6|INST2|Decoder_Section~0_combout\ : std_logic;
SIGNAL \INST3|ud_bin_counter[0]~3_combout\ : std_logic;
SIGNAL \INST6|INST2|Selector1~0_combout\ : std_logic;
SIGNAL \INST6|INST2|Selector1~1_combout\ : std_logic;
SIGNAL \INST6|INST2|next_state.TRANSITION~0_combout\ : std_logic;
SIGNAL \INST6|INST2|current_state.TRANSITION~feeder_combout\ : std_logic;
SIGNAL \INST6|INST2|current_state.TRANSITION~q\ : std_logic;
SIGNAL \INST6|INST2|Selector1~2_combout\ : std_logic;
SIGNAL \INST6|INST2|current_state.MOTION_CASE~q\ : std_logic;
SIGNAL \INST6|INST2|clk_en~1_combout\ : std_logic;
SIGNAL \INST13|sreg~2_combout\ : std_logic;
SIGNAL \INST12|Selector5~0_combout\ : std_logic;
SIGNAL \pb_n[1]~input_o\ : std_logic;
SIGNAL \INST1|stages_pb1[0]~0_combout\ : std_logic;
SIGNAL \INST1|stages_pb1[1]~feeder_combout\ : std_logic;
SIGNAL \INST1|sync_extender~q\ : std_logic;
SIGNAL \INST12|Selector5~1_combout\ : std_logic;
SIGNAL \INST12|Selector5~2_combout\ : std_logic;
SIGNAL \INST12|next_state.BC_154~combout\ : std_logic;
SIGNAL \INST12|current_state.BC~0_combout\ : std_logic;
SIGNAL \INST12|current_state.BC~q\ : std_logic;
SIGNAL \INST12|Selector0~0_combout\ : std_logic;
SIGNAL \INST12|Equal0~0_combout\ : std_logic;
SIGNAL \INST12|Selector2~1_combout\ : std_logic;
SIGNAL \INST12|Selector3~0_combout\ : std_logic;
SIGNAL \INST12|Selector3~0clkctrl_outclk\ : std_logic;
SIGNAL \INST12|Selector2~0_combout\ : std_logic;
SIGNAL \INST12|Selector2~2_combout\ : std_logic;
SIGNAL \INST12|next_state.MRIGHT_120~combout\ : std_logic;
SIGNAL \INST12|current_state.MRIGHT~q\ : std_logic;
SIGNAL \INST13|sreg~1_combout\ : std_logic;
SIGNAL \INST13|sreg~0_combout\ : std_logic;
SIGNAL \INST13|sreg~3_combout\ : std_logic;
SIGNAL \INST12|Equal1~0_combout\ : std_logic;
SIGNAL \INST6|INST1|Selector1~1_combout\ : std_logic;
SIGNAL \INST6|INST1|next_state.TRANSITION~0_combout\ : std_logic;
SIGNAL \INST6|INST1|current_state.TRANSITION~feeder_combout\ : std_logic;
SIGNAL \INST6|INST1|current_state.TRANSITION~q\ : std_logic;
SIGNAL \INST6|INST1|Selector1~2_combout\ : std_logic;
SIGNAL \INST6|INST1|current_state.MOTION_CASE~q\ : std_logic;
SIGNAL \INST2|ud_bin_counter[0]~3_combout\ : std_logic;
SIGNAL \INST2|ud_bin_counter[1]~5_cout\ : std_logic;
SIGNAL \INST2|ud_bin_counter[1]~7\ : std_logic;
SIGNAL \INST2|ud_bin_counter[2]~8_combout\ : std_logic;
SIGNAL \INST7|AGTB~0_combout\ : std_logic;
SIGNAL \INST7|AGTB~2_combout\ : std_logic;
SIGNAL \INST7|AGTB~1_combout\ : std_logic;
SIGNAL \INST6|INST1|Decoder_Section~0_combout\ : std_logic;
SIGNAL \INST6|INST1|Selector2~0_combout\ : std_logic;
SIGNAL \INST6|INST1|Selector2~1_combout\ : std_logic;
SIGNAL \INST6|INST1|up_down~combout\ : std_logic;
SIGNAL \INST2|process_0~0_combout\ : std_logic;
SIGNAL \INST2|ud_bin_counter[1]~6_combout\ : std_logic;
SIGNAL \INST9|Mux5~0_combout\ : std_logic;
SIGNAL \INST10|Mux5~0_combout\ : std_logic;
SIGNAL \INST11|DOUT_TEMP[1]~0_combout\ : std_logic;
SIGNAL \INST9|Mux1~0_combout\ : std_logic;
SIGNAL \INST10|Mux1~0_combout\ : std_logic;
SIGNAL \INST11|DOUT_TEMP[5]~1_combout\ : std_logic;
SIGNAL \INST9|Mux0~0_combout\ : std_logic;
SIGNAL \INST10|Mux0~0_combout\ : std_logic;
SIGNAL \INST11|DOUT_TEMP[6]~2_combout\ : std_logic;
SIGNAL \INST6|error~0_combout\ : std_logic;
SIGNAL \pb_n[0]~input_o\ : std_logic;
SIGNAL \INST1|stages_pb0[0]~0_combout\ : std_logic;
SIGNAL \INST1|stages_pb0[1]~feeder_combout\ : std_logic;
SIGNAL \INST1|sync_grappler~q\ : std_logic;
SIGNAL \INST12|grappler_en~combout\ : std_logic;
SIGNAL \INST14|Selector4~0_combout\ : std_logic;
SIGNAL \INST14|current_state.GOPEN~q\ : std_logic;
SIGNAL \INST14|Selector0~0_combout\ : std_logic;
SIGNAL \INST14|current_state.GCLOSEDHOLD~q\ : std_logic;
SIGNAL \INST14|Selector1~0_combout\ : std_logic;
SIGNAL \INST14|current_state.GCLOSED~q\ : std_logic;
SIGNAL \INST14|Selector3~0_combout\ : std_logic;
SIGNAL \INST14|current_state.GOPENHOLD~q\ : std_logic;
SIGNAL \INST14|LED1~combout\ : std_logic;
SIGNAL \INST10|Mux6~0_combout\ : std_logic;
SIGNAL \INST9|Mux6~0_combout\ : std_logic;
SIGNAL \INST11|DOUT[0]~0_combout\ : std_logic;
SIGNAL \INST9|Mux4~0_combout\ : std_logic;
SIGNAL \INST10|Mux4~0_combout\ : std_logic;
SIGNAL \INST11|DOUT[2]~2_combout\ : std_logic;
SIGNAL \INST9|Mux3~0_combout\ : std_logic;
SIGNAL \INST10|Mux3~0_combout\ : std_logic;
SIGNAL \INST11|DOUT[3]~3_combout\ : std_logic;
SIGNAL \INST9|Mux2~0_combout\ : std_logic;
SIGNAL \INST10|Mux2~0_combout\ : std_logic;
SIGNAL \INST11|DOUT[4]~4_combout\ : std_logic;
SIGNAL \INST4|registers\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST3|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST1|stages_pb2\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST2|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST13|sreg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST1|stages_pb0\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST5|registers\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST1|stages_pb3\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST1|stages_pb1\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST1|ALT_INV_sync_reset~q\ : std_logic;
SIGNAL \INST11|ALT_INV_DOUT[4]~4_combout\ : std_logic;
SIGNAL \INST11|ALT_INV_DOUT[3]~3_combout\ : std_logic;
SIGNAL \INST11|ALT_INV_DOUT[2]~2_combout\ : std_logic;
SIGNAL \INST11|ALT_INV_DOUT[0]~0_combout\ : std_logic;
SIGNAL \INST11|ALT_INV_clk_proc:COUNT[10]~q\ : std_logic;

BEGIN

ww_Clkin_50 <= Clkin_50;
ww_pb_n <= pb_n;
ww_sw <= sw;
leds <= ww_leds;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\INST12|Selector3~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \INST12|Selector3~0_combout\);

\Clkin_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clkin_50~input_o\);

\Clock_Selector|clk_divider:counter[23]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock_Selector|clk_divider:counter[23]~q\);
\INST1|ALT_INV_sync_reset~q\ <= NOT \INST1|sync_reset~q\;
\INST11|ALT_INV_DOUT[4]~4_combout\ <= NOT \INST11|DOUT[4]~4_combout\;
\INST11|ALT_INV_DOUT[3]~3_combout\ <= NOT \INST11|DOUT[3]~3_combout\;
\INST11|ALT_INV_DOUT[2]~2_combout\ <= NOT \INST11|DOUT[2]~2_combout\;
\INST11|ALT_INV_DOUT[0]~0_combout\ <= NOT \INST11|DOUT[0]~0_combout\;
\INST11|ALT_INV_clk_proc:COUNT[10]~q\ <= NOT \INST11|clk_proc:COUNT[10]~q\;

-- Location: LCCOMB_X11_Y16_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X3_Y10_N23
\seg7_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \INST11|DOUT_TEMP[1]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[1]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\seg7_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \INST11|DOUT_TEMP[5]~1_combout\,
	devoe => ww_devoe,
	o => \seg7_data[5]~output_o\);

-- Location: IOOBUF_X3_Y10_N16
\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \INST11|DOUT_TEMP[6]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST6|error~0_combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST14|LED1~combout\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST13|sreg\(0),
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST13|sreg\(1),
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X10_Y21_N23
\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST13|sreg\(2),
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST13|sreg\(3),
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X13_Y25_N30
\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST11|ALT_INV_DOUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

-- Location: IOOBUF_X1_Y10_N9
\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST11|ALT_INV_DOUT[2]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[2]~output_o\);

-- Location: IOOBUF_X31_Y22_N23
\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST11|ALT_INV_DOUT[3]~3_combout\,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\seg7_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST11|ALT_INV_DOUT[4]~4_combout\,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST11|ALT_INV_clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char1~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\seg7_char2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST11|clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

-- Location: IOIBUF_X0_Y6_N22
\Clkin_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clkin_50,
	o => \Clkin_50~input_o\);

-- Location: CLKCTRL_G4
\Clkin_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clkin_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clkin_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X18_Y13_N4
\INST11|clk_proc:COUNT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|clk_proc:COUNT[0]~0_combout\ = !\INST11|clk_proc:COUNT[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST11|clk_proc:COUNT[0]~q\,
	combout => \INST11|clk_proc:COUNT[0]~0_combout\);

-- Location: FF_X18_Y13_N5
\INST11|clk_proc:COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \INST11|clk_proc:COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST11|clk_proc:COUNT[0]~q\);

-- Location: LCCOMB_X18_Y13_N10
\Clock_Selector|clk_divider:counter[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[1]~1_combout\ = (\Clock_Selector|clk_divider:counter[1]~q\ & (\INST11|clk_proc:COUNT[0]~q\ $ (VCC))) # (!\Clock_Selector|clk_divider:counter[1]~q\ & (\INST11|clk_proc:COUNT[0]~q\ & VCC))
-- \Clock_Selector|clk_divider:counter[1]~2\ = CARRY((\Clock_Selector|clk_divider:counter[1]~q\ & \INST11|clk_proc:COUNT[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[1]~q\,
	datab => \INST11|clk_proc:COUNT[0]~q\,
	datad => VCC,
	combout => \Clock_Selector|clk_divider:counter[1]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[1]~2\);

-- Location: FF_X18_Y13_N11
\Clock_Selector|clk_divider:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[1]~q\);

-- Location: LCCOMB_X18_Y13_N12
\Clock_Selector|clk_divider:counter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[2]~1_combout\ = (\Clock_Selector|clk_divider:counter[2]~q\ & (!\Clock_Selector|clk_divider:counter[1]~2\)) # (!\Clock_Selector|clk_divider:counter[2]~q\ & ((\Clock_Selector|clk_divider:counter[1]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[2]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[1]~2\) # (!\Clock_Selector|clk_divider:counter[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[2]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[1]~2\,
	combout => \Clock_Selector|clk_divider:counter[2]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[2]~2\);

-- Location: FF_X18_Y13_N13
\Clock_Selector|clk_divider:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[2]~q\);

-- Location: LCCOMB_X18_Y13_N14
\Clock_Selector|clk_divider:counter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[3]~1_combout\ = (\Clock_Selector|clk_divider:counter[3]~q\ & (\Clock_Selector|clk_divider:counter[2]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[3]~q\ & (!\Clock_Selector|clk_divider:counter[2]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[3]~2\ = CARRY((\Clock_Selector|clk_divider:counter[3]~q\ & !\Clock_Selector|clk_divider:counter[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[3]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[2]~2\,
	combout => \Clock_Selector|clk_divider:counter[3]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[3]~2\);

-- Location: FF_X18_Y13_N15
\Clock_Selector|clk_divider:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[3]~q\);

-- Location: LCCOMB_X18_Y13_N16
\Clock_Selector|clk_divider:counter[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[4]~1_combout\ = (\Clock_Selector|clk_divider:counter[4]~q\ & (!\Clock_Selector|clk_divider:counter[3]~2\)) # (!\Clock_Selector|clk_divider:counter[4]~q\ & ((\Clock_Selector|clk_divider:counter[3]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[4]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[3]~2\) # (!\Clock_Selector|clk_divider:counter[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[4]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[3]~2\,
	combout => \Clock_Selector|clk_divider:counter[4]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[4]~2\);

-- Location: FF_X18_Y13_N17
\Clock_Selector|clk_divider:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[4]~q\);

-- Location: LCCOMB_X18_Y13_N18
\Clock_Selector|clk_divider:counter[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[5]~1_combout\ = (\Clock_Selector|clk_divider:counter[5]~q\ & (\Clock_Selector|clk_divider:counter[4]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[5]~q\ & (!\Clock_Selector|clk_divider:counter[4]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[5]~2\ = CARRY((\Clock_Selector|clk_divider:counter[5]~q\ & !\Clock_Selector|clk_divider:counter[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[5]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[4]~2\,
	combout => \Clock_Selector|clk_divider:counter[5]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[5]~2\);

-- Location: FF_X18_Y13_N19
\Clock_Selector|clk_divider:counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[5]~q\);

-- Location: LCCOMB_X18_Y13_N20
\Clock_Selector|clk_divider:counter[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[6]~1_combout\ = (\Clock_Selector|clk_divider:counter[6]~q\ & (!\Clock_Selector|clk_divider:counter[5]~2\)) # (!\Clock_Selector|clk_divider:counter[6]~q\ & ((\Clock_Selector|clk_divider:counter[5]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[6]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[5]~2\) # (!\Clock_Selector|clk_divider:counter[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[6]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[5]~2\,
	combout => \Clock_Selector|clk_divider:counter[6]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[6]~2\);

-- Location: FF_X18_Y13_N21
\Clock_Selector|clk_divider:counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[6]~q\);

-- Location: LCCOMB_X18_Y13_N22
\Clock_Selector|clk_divider:counter[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[7]~1_combout\ = (\Clock_Selector|clk_divider:counter[7]~q\ & (\Clock_Selector|clk_divider:counter[6]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[7]~q\ & (!\Clock_Selector|clk_divider:counter[6]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[7]~2\ = CARRY((\Clock_Selector|clk_divider:counter[7]~q\ & !\Clock_Selector|clk_divider:counter[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[7]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[6]~2\,
	combout => \Clock_Selector|clk_divider:counter[7]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[7]~2\);

-- Location: FF_X18_Y13_N23
\Clock_Selector|clk_divider:counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[7]~q\);

-- Location: LCCOMB_X18_Y13_N24
\Clock_Selector|clk_divider:counter[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[8]~1_combout\ = (\Clock_Selector|clk_divider:counter[8]~q\ & (!\Clock_Selector|clk_divider:counter[7]~2\)) # (!\Clock_Selector|clk_divider:counter[8]~q\ & ((\Clock_Selector|clk_divider:counter[7]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[8]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[7]~2\) # (!\Clock_Selector|clk_divider:counter[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[8]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[7]~2\,
	combout => \Clock_Selector|clk_divider:counter[8]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[8]~2\);

-- Location: FF_X18_Y13_N25
\Clock_Selector|clk_divider:counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[8]~q\);

-- Location: LCCOMB_X18_Y13_N26
\Clock_Selector|clk_divider:counter[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[9]~1_combout\ = (\Clock_Selector|clk_divider:counter[9]~q\ & (\Clock_Selector|clk_divider:counter[8]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[9]~q\ & (!\Clock_Selector|clk_divider:counter[8]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[9]~2\ = CARRY((\Clock_Selector|clk_divider:counter[9]~q\ & !\Clock_Selector|clk_divider:counter[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[9]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[8]~2\,
	combout => \Clock_Selector|clk_divider:counter[9]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[9]~2\);

-- Location: FF_X18_Y13_N27
\Clock_Selector|clk_divider:counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[9]~q\);

-- Location: LCCOMB_X17_Y13_N6
\INST11|clk_proc:COUNT[10]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|clk_proc:COUNT[10]~2_cout\ = CARRY((\INST11|clk_proc:COUNT[0]~q\ & \Clock_Selector|clk_divider:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST11|clk_proc:COUNT[0]~q\,
	datab => \Clock_Selector|clk_divider:counter[1]~q\,
	datad => VCC,
	cout => \INST11|clk_proc:COUNT[10]~2_cout\);

-- Location: LCCOMB_X17_Y13_N8
\INST11|clk_proc:COUNT[10]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|clk_proc:COUNT[10]~4_cout\ = CARRY((!\INST11|clk_proc:COUNT[10]~2_cout\) # (!\Clock_Selector|clk_divider:counter[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[2]~q\,
	datad => VCC,
	cin => \INST11|clk_proc:COUNT[10]~2_cout\,
	cout => \INST11|clk_proc:COUNT[10]~4_cout\);

-- Location: LCCOMB_X17_Y13_N10
\INST11|clk_proc:COUNT[10]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|clk_proc:COUNT[10]~6_cout\ = CARRY((\Clock_Selector|clk_divider:counter[3]~q\ & !\INST11|clk_proc:COUNT[10]~4_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[3]~q\,
	datad => VCC,
	cin => \INST11|clk_proc:COUNT[10]~4_cout\,
	cout => \INST11|clk_proc:COUNT[10]~6_cout\);

-- Location: LCCOMB_X17_Y13_N12
\INST11|clk_proc:COUNT[10]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|clk_proc:COUNT[10]~8_cout\ = CARRY((!\INST11|clk_proc:COUNT[10]~6_cout\) # (!\Clock_Selector|clk_divider:counter[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[4]~q\,
	datad => VCC,
	cin => \INST11|clk_proc:COUNT[10]~6_cout\,
	cout => \INST11|clk_proc:COUNT[10]~8_cout\);

-- Location: LCCOMB_X17_Y13_N14
\INST11|clk_proc:COUNT[10]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|clk_proc:COUNT[10]~10_cout\ = CARRY((\Clock_Selector|clk_divider:counter[5]~q\ & !\INST11|clk_proc:COUNT[10]~8_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[5]~q\,
	datad => VCC,
	cin => \INST11|clk_proc:COUNT[10]~8_cout\,
	cout => \INST11|clk_proc:COUNT[10]~10_cout\);

-- Location: LCCOMB_X17_Y13_N16
\INST11|clk_proc:COUNT[10]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|clk_proc:COUNT[10]~12_cout\ = CARRY((!\INST11|clk_proc:COUNT[10]~10_cout\) # (!\Clock_Selector|clk_divider:counter[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[6]~q\,
	datad => VCC,
	cin => \INST11|clk_proc:COUNT[10]~10_cout\,
	cout => \INST11|clk_proc:COUNT[10]~12_cout\);

-- Location: LCCOMB_X17_Y13_N18
\INST11|clk_proc:COUNT[10]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|clk_proc:COUNT[10]~14_cout\ = CARRY((\Clock_Selector|clk_divider:counter[7]~q\ & !\INST11|clk_proc:COUNT[10]~12_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[7]~q\,
	datad => VCC,
	cin => \INST11|clk_proc:COUNT[10]~12_cout\,
	cout => \INST11|clk_proc:COUNT[10]~14_cout\);

-- Location: LCCOMB_X17_Y13_N20
\INST11|clk_proc:COUNT[10]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|clk_proc:COUNT[10]~16_cout\ = CARRY((!\INST11|clk_proc:COUNT[10]~14_cout\) # (!\Clock_Selector|clk_divider:counter[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[8]~q\,
	datad => VCC,
	cin => \INST11|clk_proc:COUNT[10]~14_cout\,
	cout => \INST11|clk_proc:COUNT[10]~16_cout\);

-- Location: LCCOMB_X17_Y13_N22
\INST11|clk_proc:COUNT[10]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|clk_proc:COUNT[10]~18_cout\ = CARRY((\Clock_Selector|clk_divider:counter[9]~q\ & !\INST11|clk_proc:COUNT[10]~16_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[9]~q\,
	datad => VCC,
	cin => \INST11|clk_proc:COUNT[10]~16_cout\,
	cout => \INST11|clk_proc:COUNT[10]~18_cout\);

-- Location: LCCOMB_X17_Y13_N24
\INST11|clk_proc:COUNT[10]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|clk_proc:COUNT[10]~19_combout\ = \INST11|clk_proc:COUNT[10]~18_cout\ $ (\INST11|clk_proc:COUNT[10]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \INST11|clk_proc:COUNT[10]~q\,
	cin => \INST11|clk_proc:COUNT[10]~18_cout\,
	combout => \INST11|clk_proc:COUNT[10]~19_combout\);

-- Location: FF_X17_Y13_N25
\INST11|clk_proc:COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \INST11|clk_proc:COUNT[10]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST11|clk_proc:COUNT[10]~q\);

-- Location: LCCOMB_X18_Y13_N28
\Clock_Selector|clk_divider:counter[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[1]~4_cout\ = CARRY((!\Clock_Selector|clk_divider:counter[9]~2\) # (!\INST11|clk_proc:COUNT[10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST11|clk_proc:COUNT[10]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[9]~2\,
	cout => \Clock_Selector|clk_divider:counter[1]~4_cout\);

-- Location: LCCOMB_X18_Y13_N30
\Clock_Selector|clk_divider:counter[11]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[11]~1_combout\ = (\Clock_Selector|clk_divider:counter[11]~q\ & (\Clock_Selector|clk_divider:counter[1]~4_cout\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[11]~q\ & (!\Clock_Selector|clk_divider:counter[1]~4_cout\ 
-- & VCC))
-- \Clock_Selector|clk_divider:counter[11]~2\ = CARRY((\Clock_Selector|clk_divider:counter[11]~q\ & !\Clock_Selector|clk_divider:counter[1]~4_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[11]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[1]~4_cout\,
	combout => \Clock_Selector|clk_divider:counter[11]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[11]~2\);

-- Location: FF_X18_Y13_N31
\Clock_Selector|clk_divider:counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[11]~q\);

-- Location: LCCOMB_X18_Y12_N0
\Clock_Selector|clk_divider:counter[12]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[12]~1_combout\ = (\Clock_Selector|clk_divider:counter[12]~q\ & (!\Clock_Selector|clk_divider:counter[11]~2\)) # (!\Clock_Selector|clk_divider:counter[12]~q\ & ((\Clock_Selector|clk_divider:counter[11]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[12]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[11]~2\) # (!\Clock_Selector|clk_divider:counter[12]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[12]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[11]~2\,
	combout => \Clock_Selector|clk_divider:counter[12]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[12]~2\);

-- Location: FF_X18_Y12_N1
\Clock_Selector|clk_divider:counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[12]~q\);

-- Location: LCCOMB_X18_Y12_N2
\Clock_Selector|clk_divider:counter[13]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[13]~1_combout\ = (\Clock_Selector|clk_divider:counter[13]~q\ & (\Clock_Selector|clk_divider:counter[12]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[13]~q\ & (!\Clock_Selector|clk_divider:counter[12]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[13]~2\ = CARRY((\Clock_Selector|clk_divider:counter[13]~q\ & !\Clock_Selector|clk_divider:counter[12]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[13]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[12]~2\,
	combout => \Clock_Selector|clk_divider:counter[13]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[13]~2\);

-- Location: FF_X18_Y12_N3
\Clock_Selector|clk_divider:counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[13]~q\);

-- Location: LCCOMB_X18_Y12_N4
\Clock_Selector|clk_divider:counter[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[14]~1_combout\ = (\Clock_Selector|clk_divider:counter[14]~q\ & (!\Clock_Selector|clk_divider:counter[13]~2\)) # (!\Clock_Selector|clk_divider:counter[14]~q\ & ((\Clock_Selector|clk_divider:counter[13]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[14]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[13]~2\) # (!\Clock_Selector|clk_divider:counter[14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[14]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[13]~2\,
	combout => \Clock_Selector|clk_divider:counter[14]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[14]~2\);

-- Location: FF_X18_Y12_N5
\Clock_Selector|clk_divider:counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[14]~q\);

-- Location: LCCOMB_X18_Y12_N6
\Clock_Selector|clk_divider:counter[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[15]~1_combout\ = (\Clock_Selector|clk_divider:counter[15]~q\ & (\Clock_Selector|clk_divider:counter[14]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[15]~q\ & (!\Clock_Selector|clk_divider:counter[14]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[15]~2\ = CARRY((\Clock_Selector|clk_divider:counter[15]~q\ & !\Clock_Selector|clk_divider:counter[14]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[15]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[14]~2\,
	combout => \Clock_Selector|clk_divider:counter[15]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[15]~2\);

-- Location: FF_X18_Y12_N7
\Clock_Selector|clk_divider:counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[15]~q\);

-- Location: LCCOMB_X18_Y12_N8
\Clock_Selector|clk_divider:counter[16]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[16]~1_combout\ = (\Clock_Selector|clk_divider:counter[16]~q\ & (!\Clock_Selector|clk_divider:counter[15]~2\)) # (!\Clock_Selector|clk_divider:counter[16]~q\ & ((\Clock_Selector|clk_divider:counter[15]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[16]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[15]~2\) # (!\Clock_Selector|clk_divider:counter[16]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[16]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[15]~2\,
	combout => \Clock_Selector|clk_divider:counter[16]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[16]~2\);

-- Location: FF_X18_Y12_N9
\Clock_Selector|clk_divider:counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[16]~q\);

-- Location: LCCOMB_X18_Y12_N10
\Clock_Selector|clk_divider:counter[17]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[17]~1_combout\ = (\Clock_Selector|clk_divider:counter[17]~q\ & (\Clock_Selector|clk_divider:counter[16]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[17]~q\ & (!\Clock_Selector|clk_divider:counter[16]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[17]~2\ = CARRY((\Clock_Selector|clk_divider:counter[17]~q\ & !\Clock_Selector|clk_divider:counter[16]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[17]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[16]~2\,
	combout => \Clock_Selector|clk_divider:counter[17]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[17]~2\);

-- Location: FF_X18_Y12_N11
\Clock_Selector|clk_divider:counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[17]~q\);

-- Location: LCCOMB_X18_Y12_N12
\Clock_Selector|clk_divider:counter[18]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[18]~1_combout\ = (\Clock_Selector|clk_divider:counter[18]~q\ & (!\Clock_Selector|clk_divider:counter[17]~2\)) # (!\Clock_Selector|clk_divider:counter[18]~q\ & ((\Clock_Selector|clk_divider:counter[17]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[18]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[17]~2\) # (!\Clock_Selector|clk_divider:counter[18]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[18]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[17]~2\,
	combout => \Clock_Selector|clk_divider:counter[18]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[18]~2\);

-- Location: FF_X18_Y12_N13
\Clock_Selector|clk_divider:counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[18]~q\);

-- Location: LCCOMB_X18_Y12_N14
\Clock_Selector|clk_divider:counter[19]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[19]~1_combout\ = (\Clock_Selector|clk_divider:counter[19]~q\ & (\Clock_Selector|clk_divider:counter[18]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[19]~q\ & (!\Clock_Selector|clk_divider:counter[18]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[19]~2\ = CARRY((\Clock_Selector|clk_divider:counter[19]~q\ & !\Clock_Selector|clk_divider:counter[18]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[19]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[18]~2\,
	combout => \Clock_Selector|clk_divider:counter[19]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[19]~2\);

-- Location: FF_X18_Y12_N15
\Clock_Selector|clk_divider:counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[19]~q\);

-- Location: LCCOMB_X18_Y12_N16
\Clock_Selector|clk_divider:counter[20]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[20]~1_combout\ = (\Clock_Selector|clk_divider:counter[20]~q\ & (!\Clock_Selector|clk_divider:counter[19]~2\)) # (!\Clock_Selector|clk_divider:counter[20]~q\ & ((\Clock_Selector|clk_divider:counter[19]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[20]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[19]~2\) # (!\Clock_Selector|clk_divider:counter[20]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[20]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[19]~2\,
	combout => \Clock_Selector|clk_divider:counter[20]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[20]~2\);

-- Location: FF_X18_Y12_N17
\Clock_Selector|clk_divider:counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[20]~q\);

-- Location: LCCOMB_X18_Y12_N18
\Clock_Selector|clk_divider:counter[21]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[21]~1_combout\ = (\Clock_Selector|clk_divider:counter[21]~q\ & (\Clock_Selector|clk_divider:counter[20]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[21]~q\ & (!\Clock_Selector|clk_divider:counter[20]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[21]~2\ = CARRY((\Clock_Selector|clk_divider:counter[21]~q\ & !\Clock_Selector|clk_divider:counter[20]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[21]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[20]~2\,
	combout => \Clock_Selector|clk_divider:counter[21]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[21]~2\);

-- Location: FF_X18_Y12_N19
\Clock_Selector|clk_divider:counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[21]~q\);

-- Location: LCCOMB_X18_Y12_N20
\Clock_Selector|clk_divider:counter[22]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[22]~1_combout\ = (\Clock_Selector|clk_divider:counter[22]~q\ & (!\Clock_Selector|clk_divider:counter[21]~2\)) # (!\Clock_Selector|clk_divider:counter[22]~q\ & ((\Clock_Selector|clk_divider:counter[21]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[22]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[21]~2\) # (!\Clock_Selector|clk_divider:counter[22]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[22]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[21]~2\,
	combout => \Clock_Selector|clk_divider:counter[22]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[22]~2\);

-- Location: FF_X18_Y12_N21
\Clock_Selector|clk_divider:counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[22]~q\);

-- Location: LCCOMB_X18_Y12_N22
\Clock_Selector|clk_divider:counter[23]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[23]~1_combout\ = \Clock_Selector|clk_divider:counter[22]~2\ $ (!\Clock_Selector|clk_divider:counter[23]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Clock_Selector|clk_divider:counter[23]~q\,
	cin => \Clock_Selector|clk_divider:counter[22]~2\,
	combout => \Clock_Selector|clk_divider:counter[23]~1_combout\);

-- Location: FF_X18_Y12_N23
\Clock_Selector|clk_divider:counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[23]~q\);

-- Location: IOIBUF_X10_Y22_N15
\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: CLKCTRL_G9
\Clock_Selector|clk_divider:counter[23]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock_Selector|clk_divider:counter[23]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\);

-- Location: IOIBUF_X6_Y0_N15
\pb_n[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(3),
	o => \pb_n[3]~input_o\);

-- Location: LCCOMB_X18_Y11_N28
\INST1|stages_pb3[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|stages_pb3[0]~0_combout\ = !\pb_n[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pb_n[3]~input_o\,
	combout => \INST1|stages_pb3[0]~0_combout\);

-- Location: FF_X18_Y11_N29
\INST1|stages_pb3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \INST1|stages_pb3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|stages_pb3\(0));

-- Location: LCCOMB_X18_Y11_N12
\INST1|stages_pb3[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|stages_pb3[1]~feeder_combout\ = \INST1|stages_pb3\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST1|stages_pb3\(0),
	combout => \INST1|stages_pb3[1]~feeder_combout\);

-- Location: FF_X18_Y11_N13
\INST1|stages_pb3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \INST1|stages_pb3[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|stages_pb3\(1));

-- Location: LCCOMB_X18_Y11_N10
\INST1|sync_reset~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|sync_reset~feeder_combout\ = \INST1|stages_pb3\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST1|stages_pb3\(1),
	combout => \INST1|sync_reset~feeder_combout\);

-- Location: FF_X18_Y11_N11
\INST1|sync_reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \INST1|sync_reset~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|sync_reset~q\);

-- Location: IOIBUF_X9_Y0_N29
\pb_n[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(2),
	o => \pb_n[2]~input_o\);

-- Location: LCCOMB_X20_Y11_N12
\INST1|stages_pb2[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|stages_pb2[0]~0_combout\ = !\pb_n[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pb_n[2]~input_o\,
	combout => \INST1|stages_pb2[0]~0_combout\);

-- Location: FF_X20_Y11_N13
\INST1|stages_pb2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \INST1|stages_pb2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|stages_pb2\(0));

-- Location: LCCOMB_X20_Y11_N28
\INST1|stages_pb2[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|stages_pb2[1]~feeder_combout\ = \INST1|stages_pb2\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST1|stages_pb2\(0),
	combout => \INST1|stages_pb2[1]~feeder_combout\);

-- Location: FF_X20_Y11_N29
\INST1|stages_pb2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \INST1|stages_pb2[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|stages_pb2\(1));

-- Location: LCCOMB_X20_Y11_N24
\INST1|sync_motion~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|sync_motion~feeder_combout\ = \INST1|stages_pb2\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST1|stages_pb2\(1),
	combout => \INST1|sync_motion~feeder_combout\);

-- Location: FF_X20_Y11_N25
\INST1|sync_motion\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \INST1|sync_motion~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|sync_motion~q\);

-- Location: FF_X18_Y11_N7
\INST4|registers[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	asdata => \sw[5]~input_o\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	sload => VCC,
	ena => \INST1|sync_motion~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST4|registers\(1));

-- Location: IOIBUF_X10_Y21_N15
\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: FF_X18_Y11_N27
\INST4|registers[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	asdata => \sw[4]~input_o\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	sload => VCC,
	ena => \INST1|sync_motion~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST4|registers\(0));

-- Location: LCCOMB_X18_Y11_N26
\INST6|INST1|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|INST1|Selector1~0_combout\ = (\INST4|registers\(1) & ((\INST4|registers\(0) $ (\INST2|ud_bin_counter\(0))) # (!\INST2|ud_bin_counter\(1)))) # (!\INST4|registers\(1) & ((\INST2|ud_bin_counter\(1)) # (\INST4|registers\(0) $ 
-- (\INST2|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4|registers\(1),
	datab => \INST2|ud_bin_counter\(1),
	datac => \INST4|registers\(0),
	datad => \INST2|ud_bin_counter\(0),
	combout => \INST6|INST1|Selector1~0_combout\);

-- Location: LCCOMB_X19_Y11_N10
\INST2|ud_bin_counter[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|ud_bin_counter[2]~8_combout\ = ((\INST2|process_0~0_combout\ $ (\INST2|ud_bin_counter\(2) $ (\INST2|ud_bin_counter[1]~7\)))) # (GND)
-- \INST2|ud_bin_counter[2]~9\ = CARRY((\INST2|process_0~0_combout\ & (\INST2|ud_bin_counter\(2) & !\INST2|ud_bin_counter[1]~7\)) # (!\INST2|process_0~0_combout\ & ((\INST2|ud_bin_counter\(2)) # (!\INST2|ud_bin_counter[1]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|process_0~0_combout\,
	datab => \INST2|ud_bin_counter\(2),
	datad => VCC,
	cin => \INST2|ud_bin_counter[1]~7\,
	combout => \INST2|ud_bin_counter[2]~8_combout\,
	cout => \INST2|ud_bin_counter[2]~9\);

-- Location: LCCOMB_X19_Y11_N12
\INST2|ud_bin_counter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|ud_bin_counter[3]~10_combout\ = \INST2|ud_bin_counter\(3) $ (\INST2|process_0~0_combout\ $ (!\INST2|ud_bin_counter[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|ud_bin_counter\(3),
	datab => \INST2|process_0~0_combout\,
	cin => \INST2|ud_bin_counter[2]~9\,
	combout => \INST2|ud_bin_counter[3]~10_combout\);

-- Location: FF_X19_Y11_N13
\INST2|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	d => \INST2|ud_bin_counter[3]~10_combout\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	ena => \INST6|INST1|clk_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|ud_bin_counter\(3));

-- Location: IOIBUF_X1_Y10_N15
\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: FF_X18_Y11_N25
\INST4|registers[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	asdata => \sw[7]~input_o\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	sload => VCC,
	ena => \INST1|sync_motion~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST4|registers\(3));

-- Location: IOIBUF_X3_Y0_N8
\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: FF_X18_Y11_N17
\INST4|registers[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	asdata => \sw[6]~input_o\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	sload => VCC,
	ena => \INST1|sync_motion~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST4|registers\(2));

-- Location: LCCOMB_X19_Y11_N18
\INST7|ALTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|ALTB~0_combout\ = (\INST2|ud_bin_counter\(3) & (\INST4|registers\(3) & (\INST4|registers\(2) & !\INST2|ud_bin_counter\(2)))) # (!\INST2|ud_bin_counter\(3) & ((\INST4|registers\(3)) # ((\INST4|registers\(2) & !\INST2|ud_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|ud_bin_counter\(3),
	datab => \INST4|registers\(3),
	datac => \INST4|registers\(2),
	datad => \INST2|ud_bin_counter\(2),
	combout => \INST7|ALTB~0_combout\);

-- Location: LCCOMB_X18_Y11_N0
\INST7|ALTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|ALTB~1_combout\ = (\INST4|registers\(1) & (((\INST4|registers\(0) & !\INST2|ud_bin_counter\(0))) # (!\INST2|ud_bin_counter\(1)))) # (!\INST4|registers\(1) & (!\INST2|ud_bin_counter\(1) & (\INST4|registers\(0) & !\INST2|ud_bin_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4|registers\(1),
	datab => \INST2|ud_bin_counter\(1),
	datac => \INST4|registers\(0),
	datad => \INST2|ud_bin_counter\(0),
	combout => \INST7|ALTB~1_combout\);

-- Location: LCCOMB_X19_Y11_N22
\INST6|INST1|clk_en~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|INST1|clk_en~0_combout\ = (!\INST12|Equal1~0_combout\ & ((\INST7|ALTB~0_combout\) # ((\INST7|AGTB~0_combout\ & \INST7|ALTB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|AGTB~0_combout\,
	datab => \INST7|ALTB~0_combout\,
	datac => \INST7|ALTB~1_combout\,
	datad => \INST12|Equal1~0_combout\,
	combout => \INST6|INST1|clk_en~0_combout\);

-- Location: LCCOMB_X19_Y11_N14
\INST6|INST1|clk_en~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|INST1|clk_en~1_combout\ = (\INST6|INST1|current_state.MOTION_CASE~q\ & ((\INST6|INST1|clk_en~0_combout\) # (!\INST6|INST1|Decoder_Section~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|INST1|current_state.MOTION_CASE~q\,
	datac => \INST6|INST1|clk_en~0_combout\,
	datad => \INST6|INST1|Decoder_Section~0_combout\,
	combout => \INST6|INST1|clk_en~1_combout\);

-- Location: LCCOMB_X17_Y11_N0
\INST3|ud_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|ud_bin_counter[1]~5_cout\ = CARRY(\INST3|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST3|ud_bin_counter\(0),
	datad => VCC,
	cout => \INST3|ud_bin_counter[1]~5_cout\);

-- Location: LCCOMB_X17_Y11_N2
\INST3|ud_bin_counter[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|ud_bin_counter[1]~6_combout\ = (\INST3|process_0~0_combout\ & ((\INST3|ud_bin_counter\(1) & (!\INST3|ud_bin_counter[1]~5_cout\)) # (!\INST3|ud_bin_counter\(1) & ((\INST3|ud_bin_counter[1]~5_cout\) # (GND))))) # (!\INST3|process_0~0_combout\ & 
-- ((\INST3|ud_bin_counter\(1) & (\INST3|ud_bin_counter[1]~5_cout\ & VCC)) # (!\INST3|ud_bin_counter\(1) & (!\INST3|ud_bin_counter[1]~5_cout\))))
-- \INST3|ud_bin_counter[1]~7\ = CARRY((\INST3|process_0~0_combout\ & ((!\INST3|ud_bin_counter[1]~5_cout\) # (!\INST3|ud_bin_counter\(1)))) # (!\INST3|process_0~0_combout\ & (!\INST3|ud_bin_counter\(1) & !\INST3|ud_bin_counter[1]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|process_0~0_combout\,
	datab => \INST3|ud_bin_counter\(1),
	datad => VCC,
	cin => \INST3|ud_bin_counter[1]~5_cout\,
	combout => \INST3|ud_bin_counter[1]~6_combout\,
	cout => \INST3|ud_bin_counter[1]~7\);

-- Location: FF_X17_Y11_N3
\INST3|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	d => \INST3|ud_bin_counter[1]~6_combout\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	ena => \INST6|INST2|clk_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|ud_bin_counter\(1));

-- Location: IOIBUF_X10_Y19_N15
\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: FF_X18_Y11_N3
\INST5|registers[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	asdata => \sw[1]~input_o\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	sload => VCC,
	ena => \INST1|sync_motion~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|registers\(1));

-- Location: IOIBUF_X0_Y5_N1
\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: FF_X18_Y11_N23
\INST5|registers[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	asdata => \sw[0]~input_o\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	sload => VCC,
	ena => \INST1|sync_motion~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|registers\(0));

-- Location: LCCOMB_X18_Y11_N20
\INST8|ALTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|ALTB~1_combout\ = (\INST3|ud_bin_counter\(1) & (\INST5|registers\(1) & (\INST5|registers\(0) & !\INST3|ud_bin_counter\(0)))) # (!\INST3|ud_bin_counter\(1) & ((\INST5|registers\(1)) # ((\INST5|registers\(0) & !\INST3|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|ud_bin_counter\(1),
	datab => \INST5|registers\(1),
	datac => \INST5|registers\(0),
	datad => \INST3|ud_bin_counter\(0),
	combout => \INST8|ALTB~1_combout\);

-- Location: LCCOMB_X17_Y11_N4
\INST3|ud_bin_counter[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|ud_bin_counter[2]~8_combout\ = ((\INST3|process_0~0_combout\ $ (\INST3|ud_bin_counter\(2) $ (\INST3|ud_bin_counter[1]~7\)))) # (GND)
-- \INST3|ud_bin_counter[2]~9\ = CARRY((\INST3|process_0~0_combout\ & (\INST3|ud_bin_counter\(2) & !\INST3|ud_bin_counter[1]~7\)) # (!\INST3|process_0~0_combout\ & ((\INST3|ud_bin_counter\(2)) # (!\INST3|ud_bin_counter[1]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|process_0~0_combout\,
	datab => \INST3|ud_bin_counter\(2),
	datad => VCC,
	cin => \INST3|ud_bin_counter[1]~7\,
	combout => \INST3|ud_bin_counter[2]~8_combout\,
	cout => \INST3|ud_bin_counter[2]~9\);

-- Location: FF_X17_Y11_N5
\INST3|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	d => \INST3|ud_bin_counter[2]~8_combout\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	ena => \INST6|INST2|clk_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|ud_bin_counter\(2));

-- Location: IOIBUF_X10_Y20_N15
\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: FF_X18_Y11_N5
\INST5|registers[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	asdata => \sw[3]~input_o\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	sload => VCC,
	ena => \INST1|sync_motion~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|registers\(3));

-- Location: IOIBUF_X10_Y19_N22
\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: FF_X18_Y11_N19
\INST5|registers[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	asdata => \sw[2]~input_o\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	sload => VCC,
	ena => \INST1|sync_motion~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|registers\(2));

-- Location: LCCOMB_X18_Y11_N4
\INST8|ALTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|ALTB~0_combout\ = (\INST3|ud_bin_counter\(3) & (!\INST3|ud_bin_counter\(2) & (\INST5|registers\(3) & \INST5|registers\(2)))) # (!\INST3|ud_bin_counter\(3) & ((\INST5|registers\(3)) # ((!\INST3|ud_bin_counter\(2) & \INST5|registers\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|ud_bin_counter\(2),
	datab => \INST3|ud_bin_counter\(3),
	datac => \INST5|registers\(3),
	datad => \INST5|registers\(2),
	combout => \INST8|ALTB~0_combout\);

-- Location: LCCOMB_X18_Y11_N18
\INST8|AGTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|AGTB~0_combout\ = (\INST5|registers\(3) & (\INST3|ud_bin_counter\(3) & (\INST5|registers\(2) $ (!\INST3|ud_bin_counter\(2))))) # (!\INST5|registers\(3) & (!\INST3|ud_bin_counter\(3) & (\INST5|registers\(2) $ (!\INST3|ud_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|registers\(3),
	datab => \INST3|ud_bin_counter\(3),
	datac => \INST5|registers\(2),
	datad => \INST3|ud_bin_counter\(2),
	combout => \INST8|AGTB~0_combout\);

-- Location: LCCOMB_X17_Y11_N14
\INST6|INST2|clk_en~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|INST2|clk_en~0_combout\ = (!\INST12|Equal1~0_combout\ & ((\INST8|ALTB~0_combout\) # ((\INST8|ALTB~1_combout\ & \INST8|AGTB~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|ALTB~1_combout\,
	datab => \INST12|Equal1~0_combout\,
	datac => \INST8|ALTB~0_combout\,
	datad => \INST8|AGTB~0_combout\,
	combout => \INST6|INST2|clk_en~0_combout\);

-- Location: LCCOMB_X18_Y11_N22
\INST8|AGTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|AGTB~1_combout\ = (\INST3|ud_bin_counter\(1) & (((!\INST5|registers\(0) & \INST3|ud_bin_counter\(0))) # (!\INST5|registers\(1)))) # (!\INST3|ud_bin_counter\(1) & (!\INST5|registers\(1) & (!\INST5|registers\(0) & \INST3|ud_bin_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|ud_bin_counter\(1),
	datab => \INST5|registers\(1),
	datac => \INST5|registers\(0),
	datad => \INST3|ud_bin_counter\(0),
	combout => \INST8|AGTB~1_combout\);

-- Location: LCCOMB_X18_Y11_N14
\INST6|INST2|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|INST2|Selector2~0_combout\ = (\INST8|ALTB~0_combout\) # ((\INST8|AGTB~0_combout\ & ((\INST8|AGTB~1_combout\) # (\INST8|ALTB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|AGTB~1_combout\,
	datab => \INST8|ALTB~0_combout\,
	datac => \INST8|AGTB~0_combout\,
	datad => \INST8|ALTB~1_combout\,
	combout => \INST6|INST2|Selector2~0_combout\);

-- Location: LCCOMB_X17_Y11_N24
\INST6|INST2|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|INST2|Selector2~1_combout\ = ((!\INST12|Equal1~0_combout\ & ((\INST8|AGTB~2_combout\) # (\INST6|INST2|Selector2~0_combout\)))) # (!\INST6|INST2|current_state.MOTION_CASE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|INST2|current_state.MOTION_CASE~q\,
	datab => \INST12|Equal1~0_combout\,
	datac => \INST8|AGTB~2_combout\,
	datad => \INST6|INST2|Selector2~0_combout\,
	combout => \INST6|INST2|Selector2~1_combout\);

-- Location: LCCOMB_X17_Y11_N26
\INST6|INST2|up_down\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|INST2|up_down~combout\ = (\INST6|INST2|Selector2~1_combout\ & (\INST6|INST2|Decoder_Section~0_combout\)) # (!\INST6|INST2|Selector2~1_combout\ & ((\INST6|INST2|up_down~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|INST2|Decoder_Section~0_combout\,
	datac => \INST6|INST2|up_down~combout\,
	datad => \INST6|INST2|Selector2~1_combout\,
	combout => \INST6|INST2|up_down~combout\);

-- Location: LCCOMB_X17_Y11_N16
\INST3|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|process_0~0_combout\ = (\INST6|INST2|current_state.MOTION_CASE~q\ & (\INST6|INST2|up_down~combout\ & ((\INST6|INST2|clk_en~0_combout\) # (!\INST6|INST2|Decoder_Section~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|INST2|current_state.MOTION_CASE~q\,
	datab => \INST6|INST2|Decoder_Section~0_combout\,
	datac => \INST6|INST2|clk_en~0_combout\,
	datad => \INST6|INST2|up_down~combout\,
	combout => \INST3|process_0~0_combout\);

-- Location: LCCOMB_X17_Y11_N6
\INST3|ud_bin_counter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|ud_bin_counter[3]~10_combout\ = \INST3|ud_bin_counter\(3) $ (\INST3|ud_bin_counter[2]~9\ $ (!\INST3|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|ud_bin_counter\(3),
	datad => \INST3|process_0~0_combout\,
	cin => \INST3|ud_bin_counter[2]~9\,
	combout => \INST3|ud_bin_counter[3]~10_combout\);

-- Location: FF_X17_Y11_N7
\INST3|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	d => \INST3|ud_bin_counter[3]~10_combout\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	ena => \INST6|INST2|clk_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|ud_bin_counter\(3));

-- Location: LCCOMB_X17_Y11_N8
\INST8|AGTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|AGTB~2_combout\ = (\INST3|ud_bin_counter\(3) & (((\INST3|ud_bin_counter\(2) & !\INST5|registers\(2))) # (!\INST5|registers\(3)))) # (!\INST3|ud_bin_counter\(3) & (\INST3|ud_bin_counter\(2) & (!\INST5|registers\(2) & !\INST5|registers\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|ud_bin_counter\(3),
	datab => \INST3|ud_bin_counter\(2),
	datac => \INST5|registers\(2),
	datad => \INST5|registers\(3),
	combout => \INST8|AGTB~2_combout\);

-- Location: LCCOMB_X17_Y11_N18
\INST6|INST2|Decoder_Section~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|INST2|Decoder_Section~0_combout\ = (\INST12|Equal1~0_combout\) # ((!\INST8|AGTB~2_combout\ & ((!\INST8|AGTB~0_combout\) # (!\INST8|AGTB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|AGTB~2_combout\,
	datab => \INST8|AGTB~1_combout\,
	datac => \INST12|Equal1~0_combout\,
	datad => \INST8|AGTB~0_combout\,
	combout => \INST6|INST2|Decoder_Section~0_combout\);

-- Location: LCCOMB_X17_Y11_N28
\INST3|ud_bin_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|ud_bin_counter[0]~3_combout\ = \INST3|ud_bin_counter\(0) $ (((\INST6|INST2|current_state.MOTION_CASE~q\ & ((\INST6|INST2|clk_en~0_combout\) # (!\INST6|INST2|Decoder_Section~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|INST2|Decoder_Section~0_combout\,
	datab => \INST6|INST2|current_state.MOTION_CASE~q\,
	datac => \INST3|ud_bin_counter\(0),
	datad => \INST6|INST2|clk_en~0_combout\,
	combout => \INST3|ud_bin_counter[0]~3_combout\);

-- Location: FF_X17_Y11_N29
\INST3|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	d => \INST3|ud_bin_counter[0]~3_combout\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|ud_bin_counter\(0));

-- Location: LCCOMB_X18_Y11_N2
\INST6|INST2|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|INST2|Selector1~0_combout\ = (\INST3|ud_bin_counter\(0) & ((\INST5|registers\(1) $ (\INST3|ud_bin_counter\(1))) # (!\INST5|registers\(0)))) # (!\INST3|ud_bin_counter\(0) & ((\INST5|registers\(0)) # (\INST5|registers\(1) $ 
-- (\INST3|ud_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|ud_bin_counter\(0),
	datab => \INST5|registers\(0),
	datac => \INST5|registers\(1),
	datad => \INST3|ud_bin_counter\(1),
	combout => \INST6|INST2|Selector1~0_combout\);

-- Location: LCCOMB_X17_Y11_N22
\INST6|INST2|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|INST2|Selector1~1_combout\ = (\INST6|INST2|current_state.MOTION_CASE~q\ & ((\INST6|INST2|Selector1~0_combout\) # ((\INST12|Equal1~0_combout\) # (!\INST8|AGTB~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|INST2|Selector1~0_combout\,
	datab => \INST12|Equal1~0_combout\,
	datac => \INST6|INST2|current_state.MOTION_CASE~q\,
	datad => \INST8|AGTB~0_combout\,
	combout => \INST6|INST2|Selector1~1_combout\);

-- Location: LCCOMB_X18_Y11_N24
\INST6|INST2|next_state.TRANSITION~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|INST2|next_state.TRANSITION~0_combout\ = (!\INST6|INST2|current_state.MOTION_CASE~q\ & \INST1|sync_motion~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST6|INST2|current_state.MOTION_CASE~q\,
	datad => \INST1|sync_motion~q\,
	combout => \INST6|INST2|next_state.TRANSITION~0_combout\);

-- Location: LCCOMB_X18_Y11_N30
\INST6|INST2|current_state.TRANSITION~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|INST2|current_state.TRANSITION~feeder_combout\ = \INST6|INST2|next_state.TRANSITION~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST6|INST2|next_state.TRANSITION~0_combout\,
	combout => \INST6|INST2|current_state.TRANSITION~feeder_combout\);

-- Location: FF_X18_Y11_N31
\INST6|INST2|current_state.TRANSITION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \INST6|INST2|current_state.TRANSITION~feeder_combout\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST6|INST2|current_state.TRANSITION~q\);

-- Location: LCCOMB_X17_Y11_N10
\INST6|INST2|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|INST2|Selector1~2_combout\ = (\INST6|INST2|Selector1~1_combout\) # ((\INST6|INST2|current_state.TRANSITION~q\ & !\INST1|sync_motion~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST6|INST2|Selector1~1_combout\,
	datac => \INST6|INST2|current_state.TRANSITION~q\,
	datad => \INST1|sync_motion~q\,
	combout => \INST6|INST2|Selector1~2_combout\);

-- Location: FF_X17_Y11_N11
\INST6|INST2|current_state.MOTION_CASE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	d => \INST6|INST2|Selector1~2_combout\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST6|INST2|current_state.MOTION_CASE~q\);

-- Location: LCCOMB_X17_Y11_N12
\INST6|INST2|clk_en~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|INST2|clk_en~1_combout\ = (\INST6|INST2|current_state.MOTION_CASE~q\ & ((\INST6|INST2|clk_en~0_combout\) # (!\INST6|INST2|Decoder_Section~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|INST2|current_state.MOTION_CASE~q\,
	datac => \INST6|INST2|clk_en~0_combout\,
	datad => \INST6|INST2|Decoder_Section~0_combout\,
	combout => \INST6|INST2|clk_en~1_combout\);

-- Location: LCCOMB_X16_Y11_N8
\INST13|sreg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|sreg~2_combout\ = (\INST13|sreg\(1) & \INST12|current_state.MRIGHT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST13|sreg\(1),
	datad => \INST12|current_state.MRIGHT~q\,
	combout => \INST13|sreg~2_combout\);

-- Location: LCCOMB_X16_Y11_N0
\INST12|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|Selector5~0_combout\ = ((\INST12|current_state.MRIGHT~q\ & ((!\INST12|Equal0~0_combout\))) # (!\INST12|current_state.MRIGHT~q\ & (!\INST12|Equal1~0_combout\))) # (!\INST12|current_state.BC~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|Equal1~0_combout\,
	datab => \INST12|Equal0~0_combout\,
	datac => \INST12|current_state.BC~q\,
	datad => \INST12|current_state.MRIGHT~q\,
	combout => \INST12|Selector5~0_combout\);

-- Location: IOIBUF_X9_Y0_N22
\pb_n[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(1),
	o => \pb_n[1]~input_o\);

-- Location: LCCOMB_X13_Y11_N14
\INST1|stages_pb1[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|stages_pb1[0]~0_combout\ = !\pb_n[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb_n[1]~input_o\,
	combout => \INST1|stages_pb1[0]~0_combout\);

-- Location: FF_X13_Y11_N15
\INST1|stages_pb1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \INST1|stages_pb1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|stages_pb1\(0));

-- Location: LCCOMB_X14_Y11_N24
\INST1|stages_pb1[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|stages_pb1[1]~feeder_combout\ = \INST1|stages_pb1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST1|stages_pb1\(0),
	combout => \INST1|stages_pb1[1]~feeder_combout\);

-- Location: FF_X14_Y11_N25
\INST1|stages_pb1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \INST1|stages_pb1[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|stages_pb1\(1));

-- Location: FF_X15_Y11_N23
\INST1|sync_extender\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	asdata => \INST1|stages_pb1\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|sync_extender~q\);

-- Location: LCCOMB_X16_Y11_N30
\INST12|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|Selector5~1_combout\ = (\INST12|Selector5~0_combout\ & !\INST1|sync_extender~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|Selector5~0_combout\,
	datad => \INST1|sync_extender~q\,
	combout => \INST12|Selector5~1_combout\);

-- Location: LCCOMB_X16_Y11_N28
\INST12|Selector5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|Selector5~2_combout\ = (\INST12|Selector5~1_combout\) # ((!\INST12|current_state.BC~q\ & ((\INST6|INST2|clk_en~1_combout\) # (\INST6|INST1|clk_en~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|INST2|clk_en~1_combout\,
	datab => \INST6|INST1|clk_en~1_combout\,
	datac => \INST12|Selector5~1_combout\,
	datad => \INST12|current_state.BC~q\,
	combout => \INST12|Selector5~2_combout\);

-- Location: LCCOMB_X16_Y11_N10
\INST12|next_state.BC_154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|next_state.BC_154~combout\ = (GLOBAL(\INST12|Selector3~0clkctrl_outclk\) & (\INST12|Selector5~2_combout\)) # (!GLOBAL(\INST12|Selector3~0clkctrl_outclk\) & ((\INST12|next_state.BC_154~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST12|Selector5~2_combout\,
	datac => \INST12|Selector3~0clkctrl_outclk\,
	datad => \INST12|next_state.BC_154~combout\,
	combout => \INST12|next_state.BC_154~combout\);

-- Location: LCCOMB_X16_Y11_N24
\INST12|current_state.BC~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|current_state.BC~0_combout\ = !\INST12|next_state.BC_154~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST12|next_state.BC_154~combout\,
	combout => \INST12|current_state.BC~0_combout\);

-- Location: FF_X16_Y11_N25
\INST12|current_state.BC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \INST12|current_state.BC~0_combout\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST12|current_state.BC~q\);

-- Location: LCCOMB_X15_Y11_N28
\INST12|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|Selector0~0_combout\ = (\INST12|current_state.BC~q\ & !\INST1|sync_extender~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST12|current_state.BC~q\,
	datac => \INST1|sync_extender~q\,
	combout => \INST12|Selector0~0_combout\);

-- Location: FF_X16_Y11_N13
\INST13|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	asdata => \INST13|sreg~2_combout\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	sload => VCC,
	ena => \INST12|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST13|sreg\(0));

-- Location: LCCOMB_X15_Y11_N18
\INST12|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|Equal0~0_combout\ = (((!\INST13|sreg\(1)) # (!\INST13|sreg\(0))) # (!\INST13|sreg\(3))) # (!\INST13|sreg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST13|sreg\(2),
	datab => \INST13|sreg\(3),
	datac => \INST13|sreg\(0),
	datad => \INST13|sreg\(1),
	combout => \INST12|Equal0~0_combout\);

-- Location: LCCOMB_X15_Y11_N20
\INST12|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|Selector2~1_combout\ = (\INST12|Equal0~0_combout\ & (\INST1|sync_extender~q\ & !\INST12|current_state.BC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST12|Equal0~0_combout\,
	datac => \INST1|sync_extender~q\,
	datad => \INST12|current_state.BC~q\,
	combout => \INST12|Selector2~1_combout\);

-- Location: LCCOMB_X16_Y11_N4
\INST12|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|Selector3~0_combout\ = ((\INST6|INST1|clk_en~1_combout\) # ((\INST6|INST2|clk_en~1_combout\) # (!\INST12|Selector2~1_combout\))) # (!\INST12|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|Equal1~0_combout\,
	datab => \INST6|INST1|clk_en~1_combout\,
	datac => \INST6|INST2|clk_en~1_combout\,
	datad => \INST12|Selector2~1_combout\,
	combout => \INST12|Selector3~0_combout\);

-- Location: CLKCTRL_G6
\INST12|Selector3~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \INST12|Selector3~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \INST12|Selector3~0clkctrl_outclk\);

-- Location: LCCOMB_X16_Y11_N16
\INST12|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|Selector2~0_combout\ = (\INST12|current_state.MRIGHT~q\ & ((\INST1|sync_extender~q\) # (\INST12|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|sync_extender~q\,
	datab => \INST12|Equal0~0_combout\,
	datad => \INST12|current_state.MRIGHT~q\,
	combout => \INST12|Selector2~0_combout\);

-- Location: LCCOMB_X16_Y11_N26
\INST12|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|Selector2~2_combout\ = (\INST12|Selector2~0_combout\) # ((!\INST6|INST1|clk_en~1_combout\ & (!\INST6|INST2|clk_en~1_combout\ & \INST12|Selector2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|Selector2~0_combout\,
	datab => \INST6|INST1|clk_en~1_combout\,
	datac => \INST6|INST2|clk_en~1_combout\,
	datad => \INST12|Selector2~1_combout\,
	combout => \INST12|Selector2~2_combout\);

-- Location: LCCOMB_X16_Y11_N2
\INST12|next_state.MRIGHT_120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|next_state.MRIGHT_120~combout\ = (GLOBAL(\INST12|Selector3~0clkctrl_outclk\) & (\INST12|Selector2~2_combout\)) # (!GLOBAL(\INST12|Selector3~0clkctrl_outclk\) & ((\INST12|next_state.MRIGHT_120~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST12|Selector3~0clkctrl_outclk\,
	datac => \INST12|Selector2~2_combout\,
	datad => \INST12|next_state.MRIGHT_120~combout\,
	combout => \INST12|next_state.MRIGHT_120~combout\);

-- Location: FF_X16_Y11_N3
\INST12|current_state.MRIGHT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \INST12|next_state.MRIGHT_120~combout\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST12|current_state.MRIGHT~q\);

-- Location: LCCOMB_X15_Y11_N16
\INST13|sreg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|sreg~1_combout\ = (\INST12|current_state.MRIGHT~q\ & ((\INST13|sreg\(2)))) # (!\INST12|current_state.MRIGHT~q\ & (\INST13|sreg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|current_state.MRIGHT~q\,
	datab => \INST13|sreg\(0),
	datac => \INST13|sreg\(2),
	combout => \INST13|sreg~1_combout\);

-- Location: FF_X15_Y11_N17
\INST13|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	d => \INST13|sreg~1_combout\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	ena => \INST12|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST13|sreg\(1));

-- Location: LCCOMB_X15_Y11_N6
\INST13|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|sreg~0_combout\ = (\INST12|current_state.MRIGHT~q\ & (\INST13|sreg\(3))) # (!\INST12|current_state.MRIGHT~q\ & ((\INST13|sreg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST13|sreg\(3),
	datac => \INST13|sreg\(1),
	datad => \INST12|current_state.MRIGHT~q\,
	combout => \INST13|sreg~0_combout\);

-- Location: FF_X15_Y11_N7
\INST13|sreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	d => \INST13|sreg~0_combout\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	ena => \INST12|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST13|sreg\(2));

-- Location: LCCOMB_X15_Y11_N14
\INST13|sreg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|sreg~3_combout\ = (\INST13|sreg\(2)) # (\INST12|current_state.MRIGHT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST13|sreg\(2),
	datad => \INST12|current_state.MRIGHT~q\,
	combout => \INST13|sreg~3_combout\);

-- Location: FF_X15_Y11_N15
\INST13|sreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	d => \INST13|sreg~3_combout\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	ena => \INST12|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST13|sreg\(3));

-- Location: LCCOMB_X16_Y11_N6
\INST12|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|Equal1~0_combout\ = (\INST13|sreg\(3)) # ((\INST13|sreg\(1)) # ((\INST13|sreg\(2)) # (\INST13|sreg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST13|sreg\(3),
	datab => \INST13|sreg\(1),
	datac => \INST13|sreg\(2),
	datad => \INST13|sreg\(0),
	combout => \INST12|Equal1~0_combout\);

-- Location: LCCOMB_X19_Y11_N16
\INST6|INST1|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|INST1|Selector1~1_combout\ = (\INST6|INST1|current_state.MOTION_CASE~q\ & ((\INST6|INST1|Selector1~0_combout\) # ((\INST12|Equal1~0_combout\) # (!\INST7|AGTB~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|INST1|Selector1~0_combout\,
	datab => \INST12|Equal1~0_combout\,
	datac => \INST7|AGTB~0_combout\,
	datad => \INST6|INST1|current_state.MOTION_CASE~q\,
	combout => \INST6|INST1|Selector1~1_combout\);

-- Location: LCCOMB_X20_Y11_N18
\INST6|INST1|next_state.TRANSITION~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|INST1|next_state.TRANSITION~0_combout\ = (!\INST6|INST1|current_state.MOTION_CASE~q\ & \INST1|sync_motion~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST6|INST1|current_state.MOTION_CASE~q\,
	datad => \INST1|sync_motion~q\,
	combout => \INST6|INST1|next_state.TRANSITION~0_combout\);

-- Location: LCCOMB_X20_Y11_N10
\INST6|INST1|current_state.TRANSITION~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|INST1|current_state.TRANSITION~feeder_combout\ = \INST6|INST1|next_state.TRANSITION~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|INST1|next_state.TRANSITION~0_combout\,
	combout => \INST6|INST1|current_state.TRANSITION~feeder_combout\);

-- Location: FF_X20_Y11_N11
\INST6|INST1|current_state.TRANSITION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \INST6|INST1|current_state.TRANSITION~feeder_combout\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST6|INST1|current_state.TRANSITION~q\);

-- Location: LCCOMB_X19_Y11_N26
\INST6|INST1|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|INST1|Selector1~2_combout\ = (\INST6|INST1|Selector1~1_combout\) # ((\INST6|INST1|current_state.TRANSITION~q\ & !\INST1|sync_motion~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|INST1|Selector1~1_combout\,
	datac => \INST6|INST1|current_state.TRANSITION~q\,
	datad => \INST1|sync_motion~q\,
	combout => \INST6|INST1|Selector1~2_combout\);

-- Location: FF_X19_Y11_N27
\INST6|INST1|current_state.MOTION_CASE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	d => \INST6|INST1|Selector1~2_combout\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST6|INST1|current_state.MOTION_CASE~q\);

-- Location: LCCOMB_X19_Y11_N24
\INST2|ud_bin_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|ud_bin_counter[0]~3_combout\ = \INST2|ud_bin_counter\(0) $ (((\INST6|INST1|current_state.MOTION_CASE~q\ & ((\INST6|INST1|clk_en~0_combout\) # (!\INST6|INST1|Decoder_Section~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|INST1|current_state.MOTION_CASE~q\,
	datab => \INST6|INST1|Decoder_Section~0_combout\,
	datac => \INST2|ud_bin_counter\(0),
	datad => \INST6|INST1|clk_en~0_combout\,
	combout => \INST2|ud_bin_counter[0]~3_combout\);

-- Location: FF_X19_Y11_N25
\INST2|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	d => \INST2|ud_bin_counter[0]~3_combout\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|ud_bin_counter\(0));

-- Location: LCCOMB_X19_Y11_N6
\INST2|ud_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|ud_bin_counter[1]~5_cout\ = CARRY(\INST2|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|ud_bin_counter\(0),
	datad => VCC,
	cout => \INST2|ud_bin_counter[1]~5_cout\);

-- Location: LCCOMB_X19_Y11_N8
\INST2|ud_bin_counter[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|ud_bin_counter[1]~6_combout\ = (\INST2|process_0~0_combout\ & ((\INST2|ud_bin_counter\(1) & (!\INST2|ud_bin_counter[1]~5_cout\)) # (!\INST2|ud_bin_counter\(1) & ((\INST2|ud_bin_counter[1]~5_cout\) # (GND))))) # (!\INST2|process_0~0_combout\ & 
-- ((\INST2|ud_bin_counter\(1) & (\INST2|ud_bin_counter[1]~5_cout\ & VCC)) # (!\INST2|ud_bin_counter\(1) & (!\INST2|ud_bin_counter[1]~5_cout\))))
-- \INST2|ud_bin_counter[1]~7\ = CARRY((\INST2|process_0~0_combout\ & ((!\INST2|ud_bin_counter[1]~5_cout\) # (!\INST2|ud_bin_counter\(1)))) # (!\INST2|process_0~0_combout\ & (!\INST2|ud_bin_counter\(1) & !\INST2|ud_bin_counter[1]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|process_0~0_combout\,
	datab => \INST2|ud_bin_counter\(1),
	datad => VCC,
	cin => \INST2|ud_bin_counter[1]~5_cout\,
	combout => \INST2|ud_bin_counter[1]~6_combout\,
	cout => \INST2|ud_bin_counter[1]~7\);

-- Location: FF_X19_Y11_N11
\INST2|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	d => \INST2|ud_bin_counter[2]~8_combout\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	ena => \INST6|INST1|clk_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|ud_bin_counter\(2));

-- Location: LCCOMB_X18_Y11_N16
\INST7|AGTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|AGTB~0_combout\ = (\INST2|ud_bin_counter\(2) & (\INST4|registers\(2) & (\INST2|ud_bin_counter\(3) $ (!\INST4|registers\(3))))) # (!\INST2|ud_bin_counter\(2) & (!\INST4|registers\(2) & (\INST2|ud_bin_counter\(3) $ (!\INST4|registers\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|ud_bin_counter\(2),
	datab => \INST2|ud_bin_counter\(3),
	datac => \INST4|registers\(2),
	datad => \INST4|registers\(3),
	combout => \INST7|AGTB~0_combout\);

-- Location: LCCOMB_X19_Y11_N2
\INST7|AGTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|AGTB~2_combout\ = (\INST2|ud_bin_counter\(3) & (((!\INST4|registers\(2) & \INST2|ud_bin_counter\(2))) # (!\INST4|registers\(3)))) # (!\INST2|ud_bin_counter\(3) & (!\INST4|registers\(3) & (!\INST4|registers\(2) & \INST2|ud_bin_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|ud_bin_counter\(3),
	datab => \INST4|registers\(3),
	datac => \INST4|registers\(2),
	datad => \INST2|ud_bin_counter\(2),
	combout => \INST7|AGTB~2_combout\);

-- Location: LCCOMB_X18_Y11_N6
\INST7|AGTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|AGTB~1_combout\ = (\INST2|ud_bin_counter\(1) & (((!\INST4|registers\(0) & \INST2|ud_bin_counter\(0))) # (!\INST4|registers\(1)))) # (!\INST2|ud_bin_counter\(1) & (!\INST4|registers\(0) & (!\INST4|registers\(1) & \INST2|ud_bin_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4|registers\(0),
	datab => \INST2|ud_bin_counter\(1),
	datac => \INST4|registers\(1),
	datad => \INST2|ud_bin_counter\(0),
	combout => \INST7|AGTB~1_combout\);

-- Location: LCCOMB_X19_Y11_N28
\INST6|INST1|Decoder_Section~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|INST1|Decoder_Section~0_combout\ = (\INST12|Equal1~0_combout\) # ((!\INST7|AGTB~2_combout\ & ((!\INST7|AGTB~1_combout\) # (!\INST7|AGTB~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|AGTB~0_combout\,
	datab => \INST7|AGTB~2_combout\,
	datac => \INST7|AGTB~1_combout\,
	datad => \INST12|Equal1~0_combout\,
	combout => \INST6|INST1|Decoder_Section~0_combout\);

-- Location: LCCOMB_X19_Y11_N0
\INST6|INST1|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|INST1|Selector2~0_combout\ = (\INST7|ALTB~0_combout\) # ((\INST7|AGTB~0_combout\ & ((\INST7|AGTB~1_combout\) # (\INST7|ALTB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|AGTB~0_combout\,
	datab => \INST7|AGTB~1_combout\,
	datac => \INST7|ALTB~1_combout\,
	datad => \INST7|ALTB~0_combout\,
	combout => \INST6|INST1|Selector2~0_combout\);

-- Location: LCCOMB_X19_Y11_N20
\INST6|INST1|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|INST1|Selector2~1_combout\ = ((!\INST12|Equal1~0_combout\ & ((\INST7|AGTB~2_combout\) # (\INST6|INST1|Selector2~0_combout\)))) # (!\INST6|INST1|current_state.MOTION_CASE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|Equal1~0_combout\,
	datab => \INST7|AGTB~2_combout\,
	datac => \INST6|INST1|current_state.MOTION_CASE~q\,
	datad => \INST6|INST1|Selector2~0_combout\,
	combout => \INST6|INST1|Selector2~1_combout\);

-- Location: LCCOMB_X19_Y11_N30
\INST6|INST1|up_down\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|INST1|up_down~combout\ = (\INST6|INST1|Selector2~1_combout\ & (\INST6|INST1|Decoder_Section~0_combout\)) # (!\INST6|INST1|Selector2~1_combout\ & ((\INST6|INST1|up_down~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST6|INST1|Decoder_Section~0_combout\,
	datac => \INST6|INST1|up_down~combout\,
	datad => \INST6|INST1|Selector2~1_combout\,
	combout => \INST6|INST1|up_down~combout\);

-- Location: LCCOMB_X19_Y11_N4
\INST2|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|process_0~0_combout\ = (\INST6|INST1|up_down~combout\ & (\INST6|INST1|current_state.MOTION_CASE~q\ & ((\INST6|INST1|clk_en~0_combout\) # (!\INST6|INST1|Decoder_Section~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|INST1|up_down~combout\,
	datab => \INST6|INST1|current_state.MOTION_CASE~q\,
	datac => \INST6|INST1|clk_en~0_combout\,
	datad => \INST6|INST1|Decoder_Section~0_combout\,
	combout => \INST2|process_0~0_combout\);

-- Location: FF_X19_Y11_N9
\INST2|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	d => \INST2|ud_bin_counter[1]~6_combout\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	ena => \INST6|INST1|clk_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|ud_bin_counter\(1));

-- Location: LCCOMB_X17_Y10_N16
\INST9|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|Mux5~0_combout\ = (\INST2|ud_bin_counter\(1) & ((\INST2|ud_bin_counter\(0) & ((\INST2|ud_bin_counter\(3)))) # (!\INST2|ud_bin_counter\(0) & (\INST2|ud_bin_counter\(2))))) # (!\INST2|ud_bin_counter\(1) & (\INST2|ud_bin_counter\(2) & 
-- (\INST2|ud_bin_counter\(3) $ (\INST2|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|ud_bin_counter\(1),
	datab => \INST2|ud_bin_counter\(2),
	datac => \INST2|ud_bin_counter\(3),
	datad => \INST2|ud_bin_counter\(0),
	combout => \INST9|Mux5~0_combout\);

-- Location: LCCOMB_X17_Y13_N2
\INST10|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Mux5~0_combout\ = (\INST3|ud_bin_counter\(1) & ((\INST3|ud_bin_counter\(0) & ((\INST3|ud_bin_counter\(3)))) # (!\INST3|ud_bin_counter\(0) & (\INST3|ud_bin_counter\(2))))) # (!\INST3|ud_bin_counter\(1) & (\INST3|ud_bin_counter\(2) & 
-- (\INST3|ud_bin_counter\(0) $ (\INST3|ud_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|ud_bin_counter\(2),
	datab => \INST3|ud_bin_counter\(1),
	datac => \INST3|ud_bin_counter\(0),
	datad => \INST3|ud_bin_counter\(3),
	combout => \INST10|Mux5~0_combout\);

-- Location: LCCOMB_X17_Y10_N22
\INST11|DOUT_TEMP[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|DOUT_TEMP[1]~0_combout\ = (\INST11|clk_proc:COUNT[10]~q\ & ((!\INST10|Mux5~0_combout\))) # (!\INST11|clk_proc:COUNT[10]~q\ & (!\INST9|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST9|Mux5~0_combout\,
	datac => \INST10|Mux5~0_combout\,
	datad => \INST11|clk_proc:COUNT[10]~q\,
	combout => \INST11|DOUT_TEMP[1]~0_combout\);

-- Location: LCCOMB_X17_Y10_N12
\INST9|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|Mux1~0_combout\ = (\INST2|ud_bin_counter\(1) & (!\INST2|ud_bin_counter\(3) & ((\INST2|ud_bin_counter\(0)) # (!\INST2|ud_bin_counter\(2))))) # (!\INST2|ud_bin_counter\(1) & ((\INST2|ud_bin_counter\(2) & (\INST2|ud_bin_counter\(3))) # 
-- (!\INST2|ud_bin_counter\(2) & (!\INST2|ud_bin_counter\(3) & \INST2|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|ud_bin_counter\(1),
	datab => \INST2|ud_bin_counter\(2),
	datac => \INST2|ud_bin_counter\(3),
	datad => \INST2|ud_bin_counter\(0),
	combout => \INST9|Mux1~0_combout\);

-- Location: LCCOMB_X17_Y13_N4
\INST10|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Mux1~0_combout\ = (\INST3|ud_bin_counter\(2) & ((\INST3|ud_bin_counter\(1) & (\INST3|ud_bin_counter\(0) & !\INST3|ud_bin_counter\(3))) # (!\INST3|ud_bin_counter\(1) & ((\INST3|ud_bin_counter\(3)))))) # (!\INST3|ud_bin_counter\(2) & 
-- (!\INST3|ud_bin_counter\(3) & ((\INST3|ud_bin_counter\(1)) # (\INST3|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|ud_bin_counter\(2),
	datab => \INST3|ud_bin_counter\(1),
	datac => \INST3|ud_bin_counter\(0),
	datad => \INST3|ud_bin_counter\(3),
	combout => \INST10|Mux1~0_combout\);

-- Location: LCCOMB_X17_Y10_N14
\INST11|DOUT_TEMP[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|DOUT_TEMP[5]~1_combout\ = (\INST11|clk_proc:COUNT[10]~q\ & ((!\INST10|Mux1~0_combout\))) # (!\INST11|clk_proc:COUNT[10]~q\ & (!\INST9|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|Mux1~0_combout\,
	datab => \INST10|Mux1~0_combout\,
	datad => \INST11|clk_proc:COUNT[10]~q\,
	combout => \INST11|DOUT_TEMP[5]~1_combout\);

-- Location: LCCOMB_X17_Y10_N20
\INST9|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|Mux0~0_combout\ = (\INST2|ud_bin_counter\(3)) # ((\INST2|ud_bin_counter\(1) & ((!\INST2|ud_bin_counter\(0)) # (!\INST2|ud_bin_counter\(2)))) # (!\INST2|ud_bin_counter\(1) & (\INST2|ud_bin_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|ud_bin_counter\(1),
	datab => \INST2|ud_bin_counter\(2),
	datac => \INST2|ud_bin_counter\(3),
	datad => \INST2|ud_bin_counter\(0),
	combout => \INST9|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y13_N30
\INST10|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Mux0~0_combout\ = (\INST3|ud_bin_counter\(3)) # ((\INST3|ud_bin_counter\(2) & ((!\INST3|ud_bin_counter\(0)) # (!\INST3|ud_bin_counter\(1)))) # (!\INST3|ud_bin_counter\(2) & (\INST3|ud_bin_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|ud_bin_counter\(2),
	datab => \INST3|ud_bin_counter\(1),
	datac => \INST3|ud_bin_counter\(0),
	datad => \INST3|ud_bin_counter\(3),
	combout => \INST10|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y10_N10
\INST11|DOUT_TEMP[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|DOUT_TEMP[6]~2_combout\ = (\INST11|clk_proc:COUNT[10]~q\ & ((\INST10|Mux0~0_combout\))) # (!\INST11|clk_proc:COUNT[10]~q\ & (\INST9|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST9|Mux0~0_combout\,
	datac => \INST10|Mux0~0_combout\,
	datad => \INST11|clk_proc:COUNT[10]~q\,
	combout => \INST11|DOUT_TEMP[6]~2_combout\);

-- Location: LCCOMB_X15_Y11_N30
\INST6|error~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|error~0_combout\ = (\INST12|Equal1~0_combout\ & (\Clock_Selector|clk_divider:counter[23]~q\ & ((\INST6|INST2|current_state.MOTION_CASE~q\) # (\INST6|INST1|current_state.MOTION_CASE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|Equal1~0_combout\,
	datab => \Clock_Selector|clk_divider:counter[23]~q\,
	datac => \INST6|INST2|current_state.MOTION_CASE~q\,
	datad => \INST6|INST1|current_state.MOTION_CASE~q\,
	combout => \INST6|error~0_combout\);

-- Location: IOIBUF_X9_Y0_N1
\pb_n[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(0),
	o => \pb_n[0]~input_o\);

-- Location: LCCOMB_X13_Y11_N28
\INST1|stages_pb0[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|stages_pb0[0]~0_combout\ = !\pb_n[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb_n[0]~input_o\,
	combout => \INST1|stages_pb0[0]~0_combout\);

-- Location: FF_X13_Y11_N29
\INST1|stages_pb0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \INST1|stages_pb0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|stages_pb0\(0));

-- Location: LCCOMB_X13_Y11_N4
\INST1|stages_pb0[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|stages_pb0[1]~feeder_combout\ = \INST1|stages_pb0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST1|stages_pb0\(0),
	combout => \INST1|stages_pb0[1]~feeder_combout\);

-- Location: FF_X13_Y11_N5
\INST1|stages_pb0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \INST1|stages_pb0[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|stages_pb0\(1));

-- Location: FF_X16_Y11_N9
\INST1|sync_grappler\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	asdata => \INST1|stages_pb0\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|sync_grappler~q\);

-- Location: LCCOMB_X16_Y11_N12
\INST12|grappler_en\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|grappler_en~combout\ = (\INST12|current_state.BC~q\ & (\INST12|grappler_en~combout\)) # (!\INST12|current_state.BC~q\ & ((\INST12|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|grappler_en~combout\,
	datab => \INST12|current_state.BC~q\,
	datad => \INST12|Equal1~0_combout\,
	combout => \INST12|grappler_en~combout\);

-- Location: LCCOMB_X16_Y11_N22
\INST14|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST14|Selector4~0_combout\ = (\INST1|sync_grappler~q\ & (((\INST14|current_state.GOPEN~q\ & !\INST12|grappler_en~combout\)))) # (!\INST1|sync_grappler~q\ & ((\INST14|current_state.GOPENHOLD~q\) # ((\INST14|current_state.GOPEN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|sync_grappler~q\,
	datab => \INST14|current_state.GOPENHOLD~q\,
	datac => \INST14|current_state.GOPEN~q\,
	datad => \INST12|grappler_en~combout\,
	combout => \INST14|Selector4~0_combout\);

-- Location: FF_X16_Y11_N23
\INST14|current_state.GOPEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \INST14|Selector4~0_combout\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST14|current_state.GOPEN~q\);

-- Location: LCCOMB_X16_Y11_N14
\INST14|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST14|Selector0~0_combout\ = (\INST1|sync_grappler~q\ & ((\INST14|current_state.GCLOSEDHOLD~q\) # ((\INST14|current_state.GOPEN~q\ & \INST12|grappler_en~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST14|current_state.GOPEN~q\,
	datab => \INST1|sync_grappler~q\,
	datac => \INST14|current_state.GCLOSEDHOLD~q\,
	datad => \INST12|grappler_en~combout\,
	combout => \INST14|Selector0~0_combout\);

-- Location: FF_X16_Y11_N15
\INST14|current_state.GCLOSEDHOLD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \INST14|Selector0~0_combout\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST14|current_state.GCLOSEDHOLD~q\);

-- Location: LCCOMB_X16_Y11_N18
\INST14|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST14|Selector1~0_combout\ = (\INST1|sync_grappler~q\ & (((\INST14|current_state.GCLOSED~q\) # (\INST12|grappler_en~combout\)))) # (!\INST1|sync_grappler~q\ & (!\INST14|current_state.GCLOSEDHOLD~q\ & (\INST14|current_state.GCLOSED~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|sync_grappler~q\,
	datab => \INST14|current_state.GCLOSEDHOLD~q\,
	datac => \INST14|current_state.GCLOSED~q\,
	datad => \INST12|grappler_en~combout\,
	combout => \INST14|Selector1~0_combout\);

-- Location: FF_X16_Y11_N19
\INST14|current_state.GCLOSED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \INST14|Selector1~0_combout\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST14|current_state.GCLOSED~q\);

-- Location: LCCOMB_X16_Y11_N20
\INST14|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST14|Selector3~0_combout\ = (\INST1|sync_grappler~q\ & ((\INST14|current_state.GOPENHOLD~q\) # ((!\INST14|current_state.GCLOSED~q\ & \INST12|grappler_en~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|sync_grappler~q\,
	datab => \INST14|current_state.GCLOSED~q\,
	datac => \INST14|current_state.GOPENHOLD~q\,
	datad => \INST12|grappler_en~combout\,
	combout => \INST14|Selector3~0_combout\);

-- Location: FF_X16_Y11_N21
\INST14|current_state.GOPENHOLD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \INST14|Selector3~0_combout\,
	clrn => \INST1|ALT_INV_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST14|current_state.GOPENHOLD~q\);

-- Location: LCCOMB_X15_Y11_N12
\INST14|LED1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST14|LED1~combout\ = (\INST14|current_state.GOPENHOLD~q\) # (\INST14|current_state.GOPEN~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST14|current_state.GOPENHOLD~q\,
	datad => \INST14|current_state.GOPEN~q\,
	combout => \INST14|LED1~combout\);

-- Location: LCCOMB_X17_Y11_N20
\INST10|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Mux6~0_combout\ = (\INST3|ud_bin_counter\(1) & (\INST3|ud_bin_counter\(3) & (!\INST3|ud_bin_counter\(2) & \INST3|ud_bin_counter\(0)))) # (!\INST3|ud_bin_counter\(1) & (\INST3|ud_bin_counter\(2) $ (((!\INST3|ud_bin_counter\(3) & 
-- \INST3|ud_bin_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|ud_bin_counter\(3),
	datab => \INST3|ud_bin_counter\(1),
	datac => \INST3|ud_bin_counter\(2),
	datad => \INST3|ud_bin_counter\(0),
	combout => \INST10|Mux6~0_combout\);

-- Location: LCCOMB_X17_Y10_N28
\INST9|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|Mux6~0_combout\ = (\INST2|ud_bin_counter\(1) & (!\INST2|ud_bin_counter\(2) & (\INST2|ud_bin_counter\(3) & \INST2|ud_bin_counter\(0)))) # (!\INST2|ud_bin_counter\(1) & (\INST2|ud_bin_counter\(2) $ (((!\INST2|ud_bin_counter\(3) & 
-- \INST2|ud_bin_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|ud_bin_counter\(1),
	datab => \INST2|ud_bin_counter\(2),
	datac => \INST2|ud_bin_counter\(3),
	datad => \INST2|ud_bin_counter\(0),
	combout => \INST9|Mux6~0_combout\);

-- Location: LCCOMB_X17_Y10_N2
\INST11|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|DOUT[0]~0_combout\ = (\INST11|clk_proc:COUNT[10]~q\ & (\INST10|Mux6~0_combout\)) # (!\INST11|clk_proc:COUNT[10]~q\ & ((\INST9|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|Mux6~0_combout\,
	datab => \INST9|Mux6~0_combout\,
	datad => \INST11|clk_proc:COUNT[10]~q\,
	combout => \INST11|DOUT[0]~0_combout\);

-- Location: LCCOMB_X17_Y10_N4
\INST9|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|Mux4~0_combout\ = (\INST2|ud_bin_counter\(2) & (\INST2|ud_bin_counter\(3) & ((\INST2|ud_bin_counter\(1)) # (!\INST2|ud_bin_counter\(0))))) # (!\INST2|ud_bin_counter\(2) & (\INST2|ud_bin_counter\(1) & (!\INST2|ud_bin_counter\(3) & 
-- !\INST2|ud_bin_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|ud_bin_counter\(1),
	datab => \INST2|ud_bin_counter\(2),
	datac => \INST2|ud_bin_counter\(3),
	datad => \INST2|ud_bin_counter\(0),
	combout => \INST9|Mux4~0_combout\);

-- Location: LCCOMB_X18_Y11_N8
\INST10|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Mux4~0_combout\ = (\INST3|ud_bin_counter\(2) & (\INST3|ud_bin_counter\(3) & ((\INST3|ud_bin_counter\(1)) # (!\INST3|ud_bin_counter\(0))))) # (!\INST3|ud_bin_counter\(2) & (!\INST3|ud_bin_counter\(0) & (!\INST3|ud_bin_counter\(3) & 
-- \INST3|ud_bin_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|ud_bin_counter\(2),
	datab => \INST3|ud_bin_counter\(0),
	datac => \INST3|ud_bin_counter\(3),
	datad => \INST3|ud_bin_counter\(1),
	combout => \INST10|Mux4~0_combout\);

-- Location: LCCOMB_X17_Y10_N18
\INST11|DOUT[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|DOUT[2]~2_combout\ = (\INST11|clk_proc:COUNT[10]~q\ & ((\INST10|Mux4~0_combout\))) # (!\INST11|clk_proc:COUNT[10]~q\ & (\INST9|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|Mux4~0_combout\,
	datab => \INST11|clk_proc:COUNT[10]~q\,
	datad => \INST10|Mux4~0_combout\,
	combout => \INST11|DOUT[2]~2_combout\);

-- Location: LCCOMB_X17_Y10_N8
\INST9|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|Mux3~0_combout\ = (\INST2|ud_bin_counter\(1) & ((\INST2|ud_bin_counter\(2) & ((\INST2|ud_bin_counter\(0)))) # (!\INST2|ud_bin_counter\(2) & (\INST2|ud_bin_counter\(3) & !\INST2|ud_bin_counter\(0))))) # (!\INST2|ud_bin_counter\(1) & 
-- (!\INST2|ud_bin_counter\(3) & (\INST2|ud_bin_counter\(2) $ (\INST2|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|ud_bin_counter\(1),
	datab => \INST2|ud_bin_counter\(2),
	datac => \INST2|ud_bin_counter\(3),
	datad => \INST2|ud_bin_counter\(0),
	combout => \INST9|Mux3~0_combout\);

-- Location: LCCOMB_X17_Y11_N30
\INST10|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Mux3~0_combout\ = (\INST3|ud_bin_counter\(1) & ((\INST3|ud_bin_counter\(2) & ((\INST3|ud_bin_counter\(0)))) # (!\INST3|ud_bin_counter\(2) & (\INST3|ud_bin_counter\(3) & !\INST3|ud_bin_counter\(0))))) # (!\INST3|ud_bin_counter\(1) & 
-- (!\INST3|ud_bin_counter\(3) & (\INST3|ud_bin_counter\(2) $ (\INST3|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|ud_bin_counter\(3),
	datab => \INST3|ud_bin_counter\(1),
	datac => \INST3|ud_bin_counter\(2),
	datad => \INST3|ud_bin_counter\(0),
	combout => \INST10|Mux3~0_combout\);

-- Location: LCCOMB_X17_Y10_N26
\INST11|DOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|DOUT[3]~3_combout\ = (\INST11|clk_proc:COUNT[10]~q\ & ((\INST10|Mux3~0_combout\))) # (!\INST11|clk_proc:COUNT[10]~q\ & (\INST9|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST9|Mux3~0_combout\,
	datac => \INST10|Mux3~0_combout\,
	datad => \INST11|clk_proc:COUNT[10]~q\,
	combout => \INST11|DOUT[3]~3_combout\);

-- Location: LCCOMB_X17_Y10_N24
\INST9|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|Mux2~0_combout\ = (\INST2|ud_bin_counter\(1) & (((!\INST2|ud_bin_counter\(3) & \INST2|ud_bin_counter\(0))))) # (!\INST2|ud_bin_counter\(1) & ((\INST2|ud_bin_counter\(2) & (!\INST2|ud_bin_counter\(3))) # (!\INST2|ud_bin_counter\(2) & 
-- ((\INST2|ud_bin_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|ud_bin_counter\(1),
	datab => \INST2|ud_bin_counter\(2),
	datac => \INST2|ud_bin_counter\(3),
	datad => \INST2|ud_bin_counter\(0),
	combout => \INST9|Mux2~0_combout\);

-- Location: LCCOMB_X17_Y13_N28
\INST10|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Mux2~0_combout\ = (\INST3|ud_bin_counter\(1) & (((\INST3|ud_bin_counter\(0) & !\INST3|ud_bin_counter\(3))))) # (!\INST3|ud_bin_counter\(1) & ((\INST3|ud_bin_counter\(2) & ((!\INST3|ud_bin_counter\(3)))) # (!\INST3|ud_bin_counter\(2) & 
-- (\INST3|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|ud_bin_counter\(2),
	datab => \INST3|ud_bin_counter\(1),
	datac => \INST3|ud_bin_counter\(0),
	datad => \INST3|ud_bin_counter\(3),
	combout => \INST10|Mux2~0_combout\);

-- Location: LCCOMB_X17_Y10_N30
\INST11|DOUT[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|DOUT[4]~4_combout\ = (\INST11|clk_proc:COUNT[10]~q\ & ((\INST10|Mux2~0_combout\))) # (!\INST11|clk_proc:COUNT[10]~q\ & (\INST9|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST9|Mux2~0_combout\,
	datac => \INST10|Mux2~0_combout\,
	datad => \INST11|clk_proc:COUNT[10]~q\,
	combout => \INST11|DOUT[4]~4_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_seg7_data(0) <= \seg7_data[0]~output_o\;

ww_seg7_data(1) <= \seg7_data[1]~output_o\;

ww_seg7_data(2) <= \seg7_data[2]~output_o\;

ww_seg7_data(3) <= \seg7_data[3]~output_o\;

ww_seg7_data(4) <= \seg7_data[4]~output_o\;

ww_seg7_data(5) <= \seg7_data[5]~output_o\;

ww_seg7_data(6) <= \seg7_data[6]~output_o\;

ww_seg7_char1 <= \seg7_char1~output_o\;

ww_seg7_char2 <= \seg7_char2~output_o\;
END structure;


