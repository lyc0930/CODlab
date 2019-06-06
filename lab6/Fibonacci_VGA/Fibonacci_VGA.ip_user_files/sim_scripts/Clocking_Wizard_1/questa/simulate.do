onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Clocking_Wizard_1_opt

do {wave.do}

view wave
view structure
view signals

do {Clocking_Wizard_1.udo}

run -all

quit -force
