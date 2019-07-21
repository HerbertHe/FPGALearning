`timescale 1ns/1ns

module yima38_tb;             // 测试模块
	reg signal_a, signal_b, signal_c;
	wire [7:0] signal_out;     // 连线型
	yima38 yima38_0(
		.a(signal_a), 
		.b(signal_b), 
		.c(signal_c), 
		.out(signal_out)
		);
	initial
		begin
			signal_a = 0; signal_b = 0; signal_c = 0;         // 初始化
			#200;
			signal_a = 0; signal_b = 0; signal_c = 1;
			#200;
			signal_a = 0; signal_b = 1; signal_c = 0;
			#200;
			signal_a = 0; signal_b = 1; signal_c = 1;
			#200;
			signal_a = 1; signal_b = 0; signal_c = 0;
			#200;
			signal_a = 1; signal_b = 0; signal_c = 1;
			#200;
			signal_a = 1; signal_b = 1; signal_c = 0;
			#200;
			signal_a = 1; signal_b = 1; signal_c = 1;
			#200;
			$stop;
		end
endmodule