library verilog;
use verilog.vl_types.all;
entity deny3sema is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic;
        F               : out    vl_logic
    );
end deny3sema;
