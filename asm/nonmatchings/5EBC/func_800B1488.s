nonmatching func_800B1488, 0x28C

glabel func_800B1488
    /* A1C88 800B1488 00008F84 */  lh         $t7, 0x0($a0)
    /* A1C8C 800B148C 2110A000 */  addu       $v0, $a1, $zero
    /* A1C90 800B1490 0E00E105 */  bgez       $t7, .L800B14CC
    /* A1C94 800B1494 FF0FF931 */   andi      $t9, $t7, 0xFFF
    /* A1C98 800B1498 23780F00 */  negu       $t7, $t7
    /* A1C9C 800B149C 0100E105 */  bgez       $t7, .L800B14A4
    /* A1CA0 800B14A0 FF0FEF31 */   andi      $t7, $t7, 0xFFF
  .L800B14A4:
    /* A1CA4 800B14A4 80C00F00 */  sll        $t8, $t7, 2
    /* A1CA8 800B14A8 0D80193C */  lui        $t9, %hi(D_800CED64)
    /* A1CAC 800B14AC 21C83803 */  addu       $t9, $t9, $t8
    /* A1CB0 800B14B0 64ED398F */  lw         $t9, %lo(D_800CED64)($t9)
    /* A1CB4 800B14B4 00000000 */  nop
    /* A1CB8 800B14B8 00C41900 */  sll        $t8, $t9, 16
    /* A1CBC 800B14BC 03C41800 */  sra        $t8, $t8, 16
    /* A1CC0 800B14C0 23581800 */  negu       $t3, $t8
    /* A1CC4 800B14C4 3BC50208 */  j          .L800B14EC
    /* A1CC8 800B14C8 03441900 */   sra       $t0, $t9, 16
  .L800B14CC:
    /* A1CCC 800B14CC 80C01900 */  sll        $t8, $t9, 2
    /* A1CD0 800B14D0 0D80193C */  lui        $t9, %hi(D_800CED64)
    /* A1CD4 800B14D4 21C83803 */  addu       $t9, $t9, $t8
    /* A1CD8 800B14D8 64ED398F */  lw         $t9, %lo(D_800CED64)($t9)
    /* A1CDC 800B14DC 00000000 */  nop
    /* A1CE0 800B14E0 00C41900 */  sll        $t8, $t9, 16
    /* A1CE4 800B14E4 035C1800 */  sra        $t3, $t8, 16
    /* A1CE8 800B14E8 03441900 */  sra        $t0, $t9, 16
  .L800B14EC:
    /* A1CEC 800B14EC 02008F84 */  lh         $t7, 0x2($a0)
    /* A1CF0 800B14F0 00000000 */  nop
    /* A1CF4 800B14F4 0E00E105 */  bgez       $t7, .L800B1530
    /* A1CF8 800B14F8 FF0FF931 */   andi      $t9, $t7, 0xFFF
    /* A1CFC 800B14FC 23780F00 */  negu       $t7, $t7
    /* A1D00 800B1500 0100E105 */  bgez       $t7, .L800B1508
    /* A1D04 800B1504 FF0FEF31 */   andi      $t7, $t7, 0xFFF
  .L800B1508:
    /* A1D08 800B1508 80C00F00 */  sll        $t8, $t7, 2
    /* A1D0C 800B150C 0D80193C */  lui        $t9, %hi(D_800CED64)
    /* A1D10 800B1510 21C83803 */  addu       $t9, $t9, $t8
    /* A1D14 800B1514 64ED398F */  lw         $t9, %lo(D_800CED64)($t9)
    /* A1D18 800B1518 00000000 */  nop
    /* A1D1C 800B151C 00641900 */  sll        $t4, $t9, 16
    /* A1D20 800B1520 03640C00 */  sra        $t4, $t4, 16
    /* A1D24 800B1524 23700C00 */  negu       $t6, $t4
    /* A1D28 800B1528 55C50208 */  j          .L800B1554
    /* A1D2C 800B152C 034C1900 */   sra       $t1, $t9, 16
  .L800B1530:
    /* A1D30 800B1530 80C01900 */  sll        $t8, $t9, 2
    /* A1D34 800B1534 0D80193C */  lui        $t9, %hi(D_800CED64)
    /* A1D38 800B1538 21C83803 */  addu       $t9, $t9, $t8
    /* A1D3C 800B153C 64ED398F */  lw         $t9, %lo(D_800CED64)($t9)
    /* A1D40 800B1540 00000000 */  nop
    /* A1D44 800B1544 00741900 */  sll        $t6, $t9, 16
    /* A1D48 800B1548 03740E00 */  sra        $t6, $t6, 16
    /* A1D4C 800B154C 23600E00 */  negu       $t4, $t6
    /* A1D50 800B1550 034C1900 */  sra        $t1, $t9, 16
  .L800B1554:
    /* A1D54 800B1554 19002B01 */  multu      $t1, $t3
    /* A1D58 800B1558 04008F84 */  lh         $t7, 0x4($a0)
    /* A1D5C 800B155C 0400AEA4 */  sh         $t6, 0x4($a1)
    /* A1D60 800B1560 12C00000 */  mflo       $t8
    /* A1D64 800B1564 23C81800 */  negu       $t9, $t8
    /* A1D68 800B1568 03731900 */  sra        $t6, $t9, 12
    /* A1D6C 800B156C 19002801 */  multu      $t1, $t0
    /* A1D70 800B1570 0A00AEA4 */  sh         $t6, 0xA($a1)
    /* A1D74 800B1574 1100E105 */  bgez       $t7, .L800B15BC
    /* A1D78 800B1578 FF0FF931 */   andi      $t9, $t7, 0xFFF
    /* A1D7C 800B157C 12C00000 */  mflo       $t8
    /* A1D80 800B1580 03731800 */  sra        $t6, $t8, 12
    /* A1D84 800B1584 1000AEA4 */  sh         $t6, 0x10($a1)
    /* A1D88 800B1588 23780F00 */  negu       $t7, $t7
    /* A1D8C 800B158C 0100E105 */  bgez       $t7, .L800B1594
    /* A1D90 800B1590 FF0FEF31 */   andi      $t7, $t7, 0xFFF
  .L800B1594:
    /* A1D94 800B1594 80C00F00 */  sll        $t8, $t7, 2
    /* A1D98 800B1598 0D80193C */  lui        $t9, %hi(D_800CED64)
    /* A1D9C 800B159C 21C83803 */  addu       $t9, $t9, $t8
    /* A1DA0 800B15A0 64ED398F */  lw         $t9, %lo(D_800CED64)($t9)
    /* A1DA4 800B15A4 00000000 */  nop
    /* A1DA8 800B15A8 00C41900 */  sll        $t8, $t9, 16
    /* A1DAC 800B15AC 03C41800 */  sra        $t8, $t8, 16
    /* A1DB0 800B15B0 23681800 */  negu       $t5, $t8
    /* A1DB4 800B15B4 7AC50208 */  j          .L800B15E8
    /* A1DB8 800B15B8 03541900 */   sra       $t2, $t9, 16
  .L800B15BC:
    /* A1DBC 800B15BC 12780000 */  mflo       $t7
    /* A1DC0 800B15C0 03730F00 */  sra        $t6, $t7, 12
    /* A1DC4 800B15C4 1000AEA4 */  sh         $t6, 0x10($a1)
    /* A1DC8 800B15C8 80C01900 */  sll        $t8, $t9, 2
    /* A1DCC 800B15CC 0D80193C */  lui        $t9, %hi(D_800CED64)
    /* A1DD0 800B15D0 21C83803 */  addu       $t9, $t9, $t8
    /* A1DD4 800B15D4 64ED398F */  lw         $t9, %lo(D_800CED64)($t9)
    /* A1DD8 800B15D8 00000000 */  nop
    /* A1DDC 800B15DC 00C41900 */  sll        $t8, $t9, 16
    /* A1DE0 800B15E0 036C1800 */  sra        $t5, $t8, 16
    /* A1DE4 800B15E4 03541900 */  sra        $t2, $t9, 16
  .L800B15E8:
    /* A1DE8 800B15E8 19004901 */  multu      $t2, $t1
    /* A1DEC 800B15EC 00000000 */  nop
    /* A1DF0 800B15F0 00000000 */  nop
    /* A1DF4 800B15F4 12780000 */  mflo       $t7
    /* A1DF8 800B15F8 03730F00 */  sra        $t6, $t7, 12
    /* A1DFC 800B15FC 0000AEA4 */  sh         $t6, 0x0($a1)
    /* A1E00 800B1600 1900A901 */  multu      $t5, $t1
    /* A1E04 800B1604 00000000 */  nop
    /* A1E08 800B1608 00000000 */  nop
    /* A1E0C 800B160C 12780000 */  mflo       $t7
    /* A1E10 800B1610 23700F00 */  negu       $t6, $t7
    /* A1E14 800B1614 037B0E00 */  sra        $t7, $t6, 12
    /* A1E18 800B1618 19004C01 */  multu      $t2, $t4
    /* A1E1C 800B161C 0200AFA4 */  sh         $t7, 0x2($a1)
    /* A1E20 800B1620 00000000 */  nop
    /* A1E24 800B1624 12780000 */  mflo       $t7
    /* A1E28 800B1628 03C30F00 */  sra        $t8, $t7, 12
    /* A1E2C 800B162C 00000000 */  nop
    /* A1E30 800B1630 19000B03 */  multu      $t8, $t3
    /* A1E34 800B1634 00000000 */  nop
    /* A1E38 800B1638 00000000 */  nop
    /* A1E3C 800B163C 12780000 */  mflo       $t7
    /* A1E40 800B1640 03730F00 */  sra        $t6, $t7, 12
    /* A1E44 800B1644 00000000 */  nop
    /* A1E48 800B1648 1900A801 */  multu      $t5, $t0
    /* A1E4C 800B164C 00000000 */  nop
    /* A1E50 800B1650 00000000 */  nop
    /* A1E54 800B1654 12780000 */  mflo       $t7
    /* A1E58 800B1658 03CB0F00 */  sra        $t9, $t7, 12
    /* A1E5C 800B165C 23782E03 */  subu       $t7, $t9, $t6
    /* A1E60 800B1660 19000803 */  multu      $t8, $t0
    /* A1E64 800B1664 0600AFA4 */  sh         $t7, 0x6($a1)
    /* A1E68 800B1668 00000000 */  nop
    /* A1E6C 800B166C 12700000 */  mflo       $t6
    /* A1E70 800B1670 037B0E00 */  sra        $t7, $t6, 12
    /* A1E74 800B1674 00000000 */  nop
    /* A1E78 800B1678 1900AB01 */  multu      $t5, $t3
    /* A1E7C 800B167C 00000000 */  nop
    /* A1E80 800B1680 00000000 */  nop
    /* A1E84 800B1684 12700000 */  mflo       $t6
    /* A1E88 800B1688 03CB0E00 */  sra        $t9, $t6, 12
    /* A1E8C 800B168C 21702F03 */  addu       $t6, $t9, $t7
    /* A1E90 800B1690 1900AC01 */  multu      $t5, $t4
    /* A1E94 800B1694 0C00AEA4 */  sh         $t6, 0xC($a1)
    /* A1E98 800B1698 00000000 */  nop
    /* A1E9C 800B169C 12780000 */  mflo       $t7
    /* A1EA0 800B16A0 03C30F00 */  sra        $t8, $t7, 12
    /* A1EA4 800B16A4 00000000 */  nop
    /* A1EA8 800B16A8 19000B03 */  multu      $t8, $t3
    /* A1EAC 800B16AC 00000000 */  nop
    /* A1EB0 800B16B0 00000000 */  nop
    /* A1EB4 800B16B4 12780000 */  mflo       $t7
    /* A1EB8 800B16B8 03730F00 */  sra        $t6, $t7, 12
    /* A1EBC 800B16BC 00000000 */  nop
    /* A1EC0 800B16C0 19004801 */  multu      $t2, $t0
    /* A1EC4 800B16C4 00000000 */  nop
    /* A1EC8 800B16C8 00000000 */  nop
    /* A1ECC 800B16CC 12780000 */  mflo       $t7
    /* A1ED0 800B16D0 03CB0F00 */  sra        $t9, $t7, 12
    /* A1ED4 800B16D4 21782E03 */  addu       $t7, $t9, $t6
    /* A1ED8 800B16D8 19000803 */  multu      $t8, $t0
    /* A1EDC 800B16DC 0800AFA4 */  sh         $t7, 0x8($a1)
    /* A1EE0 800B16E0 00000000 */  nop
    /* A1EE4 800B16E4 12700000 */  mflo       $t6
    /* A1EE8 800B16E8 037B0E00 */  sra        $t7, $t6, 12
    /* A1EEC 800B16EC 00000000 */  nop
    /* A1EF0 800B16F0 19004B01 */  multu      $t2, $t3
    /* A1EF4 800B16F4 00000000 */  nop
    /* A1EF8 800B16F8 00000000 */  nop
    /* A1EFC 800B16FC 12700000 */  mflo       $t6
    /* A1F00 800B1700 03CB0E00 */  sra        $t9, $t6, 12
    /* A1F04 800B1704 23702F03 */  subu       $t6, $t9, $t7
    /* A1F08 800B1708 0E00AEA4 */  sh         $t6, 0xE($a1)
    /* A1F0C 800B170C 0800E003 */  jr         $ra
    /* A1F10 800B1710 00000000 */   nop
endlabel func_800B1488
    /* A1F14 800B1714 00000000 */  nop
