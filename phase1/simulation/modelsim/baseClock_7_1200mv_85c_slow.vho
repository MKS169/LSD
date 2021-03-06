-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "06/02/2017 12:29:21"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Clock IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX7 : OUT std_logic_vector(7 DOWNTO 0);
	HEX6 : OUT std_logic_vector(7 DOWNTO 0);
	HEX5 : OUT std_logic_vector(7 DOWNTO 0);
	HEX4 : OUT std_logic_vector(7 DOWNTO 0);
	HEX3 : OUT std_logic_vector(7 DOWNTO 0);
	HEX2 : OUT std_logic_vector(7 DOWNTO 0)
	);
END Clock;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[7]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[7]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[7]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[7]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[7]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[7]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Clock IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \freqDiv|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \HEX7[7]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX6[7]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[7]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[7]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[7]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \freqDiv|Add0~0_combout\ : std_logic;
SIGNAL \freqDiv|Add0~1\ : std_logic;
SIGNAL \freqDiv|Add0~2_combout\ : std_logic;
SIGNAL \freqDiv|Add0~3\ : std_logic;
SIGNAL \freqDiv|Add0~4_combout\ : std_logic;
SIGNAL \freqDiv|Add0~5\ : std_logic;
SIGNAL \freqDiv|Add0~6_combout\ : std_logic;
SIGNAL \freqDiv|Add0~7\ : std_logic;
SIGNAL \freqDiv|Add0~8_combout\ : std_logic;
SIGNAL \freqDiv|Add0~9\ : std_logic;
SIGNAL \freqDiv|Add0~10_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~8_combout\ : std_logic;
SIGNAL \freqDiv|Add0~11\ : std_logic;
SIGNAL \freqDiv|Add0~12_combout\ : std_logic;
SIGNAL \freqDiv|Add0~13\ : std_logic;
SIGNAL \freqDiv|Add0~14_combout\ : std_logic;
SIGNAL \freqDiv|s_count~11_combout\ : std_logic;
SIGNAL \freqDiv|Add0~15\ : std_logic;
SIGNAL \freqDiv|Add0~16_combout\ : std_logic;
SIGNAL \freqDiv|Add0~17\ : std_logic;
SIGNAL \freqDiv|Add0~18_combout\ : std_logic;
SIGNAL \freqDiv|Add0~19\ : std_logic;
SIGNAL \freqDiv|Add0~20_combout\ : std_logic;
SIGNAL \freqDiv|Add0~21\ : std_logic;
SIGNAL \freqDiv|Add0~22_combout\ : std_logic;
SIGNAL \freqDiv|Add0~23\ : std_logic;
SIGNAL \freqDiv|Add0~24_combout\ : std_logic;
SIGNAL \freqDiv|s_count~10_combout\ : std_logic;
SIGNAL \freqDiv|Add0~25\ : std_logic;
SIGNAL \freqDiv|Add0~26_combout\ : std_logic;
SIGNAL \freqDiv|s_count~9_combout\ : std_logic;
SIGNAL \freqDiv|Add0~27\ : std_logic;
SIGNAL \freqDiv|Add0~28_combout\ : std_logic;
SIGNAL \freqDiv|s_count~8_combout\ : std_logic;
SIGNAL \freqDiv|Add0~29\ : std_logic;
SIGNAL \freqDiv|Add0~30_combout\ : std_logic;
SIGNAL \freqDiv|s_count~3_combout\ : std_logic;
SIGNAL \freqDiv|Add0~31\ : std_logic;
SIGNAL \freqDiv|Add0~32_combout\ : std_logic;
SIGNAL \freqDiv|Add0~33\ : std_logic;
SIGNAL \freqDiv|Add0~34_combout\ : std_logic;
SIGNAL \freqDiv|s_count~2_combout\ : std_logic;
SIGNAL \freqDiv|Add0~35\ : std_logic;
SIGNAL \freqDiv|Add0~36_combout\ : std_logic;
SIGNAL \freqDiv|Add0~37\ : std_logic;
SIGNAL \freqDiv|Add0~38_combout\ : std_logic;
SIGNAL \freqDiv|s_count~7_combout\ : std_logic;
SIGNAL \freqDiv|Add0~39\ : std_logic;
SIGNAL \freqDiv|Add0~40_combout\ : std_logic;
SIGNAL \freqDiv|s_count~6_combout\ : std_logic;
SIGNAL \freqDiv|Add0~41\ : std_logic;
SIGNAL \freqDiv|Add0~42_combout\ : std_logic;
SIGNAL \freqDiv|s_count~5_combout\ : std_logic;
SIGNAL \freqDiv|Add0~47\ : std_logic;
SIGNAL \freqDiv|Add0~48_combout\ : std_logic;
SIGNAL \freqDiv|Add0~49\ : std_logic;
SIGNAL \freqDiv|Add0~50_combout\ : std_logic;
SIGNAL \freqDiv|s_count~0_combout\ : std_logic;
SIGNAL \freqDiv|Add0~51\ : std_logic;
SIGNAL \freqDiv|Add0~52_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~4_combout\ : std_logic;
SIGNAL \freqDiv|Add0~53\ : std_logic;
SIGNAL \freqDiv|Add0~54_combout\ : std_logic;
SIGNAL \freqDiv|Add0~55\ : std_logic;
SIGNAL \freqDiv|Add0~56_combout\ : std_logic;
SIGNAL \freqDiv|Add0~57\ : std_logic;
SIGNAL \freqDiv|Add0~58_combout\ : std_logic;
SIGNAL \freqDiv|Add0~59\ : std_logic;
SIGNAL \freqDiv|Add0~60_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~3_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~6_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~5_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~7_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~9_combout\ : std_logic;
SIGNAL \freqDiv|Add0~43\ : std_logic;
SIGNAL \freqDiv|Add0~44_combout\ : std_logic;
SIGNAL \freqDiv|s_count~4_combout\ : std_logic;
SIGNAL \freqDiv|Add0~45\ : std_logic;
SIGNAL \freqDiv|Add0~46_combout\ : std_logic;
SIGNAL \freqDiv|s_count~1_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~0_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~1_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~2_combout\ : std_logic;
SIGNAL \freqDiv|Equal1~0_combout\ : std_logic;
SIGNAL \freqDiv|Equal1~1_combout\ : std_logic;
SIGNAL \freqDiv|Equal1~2_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~0_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~feeder_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~q\ : std_logic;
SIGNAL \freqDiv|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \sec~3_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \sec~2_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \sec~1_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \sec~0_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[6]~50_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \min[0]~7_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \min[1]~6_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \min[2]~5_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \min[3]~4_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \min[4]~3_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \min[5]~2_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \min[6]~1_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \min[7]~0_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \min[8]~8_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \min[9]~9_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \min[10]~10_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \min[11]~11_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \min[12]~12_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \min[13]~13_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \min[14]~14_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \min[15]~15_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \min[16]~16_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \min[17]~17_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \min[18]~18_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \min[19]~19_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \min[20]~20_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \min[21]~21_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \min[22]~22_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \min[23]~23_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \min[24]~24_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \min[25]~25_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \min[26]~26_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \min[27]~27_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \min[28]~28_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \min[29]~29_combout\ : std_logic;
SIGNAL \min[7]~31_combout\ : std_logic;
SIGNAL \min[23]~30_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \min[30]~32_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \min[31]~33_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[6]~49_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \hour[0]~7_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \hour[1]~6_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \hour[2]~5_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \hour[3]~4_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \hour[4]~3_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \hour[5]~2_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \hour[6]~1_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \hour[8]~8_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \hour[9]~9_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \hour[10]~10_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \hour[11]~11_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \hour[12]~12_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \hour[13]~13_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \hour[14]~14_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \hour[15]~15_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \hour[16]~16_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \hour[17]~17_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \hour[18]~18_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \hour[19]~19_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \hour[20]~20_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \hour[21]~21_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \hour[22]~22_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \hour[23]~23_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \hour[24]~24_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \hour[25]~25_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \hour[26]~26_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \hour[27]~27_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \hour[28]~28_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \hour[29]~29_combout\ : std_logic;
SIGNAL \hour[7]~31_combout\ : std_logic;
SIGNAL \hour[7]~30_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \hour[30]~32_combout\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \hour[31]~33_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Equal2~9_combout\ : std_logic;
SIGNAL \Equal2~10_combout\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \hour[7]~0_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[0]~12_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[0]~13_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[0]~14_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[0]~15_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[0]~9_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[0]~8_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[1]~7_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[28]~62_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[31]~59_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[30]~61_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n~6_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[0]~10_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[0]~56_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[1]~22_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[1]~23_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[1]~24_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[0]~11_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[1]~17_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[3]~18_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n~16_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[1]~19_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[0]~20_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[1]~21_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[1]~25_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[2]~28_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[2]~26_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[2]~27_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[2]~29_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[3]~30_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[3]~31_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[3]~32_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[3]~33_combout\ : std_logic;
SIGNAL \b7segH2|Equal0~0_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[3]~34_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[3]~35_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[3]~36_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[3]~37_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[3]~39_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[0]~38_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[3]~40_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[3]~41_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[3]~42_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[3]~43_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[4]~44_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[2]~48_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[5]~57_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[5]~45_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[5]~46_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[5]~47_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[5]~49_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[6]~50_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[6]~51_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[6]~52_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[6]~53_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[6]~58_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[6]~54_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[6]~55_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~55_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~54_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~56_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~59_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[24]~60_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[24]~61_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~96_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~63_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~97_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~64_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~98_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~65_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[32]~68_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~69_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~89_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~90_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~70_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~71_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~91_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~72_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~99_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~74_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~73_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[40]~75_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[40]~76_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~82_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~92_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~93_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~83_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~94_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~84_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~95_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~85_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~77_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~100_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~78_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~79_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~81_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~80_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~87_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~86_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~88_combout\ : std_logic;
SIGNAL \b7segL2|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \b7segL2|decOut_n[1]~1_combout\ : std_logic;
SIGNAL \b7segL2|decOut_n[2]~2_combout\ : std_logic;
SIGNAL \b7segL2|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \b7segL2|decOut_n[4]~4_combout\ : std_logic;
SIGNAL \b7segL2|decOut_n[5]~5_combout\ : std_logic;
SIGNAL \b7segL2|decOut_n[6]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[28]~62_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[31]~59_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[30]~61_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n~6_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[0]~9_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[0]~8_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[1]~7_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[0]~10_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[0]~14_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[0]~12_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[0]~13_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[0]~15_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[0]~55_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[0]~20_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[0]~11_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[1]~21_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[1]~23_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[1]~22_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[1]~24_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[1]~17_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n~16_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[6]~18_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[1]~19_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[1]~25_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[2]~28_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[2]~26_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[2]~27_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[2]~29_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[3]~30_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[3]~58_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[3]~59_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[3]~31_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[3]~32_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[3]~33_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[3]~34_combout\ : std_logic;
SIGNAL \b7segH1|Equal0~0_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[3]~35_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[3]~39_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[3]~40_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[0]~37_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[3]~38_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[3]~41_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[3]~36_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[3]~42_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[4]~43_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[2]~47_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[5]~56_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[5]~44_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[5]~45_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[5]~46_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[5]~48_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[6]~52_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[6]~51_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[6]~57_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[6]~50_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[6]~53_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[6]~54_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~80_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~81_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~82_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~83_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~84_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~85_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~77_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~78_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~79_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~88_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~86_combout\ : std_logic;
SIGNAL \b7segL1|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \b7segL1|decOut_n[1]~1_combout\ : std_logic;
SIGNAL \b7segL1|decOut_n[2]~2_combout\ : std_logic;
SIGNAL \b7segL1|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \b7segL1|decOut_n[4]~4_combout\ : std_logic;
SIGNAL \b7segL1|decOut_n[5]~5_combout\ : std_logic;
SIGNAL \b7segL1|decOut_n[6]~6_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[0]~14_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[0]~15_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[0]~16_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[0]~17_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[0]~11_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[0]~10_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[1]~9_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \b7segH|decOut_n~8_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[0]~12_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[0]~56_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[0]~13_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[0]~22_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[1]~23_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[1]~25_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[1]~24_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[1]~26_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[6]~20_combout\ : std_logic;
SIGNAL \b7segH|decOut_n~18_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[1]~19_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[1]~21_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[1]~27_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[2]~30_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[2]~28_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[2]~29_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[2]~31_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[3]~42_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[0]~39_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[3]~40_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[3]~41_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[3]~43_combout\ : std_logic;
SIGNAL \b7segH|Equal0~0_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[3]~32_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[3]~60_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[3]~61_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[3]~33_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[3]~34_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[3]~35_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[3]~36_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[3]~37_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[3]~38_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[3]~44_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[4]~45_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[5]~49_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[5]~47_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[2]~46_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[5]~57_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[5]~48_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[5]~58_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[6]~53_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[6]~52_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[6]~59_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[6]~51_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[6]~54_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[6]~55_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~82_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~83_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~84_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~85_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~77_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~79_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~78_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~80_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~81_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~86_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~88_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~87_combout\ : std_logic;
SIGNAL \b7segL|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \b7segL|decOut_n[1]~1_combout\ : std_logic;
SIGNAL \b7segL|decOut_n[2]~2_combout\ : std_logic;
SIGNAL \b7segL|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \b7segL|decOut_n[4]~4_combout\ : std_logic;
SIGNAL \b7segL|decOut_n[5]~5_combout\ : std_logic;
SIGNAL \b7segL|decOut_n[6]~6_combout\ : std_logic;
SIGNAL hour : std_logic_vector(31 DOWNTO 0);
SIGNAL min : std_logic_vector(31 DOWNTO 0);
SIGNAL sec : std_logic_vector(31 DOWNTO 0);
SIGNAL \freqDiv|s_count\ : std_logic_vector(30 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
HEX7 <= ww_HEX7;
HEX6 <= ww_HEX6;
HEX5 <= ww_HEX5;
HEX4 <= ww_HEX4;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\freqDiv|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \freqDiv|clkOut~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segH2|decOut_n[0]~56_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segH2|decOut_n[1]~25_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segH2|decOut_n[2]~29_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segH2|decOut_n[3]~43_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segH2|decOut_n[4]~44_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segH2|decOut_n[5]~49_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segH2|decOut_n[6]~55_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\HEX7[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[7]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segL2|decOut_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segL2|decOut_n[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segL2|decOut_n[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segL2|decOut_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segL2|decOut_n[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segL2|decOut_n[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segL2|decOut_n[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\HEX6[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[7]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segH1|decOut_n[0]~55_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segH1|decOut_n[1]~25_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segH1|decOut_n[2]~29_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segH1|decOut_n[3]~42_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segH1|decOut_n[4]~43_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segH1|decOut_n[5]~48_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segH1|decOut_n[6]~54_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X100_Y0_N16
\HEX5[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[7]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segL1|decOut_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segL1|decOut_n[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segL1|decOut_n[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segL1|decOut_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segL1|decOut_n[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segL1|decOut_n[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segL1|decOut_n[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\HEX4[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[7]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segH|decOut_n[0]~56_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segH|decOut_n[1]~27_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segH|decOut_n[2]~31_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segH|decOut_n[3]~44_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segH|decOut_n[4]~45_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segH|decOut_n[5]~58_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segH|decOut_n[6]~55_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\HEX3[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[7]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segL|decOut_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segL|decOut_n[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segL|decOut_n[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segL|decOut_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segL|decOut_n[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segL|decOut_n[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segL|decOut_n[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\HEX2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X112_Y39_N2
\freqDiv|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~0_combout\ = \freqDiv|s_count\(0) $ (VCC)
-- \freqDiv|Add0~1\ = CARRY(\freqDiv|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(0),
	datad => VCC,
	combout => \freqDiv|Add0~0_combout\,
	cout => \freqDiv|Add0~1\);

-- Location: FF_X112_Y39_N3
\freqDiv|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(0));

-- Location: LCCOMB_X112_Y39_N4
\freqDiv|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~2_combout\ = (\freqDiv|s_count\(1) & (!\freqDiv|Add0~1\)) # (!\freqDiv|s_count\(1) & ((\freqDiv|Add0~1\) # (GND)))
-- \freqDiv|Add0~3\ = CARRY((!\freqDiv|Add0~1\) # (!\freqDiv|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(1),
	datad => VCC,
	cin => \freqDiv|Add0~1\,
	combout => \freqDiv|Add0~2_combout\,
	cout => \freqDiv|Add0~3\);

-- Location: FF_X112_Y39_N5
\freqDiv|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(1));

-- Location: LCCOMB_X112_Y39_N6
\freqDiv|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~4_combout\ = (\freqDiv|s_count\(2) & (\freqDiv|Add0~3\ $ (GND))) # (!\freqDiv|s_count\(2) & (!\freqDiv|Add0~3\ & VCC))
-- \freqDiv|Add0~5\ = CARRY((\freqDiv|s_count\(2) & !\freqDiv|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(2),
	datad => VCC,
	cin => \freqDiv|Add0~3\,
	combout => \freqDiv|Add0~4_combout\,
	cout => \freqDiv|Add0~5\);

-- Location: FF_X112_Y39_N7
\freqDiv|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(2));

-- Location: LCCOMB_X112_Y39_N8
\freqDiv|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~6_combout\ = (\freqDiv|s_count\(3) & (!\freqDiv|Add0~5\)) # (!\freqDiv|s_count\(3) & ((\freqDiv|Add0~5\) # (GND)))
-- \freqDiv|Add0~7\ = CARRY((!\freqDiv|Add0~5\) # (!\freqDiv|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(3),
	datad => VCC,
	cin => \freqDiv|Add0~5\,
	combout => \freqDiv|Add0~6_combout\,
	cout => \freqDiv|Add0~7\);

-- Location: FF_X112_Y39_N9
\freqDiv|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(3));

-- Location: LCCOMB_X112_Y39_N10
\freqDiv|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~8_combout\ = (\freqDiv|s_count\(4) & (\freqDiv|Add0~7\ $ (GND))) # (!\freqDiv|s_count\(4) & (!\freqDiv|Add0~7\ & VCC))
-- \freqDiv|Add0~9\ = CARRY((\freqDiv|s_count\(4) & !\freqDiv|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(4),
	datad => VCC,
	cin => \freqDiv|Add0~7\,
	combout => \freqDiv|Add0~8_combout\,
	cout => \freqDiv|Add0~9\);

-- Location: FF_X112_Y39_N11
\freqDiv|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(4));

-- Location: LCCOMB_X112_Y39_N12
\freqDiv|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~10_combout\ = (\freqDiv|s_count\(5) & (!\freqDiv|Add0~9\)) # (!\freqDiv|s_count\(5) & ((\freqDiv|Add0~9\) # (GND)))
-- \freqDiv|Add0~11\ = CARRY((!\freqDiv|Add0~9\) # (!\freqDiv|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(5),
	datad => VCC,
	cin => \freqDiv|Add0~9\,
	combout => \freqDiv|Add0~10_combout\,
	cout => \freqDiv|Add0~11\);

-- Location: FF_X112_Y39_N13
\freqDiv|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(5));

-- Location: LCCOMB_X111_Y39_N12
\freqDiv|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~8_combout\ = (\freqDiv|s_count\(2) & (\freqDiv|s_count\(4) & (\freqDiv|s_count\(3) & \freqDiv|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(2),
	datab => \freqDiv|s_count\(4),
	datac => \freqDiv|s_count\(3),
	datad => \freqDiv|s_count\(5),
	combout => \freqDiv|Equal0~8_combout\);

-- Location: LCCOMB_X112_Y39_N14
\freqDiv|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~12_combout\ = (\freqDiv|s_count\(6) & (\freqDiv|Add0~11\ $ (GND))) # (!\freqDiv|s_count\(6) & (!\freqDiv|Add0~11\ & VCC))
-- \freqDiv|Add0~13\ = CARRY((\freqDiv|s_count\(6) & !\freqDiv|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(6),
	datad => VCC,
	cin => \freqDiv|Add0~11\,
	combout => \freqDiv|Add0~12_combout\,
	cout => \freqDiv|Add0~13\);

-- Location: FF_X112_Y39_N15
\freqDiv|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(6));

-- Location: LCCOMB_X112_Y39_N16
\freqDiv|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~14_combout\ = (\freqDiv|s_count\(7) & (!\freqDiv|Add0~13\)) # (!\freqDiv|s_count\(7) & ((\freqDiv|Add0~13\) # (GND)))
-- \freqDiv|Add0~15\ = CARRY((!\freqDiv|Add0~13\) # (!\freqDiv|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(7),
	datad => VCC,
	cin => \freqDiv|Add0~13\,
	combout => \freqDiv|Add0~14_combout\,
	cout => \freqDiv|Add0~15\);

-- Location: LCCOMB_X111_Y38_N2
\freqDiv|s_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~11_combout\ = (\freqDiv|Add0~14_combout\ & ((!\freqDiv|Equal0~2_combout\) # (!\freqDiv|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Equal0~9_combout\,
	datac => \freqDiv|Add0~14_combout\,
	datad => \freqDiv|Equal0~2_combout\,
	combout => \freqDiv|s_count~11_combout\);

-- Location: FF_X111_Y38_N3
\freqDiv|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(7));

-- Location: LCCOMB_X112_Y39_N18
\freqDiv|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~16_combout\ = (\freqDiv|s_count\(8) & (\freqDiv|Add0~15\ $ (GND))) # (!\freqDiv|s_count\(8) & (!\freqDiv|Add0~15\ & VCC))
-- \freqDiv|Add0~17\ = CARRY((\freqDiv|s_count\(8) & !\freqDiv|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(8),
	datad => VCC,
	cin => \freqDiv|Add0~15\,
	combout => \freqDiv|Add0~16_combout\,
	cout => \freqDiv|Add0~17\);

-- Location: FF_X112_Y39_N19
\freqDiv|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(8));

-- Location: LCCOMB_X112_Y39_N20
\freqDiv|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~18_combout\ = (\freqDiv|s_count\(9) & (!\freqDiv|Add0~17\)) # (!\freqDiv|s_count\(9) & ((\freqDiv|Add0~17\) # (GND)))
-- \freqDiv|Add0~19\ = CARRY((!\freqDiv|Add0~17\) # (!\freqDiv|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(9),
	datad => VCC,
	cin => \freqDiv|Add0~17\,
	combout => \freqDiv|Add0~18_combout\,
	cout => \freqDiv|Add0~19\);

-- Location: FF_X112_Y39_N21
\freqDiv|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(9));

-- Location: LCCOMB_X112_Y39_N22
\freqDiv|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~20_combout\ = (\freqDiv|s_count\(10) & (\freqDiv|Add0~19\ $ (GND))) # (!\freqDiv|s_count\(10) & (!\freqDiv|Add0~19\ & VCC))
-- \freqDiv|Add0~21\ = CARRY((\freqDiv|s_count\(10) & !\freqDiv|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(10),
	datad => VCC,
	cin => \freqDiv|Add0~19\,
	combout => \freqDiv|Add0~20_combout\,
	cout => \freqDiv|Add0~21\);

-- Location: FF_X112_Y39_N23
\freqDiv|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(10));

-- Location: LCCOMB_X112_Y39_N24
\freqDiv|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~22_combout\ = (\freqDiv|s_count\(11) & (!\freqDiv|Add0~21\)) # (!\freqDiv|s_count\(11) & ((\freqDiv|Add0~21\) # (GND)))
-- \freqDiv|Add0~23\ = CARRY((!\freqDiv|Add0~21\) # (!\freqDiv|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(11),
	datad => VCC,
	cin => \freqDiv|Add0~21\,
	combout => \freqDiv|Add0~22_combout\,
	cout => \freqDiv|Add0~23\);

-- Location: FF_X112_Y39_N25
\freqDiv|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(11));

-- Location: LCCOMB_X112_Y39_N26
\freqDiv|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~24_combout\ = (\freqDiv|s_count\(12) & (\freqDiv|Add0~23\ $ (GND))) # (!\freqDiv|s_count\(12) & (!\freqDiv|Add0~23\ & VCC))
-- \freqDiv|Add0~25\ = CARRY((\freqDiv|s_count\(12) & !\freqDiv|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(12),
	datad => VCC,
	cin => \freqDiv|Add0~23\,
	combout => \freqDiv|Add0~24_combout\,
	cout => \freqDiv|Add0~25\);

-- Location: LCCOMB_X111_Y38_N22
\freqDiv|s_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~10_combout\ = (\freqDiv|Add0~24_combout\ & ((!\freqDiv|Equal0~2_combout\) # (!\freqDiv|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Equal0~9_combout\,
	datac => \freqDiv|Equal0~2_combout\,
	datad => \freqDiv|Add0~24_combout\,
	combout => \freqDiv|s_count~10_combout\);

-- Location: FF_X111_Y38_N23
\freqDiv|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(12));

-- Location: LCCOMB_X112_Y39_N28
\freqDiv|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~26_combout\ = (\freqDiv|s_count\(13) & (!\freqDiv|Add0~25\)) # (!\freqDiv|s_count\(13) & ((\freqDiv|Add0~25\) # (GND)))
-- \freqDiv|Add0~27\ = CARRY((!\freqDiv|Add0~25\) # (!\freqDiv|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(13),
	datad => VCC,
	cin => \freqDiv|Add0~25\,
	combout => \freqDiv|Add0~26_combout\,
	cout => \freqDiv|Add0~27\);

-- Location: LCCOMB_X112_Y39_N0
\freqDiv|s_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~9_combout\ = (\freqDiv|Add0~26_combout\ & ((!\freqDiv|Equal0~2_combout\) # (!\freqDiv|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Equal0~9_combout\,
	datac => \freqDiv|Equal0~2_combout\,
	datad => \freqDiv|Add0~26_combout\,
	combout => \freqDiv|s_count~9_combout\);

-- Location: FF_X112_Y39_N1
\freqDiv|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(13));

-- Location: LCCOMB_X112_Y39_N30
\freqDiv|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~28_combout\ = (\freqDiv|s_count\(14) & (\freqDiv|Add0~27\ $ (GND))) # (!\freqDiv|s_count\(14) & (!\freqDiv|Add0~27\ & VCC))
-- \freqDiv|Add0~29\ = CARRY((\freqDiv|s_count\(14) & !\freqDiv|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(14),
	datad => VCC,
	cin => \freqDiv|Add0~27\,
	combout => \freqDiv|Add0~28_combout\,
	cout => \freqDiv|Add0~29\);

-- Location: LCCOMB_X111_Y38_N24
\freqDiv|s_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~8_combout\ = (\freqDiv|Add0~28_combout\ & ((!\freqDiv|Equal0~2_combout\) # (!\freqDiv|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Equal0~9_combout\,
	datac => \freqDiv|Add0~28_combout\,
	datad => \freqDiv|Equal0~2_combout\,
	combout => \freqDiv|s_count~8_combout\);

-- Location: FF_X111_Y38_N25
\freqDiv|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(14));

-- Location: LCCOMB_X112_Y38_N0
\freqDiv|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~30_combout\ = (\freqDiv|s_count\(15) & (!\freqDiv|Add0~29\)) # (!\freqDiv|s_count\(15) & ((\freqDiv|Add0~29\) # (GND)))
-- \freqDiv|Add0~31\ = CARRY((!\freqDiv|Add0~29\) # (!\freqDiv|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(15),
	datad => VCC,
	cin => \freqDiv|Add0~29\,
	combout => \freqDiv|Add0~30_combout\,
	cout => \freqDiv|Add0~31\);

-- Location: LCCOMB_X113_Y38_N4
\freqDiv|s_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~3_combout\ = (\freqDiv|Add0~30_combout\ & ((!\freqDiv|Equal0~9_combout\) # (!\freqDiv|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Equal0~2_combout\,
	datac => \freqDiv|Add0~30_combout\,
	datad => \freqDiv|Equal0~9_combout\,
	combout => \freqDiv|s_count~3_combout\);

-- Location: FF_X113_Y38_N5
\freqDiv|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(15));

-- Location: LCCOMB_X112_Y38_N2
\freqDiv|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~32_combout\ = (\freqDiv|s_count\(16) & (\freqDiv|Add0~31\ $ (GND))) # (!\freqDiv|s_count\(16) & (!\freqDiv|Add0~31\ & VCC))
-- \freqDiv|Add0~33\ = CARRY((\freqDiv|s_count\(16) & !\freqDiv|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(16),
	datad => VCC,
	cin => \freqDiv|Add0~31\,
	combout => \freqDiv|Add0~32_combout\,
	cout => \freqDiv|Add0~33\);

-- Location: FF_X112_Y38_N3
\freqDiv|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(16));

-- Location: LCCOMB_X112_Y38_N4
\freqDiv|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~34_combout\ = (\freqDiv|s_count\(17) & (!\freqDiv|Add0~33\)) # (!\freqDiv|s_count\(17) & ((\freqDiv|Add0~33\) # (GND)))
-- \freqDiv|Add0~35\ = CARRY((!\freqDiv|Add0~33\) # (!\freqDiv|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(17),
	datad => VCC,
	cin => \freqDiv|Add0~33\,
	combout => \freqDiv|Add0~34_combout\,
	cout => \freqDiv|Add0~35\);

-- Location: LCCOMB_X113_Y38_N2
\freqDiv|s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~2_combout\ = (\freqDiv|Add0~34_combout\ & ((!\freqDiv|Equal0~9_combout\) # (!\freqDiv|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Equal0~2_combout\,
	datac => \freqDiv|Add0~34_combout\,
	datad => \freqDiv|Equal0~9_combout\,
	combout => \freqDiv|s_count~2_combout\);

-- Location: FF_X113_Y38_N3
\freqDiv|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(17));

-- Location: LCCOMB_X112_Y38_N6
\freqDiv|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~36_combout\ = (\freqDiv|s_count\(18) & (\freqDiv|Add0~35\ $ (GND))) # (!\freqDiv|s_count\(18) & (!\freqDiv|Add0~35\ & VCC))
-- \freqDiv|Add0~37\ = CARRY((\freqDiv|s_count\(18) & !\freqDiv|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(18),
	datad => VCC,
	cin => \freqDiv|Add0~35\,
	combout => \freqDiv|Add0~36_combout\,
	cout => \freqDiv|Add0~37\);

-- Location: FF_X112_Y38_N7
\freqDiv|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(18));

-- Location: LCCOMB_X112_Y38_N8
\freqDiv|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~38_combout\ = (\freqDiv|s_count\(19) & (!\freqDiv|Add0~37\)) # (!\freqDiv|s_count\(19) & ((\freqDiv|Add0~37\) # (GND)))
-- \freqDiv|Add0~39\ = CARRY((!\freqDiv|Add0~37\) # (!\freqDiv|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(19),
	datad => VCC,
	cin => \freqDiv|Add0~37\,
	combout => \freqDiv|Add0~38_combout\,
	cout => \freqDiv|Add0~39\);

-- Location: LCCOMB_X111_Y38_N18
\freqDiv|s_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~7_combout\ = (\freqDiv|Add0~38_combout\ & ((!\freqDiv|Equal0~2_combout\) # (!\freqDiv|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Equal0~9_combout\,
	datac => \freqDiv|Add0~38_combout\,
	datad => \freqDiv|Equal0~2_combout\,
	combout => \freqDiv|s_count~7_combout\);

-- Location: FF_X111_Y38_N19
\freqDiv|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(19));

-- Location: LCCOMB_X112_Y38_N10
\freqDiv|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~40_combout\ = (\freqDiv|s_count\(20) & (\freqDiv|Add0~39\ $ (GND))) # (!\freqDiv|s_count\(20) & (!\freqDiv|Add0~39\ & VCC))
-- \freqDiv|Add0~41\ = CARRY((\freqDiv|s_count\(20) & !\freqDiv|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(20),
	datad => VCC,
	cin => \freqDiv|Add0~39\,
	combout => \freqDiv|Add0~40_combout\,
	cout => \freqDiv|Add0~41\);

-- Location: LCCOMB_X111_Y38_N14
\freqDiv|s_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~6_combout\ = (\freqDiv|Add0~40_combout\ & ((!\freqDiv|Equal0~2_combout\) # (!\freqDiv|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Equal0~9_combout\,
	datac => \freqDiv|Add0~40_combout\,
	datad => \freqDiv|Equal0~2_combout\,
	combout => \freqDiv|s_count~6_combout\);

-- Location: FF_X111_Y38_N15
\freqDiv|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(20));

-- Location: LCCOMB_X112_Y38_N12
\freqDiv|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~42_combout\ = (\freqDiv|s_count\(21) & (!\freqDiv|Add0~41\)) # (!\freqDiv|s_count\(21) & ((\freqDiv|Add0~41\) # (GND)))
-- \freqDiv|Add0~43\ = CARRY((!\freqDiv|Add0~41\) # (!\freqDiv|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(21),
	datad => VCC,
	cin => \freqDiv|Add0~41\,
	combout => \freqDiv|Add0~42_combout\,
	cout => \freqDiv|Add0~43\);

-- Location: LCCOMB_X111_Y38_N16
\freqDiv|s_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~5_combout\ = (\freqDiv|Add0~42_combout\ & ((!\freqDiv|Equal0~2_combout\) # (!\freqDiv|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Equal0~9_combout\,
	datac => \freqDiv|Add0~42_combout\,
	datad => \freqDiv|Equal0~2_combout\,
	combout => \freqDiv|s_count~5_combout\);

-- Location: FF_X111_Y38_N17
\freqDiv|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(21));

-- Location: LCCOMB_X112_Y38_N16
\freqDiv|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~46_combout\ = (\freqDiv|s_count\(23) & (!\freqDiv|Add0~45\)) # (!\freqDiv|s_count\(23) & ((\freqDiv|Add0~45\) # (GND)))
-- \freqDiv|Add0~47\ = CARRY((!\freqDiv|Add0~45\) # (!\freqDiv|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(23),
	datad => VCC,
	cin => \freqDiv|Add0~45\,
	combout => \freqDiv|Add0~46_combout\,
	cout => \freqDiv|Add0~47\);

-- Location: LCCOMB_X112_Y38_N18
\freqDiv|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~48_combout\ = (\freqDiv|s_count\(24) & (\freqDiv|Add0~47\ $ (GND))) # (!\freqDiv|s_count\(24) & (!\freqDiv|Add0~47\ & VCC))
-- \freqDiv|Add0~49\ = CARRY((\freqDiv|s_count\(24) & !\freqDiv|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(24),
	datad => VCC,
	cin => \freqDiv|Add0~47\,
	combout => \freqDiv|Add0~48_combout\,
	cout => \freqDiv|Add0~49\);

-- Location: FF_X112_Y38_N19
\freqDiv|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(24));

-- Location: LCCOMB_X112_Y38_N20
\freqDiv|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~50_combout\ = (\freqDiv|s_count\(25) & (!\freqDiv|Add0~49\)) # (!\freqDiv|s_count\(25) & ((\freqDiv|Add0~49\) # (GND)))
-- \freqDiv|Add0~51\ = CARRY((!\freqDiv|Add0~49\) # (!\freqDiv|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(25),
	datad => VCC,
	cin => \freqDiv|Add0~49\,
	combout => \freqDiv|Add0~50_combout\,
	cout => \freqDiv|Add0~51\);

-- Location: LCCOMB_X113_Y38_N20
\freqDiv|s_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~0_combout\ = (\freqDiv|Add0~50_combout\ & ((!\freqDiv|Equal0~2_combout\) # (!\freqDiv|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Equal0~9_combout\,
	datac => \freqDiv|Equal0~2_combout\,
	datad => \freqDiv|Add0~50_combout\,
	combout => \freqDiv|s_count~0_combout\);

-- Location: FF_X113_Y38_N21
\freqDiv|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(25));

-- Location: LCCOMB_X112_Y38_N22
\freqDiv|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~52_combout\ = (\freqDiv|s_count\(26) & (\freqDiv|Add0~51\ $ (GND))) # (!\freqDiv|s_count\(26) & (!\freqDiv|Add0~51\ & VCC))
-- \freqDiv|Add0~53\ = CARRY((\freqDiv|s_count\(26) & !\freqDiv|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(26),
	datad => VCC,
	cin => \freqDiv|Add0~51\,
	combout => \freqDiv|Add0~52_combout\,
	cout => \freqDiv|Add0~53\);

-- Location: FF_X112_Y38_N23
\freqDiv|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(26));

-- Location: LCCOMB_X111_Y38_N12
\freqDiv|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~4_combout\ = (\freqDiv|s_count\(22) & (\freqDiv|s_count\(21) & (\freqDiv|s_count\(20) & !\freqDiv|s_count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(22),
	datab => \freqDiv|s_count\(21),
	datac => \freqDiv|s_count\(20),
	datad => \freqDiv|s_count\(26),
	combout => \freqDiv|Equal0~4_combout\);

-- Location: LCCOMB_X112_Y38_N24
\freqDiv|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~54_combout\ = (\freqDiv|s_count\(27) & (!\freqDiv|Add0~53\)) # (!\freqDiv|s_count\(27) & ((\freqDiv|Add0~53\) # (GND)))
-- \freqDiv|Add0~55\ = CARRY((!\freqDiv|Add0~53\) # (!\freqDiv|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(27),
	datad => VCC,
	cin => \freqDiv|Add0~53\,
	combout => \freqDiv|Add0~54_combout\,
	cout => \freqDiv|Add0~55\);

-- Location: FF_X112_Y38_N25
\freqDiv|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(27));

-- Location: LCCOMB_X112_Y38_N26
\freqDiv|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~56_combout\ = (\freqDiv|s_count\(28) & (\freqDiv|Add0~55\ $ (GND))) # (!\freqDiv|s_count\(28) & (!\freqDiv|Add0~55\ & VCC))
-- \freqDiv|Add0~57\ = CARRY((\freqDiv|s_count\(28) & !\freqDiv|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(28),
	datad => VCC,
	cin => \freqDiv|Add0~55\,
	combout => \freqDiv|Add0~56_combout\,
	cout => \freqDiv|Add0~57\);

-- Location: FF_X112_Y38_N27
\freqDiv|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(28));

-- Location: LCCOMB_X112_Y38_N28
\freqDiv|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~58_combout\ = (\freqDiv|s_count\(29) & (!\freqDiv|Add0~57\)) # (!\freqDiv|s_count\(29) & ((\freqDiv|Add0~57\) # (GND)))
-- \freqDiv|Add0~59\ = CARRY((!\freqDiv|Add0~57\) # (!\freqDiv|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(29),
	datad => VCC,
	cin => \freqDiv|Add0~57\,
	combout => \freqDiv|Add0~58_combout\,
	cout => \freqDiv|Add0~59\);

-- Location: FF_X112_Y38_N29
\freqDiv|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(29));

-- Location: LCCOMB_X112_Y38_N30
\freqDiv|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~60_combout\ = \freqDiv|s_count\(30) $ (!\freqDiv|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(30),
	cin => \freqDiv|Add0~59\,
	combout => \freqDiv|Add0~60_combout\);

-- Location: FF_X112_Y38_N31
\freqDiv|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(30));

-- Location: LCCOMB_X111_Y38_N4
\freqDiv|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~3_combout\ = (!\freqDiv|s_count\(27) & (!\freqDiv|s_count\(29) & (!\freqDiv|s_count\(28) & !\freqDiv|s_count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(27),
	datab => \freqDiv|s_count\(29),
	datac => \freqDiv|s_count\(28),
	datad => \freqDiv|s_count\(30),
	combout => \freqDiv|Equal0~3_combout\);

-- Location: LCCOMB_X111_Y38_N8
\freqDiv|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~6_combout\ = (!\freqDiv|s_count\(7) & (!\freqDiv|s_count\(9) & (!\freqDiv|s_count\(8) & !\freqDiv|s_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(7),
	datab => \freqDiv|s_count\(9),
	datac => \freqDiv|s_count\(8),
	datad => \freqDiv|s_count\(10),
	combout => \freqDiv|Equal0~6_combout\);

-- Location: LCCOMB_X111_Y38_N20
\freqDiv|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~5_combout\ = (\freqDiv|s_count\(12) & (\freqDiv|s_count\(14) & (\freqDiv|s_count\(13) & \freqDiv|s_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(12),
	datab => \freqDiv|s_count\(14),
	datac => \freqDiv|s_count\(13),
	datad => \freqDiv|s_count\(19),
	combout => \freqDiv|Equal0~5_combout\);

-- Location: LCCOMB_X111_Y38_N10
\freqDiv|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~7_combout\ = (\freqDiv|Equal0~4_combout\ & (\freqDiv|Equal0~3_combout\ & (\freqDiv|Equal0~6_combout\ & \freqDiv|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|Equal0~4_combout\,
	datab => \freqDiv|Equal0~3_combout\,
	datac => \freqDiv|Equal0~6_combout\,
	datad => \freqDiv|Equal0~5_combout\,
	combout => \freqDiv|Equal0~7_combout\);

-- Location: LCCOMB_X111_Y38_N28
\freqDiv|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~9_combout\ = (\freqDiv|s_count\(0) & (\freqDiv|s_count\(1) & (\freqDiv|Equal0~8_combout\ & \freqDiv|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(0),
	datab => \freqDiv|s_count\(1),
	datac => \freqDiv|Equal0~8_combout\,
	datad => \freqDiv|Equal0~7_combout\,
	combout => \freqDiv|Equal0~9_combout\);

-- Location: LCCOMB_X112_Y38_N14
\freqDiv|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~44_combout\ = (\freqDiv|s_count\(22) & (\freqDiv|Add0~43\ $ (GND))) # (!\freqDiv|s_count\(22) & (!\freqDiv|Add0~43\ & VCC))
-- \freqDiv|Add0~45\ = CARRY((\freqDiv|s_count\(22) & !\freqDiv|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(22),
	datad => VCC,
	cin => \freqDiv|Add0~43\,
	combout => \freqDiv|Add0~44_combout\,
	cout => \freqDiv|Add0~45\);

-- Location: LCCOMB_X111_Y38_N26
\freqDiv|s_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~4_combout\ = (\freqDiv|Add0~44_combout\ & ((!\freqDiv|Equal0~2_combout\) # (!\freqDiv|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Equal0~9_combout\,
	datac => \freqDiv|Add0~44_combout\,
	datad => \freqDiv|Equal0~2_combout\,
	combout => \freqDiv|s_count~4_combout\);

-- Location: FF_X111_Y38_N27
\freqDiv|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(22));

-- Location: LCCOMB_X113_Y38_N22
\freqDiv|s_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~1_combout\ = (\freqDiv|Add0~46_combout\ & ((!\freqDiv|Equal0~9_combout\) # (!\freqDiv|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Equal0~2_combout\,
	datac => \freqDiv|Add0~46_combout\,
	datad => \freqDiv|Equal0~9_combout\,
	combout => \freqDiv|s_count~1_combout\);

-- Location: FF_X113_Y38_N23
\freqDiv|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(23));

-- Location: LCCOMB_X113_Y38_N28
\freqDiv|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~0_combout\ = (\freqDiv|s_count\(23) & (!\freqDiv|s_count\(24) & (!\freqDiv|s_count\(18) & \freqDiv|s_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(23),
	datab => \freqDiv|s_count\(24),
	datac => \freqDiv|s_count\(18),
	datad => \freqDiv|s_count\(25),
	combout => \freqDiv|Equal0~0_combout\);

-- Location: LCCOMB_X113_Y38_N10
\freqDiv|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~1_combout\ = (!\freqDiv|s_count\(16) & (\freqDiv|s_count\(17) & (\freqDiv|s_count\(15) & !\freqDiv|s_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(16),
	datab => \freqDiv|s_count\(17),
	datac => \freqDiv|s_count\(15),
	datad => \freqDiv|s_count\(11),
	combout => \freqDiv|Equal0~1_combout\);

-- Location: LCCOMB_X113_Y38_N8
\freqDiv|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~2_combout\ = (\freqDiv|Equal0~0_combout\ & (\freqDiv|s_count\(6) & \freqDiv|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Equal0~0_combout\,
	datac => \freqDiv|s_count\(6),
	datad => \freqDiv|Equal0~1_combout\,
	combout => \freqDiv|Equal0~2_combout\);

-- Location: LCCOMB_X113_Y38_N18
\freqDiv|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal1~0_combout\ = (!\freqDiv|s_count\(23) & (\freqDiv|s_count\(24) & (\freqDiv|s_count\(18) & !\freqDiv|s_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(23),
	datab => \freqDiv|s_count\(24),
	datac => \freqDiv|s_count\(18),
	datad => \freqDiv|s_count\(25),
	combout => \freqDiv|Equal1~0_combout\);

-- Location: LCCOMB_X113_Y38_N12
\freqDiv|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal1~1_combout\ = (\freqDiv|s_count\(16) & (!\freqDiv|s_count\(17) & (!\freqDiv|s_count\(15) & \freqDiv|s_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(16),
	datab => \freqDiv|s_count\(17),
	datac => \freqDiv|s_count\(15),
	datad => \freqDiv|s_count\(11),
	combout => \freqDiv|Equal1~1_combout\);

-- Location: LCCOMB_X113_Y38_N6
\freqDiv|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal1~2_combout\ = (\freqDiv|Equal1~0_combout\ & (!\freqDiv|s_count\(6) & \freqDiv|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Equal1~0_combout\,
	datac => \freqDiv|s_count\(6),
	datad => \freqDiv|Equal1~1_combout\,
	combout => \freqDiv|Equal1~2_combout\);

-- Location: LCCOMB_X114_Y38_N30
\freqDiv|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~0_combout\ = (\freqDiv|Equal0~9_combout\ & ((\freqDiv|Equal0~2_combout\) # ((!\freqDiv|Equal1~2_combout\ & \freqDiv|clkOut~q\)))) # (!\freqDiv|Equal0~9_combout\ & (((\freqDiv|clkOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|Equal0~2_combout\,
	datab => \freqDiv|Equal1~2_combout\,
	datac => \freqDiv|clkOut~q\,
	datad => \freqDiv|Equal0~9_combout\,
	combout => \freqDiv|clkOut~0_combout\);

-- Location: LCCOMB_X114_Y38_N4
\freqDiv|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~feeder_combout\ = \freqDiv|clkOut~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|clkOut~0_combout\,
	combout => \freqDiv|clkOut~feeder_combout\);

-- Location: FF_X114_Y38_N5
\freqDiv|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|clkOut~q\);

-- Location: CLKCTRL_G6
\freqDiv|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \freqDiv|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \freqDiv|clkOut~clkctrl_outclk\);

-- Location: LCCOMB_X89_Y12_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = sec(0) $ (VCC)
-- \Add0~1\ = CARRY(sec(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X89_Y12_N1
\sec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(0));

-- Location: LCCOMB_X89_Y12_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (sec(1) & (!\Add0~1\)) # (!sec(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!sec(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X89_Y12_N3
\sec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(1));

-- Location: LCCOMB_X89_Y12_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (sec(2) & (\Add0~3\ $ (GND))) # (!sec(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((sec(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X88_Y11_N0
\sec~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec~3_combout\ = (\Add0~4_combout\ & \Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~4_combout\,
	datad => \Equal0~9_combout\,
	combout => \sec~3_combout\);

-- Location: FF_X88_Y11_N1
\sec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \sec~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(2));

-- Location: LCCOMB_X89_Y12_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (sec(3) & (!\Add0~5\)) # (!sec(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!sec(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X88_Y12_N0
\sec~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec~2_combout\ = (\Add0~6_combout\ & \Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datad => \Equal0~9_combout\,
	combout => \sec~2_combout\);

-- Location: FF_X88_Y12_N1
\sec[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \sec~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(3));

-- Location: LCCOMB_X89_Y12_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (sec(4) & (\Add0~7\ $ (GND))) # (!sec(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((sec(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X88_Y12_N30
\sec~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec~1_combout\ = (\Add0~8_combout\ & \Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	datad => \Equal0~9_combout\,
	combout => \sec~1_combout\);

-- Location: FF_X88_Y12_N31
\sec[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \sec~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(4));

-- Location: LCCOMB_X89_Y12_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (sec(5) & (!\Add0~9\)) # (!sec(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!sec(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X88_Y12_N16
\sec~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec~0_combout\ = (\Add0~10_combout\ & \Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~10_combout\,
	datad => \Equal0~9_combout\,
	combout => \sec~0_combout\);

-- Location: FF_X88_Y12_N17
\sec[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \sec~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(5));

-- Location: LCCOMB_X89_Y12_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (sec(6) & (\Add0~11\ $ (GND))) # (!sec(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((sec(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X89_Y12_N13
\sec[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(6));

-- Location: LCCOMB_X89_Y12_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (sec(7) & (!\Add0~13\)) # (!sec(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!sec(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X89_Y12_N15
\sec[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(7));

-- Location: LCCOMB_X89_Y12_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (sec(8) & (\Add0~15\ $ (GND))) # (!sec(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((sec(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X89_Y12_N17
\sec[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(8));

-- Location: LCCOMB_X89_Y12_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (sec(9) & (!\Add0~17\)) # (!sec(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!sec(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X89_Y12_N19
\sec[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(9));

-- Location: LCCOMB_X89_Y12_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (sec(10) & (\Add0~19\ $ (GND))) # (!sec(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((sec(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X89_Y12_N21
\sec[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(10));

-- Location: LCCOMB_X89_Y12_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (sec(11) & (!\Add0~21\)) # (!sec(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!sec(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X89_Y12_N23
\sec[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(11));

-- Location: LCCOMB_X89_Y12_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (sec(12) & (\Add0~23\ $ (GND))) # (!sec(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((sec(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X89_Y12_N25
\sec[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(12));

-- Location: LCCOMB_X89_Y12_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (sec(13) & (!\Add0~25\)) # (!sec(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!sec(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X89_Y12_N27
\sec[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(13));

-- Location: LCCOMB_X89_Y12_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (sec(14) & (\Add0~27\ $ (GND))) # (!sec(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((sec(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X89_Y12_N29
\sec[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(14));

-- Location: LCCOMB_X89_Y12_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (sec(15) & (!\Add0~29\)) # (!sec(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!sec(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X89_Y12_N31
\sec[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(15));

-- Location: LCCOMB_X89_Y11_N0
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (sec(16) & (\Add0~31\ $ (GND))) # (!sec(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((sec(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X89_Y11_N1
\sec[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(16));

-- Location: LCCOMB_X89_Y11_N2
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (sec(17) & (!\Add0~33\)) # (!sec(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!sec(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X89_Y11_N3
\sec[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(17));

-- Location: LCCOMB_X89_Y11_N4
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (sec(18) & (\Add0~35\ $ (GND))) # (!sec(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((sec(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X89_Y11_N5
\sec[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(18));

-- Location: LCCOMB_X89_Y11_N6
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (sec(19) & (!\Add0~37\)) # (!sec(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!sec(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: FF_X89_Y11_N7
\sec[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(19));

-- Location: LCCOMB_X89_Y11_N8
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (sec(20) & (\Add0~39\ $ (GND))) # (!sec(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((sec(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X89_Y11_N9
\sec[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(20));

-- Location: LCCOMB_X89_Y11_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (sec(21) & (!\Add0~41\)) # (!sec(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!sec(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X89_Y11_N11
\sec[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(21));

-- Location: LCCOMB_X89_Y11_N12
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (sec(22) & (\Add0~43\ $ (GND))) # (!sec(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((sec(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X89_Y11_N13
\sec[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(22));

-- Location: LCCOMB_X89_Y11_N14
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (sec(23) & (!\Add0~45\)) # (!sec(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!sec(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X89_Y11_N15
\sec[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(23));

-- Location: LCCOMB_X89_Y11_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (sec(24) & (\Add0~47\ $ (GND))) # (!sec(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((sec(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X89_Y11_N17
\sec[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(24));

-- Location: LCCOMB_X89_Y11_N18
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (sec(25) & (!\Add0~49\)) # (!sec(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!sec(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X89_Y11_N19
\sec[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(25));

-- Location: LCCOMB_X89_Y11_N20
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (sec(26) & (\Add0~51\ $ (GND))) # (!sec(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((sec(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X89_Y11_N21
\sec[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(26));

-- Location: LCCOMB_X89_Y11_N22
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (sec(27) & (!\Add0~53\)) # (!sec(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!sec(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X89_Y11_N23
\sec[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(27));

-- Location: LCCOMB_X88_Y11_N30
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (sec(24)) # ((sec(25)) # ((sec(26)) # (sec(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(24),
	datab => sec(25),
	datac => sec(26),
	datad => sec(27),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X89_Y11_N24
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (sec(28) & (\Add0~55\ $ (GND))) # (!sec(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((sec(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X89_Y11_N25
\sec[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(28));

-- Location: LCCOMB_X89_Y11_N26
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (sec(29) & (!\Add0~57\)) # (!sec(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!sec(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X89_Y11_N27
\sec[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(29));

-- Location: LCCOMB_X89_Y11_N28
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (sec(30) & (\Add0~59\ $ (GND))) # (!sec(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((sec(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: FF_X89_Y11_N29
\sec[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(30));

-- Location: LCCOMB_X89_Y11_N30
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = sec(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: FF_X89_Y11_N31
\sec[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(31));

-- Location: LCCOMB_X88_Y11_N16
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (sec(31)) # ((sec(30)) # ((sec(29)) # (sec(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(31),
	datab => sec(30),
	datac => sec(29),
	datad => sec(28),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X88_Y11_N28
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (sec(19)) # (sec(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(19),
	datad => sec(18),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X88_Y11_N18
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (sec(23)) # ((sec(22)) # ((sec(20)) # (sec(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(23),
	datab => sec(22),
	datac => sec(20),
	datad => sec(21),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X88_Y11_N20
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (sec(17)) # ((\Equal0~4_combout\) # ((sec(16)) # (\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(17),
	datab => \Equal0~4_combout\,
	datac => sec(16),
	datad => \Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X87_Y11_N12
\b7segH|decOut_n[6]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[6]~50_combout\ = (sec(5) & (sec(3) & (sec(4) & !sec(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(5),
	datab => sec(3),
	datac => sec(4),
	datad => sec(7),
	combout => \b7segH|decOut_n[6]~50_combout\);

-- Location: LCCOMB_X88_Y11_N10
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (sec(2)) # (((sec(6)) # (!sec(1))) # (!sec(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(2),
	datab => sec(0),
	datac => sec(6),
	datad => sec(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X88_Y12_N22
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (sec(10)) # ((sec(9)) # ((sec(11)) # (sec(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(10),
	datab => sec(9),
	datac => sec(11),
	datad => sec(8),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X88_Y12_N28
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (sec(15)) # ((sec(14)) # ((sec(13)) # (sec(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(15),
	datab => sec(14),
	datac => sec(13),
	datad => sec(12),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X87_Y11_N18
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ((\Equal0~0_combout\) # ((\Equal0~1_combout\) # (\Equal0~2_combout\))) # (!\b7segH|decOut_n[6]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH|decOut_n[6]~50_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X87_Y11_N24
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~7_combout\) # ((\Equal0~8_combout\) # ((\Equal0~6_combout\) # (\Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~8_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X84_Y12_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = min(0) $ (VCC)
-- \Add1~1\ = CARRY(min(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X83_Y12_N16
\min[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[0]~7_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & ((min(0)))) # (!\Equal0~9_combout\ & (\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Add1~0_combout\,
	datac => min(0),
	datad => \Equal0~9_combout\,
	combout => \min[0]~7_combout\);

-- Location: FF_X83_Y12_N17
\min[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(0));

-- Location: LCCOMB_X84_Y12_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (min(1) & (!\Add1~1\)) # (!min(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!min(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X83_Y12_N12
\min[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[1]~6_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & ((min(1)))) # (!\Equal0~9_combout\ & (\Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Add1~2_combout\,
	datac => min(1),
	datad => \Equal0~9_combout\,
	combout => \min[1]~6_combout\);

-- Location: FF_X83_Y12_N13
\min[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(1));

-- Location: LCCOMB_X84_Y12_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (min(2) & (\Add1~3\ $ (GND))) # (!min(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((min(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X83_Y12_N14
\min[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[2]~5_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & ((min(2)))) # (!\Equal0~9_combout\ & (\Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Add1~4_combout\,
	datac => min(2),
	datad => \Equal0~9_combout\,
	combout => \min[2]~5_combout\);

-- Location: FF_X83_Y12_N15
\min[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(2));

-- Location: LCCOMB_X84_Y12_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (min(3) & (!\Add1~5\)) # (!min(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!min(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X83_Y12_N0
\min[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[3]~4_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & ((min(3)))) # (!\Equal0~9_combout\ & (\Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Add1~6_combout\,
	datac => min(3),
	datad => \Equal0~9_combout\,
	combout => \min[3]~4_combout\);

-- Location: FF_X83_Y12_N1
\min[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(3));

-- Location: LCCOMB_X84_Y12_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (min(4) & (\Add1~7\ $ (GND))) # (!min(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((min(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X83_Y12_N26
\min[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[4]~3_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & ((min(4)))) # (!\Equal0~9_combout\ & (\Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Add1~8_combout\,
	datac => min(4),
	datad => \Equal0~9_combout\,
	combout => \min[4]~3_combout\);

-- Location: FF_X83_Y12_N27
\min[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(4));

-- Location: LCCOMB_X84_Y12_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (min(5) & (!\Add1~9\)) # (!min(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!min(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X83_Y12_N24
\min[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[5]~2_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & ((min(5)))) # (!\Equal0~9_combout\ & (\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Add1~10_combout\,
	datac => min(5),
	datad => \Equal0~9_combout\,
	combout => \min[5]~2_combout\);

-- Location: FF_X83_Y12_N25
\min[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(5));

-- Location: LCCOMB_X84_Y12_N12
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (min(6) & (\Add1~11\ $ (GND))) # (!min(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((min(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X83_Y12_N10
\min[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[6]~1_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & ((min(6)))) # (!\Equal0~9_combout\ & (\Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Add1~12_combout\,
	datac => min(6),
	datad => \Equal0~9_combout\,
	combout => \min[6]~1_combout\);

-- Location: FF_X83_Y12_N11
\min[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(6));

-- Location: LCCOMB_X84_Y12_N14
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (min(7) & (!\Add1~13\)) # (!min(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!min(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X83_Y12_N20
\min[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[7]~0_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & ((min(7)))) # (!\Equal0~9_combout\ & (\Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Add1~14_combout\,
	datac => min(7),
	datad => \Equal0~9_combout\,
	combout => \min[7]~0_combout\);

-- Location: FF_X83_Y12_N21
\min[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(7));

-- Location: LCCOMB_X84_Y12_N16
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (min(8) & (\Add1~15\ $ (GND))) # (!min(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((min(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X83_Y11_N0
\min[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[8]~8_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & (min(8))) # (!\Equal0~9_combout\ & ((\Add1~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Equal0~9_combout\,
	datac => min(8),
	datad => \Add1~16_combout\,
	combout => \min[8]~8_combout\);

-- Location: FF_X83_Y11_N1
\min[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(8));

-- Location: LCCOMB_X84_Y12_N18
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (min(9) & (!\Add1~17\)) # (!min(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!min(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X83_Y11_N2
\min[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[9]~9_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & ((min(9)))) # (!\Equal0~9_combout\ & (\Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Add1~18_combout\,
	datac => min(9),
	datad => \Equal0~9_combout\,
	combout => \min[9]~9_combout\);

-- Location: FF_X83_Y11_N3
\min[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(9));

-- Location: LCCOMB_X84_Y12_N20
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (min(10) & (\Add1~19\ $ (GND))) # (!min(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((min(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X83_Y11_N12
\min[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[10]~10_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & ((min(10)))) # (!\Equal0~9_combout\ & (\Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Add1~20_combout\,
	datac => min(10),
	datad => \Equal0~9_combout\,
	combout => \min[10]~10_combout\);

-- Location: FF_X83_Y11_N13
\min[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(10));

-- Location: LCCOMB_X84_Y12_N22
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (min(11) & (!\Add1~21\)) # (!min(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!min(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X83_Y11_N18
\min[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[11]~11_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & ((min(11)))) # (!\Equal0~9_combout\ & (\Add1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~22_combout\,
	datab => \Equal1~9_combout\,
	datac => min(11),
	datad => \Equal0~9_combout\,
	combout => \min[11]~11_combout\);

-- Location: FF_X83_Y11_N19
\min[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(11));

-- Location: LCCOMB_X84_Y12_N24
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (min(12) & (\Add1~23\ $ (GND))) # (!min(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((min(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X83_Y12_N4
\min[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[12]~12_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & ((min(12)))) # (!\Equal0~9_combout\ & (\Add1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Add1~24_combout\,
	datac => min(12),
	datad => \Equal0~9_combout\,
	combout => \min[12]~12_combout\);

-- Location: FF_X83_Y12_N5
\min[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(12));

-- Location: LCCOMB_X84_Y12_N26
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (min(13) & (!\Add1~25\)) # (!min(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!min(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X83_Y12_N6
\min[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[13]~13_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & ((min(13)))) # (!\Equal0~9_combout\ & (\Add1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Add1~26_combout\,
	datac => min(13),
	datad => \Equal0~9_combout\,
	combout => \min[13]~13_combout\);

-- Location: FF_X83_Y12_N7
\min[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(13));

-- Location: LCCOMB_X84_Y12_N28
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (min(14) & (\Add1~27\ $ (GND))) # (!min(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((min(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X83_Y12_N8
\min[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[14]~14_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & ((min(14)))) # (!\Equal0~9_combout\ & (\Add1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Add1~28_combout\,
	datac => min(14),
	datad => \Equal0~9_combout\,
	combout => \min[14]~14_combout\);

-- Location: FF_X83_Y12_N9
\min[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(14));

-- Location: LCCOMB_X84_Y12_N30
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (min(15) & (!\Add1~29\)) # (!min(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!min(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X83_Y12_N18
\min[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[15]~15_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & ((min(15)))) # (!\Equal0~9_combout\ & (\Add1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datab => \Equal1~9_combout\,
	datac => min(15),
	datad => \Equal0~9_combout\,
	combout => \min[15]~15_combout\);

-- Location: FF_X83_Y12_N19
\min[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(15));

-- Location: LCCOMB_X84_Y11_N0
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (min(16) & (\Add1~31\ $ (GND))) # (!min(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((min(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X85_Y11_N20
\min[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[16]~16_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & (min(16))) # (!\Equal0~9_combout\ & ((\Add1~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal1~9_combout\,
	datac => min(16),
	datad => \Add1~32_combout\,
	combout => \min[16]~16_combout\);

-- Location: FF_X85_Y11_N21
\min[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(16));

-- Location: LCCOMB_X84_Y11_N2
\Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (min(17) & (!\Add1~33\)) # (!min(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!min(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X85_Y11_N10
\min[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[17]~17_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & (min(17))) # (!\Equal0~9_combout\ & ((\Add1~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal1~9_combout\,
	datac => min(17),
	datad => \Add1~34_combout\,
	combout => \min[17]~17_combout\);

-- Location: FF_X85_Y11_N11
\min[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(17));

-- Location: LCCOMB_X84_Y11_N4
\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (min(18) & (\Add1~35\ $ (GND))) # (!min(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((min(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X85_Y11_N12
\min[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[18]~18_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & ((min(18)))) # (!\Equal0~9_combout\ & (\Add1~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Add1~36_combout\,
	datac => min(18),
	datad => \Equal1~9_combout\,
	combout => \min[18]~18_combout\);

-- Location: FF_X85_Y11_N13
\min[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(18));

-- Location: LCCOMB_X84_Y11_N6
\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (min(19) & (!\Add1~37\)) # (!min(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!min(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X85_Y11_N22
\min[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[19]~19_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & ((min(19)))) # (!\Equal0~9_combout\ & (\Add1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Add1~38_combout\,
	datac => min(19),
	datad => \Equal1~9_combout\,
	combout => \min[19]~19_combout\);

-- Location: FF_X85_Y11_N23
\min[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(19));

-- Location: LCCOMB_X84_Y11_N8
\Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (min(20) & (\Add1~39\ $ (GND))) # (!min(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((min(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X85_Y11_N14
\min[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[20]~20_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & (min(20))) # (!\Equal0~9_combout\ & ((\Add1~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal1~9_combout\,
	datac => min(20),
	datad => \Add1~40_combout\,
	combout => \min[20]~20_combout\);

-- Location: FF_X85_Y11_N15
\min[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(20));

-- Location: LCCOMB_X84_Y11_N10
\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (min(21) & (!\Add1~41\)) # (!min(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!min(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X85_Y11_N0
\min[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[21]~21_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & (min(21))) # (!\Equal0~9_combout\ & ((\Add1~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal1~9_combout\,
	datac => min(21),
	datad => \Add1~42_combout\,
	combout => \min[21]~21_combout\);

-- Location: FF_X85_Y11_N1
\min[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(21));

-- Location: LCCOMB_X84_Y11_N12
\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (min(22) & (\Add1~43\ $ (GND))) # (!min(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((min(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X85_Y11_N6
\min[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[22]~22_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & (min(22))) # (!\Equal0~9_combout\ & ((\Add1~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal1~9_combout\,
	datac => min(22),
	datad => \Add1~44_combout\,
	combout => \min[22]~22_combout\);

-- Location: FF_X85_Y11_N7
\min[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[22]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(22));

-- Location: LCCOMB_X84_Y11_N14
\Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (min(23) & (!\Add1~45\)) # (!min(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!min(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X85_Y11_N28
\min[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[23]~23_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & (min(23))) # (!\Equal0~9_combout\ & ((\Add1~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal1~9_combout\,
	datac => min(23),
	datad => \Add1~46_combout\,
	combout => \min[23]~23_combout\);

-- Location: FF_X85_Y11_N29
\min[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(23));

-- Location: LCCOMB_X84_Y11_N16
\Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (min(24) & (\Add1~47\ $ (GND))) # (!min(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((min(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X85_Y11_N2
\min[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[24]~24_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & ((min(24)))) # (!\Equal0~9_combout\ & (\Add1~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~48_combout\,
	datab => \Equal1~9_combout\,
	datac => min(24),
	datad => \Equal0~9_combout\,
	combout => \min[24]~24_combout\);

-- Location: FF_X85_Y11_N3
\min[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[24]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(24));

-- Location: LCCOMB_X84_Y11_N18
\Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (min(25) & (!\Add1~49\)) # (!min(25) & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!min(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X85_Y11_N16
\min[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[25]~25_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & (min(25))) # (!\Equal0~9_combout\ & ((\Add1~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal1~9_combout\,
	datac => min(25),
	datad => \Add1~50_combout\,
	combout => \min[25]~25_combout\);

-- Location: FF_X85_Y11_N17
\min[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[25]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(25));

-- Location: LCCOMB_X84_Y11_N20
\Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (min(26) & (\Add1~51\ $ (GND))) # (!min(26) & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((min(26) & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X85_Y11_N18
\min[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[26]~26_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & (min(26))) # (!\Equal0~9_combout\ & ((\Add1~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal1~9_combout\,
	datac => min(26),
	datad => \Add1~52_combout\,
	combout => \min[26]~26_combout\);

-- Location: FF_X85_Y11_N19
\min[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[26]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(26));

-- Location: LCCOMB_X84_Y11_N22
\Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (min(27) & (!\Add1~53\)) # (!min(27) & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!min(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X85_Y11_N8
\min[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[27]~27_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & (min(27))) # (!\Equal0~9_combout\ & ((\Add1~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal1~9_combout\,
	datac => min(27),
	datad => \Add1~54_combout\,
	combout => \min[27]~27_combout\);

-- Location: FF_X85_Y11_N9
\min[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[27]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(27));

-- Location: LCCOMB_X85_Y11_N26
\Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (min(26)) # ((min(25)) # ((min(27)) # (min(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(26),
	datab => min(25),
	datac => min(27),
	datad => min(24),
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X84_Y11_N24
\Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (min(28) & (\Add1~55\ $ (GND))) # (!min(28) & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((min(28) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X83_Y11_N16
\min[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[28]~28_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & (min(28))) # (!\Equal0~9_combout\ & ((\Add1~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Equal0~9_combout\,
	datac => min(28),
	datad => \Add1~56_combout\,
	combout => \min[28]~28_combout\);

-- Location: FF_X83_Y11_N17
\min[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[28]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(28));

-- Location: LCCOMB_X84_Y11_N26
\Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (min(29) & (!\Add1~57\)) # (!min(29) & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!min(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X83_Y11_N26
\min[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[29]~29_combout\ = (\Equal1~9_combout\ & ((\Equal0~9_combout\ & (min(29))) # (!\Equal0~9_combout\ & ((\Add1~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Equal0~9_combout\,
	datac => min(29),
	datad => \Add1~58_combout\,
	combout => \min[29]~29_combout\);

-- Location: FF_X83_Y11_N27
\min[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(29));

-- Location: LCCOMB_X83_Y11_N22
\min[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[7]~31_combout\ = (\Equal0~9_combout\) # (!\Equal1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~9_combout\,
	datad => \Equal0~9_combout\,
	combout => \min[7]~31_combout\);

-- Location: LCCOMB_X83_Y11_N24
\min[23]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[23]~30_combout\ = (\Equal1~9_combout\ & \Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~9_combout\,
	datad => \Equal0~9_combout\,
	combout => \min[23]~30_combout\);

-- Location: LCCOMB_X84_Y11_N28
\Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (min(30) & (\Add1~59\ $ (GND))) # (!min(30) & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((min(30) & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X83_Y11_N28
\min[30]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[30]~32_combout\ = (\min[7]~31_combout\ & (\min[23]~30_combout\ & (min(30)))) # (!\min[7]~31_combout\ & ((\Add1~60_combout\) # ((\min[23]~30_combout\ & min(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min[7]~31_combout\,
	datab => \min[23]~30_combout\,
	datac => min(30),
	datad => \Add1~60_combout\,
	combout => \min[30]~32_combout\);

-- Location: FF_X83_Y11_N29
\min[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[30]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(30));

-- Location: LCCOMB_X84_Y11_N30
\Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = \Add1~61\ $ (min(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => min(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X83_Y11_N14
\min[31]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[31]~33_combout\ = (\min[7]~31_combout\ & (\min[23]~30_combout\ & (min(31)))) # (!\min[7]~31_combout\ & ((\Add1~62_combout\) # ((\min[23]~30_combout\ & min(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min[7]~31_combout\,
	datab => \min[23]~30_combout\,
	datac => min(31),
	datad => \Add1~62_combout\,
	combout => \min[31]~33_combout\);

-- Location: FF_X83_Y11_N15
\min[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \min[31]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(31));

-- Location: LCCOMB_X83_Y11_N8
\Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (min(29)) # ((min(30)) # ((min(31)) # (min(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(29),
	datab => min(30),
	datac => min(31),
	datad => min(28),
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X85_Y11_N30
\Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (min(22)) # ((min(23)) # ((min(20)) # (min(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(22),
	datab => min(23),
	datac => min(20),
	datad => min(21),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X85_Y11_N24
\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (min(19)) # (min(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min(19),
	datad => min(18),
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X85_Y11_N4
\Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (min(17)) # ((min(16)) # ((\Equal1~5_combout\) # (\Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(17),
	datab => min(16),
	datac => \Equal1~5_combout\,
	datad => \Equal1~4_combout\,
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X83_Y12_N30
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (((min(2)) # (min(6))) # (!min(0))) # (!min(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(1),
	datab => min(0),
	datac => min(2),
	datad => min(6),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X83_Y11_N20
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (min(10)) # ((min(9)) # ((min(11)) # (min(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(10),
	datab => min(9),
	datac => min(11),
	datad => min(8),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X83_Y12_N22
\b7segH1|decOut_n[6]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[6]~49_combout\ = (min(4) & (!min(7) & (min(3) & min(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datab => min(7),
	datac => min(3),
	datad => min(5),
	combout => \b7segH1|decOut_n[6]~49_combout\);

-- Location: LCCOMB_X83_Y12_N28
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (min(13)) # ((min(12)) # ((min(14)) # (min(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(13),
	datab => min(12),
	datac => min(14),
	datad => min(15),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X83_Y11_N10
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (\Equal1~0_combout\) # ((\Equal1~1_combout\) # ((\Equal1~2_combout\) # (!\b7segH1|decOut_n[6]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal1~1_combout\,
	datac => \b7segH1|decOut_n[6]~49_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X83_Y11_N30
\Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (\Equal1~7_combout\) # ((\Equal1~8_combout\) # ((\Equal1~6_combout\) # (\Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~7_combout\,
	datab => \Equal1~8_combout\,
	datac => \Equal1~6_combout\,
	datad => \Equal1~3_combout\,
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X76_Y11_N0
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = hour(0) $ (VCC)
-- \Add2~1\ = CARRY(hour(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X77_Y11_N6
\hour[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[0]~7_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & (hour(0))) # (!\Equal1~9_combout\ & ((\Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Equal2~10_combout\,
	datac => hour(0),
	datad => \Add2~0_combout\,
	combout => \hour[0]~7_combout\);

-- Location: FF_X77_Y11_N7
\hour[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(0));

-- Location: LCCOMB_X76_Y11_N2
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (hour(1) & (!\Add2~1\)) # (!hour(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!hour(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X77_Y11_N10
\hour[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[1]~6_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & (hour(1))) # (!\Equal1~9_combout\ & ((\Add2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Equal2~10_combout\,
	datac => hour(1),
	datad => \Add2~2_combout\,
	combout => \hour[1]~6_combout\);

-- Location: FF_X77_Y11_N11
\hour[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(1));

-- Location: LCCOMB_X76_Y11_N4
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (hour(2) & (\Add2~3\ $ (GND))) # (!hour(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((hour(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X75_Y11_N12
\hour[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[2]~5_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & (hour(2))) # (!\Equal1~9_combout\ & ((\Add2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Equal2~10_combout\,
	datac => hour(2),
	datad => \Add2~4_combout\,
	combout => \hour[2]~5_combout\);

-- Location: FF_X75_Y11_N13
\hour[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(2));

-- Location: LCCOMB_X76_Y11_N6
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (hour(3) & (!\Add2~5\)) # (!hour(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!hour(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X77_Y11_N20
\hour[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[3]~4_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & ((hour(3)))) # (!\Equal1~9_combout\ & (\Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Add2~6_combout\,
	datac => hour(3),
	datad => \Equal2~10_combout\,
	combout => \hour[3]~4_combout\);

-- Location: FF_X77_Y11_N21
\hour[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(3));

-- Location: LCCOMB_X76_Y11_N8
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (hour(4) & (\Add2~7\ $ (GND))) # (!hour(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((hour(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X77_Y11_N26
\hour[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[4]~3_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & (hour(4))) # (!\Equal1~9_combout\ & ((\Add2~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Equal2~10_combout\,
	datac => hour(4),
	datad => \Add2~8_combout\,
	combout => \hour[4]~3_combout\);

-- Location: FF_X77_Y11_N27
\hour[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(4));

-- Location: LCCOMB_X76_Y11_N10
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (hour(5) & (!\Add2~9\)) # (!hour(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!hour(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X77_Y11_N12
\hour[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[5]~2_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & (hour(5))) # (!\Equal1~9_combout\ & ((\Add2~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Equal2~10_combout\,
	datac => hour(5),
	datad => \Add2~10_combout\,
	combout => \hour[5]~2_combout\);

-- Location: FF_X77_Y11_N13
\hour[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(5));

-- Location: LCCOMB_X76_Y11_N12
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (hour(6) & (\Add2~11\ $ (GND))) # (!hour(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((hour(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X77_Y11_N14
\hour[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[6]~1_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & (hour(6))) # (!\Equal1~9_combout\ & ((\Add2~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Equal2~10_combout\,
	datac => hour(6),
	datad => \Add2~12_combout\,
	combout => \hour[6]~1_combout\);

-- Location: FF_X77_Y11_N15
\hour[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(6));

-- Location: LCCOMB_X76_Y11_N14
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (hour(7) & (!\Add2~13\)) # (!hour(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!hour(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X76_Y11_N16
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (hour(8) & (\Add2~15\ $ (GND))) # (!hour(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((hour(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X77_Y11_N0
\hour[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[8]~8_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & (hour(8))) # (!\Equal1~9_combout\ & ((\Add2~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Equal2~10_combout\,
	datac => hour(8),
	datad => \Add2~16_combout\,
	combout => \hour[8]~8_combout\);

-- Location: FF_X77_Y11_N1
\hour[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(8));

-- Location: LCCOMB_X76_Y11_N18
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (hour(9) & (!\Add2~17\)) # (!hour(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!hour(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X77_Y11_N18
\hour[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[9]~9_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & (hour(9))) # (!\Equal1~9_combout\ & ((\Add2~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Equal2~10_combout\,
	datac => hour(9),
	datad => \Add2~18_combout\,
	combout => \hour[9]~9_combout\);

-- Location: FF_X77_Y11_N19
\hour[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(9));

-- Location: LCCOMB_X76_Y11_N20
\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (hour(10) & (\Add2~19\ $ (GND))) # (!hour(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((hour(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X77_Y11_N4
\hour[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[10]~10_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & (hour(10))) # (!\Equal1~9_combout\ & ((\Add2~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Equal2~10_combout\,
	datac => hour(10),
	datad => \Add2~20_combout\,
	combout => \hour[10]~10_combout\);

-- Location: FF_X77_Y11_N5
\hour[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(10));

-- Location: LCCOMB_X76_Y11_N22
\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (hour(11) & (!\Add2~21\)) # (!hour(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!hour(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X77_Y11_N2
\hour[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[11]~11_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & (hour(11))) # (!\Equal1~9_combout\ & ((\Add2~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Equal2~10_combout\,
	datac => hour(11),
	datad => \Add2~22_combout\,
	combout => \hour[11]~11_combout\);

-- Location: FF_X77_Y11_N3
\hour[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(11));

-- Location: LCCOMB_X76_Y11_N24
\Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (hour(12) & (\Add2~23\ $ (GND))) # (!hour(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((hour(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X75_Y11_N14
\hour[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[12]~12_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & ((hour(12)))) # (!\Equal1~9_combout\ & (\Add2~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Add2~24_combout\,
	datac => hour(12),
	datad => \Equal2~10_combout\,
	combout => \hour[12]~12_combout\);

-- Location: FF_X75_Y11_N15
\hour[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(12));

-- Location: LCCOMB_X76_Y11_N26
\Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (hour(13) & (!\Add2~25\)) # (!hour(13) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!hour(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X75_Y11_N16
\hour[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[13]~13_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & ((hour(13)))) # (!\Equal1~9_combout\ & (\Add2~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Add2~26_combout\,
	datac => hour(13),
	datad => \Equal2~10_combout\,
	combout => \hour[13]~13_combout\);

-- Location: FF_X75_Y11_N17
\hour[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(13));

-- Location: LCCOMB_X76_Y11_N28
\Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (hour(14) & (\Add2~27\ $ (GND))) # (!hour(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((hour(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X75_Y11_N6
\hour[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[14]~14_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & (hour(14))) # (!\Equal1~9_combout\ & ((\Add2~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Equal2~10_combout\,
	datac => hour(14),
	datad => \Add2~28_combout\,
	combout => \hour[14]~14_combout\);

-- Location: FF_X75_Y11_N7
\hour[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(14));

-- Location: LCCOMB_X76_Y11_N30
\Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (hour(15) & (!\Add2~29\)) # (!hour(15) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!hour(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X75_Y11_N20
\hour[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[15]~15_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & (hour(15))) # (!\Equal1~9_combout\ & ((\Add2~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Equal2~10_combout\,
	datac => hour(15),
	datad => \Add2~30_combout\,
	combout => \hour[15]~15_combout\);

-- Location: FF_X75_Y11_N21
\hour[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(15));

-- Location: LCCOMB_X75_Y11_N30
\Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (!hour(14) & (!hour(15) & (!hour(12) & !hour(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(14),
	datab => hour(15),
	datac => hour(12),
	datad => hour(13),
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X77_Y11_N28
\Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!hour(8) & (!hour(9) & (!hour(10) & !hour(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(8),
	datab => hour(9),
	datac => hour(10),
	datad => hour(11),
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X77_Y11_N24
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (hour(0) & (!hour(3) & (hour(4) & !hour(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(0),
	datab => hour(3),
	datac => hour(4),
	datad => hour(5),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X77_Y11_N16
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (hour(1) & (hour(2) & !hour(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(1),
	datab => hour(2),
	datac => hour(7),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X77_Y11_N22
\Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (\Equal2~1_combout\ & (!hour(6) & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~1_combout\,
	datac => hour(6),
	datad => \Equal2~0_combout\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X76_Y10_N0
\Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (hour(16) & (\Add2~31\ $ (GND))) # (!hour(16) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((hour(16) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X77_Y10_N28
\hour[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[16]~16_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & ((hour(16)))) # (!\Equal1~9_combout\ & (\Add2~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~32_combout\,
	datab => \Equal1~9_combout\,
	datac => hour(16),
	datad => \Equal2~10_combout\,
	combout => \hour[16]~16_combout\);

-- Location: FF_X77_Y10_N29
\hour[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(16));

-- Location: LCCOMB_X76_Y10_N2
\Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (hour(17) & (!\Add2~33\)) # (!hour(17) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!hour(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X77_Y10_N6
\hour[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[17]~17_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & (hour(17))) # (!\Equal1~9_combout\ & ((\Add2~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~10_combout\,
	datab => \Equal1~9_combout\,
	datac => hour(17),
	datad => \Add2~34_combout\,
	combout => \hour[17]~17_combout\);

-- Location: FF_X77_Y10_N7
\hour[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(17));

-- Location: LCCOMB_X76_Y10_N4
\Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (hour(18) & (\Add2~35\ $ (GND))) # (!hour(18) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((hour(18) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X77_Y10_N20
\hour[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[18]~18_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & ((hour(18)))) # (!\Equal1~9_combout\ & (\Add2~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~10_combout\,
	datab => \Add2~36_combout\,
	datac => hour(18),
	datad => \Equal1~9_combout\,
	combout => \hour[18]~18_combout\);

-- Location: FF_X77_Y10_N21
\hour[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(18));

-- Location: LCCOMB_X76_Y10_N6
\Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (hour(19) & (!\Add2~37\)) # (!hour(19) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!hour(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(19),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X77_Y10_N10
\hour[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[19]~19_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & (hour(19))) # (!\Equal1~9_combout\ & ((\Add2~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~10_combout\,
	datab => \Equal1~9_combout\,
	datac => hour(19),
	datad => \Add2~38_combout\,
	combout => \hour[19]~19_combout\);

-- Location: FF_X77_Y10_N11
\hour[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(19));

-- Location: LCCOMB_X76_Y10_N8
\Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (hour(20) & (\Add2~39\ $ (GND))) # (!hour(20) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((hour(20) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(20),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X77_Y10_N2
\hour[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[20]~20_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & (hour(20))) # (!\Equal1~9_combout\ & ((\Add2~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~10_combout\,
	datab => \Equal1~9_combout\,
	datac => hour(20),
	datad => \Add2~40_combout\,
	combout => \hour[20]~20_combout\);

-- Location: FF_X77_Y10_N3
\hour[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(20));

-- Location: LCCOMB_X76_Y10_N10
\Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (hour(21) & (!\Add2~41\)) # (!hour(21) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!hour(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X77_Y10_N12
\hour[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[21]~21_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & (hour(21))) # (!\Equal1~9_combout\ & ((\Add2~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~10_combout\,
	datab => \Equal1~9_combout\,
	datac => hour(21),
	datad => \Add2~42_combout\,
	combout => \hour[21]~21_combout\);

-- Location: FF_X77_Y10_N13
\hour[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(21));

-- Location: LCCOMB_X76_Y10_N12
\Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (hour(22) & (\Add2~43\ $ (GND))) # (!hour(22) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((hour(22) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X77_Y10_N14
\hour[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[22]~22_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & (hour(22))) # (!\Equal1~9_combout\ & ((\Add2~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~10_combout\,
	datab => \Equal1~9_combout\,
	datac => hour(22),
	datad => \Add2~44_combout\,
	combout => \hour[22]~22_combout\);

-- Location: FF_X77_Y10_N15
\hour[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[22]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(22));

-- Location: LCCOMB_X76_Y10_N14
\Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (hour(23) & (!\Add2~45\)) # (!hour(23) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!hour(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(23),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X77_Y10_N8
\hour[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[23]~23_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & (hour(23))) # (!\Equal1~9_combout\ & ((\Add2~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~10_combout\,
	datab => \Equal1~9_combout\,
	datac => hour(23),
	datad => \Add2~46_combout\,
	combout => \hour[23]~23_combout\);

-- Location: FF_X77_Y10_N9
\hour[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(23));

-- Location: LCCOMB_X76_Y10_N16
\Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (hour(24) & (\Add2~47\ $ (GND))) # (!hour(24) & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((hour(24) & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(24),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X77_Y10_N0
\hour[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[24]~24_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & ((hour(24)))) # (!\Equal1~9_combout\ & (\Add2~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~48_combout\,
	datab => \Equal1~9_combout\,
	datac => hour(24),
	datad => \Equal2~10_combout\,
	combout => \hour[24]~24_combout\);

-- Location: FF_X77_Y10_N1
\hour[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[24]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(24));

-- Location: LCCOMB_X76_Y10_N18
\Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (hour(25) & (!\Add2~49\)) # (!hour(25) & ((\Add2~49\) # (GND)))
-- \Add2~51\ = CARRY((!\Add2~49\) # (!hour(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(25),
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: LCCOMB_X77_Y10_N30
\hour[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[25]~25_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & (hour(25))) # (!\Equal1~9_combout\ & ((\Add2~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~10_combout\,
	datab => \Equal1~9_combout\,
	datac => hour(25),
	datad => \Add2~50_combout\,
	combout => \hour[25]~25_combout\);

-- Location: FF_X77_Y10_N31
\hour[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[25]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(25));

-- Location: LCCOMB_X76_Y10_N20
\Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (hour(26) & (\Add2~51\ $ (GND))) # (!hour(26) & (!\Add2~51\ & VCC))
-- \Add2~53\ = CARRY((hour(26) & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(26),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: LCCOMB_X77_Y10_N24
\hour[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[26]~26_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & (hour(26))) # (!\Equal1~9_combout\ & ((\Add2~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~10_combout\,
	datab => \Equal1~9_combout\,
	datac => hour(26),
	datad => \Add2~52_combout\,
	combout => \hour[26]~26_combout\);

-- Location: FF_X77_Y10_N25
\hour[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[26]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(26));

-- Location: LCCOMB_X76_Y10_N22
\Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (hour(27) & (!\Add2~53\)) # (!hour(27) & ((\Add2~53\) # (GND)))
-- \Add2~55\ = CARRY((!\Add2~53\) # (!hour(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(27),
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: LCCOMB_X77_Y10_N22
\hour[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[27]~27_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & (hour(27))) # (!\Equal1~9_combout\ & ((\Add2~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~10_combout\,
	datab => \Equal1~9_combout\,
	datac => hour(27),
	datad => \Add2~54_combout\,
	combout => \hour[27]~27_combout\);

-- Location: FF_X77_Y10_N23
\hour[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[27]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(27));

-- Location: LCCOMB_X76_Y10_N24
\Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (hour(28) & (\Add2~55\ $ (GND))) # (!hour(28) & (!\Add2~55\ & VCC))
-- \Add2~57\ = CARRY((hour(28) & !\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(28),
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: LCCOMB_X75_Y10_N16
\hour[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[28]~28_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & (hour(28))) # (!\Equal1~9_combout\ & ((\Add2~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Equal2~10_combout\,
	datac => hour(28),
	datad => \Add2~56_combout\,
	combout => \hour[28]~28_combout\);

-- Location: FF_X75_Y10_N17
\hour[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[28]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(28));

-- Location: LCCOMB_X76_Y10_N26
\Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (hour(29) & (!\Add2~57\)) # (!hour(29) & ((\Add2~57\) # (GND)))
-- \Add2~59\ = CARRY((!\Add2~57\) # (!hour(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(29),
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: LCCOMB_X75_Y10_N6
\hour[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[29]~29_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & (hour(29))) # (!\Equal1~9_combout\ & ((\Add2~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Equal2~10_combout\,
	datac => hour(29),
	datad => \Add2~58_combout\,
	combout => \hour[29]~29_combout\);

-- Location: FF_X75_Y10_N7
\hour[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(29));

-- Location: LCCOMB_X75_Y10_N12
\hour[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[7]~31_combout\ = (\Equal2~10_combout\) # (\Equal1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~10_combout\,
	datad => \Equal1~9_combout\,
	combout => \hour[7]~31_combout\);

-- Location: LCCOMB_X75_Y10_N18
\hour[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[7]~30_combout\ = (!\Equal2~10_combout\ & \Equal1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~10_combout\,
	datad => \Equal1~9_combout\,
	combout => \hour[7]~30_combout\);

-- Location: LCCOMB_X76_Y10_N28
\Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = (hour(30) & (\Add2~59\ $ (GND))) # (!hour(30) & (!\Add2~59\ & VCC))
-- \Add2~61\ = CARRY((hour(30) & !\Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(30),
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: LCCOMB_X75_Y10_N8
\hour[30]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[30]~32_combout\ = (\hour[7]~31_combout\ & (\hour[7]~30_combout\ & (hour(30)))) # (!\hour[7]~31_combout\ & ((\Add2~60_combout\) # ((\hour[7]~30_combout\ & hour(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[7]~31_combout\,
	datab => \hour[7]~30_combout\,
	datac => hour(30),
	datad => \Add2~60_combout\,
	combout => \hour[30]~32_combout\);

-- Location: FF_X75_Y10_N9
\hour[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[30]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(30));

-- Location: LCCOMB_X76_Y10_N30
\Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = \Add2~61\ $ (hour(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => hour(31),
	cin => \Add2~61\,
	combout => \Add2~62_combout\);

-- Location: LCCOMB_X75_Y10_N14
\hour[31]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[31]~33_combout\ = (\hour[7]~31_combout\ & (\hour[7]~30_combout\ & (hour(31)))) # (!\hour[7]~31_combout\ & ((\Add2~62_combout\) # ((\hour[7]~30_combout\ & hour(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[7]~31_combout\,
	datab => \hour[7]~30_combout\,
	datac => hour(31),
	datad => \Add2~62_combout\,
	combout => \hour[31]~33_combout\);

-- Location: FF_X75_Y10_N15
\hour[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[31]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(31));

-- Location: LCCOMB_X75_Y10_N28
\Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (!hour(29) & (!hour(30) & (!hour(31) & !hour(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(29),
	datab => hour(30),
	datac => hour(31),
	datad => hour(28),
	combout => \Equal2~8_combout\);

-- Location: LCCOMB_X77_Y10_N16
\Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (!hour(17) & (!hour(16) & (!hour(19) & !hour(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(17),
	datab => hour(16),
	datac => hour(19),
	datad => hour(18),
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X77_Y10_N4
\Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (!hour(27) & (!hour(26) & (!hour(25) & !hour(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(27),
	datab => hour(26),
	datac => hour(25),
	datad => hour(24),
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X77_Y10_N18
\Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (!hour(21) & (!hour(23) & (!hour(22) & !hour(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(21),
	datab => hour(23),
	datac => hour(22),
	datad => hour(20),
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X77_Y10_N26
\Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~9_combout\ = (\Equal2~8_combout\ & (\Equal2~5_combout\ & (\Equal2~7_combout\ & \Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~8_combout\,
	datab => \Equal2~5_combout\,
	datac => \Equal2~7_combout\,
	datad => \Equal2~6_combout\,
	combout => \Equal2~9_combout\);

-- Location: LCCOMB_X77_Y11_N30
\Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~10_combout\ = (\Equal2~4_combout\ & (\Equal2~3_combout\ & (\Equal2~2_combout\ & \Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datab => \Equal2~3_combout\,
	datac => \Equal2~2_combout\,
	datad => \Equal2~9_combout\,
	combout => \Equal2~10_combout\);

-- Location: LCCOMB_X77_Y11_N8
\hour[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[7]~0_combout\ = (!\Equal2~10_combout\ & ((\Equal1~9_combout\ & (hour(7))) # (!\Equal1~9_combout\ & ((\Add2~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => \Equal2~10_combout\,
	datac => hour(7),
	datad => \Add2~14_combout\,
	combout => \hour[7]~0_combout\);

-- Location: FF_X77_Y11_N9
\hour[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \hour[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(7));

-- Location: LCCOMB_X76_Y9_N0
\b7segH2|decOut_n[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[0]~12_combout\ = (hour(2)) # ((hour(3)) # (hour(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(2),
	datac => hour(3),
	datad => hour(1),
	combout => \b7segH2|decOut_n[0]~12_combout\);

-- Location: LCCOMB_X76_Y9_N6
\b7segH2|decOut_n[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[0]~13_combout\ = (hour(6) & ((hour(5) & (!hour(3))) # (!hour(5) & ((!\b7segH2|decOut_n[0]~12_combout\))))) # (!hour(6) & (hour(5) & ((!\b7segH2|decOut_n[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(6),
	datab => hour(5),
	datac => hour(3),
	datad => \b7segH2|decOut_n[0]~12_combout\,
	combout => \b7segH2|decOut_n[0]~13_combout\);

-- Location: LCCOMB_X76_Y9_N20
\b7segH2|decOut_n[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[0]~14_combout\ = (hour(5) & (((hour(2) & hour(1))) # (!hour(6)))) # (!hour(5) & (((hour(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(2),
	datab => hour(5),
	datac => hour(6),
	datad => hour(1),
	combout => \b7segH2|decOut_n[0]~14_combout\);

-- Location: LCCOMB_X76_Y9_N10
\b7segH2|decOut_n[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[0]~15_combout\ = (hour(4) & (\b7segH2|decOut_n[0]~13_combout\)) # (!hour(4) & (((hour(3) & \b7segH2|decOut_n[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH2|decOut_n[0]~13_combout\,
	datab => hour(4),
	datac => hour(3),
	datad => \b7segH2|decOut_n[0]~14_combout\,
	combout => \b7segH2|decOut_n[0]~15_combout\);

-- Location: LCCOMB_X76_Y9_N12
\b7segH2|decOut_n[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[0]~9_combout\ = (hour(7) & (!hour(6) & ((!hour(4)) # (!hour(5))))) # (!hour(7) & ((hour(5) & (hour(6) & hour(4))) # (!hour(5) & (!hour(6) & !hour(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(7),
	datab => hour(5),
	datac => hour(6),
	datad => hour(4),
	combout => \b7segH2|decOut_n[0]~9_combout\);

-- Location: LCCOMB_X76_Y9_N18
\b7segH2|decOut_n[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[0]~8_combout\ = (hour(4) & (!hour(2) & (!hour(3)))) # (!hour(4) & (hour(3) & ((hour(2)) # (hour(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(2),
	datab => hour(4),
	datac => hour(3),
	datad => hour(1),
	combout => \b7segH2|decOut_n[0]~8_combout\);

-- Location: LCCOMB_X76_Y9_N4
\b7segH2|decOut_n[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[1]~7_combout\ = (!hour(6) & (hour(5) $ (!hour(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour(5),
	datac => hour(6),
	datad => hour(7),
	combout => \b7segH2|decOut_n[1]~7_combout\);

-- Location: LCCOMB_X72_Y11_N18
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = hour(5) $ (VCC)
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(hour(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour(5),
	datad => VCC,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X72_Y11_N20
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (hour(6) & (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!hour(6) & 
-- (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!hour(6) & !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(6),
	datad => VCC,
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X72_Y11_N22
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (hour(7) & (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!hour(7) & 
-- (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((hour(7) & !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(7),
	datad => VCC,
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X72_Y11_N24
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X72_Y11_N28
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[18]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[18]~37_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X72_Y10_N28
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[18]~36_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & hour(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => hour(7),
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X72_Y10_N30
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & hour(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => hour(6),
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X72_Y10_N0
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\ = (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X72_Y10_N22
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & hour(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => hour(5),
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X72_Y10_N24
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\ = (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X72_Y10_N26
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\ = (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & hour(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => hour(4),
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X72_Y10_N20
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[15]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & hour(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => hour(4),
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X72_Y10_N10
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\) # (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\)))
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\) # (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datad => VCC,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X72_Y10_N12
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\) # 
-- (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\)))) # (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- (!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\)))
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\ & (!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\ & 
-- !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datad => VCC,
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X72_Y10_N14
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\)))) # (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\)))))
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datad => VCC,
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X72_Y10_N16
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[18]~37_combout\ & (!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[18]~36_combout\ & 
-- !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datad => VCC,
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X72_Y10_N18
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X72_Y10_N4
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((hour(5)))) # 
-- (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => hour(5),
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X72_Y10_N8
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[23]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[23]~44_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X72_Y10_N6
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[23]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((hour(6)))) # 
-- (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => hour(6),
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X73_Y10_N24
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X73_Y10_N20
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\ = (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X73_Y10_N2
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\ = (hour(4) & \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour(4),
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X73_Y10_N30
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[20]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\ = (hour(3) & \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour(3),
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X73_Y10_N0
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[20]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\ = (hour(3) & !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour(3),
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X73_Y10_N10
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\) # (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\)))
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\) # (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datad => VCC,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X73_Y10_N12
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\) # 
-- (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\)))) # (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- (!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\)))
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\ & (!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datad => VCC,
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X73_Y10_N14
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\)))) # (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\)))))
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => VCC,
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X73_Y10_N16
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[23]~44_combout\ & (!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[23]~64_combout\ & 
-- !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datad => VCC,
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X73_Y10_N18
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X73_Y10_N6
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[28]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[28]~62_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- ((\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[28]~62_combout\);

-- Location: LCCOMB_X73_Y10_N28
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[28]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[28]~50_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X73_Y10_N4
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((hour(4)))) # 
-- (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => hour(4),
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\);

-- Location: LCCOMB_X73_Y8_N0
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\ = (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X73_Y10_N26
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\ = (hour(3) & \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour(3),
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X73_Y10_N8
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X73_Y8_N26
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\ = (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & hour(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => hour(2),
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X73_Y9_N4
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[25]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & hour(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => hour(2),
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X73_Y8_N14
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\)))
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datad => VCC,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X73_Y8_N16
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\) # 
-- (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\)))) # (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\ & 
-- (!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\)))
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\ & (!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datad => VCC,
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X73_Y8_N18
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\)))) # (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\)))))
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datad => VCC,
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X73_Y8_N20
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[28]~62_combout\ & (!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[28]~50_combout\ & 
-- !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[28]~62_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datad => VCC,
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X73_Y8_N22
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X73_Y8_N24
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[33]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\ = (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X73_Y8_N2
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[33]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- ((!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X73_Y8_N30
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[32]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[32]~57_combout\ = (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X73_Y10_N22
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((hour(3)))) # 
-- (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => hour(3),
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X74_Y9_N4
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[31]~58_combout\ = (hour(2) & \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour(2),
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X73_Y8_N28
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[31]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[31]~59_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[31]~59_combout\);

-- Location: LCCOMB_X74_Y8_N4
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[30]~60_combout\ = (hour(1) & \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour(1),
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X74_Y8_N18
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[30]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[30]~61_combout\ = (hour(1) & !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour(1),
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[30]~61_combout\);

-- Location: LCCOMB_X73_Y8_N4
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[30]~60_combout\) # (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[30]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[30]~61_combout\,
	datad => VCC,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X73_Y8_N6
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[31]~58_combout\ & (!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[31]~59_combout\ & 
-- !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[31]~59_combout\,
	datad => VCC,
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X73_Y8_N8
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[32]~57_combout\) # 
-- (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X73_Y8_N10
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\ & (!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\ & 
-- !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datad => VCC,
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X73_Y8_N12
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X73_Y9_N10
\b7segH2|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n~6_combout\ = (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \b7segH2|decOut_n~6_combout\);

-- Location: LCCOMB_X76_Y9_N26
\b7segH2|decOut_n[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[0]~10_combout\ = (\b7segH2|decOut_n[0]~9_combout\ & ((\b7segH2|decOut_n~6_combout\) # ((\b7segH2|decOut_n[0]~8_combout\ & \b7segH2|decOut_n[1]~7_combout\)))) # (!\b7segH2|decOut_n[0]~9_combout\ & (\b7segH2|decOut_n[0]~8_combout\ & 
-- (\b7segH2|decOut_n[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH2|decOut_n[0]~9_combout\,
	datab => \b7segH2|decOut_n[0]~8_combout\,
	datac => \b7segH2|decOut_n[1]~7_combout\,
	datad => \b7segH2|decOut_n~6_combout\,
	combout => \b7segH2|decOut_n[0]~10_combout\);

-- Location: LCCOMB_X75_Y9_N4
\b7segH2|decOut_n[0]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[0]~56_combout\ = (\b7segH2|decOut_n[0]~10_combout\) # ((\b7segH2|decOut_n[0]~15_combout\ & (hour(7) $ (hour(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(7),
	datab => \b7segH2|decOut_n[0]~15_combout\,
	datac => hour(5),
	datad => \b7segH2|decOut_n[0]~10_combout\,
	combout => \b7segH2|decOut_n[0]~56_combout\);

-- Location: LCCOMB_X76_Y9_N22
\b7segH2|decOut_n[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[1]~22_combout\ = (hour(4) & (((!hour(3))))) # (!hour(4) & (hour(2) & (hour(3) & hour(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(2),
	datab => hour(4),
	datac => hour(3),
	datad => hour(1),
	combout => \b7segH2|decOut_n[1]~22_combout\);

-- Location: LCCOMB_X76_Y9_N28
\b7segH2|decOut_n[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[1]~23_combout\ = (hour(4) & ((hour(2)) # ((hour(3)) # (hour(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(2),
	datab => hour(4),
	datac => hour(3),
	datad => hour(1),
	combout => \b7segH2|decOut_n[1]~23_combout\);

-- Location: LCCOMB_X76_Y9_N2
\b7segH2|decOut_n[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[1]~24_combout\ = (hour(5) & ((hour(6) & (\b7segH2|decOut_n[1]~22_combout\)) # (!hour(6) & ((\b7segH2|decOut_n[1]~23_combout\))))) # (!hour(5) & (((hour(6) & \b7segH2|decOut_n[1]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH2|decOut_n[1]~22_combout\,
	datab => hour(5),
	datac => hour(6),
	datad => \b7segH2|decOut_n[1]~23_combout\,
	combout => \b7segH2|decOut_n[1]~24_combout\);

-- Location: LCCOMB_X75_Y9_N24
\b7segH2|decOut_n[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[0]~11_combout\ = hour(5) $ (hour(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour(5),
	datad => hour(7),
	combout => \b7segH2|decOut_n[0]~11_combout\);

-- Location: LCCOMB_X75_Y9_N6
\b7segH2|decOut_n[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[1]~17_combout\ = (hour(7) & (((!hour(5) & !hour(6))))) # (!hour(7) & (hour(4) & (hour(5) & hour(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(7),
	datab => hour(4),
	datac => hour(5),
	datad => hour(6),
	combout => \b7segH2|decOut_n[1]~17_combout\);

-- Location: LCCOMB_X76_Y9_N16
\b7segH2|decOut_n[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[3]~18_combout\ = (!hour(4) & (((!hour(2) & !hour(1))) # (!hour(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(2),
	datab => hour(4),
	datac => hour(3),
	datad => hour(1),
	combout => \b7segH2|decOut_n[3]~18_combout\);

-- Location: LCCOMB_X73_Y9_N8
\b7segH2|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n~16_combout\ = (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \b7segH2|decOut_n~16_combout\);

-- Location: LCCOMB_X75_Y9_N8
\b7segH2|decOut_n[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[1]~19_combout\ = (\b7segH2|decOut_n~16_combout\ & ((\b7segH2|decOut_n[1]~17_combout\) # ((\b7segH2|decOut_n[3]~18_combout\ & \b7segH2|decOut_n[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH2|decOut_n[1]~17_combout\,
	datab => \b7segH2|decOut_n[3]~18_combout\,
	datac => \b7segH2|decOut_n~16_combout\,
	datad => \b7segH2|decOut_n[1]~7_combout\,
	combout => \b7segH2|decOut_n[1]~19_combout\);

-- Location: LCCOMB_X74_Y9_N14
\b7segH2|decOut_n[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[0]~20_combout\ = (!hour(3) & ((!hour(1)) # (!hour(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(2),
	datac => hour(3),
	datad => hour(1),
	combout => \b7segH2|decOut_n[0]~20_combout\);

-- Location: LCCOMB_X75_Y9_N2
\b7segH2|decOut_n[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[1]~21_combout\ = (\b7segH2|decOut_n[0]~20_combout\ & (hour(6) & (!hour(4) & !\b7segH2|decOut_n[0]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH2|decOut_n[0]~20_combout\,
	datab => hour(6),
	datac => hour(4),
	datad => \b7segH2|decOut_n[0]~11_combout\,
	combout => \b7segH2|decOut_n[1]~21_combout\);

-- Location: LCCOMB_X75_Y9_N16
\b7segH2|decOut_n[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[1]~25_combout\ = (\b7segH2|decOut_n[1]~19_combout\) # ((\b7segH2|decOut_n[1]~21_combout\) # ((\b7segH2|decOut_n[1]~24_combout\ & \b7segH2|decOut_n[0]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH2|decOut_n[1]~24_combout\,
	datab => \b7segH2|decOut_n[0]~11_combout\,
	datac => \b7segH2|decOut_n[1]~19_combout\,
	datad => \b7segH2|decOut_n[1]~21_combout\,
	combout => \b7segH2|decOut_n[1]~25_combout\);

-- Location: LCCOMB_X74_Y9_N8
\b7segH2|decOut_n[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[2]~28_combout\ = (hour(4) & ((hour(2) & ((!hour(1)) # (!hour(3)))) # (!hour(2) & (hour(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(4),
	datab => hour(2),
	datac => hour(3),
	datad => hour(1),
	combout => \b7segH2|decOut_n[2]~28_combout\);

-- Location: LCCOMB_X75_Y9_N14
\b7segH2|decOut_n[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[2]~26_combout\ = (hour(5) & (hour(3) & (hour(4) & hour(6)))) # (!hour(5) & (((!hour(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(3),
	datab => hour(4),
	datac => hour(5),
	datad => hour(6),
	combout => \b7segH2|decOut_n[2]~26_combout\);

-- Location: LCCOMB_X75_Y9_N0
\b7segH2|decOut_n[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[2]~27_combout\ = (\b7segH2|decOut_n[1]~7_combout\ & ((\b7segH2|decOut_n[3]~18_combout\) # ((\b7segH2|decOut_n[0]~11_combout\ & \b7segH2|decOut_n[2]~26_combout\)))) # (!\b7segH2|decOut_n[1]~7_combout\ & (\b7segH2|decOut_n[0]~11_combout\ & 
-- (\b7segH2|decOut_n[2]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH2|decOut_n[1]~7_combout\,
	datab => \b7segH2|decOut_n[0]~11_combout\,
	datac => \b7segH2|decOut_n[2]~26_combout\,
	datad => \b7segH2|decOut_n[3]~18_combout\,
	combout => \b7segH2|decOut_n[2]~27_combout\);

-- Location: LCCOMB_X75_Y9_N22
\b7segH2|decOut_n[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[2]~29_combout\ = (\b7segH2|decOut_n[2]~28_combout\ & ((\b7segH2|decOut_n[1]~7_combout\) # ((\b7segH2|decOut_n[2]~27_combout\ & \b7segH2|decOut_n~16_combout\)))) # (!\b7segH2|decOut_n[2]~28_combout\ & (\b7segH2|decOut_n[2]~27_combout\ & 
-- (\b7segH2|decOut_n~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH2|decOut_n[2]~28_combout\,
	datab => \b7segH2|decOut_n[2]~27_combout\,
	datac => \b7segH2|decOut_n~16_combout\,
	datad => \b7segH2|decOut_n[1]~7_combout\,
	combout => \b7segH2|decOut_n[2]~29_combout\);

-- Location: LCCOMB_X74_Y9_N6
\b7segH2|decOut_n[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[3]~30_combout\ = (hour(5) & (!hour(3) & ((hour(1)) # (!hour(7))))) # (!hour(5) & (hour(1) & ((!hour(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(1),
	datab => hour(5),
	datac => hour(3),
	datad => hour(7),
	combout => \b7segH2|decOut_n[3]~30_combout\);

-- Location: LCCOMB_X74_Y9_N16
\b7segH2|decOut_n[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[3]~31_combout\ = (hour(3) & (((hour(2) & \b7segH2|decOut_n[3]~30_combout\)) # (!\Equal2~0_combout\))) # (!hour(3) & (((hour(2) & \b7segH2|decOut_n[3]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(3),
	datab => \Equal2~0_combout\,
	datac => hour(2),
	datad => \b7segH2|decOut_n[3]~30_combout\,
	combout => \b7segH2|decOut_n[3]~31_combout\);

-- Location: LCCOMB_X74_Y9_N2
\b7segH2|decOut_n[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[3]~32_combout\ = (!hour(1) & (!hour(2) & (!hour(3) & hour(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(1),
	datab => hour(2),
	datac => hour(3),
	datad => hour(7),
	combout => \b7segH2|decOut_n[3]~32_combout\);

-- Location: LCCOMB_X74_Y9_N24
\b7segH2|decOut_n[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[3]~33_combout\ = (hour(4) & (((\b7segH2|decOut_n[3]~32_combout\ & !hour(5))))) # (!hour(4) & (\b7segH2|decOut_n[3]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH2|decOut_n[3]~31_combout\,
	datab => \b7segH2|decOut_n[3]~32_combout\,
	datac => hour(4),
	datad => hour(5),
	combout => \b7segH2|decOut_n[3]~33_combout\);

-- Location: LCCOMB_X73_Y9_N22
\b7segH2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|Equal0~0_combout\ = (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \b7segH2|Equal0~0_combout\);

-- Location: LCCOMB_X76_Y9_N8
\b7segH2|decOut_n[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[3]~34_combout\ = (hour(2) & ((hour(3)) # ((hour(4) & hour(1))))) # (!hour(2) & (hour(3) & ((hour(4)) # (hour(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(2),
	datab => hour(4),
	datac => hour(3),
	datad => hour(1),
	combout => \b7segH2|decOut_n[3]~34_combout\);

-- Location: LCCOMB_X76_Y9_N30
\b7segH2|decOut_n[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[3]~35_combout\ = (hour(7) & ((hour(5) & (!\b7segH2|decOut_n[3]~34_combout\ & !hour(4))) # (!hour(5) & (\b7segH2|decOut_n[3]~34_combout\ & hour(4))))) # (!hour(7) & (hour(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(7),
	datab => hour(5),
	datac => \b7segH2|decOut_n[3]~34_combout\,
	datad => hour(4),
	combout => \b7segH2|decOut_n[3]~35_combout\);

-- Location: LCCOMB_X76_Y9_N24
\b7segH2|decOut_n[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[3]~36_combout\ = (hour(6)) # ((\b7segH2|decOut_n[3]~35_combout\ & ((hour(7)))) # (!\b7segH2|decOut_n[3]~35_combout\ & (\b7segH2|decOut_n[3]~18_combout\ & !hour(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(6),
	datab => \b7segH2|decOut_n[3]~18_combout\,
	datac => \b7segH2|decOut_n[3]~35_combout\,
	datad => hour(7),
	combout => \b7segH2|decOut_n[3]~36_combout\);

-- Location: LCCOMB_X73_Y9_N28
\b7segH2|decOut_n[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[3]~37_combout\ = (hour(6) & (\b7segH2|decOut_n[3]~33_combout\)) # (!hour(6) & (((\b7segH2|Equal0~0_combout\ & \b7segH2|decOut_n[3]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(6),
	datab => \b7segH2|decOut_n[3]~33_combout\,
	datac => \b7segH2|Equal0~0_combout\,
	datad => \b7segH2|decOut_n[3]~36_combout\,
	combout => \b7segH2|decOut_n[3]~37_combout\);

-- Location: LCCOMB_X74_Y9_N0
\b7segH2|decOut_n[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[3]~39_combout\ = (hour(5) & (hour(4) & ((hour(7)) # (!hour(1))))) # (!hour(5) & (((!hour(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(1),
	datab => hour(5),
	datac => hour(4),
	datad => hour(7),
	combout => \b7segH2|decOut_n[3]~39_combout\);

-- Location: LCCOMB_X74_Y9_N26
\b7segH2|decOut_n[0]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[0]~38_combout\ = (!hour(3) & !hour(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(3),
	datac => hour(2),
	combout => \b7segH2|decOut_n[0]~38_combout\);

-- Location: LCCOMB_X74_Y9_N18
\b7segH2|decOut_n[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[3]~40_combout\ = (hour(5) & (hour(7) & ((hour(1)) # (hour(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(1),
	datab => hour(5),
	datac => hour(2),
	datad => hour(7),
	combout => \b7segH2|decOut_n[3]~40_combout\);

-- Location: LCCOMB_X74_Y9_N12
\b7segH2|decOut_n[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[3]~41_combout\ = (\b7segH2|decOut_n[3]~40_combout\) # ((!hour(7) & ((hour(3)) # (!hour(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(7),
	datab => \b7segH2|decOut_n[3]~40_combout\,
	datac => hour(3),
	datad => hour(5),
	combout => \b7segH2|decOut_n[3]~41_combout\);

-- Location: LCCOMB_X74_Y9_N30
\b7segH2|decOut_n[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[3]~42_combout\ = (hour(4) & (\b7segH2|decOut_n[3]~39_combout\ & (\b7segH2|decOut_n[0]~38_combout\))) # (!hour(4) & ((\b7segH2|decOut_n[3]~41_combout\) # ((\b7segH2|decOut_n[3]~39_combout\ & \b7segH2|decOut_n[0]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(4),
	datab => \b7segH2|decOut_n[3]~39_combout\,
	datac => \b7segH2|decOut_n[0]~38_combout\,
	datad => \b7segH2|decOut_n[3]~41_combout\,
	combout => \b7segH2|decOut_n[3]~42_combout\);

-- Location: LCCOMB_X73_Y9_N26
\b7segH2|decOut_n[3]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[3]~43_combout\ = (\b7segH2|decOut_n[3]~37_combout\) # ((\b7segH2|decOut_n[3]~42_combout\ & !\b7segH2|decOut_n[3]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b7segH2|decOut_n[3]~37_combout\,
	datac => \b7segH2|decOut_n[3]~42_combout\,
	datad => \b7segH2|decOut_n[3]~36_combout\,
	combout => \b7segH2|decOut_n[3]~43_combout\);

-- Location: LCCOMB_X73_Y9_N24
\b7segH2|decOut_n[4]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[4]~44_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))) # (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \b7segH2|decOut_n[4]~44_combout\);

-- Location: LCCOMB_X75_Y9_N28
\b7segH2|decOut_n[2]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[2]~48_combout\ = (hour(3) & (hour(4) & (hour(5) & hour(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(3),
	datab => hour(4),
	datac => hour(5),
	datad => hour(6),
	combout => \b7segH2|decOut_n[2]~48_combout\);

-- Location: LCCOMB_X75_Y9_N10
\b7segH2|decOut_n[5]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[5]~57_combout\ = (hour(7) & (((!hour(5) & \b7segH2|decOut_n[2]~48_combout\)) # (!hour(6)))) # (!hour(7) & ((hour(5) & ((\b7segH2|decOut_n[2]~48_combout\))) # (!hour(5) & (!hour(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(7),
	datab => hour(6),
	datac => hour(5),
	datad => \b7segH2|decOut_n[2]~48_combout\,
	combout => \b7segH2|decOut_n[5]~57_combout\);

-- Location: LCCOMB_X76_Y9_N14
\b7segH2|decOut_n[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[5]~45_combout\ = (!hour(3) & ((hour(6) & (!hour(5) & hour(7))) # (!hour(6) & (hour(5) & !hour(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(6),
	datab => hour(5),
	datac => hour(3),
	datad => hour(7),
	combout => \b7segH2|decOut_n[5]~45_combout\);

-- Location: LCCOMB_X75_Y9_N20
\b7segH2|decOut_n[5]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[5]~46_combout\ = (\b7segH2|decOut_n[5]~45_combout\) # ((!\b7segH2|decOut_n[0]~20_combout\ & (hour(6) & !\b7segH2|decOut_n[0]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH2|decOut_n[0]~20_combout\,
	datab => hour(6),
	datac => \b7segH2|decOut_n[5]~45_combout\,
	datad => \b7segH2|decOut_n[0]~11_combout\,
	combout => \b7segH2|decOut_n[5]~46_combout\);

-- Location: LCCOMB_X75_Y9_N18
\b7segH2|decOut_n[5]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[5]~47_combout\ = (\b7segH2|decOut_n[1]~7_combout\ & (((\b7segH2|decOut_n[5]~46_combout\ & !hour(4))) # (!\b7segH2|decOut_n[3]~18_combout\))) # (!\b7segH2|decOut_n[1]~7_combout\ & (\b7segH2|decOut_n[5]~46_combout\ & (!hour(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH2|decOut_n[1]~7_combout\,
	datab => \b7segH2|decOut_n[5]~46_combout\,
	datac => hour(4),
	datad => \b7segH2|decOut_n[3]~18_combout\,
	combout => \b7segH2|decOut_n[5]~47_combout\);

-- Location: LCCOMB_X75_Y9_N30
\b7segH2|decOut_n[5]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[5]~49_combout\ = (\b7segH2|decOut_n[5]~47_combout\) # ((\b7segH2|decOut_n[5]~57_combout\ & \b7segH2|decOut_n~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH2|decOut_n[5]~57_combout\,
	datac => \b7segH2|decOut_n~6_combout\,
	datad => \b7segH2|decOut_n[5]~47_combout\,
	combout => \b7segH2|decOut_n[5]~49_combout\);

-- Location: LCCOMB_X75_Y9_N12
\b7segH2|decOut_n[6]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[6]~50_combout\ = (!hour(7) & (hour(4) & (hour(5) & hour(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(7),
	datab => hour(4),
	datac => hour(5),
	datad => hour(3),
	combout => \b7segH2|decOut_n[6]~50_combout\);

-- Location: LCCOMB_X75_Y9_N26
\b7segH2|decOut_n[6]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[6]~51_combout\ = (\b7segH2|decOut_n[6]~50_combout\) # ((!\b7segH2|decOut_n[0]~11_combout\ & (!hour(4) & !\b7segH2|decOut_n[0]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH2|decOut_n[6]~50_combout\,
	datab => \b7segH2|decOut_n[0]~11_combout\,
	datac => hour(4),
	datad => \b7segH2|decOut_n[0]~20_combout\,
	combout => \b7segH2|decOut_n[6]~51_combout\);

-- Location: LCCOMB_X74_Y9_N20
\b7segH2|decOut_n[6]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[6]~52_combout\ = (hour(4) & ((hour(5) $ (!hour(7))))) # (!hour(4) & (!hour(1) & ((hour(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(1),
	datab => hour(5),
	datac => hour(4),
	datad => hour(7),
	combout => \b7segH2|decOut_n[6]~52_combout\);

-- Location: LCCOMB_X74_Y9_N10
\b7segH2|decOut_n[6]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[6]~53_combout\ = hour(5) $ (((hour(7) & ((hour(1)) # (hour(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(1),
	datab => hour(5),
	datac => hour(4),
	datad => hour(7),
	combout => \b7segH2|decOut_n[6]~53_combout\);

-- Location: LCCOMB_X74_Y9_N22
\b7segH2|decOut_n[6]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[6]~58_combout\ = (\b7segH2|decOut_n[6]~52_combout\ & ((hour(2) & ((\b7segH2|decOut_n[6]~53_combout\))) # (!hour(2) & (!hour(3))))) # (!\b7segH2|decOut_n[6]~52_combout\ & (((!\b7segH2|decOut_n[6]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(3),
	datab => \b7segH2|decOut_n[6]~52_combout\,
	datac => hour(2),
	datad => \b7segH2|decOut_n[6]~53_combout\,
	combout => \b7segH2|decOut_n[6]~58_combout\);

-- Location: LCCOMB_X74_Y9_N28
\b7segH2|decOut_n[6]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[6]~54_combout\ = (hour(6) & ((\b7segH2|decOut_n[6]~51_combout\) # ((\b7segH2|decOut_n[6]~58_combout\ & !\b7segH2|decOut_n[3]~36_combout\)))) # (!hour(6) & (((\b7segH2|decOut_n[6]~58_combout\ & !\b7segH2|decOut_n[3]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(6),
	datab => \b7segH2|decOut_n[6]~51_combout\,
	datac => \b7segH2|decOut_n[6]~58_combout\,
	datad => \b7segH2|decOut_n[3]~36_combout\,
	combout => \b7segH2|decOut_n[6]~54_combout\);

-- Location: LCCOMB_X73_Y9_N6
\b7segH2|decOut_n[6]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[6]~55_combout\ = (\b7segH2|decOut_n[6]~54_combout\) # ((!hour(6) & (!\b7segH2|Equal0~0_combout\ & \b7segH2|decOut_n[3]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(6),
	datab => \b7segH2|decOut_n[6]~54_combout\,
	datac => \b7segH2|Equal0~0_combout\,
	datad => \b7segH2|decOut_n[3]~36_combout\,
	combout => \b7segH2|decOut_n[6]~55_combout\);

-- Location: LCCOMB_X70_Y11_N24
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = hour(5) $ (VCC)
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(hour(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(5),
	datad => VCC,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X70_Y11_N26
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (hour(6) & (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!hour(6) & 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!hour(6) & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour(6),
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X70_Y11_N28
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (hour(7) & (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!hour(7) & 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((hour(7) & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(7),
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X70_Y11_N30
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X70_Y11_N12
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~55_combout\ = (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~55_combout\);

-- Location: LCCOMB_X70_Y10_N0
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~54_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & hour(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => hour(7),
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~54_combout\);

-- Location: LCCOMB_X70_Y11_N22
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X70_Y10_N18
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~56_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & hour(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => hour(6),
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~56_combout\);

-- Location: LCCOMB_X70_Y10_N22
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & hour(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => hour(5),
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X70_Y10_N20
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~59_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~59_combout\);

-- Location: LCCOMB_X70_Y10_N26
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[24]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[24]~60_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & hour(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => hour(4),
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[24]~60_combout\);

-- Location: LCCOMB_X70_Y10_N24
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[24]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[24]~61_combout\ = (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & hour(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => hour(4),
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[24]~61_combout\);

-- Location: LCCOMB_X70_Y10_N4
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[24]~60_combout\) # (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[24]~61_combout\)))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[24]~60_combout\) # (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[24]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[24]~60_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[24]~61_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X70_Y10_N6
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~59_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~59_combout\)))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~59_combout\ & 
-- !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~59_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X70_Y10_N8
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~56_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~56_combout\)))))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~56_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X70_Y10_N10
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~55_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~54_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~55_combout\ & 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~54_combout\)))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~55_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~54_combout\ & 
-- !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~55_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~54_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X70_Y10_N12
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X70_Y9_N4
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\);

-- Location: LCCOMB_X70_Y11_N0
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~96_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (hour(7))) # 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => hour(7),
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~96_combout\);

-- Location: LCCOMB_X70_Y9_N6
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~63_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~63_combout\);

-- Location: LCCOMB_X70_Y11_N14
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~97_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((hour(6)))) # 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => hour(6),
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~97_combout\);

-- Location: LCCOMB_X70_Y10_N30
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~64_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~64_combout\);

-- Location: LCCOMB_X70_Y10_N28
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~98_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (hour(5))) # 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => hour(5),
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~98_combout\);

-- Location: LCCOMB_X70_Y10_N16
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X70_Y9_N24
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~65_combout\ = (hour(4) & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour(4),
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~65_combout\);

-- Location: LCCOMB_X70_Y9_N10
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\ = (hour(3) & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour(3),
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X70_Y9_N0
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[32]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[32]~68_combout\ = (hour(3) & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour(3),
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[32]~68_combout\);

-- Location: LCCOMB_X70_Y9_N12
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\) # (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[32]~68_combout\)))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\) # (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[32]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X70_Y9_N14
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~65_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\ & 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~65_combout\)))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~65_combout\ & 
-- !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~65_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X70_Y9_N16
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~64_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~98_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~64_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~98_combout\)))))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~64_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~64_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X70_Y9_N18
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~63_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~97_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~63_combout\ & 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~97_combout\)))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~63_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~97_combout\ & 
-- !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~63_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X70_Y9_N20
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~96_combout\))))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\) # 
-- ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~96_combout\) # (GND))))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\) # ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~96_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X70_Y9_N22
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X70_Y9_N30
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~69_combout\ = (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~69_combout\);

-- Location: LCCOMB_X70_Y9_N26
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~89_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- ((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~96_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~89_combout\);

-- Location: LCCOMB_X70_Y9_N28
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~90_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~97_combout\) # 
-- ((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~97_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~90_combout\);

-- Location: LCCOMB_X70_Y9_N8
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~70_combout\ = (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~70_combout\);

-- Location: LCCOMB_X70_Y8_N28
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~71_combout\ = (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~71_combout\);

-- Location: LCCOMB_X70_Y10_N14
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~91_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- ((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~91_combout\);

-- Location: LCCOMB_X70_Y8_N30
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~72_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~72_combout\);

-- Location: LCCOMB_X70_Y10_N2
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~99_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (hour(4))) # 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => hour(4),
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~99_combout\);

-- Location: LCCOMB_X70_Y8_N26
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~74_combout\ = (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~74_combout\);

-- Location: LCCOMB_X70_Y8_N0
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~73_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & hour(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => hour(3),
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~73_combout\);

-- Location: LCCOMB_X70_Y11_N20
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[40]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[40]~75_combout\ = (hour(2) & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour(2),
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[40]~75_combout\);

-- Location: LCCOMB_X70_Y11_N18
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[40]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[40]~76_combout\ = (hour(2) & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour(2),
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[40]~76_combout\);

-- Location: LCCOMB_X70_Y8_N8
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[40]~75_combout\) # (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[40]~76_combout\)))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[40]~75_combout\) # (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[40]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[40]~75_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[40]~76_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X70_Y8_N10
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~74_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~73_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~74_combout\ & 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~73_combout\)))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~74_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~73_combout\ & 
-- !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~74_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~73_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X70_Y8_N12
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~72_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~99_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~72_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~99_combout\)))))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~72_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~72_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X70_Y8_N14
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~71_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~91_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~71_combout\ & 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~91_combout\)))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~71_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~91_combout\ & 
-- !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~71_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X70_Y8_N16
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~70_combout\))))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~70_combout\) # (GND))))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~90_combout\) # ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~70_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X70_Y8_N18
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~69_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~89_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~69_combout\ & 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~89_combout\)))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~69_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~89_combout\ & 
-- !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~69_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X70_Y8_N20
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X69_Y8_N30
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~82_combout\ = (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~82_combout\);

-- Location: LCCOMB_X69_Y9_N4
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~92_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~89_combout\) # 
-- ((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~92_combout\);

-- Location: LCCOMB_X70_Y9_N2
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~93_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- ((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~90_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~93_combout\);

-- Location: LCCOMB_X69_Y8_N28
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~83_combout\ = (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~83_combout\);

-- Location: LCCOMB_X70_Y8_N2
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~94_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~91_combout\) # 
-- ((!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~91_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~94_combout\);

-- Location: LCCOMB_X69_Y8_N2
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~84_combout\ = (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~84_combout\);

-- Location: LCCOMB_X70_Y8_N4
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~95_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- ((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~99_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~95_combout\);

-- Location: LCCOMB_X69_Y8_N24
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~85_combout\ = (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~85_combout\);

-- Location: LCCOMB_X69_Y8_N0
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~77_combout\ = (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~77_combout\);

-- Location: LCCOMB_X70_Y8_N22
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~100_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (hour(3))) # 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => hour(3),
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~100_combout\);

-- Location: LCCOMB_X70_Y8_N6
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~78_combout\ = (hour(2) & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour(2),
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~78_combout\);

-- Location: LCCOMB_X70_Y8_N24
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~79_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~79_combout\);

-- Location: LCCOMB_X72_Y8_N14
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~81_combout\ = (hour(1) & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour(1),
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~81_combout\);

-- Location: LCCOMB_X72_Y8_N4
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~80_combout\ = (hour(1) & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour(1),
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~80_combout\);

-- Location: LCCOMB_X69_Y8_N8
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~81_combout\) # (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~80_combout\)))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~81_combout\) # (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~81_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~80_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X69_Y8_N10
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~78_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~79_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~78_combout\ & 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~79_combout\)))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~78_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~79_combout\ & 
-- !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~78_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~79_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X69_Y8_N12
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~77_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~100_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~77_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~100_combout\)))))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~77_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~77_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X69_Y8_N14
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~95_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~85_combout\ & 
-- !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~95_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~85_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X69_Y8_N16
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~94_combout\) # ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~84_combout\) # 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~94_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~84_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X69_Y8_N18
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~93_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~83_combout\ & 
-- !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~93_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~83_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X69_Y8_N20
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~82_combout\) # ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~92_combout\) # 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~82_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~92_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X69_Y8_N22
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X69_Y8_N4
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~87_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((hour(1)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => hour(1),
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~87_combout\);

-- Location: LCCOMB_X69_Y8_N6
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~86_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~77_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~100_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~77_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~100_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~86_combout\);

-- Location: LCCOMB_X69_Y8_N26
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~88_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~79_combout\) # 
-- ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~78_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~79_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~78_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~88_combout\);

-- Location: LCCOMB_X73_Y4_N4
\b7segL2|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL2|decOut_n[0]~0_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~86_combout\ & (hour(0) & (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~87_combout\ $ 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~88_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~86_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~87_combout\ & (hour(0) $ 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~87_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~86_combout\,
	datac => hour(0),
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~88_combout\,
	combout => \b7segL2|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X73_Y4_N10
\b7segL2|decOut_n[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL2|decOut_n[1]~1_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~87_combout\ & ((hour(0) & (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~86_combout\)) # (!hour(0) & 
-- ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~88_combout\))))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~87_combout\ & (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~88_combout\ & 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~86_combout\ $ (hour(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~87_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~86_combout\,
	datac => hour(0),
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~88_combout\,
	combout => \b7segL2|decOut_n[1]~1_combout\);

-- Location: LCCOMB_X73_Y4_N12
\b7segL2|decOut_n[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL2|decOut_n[2]~2_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~86_combout\ & (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~88_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~87_combout\) # 
-- (!hour(0))))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~86_combout\ & (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~87_combout\ & (!hour(0) & !\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~87_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~86_combout\,
	datac => hour(0),
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~88_combout\,
	combout => \b7segL2|decOut_n[2]~2_combout\);

-- Location: LCCOMB_X73_Y4_N2
\b7segL2|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL2|decOut_n[3]~3_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~87_combout\ & ((hour(0) & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~88_combout\))) # (!hour(0) & 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~86_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~88_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~87_combout\ & 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~86_combout\ & (hour(0) $ (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~87_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~86_combout\,
	datac => hour(0),
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~88_combout\,
	combout => \b7segL2|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X73_Y4_N0
\b7segL2|decOut_n[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL2|decOut_n[4]~4_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~87_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~86_combout\ & (hour(0)))) # 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~87_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~88_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~86_combout\)) # 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~88_combout\ & ((hour(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~87_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~86_combout\,
	datac => hour(0),
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~88_combout\,
	combout => \b7segL2|decOut_n[4]~4_combout\);

-- Location: LCCOMB_X73_Y4_N22
\b7segL2|decOut_n[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL2|decOut_n[5]~5_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~87_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~86_combout\ & ((hour(0)) # 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~88_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~87_combout\ & (hour(0) & (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~86_combout\ $ 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~87_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~86_combout\,
	datac => hour(0),
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~88_combout\,
	combout => \b7segL2|decOut_n[5]~5_combout\);

-- Location: LCCOMB_X73_Y4_N28
\b7segL2|decOut_n[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL2|decOut_n[6]~6_combout\ = (hour(0) & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~86_combout\ & (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~87_combout\ $ 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~88_combout\)))) # (!hour(0) & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~87_combout\ & (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~86_combout\ $ 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~87_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~86_combout\,
	datac => hour(0),
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~88_combout\,
	combout => \b7segL2|decOut_n[6]~6_combout\);

-- Location: LCCOMB_X81_Y9_N20
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = min(5) $ (VCC)
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(min(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min(5),
	datad => VCC,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X81_Y9_N22
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (min(6) & (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!min(6) & 
-- (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!min(6) & !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(6),
	datad => VCC,
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X81_Y9_N24
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (min(7) & (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!min(7) & 
-- (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((min(7) & !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(7),
	datad => VCC,
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X81_Y9_N26
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X81_Y9_N30
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[18]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\ = (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X81_Y9_N28
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & min(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => min(7),
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X81_Y9_N2
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\ = (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X81_Y9_N0
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\ = (min(6) & \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min(6),
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X80_Y9_N26
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X80_Y9_N28
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ = (min(5) & \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min(5),
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X80_Y9_N16
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[15]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\ = (min(4) & \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min(4),
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X81_Y9_N4
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\ = (min(4) & !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X81_Y9_N10
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\) # (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\)))
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\) # (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datad => VCC,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X81_Y9_N12
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\) # 
-- (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\)))) # (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\ & 
-- (!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\)))
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\ & (!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datad => VCC,
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X81_Y9_N14
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\)))) # (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\)))))
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datad => VCC,
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X81_Y9_N16
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\ & (!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\ & 
-- !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datad => VCC,
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X81_Y9_N18
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X80_Y9_N20
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (min(5))) # 
-- (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(5),
	datab => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X80_Y9_N12
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X80_Y9_N4
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X80_Y9_N22
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\ = (min(4) & \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min(4),
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X80_Y9_N6
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[20]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\ = (min(3) & \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X80_Y9_N24
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[20]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\ = (min(3) & !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X79_Y9_N22
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\) # (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\)))
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\) # (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datad => VCC,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X79_Y9_N24
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\) # 
-- (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\)))) # (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- (!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\)))
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\ & (!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datad => VCC,
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X79_Y9_N26
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\)))) # (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\)))))
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datad => VCC,
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X80_Y9_N2
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[23]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((min(6)))) # 
-- (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => min(6),
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X80_Y9_N10
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[23]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X79_Y9_N28
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ & (!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\ & 
-- !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datad => VCC,
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X79_Y9_N30
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X79_Y9_N8
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[28]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X80_Y9_N8
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[28]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[28]~62_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- ((\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[28]~62_combout\);

-- Location: LCCOMB_X80_Y9_N30
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (min(4))) # 
-- (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datab => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\);

-- Location: LCCOMB_X80_Y9_N18
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\ = (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X79_Y9_N2
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X80_Y9_N0
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\ = (min(3) & \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X79_Y9_N6
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ = (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & min(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => min(2),
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X79_Y9_N0
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[25]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & min(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => min(2),
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X79_Y9_N10
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\)))
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datad => VCC,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X79_Y9_N12
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\) # 
-- (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\)))) # (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- (!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\)))
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\ & (!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\ & 
-- !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datad => VCC,
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X79_Y9_N14
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\)))) # (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\)))))
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datad => VCC,
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X79_Y9_N16
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\ & (!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[28]~62_combout\ & 
-- !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[28]~62_combout\,
	datad => VCC,
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X79_Y9_N18
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X79_Y9_N4
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[33]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X79_Y9_N20
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[33]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- ((!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X79_Y8_N22
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((min(3)))) # 
-- (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => min(3),
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X79_Y8_N14
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[32]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ = (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X79_Y8_N24
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & min(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => min(2),
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X79_Y8_N18
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[31]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[31]~59_combout\ = (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[31]~59_combout\);

-- Location: LCCOMB_X79_Y8_N30
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[30]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[30]~61_combout\ = (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & min(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => min(1),
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[30]~61_combout\);

-- Location: LCCOMB_X79_Y8_N20
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & min(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => min(1),
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X79_Y8_N0
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[30]~61_combout\) # (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[30]~61_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datad => VCC,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X79_Y8_N2
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ & (!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[31]~59_combout\ & 
-- !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[31]~59_combout\,
	datad => VCC,
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X79_Y8_N4
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datad => VCC,
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X79_Y8_N6
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ & (!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[33]~63_combout\ & 
-- !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datad => VCC,
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X79_Y8_N8
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X79_Y8_N28
\b7segH1|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n~6_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \b7segH1|decOut_n~6_combout\);

-- Location: LCCOMB_X82_Y8_N24
\b7segH1|decOut_n[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[0]~9_combout\ = (min(6) & (!min(7) & (min(4) & min(5)))) # (!min(6) & ((min(7) & ((!min(5)) # (!min(4)))) # (!min(7) & (!min(4) & !min(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(6),
	datab => min(7),
	datac => min(4),
	datad => min(5),
	combout => \b7segH1|decOut_n[0]~9_combout\);

-- Location: LCCOMB_X82_Y8_N14
\b7segH1|decOut_n[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[0]~8_combout\ = (min(4) & (!min(2) & ((!min(3))))) # (!min(4) & (min(3) & ((min(2)) # (min(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datab => min(2),
	datac => min(1),
	datad => min(3),
	combout => \b7segH1|decOut_n[0]~8_combout\);

-- Location: LCCOMB_X82_Y8_N16
\b7segH1|decOut_n[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[1]~7_combout\ = (!min(6) & (min(5) $ (!min(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(6),
	datab => min(5),
	datad => min(7),
	combout => \b7segH1|decOut_n[1]~7_combout\);

-- Location: LCCOMB_X82_Y8_N10
\b7segH1|decOut_n[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[0]~10_combout\ = (\b7segH1|decOut_n~6_combout\ & ((\b7segH1|decOut_n[0]~9_combout\) # ((\b7segH1|decOut_n[0]~8_combout\ & \b7segH1|decOut_n[1]~7_combout\)))) # (!\b7segH1|decOut_n~6_combout\ & (((\b7segH1|decOut_n[0]~8_combout\ & 
-- \b7segH1|decOut_n[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH1|decOut_n~6_combout\,
	datab => \b7segH1|decOut_n[0]~9_combout\,
	datac => \b7segH1|decOut_n[0]~8_combout\,
	datad => \b7segH1|decOut_n[1]~7_combout\,
	combout => \b7segH1|decOut_n[0]~10_combout\);

-- Location: LCCOMB_X82_Y8_N0
\b7segH1|decOut_n[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[0]~14_combout\ = (min(6) & (((min(2) & min(1))) # (!min(5)))) # (!min(6) & (((min(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(6),
	datab => min(2),
	datac => min(1),
	datad => min(5),
	combout => \b7segH1|decOut_n[0]~14_combout\);

-- Location: LCCOMB_X82_Y8_N20
\b7segH1|decOut_n[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[0]~12_combout\ = (min(2)) # ((min(1)) # (min(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min(2),
	datac => min(1),
	datad => min(3),
	combout => \b7segH1|decOut_n[0]~12_combout\);

-- Location: LCCOMB_X82_Y8_N2
\b7segH1|decOut_n[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[0]~13_combout\ = (min(6) & ((min(5) & (!min(3))) # (!min(5) & ((!\b7segH1|decOut_n[0]~12_combout\))))) # (!min(6) & (min(5) & ((!\b7segH1|decOut_n[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(6),
	datab => min(5),
	datac => min(3),
	datad => \b7segH1|decOut_n[0]~12_combout\,
	combout => \b7segH1|decOut_n[0]~13_combout\);

-- Location: LCCOMB_X82_Y8_N22
\b7segH1|decOut_n[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[0]~15_combout\ = (min(4) & (((\b7segH1|decOut_n[0]~13_combout\)))) # (!min(4) & (\b7segH1|decOut_n[0]~14_combout\ & (min(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datab => \b7segH1|decOut_n[0]~14_combout\,
	datac => min(3),
	datad => \b7segH1|decOut_n[0]~13_combout\,
	combout => \b7segH1|decOut_n[0]~15_combout\);

-- Location: LCCOMB_X82_Y8_N18
\b7segH1|decOut_n[0]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[0]~55_combout\ = (\b7segH1|decOut_n[0]~10_combout\) # ((\b7segH1|decOut_n[0]~15_combout\ & (min(7) $ (min(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH1|decOut_n[0]~10_combout\,
	datab => min(7),
	datac => \b7segH1|decOut_n[0]~15_combout\,
	datad => min(5),
	combout => \b7segH1|decOut_n[0]~55_combout\);

-- Location: LCCOMB_X82_Y12_N20
\b7segH1|decOut_n[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[0]~20_combout\ = (!min(3) & ((!min(1)) # (!min(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min(2),
	datac => min(3),
	datad => min(1),
	combout => \b7segH1|decOut_n[0]~20_combout\);

-- Location: LCCOMB_X82_Y12_N24
\b7segH1|decOut_n[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[0]~11_combout\ = min(5) $ (min(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min(5),
	datad => min(7),
	combout => \b7segH1|decOut_n[0]~11_combout\);

-- Location: LCCOMB_X82_Y12_N10
\b7segH1|decOut_n[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[1]~21_combout\ = (min(6) & (\b7segH1|decOut_n[0]~20_combout\ & (!min(4) & !\b7segH1|decOut_n[0]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(6),
	datab => \b7segH1|decOut_n[0]~20_combout\,
	datac => min(4),
	datad => \b7segH1|decOut_n[0]~11_combout\,
	combout => \b7segH1|decOut_n[1]~21_combout\);

-- Location: LCCOMB_X82_Y8_N30
\b7segH1|decOut_n[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[1]~23_combout\ = (min(4) & ((min(2)) # ((min(1)) # (min(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datab => min(2),
	datac => min(1),
	datad => min(3),
	combout => \b7segH1|decOut_n[1]~23_combout\);

-- Location: LCCOMB_X82_Y8_N12
\b7segH1|decOut_n[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[1]~22_combout\ = (min(4) & (((!min(3))))) # (!min(4) & (min(2) & (min(1) & min(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datab => min(2),
	datac => min(1),
	datad => min(3),
	combout => \b7segH1|decOut_n[1]~22_combout\);

-- Location: LCCOMB_X82_Y8_N8
\b7segH1|decOut_n[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[1]~24_combout\ = (min(6) & ((min(5) & ((\b7segH1|decOut_n[1]~22_combout\))) # (!min(5) & (\b7segH1|decOut_n[1]~23_combout\)))) # (!min(6) & (min(5) & (\b7segH1|decOut_n[1]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(6),
	datab => min(5),
	datac => \b7segH1|decOut_n[1]~23_combout\,
	datad => \b7segH1|decOut_n[1]~22_combout\,
	combout => \b7segH1|decOut_n[1]~24_combout\);

-- Location: LCCOMB_X82_Y12_N14
\b7segH1|decOut_n[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[1]~17_combout\ = (min(6) & (min(4) & (min(5) & !min(7)))) # (!min(6) & (((!min(5) & min(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(6),
	datab => min(4),
	datac => min(5),
	datad => min(7),
	combout => \b7segH1|decOut_n[1]~17_combout\);

-- Location: LCCOMB_X79_Y8_N26
\b7segH1|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n~16_combout\ = (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \b7segH1|decOut_n~16_combout\);

-- Location: LCCOMB_X82_Y12_N28
\b7segH1|decOut_n[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[6]~18_combout\ = (!min(4) & (((!min(1) & !min(2))) # (!min(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(1),
	datab => min(3),
	datac => min(2),
	datad => min(4),
	combout => \b7segH1|decOut_n[6]~18_combout\);

-- Location: LCCOMB_X82_Y12_N30
\b7segH1|decOut_n[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[1]~19_combout\ = (\b7segH1|decOut_n~16_combout\ & ((\b7segH1|decOut_n[1]~17_combout\) # ((\b7segH1|decOut_n[1]~7_combout\ & \b7segH1|decOut_n[6]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH1|decOut_n[1]~7_combout\,
	datab => \b7segH1|decOut_n[1]~17_combout\,
	datac => \b7segH1|decOut_n~16_combout\,
	datad => \b7segH1|decOut_n[6]~18_combout\,
	combout => \b7segH1|decOut_n[1]~19_combout\);

-- Location: LCCOMB_X82_Y12_N8
\b7segH1|decOut_n[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[1]~25_combout\ = (\b7segH1|decOut_n[1]~21_combout\) # ((\b7segH1|decOut_n[1]~19_combout\) # ((\b7segH1|decOut_n[1]~24_combout\ & \b7segH1|decOut_n[0]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH1|decOut_n[1]~21_combout\,
	datab => \b7segH1|decOut_n[1]~24_combout\,
	datac => \b7segH1|decOut_n[1]~19_combout\,
	datad => \b7segH1|decOut_n[0]~11_combout\,
	combout => \b7segH1|decOut_n[1]~25_combout\);

-- Location: LCCOMB_X82_Y12_N2
\b7segH1|decOut_n[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[2]~28_combout\ = (min(4) & ((min(3) & ((!min(2)) # (!min(1)))) # (!min(3) & ((min(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(1),
	datab => min(3),
	datac => min(2),
	datad => min(4),
	combout => \b7segH1|decOut_n[2]~28_combout\);

-- Location: LCCOMB_X82_Y12_N6
\b7segH1|decOut_n[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[2]~26_combout\ = (min(5) & (min(4) & (min(3) & min(6)))) # (!min(5) & (((!min(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(5),
	datab => min(4),
	datac => min(3),
	datad => min(6),
	combout => \b7segH1|decOut_n[2]~26_combout\);

-- Location: LCCOMB_X82_Y12_N0
\b7segH1|decOut_n[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[2]~27_combout\ = (\b7segH1|decOut_n[2]~26_combout\ & ((\b7segH1|decOut_n[0]~11_combout\) # ((\b7segH1|decOut_n[1]~7_combout\ & \b7segH1|decOut_n[6]~18_combout\)))) # (!\b7segH1|decOut_n[2]~26_combout\ & (((\b7segH1|decOut_n[1]~7_combout\ 
-- & \b7segH1|decOut_n[6]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH1|decOut_n[2]~26_combout\,
	datab => \b7segH1|decOut_n[0]~11_combout\,
	datac => \b7segH1|decOut_n[1]~7_combout\,
	datad => \b7segH1|decOut_n[6]~18_combout\,
	combout => \b7segH1|decOut_n[2]~27_combout\);

-- Location: LCCOMB_X82_Y12_N12
\b7segH1|decOut_n[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[2]~29_combout\ = (\b7segH1|decOut_n[1]~7_combout\ & ((\b7segH1|decOut_n[2]~28_combout\) # ((\b7segH1|decOut_n~16_combout\ & \b7segH1|decOut_n[2]~27_combout\)))) # (!\b7segH1|decOut_n[1]~7_combout\ & (((\b7segH1|decOut_n~16_combout\ & 
-- \b7segH1|decOut_n[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH1|decOut_n[1]~7_combout\,
	datab => \b7segH1|decOut_n[2]~28_combout\,
	datac => \b7segH1|decOut_n~16_combout\,
	datad => \b7segH1|decOut_n[2]~27_combout\,
	combout => \b7segH1|decOut_n[2]~29_combout\);

-- Location: LCCOMB_X82_Y8_N6
\b7segH1|decOut_n[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[3]~30_combout\ = (min(4) & (!min(2) & (!min(1) & !min(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datab => min(2),
	datac => min(1),
	datad => min(3),
	combout => \b7segH1|decOut_n[3]~30_combout\);

-- Location: LCCOMB_X82_Y8_N28
\b7segH1|decOut_n[3]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[3]~58_combout\ = (min(1) & ((min(5) & ((min(7)) # (!min(3)))) # (!min(5) & ((min(3)) # (!min(7)))))) # (!min(1) & ((min(3)) # ((min(5) & !min(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(1),
	datab => min(5),
	datac => min(3),
	datad => min(7),
	combout => \b7segH1|decOut_n[3]~58_combout\);

-- Location: LCCOMB_X82_Y8_N26
\b7segH1|decOut_n[3]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[3]~59_combout\ = (!min(4) & ((min(2) & ((\b7segH1|decOut_n[3]~58_combout\))) # (!min(2) & (min(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datab => min(3),
	datac => min(2),
	datad => \b7segH1|decOut_n[3]~58_combout\,
	combout => \b7segH1|decOut_n[3]~59_combout\);

-- Location: LCCOMB_X82_Y8_N4
\b7segH1|decOut_n[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[3]~31_combout\ = (\b7segH1|decOut_n[3]~59_combout\) # ((\b7segH1|decOut_n[3]~30_combout\ & (min(7) & !min(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH1|decOut_n[3]~30_combout\,
	datab => min(7),
	datac => \b7segH1|decOut_n[3]~59_combout\,
	datad => min(5),
	combout => \b7segH1|decOut_n[3]~31_combout\);

-- Location: LCCOMB_X81_Y8_N0
\b7segH1|decOut_n[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[3]~32_combout\ = (min(5) & (min(3) & ((min(1)) # (min(2))))) # (!min(5) & ((min(3)) # ((min(1) & min(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(5),
	datab => min(1),
	datac => min(2),
	datad => min(3),
	combout => \b7segH1|decOut_n[3]~32_combout\);

-- Location: LCCOMB_X81_Y8_N14
\b7segH1|decOut_n[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[3]~33_combout\ = (min(5) & (((!\b7segH1|decOut_n[3]~32_combout\ & !min(4))) # (!min(7)))) # (!min(5) & (\b7segH1|decOut_n[3]~32_combout\ & (min(4) & min(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(5),
	datab => \b7segH1|decOut_n[3]~32_combout\,
	datac => min(4),
	datad => min(7),
	combout => \b7segH1|decOut_n[3]~33_combout\);

-- Location: LCCOMB_X81_Y8_N4
\b7segH1|decOut_n[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[3]~34_combout\ = (min(6)) # ((\b7segH1|decOut_n[3]~33_combout\ & (min(7))) # (!\b7segH1|decOut_n[3]~33_combout\ & (!min(7) & \b7segH1|decOut_n[6]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH1|decOut_n[3]~33_combout\,
	datab => min(7),
	datac => min(6),
	datad => \b7segH1|decOut_n[6]~18_combout\,
	combout => \b7segH1|decOut_n[3]~34_combout\);

-- Location: LCCOMB_X79_Y8_N12
\b7segH1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|Equal0~0_combout\ = (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \b7segH1|Equal0~0_combout\);

-- Location: LCCOMB_X81_Y8_N10
\b7segH1|decOut_n[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[3]~35_combout\ = (min(6) & (\b7segH1|decOut_n[3]~31_combout\)) # (!min(6) & (((\b7segH1|decOut_n[3]~34_combout\ & \b7segH1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH1|decOut_n[3]~31_combout\,
	datab => min(6),
	datac => \b7segH1|decOut_n[3]~34_combout\,
	datad => \b7segH1|Equal0~0_combout\,
	combout => \b7segH1|decOut_n[3]~35_combout\);

-- Location: LCCOMB_X81_Y8_N22
\b7segH1|decOut_n[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[3]~39_combout\ = (min(5) & min(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min(5),
	datad => min(7),
	combout => \b7segH1|decOut_n[3]~39_combout\);

-- Location: LCCOMB_X81_Y8_N24
\b7segH1|decOut_n[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[3]~40_combout\ = (min(5) & (min(4) & (!min(1)))) # (!min(5) & (((!min(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datab => min(1),
	datac => min(5),
	datad => min(7),
	combout => \b7segH1|decOut_n[3]~40_combout\);

-- Location: LCCOMB_X81_Y8_N30
\b7segH1|decOut_n[0]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[0]~37_combout\ = (!min(2) & !min(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(2),
	datad => min(3),
	combout => \b7segH1|decOut_n[0]~37_combout\);

-- Location: LCCOMB_X81_Y8_N16
\b7segH1|decOut_n[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[3]~38_combout\ = (min(2) & (!min(4))) # (!min(2) & (min(1) & ((!min(3)) # (!min(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datab => min(1),
	datac => min(2),
	datad => min(3),
	combout => \b7segH1|decOut_n[3]~38_combout\);

-- Location: LCCOMB_X81_Y8_N2
\b7segH1|decOut_n[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[3]~41_combout\ = (\b7segH1|decOut_n[3]~39_combout\ & ((\b7segH1|decOut_n[3]~38_combout\) # ((\b7segH1|decOut_n[3]~40_combout\ & \b7segH1|decOut_n[0]~37_combout\)))) # (!\b7segH1|decOut_n[3]~39_combout\ & (\b7segH1|decOut_n[3]~40_combout\ 
-- & (\b7segH1|decOut_n[0]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH1|decOut_n[3]~39_combout\,
	datab => \b7segH1|decOut_n[3]~40_combout\,
	datac => \b7segH1|decOut_n[0]~37_combout\,
	datad => \b7segH1|decOut_n[3]~38_combout\,
	combout => \b7segH1|decOut_n[3]~41_combout\);

-- Location: LCCOMB_X81_Y8_N28
\b7segH1|decOut_n[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[3]~36_combout\ = (!min(4) & (!min(7) & ((min(3)) # (!min(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datab => min(7),
	datac => min(5),
	datad => min(3),
	combout => \b7segH1|decOut_n[3]~36_combout\);

-- Location: LCCOMB_X81_Y8_N8
\b7segH1|decOut_n[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[3]~42_combout\ = (\b7segH1|decOut_n[3]~35_combout\) # ((!\b7segH1|decOut_n[3]~34_combout\ & ((\b7segH1|decOut_n[3]~41_combout\) # (\b7segH1|decOut_n[3]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH1|decOut_n[3]~35_combout\,
	datab => \b7segH1|decOut_n[3]~41_combout\,
	datac => \b7segH1|decOut_n[3]~34_combout\,
	datad => \b7segH1|decOut_n[3]~36_combout\,
	combout => \b7segH1|decOut_n[3]~42_combout\);

-- Location: LCCOMB_X79_Y8_N10
\b7segH1|decOut_n[4]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[4]~43_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))) # (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ 
-- & ((\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \b7segH1|decOut_n[4]~43_combout\);

-- Location: LCCOMB_X80_Y9_N14
\b7segH1|decOut_n[2]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[2]~47_combout\ = (min(5) & (min(6) & (min(4) & min(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(5),
	datab => min(6),
	datac => min(4),
	datad => min(3),
	combout => \b7segH1|decOut_n[2]~47_combout\);

-- Location: LCCOMB_X81_Y9_N6
\b7segH1|decOut_n[5]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[5]~56_combout\ = (\b7segH1|decOut_n[2]~47_combout\ & ((min(5) $ (min(7))) # (!min(6)))) # (!\b7segH1|decOut_n[2]~47_combout\ & (!min(6) & ((min(7)) # (!min(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH1|decOut_n[2]~47_combout\,
	datab => min(5),
	datac => min(6),
	datad => min(7),
	combout => \b7segH1|decOut_n[5]~56_combout\);

-- Location: LCCOMB_X82_Y12_N26
\b7segH1|decOut_n[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[5]~44_combout\ = (!min(3) & ((min(6) & (!min(5) & min(7))) # (!min(6) & (min(5) & !min(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(6),
	datab => min(3),
	datac => min(5),
	datad => min(7),
	combout => \b7segH1|decOut_n[5]~44_combout\);

-- Location: LCCOMB_X82_Y12_N4
\b7segH1|decOut_n[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[5]~45_combout\ = (\b7segH1|decOut_n[5]~44_combout\) # ((min(6) & (!\b7segH1|decOut_n[0]~20_combout\ & !\b7segH1|decOut_n[0]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(6),
	datab => \b7segH1|decOut_n[0]~20_combout\,
	datac => \b7segH1|decOut_n[5]~44_combout\,
	datad => \b7segH1|decOut_n[0]~11_combout\,
	combout => \b7segH1|decOut_n[5]~45_combout\);

-- Location: LCCOMB_X82_Y12_N22
\b7segH1|decOut_n[5]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[5]~46_combout\ = (\b7segH1|decOut_n[1]~7_combout\ & (((!min(4) & \b7segH1|decOut_n[5]~45_combout\)) # (!\b7segH1|decOut_n[6]~18_combout\))) # (!\b7segH1|decOut_n[1]~7_combout\ & (!min(4) & (\b7segH1|decOut_n[5]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH1|decOut_n[1]~7_combout\,
	datab => min(4),
	datac => \b7segH1|decOut_n[5]~45_combout\,
	datad => \b7segH1|decOut_n[6]~18_combout\,
	combout => \b7segH1|decOut_n[5]~46_combout\);

-- Location: LCCOMB_X81_Y9_N8
\b7segH1|decOut_n[5]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[5]~48_combout\ = (\b7segH1|decOut_n[5]~46_combout\) # ((\b7segH1|decOut_n[5]~56_combout\ & \b7segH1|decOut_n~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH1|decOut_n[5]~56_combout\,
	datab => \b7segH1|decOut_n~6_combout\,
	datad => \b7segH1|decOut_n[5]~46_combout\,
	combout => \b7segH1|decOut_n[5]~48_combout\);

-- Location: LCCOMB_X81_Y8_N20
\b7segH1|decOut_n[6]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[6]~52_combout\ = min(5) $ (((min(7) & ((min(4)) # (min(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datab => min(1),
	datac => min(5),
	datad => min(7),
	combout => \b7segH1|decOut_n[6]~52_combout\);

-- Location: LCCOMB_X81_Y8_N18
\b7segH1|decOut_n[6]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[6]~51_combout\ = (min(4) & ((min(5) $ (!min(7))))) # (!min(4) & (!min(1) & ((min(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datab => min(1),
	datac => min(5),
	datad => min(7),
	combout => \b7segH1|decOut_n[6]~51_combout\);

-- Location: LCCOMB_X81_Y8_N6
\b7segH1|decOut_n[6]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[6]~57_combout\ = (\b7segH1|decOut_n[6]~51_combout\ & ((min(2) & ((\b7segH1|decOut_n[6]~52_combout\))) # (!min(2) & (!min(3))))) # (!\b7segH1|decOut_n[6]~51_combout\ & (((!\b7segH1|decOut_n[6]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datab => \b7segH1|decOut_n[6]~52_combout\,
	datac => min(2),
	datad => \b7segH1|decOut_n[6]~51_combout\,
	combout => \b7segH1|decOut_n[6]~57_combout\);

-- Location: LCCOMB_X82_Y12_N16
\b7segH1|decOut_n[6]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[6]~50_combout\ = (\b7segH1|decOut_n[6]~49_combout\) # ((!\b7segH1|decOut_n[0]~11_combout\ & (!min(4) & !\b7segH1|decOut_n[0]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH1|decOut_n[6]~49_combout\,
	datab => \b7segH1|decOut_n[0]~11_combout\,
	datac => min(4),
	datad => \b7segH1|decOut_n[0]~20_combout\,
	combout => \b7segH1|decOut_n[6]~50_combout\);

-- Location: LCCOMB_X81_Y8_N26
\b7segH1|decOut_n[6]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[6]~53_combout\ = (\b7segH1|decOut_n[6]~57_combout\ & (((min(6) & \b7segH1|decOut_n[6]~50_combout\)) # (!\b7segH1|decOut_n[3]~34_combout\))) # (!\b7segH1|decOut_n[6]~57_combout\ & (((min(6) & \b7segH1|decOut_n[6]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH1|decOut_n[6]~57_combout\,
	datab => \b7segH1|decOut_n[3]~34_combout\,
	datac => min(6),
	datad => \b7segH1|decOut_n[6]~50_combout\,
	combout => \b7segH1|decOut_n[6]~53_combout\);

-- Location: LCCOMB_X81_Y8_N12
\b7segH1|decOut_n[6]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[6]~54_combout\ = (\b7segH1|decOut_n[6]~53_combout\) # ((!min(6) & (\b7segH1|decOut_n[3]~34_combout\ & !\b7segH1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH1|decOut_n[6]~53_combout\,
	datab => min(6),
	datac => \b7segH1|decOut_n[3]~34_combout\,
	datad => \b7segH1|Equal0~0_combout\,
	combout => \b7segH1|decOut_n[6]~54_combout\);

-- Location: LCCOMB_X82_Y10_N24
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = min(5) $ (VCC)
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(min(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(5),
	datad => VCC,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X82_Y10_N26
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (min(6) & (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!min(6) & 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!min(6) & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(6),
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X82_Y10_N28
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (min(7) & (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!min(7) & 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((min(7) & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(7),
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X82_Y10_N30
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X82_Y10_N2
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\);

-- Location: LCCOMB_X82_Y10_N4
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\ = (min(7) & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min(7),
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\);

-- Location: LCCOMB_X83_Y10_N4
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X82_Y10_N0
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\ = (min(6) & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(6),
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\);

-- Location: LCCOMB_X81_Y10_N16
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\);

-- Location: LCCOMB_X82_Y10_N16
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & min(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => min(5),
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X82_Y10_N22
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & min(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => min(4),
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\);

-- Location: LCCOMB_X82_Y10_N20
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & min(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => min(4),
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\);

-- Location: LCCOMB_X82_Y10_N6
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\) # (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\) # (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X82_Y10_N8
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ & 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X82_Y10_N10
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\)))))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X82_Y10_N12
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ & 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\ & 
-- !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X82_Y10_N14
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X81_Y10_N26
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\);

-- Location: LCCOMB_X81_Y10_N24
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (min(7))) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(7),
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\);

-- Location: LCCOMB_X81_Y10_N12
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\);

-- Location: LCCOMB_X82_Y10_N18
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (min(6))) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(6),
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\);

-- Location: LCCOMB_X81_Y10_N30
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\);

-- Location: LCCOMB_X81_Y10_N18
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (min(5))) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(5),
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\);

-- Location: LCCOMB_X79_Y10_N12
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ = (min(4) & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min(4),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\);

-- Location: LCCOMB_X79_Y10_N26
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X79_Y10_N24
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\ = (min(3) & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min(3),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X79_Y10_N6
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\ = (min(3) & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min(3),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\);

-- Location: LCCOMB_X81_Y10_N0
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\) # (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\) # (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X81_Y10_N2
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ & 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ & 
-- !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X81_Y10_N4
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\)))))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X81_Y10_N6
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ & 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\ & 
-- !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X81_Y10_N8
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\))))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\) # 
-- ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # (GND))))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\) # ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X81_Y10_N10
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X81_Y10_N20
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- ((!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\);

-- Location: LCCOMB_X80_Y10_N0
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\);

-- Location: LCCOMB_X79_Y10_N0
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\);

-- Location: LCCOMB_X81_Y10_N14
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\) # 
-- ((!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\);

-- Location: LCCOMB_X80_Y10_N30
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\);

-- Location: LCCOMB_X81_Y10_N28
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- ((!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\);

-- Location: LCCOMB_X79_Y10_N14
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (min(4))) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => min(4),
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\);

-- Location: LCCOMB_X80_Y10_N8
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\);

-- Location: LCCOMB_X80_Y10_N6
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\);

-- Location: LCCOMB_X79_Y10_N22
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ = (min(3) & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min(3),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\);

-- Location: LCCOMB_X79_Y10_N16
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\ = (min(2) & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min(2),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\);

-- Location: LCCOMB_X79_Y10_N30
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\ = (min(2) & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min(2),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\);

-- Location: LCCOMB_X80_Y10_N14
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\) # (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\) # (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X80_Y10_N16
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ & 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ & 
-- !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X80_Y10_N18
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\)))))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X80_Y10_N20
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ & 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\ & 
-- !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X80_Y10_N22
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\))))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # (GND))))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\) # ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X80_Y10_N24
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ & 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\ & 
-- !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X80_Y10_N26
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X79_Y8_N16
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~80_combout\ = (min(1) & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min(1),
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~80_combout\);

-- Location: LCCOMB_X80_Y8_N2
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~81_combout\ = (min(1) & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(1),
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~81_combout\);

-- Location: LCCOMB_X80_Y8_N8
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~80_combout\) # (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~81_combout\)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~80_combout\) # (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~80_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~81_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X81_Y10_N22
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\) # 
-- ((!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\);

-- Location: LCCOMB_X80_Y10_N28
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~82_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~82_combout\);

-- Location: LCCOMB_X80_Y10_N4
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- ((!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\);

-- Location: LCCOMB_X80_Y8_N0
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~83_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~83_combout\);

-- Location: LCCOMB_X80_Y10_N12
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\) # 
-- ((!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\);

-- Location: LCCOMB_X80_Y10_N2
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~84_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~84_combout\);

-- Location: LCCOMB_X79_Y10_N8
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~85_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~85_combout\);

-- Location: LCCOMB_X80_Y10_N10
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- ((!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\);

-- Location: LCCOMB_X79_Y10_N28
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((min(3)))) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => min(3),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\);

-- Location: LCCOMB_X80_Y8_N24
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~77_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~77_combout\);

-- Location: LCCOMB_X80_Y8_N6
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~78_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & min(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => min(2),
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~78_combout\);

-- Location: LCCOMB_X80_Y8_N4
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~79_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~79_combout\);

-- Location: LCCOMB_X80_Y8_N10
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~78_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~79_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~78_combout\ & 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~79_combout\)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~78_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~79_combout\ & 
-- !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~78_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~79_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X80_Y8_N12
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~77_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~77_combout\)))))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~77_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X80_Y8_N14
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~85_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\ & 
-- !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~85_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X80_Y8_N16
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\) # ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~84_combout\) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~84_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X80_Y8_N18
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~83_combout\ & 
-- !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~83_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X80_Y8_N20
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\) # ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~82_combout\) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~82_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X80_Y8_N22
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X80_Y8_N28
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((min(1)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => min(1),
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\);

-- Location: LCCOMB_X80_Y8_N30
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~88_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~79_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~78_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~79_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~78_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~88_combout\);

-- Location: LCCOMB_X80_Y8_N26
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~86_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~77_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~77_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~86_combout\);

-- Location: LCCOMB_X80_Y4_N28
\b7segL1|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL1|decOut_n[0]~0_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~88_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ & (min(0) $ 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~86_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~88_combout\ & (min(0) & (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ $ 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~88_combout\,
	datac => min(0),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~86_combout\,
	combout => \b7segL1|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X80_Y4_N10
\b7segL1|decOut_n[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL1|decOut_n[1]~1_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ & ((min(0) & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~86_combout\))) # (!min(0) & 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~88_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~88_combout\ & (min(0) $ 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~88_combout\,
	datac => min(0),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~86_combout\,
	combout => \b7segL1|decOut_n[1]~1_combout\);

-- Location: LCCOMB_X80_Y4_N16
\b7segL1|decOut_n[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL1|decOut_n[2]~2_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~88_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~86_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\) # 
-- (!min(0))))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~88_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ & (!min(0) & !\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~88_combout\,
	datac => min(0),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~86_combout\,
	combout => \b7segL1|decOut_n[2]~2_combout\);

-- Location: LCCOMB_X80_Y4_N22
\b7segL1|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL1|decOut_n[3]~3_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~88_combout\ & (min(0))) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~88_combout\ & (!min(0) & \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~86_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ & 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~86_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~88_combout\ $ (min(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~88_combout\,
	datac => min(0),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~86_combout\,
	combout => \b7segL1|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X80_Y4_N24
\b7segL1|decOut_n[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL1|decOut_n[4]~4_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ & (((min(0) & !\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~86_combout\)))) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~88_combout\ & ((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~86_combout\))) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~88_combout\ & (min(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~88_combout\,
	datac => min(0),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~86_combout\,
	combout => \b7segL1|decOut_n[4]~4_combout\);

-- Location: LCCOMB_X80_Y4_N6
\b7segL1|decOut_n[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL1|decOut_n[5]~5_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~86_combout\ & ((min(0)) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~88_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ & (min(0) & (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~88_combout\ $ 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~88_combout\,
	datac => min(0),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~86_combout\,
	combout => \b7segL1|decOut_n[5]~5_combout\);

-- Location: LCCOMB_X80_Y4_N12
\b7segL1|decOut_n[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL1|decOut_n[6]~6_combout\ = (min(0) & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~86_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ $ 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~88_combout\)))) # (!min(0) & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~88_combout\ $ 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~88_combout\,
	datac => min(0),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~86_combout\,
	combout => \b7segL1|decOut_n[6]~6_combout\);

-- Location: LCCOMB_X91_Y8_N0
\b7segH|decOut_n[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[0]~14_combout\ = (sec(3)) # ((sec(2)) # (sec(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec(3),
	datac => sec(2),
	datad => sec(1),
	combout => \b7segH|decOut_n[0]~14_combout\);

-- Location: LCCOMB_X91_Y8_N10
\b7segH|decOut_n[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[0]~15_combout\ = (sec(5) & ((sec(6) & (!sec(3))) # (!sec(6) & ((!\b7segH|decOut_n[0]~14_combout\))))) # (!sec(5) & (sec(6) & ((!\b7segH|decOut_n[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(5),
	datab => sec(6),
	datac => sec(3),
	datad => \b7segH|decOut_n[0]~14_combout\,
	combout => \b7segH|decOut_n[0]~15_combout\);

-- Location: LCCOMB_X91_Y8_N20
\b7segH|decOut_n[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[0]~16_combout\ = (sec(5) & (((sec(1) & sec(2))) # (!sec(6)))) # (!sec(5) & (((sec(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(5),
	datab => sec(1),
	datac => sec(2),
	datad => sec(6),
	combout => \b7segH|decOut_n[0]~16_combout\);

-- Location: LCCOMB_X91_Y8_N14
\b7segH|decOut_n[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[0]~17_combout\ = (sec(4) & (\b7segH|decOut_n[0]~15_combout\)) # (!sec(4) & (((sec(3) & \b7segH|decOut_n[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH|decOut_n[0]~15_combout\,
	datab => sec(3),
	datac => sec(4),
	datad => \b7segH|decOut_n[0]~16_combout\,
	combout => \b7segH|decOut_n[0]~17_combout\);

-- Location: LCCOMB_X91_Y8_N12
\b7segH|decOut_n[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[0]~11_combout\ = (sec(5) & ((sec(7) & (!sec(4) & !sec(6))) # (!sec(7) & (sec(4) & sec(6))))) # (!sec(5) & (!sec(6) & ((sec(7)) # (!sec(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(5),
	datab => sec(7),
	datac => sec(4),
	datad => sec(6),
	combout => \b7segH|decOut_n[0]~11_combout\);

-- Location: LCCOMB_X91_Y8_N18
\b7segH|decOut_n[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[0]~10_combout\ = (sec(4) & (!sec(3) & (!sec(2)))) # (!sec(4) & (sec(3) & ((sec(2)) # (sec(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(4),
	datab => sec(3),
	datac => sec(2),
	datad => sec(1),
	combout => \b7segH|decOut_n[0]~10_combout\);

-- Location: LCCOMB_X88_Y10_N24
\b7segH|decOut_n[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[1]~9_combout\ = (!sec(6) & (sec(7) $ (!sec(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec(7),
	datac => sec(5),
	datad => sec(6),
	combout => \b7segH|decOut_n[1]~9_combout\);

-- Location: LCCOMB_X90_Y10_N24
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = sec(5) $ (VCC)
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(sec(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec(5),
	datad => VCC,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X90_Y10_N26
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (sec(6) & (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!sec(6) & 
-- (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!sec(6) & !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(6),
	datad => VCC,
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X90_Y10_N28
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (sec(7) & (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!sec(7) & 
-- (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((sec(7) & !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(7),
	datad => VCC,
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X90_Y10_N30
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X91_Y10_N4
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ = (sec(7) & \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec(7),
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X90_Y10_N8
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[18]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ = (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X90_Y10_N6
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\ = (sec(6) & \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec(6),
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X90_Y10_N4
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X90_Y10_N10
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ = (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X91_Y10_N10
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ = (sec(5) & \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(5),
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X91_Y10_N2
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ = (sec(4) & !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec(4),
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X91_Y10_N24
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[15]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\ = (sec(4) & \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec(4),
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X90_Y10_N14
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\) # (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\)))
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\) # (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datad => VCC,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X90_Y10_N16
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\) # 
-- (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\)))) # (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ & 
-- (!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\)))
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ & (!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datad => VCC,
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X90_Y10_N18
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\)))) # (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\)))))
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datad => VCC,
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X90_Y10_N20
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ & (!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ & 
-- !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datad => VCC,
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X90_Y10_N22
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X90_Y10_N2
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[23]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((sec(6)))) # 
-- (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => sec(6),
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X90_Y10_N12
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[23]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ = (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X89_Y8_N24
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X90_Y10_N0
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (sec(5))) # 
-- (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => sec(5),
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X89_Y8_N26
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ = (sec(4) & \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec(4),
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X89_Y8_N20
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X89_Y8_N22
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[20]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ = (sec(3) & !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec(3),
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X89_Y8_N4
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[20]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\ = (sec(3) & \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec(3),
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X89_Y8_N6
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\) # (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\)))
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\) # (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datad => VCC,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X89_Y8_N8
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\) # 
-- (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\)))) # (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- (!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\)))
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ & (!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datad => VCC,
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X89_Y8_N10
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\)))) # (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\)))))
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => VCC,
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X89_Y8_N12
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ & (!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ & 
-- !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datad => VCC,
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X89_Y8_N14
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X89_Y8_N30
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (sec(4))) # 
-- (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => sec(4),
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\);

-- Location: LCCOMB_X89_Y8_N16
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[28]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ = (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X89_Y8_N18
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[28]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- ((\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\);

-- Location: LCCOMB_X89_Y8_N2
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X89_Y8_N0
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ = (sec(3) & \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(3),
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X90_Y8_N0
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X91_Y8_N4
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[25]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & sec(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => sec(2),
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X91_Y8_N22
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ = (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & sec(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => sec(2),
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X90_Y8_N14
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\) # (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\)))
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\) # (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datad => VCC,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X90_Y8_N16
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\) # 
-- (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\)))) # (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ & 
-- (!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\)))
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ & (!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datad => VCC,
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X90_Y8_N18
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\) # 
-- (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\)))) # (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\) # 
-- (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\)))))
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\) # 
-- (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datad => VCC,
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X90_Y8_N20
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ & (!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\ & 
-- !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\,
	datad => VCC,
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X90_Y8_N22
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X89_Y8_N28
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[33]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- ((\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X91_Y8_N16
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[33]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X90_Y8_N26
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((sec(3)))) # 
-- (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => sec(3),
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X90_Y8_N24
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[32]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ = (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X91_Y8_N2
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ = (sec(2) & \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec(2),
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X90_Y8_N28
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[31]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\);

-- Location: LCCOMB_X90_Y8_N30
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\ = (sec(1) & \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(1),
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X90_Y8_N12
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[30]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\ = (sec(1) & !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(1),
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\);

-- Location: LCCOMB_X90_Y8_N2
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\) # (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\,
	datad => VCC,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X90_Y8_N4
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ & (!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\ & 
-- !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\,
	datad => VCC,
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X90_Y8_N6
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datad => VCC,
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X90_Y8_N8
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\ & (!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ & 
-- !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datad => VCC,
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X90_Y8_N10
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X91_Y8_N24
\b7segH|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n~8_combout\ = (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \b7segH|decOut_n~8_combout\);

-- Location: LCCOMB_X91_Y8_N6
\b7segH|decOut_n[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[0]~12_combout\ = (\b7segH|decOut_n[0]~11_combout\ & ((\b7segH|decOut_n~8_combout\) # ((\b7segH|decOut_n[0]~10_combout\ & \b7segH|decOut_n[1]~9_combout\)))) # (!\b7segH|decOut_n[0]~11_combout\ & (\b7segH|decOut_n[0]~10_combout\ & 
-- (\b7segH|decOut_n[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH|decOut_n[0]~11_combout\,
	datab => \b7segH|decOut_n[0]~10_combout\,
	datac => \b7segH|decOut_n[1]~9_combout\,
	datad => \b7segH|decOut_n~8_combout\,
	combout => \b7segH|decOut_n[0]~12_combout\);

-- Location: LCCOMB_X91_Y8_N26
\b7segH|decOut_n[0]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[0]~56_combout\ = (\b7segH|decOut_n[0]~12_combout\) # ((\b7segH|decOut_n[0]~17_combout\ & (sec(5) $ (sec(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(5),
	datab => \b7segH|decOut_n[0]~17_combout\,
	datac => sec(7),
	datad => \b7segH|decOut_n[0]~12_combout\,
	combout => \b7segH|decOut_n[0]~56_combout\);

-- Location: LCCOMB_X88_Y10_N10
\b7segH|decOut_n[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[0]~13_combout\ = sec(7) $ (sec(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec(7),
	datac => sec(5),
	combout => \b7segH|decOut_n[0]~13_combout\);

-- Location: LCCOMB_X91_Y10_N30
\b7segH|decOut_n[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[0]~22_combout\ = (!sec(3) & ((!sec(2)) # (!sec(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(3),
	datab => sec(1),
	datac => sec(2),
	combout => \b7segH|decOut_n[0]~22_combout\);

-- Location: LCCOMB_X88_Y10_N16
\b7segH|decOut_n[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[1]~23_combout\ = (!\b7segH|decOut_n[0]~13_combout\ & (sec(6) & (!sec(4) & \b7segH|decOut_n[0]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH|decOut_n[0]~13_combout\,
	datab => sec(6),
	datac => sec(4),
	datad => \b7segH|decOut_n[0]~22_combout\,
	combout => \b7segH|decOut_n[1]~23_combout\);

-- Location: LCCOMB_X88_Y10_N12
\b7segH|decOut_n[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[1]~25_combout\ = (sec(4) & ((sec(3)) # ((sec(2)) # (sec(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(3),
	datab => sec(2),
	datac => sec(4),
	datad => sec(1),
	combout => \b7segH|decOut_n[1]~25_combout\);

-- Location: LCCOMB_X88_Y10_N14
\b7segH|decOut_n[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[1]~24_combout\ = (sec(3) & (sec(2) & (!sec(4) & sec(1)))) # (!sec(3) & (((sec(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(3),
	datab => sec(2),
	datac => sec(4),
	datad => sec(1),
	combout => \b7segH|decOut_n[1]~24_combout\);

-- Location: LCCOMB_X88_Y10_N22
\b7segH|decOut_n[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[1]~26_combout\ = (sec(5) & ((sec(6) & ((\b7segH|decOut_n[1]~24_combout\))) # (!sec(6) & (\b7segH|decOut_n[1]~25_combout\)))) # (!sec(5) & (\b7segH|decOut_n[1]~25_combout\ & ((sec(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH|decOut_n[1]~25_combout\,
	datab => \b7segH|decOut_n[1]~24_combout\,
	datac => sec(5),
	datad => sec(6),
	combout => \b7segH|decOut_n[1]~26_combout\);

-- Location: LCCOMB_X91_Y10_N8
\b7segH|decOut_n[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[6]~20_combout\ = (!sec(4) & (((!sec(2) & !sec(1))) # (!sec(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(4),
	datab => sec(2),
	datac => sec(1),
	datad => sec(3),
	combout => \b7segH|decOut_n[6]~20_combout\);

-- Location: LCCOMB_X91_Y8_N8
\b7segH|decOut_n~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n~18_combout\ = (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \b7segH|decOut_n~18_combout\);

-- Location: LCCOMB_X88_Y10_N28
\b7segH|decOut_n[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[1]~19_combout\ = (sec(7) & (((!sec(5) & !sec(6))))) # (!sec(7) & (sec(4) & (sec(5) & sec(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(4),
	datab => sec(7),
	datac => sec(5),
	datad => sec(6),
	combout => \b7segH|decOut_n[1]~19_combout\);

-- Location: LCCOMB_X88_Y10_N6
\b7segH|decOut_n[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[1]~21_combout\ = (\b7segH|decOut_n~18_combout\ & ((\b7segH|decOut_n[1]~19_combout\) # ((\b7segH|decOut_n[6]~20_combout\ & \b7segH|decOut_n[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH|decOut_n[6]~20_combout\,
	datab => \b7segH|decOut_n[1]~9_combout\,
	datac => \b7segH|decOut_n~18_combout\,
	datad => \b7segH|decOut_n[1]~19_combout\,
	combout => \b7segH|decOut_n[1]~21_combout\);

-- Location: LCCOMB_X88_Y10_N20
\b7segH|decOut_n[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[1]~27_combout\ = (\b7segH|decOut_n[1]~23_combout\) # ((\b7segH|decOut_n[1]~21_combout\) # ((\b7segH|decOut_n[0]~13_combout\ & \b7segH|decOut_n[1]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH|decOut_n[0]~13_combout\,
	datab => \b7segH|decOut_n[1]~23_combout\,
	datac => \b7segH|decOut_n[1]~26_combout\,
	datad => \b7segH|decOut_n[1]~21_combout\,
	combout => \b7segH|decOut_n[1]~27_combout\);

-- Location: LCCOMB_X88_Y10_N18
\b7segH|decOut_n[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[2]~30_combout\ = (sec(4) & ((sec(3) & ((!sec(1)) # (!sec(2)))) # (!sec(3) & (sec(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(3),
	datab => sec(2),
	datac => sec(4),
	datad => sec(1),
	combout => \b7segH|decOut_n[2]~30_combout\);

-- Location: LCCOMB_X88_Y10_N30
\b7segH|decOut_n[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[2]~28_combout\ = (sec(5) & (sec(3) & (sec(4) & sec(6)))) # (!sec(5) & (((!sec(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(3),
	datab => sec(5),
	datac => sec(4),
	datad => sec(6),
	combout => \b7segH|decOut_n[2]~28_combout\);

-- Location: LCCOMB_X88_Y10_N4
\b7segH|decOut_n[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[2]~29_combout\ = (\b7segH|decOut_n[0]~13_combout\ & ((\b7segH|decOut_n[2]~28_combout\) # ((\b7segH|decOut_n[1]~9_combout\ & \b7segH|decOut_n[6]~20_combout\)))) # (!\b7segH|decOut_n[0]~13_combout\ & (\b7segH|decOut_n[1]~9_combout\ & 
-- ((\b7segH|decOut_n[6]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH|decOut_n[0]~13_combout\,
	datab => \b7segH|decOut_n[1]~9_combout\,
	datac => \b7segH|decOut_n[2]~28_combout\,
	datad => \b7segH|decOut_n[6]~20_combout\,
	combout => \b7segH|decOut_n[2]~29_combout\);

-- Location: LCCOMB_X88_Y10_N8
\b7segH|decOut_n[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[2]~31_combout\ = (\b7segH|decOut_n~18_combout\ & ((\b7segH|decOut_n[2]~29_combout\) # ((\b7segH|decOut_n[2]~30_combout\ & \b7segH|decOut_n[1]~9_combout\)))) # (!\b7segH|decOut_n~18_combout\ & (\b7segH|decOut_n[2]~30_combout\ & 
-- ((\b7segH|decOut_n[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH|decOut_n~18_combout\,
	datab => \b7segH|decOut_n[2]~30_combout\,
	datac => \b7segH|decOut_n[2]~29_combout\,
	datad => \b7segH|decOut_n[1]~9_combout\,
	combout => \b7segH|decOut_n[2]~31_combout\);

-- Location: LCCOMB_X91_Y7_N12
\b7segH|decOut_n[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[3]~42_combout\ = (sec(5) & (((!sec(1) & sec(4))))) # (!sec(5) & (!sec(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(7),
	datab => sec(1),
	datac => sec(4),
	datad => sec(5),
	combout => \b7segH|decOut_n[3]~42_combout\);

-- Location: LCCOMB_X91_Y7_N28
\b7segH|decOut_n[0]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[0]~39_combout\ = (!sec(3) & !sec(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(3),
	datac => sec(2),
	combout => \b7segH|decOut_n[0]~39_combout\);

-- Location: LCCOMB_X91_Y7_N22
\b7segH|decOut_n[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[3]~40_combout\ = (sec(2) & (((!sec(4))))) # (!sec(2) & (sec(1) & ((!sec(4)) # (!sec(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(3),
	datab => sec(2),
	datac => sec(4),
	datad => sec(1),
	combout => \b7segH|decOut_n[3]~40_combout\);

-- Location: LCCOMB_X91_Y10_N6
\b7segH|decOut_n[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[3]~41_combout\ = (sec(7) & sec(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec(7),
	datad => sec(5),
	combout => \b7segH|decOut_n[3]~41_combout\);

-- Location: LCCOMB_X91_Y7_N26
\b7segH|decOut_n[3]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[3]~43_combout\ = (\b7segH|decOut_n[3]~42_combout\ & ((\b7segH|decOut_n[0]~39_combout\) # ((\b7segH|decOut_n[3]~40_combout\ & \b7segH|decOut_n[3]~41_combout\)))) # (!\b7segH|decOut_n[3]~42_combout\ & (((\b7segH|decOut_n[3]~40_combout\ & 
-- \b7segH|decOut_n[3]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH|decOut_n[3]~42_combout\,
	datab => \b7segH|decOut_n[0]~39_combout\,
	datac => \b7segH|decOut_n[3]~40_combout\,
	datad => \b7segH|decOut_n[3]~41_combout\,
	combout => \b7segH|decOut_n[3]~43_combout\);

-- Location: LCCOMB_X91_Y8_N30
\b7segH|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|Equal0~0_combout\ = (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \b7segH|Equal0~0_combout\);

-- Location: LCCOMB_X91_Y7_N0
\b7segH|decOut_n[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[3]~32_combout\ = (!sec(3) & (!sec(2) & (sec(4) & !sec(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(3),
	datab => sec(2),
	datac => sec(4),
	datad => sec(1),
	combout => \b7segH|decOut_n[3]~32_combout\);

-- Location: LCCOMB_X91_Y7_N20
\b7segH|decOut_n[3]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[3]~60_combout\ = (sec(3) & (((sec(7)) # (!sec(5))) # (!sec(1)))) # (!sec(3) & ((sec(1) & ((sec(5)) # (!sec(7)))) # (!sec(1) & (!sec(7) & sec(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(3),
	datab => sec(1),
	datac => sec(7),
	datad => sec(5),
	combout => \b7segH|decOut_n[3]~60_combout\);

-- Location: LCCOMB_X91_Y7_N18
\b7segH|decOut_n[3]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[3]~61_combout\ = (!sec(4) & ((sec(2) & ((\b7segH|decOut_n[3]~60_combout\))) # (!sec(2) & (sec(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(3),
	datab => sec(2),
	datac => sec(4),
	datad => \b7segH|decOut_n[3]~60_combout\,
	combout => \b7segH|decOut_n[3]~61_combout\);

-- Location: LCCOMB_X91_Y7_N14
\b7segH|decOut_n[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[3]~33_combout\ = (\b7segH|decOut_n[3]~61_combout\) # ((!sec(5) & (\b7segH|decOut_n[3]~32_combout\ & sec(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(5),
	datab => \b7segH|decOut_n[3]~32_combout\,
	datac => sec(7),
	datad => \b7segH|decOut_n[3]~61_combout\,
	combout => \b7segH|decOut_n[3]~33_combout\);

-- Location: LCCOMB_X91_Y10_N20
\b7segH|decOut_n[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[3]~34_combout\ = (sec(3) & ((sec(1)) # ((sec(2)) # (!sec(5))))) # (!sec(3) & (sec(1) & (sec(2) & !sec(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(3),
	datab => sec(1),
	datac => sec(2),
	datad => sec(5),
	combout => \b7segH|decOut_n[3]~34_combout\);

-- Location: LCCOMB_X91_Y10_N18
\b7segH|decOut_n[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[3]~35_combout\ = (sec(7) & ((\b7segH|decOut_n[3]~34_combout\ & (sec(4) & !sec(5))) # (!\b7segH|decOut_n[3]~34_combout\ & (!sec(4) & sec(5))))) # (!sec(7) & (((sec(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(7),
	datab => \b7segH|decOut_n[3]~34_combout\,
	datac => sec(4),
	datad => sec(5),
	combout => \b7segH|decOut_n[3]~35_combout\);

-- Location: LCCOMB_X91_Y10_N16
\b7segH|decOut_n[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[3]~36_combout\ = (sec(6)) # ((sec(7) & (\b7segH|decOut_n[3]~35_combout\)) # (!sec(7) & (!\b7segH|decOut_n[3]~35_combout\ & \b7segH|decOut_n[6]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(7),
	datab => \b7segH|decOut_n[3]~35_combout\,
	datac => \b7segH|decOut_n[6]~20_combout\,
	datad => sec(6),
	combout => \b7segH|decOut_n[3]~36_combout\);

-- Location: LCCOMB_X91_Y7_N16
\b7segH|decOut_n[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[3]~37_combout\ = (sec(6) & (((\b7segH|decOut_n[3]~33_combout\)))) # (!sec(6) & (\b7segH|Equal0~0_combout\ & ((\b7segH|decOut_n[3]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH|Equal0~0_combout\,
	datab => sec(6),
	datac => \b7segH|decOut_n[3]~33_combout\,
	datad => \b7segH|decOut_n[3]~36_combout\,
	combout => \b7segH|decOut_n[3]~37_combout\);

-- Location: LCCOMB_X91_Y7_N30
\b7segH|decOut_n[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[3]~38_combout\ = (!sec(7) & (!sec(4) & ((sec(3)) # (!sec(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(7),
	datab => sec(4),
	datac => sec(3),
	datad => sec(5),
	combout => \b7segH|decOut_n[3]~38_combout\);

-- Location: LCCOMB_X91_Y7_N4
\b7segH|decOut_n[3]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[3]~44_combout\ = (\b7segH|decOut_n[3]~37_combout\) # ((!\b7segH|decOut_n[3]~36_combout\ & ((\b7segH|decOut_n[3]~43_combout\) # (\b7segH|decOut_n[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH|decOut_n[3]~43_combout\,
	datab => \b7segH|decOut_n[3]~37_combout\,
	datac => \b7segH|decOut_n[3]~38_combout\,
	datad => \b7segH|decOut_n[3]~36_combout\,
	combout => \b7segH|decOut_n[3]~44_combout\);

-- Location: LCCOMB_X91_Y8_N28
\b7segH|decOut_n[4]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[4]~45_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))) # (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ 
-- & ((\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \b7segH|decOut_n[4]~45_combout\);

-- Location: LCCOMB_X91_Y10_N14
\b7segH|decOut_n[5]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[5]~49_combout\ = (sec(6) & (!sec(4) & ((!\b7segH|decOut_n[0]~22_combout\)))) # (!sec(6) & (((!\b7segH|decOut_n[6]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(4),
	datab => \b7segH|decOut_n[6]~20_combout\,
	datac => \b7segH|decOut_n[0]~22_combout\,
	datad => sec(6),
	combout => \b7segH|decOut_n[5]~49_combout\);

-- Location: LCCOMB_X91_Y10_N22
\b7segH|decOut_n[5]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[5]~47_combout\ = (!sec(3) & ((sec(5) & (!sec(7) & !sec(6))) # (!sec(5) & (sec(7) & sec(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(5),
	datab => sec(3),
	datac => sec(7),
	datad => sec(6),
	combout => \b7segH|decOut_n[5]~47_combout\);

-- Location: LCCOMB_X91_Y10_N28
\b7segH|decOut_n[2]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[2]~46_combout\ = (sec(5) & (sec(3) & (sec(4) & sec(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(5),
	datab => sec(3),
	datac => sec(4),
	datad => sec(6),
	combout => \b7segH|decOut_n[2]~46_combout\);

-- Location: LCCOMB_X91_Y10_N0
\b7segH|decOut_n[5]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[5]~57_combout\ = (sec(5) & ((sec(7) & ((!sec(6)))) # (!sec(7) & (\b7segH|decOut_n[2]~46_combout\)))) # (!sec(5) & (((\b7segH|decOut_n[2]~46_combout\ & sec(7))) # (!sec(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(5),
	datab => \b7segH|decOut_n[2]~46_combout\,
	datac => sec(7),
	datad => sec(6),
	combout => \b7segH|decOut_n[5]~57_combout\);

-- Location: LCCOMB_X91_Y10_N12
\b7segH|decOut_n[5]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[5]~48_combout\ = (\b7segH|decOut_n[5]~47_combout\ & (((\b7segH|decOut_n~8_combout\ & \b7segH|decOut_n[5]~57_combout\)) # (!sec(4)))) # (!\b7segH|decOut_n[5]~47_combout\ & (\b7segH|decOut_n~8_combout\ & 
-- ((\b7segH|decOut_n[5]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH|decOut_n[5]~47_combout\,
	datab => \b7segH|decOut_n~8_combout\,
	datac => sec(4),
	datad => \b7segH|decOut_n[5]~57_combout\,
	combout => \b7segH|decOut_n[5]~48_combout\);

-- Location: LCCOMB_X91_Y10_N26
\b7segH|decOut_n[5]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[5]~58_combout\ = (\b7segH|decOut_n[5]~48_combout\) # ((\b7segH|decOut_n[5]~49_combout\ & (sec(5) $ (!sec(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(5),
	datab => \b7segH|decOut_n[5]~49_combout\,
	datac => sec(7),
	datad => \b7segH|decOut_n[5]~48_combout\,
	combout => \b7segH|decOut_n[5]~58_combout\);

-- Location: LCCOMB_X91_Y7_N24
\b7segH|decOut_n[6]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[6]~53_combout\ = sec(5) $ (((sec(7) & ((sec(1)) # (sec(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(7),
	datab => sec(1),
	datac => sec(4),
	datad => sec(5),
	combout => \b7segH|decOut_n[6]~53_combout\);

-- Location: LCCOMB_X91_Y7_N2
\b7segH|decOut_n[6]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[6]~52_combout\ = (sec(4) & (sec(7) $ (((!sec(5)))))) # (!sec(4) & (sec(7) & (!sec(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(7),
	datab => sec(1),
	datac => sec(4),
	datad => sec(5),
	combout => \b7segH|decOut_n[6]~52_combout\);

-- Location: LCCOMB_X91_Y7_N6
\b7segH|decOut_n[6]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[6]~59_combout\ = (\b7segH|decOut_n[6]~52_combout\ & ((sec(2) & ((\b7segH|decOut_n[6]~53_combout\))) # (!sec(2) & (!sec(3))))) # (!\b7segH|decOut_n[6]~52_combout\ & (((!\b7segH|decOut_n[6]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(3),
	datab => \b7segH|decOut_n[6]~53_combout\,
	datac => sec(2),
	datad => \b7segH|decOut_n[6]~52_combout\,
	combout => \b7segH|decOut_n[6]~59_combout\);

-- Location: LCCOMB_X88_Y10_N26
\b7segH|decOut_n[6]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[6]~51_combout\ = (\b7segH|decOut_n[6]~50_combout\) # ((!\b7segH|decOut_n[0]~13_combout\ & (!sec(4) & !\b7segH|decOut_n[0]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH|decOut_n[0]~13_combout\,
	datab => \b7segH|decOut_n[6]~50_combout\,
	datac => sec(4),
	datad => \b7segH|decOut_n[0]~22_combout\,
	combout => \b7segH|decOut_n[6]~51_combout\);

-- Location: LCCOMB_X91_Y7_N10
\b7segH|decOut_n[6]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[6]~54_combout\ = (\b7segH|decOut_n[6]~59_combout\ & (((sec(6) & \b7segH|decOut_n[6]~51_combout\)) # (!\b7segH|decOut_n[3]~36_combout\))) # (!\b7segH|decOut_n[6]~59_combout\ & (sec(6) & (\b7segH|decOut_n[6]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH|decOut_n[6]~59_combout\,
	datab => sec(6),
	datac => \b7segH|decOut_n[6]~51_combout\,
	datad => \b7segH|decOut_n[3]~36_combout\,
	combout => \b7segH|decOut_n[6]~54_combout\);

-- Location: LCCOMB_X91_Y7_N8
\b7segH|decOut_n[6]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[6]~55_combout\ = (\b7segH|decOut_n[6]~54_combout\) # ((!sec(6) & (!\b7segH|Equal0~0_combout\ & \b7segH|decOut_n[3]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH|decOut_n[6]~54_combout\,
	datab => sec(6),
	datac => \b7segH|Equal0~0_combout\,
	datad => \b7segH|decOut_n[3]~36_combout\,
	combout => \b7segH|decOut_n[6]~55_combout\);

-- Location: LCCOMB_X88_Y9_N16
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = sec(5) $ (VCC)
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(sec(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(5),
	datad => VCC,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X88_Y9_N18
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (sec(6) & (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!sec(6) & 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!sec(6) & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(6),
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X88_Y9_N20
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (sec(7) & (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!sec(7) & 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((sec(7) & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(7),
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X88_Y9_N22
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X88_Y8_N6
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ = (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\);

-- Location: LCCOMB_X88_Y8_N12
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ = (sec(7) & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec(7),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\);

-- Location: LCCOMB_X88_Y8_N22
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\ = (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X88_Y8_N24
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\ = (sec(6) & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec(6),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\);

-- Location: LCCOMB_X88_Y8_N14
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\);

-- Location: LCCOMB_X88_Y8_N28
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & sec(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => sec(5),
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X88_Y8_N10
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[24]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\ = (sec(4) & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec(4),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\);

-- Location: LCCOMB_X88_Y8_N8
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[24]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\ = (sec(4) & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec(4),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\);

-- Location: LCCOMB_X87_Y8_N22
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\) # (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\) # (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X87_Y8_N24
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ & 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X87_Y8_N26
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\)))))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X87_Y8_N28
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ & 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ & 
-- !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X87_Y8_N30
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X87_Y8_N0
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ = (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\);

-- Location: LCCOMB_X88_Y8_N16
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (sec(7))) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => sec(7),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\);

-- Location: LCCOMB_X88_Y8_N2
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (sec(6))) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => sec(6),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\);

-- Location: LCCOMB_X87_Y8_N18
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ = (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\);

-- Location: LCCOMB_X88_Y8_N20
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((sec(5)))) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => sec(5),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\);

-- Location: LCCOMB_X87_Y8_N16
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\ = (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\);

-- Location: LCCOMB_X88_Y8_N4
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ = (sec(4) & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec(4),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\);

-- Location: LCCOMB_X87_Y8_N2
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X87_Y7_N0
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & sec(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => sec(3),
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X87_Y8_N20
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[32]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\ = (sec(3) & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec(3),
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\);

-- Location: LCCOMB_X87_Y8_N4
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X87_Y8_N6
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ & 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ & 
-- !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X87_Y8_N8
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\)))))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X87_Y8_N10
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\ & 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ & 
-- !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X87_Y8_N12
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\))))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\) # 
-- ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\) # (GND))))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\) # ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X87_Y8_N14
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X88_Y7_N28
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\ = (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\);

-- Location: LCCOMB_X88_Y8_N26
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- ((!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\);

-- Location: LCCOMB_X88_Y7_N30
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\ = (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\);

-- Location: LCCOMB_X88_Y8_N0
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\) # 
-- ((!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\);

-- Location: LCCOMB_X88_Y8_N30
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- ((\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\);

-- Location: LCCOMB_X88_Y7_N4
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\);

-- Location: LCCOMB_X87_Y7_N14
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\);

-- Location: LCCOMB_X87_Y7_N6
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((sec(4)))) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => sec(4),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\);

-- Location: LCCOMB_X87_Y7_N16
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & sec(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => sec(3),
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\);

-- Location: LCCOMB_X87_Y7_N30
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\);

-- Location: LCCOMB_X89_Y7_N2
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\ = (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & sec(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => sec(2),
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\);

-- Location: LCCOMB_X89_Y7_N28
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & sec(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => sec(2),
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\);

-- Location: LCCOMB_X88_Y7_N10
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\) # (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\) # (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X88_Y7_N12
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ & 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ & 
-- !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X88_Y7_N14
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\)))))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X88_Y7_N16
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\ & 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ & 
-- !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X88_Y7_N18
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\))))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\) # (GND))))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\) # ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X88_Y7_N20
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\ & 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\ & 
-- !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X88_Y7_N22
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X87_Y7_N24
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((sec(3)))) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => sec(3),
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\);

-- Location: LCCOMB_X88_Y7_N0
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~82_combout\ = (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~82_combout\);

-- Location: LCCOMB_X88_Y7_N6
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\) # 
-- ((!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\);

-- Location: LCCOMB_X88_Y7_N8
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- ((!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\);

-- Location: LCCOMB_X89_Y7_N20
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~83_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~83_combout\);

-- Location: LCCOMB_X88_Y7_N26
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\) # 
-- ((!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\);

-- Location: LCCOMB_X88_Y7_N24
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~84_combout\ = (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~84_combout\);

-- Location: LCCOMB_X89_Y7_N26
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~85_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~85_combout\);

-- Location: LCCOMB_X87_Y7_N12
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- ((!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\);

-- Location: LCCOMB_X88_Y7_N2
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~77_combout\ = (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~77_combout\);

-- Location: LCCOMB_X89_Y7_N22
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~79_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~79_combout\);

-- Location: LCCOMB_X89_Y7_N0
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~78_combout\ = (sec(2) & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec(2),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~78_combout\);

-- Location: LCCOMB_X90_Y7_N4
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~80_combout\ = (sec(1) & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(1),
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~80_combout\);

-- Location: LCCOMB_X90_Y7_N22
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~81_combout\ = (sec(1) & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(1),
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~81_combout\);

-- Location: LCCOMB_X89_Y7_N4
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~80_combout\) # (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~81_combout\)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~80_combout\) # (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~80_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~81_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X89_Y7_N6
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~79_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~78_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~79_combout\ & 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~78_combout\)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~79_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~78_combout\ & 
-- !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~79_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~78_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X89_Y7_N8
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~77_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~77_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\)))))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~77_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~77_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X89_Y7_N10
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~85_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\ & 
-- !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~85_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X89_Y7_N12
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\) # ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~84_combout\) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~84_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X89_Y7_N14
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~83_combout\ & 
-- !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~83_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X89_Y7_N16
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~82_combout\) # ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~82_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X89_Y7_N18
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X89_Y7_N24
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~86_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~77_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~77_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~86_combout\);

-- Location: LCCOMB_X89_Y7_N30
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~88_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~78_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~79_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~78_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~79_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~88_combout\);

-- Location: LCCOMB_X90_Y7_N24
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~87_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (sec(1))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(1),
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~87_combout\);

-- Location: LCCOMB_X114_Y18_N28
\b7segL|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL|decOut_n[0]~0_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~86_combout\ & (sec(0) & (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~88_combout\ $ 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~87_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~86_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~87_combout\ & (sec(0) $ 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~86_combout\,
	datab => sec(0),
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~88_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~87_combout\,
	combout => \b7segL|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X114_Y18_N30
\b7segL|decOut_n[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL|decOut_n[1]~1_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~86_combout\ & ((sec(0) & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~87_combout\))) # (!sec(0) & 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~88_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~86_combout\ & (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~88_combout\ & (sec(0) $ 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~86_combout\,
	datab => sec(0),
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~88_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~87_combout\,
	combout => \b7segL|decOut_n[1]~1_combout\);

-- Location: LCCOMB_X114_Y18_N0
\b7segL|decOut_n[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL|decOut_n[2]~2_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~86_combout\ & (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~88_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~87_combout\) # 
-- (!sec(0))))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~86_combout\ & (!sec(0) & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~88_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~86_combout\,
	datab => sec(0),
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~88_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~87_combout\,
	combout => \b7segL|decOut_n[2]~2_combout\);

-- Location: LCCOMB_X114_Y18_N2
\b7segL|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL|decOut_n[3]~3_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~87_combout\ & ((sec(0) & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~88_combout\))) # (!sec(0) & 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~86_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~88_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~87_combout\ & 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~86_combout\ & (sec(0) $ (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~86_combout\,
	datab => sec(0),
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~88_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~87_combout\,
	combout => \b7segL|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X114_Y18_N4
\b7segL|decOut_n[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL|decOut_n[4]~4_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~87_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~86_combout\ & (sec(0)))) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~87_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~88_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~86_combout\)) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~88_combout\ & ((sec(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~86_combout\,
	datab => sec(0),
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~88_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~87_combout\,
	combout => \b7segL|decOut_n[4]~4_combout\);

-- Location: LCCOMB_X114_Y18_N22
\b7segL|decOut_n[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL|decOut_n[5]~5_combout\ = (sec(0) & (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~86_combout\ $ (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~87_combout\) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~88_combout\))))) # (!sec(0) & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~86_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~88_combout\ & 
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~86_combout\,
	datab => sec(0),
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~88_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~87_combout\,
	combout => \b7segL|decOut_n[5]~5_combout\);

-- Location: LCCOMB_X114_Y18_N12
\b7segL|decOut_n[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL|decOut_n[6]~6_combout\ = (sec(0) & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~86_combout\ & (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~88_combout\ $ 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~87_combout\)))) # (!sec(0) & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~87_combout\ & (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~86_combout\ $ 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~86_combout\,
	datab => sec(0),
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~88_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~87_combout\,
	combout => \b7segL|decOut_n[6]~6_combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_HEX7(7) <= \HEX7[7]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX6(7) <= \HEX6[7]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(7) <= \HEX5[7]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(7) <= \HEX4[7]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(7) <= \HEX3[7]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(7) <= \HEX2[7]~output_o\;
END structure;


