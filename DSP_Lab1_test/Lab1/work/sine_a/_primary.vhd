library verilog;
use verilog.vl_types.all;
entity sine_a is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        delta           : in     vl_logic_vector(11 downto 0);
        sind            : out    vl_logic_vector(11 downto 0)
    );
end sine_a;
