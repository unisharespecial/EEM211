library verilog;
use verilog.vl_types.all;
entity halfadder is
    port(
        S               : out    vl_logic;
        C               : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic
    );
end halfadder;
