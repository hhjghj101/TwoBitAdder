library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TwoBitAdderTop is
    Port ( A 	  : in  STD_LOGIC_VECTOR (1 downto 0);
           B 	  : in  STD_LOGIC_VECTOR (1 downto 0);
           C_in  : in  STD_LOGIC;
           Sum   : out  STD_LOGIC_VECTOR (1 downto 0);
           C_out : out  STD_LOGIC);
end TwoBitAdderTop;

architecture Behavioral of TwoBitAdderTop is

component Full_Adder
port ( A 	 : in  STD_LOGIC;
       B 	 : in  STD_LOGIC;
       C_in  : in  STD_LOGIC;
       Sum   : out  STD_LOGIC;
       C_out : out  STD_LOGIC);
		 
end component;

signal c0,c1 : std_logic;

begin

F0: Full_Adder port map (A(0), B(0), C_in, Sum(0), c0);
F1: Full_Adder port map (A(1), B(1), C0, Sum(1), c1);

C_out <= c1;

end Behavioral;