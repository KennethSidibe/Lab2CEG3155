LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity shift_left_register is
	port(

		x_vector : in std_logic_vector(7 downto 0);
		clk_sl : in std_logic;
		en_sl : in std_logic;

		y_vector : out std_logic_vector(7 downto 0)

	);

end entity shift_left_register;


architecture rtl of shift_left_register is

	signal b0tob1, b1tob2, b2tob3, b3tob4, b4tob5, b5tob6, b6tob7;

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
				port map ('0', clk_sl, en_sl, y_vector(0));

		d1: entity work.d_ff(rtl)
				port map (b0tob1, clk_sl, en_sl, y_vector(1));

		d2: entity work.d_ff(rtl)
				port map (b1tob2, clk_sl, en_sl, y_vector(2));

		d3: entity work.d_ff(rtl)
				port map (b2tob3, clk_sl, en_sl, y_vector(3));

		d4: entity work.d_ff(rtl)
				port map (b3tob4, clk_sl, en_sl, y_vector(4));

		d5: entity work.d_ff(rtl)
				port map (b4tob5, clk_sl, en_sl, y_vector(5));

		d6: entity work.d_ff(rtl)
				port map (b5tob6, clk_sl, en_sl, y_vector(6));

		d7: entity work.d_ff(rtl)
				port map (b6tob7, clk_sl, en_sl, y_vector(7));


end architecture rtl;
