library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ic_7402 is
  port (
    g1q_n : out std_logic;
    g1a   : in  std_logic;
    g1b   : in  std_logic;
    g2q_n : out std_logic;
    g2a   : in  std_logic;
    g2b   : in  std_logic;
    g3b   : in  std_logic;
    g3a   : in  std_logic;
    g3q_n : out std_logic;
    g4b   : in  std_logic;
    g4a   : in  std_logic;
    g4q_n : out std_logic
    );
end ic_7402;

architecture ttl of ic_7402 is
begin

end ttl;
