library verilog;
use verilog.vl_types.all;
entity addr_gen is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        pls             : in     vl_logic;
        f_set           : in     vl_logic_vector(15 downto 0);
        addro           : out    vl_logic_vector(11 downto 0)
    );
end addr_gen;
