transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {testCode_8_1200mv_85c_slow.vo}

vlog -vlog01compat -work work +incdir+D:/FPGACode/testCode/proj/../testbench {D:/FPGACode/testCode/proj/../testbench/testCode_tb.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  testCode_tb

add wave *
view structure
view signals
run -all
