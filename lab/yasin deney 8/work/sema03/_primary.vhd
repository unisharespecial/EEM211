library verilog;
use verilog.vl_types.all;
entity sema03 is
    port(
        mclk            : in     vl_logic;
        Q               : out    vl_logic_vector(2 downto 0)
    );
end sema03;
