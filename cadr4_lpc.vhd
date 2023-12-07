library ieee;
use ieee.std_logic_1164.all;

library ttl;
use ttl.sn74.all;
use ttl.other.all;

library cadr4;
use cadr4.utilities.all;

entity cadr4_lpc is
  port (
    gnd        : in  std_logic;
    pc8        : in  std_logic;
    pc9        : in  std_logic;
    pc10       : in  std_logic;
    pc13b      : out std_logic;
    pc11       : in  std_logic;
    pc12b      : out std_logic;
    pc12       : in  std_logic;
    pc11b      : out std_logic;
    pc13       : in  std_logic;
    pc10b      : out std_logic;
    pc9b       : out std_logic;
    pc8b       : out std_logic;
    hi5        : in  std_logic;
    pc0        : in  std_logic;
    pc7b       : out std_logic;
    pc1        : in  std_logic;
    pc6b       : out std_logic;
    pc2        : in  std_logic;
    pc5b       : out std_logic;
    pc3        : in  std_logic;
    pc4b       : out std_logic;
    pc4        : in  std_logic;
    pc3b       : out std_logic;
    pc5        : in  std_logic;
    pc2b       : out std_logic;
    pc6        : in  std_logic;
    pc1b       : out std_logic;
    pc7        : in  std_logic;
    pc0b       : out std_logic;
    irdisp     : in  std_logic;
    ir25       : in  std_logic;
    lpc12      : out std_logic;
    wpc12      : out std_logic;
    lpc13      : out std_logic;
    wpc13      : out std_logic;
    lpc8       : out std_logic;
    wpc8       : out std_logic;
    lpc9       : out std_logic;
    wpc9       : out std_logic;
    wpc10      : out std_logic;
    lpc10      : out std_logic;
    wpc11      : out std_logic;
    lpc11      : out std_logic;
    lpc4       : out std_logic;
    wpc4       : out std_logic;
    lpc5       : out std_logic;
    wpc5       : out std_logic;
    wpc6       : out std_logic;
    lpc6       : out std_logic;
    wpc7       : out std_logic;
    lpc7       : out std_logic;
    lpc0       : out std_logic;
    wpc0       : out std_logic;
    lpc1       : out std_logic;
    wpc1       : out std_logic;
    wpc2       : out std_logic;
    lpc2       : out std_logic;
    wpc3       : out std_logic;
    lpc3       : out std_logic;
    \lpc.hold\ : in  std_logic;
    clk4b      : in  std_logic);
end;

architecture ttl of cadr4_lpc is
  signal internal23 : std_logic;
  signal internal24 : std_logic;
  signal nc341      : std_logic;
  signal nc342      : std_logic;
  signal nc343      : std_logic;
  signal nc344      : std_logic;
  signal nc345      : std_logic;
  signal nc346      : std_logic;
  signal nc347      : std_logic;
  signal nc348      : std_logic;
  signal nc349      : std_logic;
  signal nc350      : std_logic;
  signal nc351      : std_logic;
  signal nc352      : std_logic;
  signal nc353      : std_logic;
  signal nc354      : std_logic;
  signal nc355      : std_logic;
  signal nc356      : std_logic;
  signal nc357      : std_logic;
  signal nc358      : std_logic;
begin
  lpc_4d01 : sn74s241 port map(aenb_n => gnd, ain0 => pc8, bout3 => nc341, ain1 => pc9, bout2 => nc342, ain2 => pc10, bout1 => pc13b, ain3 => pc11, bout0 => pc12b, bin0 => pc12, aout3 => pc11b, bin1 => pc13, aout2 => pc10b, bin2 => nc343, aout1 => pc9b, bin3 => nc344, aout0 => pc8b, benb => hi5);
  lpc_4d02 : sn74s241 port map(aenb_n => gnd, ain0 => pc0, bout3 => pc7b, ain1 => pc1, bout2 => pc6b, ain2 => pc2, bout1 => pc5b, ain3 => pc3, bout0 => pc4b, bin0 => pc4, aout3 => pc3b, bin1 => pc5, aout2 => pc2b, bin2 => pc6, aout1 => pc1b, bin3 => pc7, aout0 => pc0b, benb => hi5);
  lpc_4d06 : sn74s08 port map(g1b     => irdisp, g1a => ir25, g1q => internal23, g2b => '0', g2a => '0', g3a => '0', g3b => '0', g4a => '0', g4b => '0');
  lpc_4e06 : sn74s157 port map(sel    => internal23, a4 => pc12, b4 => lpc12, y4 => wpc12, a3 => pc13, b3 => lpc13, y3 => wpc13, y2 => nc345, b2 => nc346, a2 => nc347, y1 => nc348, b1 => nc349, a1 => nc350, enb_n => gnd);
  lpc_4e07 : sn74s157 port map(sel    => internal24, a4 => pc8, b4 => lpc8, y4 => wpc8, a3 => pc9, b3 => lpc9, y3 => wpc9, y2 => wpc10, b2 => lpc10, a2 => pc10, y1 => wpc11, b1 => lpc11, a1 => pc11, enb_n => gnd);
  lpc_4e08 : sn74s157 port map(sel    => internal24, a4 => pc4, b4 => lpc4, y4 => wpc4, a3 => pc5, b3 => lpc5, y3 => wpc5, y2 => wpc6, b2 => lpc6, a2 => pc6, y1 => wpc7, b1 => lpc7, a1 => pc7, enb_n => gnd);
  lpc_4e09 : sn74s157 port map(sel    => internal24, a4 => pc0, b4 => lpc0, y4 => wpc0, a3 => pc1, b3 => lpc1, y3 => wpc1, y2 => wpc2, b2 => lpc2, a2 => pc2, y1 => wpc3, b1 => lpc3, a1 => pc3, enb_n => gnd);
  lpc_4f06 : am25s07 port map(enb_n   => \lpc.hold\, d0 => lpc5, i0 => pc5, i1 => pc4, d1 => lpc4, i2 => pc3, d2 => lpc3, clk => clk4b, d3 => lpc2, i3 => pc2, d4 => lpc1, i4 => pc1, i5 => pc0, d5 => lpc0);
  lpc_4f07 : am25s07 port map(enb_n   => \lpc.hold\, d0 => lpc11, i0 => pc11, i1 => pc10, d1 => lpc10, i2 => pc9, d2 => lpc9, clk => clk4b, d3 => lpc8, i3 => pc8, d4 => lpc7, i4 => pc7, i5 => pc6, d5 => lpc6);
  lpc_4f08 : am25s07 port map(enb_n   => \lpc.hold\, d0 => nc351, i0 => nc352, i1 => nc353, d1 => nc354, i2 => nc355, d2 => nc356, clk => clk4b, d3 => nc357, i3 => nc358, d4 => lpc13, i4 => pc13, i5 => pc12, d5 => lpc12);
end architecture;
