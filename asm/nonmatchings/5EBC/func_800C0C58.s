nonmatching func_800C0C58, 0x3CC

glabel func_800C0C58
    /* B1458 800C0C58 D0FBBD27 */  addiu      $sp, $sp, -0x430
    /* B145C 800C0C5C 1C04B3AF */  sw         $s3, 0x41C($sp)
    /* B1460 800C0C60 21988000 */  addu       $s3, $a0, $zero
    /* B1464 800C0C64 1004B0AF */  sw         $s0, 0x410($sp)
    /* B1468 800C0C68 2180A000 */  addu       $s0, $a1, $zero
    /* B146C 800C0C6C 1404B1AF */  sw         $s1, 0x414($sp)
    /* B1470 800C0C70 10001124 */  addiu      $s1, $zero, 0x10
    /* B1474 800C0C74 2404B5AF */  sw         $s5, 0x424($sp)
    /* B1478 800C0C78 21A8E000 */  addu       $s5, $a3, $zero
    /* B147C 800C0C7C 2004B4AF */  sw         $s4, 0x420($sp)
    /* B1480 800C0C80 21A0C000 */  addu       $s4, $a2, $zero
    /* B1484 800C0C84 2804BFAF */  sw         $ra, 0x428($sp)
    /* B1488 800C0C88 EC0F030C */  jal        func_800C3FB0
    /* B148C 800C0C8C 1804B2AF */   sw        $s2, 0x418($sp)
    /* B1490 800C0C90 01001224 */  addiu      $s2, $zero, 0x1
    /* B1494 800C0C94 DA005210 */  beq        $v0, $s2, .L800C1000
    /* B1498 800C0C98 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* B149C 800C0C9C E20F030C */  jal        func_800C3F88
    /* B14A0 800C0CA0 01000424 */   addiu     $a0, $zero, 0x1
    /* B14A4 800C0CA4 00141000 */  sll        $v0, $s0, 16
    /* B14A8 800C0CA8 031C0200 */  sra        $v1, $v0, 16
    /* B14AC 800C0CAC 10006228 */  slti       $v0, $v1, 0x10
    /* B14B0 800C0CB0 2A004010 */  beqz       $v0, .L800C0D5C
    /* B14B4 800C0CB4 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* B14B8 800C0CB8 14006214 */  bne        $v1, $v0, .L800C0D0C
    /* B14BC 800C0CBC 21280000 */   addu      $a1, $zero, $zero
  .L800C0CC0:
    /* B14C0 800C0CC0 1180023C */  lui        $v0, %hi(D_8010A3F0)
    /* B14C4 800C0CC4 21104500 */  addu       $v0, $v0, $a1
    /* B14C8 800C0CC8 F0A34290 */  lbu        $v0, %lo(D_8010A3F0)($v0)
    /* B14CC 800C0CCC 00000000 */  nop
    /* B14D0 800C0CD0 07004010 */  beqz       $v0, .L800C0CF0
    /* B14D4 800C0CD4 01000224 */   addiu     $v0, $zero, 0x1
    /* B14D8 800C0CD8 0100A524 */  addiu      $a1, $a1, 0x1
    /* B14DC 800C0CDC 1000A228 */  slti       $v0, $a1, 0x10
    /* B14E0 800C0CE0 F7FF4014 */  bnez       $v0, .L800C0CC0
    /* B14E4 800C0CE4 00141100 */   sll       $v0, $s1, 16
    /* B14E8 800C0CE8 54030308 */  j          .L800C0D50
    /* B14EC 800C0CEC 03340200 */   sra       $a2, $v0, 16
  .L800C0CF0:
    /* B14F0 800C0CF0 1180013C */  lui        $at, %hi(D_8010A3F0)
    /* B14F4 800C0CF4 21082500 */  addu       $at, $at, $a1
    /* B14F8 800C0CF8 F0A322A0 */  sb         $v0, %lo(D_8010A3F0)($at)
    /* B14FC 800C0CFC 1180023C */  lui        $v0, %hi(D_8010CDD8)
    /* B1500 800C0D00 D8CD4294 */  lhu        $v0, %lo(D_8010CDD8)($v0)
    /* B1504 800C0D04 4F030308 */  j          .L800C0D3C
    /* B1508 800C0D08 2188A000 */   addu      $s1, $a1, $zero
  .L800C0D0C:
    /* B150C 800C0D0C 1180023C */  lui        $v0, %hi(D_8010A3F0)
    /* B1510 800C0D10 21104300 */  addu       $v0, $v0, $v1
    /* B1514 800C0D14 F0A34290 */  lbu        $v0, %lo(D_8010A3F0)($v0)
    /* B1518 800C0D18 00000000 */  nop
    /* B151C 800C0D1C 0B004014 */  bnez       $v0, .L800C0D4C
    /* B1520 800C0D20 00141100 */   sll       $v0, $s1, 16
    /* B1524 800C0D24 1180013C */  lui        $at, %hi(D_8010A3F0)
    /* B1528 800C0D28 21082300 */  addu       $at, $at, $v1
    /* B152C 800C0D2C F0A332A0 */  sb         $s2, %lo(D_8010A3F0)($at)
    /* B1530 800C0D30 1180023C */  lui        $v0, %hi(D_8010CDD8)
    /* B1534 800C0D34 D8CD4294 */  lhu        $v0, %lo(D_8010CDD8)($v0)
    /* B1538 800C0D38 21880002 */  addu       $s1, $s0, $zero
  .L800C0D3C:
    /* B153C 800C0D3C 01004224 */  addiu      $v0, $v0, 0x1
    /* B1540 800C0D40 1180013C */  lui        $at, %hi(D_8010CDD8)
    /* B1544 800C0D44 D8CD22A4 */  sh         $v0, %lo(D_8010CDD8)($at)
    /* B1548 800C0D48 00141100 */  sll        $v0, $s1, 16
  .L800C0D4C:
    /* B154C 800C0D4C 03340200 */  sra        $a2, $v0, 16
  .L800C0D50:
    /* B1550 800C0D50 1000C228 */  slti       $v0, $a2, 0x10
    /* B1554 800C0D54 05004014 */  bnez       $v0, .L800C0D6C
    /* B1558 800C0D58 21386002 */   addu      $a3, $s3, $zero
  .L800C0D5C:
    /* B155C 800C0D5C E20F030C */  jal        func_800C3F88
    /* B1560 800C0D60 21200000 */   addu      $a0, $zero, $zero
    /* B1564 800C0D64 00040308 */  j          .L800C1000
    /* B1568 800C0D68 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800C0D6C:
    /* B156C 800C0D6C 80100600 */  sll        $v0, $a2, 2
    /* B1570 800C0D70 0F80013C */  lui        $at, %hi(D_800EF940)
    /* B1574 800C0D74 21082200 */  addu       $at, $at, $v0
    /* B1578 800C0D78 40F927AC */  sw         $a3, %lo(D_800EF940)($at)
    /* B157C 800C0D7C 5600033C */  lui        $v1, (0x564142 >> 16)
    /* B1580 800C0D80 21206002 */  addu       $a0, $s3, $zero
    /* B1584 800C0D84 0000858C */  lw         $a1, 0x0($a0)
    /* B1588 800C0D88 42416334 */  ori        $v1, $v1, (0x564142 & 0xFFFF)
    /* B158C 800C0D8C 02120500 */  srl        $v0, $a1, 8
    /* B1590 800C0D90 06004310 */  beq        $v0, $v1, .L800C0DAC
    /* B1594 800C0D94 2000E724 */   addiu     $a3, $a3, 0x20
    /* B1598 800C0D98 1180013C */  lui        $at, %hi(D_8010A3F0)
    /* B159C 800C0D9C 21082600 */  addu       $at, $at, $a2
    /* B15A0 800C0DA0 F0A320A0 */  sb         $zero, %lo(D_8010A3F0)($at)
    /* B15A4 800C0DA4 C8030308 */  j          .L800C0F20
    /* B15A8 800C0DA8 21200000 */   addu      $a0, $zero, $zero
  .L800C0DAC:
    /* B15AC 800C0DAC FF00A330 */  andi       $v1, $a1, 0xFF
    /* B15B0 800C0DB0 70000224 */  addiu      $v0, $zero, 0x70
    /* B15B4 800C0DB4 07006214 */  bne        $v1, $v0, .L800C0DD4
    /* B15B8 800C0DB8 40000224 */   addiu     $v0, $zero, 0x40
    /* B15BC 800C0DBC 0400828C */  lw         $v0, 0x4($a0)
    /* B15C0 800C0DC0 00000000 */  nop
    /* B15C4 800C0DC4 05004228 */  slti       $v0, $v0, 0x5
    /* B15C8 800C0DC8 02004014 */  bnez       $v0, .L800C0DD4
    /* B15CC 800C0DCC 40000224 */   addiu     $v0, $zero, 0x40
    /* B15D0 800C0DD0 80000224 */  addiu      $v0, $zero, 0x80
  .L800C0DD4:
    /* B15D4 800C0DD4 0F80013C */  lui        $at, %hi(D_800F106C)
    /* B15D8 800C0DD8 6C1022A4 */  sh         $v0, %lo(D_800F106C)($at)
    /* B15DC 800C0DDC 12008294 */  lhu        $v0, 0x12($a0)
    /* B15E0 800C0DE0 0F80033C */  lui        $v1, %hi(D_800F106C)
    /* B15E4 800C0DE4 6C106384 */  lh         $v1, %lo(D_800F106C)($v1)
    /* B15E8 800C0DE8 00000000 */  nop
    /* B15EC 800C0DEC 2A106200 */  slt        $v0, $v1, $v0
    /* B15F0 800C0DF0 45004014 */  bnez       $v0, .L800C0F08
    /* B15F4 800C0DF4 2190E000 */   addu      $s2, $a3, $zero
    /* B15F8 800C0DF8 00141100 */  sll        $v0, $s1, 16
    /* B15FC 800C0DFC 83130200 */  sra        $v0, $v0, 14
    /* B1600 800C0E00 0F80013C */  lui        $at, %hi(D_800EF8B8)
    /* B1604 800C0E04 21082200 */  addu       $at, $at, $v0
    /* B1608 800C0E08 B8F827AC */  sw         $a3, %lo(D_800EF8B8)($at)
    /* B160C 800C0E0C 00110300 */  sll        $v0, $v1, 4
    /* B1610 800C0E10 21384202 */  addu       $a3, $s2, $v0
    /* B1614 800C0E14 21280000 */  addu       $a1, $zero, $zero
    /* B1618 800C0E18 0C006018 */  blez       $v1, .L800C0E4C
    /* B161C 800C0E1C 21800000 */   addu      $s0, $zero, $zero
    /* B1620 800C0E20 21306000 */  addu       $a2, $v1, $zero
    /* B1624 800C0E24 21184002 */  addu       $v1, $s2, $zero
  .L800C0E28:
    /* B1628 800C0E28 00006290 */  lbu        $v0, 0x0($v1)
    /* B162C 800C0E2C 00000000 */  nop
    /* B1630 800C0E30 02004010 */  beqz       $v0, .L800C0E3C
    /* B1634 800C0E34 080070AC */   sw        $s0, 0x8($v1)
    /* B1638 800C0E38 01001026 */  addiu      $s0, $s0, 0x1
  .L800C0E3C:
    /* B163C 800C0E3C 0100A524 */  addiu      $a1, $a1, 0x1
    /* B1640 800C0E40 2A10A600 */  slt        $v0, $a1, $a2
    /* B1644 800C0E44 F8FF4014 */  bnez       $v0, .L800C0E28
    /* B1648 800C0E48 10006324 */   addiu     $v1, $v1, 0x10
  .L800C0E4C:
    /* B164C 800C0E4C 21800000 */  addu       $s0, $zero, $zero
    /* B1650 800C0E50 21280000 */  addu       $a1, $zero, $zero
    /* B1654 800C0E54 00141100 */  sll        $v0, $s1, 16
    /* B1658 800C0E58 83130200 */  sra        $v0, $v0, 14
    /* B165C 800C0E5C 1000A627 */  addiu      $a2, $sp, 0x10
    /* B1660 800C0E60 0F80013C */  lui        $at, %hi(D_800EF988)
    /* B1664 800C0E64 21082200 */  addu       $at, $at, $v0
    /* B1668 800C0E68 88F927AC */  sw         $a3, %lo(D_800EF988)($at)
    /* B166C 800C0E6C 12008294 */  lhu        $v0, 0x12($a0)
    /* B1670 800C0E70 16009390 */  lbu        $s3, 0x16($a0)
    /* B1674 800C0E74 40120200 */  sll        $v0, $v0, 9
    /* B1678 800C0E78 2138E200 */  addu       $a3, $a3, $v0
    /* B167C 800C0E7C FF006832 */  andi       $t0, $s3, 0xFF
  .L800C0E80:
    /* B1680 800C0E80 2A100501 */  slt        $v0, $t0, $a1
    /* B1684 800C0E84 0B004014 */  bnez       $v0, .L800C0EB4
    /* B1688 800C0E88 00000000 */   nop
    /* B168C 800C0E8C 0400828C */  lw         $v0, 0x4($a0)
    /* B1690 800C0E90 0000E394 */  lhu        $v1, 0x0($a3)
    /* B1694 800C0E94 05004228 */  slti       $v0, $v0, 0x5
    /* B1698 800C0E98 02004014 */  bnez       $v0, .L800C0EA4
    /* B169C 800C0E9C 80100300 */   sll       $v0, $v1, 2
    /* B16A0 800C0EA0 C0100300 */  sll        $v0, $v1, 3
  .L800C0EA4:
    /* B16A4 800C0EA4 0000C2AC */  sw         $v0, 0x0($a2)
    /* B16A8 800C0EA8 0000C28C */  lw         $v0, 0x0($a2)
    /* B16AC 800C0EAC 00000000 */  nop
    /* B16B0 800C0EB0 21800202 */  addu       $s0, $s0, $v0
  .L800C0EB4:
    /* B16B4 800C0EB4 0200E724 */  addiu      $a3, $a3, 0x2
    /* B16B8 800C0EB8 0100A524 */  addiu      $a1, $a1, 0x1
    /* B16BC 800C0EBC 0001A228 */  slti       $v0, $a1, 0x100
    /* B16C0 800C0EC0 EFFF4014 */  bnez       $v0, .L800C0E80
    /* B16C4 800C0EC4 0400C624 */   addiu     $a2, $a2, 0x4
    /* B16C8 800C0EC8 00141400 */  sll        $v0, $s4, 16
    /* B16CC 800C0ECC 09004014 */  bnez       $v0, .L800C0EF4
    /* B16D0 800C0ED0 2138A002 */   addu      $a3, $s5, $zero
    /* B16D4 800C0ED4 C207030C */  jal        func_800C1F08
    /* B16D8 800C0ED8 21200002 */   addu      $a0, $s0, $zero
    /* B16DC 800C0EDC 21384000 */  addu       $a3, $v0, $zero
    /* B16E0 800C0EE0 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* B16E4 800C0EE4 0400E214 */  bne        $a3, $v0, .L800C0EF8
    /* B16E8 800C0EE8 2118F000 */   addu      $v1, $a3, $s0
    /* B16EC 800C0EEC C3030308 */  j          .L800C0F0C
    /* B16F0 800C0EF0 21200000 */   addu      $a0, $zero, $zero
  .L800C0EF4:
    /* B16F4 800C0EF4 2118F000 */  addu       $v1, $a3, $s0
  .L800C0EF8:
    /* B16F8 800C0EF8 0800023C */  lui        $v0, (0x80000 >> 16)
    /* B16FC 800C0EFC 2B104300 */  sltu       $v0, $v0, $v1
    /* B1700 800C0F00 11004010 */  beqz       $v0, .L800C0F48
    /* B1704 800C0F04 21800000 */   addu      $s0, $zero, $zero
  .L800C0F08:
    /* B1708 800C0F08 21200000 */  addu       $a0, $zero, $zero
  .L800C0F0C:
    /* B170C 800C0F0C 00141100 */  sll        $v0, $s1, 16
    /* B1710 800C0F10 03140200 */  sra        $v0, $v0, 16
    /* B1714 800C0F14 1180013C */  lui        $at, %hi(D_8010A3F0)
    /* B1718 800C0F18 21082200 */  addu       $at, $at, $v0
    /* B171C 800C0F1C F0A320A0 */  sb         $zero, %lo(D_8010A3F0)($at)
  .L800C0F20:
    /* B1720 800C0F20 E20F030C */  jal        func_800C3F88
    /* B1724 800C0F24 00000000 */   nop
    /* B1728 800C0F28 1180033C */  lui        $v1, %hi(D_8010CDD8)
    /* B172C 800C0F2C D8CD6394 */  lhu        $v1, %lo(D_8010CDD8)($v1)
    /* B1730 800C0F30 00000000 */  nop
    /* B1734 800C0F34 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* B1738 800C0F38 1180013C */  lui        $at, %hi(D_8010CDD8)
    /* B173C 800C0F3C D8CD23A4 */  sh         $v1, %lo(D_8010CDD8)($at)
    /* B1740 800C0F40 00040308 */  j          .L800C1000
    /* B1744 800C0F44 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800C0F48:
    /* B1748 800C0F48 00141100 */  sll        $v0, $s1, 16
    /* B174C 800C0F4C 83130200 */  sra        $v0, $v0, 14
    /* B1750 800C0F50 1180013C */  lui        $at, %hi(D_8010CDE0)
    /* B1754 800C0F54 21082200 */  addu       $at, $at, $v0
    /* B1758 800C0F58 E0CD27AC */  sw         $a3, %lo(D_8010CDE0)($at)
    /* B175C 800C0F5C FF006332 */  andi       $v1, $s3, 0xFF
    /* B1760 800C0F60 00006228 */  slti       $v0, $v1, 0x0
    /* B1764 800C0F64 1C004014 */  bnez       $v0, .L800C0FD8
    /* B1768 800C0F68 21280000 */   addu      $a1, $zero, $zero
    /* B176C 800C0F6C 21306000 */  addu       $a2, $v1, $zero
    /* B1770 800C0F70 1000A427 */  addiu      $a0, $sp, 0x10
  .L800C0F74:
    /* B1774 800C0F74 0000828C */  lw         $v0, 0x0($a0)
    /* B1778 800C0F78 00000000 */  nop
    /* B177C 800C0F7C 21800202 */  addu       $s0, $s0, $v0
    /* B1780 800C0F80 0100A230 */  andi       $v0, $a1, 0x1
    /* B1784 800C0F84 09004014 */  bnez       $v0, .L800C0FAC
    /* B1788 800C0F88 C21F0500 */   srl       $v1, $a1, 31
    /* B178C 800C0F8C 2118A300 */  addu       $v1, $a1, $v1
    /* B1790 800C0F90 43180300 */  sra        $v1, $v1, 1
    /* B1794 800C0F94 00190300 */  sll        $v1, $v1, 4
    /* B1798 800C0F98 21187200 */  addu       $v1, $v1, $s2
    /* B179C 800C0F9C 2110F000 */  addu       $v0, $a3, $s0
    /* B17A0 800C0FA0 C2100200 */  srl        $v0, $v0, 3
    /* B17A4 800C0FA4 F2030308 */  j          .L800C0FC8
    /* B17A8 800C0FA8 0C0062A4 */   sh        $v0, 0xC($v1)
  .L800C0FAC:
    /* B17AC 800C0FAC 2118A300 */  addu       $v1, $a1, $v1
    /* B17B0 800C0FB0 43180300 */  sra        $v1, $v1, 1
    /* B17B4 800C0FB4 00190300 */  sll        $v1, $v1, 4
    /* B17B8 800C0FB8 21187200 */  addu       $v1, $v1, $s2
    /* B17BC 800C0FBC 2110F000 */  addu       $v0, $a3, $s0
    /* B17C0 800C0FC0 C2100200 */  srl        $v0, $v0, 3
    /* B17C4 800C0FC4 0E0062A4 */  sh         $v0, 0xE($v1)
  .L800C0FC8:
    /* B17C8 800C0FC8 0100A524 */  addiu      $a1, $a1, 0x1
    /* B17CC 800C0FCC 2A10C500 */  slt        $v0, $a2, $a1
    /* B17D0 800C0FD0 E8FF4010 */  beqz       $v0, .L800C0F74
    /* B17D4 800C0FD4 04008424 */   addiu     $a0, $a0, 0x4
  .L800C0FD8:
    /* B17D8 800C0FD8 00141100 */  sll        $v0, $s1, 16
    /* B17DC 800C0FDC 03140200 */  sra        $v0, $v0, 16
    /* B17E0 800C0FE0 80180200 */  sll        $v1, $v0, 2
    /* B17E4 800C0FE4 1180013C */  lui        $at, %hi(D_8010CD98)
    /* B17E8 800C0FE8 21082300 */  addu       $at, $at, $v1
    /* B17EC 800C0FEC 98CD30AC */  sw         $s0, %lo(D_8010CD98)($at)
    /* B17F0 800C0FF0 02000324 */  addiu      $v1, $zero, 0x2
    /* B17F4 800C0FF4 1180013C */  lui        $at, %hi(D_8010A3F0)
    /* B17F8 800C0FF8 21082200 */  addu       $at, $at, $v0
    /* B17FC 800C0FFC F0A323A0 */  sb         $v1, %lo(D_8010A3F0)($at)
  .L800C1000:
    /* B1800 800C1000 2804BF8F */  lw         $ra, 0x428($sp)
    /* B1804 800C1004 2404B58F */  lw         $s5, 0x424($sp)
    /* B1808 800C1008 2004B48F */  lw         $s4, 0x420($sp)
    /* B180C 800C100C 1C04B38F */  lw         $s3, 0x41C($sp)
    /* B1810 800C1010 1804B28F */  lw         $s2, 0x418($sp)
    /* B1814 800C1014 1404B18F */  lw         $s1, 0x414($sp)
    /* B1818 800C1018 1004B08F */  lw         $s0, 0x410($sp)
    /* B181C 800C101C 0800E003 */  jr         $ra
    /* B1820 800C1020 3004BD27 */   addiu     $sp, $sp, 0x430
endlabel func_800C0C58
    /* B1824 800C1024 00000000 */  nop
