`timescale 1ns/1ns
`define clock_period 20

module jishuqi_tb;
	reg clk;
	reg rst;
	wire led;
	jishuqi jishuqi0(
		.clk50(clk), 
		.rst_n(rst), 
		.led_out(led)
		);
		
		initial clk = 1;
		always #(`clock_period/2) clk = ~clk;
		
		initial
			begin
				rst = 1'b0;
				#(`clock_period * 200);
				rst = 1'b1;
				#2000000000;
				$stop;
			end
		
endmodule