-- generated by Digital. Don't modify this file!
-- Any changes will be lost if this file is regenerated.

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity main is
  port (
    A: in std_logic;
    B: in std_logic;
    C: in std_logic;
    Y: out std_logic);
end main;

architecture Behavioral of main is
begin
  Y <= NOT (NOT ((A AND B) OR C) AND (B OR C));
end Behavioral;
