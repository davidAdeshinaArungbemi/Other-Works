entity dec_2x4 is
    Port (
        I : in  bit_vector (1 downto 0);
        O : out  bit_vector (3 downto 0)
    );
end dec_2x4;

architecture Behavioural of dec_2x4 is
begin
    process(I)
    begin
        case I is
            when "00" =>
                O <= "0001";
            when "01" =>
                O <= "0010";
            when "10" =>
                O <= "0100";
            when "11" =>
                O <= "1000";
            when others =>
                O <= "0000";
        end case;
    end process;
end Behavioural;