nonmatching func_800B0D84, 0xEC

glabel func_800B0D84
    /* A1584 800B0D84 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A1588 800B0D88 1000B0AF */  sw         $s0, 0x10($sp)
    /* A158C 800B0D8C 21808000 */  addu       $s0, $a0, $zero
    /* A1590 800B0D90 1400B1AF */  sw         $s1, 0x14($sp)
    /* A1594 800B0D94 2188A000 */  addu       $s1, $a1, $zero
    /* A1598 800B0D98 0180043C */  lui        $a0, %hi(D_80014F60)
    /* A159C 800B0D9C 604F8424 */  addiu      $a0, $a0, %lo(D_80014F60)
    /* A15A0 800B0DA0 1800BFAF */  sw         $ra, 0x18($sp)
    /* A15A4 800B0DA4 67B9020C */  jal        func_800AE59C
    /* A15A8 800B0DA8 21280002 */   addu      $a1, $s0, $zero
    /* A15AC 800B0DAC 46E9020C */  jal        func_800BA518
    /* A15B0 800B0DB0 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* A15B4 800B0DB4 0D80033C */  lui        $v1, %hi(D_800CEBA8)
    /* A15B8 800B0DB8 A8EB638C */  lw         $v1, %lo(D_800CEBA8)($v1)
    /* A15BC 800B0DBC F0004224 */  addiu      $v0, $v0, 0xF0
    /* A15C0 800B0DC0 0D80013C */  lui        $at, %hi(D_800CEBD0)
    /* A15C4 800B0DC4 D0EB22AC */  sw         $v0, %lo(D_800CEBD0)($at)
    /* A15C8 800B0DC8 0D80013C */  lui        $at, %hi(D_800CEBD4)
    /* A15CC 800B0DCC D4EB20AC */  sw         $zero, %lo(D_800CEBD4)($at)
    /* A15D0 800B0DD0 0000628C */  lw         $v0, 0x0($v1)
    /* A15D4 800B0DD4 80C30208 */  j          .L800B0E00
    /* A15D8 800B0DD8 0001033C */   lui       $v1, (0x1000000 >> 16)
  .L800B0DDC:
    /* A15DC 800B0DDC ADC2020C */  jal        func_800B0AB4
    /* A15E0 800B0DE0 00000000 */   nop
    /* A15E4 800B0DE4 1D004014 */  bnez       $v0, .L800B0E5C
    /* A15E8 800B0DE8 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* A15EC 800B0DEC 0D80023C */  lui        $v0, %hi(D_800CEBA8)
    /* A15F0 800B0DF0 A8EB428C */  lw         $v0, %lo(D_800CEBA8)($v0)
    /* A15F4 800B0DF4 00000000 */  nop
    /* A15F8 800B0DF8 0000428C */  lw         $v0, 0x0($v0)
    /* A15FC 800B0DFC 0001033C */  lui        $v1, (0x1000000 >> 16)
  .L800B0E00:
    /* A1600 800B0E00 24104300 */  and        $v0, $v0, $v1
    /* A1604 800B0E04 F5FF4014 */  bnez       $v0, .L800B0DDC
    /* A1608 800B0E08 00000000 */   nop
    /* A160C 800B0E0C 0D80023C */  lui        $v0, %hi(D_800CEB9C)
    /* A1610 800B0E10 9CEB428C */  lw         $v0, %lo(D_800CEB9C)($v0)
    /* A1614 800B0E14 00000000 */  nop
    /* A1618 800B0E18 0000428C */  lw         $v0, 0x0($v0)
    /* A161C 800B0E1C 0004033C */  lui        $v1, (0x4000000 >> 16)
    /* A1620 800B0E20 24104300 */  and        $v0, $v0, $v1
    /* A1624 800B0E24 EDFF4010 */  beqz       $v0, .L800B0DDC
    /* A1628 800B0E28 00000000 */   nop
    /* A162C 800B0E2C 0B80053C */  lui        $a1, %hi(func_800B10B0)
    /* A1630 800B0E30 B010A524 */  addiu      $a1, $a1, %lo(func_800B10B0)
    /* A1634 800B0E34 E6E9020C */  jal        func_800BA798
    /* A1638 800B0E38 02000424 */   addiu     $a0, $zero, 0x2
    /* A163C 800B0E3C 0D80023C */  lui        $v0, %hi(D_800CEABC)
    /* A1640 800B0E40 BCEA428C */  lw         $v0, %lo(D_800CEABC)($v0)
    /* A1644 800B0E44 21200002 */  addu       $a0, $s0, $zero
    /* A1648 800B0E48 1C00428C */  lw         $v0, 0x1C($v0)
    /* A164C 800B0E4C 00000000 */  nop
    /* A1650 800B0E50 09F84000 */  jalr       $v0
    /* A1654 800B0E54 21282002 */   addu      $a1, $s1, $zero
    /* A1658 800B0E58 21100000 */  addu       $v0, $zero, $zero
  .L800B0E5C:
    /* A165C 800B0E5C 1800BF8F */  lw         $ra, 0x18($sp)
    /* A1660 800B0E60 1400B18F */  lw         $s1, 0x14($sp)
    /* A1664 800B0E64 1000B08F */  lw         $s0, 0x10($sp)
    /* A1668 800B0E68 0800E003 */  jr         $ra
    /* A166C 800B0E6C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800B0D84
