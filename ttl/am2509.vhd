-- Quad Two-Input, High-Speed Register

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity am2509 is
  port (
    a0  : in  std_logic;
    a1  : in  std_logic;
    aq  : out std_logic;
    b0  : in  std_logic;
    b1  : in  std_logic;
    bq  : out std_logic;
    c0  : in  std_logic;
    c1  : in  std_logic;
    cq  : out std_logic;
    d0  : in  std_logic;
    d1  : in  std_logic;
    dq  : out std_logic;
    sel : in  std_logic;
    clk : in  std_logic
    );
end am2509;

architecture ttl of am2509 is
begin

end ttl;
