library verilog;
use verilog.vl_types.all;
entity jishuqi is
    port(
        clk50           : in     vl_logic;
        rst_n           : in     vl_logic;
        led_out         : out    vl_logic
    );
end jishuqi;
