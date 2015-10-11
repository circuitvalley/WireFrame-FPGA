library verilog;
use verilog.vl_types.all;
entity counter is
    generic(
        size            : integer := 33
    );
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        count           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end counter;
