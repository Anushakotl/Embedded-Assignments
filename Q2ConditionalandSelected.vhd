library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Function_Logic is
    Port (
        A, B : in STD_LOGIC;
        F : out STD_LOGIC
    );
end Function_Logic;

architecture Behavioral of Function_Logic is
begin
    F <= '1' when (A = '1' or B = '1') else '0';
end Behavioral;
