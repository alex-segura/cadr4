library ieee;
use ieee.std_logic_1164.all;

library ttl;
use ttl.sn74.all;
use ttl.other.all;

library cadr4;
use cadr4.utilities.all;

entity cadr4_alatch is
  port (
    \-amemenb\  : in  std_logic;
    a23         : out std_logic;
    amem23      : in  std_logic;
    amem22      : in  std_logic;
    a22         : out std_logic;
    a21         : out std_logic;
    amem21      : in  std_logic;
    amem20      : in  std_logic;
    a20         : out std_logic;
    clk3e       : in  std_logic;
    a19         : out std_logic;
    amem19      : in  std_logic;
    amem18      : in  std_logic;
    a18         : out std_logic;
    a17         : out std_logic;
    amem17      : in  std_logic;
    amem16      : in  std_logic;
    a16         : out std_logic;
    \-apassenb\ : in  std_logic;
    l15         : in  std_logic;
    a8          : out std_logic;
    l14         : in  std_logic;
    a9          : out std_logic;
    l13         : in  std_logic;
    a10         : out std_logic;
    l12         : in  std_logic;
    a11         : out std_logic;
    l11         : in  std_logic;
    a12         : out std_logic;
    l10         : in  std_logic;
    a13         : out std_logic;
    l9          : in  std_logic;
    a14         : out std_logic;
    l8          : in  std_logic;
    a15         : out std_logic;
    apassenb    : in  std_logic;
    amem15      : in  std_logic;
    amem14      : in  std_logic;
    amem13      : in  std_logic;
    amem12      : in  std_logic;
    amem11      : in  std_logic;
    amem10      : in  std_logic;
    amem9       : in  std_logic;
    amem8       : in  std_logic;
    l7          : in  std_logic;
    a0          : out std_logic;
    l6          : in  std_logic;
    a1          : out std_logic;
    l5          : in  std_logic;
    a2          : out std_logic;
    l4          : in  std_logic;
    a3          : out std_logic;
    l3          : in  std_logic;
    a4          : out std_logic;
    l2          : in  std_logic;
    a5          : out std_logic;
    l1          : in  std_logic;
    a6          : out std_logic;
    l0          : in  std_logic;
    a7          : out std_logic;
    amem7       : in  std_logic;
    amem6       : in  std_logic;
    amem5       : in  std_logic;
    amem4       : in  std_logic;
    amem3       : in  std_logic;
    amem2       : in  std_logic;
    amem1       : in  std_logic;
    amem0       : in  std_logic;
    hi5         : in  std_logic;
    a31b        : out std_logic;
    aparity     : out std_logic;
    lparity     : in  std_logic;
    l31         : in  std_logic;
    amemparity  : in  std_logic;
    amem31      : in  std_logic;
    a24         : out std_logic;
    l30         : in  std_logic;
    a25         : out std_logic;
    l29         : in  std_logic;
    a26         : out std_logic;
    l28         : in  std_logic;
    a27         : out std_logic;
    l27         : in  std_logic;
    a28         : out std_logic;
    l26         : in  std_logic;
    a29         : out std_logic;
    l25         : in  std_logic;
    a30         : out std_logic;
    l24         : in  std_logic;
    a31a        : out std_logic;
    amem30      : in  std_logic;
    amem29      : in  std_logic;
    amem28      : in  std_logic;
    amem27      : in  std_logic;
    amem26      : in  std_logic;
    amem25      : in  std_logic;
    amem24      : in  std_logic;
    l23         : in  std_logic;
    l22         : in  std_logic;
    l21         : in  std_logic;
    l20         : in  std_logic;
    l19         : in  std_logic;
    l18         : in  std_logic;
    l17         : in  std_logic;
    l16         : in  std_logic);
end;

architecture ttl of cadr4_alatch is
  signal nc465 : std_logic;
  signal nc466 : std_logic;
  signal nc467 : std_logic;
  signal nc468 : std_logic;
  signal nc469 : std_logic;
  signal nc470 : std_logic;
  signal nc471 : std_logic;
  signal nc472 : std_logic;
  signal nc473 : std_logic;
  signal nc474 : std_logic;
  signal nc475 : std_logic;
  signal nc476 : std_logic;
  signal nc477 : std_logic;
  signal nc478 : std_logic;
  signal nc479 : std_logic;
  signal nc480 : std_logic;
  signal nc481 : std_logic;
  signal nc482 : std_logic;
  signal nc483 : std_logic;
  signal nc484 : std_logic;
  signal nc485 : std_logic;
  signal nc486 : std_logic;
  signal nc487 : std_logic;
  signal nc488 : std_logic;
begin
  alatch_3a01 : sn74s373 port map(oenb_n => \-amemenb\, o0 => a23, i0 => amem23, i1 => amem22, o1 => a22, o2 => a21, i2 => amem21, i3 => amem20, o3 => a20, hold_n => clk3e, o4 => a19, i4 => amem19, i5 => amem18, o5 => a18, o6 => a17, i6 => amem17, i7 => amem16, o7 => a16);
  alatch_3a02 : sn74s241 port map(aenb_n => \-apassenb\, ain0 => l15, bout3 => a8, ain1 => l14, bout2 => a9, ain2 => l13, bout1 => a10, ain3 => l12, bout0 => a11, bin0 => l11, aout3 => a12, bin1 => l10, aout2 => a13, bin2 => l9, aout1 => a14, bin3 => l8, aout0 => a15, benb => apassenb);
  alatch_3a03 : sn74s373 port map(oenb_n => \-amemenb\, o0 => a15, i0 => amem15, i1 => amem14, o1 => a14, o2 => a13, i2 => amem13, i3 => amem12, o3 => a12, hold_n => clk3e, o4 => a11, i4 => amem11, i5 => amem10, o5 => a10, o6 => a9, i6 => amem9, i7 => amem8, o7 => a8);
  alatch_3a04 : sn74s241 port map(aenb_n => \-apassenb\, ain0 => l7, bout3 => a0, ain1 => l6, bout2 => a1, ain2 => l5, bout1 => a2, ain3 => l4, bout0 => a3, bin0 => l3, aout3 => a4, bin1 => l2, aout2 => a5, bin2 => l1, aout1 => a6, bin3 => l0, aout0 => a7, benb => apassenb);
  alatch_3a05 : sn74s373 port map(oenb_n => \-amemenb\, o0 => a7, i0 => amem7, i1 => amem6, o1 => a6, o2 => a5, i2 => amem5, i3 => amem4, o3 => a4, hold_n => clk3e, o4 => a3, i4 => amem3, i5 => amem2, o5 => a2, o6 => a1, i6 => amem1, i7 => amem0, o7 => a0);
  alatch_3b01 : sn74s241 port map(aenb_n => hi5, ain0 => nc465, bout3 => a31b, ain1 => nc466, bout2 => aparity, ain2 => nc467, bout1 => nc468, ain3 => nc469, bout0 => nc470, bin0 => nc471, aout3 => nc472, bin1 => nc473, aout2 => nc474, bin2 => lparity, aout1 => nc475, bin3 => l31, aout0 => nc476, benb => apassenb);
  alatch_3b02 : sn74s373 port map(oenb_n => \-amemenb\, o0 => nc477, i0 => nc478, i1 => nc479, o1 => nc480, o2 => nc481, i2 => nc482, i3 => nc483, o3 => nc484, hold_n => clk3e, o4 => nc485, i4 => nc486, i5 => nc487, o5 => nc488, o6 => aparity, i6 => amemparity, i7 => amem31, o7 => a31b);
  alatch_3b03 : sn74s241 port map(aenb_n => \-apassenb\, ain0 => l31, bout3 => a24, ain1 => l30, bout2 => a25, ain2 => l29, bout1 => a26, ain3 => l28, bout0 => a27, bin0 => l27, aout3 => a28, bin1 => l26, aout2 => a29, bin2 => l25, aout1 => a30, bin3 => l24, aout0 => a31a, benb => apassenb);
  alatch_3b04 : sn74s373 port map(oenb_n => \-amemenb\, o0 => a31a, i0 => amem31, i1 => amem30, o1 => a30, o2 => a29, i2 => amem29, i3 => amem28, o3 => a28, hold_n => clk3e, o4 => a27, i4 => amem27, i5 => amem26, o5 => a26, o6 => a25, i6 => amem25, i7 => amem24, o7 => a24);
  alatch_3b05 : sn74s241 port map(aenb_n => \-apassenb\, ain0 => l23, bout3 => a16, ain1 => l22, bout2 => a17, ain2 => l21, bout1 => a18, ain3 => l20, bout0 => a19, bin0 => l19, aout3 => a20, bin1 => l18, aout2 => a21, bin2 => l17, aout1 => a22, bin3 => l16, aout0 => a23, benb => apassenb);
end architecture;
