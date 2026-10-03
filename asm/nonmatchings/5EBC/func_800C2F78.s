nonmatching func_800C2F78, 0x8C

glabel func_800C2F78
    /* B3778 800C2F78 0D80023C */  lui        $v0, %hi(D_800D55B4)
    /* B377C 800C2F7C B455428C */  lw         $v0, %lo(D_800D55B4)($v0)
    /* B3780 800C2F80 0D80033C */  lui        $v1, %hi(D_800D55F4)
    /* B3784 800C2F84 F455638C */  lw         $v1, %lo(D_800D55F4)($v1)
    /* B3788 800C2F88 00000000 */  nop
    /* B378C 800C2F8C 03006014 */  bnez       $v1, .L800C2F9C
    /* B3790 800C2F90 04204400 */   sllv      $a0, $a0, $v0
    /* B3794 800C2F94 FF0B0308 */  j          .L800C2FFC
    /* B3798 800C2F98 21100000 */   addu      $v0, $zero, $zero
  .L800C2F9C:
    /* B379C 800C2F9C 0080083C */  lui        $t0, (0x80000000 >> 16)
    /* B37A0 800C2FA0 0040073C */  lui        $a3, (0x40000000 >> 16)
    /* B37A4 800C2FA4 FF0F063C */  lui        $a2, (0xFFFFFFF >> 16)
    /* B37A8 800C2FA8 FFFFC634 */  ori        $a2, $a2, (0xFFFFFFF & 0xFFFF)
    /* B37AC 800C2FAC 21286000 */  addu       $a1, $v1, $zero
  .L800C2FB0:
    /* B37B0 800C2FB0 0000A38C */  lw         $v1, 0x0($a1)
    /* B37B4 800C2FB4 00000000 */  nop
    /* B37B8 800C2FB8 24106800 */  and        $v0, $v1, $t0
    /* B37BC 800C2FBC 0C004014 */  bnez       $v0, .L800C2FF0
    /* B37C0 800C2FC0 24106700 */   and       $v0, $v1, $a3
    /* B37C4 800C2FC4 0C004014 */  bnez       $v0, .L800C2FF8
    /* B37C8 800C2FC8 24186600 */   and       $v1, $v1, $a2
    /* B37CC 800C2FCC 2B106400 */  sltu       $v0, $v1, $a0
    /* B37D0 800C2FD0 0A004010 */  beqz       $v0, .L800C2FFC
    /* B37D4 800C2FD4 01000224 */   addiu     $v0, $zero, 0x1
    /* B37D8 800C2FD8 0400A28C */  lw         $v0, 0x4($a1)
    /* B37DC 800C2FDC 00000000 */  nop
    /* B37E0 800C2FE0 21106200 */  addu       $v0, $v1, $v0
    /* B37E4 800C2FE4 2B108200 */  sltu       $v0, $a0, $v0
    /* B37E8 800C2FE8 04004014 */  bnez       $v0, .L800C2FFC
    /* B37EC 800C2FEC 01000224 */   addiu     $v0, $zero, 0x1
  .L800C2FF0:
    /* B37F0 800C2FF0 EC0B0308 */  j          .L800C2FB0
    /* B37F4 800C2FF4 0800A524 */   addiu     $a1, $a1, 0x8
  .L800C2FF8:
    /* B37F8 800C2FF8 21100000 */  addu       $v0, $zero, $zero
  .L800C2FFC:
    /* B37FC 800C2FFC 0800E003 */  jr         $ra
    /* B3800 800C3000 00000000 */   nop
endlabel func_800C2F78
    /* B3804 800C3004 00000000 */  nop
