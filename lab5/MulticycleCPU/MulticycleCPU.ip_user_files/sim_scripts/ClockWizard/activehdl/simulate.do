onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+ClockWizard -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ClockWizard xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {ClockWizard.udo}

run -all

endsim

quit -force
