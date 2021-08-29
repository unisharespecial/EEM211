library verilog;
use verilog.vl_types.all;
entity PGgen is
    port(
        Pi              : out    vl_logic;
        Gi              : out    vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic
    );
end PGgen;
