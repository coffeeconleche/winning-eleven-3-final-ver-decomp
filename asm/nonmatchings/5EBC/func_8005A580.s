nonmatching func_8005A580, 0x1AC

glabel func_8005A580
    /* 4AD80 8005A580 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 4AD84 8005A584 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4AD88 8005A588 1180123C */  lui        $s2, %hi(D_8010C1D8)
    /* 4AD8C 8005A58C D8C15226 */  addiu      $s2, $s2, %lo(D_8010C1D8)
    /* 4AD90 8005A590 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 4AD94 8005A594 801F133C */  lui        $s3, (0x1F8002DF >> 16)
    /* 4AD98 8005A598 2000B4AF */  sw         $s4, 0x20($sp)
    /* 4AD9C 8005A59C 1080143C */  lui        $s4, %hi(D_800FF748)
    /* 4ADA0 8005A5A0 48F79426 */  addiu      $s4, $s4, %lo(D_800FF748)
    /* 4ADA4 8005A5A4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4ADA8 8005A5A8 D0079126 */  addiu      $s1, $s4, 0x7D0
    /* 4ADAC 8005A5AC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4ADB0 8005A5B0 21800000 */  addu       $s0, $zero, $zero
    /* 4ADB4 8005A5B4 2400BFAF */  sw         $ra, 0x24($sp)
  .L8005A5B8:
    /* 4ADB8 8005A5B8 CB69010C */  jal        func_8005A72C
    /* 4ADBC 8005A5BC 21202002 */   addu      $a0, $s1, $zero
    /* 4ADC0 8005A5C0 01001026 */  addiu      $s0, $s0, 0x1
    /* 4ADC4 8005A5C4 FF000232 */  andi       $v0, $s0, 0xFF
    /* 4ADC8 8005A5C8 0A00422C */  sltiu      $v0, $v0, 0xA
    /* 4ADCC 8005A5CC FAFF4014 */  bnez       $v0, .L8005A5B8
    /* 4ADD0 8005A5D0 E8033126 */   addiu     $s1, $s1, 0x3E8
    /* 4ADD4 8005A5D4 C8329126 */  addiu      $s1, $s4, 0x32C8
    /* 4ADD8 8005A5D8 21800000 */  addu       $s0, $zero, $zero
  .L8005A5DC:
    /* 4ADDC 8005A5DC CB69010C */  jal        func_8005A72C
    /* 4ADE0 8005A5E0 21202002 */   addu      $a0, $s1, $zero
    /* 4ADE4 8005A5E4 01001026 */  addiu      $s0, $s0, 0x1
    /* 4ADE8 8005A5E8 FF000232 */  andi       $v0, $s0, 0xFF
    /* 4ADEC 8005A5EC 0A00422C */  sltiu      $v0, $v0, 0xA
    /* 4ADF0 8005A5F0 FAFF4014 */  bnez       $v0, .L8005A5DC
    /* 4ADF4 8005A5F4 E8033126 */   addiu     $s1, $s1, 0x3E8
    /* 4ADF8 8005A5F8 01000524 */  addiu      $a1, $zero, 0x1
    /* 4ADFC 8005A5FC FF000224 */  addiu      $v0, $zero, 0xFF
    /* 4AE00 8005A600 0B0365A2 */  sb         $a1, (0x1F80030B & 0xFFFF)($s3)
    /* 4AE04 8005A604 040060A2 */  sb         $zero, (0x1F800004 & 0xFFFF)($s3)
    /* 4AE08 8005A608 030040A2 */  sb         $zero, 0x3($s2)
    /* 4AE0C 8005A60C 0A0060A2 */  sb         $zero, (0x1F80000A & 0xFFFF)($s3)
    /* 4AE10 8005A610 0B0060A2 */  sb         $zero, (0x1F80000B & 0xFFFF)($s3)
    /* 4AE14 8005A614 090060A2 */  sb         $zero, (0x1F800009 & 0xFFFF)($s3)
    /* 4AE18 8005A618 040040A2 */  sb         $zero, 0x4($s2)
    /* 4AE1C 8005A61C 080060A2 */  sb         $zero, (0x1F800008 & 0xFFFF)($s3)
    /* 4AE20 8005A620 060060A2 */  sb         $zero, (0x1F800006 & 0xFFFF)($s3)
    /* 4AE24 8005A624 070060A2 */  sb         $zero, (0x1F800007 & 0xFFFF)($s3)
    /* 4AE28 8005A628 2D0042A2 */  sb         $v0, 0x2D($s2)
    /* 4AE2C 8005A62C 3A004296 */  lhu        $v0, 0x3A($s2)
    /* 4AE30 8005A630 0F0040A2 */  sb         $zero, 0xF($s2)
    /* 4AE34 8005A634 200040AE */  sw         $zero, 0x20($s2)
    /* 4AE38 8005A638 240040AE */  sw         $zero, 0x24($s2)
    /* 4AE3C 8005A63C 280040AE */  sw         $zero, 0x28($s2)
    /* 4AE40 8005A640 140040A2 */  sb         $zero, 0x14($s2)
    /* 4AE44 8005A644 150040A2 */  sb         $zero, 0x15($s2)
    /* 4AE48 8005A648 DF026392 */  lbu        $v1, (0x1F8002DF & 0xFFFF)($s3)
    /* 4AE4C 8005A64C 42100200 */  srl        $v0, $v0, 1
    /* 4AE50 8005A650 3A0042A6 */  sh         $v0, 0x3A($s2)
    /* 4AE54 8005A654 FF006230 */  andi       $v0, $v1, 0xFF
    /* 4AE58 8005A658 04004014 */  bnez       $v0, .L8005A66C
    /* 4AE5C 8005A65C 00000000 */   nop
    /* 4AE60 8005A660 120040A2 */  sb         $zero, 0x12($s2)
    /* 4AE64 8005A664 C2690108 */  j          .L8005A708
    /* 4AE68 8005A668 110040A2 */   sb        $zero, 0x11($s2)
  .L8005A66C:
    /* 4AE6C 8005A66C 26004004 */  bltz       $v0, .L8005A708
    /* 4AE70 8005A670 04004228 */   slti      $v0, $v0, 0x4
    /* 4AE74 8005A674 24004010 */  beqz       $v0, .L8005A708
    /* 4AE78 8005A678 00000000 */   nop
    /* 4AE7C 8005A67C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4AE80 8005A680 21088102 */  addu       $at, $s4, $at
    /* 4AE84 8005A684 C88E2490 */  lbu        $a0, -0x7138($at)
    /* 4AE88 8005A688 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4AE8C 8005A68C 21088102 */  addu       $at, $s4, $at
    /* 4AE90 8005A690 C98E2390 */  lbu        $v1, -0x7137($at)
    /* 4AE94 8005A694 00000000 */  nop
    /* 4AE98 8005A698 23108300 */  subu       $v0, $a0, $v1
    /* 4AE9C 8005A69C 02004104 */  bgez       $v0, .L8005A6A8
    /* 4AEA0 8005A6A0 00000000 */   nop
    /* 4AEA4 8005A6A4 23100200 */  negu       $v0, $v0
  .L8005A6A8:
    /* 4AEA8 8005A6A8 06004228 */  slti       $v0, $v0, 0x6
    /* 4AEAC 8005A6AC 06004014 */  bnez       $v0, .L8005A6C8
    /* 4AEB0 8005A6B0 2B106400 */   sltu      $v0, $v1, $a0
    /* 4AEB4 8005A6B4 03004010 */  beqz       $v0, .L8005A6C4
    /* 4AEB8 8005A6B8 00000000 */   nop
    /* 4AEBC 8005A6BC B2690108 */  j          .L8005A6C8
    /* 4AEC0 8005A6C0 120045A2 */   sb        $a1, 0x12($s2)
  .L8005A6C4:
    /* 4AEC4 8005A6C4 110045A2 */  sb         $a1, 0x11($s2)
  .L8005A6C8:
    /* 4AEC8 8005A6C8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4AECC 8005A6CC 21088102 */  addu       $at, $s4, $at
    /* 4AED0 8005A6D0 C88E2290 */  lbu        $v0, -0x7138($at)
    /* 4AED4 8005A6D4 00000000 */  nop
    /* 4AED8 8005A6D8 0200422C */  sltiu      $v0, $v0, 0x2
    /* 4AEDC 8005A6DC 02004010 */  beqz       $v0, .L8005A6E8
    /* 4AEE0 8005A6E0 01000224 */   addiu     $v0, $zero, 0x1
    /* 4AEE4 8005A6E4 110042A2 */  sb         $v0, 0x11($s2)
  .L8005A6E8:
    /* 4AEE8 8005A6E8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4AEEC 8005A6EC 21088102 */  addu       $at, $s4, $at
    /* 4AEF0 8005A6F0 C98E2290 */  lbu        $v0, -0x7137($at)
    /* 4AEF4 8005A6F4 00000000 */  nop
    /* 4AEF8 8005A6F8 0200422C */  sltiu      $v0, $v0, 0x2
    /* 4AEFC 8005A6FC 02004010 */  beqz       $v0, .L8005A708
    /* 4AF00 8005A700 01000224 */   addiu     $v0, $zero, 0x1
    /* 4AF04 8005A704 120042A2 */  sb         $v0, 0x12($s2)
  .L8005A708:
    /* 4AF08 8005A708 2400BF8F */  lw         $ra, 0x24($sp)
    /* 4AF0C 8005A70C 2000B48F */  lw         $s4, 0x20($sp)
    /* 4AF10 8005A710 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 4AF14 8005A714 1800B28F */  lw         $s2, 0x18($sp)
    /* 4AF18 8005A718 1400B18F */  lw         $s1, 0x14($sp)
    /* 4AF1C 8005A71C 1000B08F */  lw         $s0, 0x10($sp)
    /* 4AF20 8005A720 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 4AF24 8005A724 0800E003 */  jr         $ra
    /* 4AF28 8005A728 00000000 */   nop
endlabel func_8005A580
