onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ClockWizard_opt

do {wave.do}

view wave
view structure
view signals

do {ClockWizard.udo}

run -all

quit -force
