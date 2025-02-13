library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Function_Logic is
    Port (
        A, B, C, D : in STD_LOGIC;
        F : out STD_LOGIC
    );
end Function_Logic;

architecture Behavioral of Function_Logic is
begin
    F <= (not A and C and D) or (not B and C) or (B and C and not D);
end Behavioral;
