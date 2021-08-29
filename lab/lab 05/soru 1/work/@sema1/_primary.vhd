library verilog;
use verilog.vl_types.all;
entity Sema1 is
    port(
        SW0             : in     vl_logic;
        SW1             : in     vl_logic;
        SW2             : in     vl_logic;
        SW3             : in     vl_logic;
        LD0             : out    vl_logic
    );
end Sema1;
