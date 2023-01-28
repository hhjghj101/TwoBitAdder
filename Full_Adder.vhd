library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C_in : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           C_out : out  STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is

begin

process (A, B, C_in) is
	begin
		sum <= A xor B xor C_in;
      C_out	<= (A and B) or (C_in and A) or (C_in and B);
	end process;

end Behavioral;