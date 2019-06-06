onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ClockingWizrad_0_opt

do {wave.do}

view wave
view structure
view signals

do {ClockingWizrad_0.udo}

run -all

quit -force
