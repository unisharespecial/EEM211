library verilog;
use verilog.vl_types.all;
entity fourbitadder2 is
    port(
        ld0             : out    vl_logic;
        ld1             : out    vl_logic;
        ld2             : out    vl_logic;
        ld3             : out    vl_logic;
        ld4             : out    vl_logic;
        btn0            : in     vl_logic;
        sw0             : in     vl_logic;
        sw4             : in     vl_logic;
        sw1             : in     vl_logic;
        sw5             : in     vl_logic;
        sw2             : in     vl_logic;
        sw6             : in     vl_logic;
        sw3             : in     vl_logic;
        sw7             : in     vl_logic
    );
end fourbitadder2;
