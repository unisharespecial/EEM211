library verilog;
use verilog.vl_types.all;
entity fadderstr is
    port(
        s               : out    vl_logic;
        co              : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic
    );
end fadderstr;
