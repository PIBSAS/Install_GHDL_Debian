-- generated by Digital. Don't modify this file!
-- Any changes will be lost if this file is regenerated.

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity c5_ej1 is
  port (
    d: in std_logic;
    c: in std_logic;
    b: in std_logic;
    a: in std_logic;
    z: out std_logic);
end c5_ej1;

architecture Behavioral of c5_ej1 is
begin
  z <= ((NOT a AND c) XOR (NOT (NOT b AND c) OR d));
end Behavioral;
