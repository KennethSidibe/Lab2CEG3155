LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity product_reg is
	port(

		wright : in std_logic;

		en_pro : in std_logic;

		clk_pro : in std_logic;

		product_i : in std_logic_vector(7 downto 0);

		product_o : out std_logic_vector(7 downto 0);


	);
end entity product_reg;


architecture rtl of product_reg is

	component d_ff is
		port(

			d : in std_logic;
			clk : in std_logic;
			en : in std_logic;
			
			q : out std_logic;
			qbar : out std_logic

		);
	end component d_ff;

	begin

		d0: entity work.d_ff(rtl)
				port map (product_i(0), clk_pro, en_pro, product_o(0));

		d1: entity work.d_ff(rtl)
				port map (product_i(1), clk_pro, en_pro, product_o(1));

		d2: entity work.d_ff(rtl)
				port map (product_i(2), clk_pro, en_pro, product_o(2);

		d3: entity work.d_ff(rtl)
				port map (product_i(3), clk_pro, en_pro, product_o(3));

		d4: entity work.d_ff(rtl)
				port map (product_i(4), clk_pro, en_pro, product_o(4));

		d5: entity work.d_ff(rtl)
				port map (product_i(5), clk_pro, en_pro, product_o(5));

		d6: entity work.d_ff(rtl)
				port map (product_i(6), clk_pro, en_pro, product_o(6));

		d7: entity work.d_ff(rtl)
				port map (product_i(7), clk_pro, en_pro, product_o(7));

end architecture rtl;