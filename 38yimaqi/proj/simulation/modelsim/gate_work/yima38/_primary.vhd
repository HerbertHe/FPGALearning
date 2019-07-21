library verilog;
use verilog.vl_types.all;
entity yima38 is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic;
        \out\           : out    vl_logic_vector(7 downto 0)
    );
end yima38;
