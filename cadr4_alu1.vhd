library ieee;
use ieee.std_logic_1164.all;

library ttl;
use ttl.sn74.all;
use ttl.other.all;

library cadr4;
use cadr4.utilities.all;

entity cadr4_alu1 is
  port (
    a31a     : in  std_logic;
    m31b     : out std_logic;
    aluf3a   : in  std_logic;
    aluf2a   : in  std_logic;
    aluf1a   : in  std_logic;
    aluf0a   : in  std_logic;
    \-cin32\ : in  std_logic;
    alumode  : in  std_logic;
    alu32    : out std_logic;
    m31      : in  std_logic;
    hi12     : in  std_logic;
    a28      : in  std_logic;
    m28      : in  std_logic;
    \-cin28\ : in  std_logic;
    alu28    : out std_logic;
    alu29    : out std_logic;
    alu30    : out std_logic;
    alu31    : out std_logic;
    aeqm     : out std_logic;
    xout31   : out std_logic;
    yout31   : out std_logic;
    a31b     : in  std_logic;
    a30      : in  std_logic;
    m30      : in  std_logic;
    a29      : in  std_logic;
    m29      : in  std_logic;
    a20      : in  std_logic;
    m20      : in  std_logic;
    \-cin20\ : in  std_logic;
    alu20    : out std_logic;
    alu21    : out std_logic;
    alu22    : out std_logic;
    alu23    : out std_logic;
    xout23   : out std_logic;
    yout23   : out std_logic;
    a23      : in  std_logic;
    m23      : in  std_logic;
    a22      : in  std_logic;
    m22      : in  std_logic;
    a21      : in  std_logic;
    m21      : in  std_logic;
    a24      : in  std_logic;
    m24      : in  std_logic;
    \-cin24\ : in  std_logic;
    alu24    : out std_logic;
    alu25    : out std_logic;
    alu26    : out std_logic;
    alu27    : out std_logic;
    xout27   : out std_logic;
    yout27   : out std_logic;
    a27      : in  std_logic;
    m27      : in  std_logic;
    a26      : in  std_logic;
    m26      : in  std_logic;
    a25      : in  std_logic;
    m25      : in  std_logic;
    a16      : in  std_logic;
    m16      : in  std_logic;
    \-cin16\ : in  std_logic;
    alu16    : out std_logic;
    alu17    : out std_logic;
    alu18    : out std_logic;
    alu19    : out std_logic;
    xout19   : out std_logic;
    yout19   : out std_logic;
    a19      : in  std_logic;
    m19      : in  std_logic;
    a18      : in  std_logic;
    m18      : in  std_logic;
    a17      : in  std_logic;
    m17      : in  std_logic);
end;

architecture ttl of cadr4_alu1 is
  signal nc444 : std_logic;
  signal nc445 : std_logic;
  signal nc446 : std_logic;
  signal nc447 : std_logic;
  signal nc448 : std_logic;
  signal nc449 : std_logic;
  signal nc450 : std_logic;
  signal nc451 : std_logic;
  signal nc452 : std_logic;
  signal nc453 : std_logic;
  signal nc454 : std_logic;
  signal nc455 : std_logic;
  signal nc456 : std_logic;
  signal nc457 : std_logic;
  signal nc458 : std_logic;
  signal nc459 : std_logic;
  signal nc460 : std_logic;
begin
  alu1_2a03 : sn74s181 port map(b0 => a31a, a0 => m31b, s3 => aluf3a, s2 => aluf2a, s1 => aluf1a, s0 => aluf0a, cin_n => \-cin32\, m => alumode, f0 => alu32, f1 => nc444, f2 => nc445, f3 => nc446, aeb => nc447, x => nc448, cout_n => nc449, y => nc450, b3 => nc451, a3 => nc452, b2 => nc453, a2 => nc454, b1 => nc455, a1 => nc456);
  alu1_2a04 : sn74s08 port map(g1b => m31, g1a => hi12, g1q => m31b, g2b => '0', g2a => '0', g3a => '0', g3b => '0', g4a => '0', g4b => '0');
  alu1_2a08 : sn74s181 port map(b0 => a28, a0 => m28, s3 => aluf3a, s2 => aluf2a, s1 => aluf1a, s0 => aluf0a, cin_n => \-cin28\, m => alumode, f0 => alu28, f1 => alu29, f2 => alu30, f3 => alu31, aeb => aeqm, x => xout31, cout_n => nc457, y => yout31, b3 => a31b, a3 => m31b, b2 => a30, a2 => m30, b1 => a29, a1 => m29);
  alu1_2a13 : sn74s181 port map(b0 => a20, a0 => m20, s3 => aluf3a, s2 => aluf2a, s1 => aluf1a, s0 => aluf0a, cin_n => \-cin20\, m => alumode, f0 => alu20, f1 => alu21, f2 => alu22, f3 => alu23, aeb => aeqm, x => xout23, cout_n => nc459, y => yout23, b3 => a23, a3 => m23, b2 => a22, a2 => m22, b1 => a21, a1 => m21);
  alu1_2b08 : sn74s181 port map(b0 => a24, a0 => m24, s3 => aluf3a, s2 => aluf2a, s1 => aluf1a, s0 => aluf0a, cin_n => \-cin24\, m => alumode, f0 => alu24, f1 => alu25, f2 => alu26, f3 => alu27, aeb => aeqm, x => xout27, cout_n => nc458, y => yout27, b3 => a27, a3 => m27, b2 => a26, a2 => m26, b1 => a25, a1 => m25);
  alu1_2b13 : sn74s181 port map(b0 => a16, a0 => m16, s3 => aluf3a, s2 => aluf2a, s1 => aluf1a, s0 => aluf0a, cin_n => \-cin16\, m => alumode, f0 => alu16, f1 => alu17, f2 => alu18, f3 => alu19, aeb => aeqm, x => xout19, cout_n => nc460, y => yout19, b3 => a19, a3 => m19, b2 => a18, a2 => m18, b1 => a17, a1 => m17);
end architecture;
