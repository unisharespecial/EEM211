library verilog;
use verilog.vl_types.all;
entity invgate is
    port(
        y               : out    vl_logic;
        a               : in     vl_logic
    );
end invgate;
