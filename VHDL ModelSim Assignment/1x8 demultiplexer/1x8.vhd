entity demult_1x8 is
    Port ( I : in bit;
           S: in bit_vector(2 downto 0);
           O_0 : out bit;
           O_1 : out bit;
           O_2 : out bit;
           O_3 : out bit;
           O_4 : out bit;
           O_5 : out bit;
           O_6 : out bit;
           O_7 : out bit);
end demult_1x8;

architecture demult_ops of demult_1x8 is
begin
    process(I, S)
    begin
        if S = "000" then
            O_0 <= I;
            O_1 <= '0';
            O_2 <= '0';
            O_3 <= '0';
            O_4 <= '0';
            O_5 <= '0';
            O_6 <= '0';
            O_7 <= '0';
        elsif S = "001" then
            O_0 <= '0';
            O_1 <= I;
            O_2 <= '0';
            O_3 <= '0';
            O_4 <= '0';
            O_5 <= '0';
            O_6 <= '0';
            O_7 <= '0';
        elsif S = "010" then
            O_0 <= '0';
            O_1 <= '0';
            O_2 <= I;
            O_3 <= '0';
            O_4 <= '0';
            O_5 <= '0';
            O_6 <= '0';
            O_7 <= '0';
        elsif S = "011" then
            O_0 <= '0';
            O_1 <= '0';
            O_2 <= '0';
            O_3 <= I;
            O_4 <= '0';
            O_5 <= '0';
            O_6 <= '0';
            O_7 <= '0';
        elsif S = "100" then
            O_0 <= '0';
            O_1 <= '0';
            O_2 <= '0';
            O_3 <= '0';
            O_4 <= I;
            O_5 <= '0';
            O_6 <= '0';
            O_7 <= '0';
        elsif S = "101" then
            O_0 <= '0';
            O_1 <= '0';
            O_2 <= '0';
            O_3 <= '0';
            O_4 <= '0';
            O_5 <= I;
            O_6 <= '0';
            O_7 <= '0';
        elsif S = "110" then
            O_0 <= '0';
            O_1 <= '0';
            O_2 <= '0';
            O_3 <= '0';
            O_4 <= '0';
            O_5 <= '0';
            O_6 <= I;
            O_7 <= '0';
        elsif S = "111" then
            O_0 <= '0';
            O_1 <= '0';
            O_2 <= '0';
            O_3 <= '0';
            O_4 <= '0';
            O_5 <= '0';
            O_6 <= '0';
            O_7 <= I;
        end if;
    end process;
end demult_ops;
