library verilog;
use verilog.vl_types.all;
entity tamtoplayici is
    port(
        S               : out    vl_logic;
        C               : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        cin             : in     vl_logic
    );
end tamtoplayici;
