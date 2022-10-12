LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity eightbit_adder is 
	port(

		c0 : in std_logic;
		xV : in std_logic_vector(7 downto 0);
		yV : in std_logic_vector(7 downto 0);
		addNot : in std_logic;

		sV : out std_logic_vector(7 downto 0);
		carry : out std_logic;

	);

end entity eightbit_adder;

architecture rtl of eigthbit_adder is

	signal yxor : std_logic_vector(7 downto 0);

	component ripple_carry_adder is
		port(

			c_in : in std_logic;
			x_vector : in std_logic_vector(7 downto 0);
			y_vector : in std_logic_vector(7 downto 0);
		
			s_vector : out std_logic_vector(7 downto 0);
			c_out : out std_logic

		);
	end component ripple_carry_adder;

	begin


		yxor(0) <= yV(0) xor addNot;
		yxor(1) <= yV(1) xor addNot;
		yxor(2) <= yV(2) xor addNot;
		yxor(3) <= yV(3) xor addNot;
		yxor(4) <= yV(4) xor addNot;
		yxor(5) <= yV(5) xor addNot;
		yxor(6) <= yV(6) xor addNot;
		yxor(7) <= yV(7) xor addNot;

		adder : entity work.ripple_carry_adder(rtl)
					port map (c0, xV, yxor, sV, carry);

end architecture rtl;