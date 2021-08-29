library verilog;
use verilog.vl_types.all;
entity sema02 is
    port(
        mclk            : in     vl_logic;
        Q               : out    vl_logic_vector(3 downto 0)
    );
end sema02;
