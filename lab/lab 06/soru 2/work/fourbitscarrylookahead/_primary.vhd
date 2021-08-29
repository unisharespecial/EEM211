library verilog;
use verilog.vl_types.all;
entity fourbitscarrylookahead is
    port(
        S               : out    vl_logic_vector(3 downto 0);
        cout            : out    vl_logic;
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        cin             : in     vl_logic
    );
end fourbitscarrylookahead;
