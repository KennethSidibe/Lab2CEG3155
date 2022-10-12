LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity d_ff is
		port(
			
			d : in std_logic;
			clk : in std_logic;
			en : in std_logic;
			
			q : out std_logic;
			qbar : out std_logic
		
		);
end entity d_ff;

architecture rtl of d_ff is
	
	signal q_s, qbar_s : std_logic;
	signal d_s, dbar_s : std_logic;
	signal d_not_s : std_logic;
	
	begin
		
		d_not_s <= not(d);
		d_s <= d nand en;
		dbar_s <= en nand qbar_s;
		q_s <= d nand qbar_s;
		
		q <= q_s;
		qbar <= qbar_s;
		
end architecture rtl;