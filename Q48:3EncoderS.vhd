library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Encoder_8to3 is
    Port (
        Din  : in STD_LOGIC_VECTOR(7 downto 0);
        Dout : out STD_LOGIC_VECTOR(2 downto 0)
    );
end Encoder_8to3;

architecture Behavioral of Encoder_8to3 is
begin
    with Din select
        Dout <= "000" when "00000001",
                "001" when "00000010",
                "010" when "00000100",
                "011" when "00001000",
                "100" when "00010000",
                "101" when "00100000",
                "110" when "01000000",
                "111" when "10000000",
                "000" when others;
end Behavioral;
