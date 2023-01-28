----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:29:35 10/11/2022 
-- Design Name: 
-- Module Name:    TwoBitAdderTop - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TwoBitAdderTop is
    Port ( A : in  STD_LOGIC_VECTOR (1 downto 0);
           B : in  STD_LOGIC_VECTOR (1 downto 0);
           C_in : in  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (1 downto 0);
           C_out : out  STD_LOGIC);
end TwoBitAdderTop;

architecture Behavioral of TwoBitAdderTop is

component Full_Adder
port (
			  A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C_in : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           C_out : out  STD_LOGIC
);
end component;

--signal 
signal c0,c1 : std_logic;

begin

F0: Full_Adder port map (A(0), B(0), C_in, Sum(0), c0);
F1: Full_Adder port map (A(1), B(1), C0, Sum(1), c1);

C_out <= c1;

end Behavioral;