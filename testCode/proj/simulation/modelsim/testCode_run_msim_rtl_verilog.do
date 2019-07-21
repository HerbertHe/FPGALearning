transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/FPGACode/testCode/rtl {D:/FPGACode/testCode/rtl/testCode.v}

vlog -vlog01compat -work work +incdir+D:/FPGACode/testCode/proj/../testbench {D:/FPGACode/testCode/proj/../testbench/testCode_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  testCode_tb

add wave *
view structure
view signals
run -all
