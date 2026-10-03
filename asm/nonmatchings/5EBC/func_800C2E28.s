nonmatching func_800C2E28, 0x150

glabel func_800C2E28
    /* B3628 800C2E28 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B362C 800C2E2C 1000B0AF */  sw         $s0, 0x10($sp)
    /* B3630 800C2E30 21808000 */  addu       $s0, $a0, $zero
    /* B3634 800C2E34 06000012 */  beqz       $s0, .L800C2E50
    /* B3638 800C2E38 1400BFAF */   sw        $ra, 0x14($sp)
    /* B363C 800C2E3C 01000224 */  addiu      $v0, $zero, 0x1
    /* B3640 800C2E40 0B000212 */  beq        $s0, $v0, .L800C2E70
    /* B3644 800C2E44 00000000 */   nop
    /* B3648 800C2E48 B70B0308 */  j          .L800C2EDC
    /* B364C 800C2E4C 00000000 */   nop
  .L800C2E50:
    /* B3650 800C2E50 0D80033C */  lui        $v1, %hi(D_800D558C)
    /* B3654 800C2E54 8C55638C */  lw         $v1, %lo(D_800D558C)($v1)
    /* B3658 800C2E58 00000000 */  nop
    /* B365C 800C2E5C AA016294 */  lhu        $v0, 0x1AA($v1)
    /* B3660 800C2E60 0D80013C */  lui        $at, %hi(D_800D5120)
    /* B3664 800C2E64 205120AC */  sw         $zero, %lo(D_800D5120)($at)
    /* B3668 800C2E68 B60B0308 */  j          .L800C2ED8
    /* B366C 800C2E6C 7FFF4230 */   andi      $v0, $v0, 0xFF7F
  .L800C2E70:
    /* B3670 800C2E70 0D80023C */  lui        $v0, %hi(D_800D5124)
    /* B3674 800C2E74 2451428C */  lw         $v0, %lo(D_800D5124)($v0)
    /* B3678 800C2E78 00000000 */  nop
    /* B367C 800C2E7C 0F005010 */  beq        $v0, $s0, .L800C2EBC
    /* B3680 800C2E80 00000000 */   nop
    /* B3684 800C2E84 0D80043C */  lui        $a0, %hi(D_800D5128)
    /* B3688 800C2E88 2851848C */  lw         $a0, %lo(D_800D5128)($a0)
    /* B368C 800C2E8C DE0B030C */  jal        func_800C2F78
    /* B3690 800C2E90 00000000 */   nop
    /* B3694 800C2E94 09004010 */  beqz       $v0, .L800C2EBC
    /* B3698 800C2E98 00000000 */   nop
    /* B369C 800C2E9C 0D80033C */  lui        $v1, %hi(D_800D558C)
    /* B36A0 800C2EA0 8C55638C */  lw         $v1, %lo(D_800D558C)($v1)
    /* B36A4 800C2EA4 00000000 */  nop
    /* B36A8 800C2EA8 AA016294 */  lhu        $v0, 0x1AA($v1)
    /* B36AC 800C2EAC 0D80013C */  lui        $at, %hi(D_800D5120)
    /* B36B0 800C2EB0 205120AC */  sw         $zero, %lo(D_800D5120)($at)
    /* B36B4 800C2EB4 B60B0308 */  j          .L800C2ED8
    /* B36B8 800C2EB8 7FFF4230 */   andi      $v0, $v0, 0xFF7F
  .L800C2EBC:
    /* B36BC 800C2EBC 0D80033C */  lui        $v1, %hi(D_800D558C)
    /* B36C0 800C2EC0 8C55638C */  lw         $v1, %lo(D_800D558C)($v1)
    /* B36C4 800C2EC4 00000000 */  nop
    /* B36C8 800C2EC8 AA016294 */  lhu        $v0, 0x1AA($v1)
    /* B36CC 800C2ECC 0D80013C */  lui        $at, %hi(D_800D5120)
    /* B36D0 800C2ED0 205130AC */  sw         $s0, %lo(D_800D5120)($at)
    /* B36D4 800C2ED4 80004234 */  ori        $v0, $v0, 0x80
  .L800C2ED8:
    /* B36D8 800C2ED8 AA0162A4 */  sh         $v0, 0x1AA($v1)
  .L800C2EDC:
    /* B36DC 800C2EDC 0D80023C */  lui        $v0, %hi(D_800D5120)
    /* B36E0 800C2EE0 2051428C */  lw         $v0, %lo(D_800D5120)($v0)
    /* B36E4 800C2EE4 1400BF8F */  lw         $ra, 0x14($sp)
    /* B36E8 800C2EE8 1000B08F */  lw         $s0, 0x10($sp)
    /* B36EC 800C2EEC 0800E003 */  jr         $ra
    /* B36F0 800C2EF0 1800BD27 */   addiu     $sp, $sp, 0x18
    /* B36F4 800C2EF4 00000000 */  nop
    /* B36F8 800C2EF8 0D80023C */  lui        $v0, %hi(D_800D55F4)
    /* B36FC 800C2EFC F455428C */  lw         $v0, %lo(D_800D55F4)($v0)
    /* B3700 800C2F00 00000000 */  nop
    /* B3704 800C2F04 03004014 */  bnez       $v0, .L800C2F14
    /* B3708 800C2F08 0080083C */   lui       $t0, (0x80000000 >> 16)
    /* B370C 800C2F0C DC0B0308 */  j          .L800C2F70
    /* B3710 800C2F10 21100000 */   addu      $v0, $zero, $zero
  .L800C2F14:
    /* B3714 800C2F14 0040073C */  lui        $a3, (0x40000000 >> 16)
    /* B3718 800C2F18 FF0F063C */  lui        $a2, (0xFFFFFFF >> 16)
    /* B371C 800C2F1C FFFFC634 */  ori        $a2, $a2, (0xFFFFFFF & 0xFFFF)
    /* B3720 800C2F20 21284000 */  addu       $a1, $v0, $zero
  .L800C2F24:
    /* B3724 800C2F24 0000A38C */  lw         $v1, 0x0($a1)
    /* B3728 800C2F28 00000000 */  nop
    /* B372C 800C2F2C 24106800 */  and        $v0, $v1, $t0
    /* B3730 800C2F30 0C004014 */  bnez       $v0, .L800C2F64
    /* B3734 800C2F34 24106700 */   and       $v0, $v1, $a3
    /* B3738 800C2F38 0C004014 */  bnez       $v0, .L800C2F6C
    /* B373C 800C2F3C 24186600 */   and       $v1, $v1, $a2
    /* B3740 800C2F40 2B106400 */  sltu       $v0, $v1, $a0
    /* B3744 800C2F44 0A004010 */  beqz       $v0, .L800C2F70
    /* B3748 800C2F48 01000224 */   addiu     $v0, $zero, 0x1
    /* B374C 800C2F4C 0400A28C */  lw         $v0, 0x4($a1)
    /* B3750 800C2F50 00000000 */  nop
    /* B3754 800C2F54 21106200 */  addu       $v0, $v1, $v0
    /* B3758 800C2F58 2B108200 */  sltu       $v0, $a0, $v0
    /* B375C 800C2F5C 04004014 */  bnez       $v0, .L800C2F70
    /* B3760 800C2F60 01000224 */   addiu     $v0, $zero, 0x1
  .L800C2F64:
    /* B3764 800C2F64 C90B0308 */  j          .L800C2F24
    /* B3768 800C2F68 0800A524 */   addiu     $a1, $a1, 0x8
  .L800C2F6C:
    /* B376C 800C2F6C 21100000 */  addu       $v0, $zero, $zero
  .L800C2F70:
    /* B3770 800C2F70 0800E003 */  jr         $ra
    /* B3774 800C2F74 00000000 */   nop
endlabel func_800C2E28
