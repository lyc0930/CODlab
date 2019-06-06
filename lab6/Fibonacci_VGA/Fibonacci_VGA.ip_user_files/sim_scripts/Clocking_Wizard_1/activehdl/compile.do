vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Fibonacci_VGA.srcs/sources_1/ip/Clocking_Wizard_1" \
"/opt/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"/opt/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Fibonacci_VGA.srcs/sources_1/ip/Clocking_Wizard_1" \
"../../../../Fibonacci_VGA.srcs/sources_1/ip/Clocking_Wizard_1/Clocking_Wizard_1_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

