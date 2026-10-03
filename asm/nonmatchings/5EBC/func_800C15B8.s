nonmatching func_800C15B8, 0x324

glabel func_800C15B8
    /* B1DB8 800C15B8 0D80023C */  lui        $v0, %hi(D_800D558C)
    /* B1DBC 800C15BC 8C55428C */  lw         $v0, %lo(D_800D558C)($v0)
    /* B1DC0 800C15C0 0D80033C */  lui        $v1, %hi(D_800D55A4)
    /* B1DC4 800C15C4 A4556394 */  lhu        $v1, %lo(D_800D55A4)($v1)
    /* B1DC8 800C15C8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* B1DCC 800C15CC 1400B1AF */  sw         $s1, 0x14($sp)
    /* B1DD0 800C15D0 2188A000 */  addu       $s1, $a1, $zero
    /* B1DD4 800C15D4 2000BFAF */  sw         $ra, 0x20($sp)
    /* B1DD8 800C15D8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* B1DDC 800C15DC 1800B2AF */  sw         $s2, 0x18($sp)
    /* B1DE0 800C15E0 1000B0AF */  sw         $s0, 0x10($sp)
    /* B1DE4 800C15E4 AE014594 */  lhu        $a1, 0x1AE($v0)
    /* B1DE8 800C15E8 21908000 */  addu       $s2, $a0, $zero
    /* B1DEC 800C15EC A60143A4 */  sh         $v1, 0x1A6($v0)
    /* B1DF0 800C15F0 8407030C */  jal        func_800C1E10
    /* B1DF4 800C15F4 FF07B330 */   andi      $s3, $a1, 0x7FF
    /* B1DF8 800C15F8 39002012 */  beqz       $s1, .L800C16E0
    /* B1DFC 800C15FC 4100222E */   sltiu     $v0, $s1, 0x41
  .L800C1600:
    /* B1E00 800C1600 02004010 */  beqz       $v0, .L800C160C
    /* B1E04 800C1604 40001024 */   addiu     $s0, $zero, 0x40
    /* B1E08 800C1608 21802002 */  addu       $s0, $s1, $zero
  .L800C160C:
    /* B1E0C 800C160C 0A00001A */  blez       $s0, .L800C1638
    /* B1E10 800C1610 21180000 */   addu      $v1, $zero, $zero
    /* B1E14 800C1614 0D80043C */  lui        $a0, %hi(D_800D558C)
    /* B1E18 800C1618 8C55848C */  lw         $a0, %lo(D_800D558C)($a0)
  .L800C161C:
    /* B1E1C 800C161C 00004296 */  lhu        $v0, 0x0($s2)
    /* B1E20 800C1620 02005226 */  addiu      $s2, $s2, 0x2
    /* B1E24 800C1624 02006324 */  addiu      $v1, $v1, 0x2
    /* B1E28 800C1628 A80182A4 */  sh         $v0, 0x1A8($a0)
    /* B1E2C 800C162C 2A107000 */  slt        $v0, $v1, $s0
    /* B1E30 800C1630 FAFF4014 */  bnez       $v0, .L800C161C
    /* B1E34 800C1634 00000000 */   nop
  .L800C1638:
    /* B1E38 800C1638 0D80033C */  lui        $v1, %hi(D_800D558C)
    /* B1E3C 800C163C 8C55638C */  lw         $v1, %lo(D_800D558C)($v1)
    /* B1E40 800C1640 00000000 */  nop
    /* B1E44 800C1644 AA016494 */  lhu        $a0, 0x1AA($v1)
    /* B1E48 800C1648 00000000 */  nop
    /* B1E4C 800C164C CFFF8230 */  andi       $v0, $a0, 0xFFCF
    /* B1E50 800C1650 10004234 */  ori        $v0, $v0, 0x10
    /* B1E54 800C1654 8407030C */  jal        func_800C1E10
    /* B1E58 800C1658 AA0162A4 */   sh        $v0, 0x1AA($v1)
    /* B1E5C 800C165C 0D80023C */  lui        $v0, %hi(D_800D558C)
    /* B1E60 800C1660 8C55428C */  lw         $v0, %lo(D_800D558C)($v0)
    /* B1E64 800C1664 00000000 */  nop
    /* B1E68 800C1668 AE014294 */  lhu        $v0, 0x1AE($v0)
    /* B1E6C 800C166C 00000000 */  nop
    /* B1E70 800C1670 00044230 */  andi       $v0, $v0, 0x400
    /* B1E74 800C1674 14004010 */  beqz       $v0, .L800C16C8
    /* B1E78 800C1678 21180000 */   addu      $v1, $zero, $zero
    /* B1E7C 800C167C 01006324 */  addiu      $v1, $v1, 0x1
  .L800C1680:
    /* B1E80 800C1680 010F622C */  sltiu      $v0, $v1, 0xF01
    /* B1E84 800C1684 08004014 */  bnez       $v0, .L800C16A8
    /* B1E88 800C1688 00000000 */   nop
    /* B1E8C 800C168C 0180043C */  lui        $a0, %hi(D_8001551C)
    /* B1E90 800C1690 1C558424 */  addiu      $a0, $a0, %lo(D_8001551C)
    /* B1E94 800C1694 0180053C */  lui        $a1, %hi(D_8001553C)
    /* B1E98 800C1698 A6B5020C */  jal        func_800AD698
    /* B1E9C 800C169C 3C55A524 */   addiu     $a1, $a1, %lo(D_8001553C)
    /* B1EA0 800C16A0 B2050308 */  j          .L800C16C8
    /* B1EA4 800C16A4 00000000 */   nop
  .L800C16A8:
    /* B1EA8 800C16A8 0D80023C */  lui        $v0, %hi(D_800D558C)
    /* B1EAC 800C16AC 8C55428C */  lw         $v0, %lo(D_800D558C)($v0)
    /* B1EB0 800C16B0 00000000 */  nop
    /* B1EB4 800C16B4 AE014294 */  lhu        $v0, 0x1AE($v0)
    /* B1EB8 800C16B8 00000000 */  nop
    /* B1EBC 800C16BC 00044230 */  andi       $v0, $v0, 0x400
    /* B1EC0 800C16C0 EFFF4014 */  bnez       $v0, .L800C1680
    /* B1EC4 800C16C4 01006324 */   addiu     $v1, $v1, 0x1
  .L800C16C8:
    /* B1EC8 800C16C8 8407030C */  jal        func_800C1E10
    /* B1ECC 800C16CC 23883002 */   subu      $s1, $s1, $s0
    /* B1ED0 800C16D0 8407030C */  jal        func_800C1E10
    /* B1ED4 800C16D4 00000000 */   nop
    /* B1ED8 800C16D8 C9FF2016 */  bnez       $s1, .L800C1600
    /* B1EDC 800C16DC 4100222E */   sltiu     $v0, $s1, 0x41
  .L800C16E0:
    /* B1EE0 800C16E0 0D80023C */  lui        $v0, %hi(D_800D558C)
    /* B1EE4 800C16E4 8C55428C */  lw         $v0, %lo(D_800D558C)($v0)
    /* B1EE8 800C16E8 00000000 */  nop
    /* B1EEC 800C16EC AA014494 */  lhu        $a0, 0x1AA($v0)
    /* B1EF0 800C16F0 FFFF6532 */  andi       $a1, $s3, 0xFFFF
    /* B1EF4 800C16F4 CFFF8330 */  andi       $v1, $a0, 0xFFCF
    /* B1EF8 800C16F8 AA0143A4 */  sh         $v1, 0x1AA($v0)
    /* B1EFC 800C16FC AE014294 */  lhu        $v0, 0x1AE($v0)
    /* B1F00 800C1700 00000000 */  nop
    /* B1F04 800C1704 FF074230 */  andi       $v0, $v0, 0x7FF
    /* B1F08 800C1708 14004510 */  beq        $v0, $a1, .L800C175C
    /* B1F0C 800C170C 21180000 */   addu      $v1, $zero, $zero
    /* B1F10 800C1710 01006324 */  addiu      $v1, $v1, 0x1
  .L800C1714:
    /* B1F14 800C1714 010F622C */  sltiu      $v0, $v1, 0xF01
    /* B1F18 800C1718 08004014 */  bnez       $v0, .L800C173C
    /* B1F1C 800C171C 00000000 */   nop
    /* B1F20 800C1720 0180043C */  lui        $a0, %hi(D_8001551C)
    /* B1F24 800C1724 1C558424 */  addiu      $a0, $a0, %lo(D_8001551C)
    /* B1F28 800C1728 0180053C */  lui        $a1, %hi(D_80015550)
    /* B1F2C 800C172C A6B5020C */  jal        func_800AD698
    /* B1F30 800C1730 5055A524 */   addiu     $a1, $a1, %lo(D_80015550)
    /* B1F34 800C1734 D7050308 */  j          .L800C175C
    /* B1F38 800C1738 00000000 */   nop
  .L800C173C:
    /* B1F3C 800C173C 0D80023C */  lui        $v0, %hi(D_800D558C)
    /* B1F40 800C1740 8C55428C */  lw         $v0, %lo(D_800D558C)($v0)
    /* B1F44 800C1744 00000000 */  nop
    /* B1F48 800C1748 AE014294 */  lhu        $v0, 0x1AE($v0)
    /* B1F4C 800C174C 00000000 */  nop
    /* B1F50 800C1750 FF074230 */  andi       $v0, $v0, 0x7FF
    /* B1F54 800C1754 EFFF4514 */  bne        $v0, $a1, .L800C1714
    /* B1F58 800C1758 01006324 */   addiu     $v1, $v1, 0x1
  .L800C175C:
    /* B1F5C 800C175C 2000BF8F */  lw         $ra, 0x20($sp)
    /* B1F60 800C1760 1C00B38F */  lw         $s3, 0x1C($sp)
    /* B1F64 800C1764 1800B28F */  lw         $s2, 0x18($sp)
    /* B1F68 800C1768 1400B18F */  lw         $s1, 0x14($sp)
    /* B1F6C 800C176C 1000B08F */  lw         $s0, 0x10($sp)
    /* B1F70 800C1770 0800E003 */  jr         $ra
    /* B1F74 800C1774 2800BD27 */   addiu     $sp, $sp, 0x28
  alabel D_800C1778
    /* B1F78 800C1778 0D80023C */  lui        $v0, %hi(D_800D55DC)
    /* B1F7C 800C177C DC55428C */  lw         $v0, %lo(D_800D55DC)($v0)
    /* B1F80 800C1780 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B1F84 800C1784 03004014 */  bnez       $v0, .L800C1794
    /* B1F88 800C1788 1000BFAF */   sw        $ra, 0x10($sp)
    /* B1F8C 800C178C 8407030C */  jal        func_800C1E10
    /* B1F90 800C1790 00000000 */   nop
  .L800C1794:
    /* B1F94 800C1794 0D80043C */  lui        $a0, %hi(D_800D558C)
    /* B1F98 800C1798 8C55848C */  lw         $a0, %lo(D_800D558C)($a0)
    /* B1F9C 800C179C 00000000 */  nop
    /* B1FA0 800C17A0 AA018294 */  lhu        $v0, 0x1AA($a0)
    /* B1FA4 800C17A4 00000000 */  nop
    /* B1FA8 800C17A8 CFFF4230 */  andi       $v0, $v0, 0xFFCF
    /* B1FAC 800C17AC AA0182A4 */  sh         $v0, 0x1AA($a0)
    /* B1FB0 800C17B0 AA018294 */  lhu        $v0, 0x1AA($a0)
    /* B1FB4 800C17B4 00000000 */  nop
    /* B1FB8 800C17B8 30004230 */  andi       $v0, $v0, 0x30
    /* B1FBC 800C17BC 0A004010 */  beqz       $v0, .L800C17E8
    /* B1FC0 800C17C0 21180000 */   addu      $v1, $zero, $zero
    /* B1FC4 800C17C4 01006324 */  addiu      $v1, $v1, 0x1
  .L800C17C8:
    /* B1FC8 800C17C8 010F622C */  sltiu      $v0, $v1, 0xF01
    /* B1FCC 800C17CC 06004010 */  beqz       $v0, .L800C17E8
    /* B1FD0 800C17D0 00000000 */   nop
    /* B1FD4 800C17D4 AA018294 */  lhu        $v0, 0x1AA($a0)
    /* B1FD8 800C17D8 00000000 */  nop
    /* B1FDC 800C17DC 30004230 */  andi       $v0, $v0, 0x30
    /* B1FE0 800C17E0 F9FF4014 */  bnez       $v0, .L800C17C8
    /* B1FE4 800C17E4 01006324 */   addiu     $v1, $v1, 0x1
  .L800C17E8:
    /* B1FE8 800C17E8 0D80023C */  lui        $v0, %hi(D_800D55C4)
    /* B1FEC 800C17EC C455428C */  lw         $v0, %lo(D_800D55C4)($v0)
    /* B1FF0 800C17F0 00000000 */  nop
    /* B1FF4 800C17F4 08004010 */  beqz       $v0, .L800C1818
    /* B1FF8 800C17F8 00F0043C */   lui       $a0, (0xF0000009 >> 16)
    /* B1FFC 800C17FC 0D80023C */  lui        $v0, %hi(D_800D55C4)
    /* B2000 800C1800 C455428C */  lw         $v0, %lo(D_800D55C4)($v0)
    /* B2004 800C1804 00000000 */  nop
    /* B2008 800C1808 09F84000 */  jalr       $v0
    /* B200C 800C180C 00000000 */   nop
    /* B2010 800C1810 09060308 */  j          .L800C1824
    /* B2014 800C1814 00000000 */   nop
  .L800C1818:
    /* B2018 800C1818 09008434 */  ori        $a0, $a0, (0xF0000009 & 0xFFFF)
    /* B201C 800C181C 9EDB020C */  jal        func_800B6E78
    /* B2020 800C1820 20000524 */   addiu     $a1, $zero, 0x20
  .L800C1824:
    /* B2024 800C1824 1000BF8F */  lw         $ra, 0x10($sp)
    /* B2028 800C1828 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B202C 800C182C 0800E003 */  jr         $ra
    /* B2030 800C1830 00000000 */   nop
    /* B2034 800C1834 0D80023C */  lui        $v0, %hi(D_800D558C)
    /* B2038 800C1838 8C55428C */  lw         $v0, %lo(D_800D558C)($v0)
    /* B203C 800C183C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* B2040 800C1840 1400B1AF */  sw         $s1, 0x14($sp)
    /* B2044 800C1844 21888000 */  addu       $s1, $a0, $zero
    /* B2048 800C1848 1000B0AF */  sw         $s0, 0x10($sp)
    /* B204C 800C184C 1800BFAF */  sw         $ra, 0x18($sp)
    /* B2050 800C1850 A60145A4 */  sh         $a1, 0x1A6($v0)
    /* B2054 800C1854 8407030C */  jal        func_800C1E10
    /* B2058 800C1858 2180C000 */   addu      $s0, $a2, $zero
    /* B205C 800C185C 0D80033C */  lui        $v1, %hi(D_800D558C)
    /* B2060 800C1860 8C55638C */  lw         $v1, %lo(D_800D558C)($v1)
    /* B2064 800C1864 00000000 */  nop
    /* B2068 800C1868 AA016294 */  lhu        $v0, 0x1AA($v1)
    /* B206C 800C186C 00000000 */  nop
    /* B2070 800C1870 30004234 */  ori        $v0, $v0, 0x30
    /* B2074 800C1874 AA0162A4 */  sh         $v0, 0x1AA($v1)
    /* B2078 800C1878 8407030C */  jal        func_800C1E10
    /* B207C 800C187C 00841000 */   sll       $s0, $s0, 16
    /* B2080 800C1880 7A07030C */  jal        func_800C1DE8
    /* B2084 800C1884 00000000 */   nop
    /* B2088 800C1888 0001043C */  lui        $a0, (0x1000200 >> 16)
    /* B208C 800C188C 00028434 */  ori        $a0, $a0, (0x1000200 & 0xFFFF)
    /* B2090 800C1890 0D80023C */  lui        $v0, %hi(D_800D5590)
    /* B2094 800C1894 9055428C */  lw         $v0, %lo(D_800D5590)($v0)
    /* B2098 800C1898 00000000 */  nop
    /* B209C 800C189C 000051AC */  sw         $s1, 0x0($v0)
    /* B20A0 800C18A0 0D80023C */  lui        $v0, %hi(D_800D5594)
    /* B20A4 800C18A4 9455428C */  lw         $v0, %lo(D_800D5594)($v0)
    /* B20A8 800C18A8 10001036 */  ori        $s0, $s0, 0x10
    /* B20AC 800C18AC 000050AC */  sw         $s0, 0x0($v0)
    /* B20B0 800C18B0 0D80033C */  lui        $v1, %hi(D_800D5598)
    /* B20B4 800C18B4 9855638C */  lw         $v1, %lo(D_800D5598)($v1)
    /* B20B8 800C18B8 01000224 */  addiu      $v0, $zero, 0x1
    /* B20BC 800C18BC 0D80013C */  lui        $at, %hi(D_800D55DC)
    /* B20C0 800C18C0 DC5522AC */  sw         $v0, %lo(D_800D55DC)($at)
    /* B20C4 800C18C4 000064AC */  sw         $a0, 0x0($v1)
    /* B20C8 800C18C8 1800BF8F */  lw         $ra, 0x18($sp)
    /* B20CC 800C18CC 1400B18F */  lw         $s1, 0x14($sp)
    /* B20D0 800C18D0 1000B08F */  lw         $s0, 0x10($sp)
    /* B20D4 800C18D4 0800E003 */  jr         $ra
    /* B20D8 800C18D8 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800C15B8
