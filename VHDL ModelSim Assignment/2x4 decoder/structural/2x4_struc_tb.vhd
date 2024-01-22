library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Decoder_2x4_Structural_tbb is
end Decoder_2x4_Structural_tbb;

architecture tb_architecture of Decoder_2x4_Structural_tbb is
    signal input_vector_tb: bit_vector(1 downto 0);
    signal output_lines_tb: bit_vector(3 downto 0);

    component Decoder_2x4_Structural
        Port (
            input_vector : in bit_vector(1 downto 0);
            output_lines : out bit_vector(3 downto 0)
        );
    end component;

begin
    -- Instantiate the Decoder_2x4_Structural entity
    uut: Decoder_2x4_Structural port map (input_vector_tb, output_lines_tb);

    -- Stimulus process
    stimulus_process: process
    begin
        -- Test case 1
        input_vector_tb <= "00";
        wait for 10 ns;

        -- Test case 2
        input_vector_tb <= "01";
        wait for 10 ns;

        -- Test case 3
        input_vector_tb <= "10";
        wait for 10 ns;

        -- Test case 4
        input_vector_tb <= "11";
        wait for 10 ns;

        wait;
    end process stimulus_process;

end tb_architecture;