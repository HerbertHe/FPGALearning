module testCode(a, b, key_in, led_out);
	input a, b;
	input key_in;
	output led_out;
	
	// key_in == 0, led_out = a;
	assign led_out = (key_in == 0)? a : b;        // 括号里条件判断
	
endmodule