onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib cadc_system_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {cadc_system.udo}

run 1000ns

quit -force
