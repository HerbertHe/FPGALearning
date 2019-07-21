library verilog;
use verilog.vl_types.all;
entity testCode is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        key_in          : in     vl_logic;
        led_out         : out    vl_logic
    );
end testCode;
