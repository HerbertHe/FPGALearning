`timescale 1ns/1ps      // 仿真精度，1ns的仿真步进，1ps精度

module testCode_tb;   	// _tb仿真testCode
	
	reg signal_a, signal_b, signal_c; // 定义激励信号源
	wire led;                         // 观测信号
	
	// 例化待测试模块
	testCode testCode0(
		.a(signal_a),                  // 映射信号源
		.b(signal_b), 
		.key_in(signal_c), 
		.led_out(led)
	);
	// testCode testCode1(a, b, key_in, led_out);
	
	initial
		begin
			signal_a = 0;signal_b = 0;signal_c = 0;
			#100;signal_a = 0;signal_b = 0;signal_c = 0;
			#100;signal_a = 0;signal_b = 0;signal_c = 1;
			#100;signal_a = 0;signal_b = 1;signal_c = 0;
			#100;signal_a = 0;signal_b = 1;signal_c = 1;
			#100;signal_a = 1;signal_b = 0;signal_c = 0;
			#100;signal_a = 1;signal_b = 0;signal_c = 1;
			#100;signal_a = 1;signal_b = 1;signal_c = 0;
			#100;signal_a = 1;signal_b = 1;signal_c = 1;
			#200;
			$stop;  // 系统函数停止仿真
		end
endmodule

