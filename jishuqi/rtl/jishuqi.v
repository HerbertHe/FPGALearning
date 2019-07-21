module jishuqi(clk50, rst_n, led_out);
	input clk50, rst_n;       // 时钟50M，低电平复位
	output reg led_out;       // 输出为led
	// 50mhz对应周期是20ns
	reg [24:0] counter;       // 25位，500ms
	always @(posedge clk50 or negedge rst_n)          // 计数进程
		if (rst_n == 1'b0)
			counter <= 25'd0;
		else if (counter == 25'd24_999_999)
		// else if (counter == 25'd24_999)
			counter <=25'd0;
		else
			counter <= counter + 1'b1;
	
	always @(posedge clk50 or negedge rst_n)          // 输出进程
		if (rst_n == 1'b0)
			led_out <= 1'b1;
		else if (counter == 25'd24_999_999)
		// else if (counter == 25'd24_999)                // 计数满
			led_out <= ~led_out;
		else
			led_out <= led_out;
endmodule