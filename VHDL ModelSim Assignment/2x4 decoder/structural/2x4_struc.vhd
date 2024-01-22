entity AND_GATE is
    Port ( 
        input1, input2 : in bit;
        output : out bit
    );
end AND_GATE;

architecture Behavioural of AND_GATE is
begin
    process (input1, input2)
    begin
        output <= input1 and input2;
    end process;
end Behavioural;

entity Decoder_2x4_Structural is
    Port (
        input_vector : in bit_vector(1 downto 0);
        output_lines : out bit_vector(3 downto 0)
    );
end Decoder_2x4_Structural;

architecture Structural of Decoder_2x4_Structural is
    signal and1, and2, and3, and4 : bit;
    signal not_input_vector_0, not_input_vector_1 : bit;

    component AND_GATE
        Port ( 
            input1, input2 : in bit;
            output : out bit
        );
    end component;

begin
    -- Calculating'not' values beforehand
    not_input_vector_0 <= not input_vector(0);
    not_input_vector_1 <= not input_vector(1);

    -- AND gates for each output line
    and1_gate: AND_GATE port map (input_vector(0), not_input_vector_1, and1);
    and2_gate: AND_GATE port map (not_input_vector_0, input_vector(1), and2);
    and3_gate: AND_GATE port map (input_vector(0), input_vector(1), and3);
    and4_gate: AND_GATE port map (not_input_vector_0, not_input_vector_1, and4);

    -- Output lines
    output_lines(0) <= and1;
    output_lines(1) <= and2;
    output_lines(2) <= and3;
    output_lines(3) <= and4;
end Structural;
