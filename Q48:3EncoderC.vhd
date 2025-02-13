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
    Dout <= "000" when Din(0) = '1' else
            "001" when Din(1) = '1' else
            "010" when Din(2) = '1' else
            "011" when Din(3) = '1' else
            "100" when Din(4) = '1' else
            "101" when Din(5) = '1' else
            "110" when Din(6) = '1' else
            "111" when Din(7) = '1' else
            "000";
end Behavioral;
