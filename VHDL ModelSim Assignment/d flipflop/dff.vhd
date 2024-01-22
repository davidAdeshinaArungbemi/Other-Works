entity dff is
	port(D,CLR,PR,CLK: in bit; Q,QN: out bit);
end dff;

architecture dff_ops of dff is
	signal Qint: bit;
begin
	Q <= Qint;
	QN <= not Qint;
	process(CLR,PR,CLK)
	begin
		if CLR = '1' then Qint <= '1';
		elsif PR = '1' then Qint <= '0';
		elsif rising_edge(CLK) then Qint <= D;
		end if;
	end process;
end dff_ops;