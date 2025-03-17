library verilog;
use verilog.vl_types.all;
entity usin_rom is
    port(
        clka            : in     vl_logic;
        rsta            : in     vl_logic;
        addra           : in     vl_logic_vector(11 downto 0);
        douta           : out    vl_logic_vector(11 downto 0)
    );
end usin_rom;
