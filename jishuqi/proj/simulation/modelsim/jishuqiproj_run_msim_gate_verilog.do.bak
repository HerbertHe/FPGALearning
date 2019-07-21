transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {jishuqiproj_8_1200mv_85c_slow.vo}

vlog -vlog01compat -work work +incdir+D:/FPGACode/FPGALearning/jishuqi/proj/../testbench {D:/FPGACode/FPGALearning/jishuqi/proj/../testbench/jishuqi_tb.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  jishuqi_tb

add wave *
view structure
view signals
run -all
