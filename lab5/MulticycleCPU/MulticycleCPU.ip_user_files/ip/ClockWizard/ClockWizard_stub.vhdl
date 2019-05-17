-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Sun May  5 17:39:10 2019
-- Host        : YC-YOGA running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/lyc/Vivado/lab5/MulticycleCPU/MulticycleCPU.srcs/sources_1/ip/ClockWizard/ClockWizard_stub.vhdl
-- Design      : ClockWizard
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ClockWizard is
  Port ( 
    clk_out1 : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end ClockWizard;

architecture stub of ClockWizard is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,clk_in1";
begin
end;
