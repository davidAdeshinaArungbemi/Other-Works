entity jk is
	port(J,K,CLR,PR,CLK: in bit; Q,QN: out bit);
end jk;

architecture jk_ops of jk is
signal Qint: bit;
begin
	Q <= Qint;
	QN <= not Qint;
	process(CLR,PR,CLK)
	begin
		if CLR = '1' then Qint <= '1';
		elsif PR = '1' then Qint <= '0';
		elsif rising_edge(CLK) then
			Qint <= (J and not Qint) or (not K and Qint);
		end if;
	end process;
end jk_ops;
