library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DEMUX_1to8 is
    Port (
        Din  : in STD_LOGIC;
        Sel  : in STD_LOGIC_VECTOR(2 downto 0);
        Dout : out STD_LOGIC_VECTOR(7 downto 0)
    );
end DEMUX_1to8;

architecture Behavioral of DEMUX_1to8 is
begin
    Dout <= "00000001" when Sel = "000" and Din = '1' else
            "00000010" when Sel = "001" and Din = '1' else
            "00000100" when Sel = "010" and Din = '1' else
            "00001000" when Sel = "011" and Din = '1' else
            "00010000" when Sel = "100" and Din = '1' else
            "00100000" when Sel = "101" and Din = '1' else
            "01000000" when Sel = "110" and Din = '1' else
            "10000000" when Sel = "111" and Din = '1' else
            "00000000";
end Behavioral;
