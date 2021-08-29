library verilog;
use verilog.vl_types.all;
entity test01 is
    generic(
        PERIOD          : integer := 200;
        DUTY_CYCLE      : real    := 0.500000;
        OFFSET          : integer := 0
    );
end test01;
