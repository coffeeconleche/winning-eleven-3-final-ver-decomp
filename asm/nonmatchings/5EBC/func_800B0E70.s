nonmatching func_800B0E70, 0x144

glabel func_800B0E70
    /* A1670 800B0E70 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A1674 800B0E74 1000B0AF */  sw         $s0, 0x10($sp)
    /* A1678 800B0E78 21808000 */  addu       $s0, $a0, $zero
    /* A167C 800B0E7C 1800B2AF */  sw         $s2, 0x18($sp)
    /* A1680 800B0E80 2190A000 */  addu       $s2, $a1, $zero
    /* A1684 800B0E84 1400B1AF */  sw         $s1, 0x14($sp)
    /* A1688 800B0E88 2188C000 */  addu       $s1, $a2, $zero
    /* A168C 800B0E8C 0180043C */  lui        $a0, %hi(D_80014F6C)
    /* A1690 800B0E90 6C4F8424 */  addiu      $a0, $a0, %lo(D_80014F6C)
    /* A1694 800B0E94 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* A1698 800B0E98 67B9020C */  jal        func_800AE59C
    /* A169C 800B0E9C 21280002 */   addu      $a1, $s0, $zero
    /* A16A0 800B0EA0 46E9020C */  jal        func_800BA518
    /* A16A4 800B0EA4 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* A16A8 800B0EA8 0D80033C */  lui        $v1, %hi(D_800CEBA8)
    /* A16AC 800B0EAC A8EB638C */  lw         $v1, %lo(D_800CEBA8)($v1)
    /* A16B0 800B0EB0 F0004224 */  addiu      $v0, $v0, 0xF0
    /* A16B4 800B0EB4 0D80013C */  lui        $at, %hi(D_800CEBD0)
    /* A16B8 800B0EB8 D0EB22AC */  sw         $v0, %lo(D_800CEBD0)($at)
    /* A16BC 800B0EBC 0D80013C */  lui        $at, %hi(D_800CEBD4)
    /* A16C0 800B0EC0 D4EB20AC */  sw         $zero, %lo(D_800CEBD4)($at)
    /* A16C4 800B0EC4 0000628C */  lw         $v0, 0x0($v1)
    /* A16C8 800B0EC8 BDC30208 */  j          .L800B0EF4
    /* A16CC 800B0ECC 0001033C */   lui       $v1, (0x1000000 >> 16)
  .L800B0ED0:
    /* A16D0 800B0ED0 ADC2020C */  jal        func_800B0AB4
    /* A16D4 800B0ED4 00000000 */   nop
    /* A16D8 800B0ED8 30004014 */  bnez       $v0, .L800B0F9C
    /* A16DC 800B0EDC FFFF0224 */   addiu     $v0, $zero, -0x1
    /* A16E0 800B0EE0 0D80023C */  lui        $v0, %hi(D_800CEBA8)
    /* A16E4 800B0EE4 A8EB428C */  lw         $v0, %lo(D_800CEBA8)($v0)
    /* A16E8 800B0EE8 00000000 */  nop
    /* A16EC 800B0EEC 0000428C */  lw         $v0, 0x0($v0)
    /* A16F0 800B0EF0 0001033C */  lui        $v1, (0x1000000 >> 16)
  .L800B0EF4:
    /* A16F4 800B0EF4 24104300 */  and        $v0, $v0, $v1
    /* A16F8 800B0EF8 F5FF4014 */  bnez       $v0, .L800B0ED0
    /* A16FC 800B0EFC 00000000 */   nop
    /* A1700 800B0F00 0D80023C */  lui        $v0, %hi(D_800CEB9C)
    /* A1704 800B0F04 9CEB428C */  lw         $v0, %lo(D_800CEB9C)($v0)
    /* A1708 800B0F08 00000000 */  nop
    /* A170C 800B0F0C 0000428C */  lw         $v0, 0x0($v0)
    /* A1710 800B0F10 0004033C */  lui        $v1, (0x4000000 >> 16)
    /* A1714 800B0F14 24104300 */  and        $v0, $v0, $v1
    /* A1718 800B0F18 EDFF4010 */  beqz       $v0, .L800B0ED0
    /* A171C 800B0F1C 00000000 */   nop
    /* A1720 800B0F20 0B80053C */  lui        $a1, %hi(func_800B10B0)
    /* A1724 800B0F24 B010A524 */  addiu      $a1, $a1, %lo(func_800B10B0)
    /* A1728 800B0F28 E6E9020C */  jal        func_800BA798
    /* A172C 800B0F2C 02000424 */   addiu     $a0, $zero, 0x2
    /* A1730 800B0F30 04000286 */  lh         $v0, 0x4($s0)
    /* A1734 800B0F34 00000000 */  nop
    /* A1738 800B0F38 18004010 */  beqz       $v0, .L800B0F9C
    /* A173C 800B0F3C FFFF0224 */   addiu     $v0, $zero, -0x1
    /* A1740 800B0F40 06000286 */  lh         $v0, 0x6($s0)
    /* A1744 800B0F44 00000000 */  nop
    /* A1748 800B0F48 03004014 */  bnez       $v0, .L800B0F58
    /* A174C 800B0F4C 00141100 */   sll       $v0, $s1, 16
    /* A1750 800B0F50 E7C30208 */  j          .L800B0F9C
    /* A1754 800B0F54 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800B0F58:
    /* A1758 800B0F58 FFFF4332 */  andi       $v1, $s2, 0xFFFF
    /* A175C 800B0F5C 25104300 */  or         $v0, $v0, $v1
    /* A1760 800B0F60 0000058E */  lw         $a1, 0x0($s0)
    /* A1764 800B0F64 0D80033C */  lui        $v1, %hi(D_800CEABC)
    /* A1768 800B0F68 BCEA638C */  lw         $v1, %lo(D_800CEABC)($v1)
    /* A176C 800B0F6C 0D80043C */  lui        $a0, %hi(D_800CEB64)
    /* A1770 800B0F70 64EB8424 */  addiu      $a0, $a0, %lo(D_800CEB64)
    /* A1774 800B0F74 040082AC */  sw         $v0, 0x4($a0)
    /* A1778 800B0F78 000085AC */  sw         $a1, 0x0($a0)
    /* A177C 800B0F7C 0400028E */  lw         $v0, 0x4($s0)
    /* A1780 800B0F80 00000000 */  nop
    /* A1784 800B0F84 080082AC */  sw         $v0, 0x8($a0)
    /* A1788 800B0F88 1800628C */  lw         $v0, 0x18($v1)
    /* A178C 800B0F8C 00000000 */  nop
    /* A1790 800B0F90 09F84000 */  jalr       $v0
    /* A1794 800B0F94 F8FF8424 */   addiu     $a0, $a0, -0x8
    /* A1798 800B0F98 21100000 */  addu       $v0, $zero, $zero
  .L800B0F9C:
    /* A179C 800B0F9C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* A17A0 800B0FA0 1800B28F */  lw         $s2, 0x18($sp)
    /* A17A4 800B0FA4 1400B18F */  lw         $s1, 0x14($sp)
    /* A17A8 800B0FA8 1000B08F */  lw         $s0, 0x10($sp)
    /* A17AC 800B0FAC 0800E003 */  jr         $ra
    /* A17B0 800B0FB0 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800B0E70
