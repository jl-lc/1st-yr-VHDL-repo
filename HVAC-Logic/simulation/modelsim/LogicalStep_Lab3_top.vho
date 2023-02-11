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

-- DATE "06/28/2022 18:06:56"

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

ENTITY 	LogicalStep_Lab3_top IS
    PORT (
	clkin_50 : IN std_logic;
	pb_n : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : OUT std_logic_vector(7 DOWNTO 0);
	seg7_data : OUT std_logic_vector(6 DOWNTO 0);
	seg7_char1 : OUT std_logic;
	seg7_char2 : OUT std_logic
	);
END LogicalStep_Lab3_top;

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
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- clkin_50	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF LogicalStep_Lab3_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin_50 : std_logic;
SIGNAL ww_pb_n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clkin_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST8|clk_divider:counter[23]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \pb_n[3]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \INST3|hex_out[0]~3_combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \INST3|hex_out[3]~0_combout\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \INST3|hex_out[2]~1_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \INST3|hex_out[1]~2_combout\ : std_logic;
SIGNAL \INST4|Mux5~0_combout\ : std_logic;
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \clkin_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \INST8|clk_divider:counter[0]~0_combout\ : std_logic;
SIGNAL \INST8|clk_divider:counter[0]~q\ : std_logic;
SIGNAL \INST8|clk_divider:counter[1]~1_combout\ : std_logic;
SIGNAL \INST8|clk_divider:counter[1]~q\ : std_logic;
SIGNAL \INST8|clk_divider:counter[1]~2\ : std_logic;
SIGNAL \INST8|clk_divider:counter[2]~1_combout\ : std_logic;
SIGNAL \INST8|clk_divider:counter[2]~q\ : std_logic;
SIGNAL \INST8|clk_divider:counter[2]~2\ : std_logic;
SIGNAL \INST8|clk_divider:counter[3]~1_combout\ : std_logic;
SIGNAL \INST8|clk_divider:counter[3]~q\ : std_logic;
SIGNAL \INST8|clk_divider:counter[3]~2\ : std_logic;
SIGNAL \INST8|clk_divider:counter[4]~1_combout\ : std_logic;
SIGNAL \INST8|clk_divider:counter[4]~q\ : std_logic;
SIGNAL \INST8|clk_divider:counter[4]~2\ : std_logic;
SIGNAL \INST8|clk_divider:counter[5]~1_combout\ : std_logic;
SIGNAL \INST8|clk_divider:counter[5]~q\ : std_logic;
SIGNAL \INST8|clk_divider:counter[5]~2\ : std_logic;
SIGNAL \INST8|clk_divider:counter[6]~1_combout\ : std_logic;
SIGNAL \INST8|clk_divider:counter[6]~q\ : std_logic;
SIGNAL \INST8|clk_divider:counter[6]~2\ : std_logic;
SIGNAL \INST8|clk_divider:counter[7]~1_combout\ : std_logic;
SIGNAL \INST8|clk_divider:counter[7]~q\ : std_logic;
SIGNAL \INST8|clk_divider:counter[7]~2\ : std_logic;
SIGNAL \INST8|clk_divider:counter[8]~1_combout\ : std_logic;
SIGNAL \INST8|clk_divider:counter[8]~q\ : std_logic;
SIGNAL \INST8|clk_divider:counter[8]~2\ : std_logic;
SIGNAL \INST8|clk_divider:counter[9]~1_combout\ : std_logic;
SIGNAL \INST8|clk_divider:counter[9]~q\ : std_logic;
SIGNAL \INST8|clk_divider:counter[9]~2\ : std_logic;
SIGNAL \INST8|clk_divider:counter[10]~1_combout\ : std_logic;
SIGNAL \INST8|clk_divider:counter[10]~q\ : std_logic;
SIGNAL \INST8|clk_divider:counter[10]~2\ : std_logic;
SIGNAL \INST8|clk_divider:counter[11]~1_combout\ : std_logic;
SIGNAL \INST8|clk_divider:counter[11]~q\ : std_logic;
SIGNAL \INST8|clk_divider:counter[11]~2\ : std_logic;
SIGNAL \INST8|clk_divider:counter[12]~1_combout\ : std_logic;
SIGNAL \INST8|clk_divider:counter[12]~q\ : std_logic;
SIGNAL \INST8|clk_divider:counter[12]~2\ : std_logic;
SIGNAL \INST8|clk_divider:counter[13]~1_combout\ : std_logic;
SIGNAL \INST8|clk_divider:counter[13]~q\ : std_logic;
SIGNAL \INST8|clk_divider:counter[13]~2\ : std_logic;
SIGNAL \INST8|clk_divider:counter[14]~1_combout\ : std_logic;
SIGNAL \INST8|clk_divider:counter[14]~q\ : std_logic;
SIGNAL \INST8|clk_divider:counter[14]~2\ : std_logic;
SIGNAL \INST8|clk_divider:counter[15]~1_combout\ : std_logic;
SIGNAL \INST8|clk_divider:counter[15]~q\ : std_logic;
SIGNAL \INST8|clk_divider:counter[15]~2\ : std_logic;
SIGNAL \INST8|clk_divider:counter[16]~1_combout\ : std_logic;
SIGNAL \INST8|clk_divider:counter[16]~q\ : std_logic;
SIGNAL \INST8|clk_divider:counter[16]~2\ : std_logic;
SIGNAL \INST8|clk_divider:counter[17]~1_combout\ : std_logic;
SIGNAL \INST8|clk_divider:counter[17]~q\ : std_logic;
SIGNAL \INST8|clk_divider:counter[17]~2\ : std_logic;
SIGNAL \INST8|clk_divider:counter[18]~1_combout\ : std_logic;
SIGNAL \INST8|clk_divider:counter[18]~q\ : std_logic;
SIGNAL \INST8|clk_divider:counter[18]~2\ : std_logic;
SIGNAL \INST8|clk_divider:counter[19]~1_combout\ : std_logic;
SIGNAL \INST8|clk_divider:counter[19]~q\ : std_logic;
SIGNAL \INST8|clk_divider:counter[19]~2\ : std_logic;
SIGNAL \INST8|clk_divider:counter[20]~1_combout\ : std_logic;
SIGNAL \INST8|clk_divider:counter[20]~q\ : std_logic;
SIGNAL \INST8|clk_divider:counter[20]~2\ : std_logic;
SIGNAL \INST8|clk_divider:counter[21]~1_combout\ : std_logic;
SIGNAL \INST8|clk_divider:counter[21]~q\ : std_logic;
SIGNAL \INST8|clk_divider:counter[21]~2\ : std_logic;
SIGNAL \INST8|clk_divider:counter[22]~1_combout\ : std_logic;
SIGNAL \INST8|clk_divider:counter[22]~q\ : std_logic;
SIGNAL \INST8|clk_divider:counter[22]~2\ : std_logic;
SIGNAL \INST8|clk_divider:counter[23]~1_combout\ : std_logic;
SIGNAL \INST8|clk_divider:counter[23]~q\ : std_logic;
SIGNAL \INST8|clk_divider:counter[23]~clkctrl_outclk\ : std_logic;
SIGNAL \INST8|Equal1~0_combout\ : std_logic;
SIGNAL \pb_n[2]~input_o\ : std_logic;
SIGNAL \pb_n[1]~input_o\ : std_logic;
SIGNAL \pb_n[0]~input_o\ : std_logic;
SIGNAL \INST9|blower~2_combout\ : std_logic;
SIGNAL \inst1|AGTB~2_combout\ : std_logic;
SIGNAL \inst1|ALTB~1_combout\ : std_logic;
SIGNAL \inst1|ALTB~0_combout\ : std_logic;
SIGNAL \inst1|ALTB~2_combout\ : std_logic;
SIGNAL \INST8|counter:cnt[3]~0_combout\ : std_logic;
SIGNAL \INST8|counter:cnt[0]~0_combout\ : std_logic;
SIGNAL \INST8|counter:cnt[0]~q\ : std_logic;
SIGNAL \INST8|Add1~1_cout\ : std_logic;
SIGNAL \INST8|Add1~2_combout\ : std_logic;
SIGNAL \INST8|counter:cnt[1]~0_combout\ : std_logic;
SIGNAL \INST8|counter:cnt[1]~q\ : std_logic;
SIGNAL \INST8|Add1~3\ : std_logic;
SIGNAL \INST8|Add1~4_combout\ : std_logic;
SIGNAL \INST8|counter:cnt[2]~0_combout\ : std_logic;
SIGNAL \INST8|counter:cnt[2]~q\ : std_logic;
SIGNAL \inst1|AGTB~0_combout\ : std_logic;
SIGNAL \inst1|AGTB~1_combout\ : std_logic;
SIGNAL \INST8|counter~0_combout\ : std_logic;
SIGNAL \INST8|counter~1_combout\ : std_logic;
SIGNAL \INST8|Add1~5\ : std_logic;
SIGNAL \INST8|Add1~6_combout\ : std_logic;
SIGNAL \INST8|counter:cnt[3]~q\ : std_logic;
SIGNAL \INST5|Mux5~0_combout\ : std_logic;
SIGNAL \INST6|DOUT_TEMP[1]~0_combout\ : std_logic;
SIGNAL \INST4|Mux1~0_combout\ : std_logic;
SIGNAL \INST5|Mux1~0_combout\ : std_logic;
SIGNAL \INST6|DOUT_TEMP[5]~1_combout\ : std_logic;
SIGNAL \INST4|Mux0~0_combout\ : std_logic;
SIGNAL \INST5|Mux0~0_combout\ : std_logic;
SIGNAL \INST6|DOUT_TEMP[6]~2_combout\ : std_logic;
SIGNAL \inst1|AGTB~3_combout\ : std_logic;
SIGNAL \inst1|INST3|AEQB~0_combout\ : std_logic;
SIGNAL \inst1|AEQB~0_combout\ : std_logic;
SIGNAL \INST9|blower~3_combout\ : std_logic;
SIGNAL \INST7|TEST_PASS~0_combout\ : std_logic;
SIGNAL \INST7|TEST_PASS~1_combout\ : std_logic;
SIGNAL \INST7|TEST_PASS~2_combout\ : std_logic;
SIGNAL \INST7|TEST_PASS~3_combout\ : std_logic;
SIGNAL \INST7|TEST_PASS~4_combout\ : std_logic;
SIGNAL \INST7|TEST_PASS~5_combout\ : std_logic;
SIGNAL \INST7|TEST_PASS~6_combout\ : std_logic;
SIGNAL \INST7|TEST_PASS~7_combout\ : std_logic;
SIGNAL \INST7|TEST_PASS~8_combout\ : std_logic;
SIGNAL \INST7|TEST_PASS~9_combout\ : std_logic;
SIGNAL \INST7|TEST_PASS~10_combout\ : std_logic;
SIGNAL \INST5|Mux6~0_combout\ : std_logic;
SIGNAL \INST4|Mux6~0_combout\ : std_logic;
SIGNAL \INST6|DOUT[0]~0_combout\ : std_logic;
SIGNAL \INST5|Mux4~0_combout\ : std_logic;
SIGNAL \INST4|Mux4~0_combout\ : std_logic;
SIGNAL \INST6|DOUT[2]~2_combout\ : std_logic;
SIGNAL \INST5|Mux3~0_combout\ : std_logic;
SIGNAL \INST4|Mux3~0_combout\ : std_logic;
SIGNAL \INST6|DOUT[3]~3_combout\ : std_logic;
SIGNAL \INST5|Mux2~0_combout\ : std_logic;
SIGNAL \INST4|Mux2~0_combout\ : std_logic;
SIGNAL \INST6|DOUT[4]~4_combout\ : std_logic;
SIGNAL \INST8|ALT_INV_clk_divider:counter[10]~q\ : std_logic;
SIGNAL \ALT_INV_pb_n[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_pb_n[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_pb_n[3]~input_o\ : std_logic;
SIGNAL \INST6|ALT_INV_DOUT[4]~4_combout\ : std_logic;
SIGNAL \INST6|ALT_INV_DOUT[3]~3_combout\ : std_logic;
SIGNAL \INST6|ALT_INV_DOUT[2]~2_combout\ : std_logic;
SIGNAL \INST6|ALT_INV_DOUT[0]~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_AEQB~0_combout\ : std_logic;

BEGIN

ww_clkin_50 <= clkin_50;
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

\clkin_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkin_50~input_o\);

\INST8|clk_divider:counter[23]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \INST8|clk_divider:counter[23]~q\);
\INST8|ALT_INV_clk_divider:counter[10]~q\ <= NOT \INST8|clk_divider:counter[10]~q\;
\ALT_INV_pb_n[1]~input_o\ <= NOT \pb_n[1]~input_o\;
\ALT_INV_pb_n[0]~input_o\ <= NOT \pb_n[0]~input_o\;
\ALT_INV_pb_n[3]~input_o\ <= NOT \pb_n[3]~input_o\;
\INST6|ALT_INV_DOUT[4]~4_combout\ <= NOT \INST6|DOUT[4]~4_combout\;
\INST6|ALT_INV_DOUT[3]~3_combout\ <= NOT \INST6|DOUT[3]~3_combout\;
\INST6|ALT_INV_DOUT[2]~2_combout\ <= NOT \INST6|DOUT[2]~2_combout\;
\INST6|ALT_INV_DOUT[0]~0_combout\ <= NOT \INST6|DOUT[0]~0_combout\;
\inst1|ALT_INV_AEQB~0_combout\ <= NOT \inst1|AEQB~0_combout\;

-- Location: LCCOMB_X11_Y24_N20
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
	i => \INST6|DOUT_TEMP[1]~0_combout\,
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
	i => \INST6|DOUT_TEMP[5]~1_combout\,
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
	i => \INST6|DOUT_TEMP[6]~2_combout\,
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
	i => \inst1|AGTB~3_combout\,
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
	i => \inst1|ALT_INV_AEQB~0_combout\,
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
	i => \inst1|ALTB~2_combout\,
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
	i => \INST9|blower~3_combout\,
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
	i => \ALT_INV_pb_n[1]~input_o\,
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
	i => \ALT_INV_pb_n[0]~input_o\,
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
	i => \INST7|TEST_PASS~10_combout\,
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
	i => \ALT_INV_pb_n[3]~input_o\,
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
	i => \INST6|ALT_INV_DOUT[0]~0_combout\,
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
	i => \INST6|ALT_INV_DOUT[2]~2_combout\,
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
	i => \INST6|ALT_INV_DOUT[3]~3_combout\,
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
	i => \INST6|ALT_INV_DOUT[4]~4_combout\,
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
	i => \INST8|clk_divider:counter[10]~q\,
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
	i => \INST8|ALT_INV_clk_divider:counter[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

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

-- Location: LCCOMB_X11_Y16_N10
\INST3|hex_out[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|hex_out[0]~3_combout\ = (\pb_n[3]~input_o\ & ((\sw[0]~input_o\))) # (!\pb_n[3]~input_o\ & (\sw[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[3]~input_o\,
	datac => \sw[4]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \INST3|hex_out[0]~3_combout\);

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

-- Location: LCCOMB_X11_Y16_N0
\INST3|hex_out[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|hex_out[3]~0_combout\ = (\pb_n[3]~input_o\ & (\sw[3]~input_o\)) # (!\pb_n[3]~input_o\ & ((\sw[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[3]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \INST3|hex_out[3]~0_combout\);

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

-- Location: LCCOMB_X11_Y16_N14
\INST3|hex_out[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|hex_out[2]~1_combout\ = (\pb_n[3]~input_o\ & (\sw[2]~input_o\)) # (!\pb_n[3]~input_o\ & ((\sw[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[3]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[6]~input_o\,
	combout => \INST3|hex_out[2]~1_combout\);

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

-- Location: LCCOMB_X11_Y16_N20
\INST3|hex_out[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|hex_out[1]~2_combout\ = (\pb_n[3]~input_o\ & (\sw[1]~input_o\)) # (!\pb_n[3]~input_o\ & ((\sw[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[1]~input_o\,
	datac => \pb_n[3]~input_o\,
	datad => \sw[5]~input_o\,
	combout => \INST3|hex_out[1]~2_combout\);

-- Location: LCCOMB_X11_Y16_N12
\INST4|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|Mux5~0_combout\ = (\INST3|hex_out[3]~0_combout\ & ((\INST3|hex_out[0]~3_combout\ & ((\INST3|hex_out[1]~2_combout\))) # (!\INST3|hex_out[0]~3_combout\ & (\INST3|hex_out[2]~1_combout\)))) # (!\INST3|hex_out[3]~0_combout\ & 
-- (\INST3|hex_out[2]~1_combout\ & (\INST3|hex_out[0]~3_combout\ $ (\INST3|hex_out[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|hex_out[0]~3_combout\,
	datab => \INST3|hex_out[3]~0_combout\,
	datac => \INST3|hex_out[2]~1_combout\,
	datad => \INST3|hex_out[1]~2_combout\,
	combout => \INST4|Mux5~0_combout\);

-- Location: IOIBUF_X0_Y6_N22
\clkin_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin_50,
	o => \clkin_50~input_o\);

-- Location: CLKCTRL_G4
\clkin_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkin_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkin_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y9_N4
\INST8|clk_divider:counter[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|clk_divider:counter[0]~0_combout\ = !\INST8|clk_divider:counter[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST8|clk_divider:counter[0]~q\,
	combout => \INST8|clk_divider:counter[0]~0_combout\);

-- Location: FF_X1_Y9_N5
\INST8|clk_divider:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST8|clk_divider:counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|clk_divider:counter[0]~q\);

-- Location: LCCOMB_X1_Y9_N10
\INST8|clk_divider:counter[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|clk_divider:counter[1]~1_combout\ = (\INST8|clk_divider:counter[1]~q\ & (\INST8|clk_divider:counter[0]~q\ $ (VCC))) # (!\INST8|clk_divider:counter[1]~q\ & (\INST8|clk_divider:counter[0]~q\ & VCC))
-- \INST8|clk_divider:counter[1]~2\ = CARRY((\INST8|clk_divider:counter[1]~q\ & \INST8|clk_divider:counter[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|clk_divider:counter[1]~q\,
	datab => \INST8|clk_divider:counter[0]~q\,
	datad => VCC,
	combout => \INST8|clk_divider:counter[1]~1_combout\,
	cout => \INST8|clk_divider:counter[1]~2\);

-- Location: FF_X1_Y9_N11
\INST8|clk_divider:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST8|clk_divider:counter[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|clk_divider:counter[1]~q\);

-- Location: LCCOMB_X1_Y9_N12
\INST8|clk_divider:counter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|clk_divider:counter[2]~1_combout\ = (\INST8|clk_divider:counter[2]~q\ & (!\INST8|clk_divider:counter[1]~2\)) # (!\INST8|clk_divider:counter[2]~q\ & ((\INST8|clk_divider:counter[1]~2\) # (GND)))
-- \INST8|clk_divider:counter[2]~2\ = CARRY((!\INST8|clk_divider:counter[1]~2\) # (!\INST8|clk_divider:counter[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|clk_divider:counter[2]~q\,
	datad => VCC,
	cin => \INST8|clk_divider:counter[1]~2\,
	combout => \INST8|clk_divider:counter[2]~1_combout\,
	cout => \INST8|clk_divider:counter[2]~2\);

-- Location: FF_X1_Y9_N13
\INST8|clk_divider:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST8|clk_divider:counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|clk_divider:counter[2]~q\);

-- Location: LCCOMB_X1_Y9_N14
\INST8|clk_divider:counter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|clk_divider:counter[3]~1_combout\ = (\INST8|clk_divider:counter[3]~q\ & (\INST8|clk_divider:counter[2]~2\ $ (GND))) # (!\INST8|clk_divider:counter[3]~q\ & (!\INST8|clk_divider:counter[2]~2\ & VCC))
-- \INST8|clk_divider:counter[3]~2\ = CARRY((\INST8|clk_divider:counter[3]~q\ & !\INST8|clk_divider:counter[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST8|clk_divider:counter[3]~q\,
	datad => VCC,
	cin => \INST8|clk_divider:counter[2]~2\,
	combout => \INST8|clk_divider:counter[3]~1_combout\,
	cout => \INST8|clk_divider:counter[3]~2\);

-- Location: FF_X1_Y9_N15
\INST8|clk_divider:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST8|clk_divider:counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|clk_divider:counter[3]~q\);

-- Location: LCCOMB_X1_Y9_N16
\INST8|clk_divider:counter[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|clk_divider:counter[4]~1_combout\ = (\INST8|clk_divider:counter[4]~q\ & (!\INST8|clk_divider:counter[3]~2\)) # (!\INST8|clk_divider:counter[4]~q\ & ((\INST8|clk_divider:counter[3]~2\) # (GND)))
-- \INST8|clk_divider:counter[4]~2\ = CARRY((!\INST8|clk_divider:counter[3]~2\) # (!\INST8|clk_divider:counter[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST8|clk_divider:counter[4]~q\,
	datad => VCC,
	cin => \INST8|clk_divider:counter[3]~2\,
	combout => \INST8|clk_divider:counter[4]~1_combout\,
	cout => \INST8|clk_divider:counter[4]~2\);

-- Location: FF_X1_Y9_N17
\INST8|clk_divider:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST8|clk_divider:counter[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|clk_divider:counter[4]~q\);

-- Location: LCCOMB_X1_Y9_N18
\INST8|clk_divider:counter[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|clk_divider:counter[5]~1_combout\ = (\INST8|clk_divider:counter[5]~q\ & (\INST8|clk_divider:counter[4]~2\ $ (GND))) # (!\INST8|clk_divider:counter[5]~q\ & (!\INST8|clk_divider:counter[4]~2\ & VCC))
-- \INST8|clk_divider:counter[5]~2\ = CARRY((\INST8|clk_divider:counter[5]~q\ & !\INST8|clk_divider:counter[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST8|clk_divider:counter[5]~q\,
	datad => VCC,
	cin => \INST8|clk_divider:counter[4]~2\,
	combout => \INST8|clk_divider:counter[5]~1_combout\,
	cout => \INST8|clk_divider:counter[5]~2\);

-- Location: FF_X1_Y9_N19
\INST8|clk_divider:counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST8|clk_divider:counter[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|clk_divider:counter[5]~q\);

-- Location: LCCOMB_X1_Y9_N20
\INST8|clk_divider:counter[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|clk_divider:counter[6]~1_combout\ = (\INST8|clk_divider:counter[6]~q\ & (!\INST8|clk_divider:counter[5]~2\)) # (!\INST8|clk_divider:counter[6]~q\ & ((\INST8|clk_divider:counter[5]~2\) # (GND)))
-- \INST8|clk_divider:counter[6]~2\ = CARRY((!\INST8|clk_divider:counter[5]~2\) # (!\INST8|clk_divider:counter[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST8|clk_divider:counter[6]~q\,
	datad => VCC,
	cin => \INST8|clk_divider:counter[5]~2\,
	combout => \INST8|clk_divider:counter[6]~1_combout\,
	cout => \INST8|clk_divider:counter[6]~2\);

-- Location: FF_X1_Y9_N21
\INST8|clk_divider:counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST8|clk_divider:counter[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|clk_divider:counter[6]~q\);

-- Location: LCCOMB_X1_Y9_N22
\INST8|clk_divider:counter[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|clk_divider:counter[7]~1_combout\ = (\INST8|clk_divider:counter[7]~q\ & (\INST8|clk_divider:counter[6]~2\ $ (GND))) # (!\INST8|clk_divider:counter[7]~q\ & (!\INST8|clk_divider:counter[6]~2\ & VCC))
-- \INST8|clk_divider:counter[7]~2\ = CARRY((\INST8|clk_divider:counter[7]~q\ & !\INST8|clk_divider:counter[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|clk_divider:counter[7]~q\,
	datad => VCC,
	cin => \INST8|clk_divider:counter[6]~2\,
	combout => \INST8|clk_divider:counter[7]~1_combout\,
	cout => \INST8|clk_divider:counter[7]~2\);

-- Location: FF_X1_Y9_N23
\INST8|clk_divider:counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST8|clk_divider:counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|clk_divider:counter[7]~q\);

-- Location: LCCOMB_X1_Y9_N24
\INST8|clk_divider:counter[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|clk_divider:counter[8]~1_combout\ = (\INST8|clk_divider:counter[8]~q\ & (!\INST8|clk_divider:counter[7]~2\)) # (!\INST8|clk_divider:counter[8]~q\ & ((\INST8|clk_divider:counter[7]~2\) # (GND)))
-- \INST8|clk_divider:counter[8]~2\ = CARRY((!\INST8|clk_divider:counter[7]~2\) # (!\INST8|clk_divider:counter[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST8|clk_divider:counter[8]~q\,
	datad => VCC,
	cin => \INST8|clk_divider:counter[7]~2\,
	combout => \INST8|clk_divider:counter[8]~1_combout\,
	cout => \INST8|clk_divider:counter[8]~2\);

-- Location: FF_X1_Y9_N25
\INST8|clk_divider:counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST8|clk_divider:counter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|clk_divider:counter[8]~q\);

-- Location: LCCOMB_X1_Y9_N26
\INST8|clk_divider:counter[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|clk_divider:counter[9]~1_combout\ = (\INST8|clk_divider:counter[9]~q\ & (\INST8|clk_divider:counter[8]~2\ $ (GND))) # (!\INST8|clk_divider:counter[9]~q\ & (!\INST8|clk_divider:counter[8]~2\ & VCC))
-- \INST8|clk_divider:counter[9]~2\ = CARRY((\INST8|clk_divider:counter[9]~q\ & !\INST8|clk_divider:counter[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|clk_divider:counter[9]~q\,
	datad => VCC,
	cin => \INST8|clk_divider:counter[8]~2\,
	combout => \INST8|clk_divider:counter[9]~1_combout\,
	cout => \INST8|clk_divider:counter[9]~2\);

-- Location: FF_X1_Y9_N27
\INST8|clk_divider:counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST8|clk_divider:counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|clk_divider:counter[9]~q\);

-- Location: LCCOMB_X1_Y9_N28
\INST8|clk_divider:counter[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|clk_divider:counter[10]~1_combout\ = (\INST8|clk_divider:counter[10]~q\ & (!\INST8|clk_divider:counter[9]~2\)) # (!\INST8|clk_divider:counter[10]~q\ & ((\INST8|clk_divider:counter[9]~2\) # (GND)))
-- \INST8|clk_divider:counter[10]~2\ = CARRY((!\INST8|clk_divider:counter[9]~2\) # (!\INST8|clk_divider:counter[10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST8|clk_divider:counter[10]~q\,
	datad => VCC,
	cin => \INST8|clk_divider:counter[9]~2\,
	combout => \INST8|clk_divider:counter[10]~1_combout\,
	cout => \INST8|clk_divider:counter[10]~2\);

-- Location: FF_X1_Y9_N29
\INST8|clk_divider:counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST8|clk_divider:counter[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|clk_divider:counter[10]~q\);

-- Location: LCCOMB_X1_Y9_N30
\INST8|clk_divider:counter[11]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|clk_divider:counter[11]~1_combout\ = (\INST8|clk_divider:counter[11]~q\ & (\INST8|clk_divider:counter[10]~2\ $ (GND))) # (!\INST8|clk_divider:counter[11]~q\ & (!\INST8|clk_divider:counter[10]~2\ & VCC))
-- \INST8|clk_divider:counter[11]~2\ = CARRY((\INST8|clk_divider:counter[11]~q\ & !\INST8|clk_divider:counter[10]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|clk_divider:counter[11]~q\,
	datad => VCC,
	cin => \INST8|clk_divider:counter[10]~2\,
	combout => \INST8|clk_divider:counter[11]~1_combout\,
	cout => \INST8|clk_divider:counter[11]~2\);

-- Location: FF_X1_Y9_N31
\INST8|clk_divider:counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST8|clk_divider:counter[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|clk_divider:counter[11]~q\);

-- Location: LCCOMB_X1_Y8_N0
\INST8|clk_divider:counter[12]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|clk_divider:counter[12]~1_combout\ = (\INST8|clk_divider:counter[12]~q\ & (!\INST8|clk_divider:counter[11]~2\)) # (!\INST8|clk_divider:counter[12]~q\ & ((\INST8|clk_divider:counter[11]~2\) # (GND)))
-- \INST8|clk_divider:counter[12]~2\ = CARRY((!\INST8|clk_divider:counter[11]~2\) # (!\INST8|clk_divider:counter[12]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST8|clk_divider:counter[12]~q\,
	datad => VCC,
	cin => \INST8|clk_divider:counter[11]~2\,
	combout => \INST8|clk_divider:counter[12]~1_combout\,
	cout => \INST8|clk_divider:counter[12]~2\);

-- Location: FF_X1_Y8_N1
\INST8|clk_divider:counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST8|clk_divider:counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|clk_divider:counter[12]~q\);

-- Location: LCCOMB_X1_Y8_N2
\INST8|clk_divider:counter[13]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|clk_divider:counter[13]~1_combout\ = (\INST8|clk_divider:counter[13]~q\ & (\INST8|clk_divider:counter[12]~2\ $ (GND))) # (!\INST8|clk_divider:counter[13]~q\ & (!\INST8|clk_divider:counter[12]~2\ & VCC))
-- \INST8|clk_divider:counter[13]~2\ = CARRY((\INST8|clk_divider:counter[13]~q\ & !\INST8|clk_divider:counter[12]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST8|clk_divider:counter[13]~q\,
	datad => VCC,
	cin => \INST8|clk_divider:counter[12]~2\,
	combout => \INST8|clk_divider:counter[13]~1_combout\,
	cout => \INST8|clk_divider:counter[13]~2\);

-- Location: FF_X1_Y8_N3
\INST8|clk_divider:counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST8|clk_divider:counter[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|clk_divider:counter[13]~q\);

-- Location: LCCOMB_X1_Y8_N4
\INST8|clk_divider:counter[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|clk_divider:counter[14]~1_combout\ = (\INST8|clk_divider:counter[14]~q\ & (!\INST8|clk_divider:counter[13]~2\)) # (!\INST8|clk_divider:counter[14]~q\ & ((\INST8|clk_divider:counter[13]~2\) # (GND)))
-- \INST8|clk_divider:counter[14]~2\ = CARRY((!\INST8|clk_divider:counter[13]~2\) # (!\INST8|clk_divider:counter[14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST8|clk_divider:counter[14]~q\,
	datad => VCC,
	cin => \INST8|clk_divider:counter[13]~2\,
	combout => \INST8|clk_divider:counter[14]~1_combout\,
	cout => \INST8|clk_divider:counter[14]~2\);

-- Location: FF_X1_Y8_N5
\INST8|clk_divider:counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST8|clk_divider:counter[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|clk_divider:counter[14]~q\);

-- Location: LCCOMB_X1_Y8_N6
\INST8|clk_divider:counter[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|clk_divider:counter[15]~1_combout\ = (\INST8|clk_divider:counter[15]~q\ & (\INST8|clk_divider:counter[14]~2\ $ (GND))) # (!\INST8|clk_divider:counter[15]~q\ & (!\INST8|clk_divider:counter[14]~2\ & VCC))
-- \INST8|clk_divider:counter[15]~2\ = CARRY((\INST8|clk_divider:counter[15]~q\ & !\INST8|clk_divider:counter[14]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|clk_divider:counter[15]~q\,
	datad => VCC,
	cin => \INST8|clk_divider:counter[14]~2\,
	combout => \INST8|clk_divider:counter[15]~1_combout\,
	cout => \INST8|clk_divider:counter[15]~2\);

-- Location: FF_X1_Y8_N7
\INST8|clk_divider:counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST8|clk_divider:counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|clk_divider:counter[15]~q\);

-- Location: LCCOMB_X1_Y8_N8
\INST8|clk_divider:counter[16]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|clk_divider:counter[16]~1_combout\ = (\INST8|clk_divider:counter[16]~q\ & (!\INST8|clk_divider:counter[15]~2\)) # (!\INST8|clk_divider:counter[16]~q\ & ((\INST8|clk_divider:counter[15]~2\) # (GND)))
-- \INST8|clk_divider:counter[16]~2\ = CARRY((!\INST8|clk_divider:counter[15]~2\) # (!\INST8|clk_divider:counter[16]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST8|clk_divider:counter[16]~q\,
	datad => VCC,
	cin => \INST8|clk_divider:counter[15]~2\,
	combout => \INST8|clk_divider:counter[16]~1_combout\,
	cout => \INST8|clk_divider:counter[16]~2\);

-- Location: FF_X1_Y8_N9
\INST8|clk_divider:counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST8|clk_divider:counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|clk_divider:counter[16]~q\);

-- Location: LCCOMB_X1_Y8_N10
\INST8|clk_divider:counter[17]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|clk_divider:counter[17]~1_combout\ = (\INST8|clk_divider:counter[17]~q\ & (\INST8|clk_divider:counter[16]~2\ $ (GND))) # (!\INST8|clk_divider:counter[17]~q\ & (!\INST8|clk_divider:counter[16]~2\ & VCC))
-- \INST8|clk_divider:counter[17]~2\ = CARRY((\INST8|clk_divider:counter[17]~q\ & !\INST8|clk_divider:counter[16]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|clk_divider:counter[17]~q\,
	datad => VCC,
	cin => \INST8|clk_divider:counter[16]~2\,
	combout => \INST8|clk_divider:counter[17]~1_combout\,
	cout => \INST8|clk_divider:counter[17]~2\);

-- Location: FF_X1_Y8_N11
\INST8|clk_divider:counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST8|clk_divider:counter[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|clk_divider:counter[17]~q\);

-- Location: LCCOMB_X1_Y8_N12
\INST8|clk_divider:counter[18]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|clk_divider:counter[18]~1_combout\ = (\INST8|clk_divider:counter[18]~q\ & (!\INST8|clk_divider:counter[17]~2\)) # (!\INST8|clk_divider:counter[18]~q\ & ((\INST8|clk_divider:counter[17]~2\) # (GND)))
-- \INST8|clk_divider:counter[18]~2\ = CARRY((!\INST8|clk_divider:counter[17]~2\) # (!\INST8|clk_divider:counter[18]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|clk_divider:counter[18]~q\,
	datad => VCC,
	cin => \INST8|clk_divider:counter[17]~2\,
	combout => \INST8|clk_divider:counter[18]~1_combout\,
	cout => \INST8|clk_divider:counter[18]~2\);

-- Location: FF_X1_Y8_N13
\INST8|clk_divider:counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST8|clk_divider:counter[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|clk_divider:counter[18]~q\);

-- Location: LCCOMB_X1_Y8_N14
\INST8|clk_divider:counter[19]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|clk_divider:counter[19]~1_combout\ = (\INST8|clk_divider:counter[19]~q\ & (\INST8|clk_divider:counter[18]~2\ $ (GND))) # (!\INST8|clk_divider:counter[19]~q\ & (!\INST8|clk_divider:counter[18]~2\ & VCC))
-- \INST8|clk_divider:counter[19]~2\ = CARRY((\INST8|clk_divider:counter[19]~q\ & !\INST8|clk_divider:counter[18]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST8|clk_divider:counter[19]~q\,
	datad => VCC,
	cin => \INST8|clk_divider:counter[18]~2\,
	combout => \INST8|clk_divider:counter[19]~1_combout\,
	cout => \INST8|clk_divider:counter[19]~2\);

-- Location: FF_X1_Y8_N15
\INST8|clk_divider:counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST8|clk_divider:counter[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|clk_divider:counter[19]~q\);

-- Location: LCCOMB_X1_Y8_N16
\INST8|clk_divider:counter[20]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|clk_divider:counter[20]~1_combout\ = (\INST8|clk_divider:counter[20]~q\ & (!\INST8|clk_divider:counter[19]~2\)) # (!\INST8|clk_divider:counter[20]~q\ & ((\INST8|clk_divider:counter[19]~2\) # (GND)))
-- \INST8|clk_divider:counter[20]~2\ = CARRY((!\INST8|clk_divider:counter[19]~2\) # (!\INST8|clk_divider:counter[20]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST8|clk_divider:counter[20]~q\,
	datad => VCC,
	cin => \INST8|clk_divider:counter[19]~2\,
	combout => \INST8|clk_divider:counter[20]~1_combout\,
	cout => \INST8|clk_divider:counter[20]~2\);

-- Location: FF_X1_Y8_N17
\INST8|clk_divider:counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST8|clk_divider:counter[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|clk_divider:counter[20]~q\);

-- Location: LCCOMB_X1_Y8_N18
\INST8|clk_divider:counter[21]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|clk_divider:counter[21]~1_combout\ = (\INST8|clk_divider:counter[21]~q\ & (\INST8|clk_divider:counter[20]~2\ $ (GND))) # (!\INST8|clk_divider:counter[21]~q\ & (!\INST8|clk_divider:counter[20]~2\ & VCC))
-- \INST8|clk_divider:counter[21]~2\ = CARRY((\INST8|clk_divider:counter[21]~q\ & !\INST8|clk_divider:counter[20]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST8|clk_divider:counter[21]~q\,
	datad => VCC,
	cin => \INST8|clk_divider:counter[20]~2\,
	combout => \INST8|clk_divider:counter[21]~1_combout\,
	cout => \INST8|clk_divider:counter[21]~2\);

-- Location: FF_X1_Y8_N19
\INST8|clk_divider:counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST8|clk_divider:counter[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|clk_divider:counter[21]~q\);

-- Location: LCCOMB_X1_Y8_N20
\INST8|clk_divider:counter[22]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|clk_divider:counter[22]~1_combout\ = (\INST8|clk_divider:counter[22]~q\ & (!\INST8|clk_divider:counter[21]~2\)) # (!\INST8|clk_divider:counter[22]~q\ & ((\INST8|clk_divider:counter[21]~2\) # (GND)))
-- \INST8|clk_divider:counter[22]~2\ = CARRY((!\INST8|clk_divider:counter[21]~2\) # (!\INST8|clk_divider:counter[22]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST8|clk_divider:counter[22]~q\,
	datad => VCC,
	cin => \INST8|clk_divider:counter[21]~2\,
	combout => \INST8|clk_divider:counter[22]~1_combout\,
	cout => \INST8|clk_divider:counter[22]~2\);

-- Location: FF_X1_Y8_N21
\INST8|clk_divider:counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST8|clk_divider:counter[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|clk_divider:counter[22]~q\);

-- Location: LCCOMB_X1_Y8_N22
\INST8|clk_divider:counter[23]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|clk_divider:counter[23]~1_combout\ = \INST8|clk_divider:counter[23]~q\ $ (!\INST8|clk_divider:counter[22]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST8|clk_divider:counter[23]~q\,
	cin => \INST8|clk_divider:counter[22]~2\,
	combout => \INST8|clk_divider:counter[23]~1_combout\);

-- Location: FF_X1_Y8_N23
\INST8|clk_divider:counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST8|clk_divider:counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|clk_divider:counter[23]~q\);

-- Location: CLKCTRL_G1
\INST8|clk_divider:counter[23]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \INST8|clk_divider:counter[23]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \INST8|clk_divider:counter[23]~clkctrl_outclk\);

-- Location: LCCOMB_X14_Y16_N30
\INST8|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|Equal1~0_combout\ = (\INST8|counter:cnt[1]~q\ & (\INST8|counter:cnt[2]~q\ & (\INST8|counter:cnt[0]~q\ & !\INST8|counter:cnt[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|counter:cnt[1]~q\,
	datab => \INST8|counter:cnt[2]~q\,
	datac => \INST8|counter:cnt[0]~q\,
	datad => \INST8|counter:cnt[3]~q\,
	combout => \INST8|Equal1~0_combout\);

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

-- Location: LCCOMB_X12_Y8_N24
\INST9|blower~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|blower~2_combout\ = (\pb_n[2]~input_o\ & (\pb_n[1]~input_o\ & \pb_n[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[2]~input_o\,
	datab => \pb_n[1]~input_o\,
	datac => \pb_n[0]~input_o\,
	combout => \INST9|blower~2_combout\);

-- Location: LCCOMB_X13_Y16_N10
\inst1|AGTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|AGTB~2_combout\ = (\INST3|hex_out[3]~0_combout\ & (\INST8|counter:cnt[3]~q\ & (\INST3|hex_out[2]~1_combout\ $ (\INST8|counter:cnt[2]~q\)))) # (!\INST3|hex_out[3]~0_combout\ & (!\INST8|counter:cnt[3]~q\ & (\INST3|hex_out[2]~1_combout\ $ 
-- (\INST8|counter:cnt[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|hex_out[3]~0_combout\,
	datab => \INST3|hex_out[2]~1_combout\,
	datac => \INST8|counter:cnt[2]~q\,
	datad => \INST8|counter:cnt[3]~q\,
	combout => \inst1|AGTB~2_combout\);

-- Location: LCCOMB_X13_Y16_N26
\inst1|ALTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|ALTB~1_combout\ = (\INST3|hex_out[1]~2_combout\ & (!\INST3|hex_out[0]~3_combout\ & (!\INST8|counter:cnt[0]~q\ & !\INST8|counter:cnt[1]~q\))) # (!\INST3|hex_out[1]~2_combout\ & (((!\INST3|hex_out[0]~3_combout\ & !\INST8|counter:cnt[0]~q\)) # 
-- (!\INST8|counter:cnt[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|hex_out[1]~2_combout\,
	datab => \INST3|hex_out[0]~3_combout\,
	datac => \INST8|counter:cnt[0]~q\,
	datad => \INST8|counter:cnt[1]~q\,
	combout => \inst1|ALTB~1_combout\);

-- Location: LCCOMB_X13_Y16_N28
\inst1|ALTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|ALTB~0_combout\ = (\INST3|hex_out[3]~0_combout\ & (\INST8|counter:cnt[3]~q\ & (!\INST3|hex_out[2]~1_combout\ & !\INST8|counter:cnt[2]~q\))) # (!\INST3|hex_out[3]~0_combout\ & ((\INST8|counter:cnt[3]~q\) # ((!\INST3|hex_out[2]~1_combout\ & 
-- !\INST8|counter:cnt[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|hex_out[3]~0_combout\,
	datab => \INST8|counter:cnt[3]~q\,
	datac => \INST3|hex_out[2]~1_combout\,
	datad => \INST8|counter:cnt[2]~q\,
	combout => \inst1|ALTB~0_combout\);

-- Location: LCCOMB_X13_Y16_N8
\inst1|ALTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|ALTB~2_combout\ = (\inst1|ALTB~0_combout\) # ((\inst1|AGTB~2_combout\ & \inst1|ALTB~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|AGTB~2_combout\,
	datab => \inst1|ALTB~1_combout\,
	datad => \inst1|ALTB~0_combout\,
	combout => \inst1|ALTB~2_combout\);

-- Location: LCCOMB_X13_Y16_N2
\INST8|counter:cnt[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|counter:cnt[3]~0_combout\ = (\INST9|blower~2_combout\ & ((\INST8|counter~1_combout\) # ((!\INST8|Equal1~0_combout\ & \inst1|ALTB~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|Equal1~0_combout\,
	datab => \INST8|counter~1_combout\,
	datac => \INST9|blower~2_combout\,
	datad => \inst1|ALTB~2_combout\,
	combout => \INST8|counter:cnt[3]~0_combout\);

-- Location: LCCOMB_X13_Y16_N6
\INST8|counter:cnt[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|counter:cnt[0]~0_combout\ = \INST8|counter:cnt[0]~q\ $ (\INST8|counter:cnt[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST8|counter:cnt[0]~q\,
	datad => \INST8|counter:cnt[3]~0_combout\,
	combout => \INST8|counter:cnt[0]~0_combout\);

-- Location: FF_X13_Y16_N7
\INST8|counter:cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST8|clk_divider:counter[23]~clkctrl_outclk\,
	d => \INST8|counter:cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|counter:cnt[0]~q\);

-- Location: LCCOMB_X13_Y16_N12
\INST8|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|Add1~1_cout\ = CARRY(!\INST8|counter:cnt[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST8|counter:cnt[0]~q\,
	datad => VCC,
	cout => \INST8|Add1~1_cout\);

-- Location: LCCOMB_X13_Y16_N14
\INST8|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|Add1~2_combout\ = (\INST8|counter:cnt[1]~q\ & ((\INST8|counter~1_combout\ & ((\INST8|Add1~1_cout\) # (GND))) # (!\INST8|counter~1_combout\ & (!\INST8|Add1~1_cout\)))) # (!\INST8|counter:cnt[1]~q\ & ((\INST8|counter~1_combout\ & 
-- (!\INST8|Add1~1_cout\)) # (!\INST8|counter~1_combout\ & (\INST8|Add1~1_cout\ & VCC))))
-- \INST8|Add1~3\ = CARRY((\INST8|counter:cnt[1]~q\ & ((\INST8|counter~1_combout\) # (!\INST8|Add1~1_cout\))) # (!\INST8|counter:cnt[1]~q\ & (\INST8|counter~1_combout\ & !\INST8|Add1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|counter:cnt[1]~q\,
	datab => \INST8|counter~1_combout\,
	datad => VCC,
	cin => \INST8|Add1~1_cout\,
	combout => \INST8|Add1~2_combout\,
	cout => \INST8|Add1~3\);

-- Location: LCCOMB_X13_Y16_N0
\INST8|counter:cnt[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|counter:cnt[1]~0_combout\ = !\INST8|Add1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST8|Add1~2_combout\,
	combout => \INST8|counter:cnt[1]~0_combout\);

-- Location: FF_X13_Y16_N1
\INST8|counter:cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST8|clk_divider:counter[23]~clkctrl_outclk\,
	d => \INST8|counter:cnt[1]~0_combout\,
	ena => \INST8|counter:cnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|counter:cnt[1]~q\);

-- Location: LCCOMB_X13_Y16_N16
\INST8|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|Add1~4_combout\ = ((\INST8|counter:cnt[2]~q\ $ (\INST8|counter~1_combout\ $ (!\INST8|Add1~3\)))) # (GND)
-- \INST8|Add1~5\ = CARRY((\INST8|counter:cnt[2]~q\ & (!\INST8|counter~1_combout\ & !\INST8|Add1~3\)) # (!\INST8|counter:cnt[2]~q\ & ((!\INST8|Add1~3\) # (!\INST8|counter~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|counter:cnt[2]~q\,
	datab => \INST8|counter~1_combout\,
	datad => VCC,
	cin => \INST8|Add1~3\,
	combout => \INST8|Add1~4_combout\,
	cout => \INST8|Add1~5\);

-- Location: LCCOMB_X13_Y16_N4
\INST8|counter:cnt[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|counter:cnt[2]~0_combout\ = !\INST8|Add1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST8|Add1~4_combout\,
	combout => \INST8|counter:cnt[2]~0_combout\);

-- Location: FF_X13_Y16_N5
\INST8|counter:cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST8|clk_divider:counter[23]~clkctrl_outclk\,
	d => \INST8|counter:cnt[2]~0_combout\,
	ena => \INST8|counter:cnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|counter:cnt[2]~q\);

-- Location: LCCOMB_X13_Y16_N22
\inst1|AGTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|AGTB~0_combout\ = (\INST3|hex_out[3]~0_combout\ & (((\INST3|hex_out[2]~1_combout\ & \INST8|counter:cnt[2]~q\)) # (!\INST8|counter:cnt[3]~q\))) # (!\INST3|hex_out[3]~0_combout\ & (\INST3|hex_out[2]~1_combout\ & (\INST8|counter:cnt[2]~q\ & 
-- !\INST8|counter:cnt[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|hex_out[3]~0_combout\,
	datab => \INST3|hex_out[2]~1_combout\,
	datac => \INST8|counter:cnt[2]~q\,
	datad => \INST8|counter:cnt[3]~q\,
	combout => \inst1|AGTB~0_combout\);

-- Location: LCCOMB_X13_Y16_N20
\inst1|AGTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|AGTB~1_combout\ = (\INST3|hex_out[1]~2_combout\ & ((\INST8|counter:cnt[1]~q\) # ((\INST3|hex_out[0]~3_combout\ & \INST8|counter:cnt[0]~q\)))) # (!\INST3|hex_out[1]~2_combout\ & (\INST3|hex_out[0]~3_combout\ & (\INST8|counter:cnt[0]~q\ & 
-- \INST8|counter:cnt[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|hex_out[1]~2_combout\,
	datab => \INST3|hex_out[0]~3_combout\,
	datac => \INST8|counter:cnt[0]~q\,
	datad => \INST8|counter:cnt[1]~q\,
	combout => \inst1|AGTB~1_combout\);

-- Location: LCCOMB_X13_Y16_N30
\INST8|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|counter~0_combout\ = (\INST8|counter:cnt[0]~q\) # ((\INST8|counter:cnt[1]~q\) # ((\INST8|counter:cnt[2]~q\) # (!\INST8|counter:cnt[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|counter:cnt[0]~q\,
	datab => \INST8|counter:cnt[1]~q\,
	datac => \INST8|counter:cnt[2]~q\,
	datad => \INST8|counter:cnt[3]~q\,
	combout => \INST8|counter~0_combout\);

-- Location: LCCOMB_X13_Y16_N24
\INST8|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|counter~1_combout\ = (\INST8|counter~0_combout\ & ((\inst1|AGTB~0_combout\) # ((\inst1|AGTB~1_combout\ & \inst1|AGTB~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|AGTB~0_combout\,
	datab => \inst1|AGTB~1_combout\,
	datac => \INST8|counter~0_combout\,
	datad => \inst1|AGTB~2_combout\,
	combout => \INST8|counter~1_combout\);

-- Location: LCCOMB_X13_Y16_N18
\INST8|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|Add1~6_combout\ = \INST8|counter:cnt[3]~q\ $ (\INST8|Add1~5\ $ (!\INST8|counter~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST8|counter:cnt[3]~q\,
	datad => \INST8|counter~1_combout\,
	cin => \INST8|Add1~5\,
	combout => \INST8|Add1~6_combout\);

-- Location: FF_X13_Y16_N19
\INST8|counter:cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST8|clk_divider:counter[23]~clkctrl_outclk\,
	d => \INST8|Add1~6_combout\,
	ena => \INST8|counter:cnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|counter:cnt[3]~q\);

-- Location: LCCOMB_X12_Y16_N24
\INST5|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Mux5~0_combout\ = (\INST8|counter:cnt[3]~q\ & ((\INST8|counter:cnt[0]~q\ & ((!\INST8|counter:cnt[2]~q\))) # (!\INST8|counter:cnt[0]~q\ & (!\INST8|counter:cnt[1]~q\)))) # (!\INST8|counter:cnt[3]~q\ & (!\INST8|counter:cnt[2]~q\ & 
-- (\INST8|counter:cnt[1]~q\ $ (\INST8|counter:cnt[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|counter:cnt[3]~q\,
	datab => \INST8|counter:cnt[1]~q\,
	datac => \INST8|counter:cnt[2]~q\,
	datad => \INST8|counter:cnt[0]~q\,
	combout => \INST5|Mux5~0_combout\);

-- Location: LCCOMB_X11_Y16_N18
\INST6|DOUT_TEMP[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|DOUT_TEMP[1]~0_combout\ = (\INST8|clk_divider:counter[10]~q\ & (!\INST4|Mux5~0_combout\)) # (!\INST8|clk_divider:counter[10]~q\ & ((!\INST5|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4|Mux5~0_combout\,
	datab => \INST8|clk_divider:counter[10]~q\,
	datad => \INST5|Mux5~0_combout\,
	combout => \INST6|DOUT_TEMP[1]~0_combout\);

-- Location: LCCOMB_X11_Y16_N8
\INST4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|Mux1~0_combout\ = (\INST3|hex_out[3]~0_combout\ & (((\INST3|hex_out[2]~1_combout\ & !\INST3|hex_out[1]~2_combout\)))) # (!\INST3|hex_out[3]~0_combout\ & ((\INST3|hex_out[0]~3_combout\ & ((\INST3|hex_out[1]~2_combout\) # 
-- (!\INST3|hex_out[2]~1_combout\))) # (!\INST3|hex_out[0]~3_combout\ & (!\INST3|hex_out[2]~1_combout\ & \INST3|hex_out[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|hex_out[0]~3_combout\,
	datab => \INST3|hex_out[3]~0_combout\,
	datac => \INST3|hex_out[2]~1_combout\,
	datad => \INST3|hex_out[1]~2_combout\,
	combout => \INST4|Mux1~0_combout\);

-- Location: LCCOMB_X12_Y16_N6
\INST5|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Mux1~0_combout\ = (\INST8|counter:cnt[3]~q\ & (\INST8|counter:cnt[1]~q\ & (!\INST8|counter:cnt[2]~q\))) # (!\INST8|counter:cnt[3]~q\ & ((\INST8|counter:cnt[1]~q\ & (\INST8|counter:cnt[2]~q\ & !\INST8|counter:cnt[0]~q\)) # (!\INST8|counter:cnt[1]~q\ 
-- & ((\INST8|counter:cnt[2]~q\) # (!\INST8|counter:cnt[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|counter:cnt[3]~q\,
	datab => \INST8|counter:cnt[1]~q\,
	datac => \INST8|counter:cnt[2]~q\,
	datad => \INST8|counter:cnt[0]~q\,
	combout => \INST5|Mux1~0_combout\);

-- Location: LCCOMB_X11_Y16_N26
\INST6|DOUT_TEMP[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|DOUT_TEMP[5]~1_combout\ = (\INST8|clk_divider:counter[10]~q\ & (!\INST4|Mux1~0_combout\)) # (!\INST8|clk_divider:counter[10]~q\ & ((!\INST5|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST8|clk_divider:counter[10]~q\,
	datac => \INST4|Mux1~0_combout\,
	datad => \INST5|Mux1~0_combout\,
	combout => \INST6|DOUT_TEMP[5]~1_combout\);

-- Location: LCCOMB_X11_Y16_N4
\INST4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|Mux0~0_combout\ = (\INST3|hex_out[3]~0_combout\) # ((\INST3|hex_out[2]~1_combout\ & ((!\INST3|hex_out[1]~2_combout\) # (!\INST3|hex_out[0]~3_combout\))) # (!\INST3|hex_out[2]~1_combout\ & ((\INST3|hex_out[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|hex_out[0]~3_combout\,
	datab => \INST3|hex_out[3]~0_combout\,
	datac => \INST3|hex_out[2]~1_combout\,
	datad => \INST3|hex_out[1]~2_combout\,
	combout => \INST4|Mux0~0_combout\);

-- Location: LCCOMB_X12_Y16_N16
\INST5|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Mux0~0_combout\ = (\INST8|counter:cnt[3]~q\) # ((\INST8|counter:cnt[1]~q\ & (!\INST8|counter:cnt[2]~q\)) # (!\INST8|counter:cnt[1]~q\ & ((\INST8|counter:cnt[2]~q\) # (\INST8|counter:cnt[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|counter:cnt[3]~q\,
	datab => \INST8|counter:cnt[1]~q\,
	datac => \INST8|counter:cnt[2]~q\,
	datad => \INST8|counter:cnt[0]~q\,
	combout => \INST5|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y16_N30
\INST6|DOUT_TEMP[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|DOUT_TEMP[6]~2_combout\ = (\INST8|clk_divider:counter[10]~q\ & (\INST4|Mux0~0_combout\)) # (!\INST8|clk_divider:counter[10]~q\ & ((\INST5|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST8|clk_divider:counter[10]~q\,
	datac => \INST4|Mux0~0_combout\,
	datad => \INST5|Mux0~0_combout\,
	combout => \INST6|DOUT_TEMP[6]~2_combout\);

-- Location: LCCOMB_X11_Y16_N16
\inst1|AGTB~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|AGTB~3_combout\ = (\inst1|AGTB~0_combout\) # ((\inst1|AGTB~1_combout\ & \inst1|AGTB~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|AGTB~1_combout\,
	datac => \inst1|AGTB~2_combout\,
	datad => \inst1|AGTB~0_combout\,
	combout => \inst1|AGTB~3_combout\);

-- Location: LCCOMB_X11_Y16_N6
\inst1|INST3|AEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|INST3|AEQB~0_combout\ = \INST8|counter:cnt[1]~q\ $ (((\pb_n[3]~input_o\ & (!\sw[1]~input_o\)) # (!\pb_n[3]~input_o\ & ((!\sw[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[3]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \INST8|counter:cnt[1]~q\,
	datad => \sw[5]~input_o\,
	combout => \inst1|INST3|AEQB~0_combout\);

-- Location: LCCOMB_X12_Y16_N0
\inst1|AEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|AEQB~0_combout\ = ((\inst1|INST3|AEQB~0_combout\) # (\INST3|hex_out[0]~3_combout\ $ (!\INST8|counter:cnt[0]~q\))) # (!\inst1|AGTB~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|hex_out[0]~3_combout\,
	datab => \inst1|AGTB~2_combout\,
	datac => \inst1|INST3|AEQB~0_combout\,
	datad => \INST8|counter:cnt[0]~q\,
	combout => \inst1|AEQB~0_combout\);

-- Location: LCCOMB_X12_Y8_N0
\INST9|blower~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|blower~3_combout\ = (\pb_n[2]~input_o\ & (\pb_n[1]~input_o\ & (\inst1|AEQB~0_combout\ & \pb_n[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[2]~input_o\,
	datab => \pb_n[1]~input_o\,
	datac => \inst1|AEQB~0_combout\,
	datad => \pb_n[0]~input_o\,
	combout => \INST9|blower~3_combout\);

-- Location: LCCOMB_X12_Y16_N2
\INST7|TEST_PASS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|TEST_PASS~0_combout\ = (\INST8|counter:cnt[1]~q\ & ((\sw[0]~input_o\) # ((\INST8|counter:cnt[0]~q\) # (\sw[1]~input_o\)))) # (!\INST8|counter:cnt[1]~q\ & (\sw[1]~input_o\ & ((\sw[0]~input_o\) # (\INST8|counter:cnt[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \INST8|counter:cnt[0]~q\,
	datac => \INST8|counter:cnt[1]~q\,
	datad => \sw[1]~input_o\,
	combout => \INST7|TEST_PASS~0_combout\);

-- Location: LCCOMB_X12_Y16_N8
\INST7|TEST_PASS~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|TEST_PASS~1_combout\ = (\sw[2]~input_o\ & ((\INST8|counter:cnt[2]~q\) # (\INST7|TEST_PASS~0_combout\))) # (!\sw[2]~input_o\ & (\INST8|counter:cnt[2]~q\ & \INST7|TEST_PASS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[2]~input_o\,
	datac => \INST8|counter:cnt[2]~q\,
	datad => \INST7|TEST_PASS~0_combout\,
	combout => \INST7|TEST_PASS~1_combout\);

-- Location: LCCOMB_X12_Y16_N18
\INST7|TEST_PASS~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|TEST_PASS~2_combout\ = (\inst1|ALTB~2_combout\ & ((\INST8|counter:cnt[3]~q\ & ((!\sw[3]~input_o\) # (!\INST7|TEST_PASS~1_combout\))) # (!\INST8|counter:cnt[3]~q\ & (!\INST7|TEST_PASS~1_combout\ & !\sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|counter:cnt[3]~q\,
	datab => \INST7|TEST_PASS~1_combout\,
	datac => \sw[3]~input_o\,
	datad => \inst1|ALTB~2_combout\,
	combout => \INST7|TEST_PASS~2_combout\);

-- Location: LCCOMB_X12_Y16_N12
\INST7|TEST_PASS~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|TEST_PASS~3_combout\ = (\INST8|counter:cnt[1]~q\ & ((\sw[1]~input_o\) # ((\sw[0]~input_o\ & \INST8|counter:cnt[0]~q\)))) # (!\INST8|counter:cnt[1]~q\ & (\sw[0]~input_o\ & (\INST8|counter:cnt[0]~q\ & \sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \INST8|counter:cnt[0]~q\,
	datac => \INST8|counter:cnt[1]~q\,
	datad => \sw[1]~input_o\,
	combout => \INST7|TEST_PASS~3_combout\);

-- Location: LCCOMB_X12_Y16_N10
\INST7|TEST_PASS~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|TEST_PASS~4_combout\ = (\sw[2]~input_o\ & ((\INST8|counter:cnt[2]~q\) # (\INST7|TEST_PASS~3_combout\))) # (!\sw[2]~input_o\ & (\INST8|counter:cnt[2]~q\ & \INST7|TEST_PASS~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[2]~input_o\,
	datac => \INST8|counter:cnt[2]~q\,
	datad => \INST7|TEST_PASS~3_combout\,
	combout => \INST7|TEST_PASS~4_combout\);

-- Location: LCCOMB_X12_Y16_N28
\INST7|TEST_PASS~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|TEST_PASS~5_combout\ = (\sw[3]~input_o\ & ((\INST7|TEST_PASS~4_combout\) # (!\INST8|counter:cnt[3]~q\))) # (!\sw[3]~input_o\ & (!\INST8|counter:cnt[3]~q\ & \INST7|TEST_PASS~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datac => \INST8|counter:cnt[3]~q\,
	datad => \INST7|TEST_PASS~4_combout\,
	combout => \INST7|TEST_PASS~5_combout\);

-- Location: LCCOMB_X12_Y16_N30
\INST7|TEST_PASS~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|TEST_PASS~6_combout\ = (\INST7|TEST_PASS~5_combout\ & ((\inst1|AGTB~0_combout\) # ((\inst1|AGTB~1_combout\ & \inst1|AGTB~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|AGTB~1_combout\,
	datab => \inst1|AGTB~0_combout\,
	datac => \inst1|AGTB~2_combout\,
	datad => \INST7|TEST_PASS~5_combout\,
	combout => \INST7|TEST_PASS~6_combout\);

-- Location: LCCOMB_X12_Y16_N20
\INST7|TEST_PASS~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|TEST_PASS~7_combout\ = (\INST8|counter:cnt[3]~q\ & (\sw[3]~input_o\ & (\sw[2]~input_o\ $ (\INST8|counter:cnt[2]~q\)))) # (!\INST8|counter:cnt[3]~q\ & (!\sw[3]~input_o\ & (\sw[2]~input_o\ $ (\INST8|counter:cnt[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|counter:cnt[3]~q\,
	datab => \sw[2]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \INST8|counter:cnt[2]~q\,
	combout => \INST7|TEST_PASS~7_combout\);

-- Location: LCCOMB_X12_Y16_N22
\INST7|TEST_PASS~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|TEST_PASS~8_combout\ = (\sw[0]~input_o\ & (!\INST8|counter:cnt[0]~q\ & (\INST8|counter:cnt[1]~q\ $ (\sw[1]~input_o\)))) # (!\sw[0]~input_o\ & (\INST8|counter:cnt[0]~q\ & (\INST8|counter:cnt[1]~q\ $ (\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \INST8|counter:cnt[0]~q\,
	datac => \INST8|counter:cnt[1]~q\,
	datad => \sw[1]~input_o\,
	combout => \INST7|TEST_PASS~8_combout\);

-- Location: LCCOMB_X12_Y16_N4
\INST7|TEST_PASS~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|TEST_PASS~9_combout\ = (\INST7|TEST_PASS~6_combout\) # ((\INST7|TEST_PASS~7_combout\ & (\INST7|TEST_PASS~8_combout\ & !\inst1|AEQB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|TEST_PASS~6_combout\,
	datab => \INST7|TEST_PASS~7_combout\,
	datac => \INST7|TEST_PASS~8_combout\,
	datad => \inst1|AEQB~0_combout\,
	combout => \INST7|TEST_PASS~9_combout\);

-- Location: LCCOMB_X12_Y8_N6
\INST7|TEST_PASS~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|TEST_PASS~10_combout\ = (!\pb_n[2]~input_o\ & ((\INST7|TEST_PASS~2_combout\) # (\INST7|TEST_PASS~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|TEST_PASS~2_combout\,
	datab => \INST7|TEST_PASS~9_combout\,
	datac => \pb_n[2]~input_o\,
	combout => \INST7|TEST_PASS~10_combout\);

-- Location: LCCOMB_X14_Y16_N10
\INST5|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Mux6~0_combout\ = (\INST8|counter:cnt[1]~q\ & (\INST8|counter:cnt[2]~q\ $ (((\INST8|counter:cnt[3]~q\) # (\INST8|counter:cnt[0]~q\))))) # (!\INST8|counter:cnt[1]~q\ & (\INST8|counter:cnt[3]~q\ & (!\INST8|counter:cnt[0]~q\ & 
-- \INST8|counter:cnt[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|counter:cnt[1]~q\,
	datab => \INST8|counter:cnt[3]~q\,
	datac => \INST8|counter:cnt[0]~q\,
	datad => \INST8|counter:cnt[2]~q\,
	combout => \INST5|Mux6~0_combout\);

-- Location: LCCOMB_X14_Y16_N28
\INST4|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|Mux6~0_combout\ = (\INST3|hex_out[2]~1_combout\ & (!\INST3|hex_out[1]~2_combout\ & ((\INST3|hex_out[3]~0_combout\) # (!\INST3|hex_out[0]~3_combout\)))) # (!\INST3|hex_out[2]~1_combout\ & (\INST3|hex_out[0]~3_combout\ & (\INST3|hex_out[3]~0_combout\ 
-- $ (!\INST3|hex_out[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|hex_out[2]~1_combout\,
	datab => \INST3|hex_out[3]~0_combout\,
	datac => \INST3|hex_out[1]~2_combout\,
	datad => \INST3|hex_out[0]~3_combout\,
	combout => \INST4|Mux6~0_combout\);

-- Location: LCCOMB_X14_Y16_N0
\INST6|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|DOUT[0]~0_combout\ = (\INST8|clk_divider:counter[10]~q\ & ((\INST4|Mux6~0_combout\))) # (!\INST8|clk_divider:counter[10]~q\ & (\INST5|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|Mux6~0_combout\,
	datac => \INST8|clk_divider:counter[10]~q\,
	datad => \INST4|Mux6~0_combout\,
	combout => \INST6|DOUT[0]~0_combout\);

-- Location: LCCOMB_X14_Y16_N12
\INST5|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Mux4~0_combout\ = (\INST8|counter:cnt[3]~q\ & (!\INST8|counter:cnt[2]~q\ & ((\INST8|counter:cnt[0]~q\) # (!\INST8|counter:cnt[1]~q\)))) # (!\INST8|counter:cnt[3]~q\ & (!\INST8|counter:cnt[1]~q\ & (\INST8|counter:cnt[0]~q\ & 
-- \INST8|counter:cnt[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|counter:cnt[1]~q\,
	datab => \INST8|counter:cnt[3]~q\,
	datac => \INST8|counter:cnt[0]~q\,
	datad => \INST8|counter:cnt[2]~q\,
	combout => \INST5|Mux4~0_combout\);

-- Location: LCCOMB_X14_Y16_N18
\INST4|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|Mux4~0_combout\ = (\INST3|hex_out[2]~1_combout\ & (\INST3|hex_out[3]~0_combout\ & ((\INST3|hex_out[1]~2_combout\) # (!\INST3|hex_out[0]~3_combout\)))) # (!\INST3|hex_out[2]~1_combout\ & (!\INST3|hex_out[3]~0_combout\ & (\INST3|hex_out[1]~2_combout\ 
-- & !\INST3|hex_out[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|hex_out[2]~1_combout\,
	datab => \INST3|hex_out[3]~0_combout\,
	datac => \INST3|hex_out[1]~2_combout\,
	datad => \INST3|hex_out[0]~3_combout\,
	combout => \INST4|Mux4~0_combout\);

-- Location: LCCOMB_X14_Y16_N14
\INST6|DOUT[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|DOUT[2]~2_combout\ = (\INST8|clk_divider:counter[10]~q\ & ((\INST4|Mux4~0_combout\))) # (!\INST8|clk_divider:counter[10]~q\ & (\INST5|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|Mux4~0_combout\,
	datac => \INST8|clk_divider:counter[10]~q\,
	datad => \INST4|Mux4~0_combout\,
	combout => \INST6|DOUT[2]~2_combout\);

-- Location: LCCOMB_X12_Y16_N14
\INST5|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Mux3~0_combout\ = (\INST8|counter:cnt[1]~q\ & (!\INST8|counter:cnt[3]~q\ & (\INST8|counter:cnt[2]~q\ $ (\INST8|counter:cnt[0]~q\)))) # (!\INST8|counter:cnt[1]~q\ & ((\INST8|counter:cnt[2]~q\ & (\INST8|counter:cnt[3]~q\ & \INST8|counter:cnt[0]~q\)) 
-- # (!\INST8|counter:cnt[2]~q\ & ((!\INST8|counter:cnt[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|counter:cnt[3]~q\,
	datab => \INST8|counter:cnt[1]~q\,
	datac => \INST8|counter:cnt[2]~q\,
	datad => \INST8|counter:cnt[0]~q\,
	combout => \INST5|Mux3~0_combout\);

-- Location: LCCOMB_X11_Y16_N24
\INST4|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|Mux3~0_combout\ = (\INST3|hex_out[1]~2_combout\ & ((\INST3|hex_out[0]~3_combout\ & ((\INST3|hex_out[2]~1_combout\))) # (!\INST3|hex_out[0]~3_combout\ & (\INST3|hex_out[3]~0_combout\ & !\INST3|hex_out[2]~1_combout\)))) # 
-- (!\INST3|hex_out[1]~2_combout\ & (!\INST3|hex_out[3]~0_combout\ & (\INST3|hex_out[0]~3_combout\ $ (\INST3|hex_out[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|hex_out[0]~3_combout\,
	datab => \INST3|hex_out[3]~0_combout\,
	datac => \INST3|hex_out[2]~1_combout\,
	datad => \INST3|hex_out[1]~2_combout\,
	combout => \INST4|Mux3~0_combout\);

-- Location: LCCOMB_X11_Y16_N22
\INST6|DOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|DOUT[3]~3_combout\ = (\INST8|clk_divider:counter[10]~q\ & ((\INST4|Mux3~0_combout\))) # (!\INST8|clk_divider:counter[10]~q\ & (\INST5|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST8|clk_divider:counter[10]~q\,
	datac => \INST5|Mux3~0_combout\,
	datad => \INST4|Mux3~0_combout\,
	combout => \INST6|DOUT[3]~3_combout\);

-- Location: LCCOMB_X14_Y16_N22
\INST5|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Mux2~0_combout\ = (\INST8|counter:cnt[1]~q\ & ((\INST8|counter:cnt[2]~q\ & ((!\INST8|counter:cnt[0]~q\))) # (!\INST8|counter:cnt[2]~q\ & (!\INST8|counter:cnt[3]~q\)))) # (!\INST8|counter:cnt[1]~q\ & (!\INST8|counter:cnt[3]~q\ & 
-- (!\INST8|counter:cnt[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|counter:cnt[1]~q\,
	datab => \INST8|counter:cnt[3]~q\,
	datac => \INST8|counter:cnt[0]~q\,
	datad => \INST8|counter:cnt[2]~q\,
	combout => \INST5|Mux2~0_combout\);

-- Location: LCCOMB_X14_Y16_N24
\INST4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|Mux2~0_combout\ = (\INST3|hex_out[1]~2_combout\ & (((!\INST3|hex_out[3]~0_combout\ & \INST3|hex_out[0]~3_combout\)))) # (!\INST3|hex_out[1]~2_combout\ & ((\INST3|hex_out[2]~1_combout\ & (!\INST3|hex_out[3]~0_combout\)) # 
-- (!\INST3|hex_out[2]~1_combout\ & ((\INST3|hex_out[0]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|hex_out[2]~1_combout\,
	datab => \INST3|hex_out[3]~0_combout\,
	datac => \INST3|hex_out[1]~2_combout\,
	datad => \INST3|hex_out[0]~3_combout\,
	combout => \INST4|Mux2~0_combout\);

-- Location: LCCOMB_X14_Y16_N4
\INST6|DOUT[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|DOUT[4]~4_combout\ = (\INST8|clk_divider:counter[10]~q\ & ((\INST4|Mux2~0_combout\))) # (!\INST8|clk_divider:counter[10]~q\ & (\INST5|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|Mux2~0_combout\,
	datac => \INST8|clk_divider:counter[10]~q\,
	datad => \INST4|Mux2~0_combout\,
	combout => \INST6|DOUT[4]~4_combout\);

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


