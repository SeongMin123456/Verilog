library verilog;
use verilog.vl_types.all;
entity sine_sum_unsigned is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        delta_a         : in     vl_logic_vector(11 downto 0);
        delta_b         : in     vl_logic_vector(11 downto 0);
        sind_sum        : out    vl_logic_vector(12 downto 0)
    );
end sine_sum_unsigned;
