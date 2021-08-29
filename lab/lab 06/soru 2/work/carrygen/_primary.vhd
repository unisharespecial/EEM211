library verilog;
use verilog.vl_types.all;
entity carrygen is
    port(
        S               : out    vl_logic;
        ea              : out    vl_logic;
        Pi              : in     vl_logic;
        Gi              : in     vl_logic;
        cout            : in     vl_logic
    );
end carrygen;
