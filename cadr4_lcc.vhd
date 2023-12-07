library ieee;
use ieee.std_logic_1164.all;

library ttl;
use ttl.sn74.all;
use ttl.other.all;

library cadr4;
use cadr4.utilities.all;

entity cadr4_lcc is
  port (
    \lc_byte_mode\               : in  std_logic;
    \-lcinc\                     : out std_logic;
    lca1                         : out std_logic;
    gnd                          : in  std_logic;
    lc1                          : out std_logic;
    lca0                         : out std_logic;
    lc0                          : out std_logic;
    lcinc                        : out std_logic;
    lcry3                        : out std_logic;
    lca3                         : out std_logic;
    lc3                          : out std_logic;
    lca2                         : out std_logic;
    lc2                          : out std_logic;
    \-destlc\                    : in  std_logic;
    ob3                          : in  std_logic;
    ob2                          : in  std_logic;
    clk2a                        : in  std_logic;
    ob1                          : in  std_logic;
    ob0                          : in  std_logic;
    lc0b                         : out std_logic;
    \inst_in_left_half\          : out std_logic;
    \-ir4\                       : in  std_logic;
    \-sh4\                       : out std_logic;
    \-sh3\                       : out std_logic;
    \-ir3\                       : in  std_logic;
    \inst_in_2nd_or_4th_quarter\ : out std_logic;
    \-lc_modifies_mrot\          : out std_logic;
    spc14                        : in  std_logic;
    \-srcspcpopreal\             : in  std_logic;
    \-ifetch\                    : out std_logic;
    needfetch                    : out std_logic;
    \have_wrong_word\            : out std_logic;
    \last_byte_in_word\          : out std_logic;
    ir10                         : in  std_logic;
    ir11                         : in  std_logic;
    \-newlc\                     : out std_logic;
    \-newlc.in\                  : out std_logic;
    \-reset\                     : in  std_logic;
    newlc                        : out std_logic;
    int                          : in  std_logic;
    sintr                        : out std_logic;
    clk3c                        : in  std_logic;
    \next.instrd\                : out std_logic;
    \next.instr\                 : out std_logic;
    \-spop\                      : in  std_logic;
    \-needfetch\                 : out std_logic;
    spcmung                      : out std_logic;
    ir24                         : in  std_logic;
    irdisp                       : in  std_logic;
    spc1                         : in  std_logic;
    spc1a                        : out std_logic);
end;

architecture ttl of cadr4_lcc is
  signal internal25 : std_logic;
  signal internal26 : std_logic;
  signal internal27 : std_logic;
  signal internal28 : std_logic;
  signal internal29 : std_logic;
  signal nc359      : std_logic;
  signal nc360      : std_logic;
  signal nc361      : std_logic;
  signal nc362      : std_logic;
  signal nc363      : std_logic;
begin
  lcc_1c15 : sn74s02 port map(g3b    => \lc_byte_mode\, g3a => \-lcinc\, g3q_n => internal25, g1a => '0', g1b => '0', g2a => '0', g2b => '0', g4b => '0', g4a => '0');
  lcc_1c21 : sn74s283 port map(s1    => lca1, b1 => gnd, a1 => lc1, s0 => lca0, a0 => lc0, b0 => internal25, c0 => lcinc, c4 => lcry3, s3 => lca3, b3 => gnd, a3 => lc3, s2 => lca2, a2 => lc2, b2 => gnd);
  lcc_1c27 : am25s09 port map(sel    => \-destlc\, aq => lc3, a0 => ob3, a1 => lca3, b1 => lca2, b0 => ob2, bq => lc2, clk => clk2a, cq => lc1, c0 => ob1, c1 => lca1, d1 => lca0, d0 => ob0, dq => lc0);
  lcc_1e07 : sn74s08 port map(g4q    => lc0b, g4a => \lc_byte_mode\, g4b => lc0, g1b => '0', g1a => '0', g2b => '0', g2a => '0', g3a => '0', g3b => '0');
  lcc_2e05 : sn74s86 port map(g1a    => \inst_in_left_half\, g1b => \-ir4\, g1y => \-sh4\, g2a => lc1, g2b => lc0b, g2y => internal27, g3y => \-sh3\, g3a => \-ir3\, g3b => \inst_in_2nd_or_4th_quarter\, g4a => '0', g4b => '0');
  lcc_2e30 : sn74s02 port map(g3b    => \-lc_modifies_mrot\, g3a => internal27, g3q_n => \inst_in_left_half\, g4b => \-lc_modifies_mrot\, g4a => lc0, g4q_n => internal26, g1a => '0', g1b => '0', g2a => '0', g2b => '0');
  lcc_3e05 : sn74s08 port map(g1b    => internal26, g1a => \lc_byte_mode\, g1q => \inst_in_2nd_or_4th_quarter\, g2b => '0', g2a => '0', g3a => '0', g3b => '0', g4a => '0', g4b => '0');
  lcc_3e07 : sn74s00 port map(g3q_n  => internal28, g3b => spc14, g3a => \-srcspcpopreal\, g4q_n => \-ifetch\, g4a => needfetch, g4b => lcinc, g1b => '0', g1a => '0', g2b => '0', g2a => '0');
  lcc_3e09 : sn74s32 port map(g4y    => needfetch, g4a => \have_wrong_word\, g4b => \last_byte_in_word\, g1a => '0', g1b => '0', g2a => '0', g2b => '0', g3a => '0', g3b => '0');
  lcc_3e11 : sn74s00 port map(g1b    => ir10, g1a => ir11, g1q_n => \-lc_modifies_mrot\, g2b => \-newlc\, g2a => \-destlc\, g2q_n => \have_wrong_word\, g3q_n => \-newlc.in\, g3b => \-lcinc\, g3a => \have_wrong_word\, g4a => '0', g4b => '0');
  lcc_3e12 : sn74s175 port map(clr_n => \-reset\, q0 => \-newlc\, q0_n => newlc, d0 => \-newlc.in\, d1 => int, q1_n => nc359, q1 => sintr, clk => clk3c, q2 => \next.instrd\, q2_n => nc360, d2 => \next.instr\, d3 => nc361, q3_n => nc362, q3 => nc363);
  lcc_3e17 : sn74s02 port map(g1q_n  => \next.instr\, g1a => \-spop\, g1b => internal28, g2q_n => \last_byte_in_word\, g2a => lc1, g2b => lc0b, g3b => internal29, g3a => \next.instrd\, g3q_n => \-lcinc\, g4b => '0', g4a => '0');
  lcc_3e22 : sn74s04 port map(g3a    => needfetch, g3q_n => \-needfetch\, g1a => '0', g2a => '0', g4a => '0', g5a => '0', g6a => '0');
  lcc_4d09 : sn74s08 port map(g2b    => spc14, g2a => \-needfetch\, g2q => spcmung, g4q => internal29, g4a => ir24, g4b => irdisp, g1b => '0', g1a => '0', g3a => '0', g3b => '0');
  lcc_4e03 : sn74s32 port map(g1a    => spcmung, g1b => spc1, g1y => spc1a, g4y => lcinc, g4a => \next.instrd\, g4b => internal29, g2a => '0', g2b => '0', g3a => '0', g3b => '0');
end architecture;
