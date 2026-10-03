nonmatching func_800AE59C, 0x11C

glabel func_800AE59C
    /* 9ED9C 800AE59C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9EDA0 800AE5A0 21408000 */  addu       $t0, $a0, $zero
    /* 9EDA4 800AE5A4 1800B0AF */  sw         $s0, 0x18($sp)
    /* 9EDA8 800AE5A8 0D80043C */  lui        $a0, %hi(D_800CEAC6)
    /* 9EDAC 800AE5AC C6EA8424 */  addiu      $a0, $a0, %lo(D_800CEAC6)
    /* 9EDB0 800AE5B0 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 9EDB4 800AE5B4 00008390 */  lbu        $v1, 0x0($a0)
    /* 9EDB8 800AE5B8 01000224 */  addiu      $v0, $zero, 0x1
    /* 9EDBC 800AE5BC 06006210 */  beq        $v1, $v0, .L800AE5D8
    /* 9EDC0 800AE5C0 2180A000 */   addu      $s0, $a1, $zero
    /* 9EDC4 800AE5C4 02000224 */  addiu      $v0, $zero, 0x2
    /* 9EDC8 800AE5C8 26006210 */  beq        $v1, $v0, .L800AE664
    /* 9EDCC 800AE5CC 00000000 */   nop
    /* 9EDD0 800AE5D0 AAB90208 */  j          .L800AE6A8
    /* 9EDD4 800AE5D4 00000000 */   nop
  .L800AE5D8:
    /* 9EDD8 800AE5D8 04000586 */  lh         $a1, 0x4($s0)
    /* 9EDDC 800AE5DC 02008384 */  lh         $v1, 0x2($a0)
    /* 9EDE0 800AE5E0 00000000 */  nop
    /* 9EDE4 800AE5E4 2A106500 */  slt        $v0, $v1, $a1
    /* 9EDE8 800AE5E8 1B004014 */  bnez       $v0, .L800AE658
    /* 9EDEC 800AE5EC 00000000 */   nop
    /* 9EDF0 800AE5F0 00000786 */  lh         $a3, 0x0($s0)
    /* 9EDF4 800AE5F4 00000000 */  nop
    /* 9EDF8 800AE5F8 2110A700 */  addu       $v0, $a1, $a3
    /* 9EDFC 800AE5FC 2A106200 */  slt        $v0, $v1, $v0
    /* 9EE00 800AE600 15004014 */  bnez       $v0, .L800AE658
    /* 9EE04 800AE604 00000000 */   nop
    /* 9EE08 800AE608 02000386 */  lh         $v1, 0x2($s0)
    /* 9EE0C 800AE60C 04008484 */  lh         $a0, 0x4($a0)
    /* 9EE10 800AE610 00000000 */  nop
    /* 9EE14 800AE614 2A108300 */  slt        $v0, $a0, $v1
    /* 9EE18 800AE618 0F004014 */  bnez       $v0, .L800AE658
    /* 9EE1C 800AE61C 00000000 */   nop
    /* 9EE20 800AE620 06000686 */  lh         $a2, 0x6($s0)
    /* 9EE24 800AE624 00000000 */  nop
    /* 9EE28 800AE628 21106600 */  addu       $v0, $v1, $a2
    /* 9EE2C 800AE62C 2A108200 */  slt        $v0, $a0, $v0
    /* 9EE30 800AE630 09004014 */  bnez       $v0, .L800AE658
    /* 9EE34 800AE634 00000000 */   nop
    /* 9EE38 800AE638 0700A018 */  blez       $a1, .L800AE658
    /* 9EE3C 800AE63C 00000000 */   nop
    /* 9EE40 800AE640 0500E004 */  bltz       $a3, .L800AE658
    /* 9EE44 800AE644 00000000 */   nop
    /* 9EE48 800AE648 03006004 */  bltz       $v1, .L800AE658
    /* 9EE4C 800AE64C 00000000 */   nop
    /* 9EE50 800AE650 1500C01C */  bgtz       $a2, .L800AE6A8
    /* 9EE54 800AE654 00000000 */   nop
  .L800AE658:
    /* 9EE58 800AE658 0180043C */  lui        $a0, %hi(D_80014F18)
    /* 9EE5C 800AE65C 9BB90208 */  j          .L800AE66C
    /* 9EE60 800AE660 184F8424 */   addiu     $a0, $a0, %lo(D_80014F18)
  .L800AE664:
    /* 9EE64 800AE664 0180043C */  lui        $a0, %hi(D_80014F38)
    /* 9EE68 800AE668 384F8424 */  addiu      $a0, $a0, %lo(D_80014F38)
  .L800AE66C:
    /* 9EE6C 800AE66C 0D80023C */  lui        $v0, %hi(D_800CEAC0)
    /* 9EE70 800AE670 C0EA428C */  lw         $v0, %lo(D_800CEAC0)($v0)
    /* 9EE74 800AE674 00000000 */  nop
    /* 9EE78 800AE678 09F84000 */  jalr       $v0
    /* 9EE7C 800AE67C 21280001 */   addu      $a1, $t0, $zero
    /* 9EE80 800AE680 00000586 */  lh         $a1, 0x0($s0)
    /* 9EE84 800AE684 02000686 */  lh         $a2, 0x2($s0)
    /* 9EE88 800AE688 04000786 */  lh         $a3, 0x4($s0)
    /* 9EE8C 800AE68C 06000386 */  lh         $v1, 0x6($s0)
    /* 9EE90 800AE690 0D80023C */  lui        $v0, %hi(D_800CEAC0)
    /* 9EE94 800AE694 C0EA428C */  lw         $v0, %lo(D_800CEAC0)($v0)
    /* 9EE98 800AE698 0180043C */  lui        $a0, %hi(D_80014F24)
    /* 9EE9C 800AE69C 244F8424 */  addiu      $a0, $a0, %lo(D_80014F24)
    /* 9EEA0 800AE6A0 09F84000 */  jalr       $v0
    /* 9EEA4 800AE6A4 1000A3AF */   sw        $v1, 0x10($sp)
  .L800AE6A8:
    /* 9EEA8 800AE6A8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 9EEAC 800AE6AC 1800B08F */  lw         $s0, 0x18($sp)
    /* 9EEB0 800AE6B0 0800E003 */  jr         $ra
    /* 9EEB4 800AE6B4 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800AE59C
