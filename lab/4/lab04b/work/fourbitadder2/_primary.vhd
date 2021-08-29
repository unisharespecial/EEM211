library verilog;
use verilog.vl_types.all;
entity fourbitadder2 is
    port(
        LD0             : out    vl_logic;
        LD1             : out    vl_logic;
        LD2             : out    vl_logic;
        LD3             : out    vl_logic;
        LD4             : out    vl_logic;
        SW0             : in     vl_logic;
        SW1             : in     vl_logic;
        SW2             : in     vl_logic;
        SW3             : in     vl_logic;
        SW4             : in     vl_logic;
        SW5             : in     vl_logic;
        SW6             : in     vl_logic;
        SW7             : in     vl_logic;
        BTN0            : in     vl_logic
    );
end fourbitadder2;
