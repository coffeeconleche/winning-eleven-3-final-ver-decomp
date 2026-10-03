nonmatching func_800AF820, 0x98

glabel func_800AF820
    /* A0020 800AF820 00140400 */  sll        $v0, $a0, 16
    /* A0024 800AF824 03340200 */  sra        $a2, $v0, 16
    /* A0028 800AF828 0B00C004 */  bltz       $a2, .L800AF858
    /* A002C 800AF82C 21100000 */   addu      $v0, $zero, $zero
    /* A0030 800AF830 0D80023C */  lui        $v0, %hi(D_800CEAC8)
    /* A0034 800AF834 C8EA4284 */  lh         $v0, %lo(D_800CEAC8)($v0)
    /* A0038 800AF838 00000000 */  nop
    /* A003C 800AF83C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A0040 800AF840 2A104600 */  slt        $v0, $v0, $a2
    /* A0044 800AF844 0D80063C */  lui        $a2, %hi(D_800CEAC8)
    /* A0048 800AF848 C8EAC694 */  lhu        $a2, %lo(D_800CEAC8)($a2)
    /* A004C 800AF84C 02004014 */  bnez       $v0, .L800AF858
    /* A0050 800AF850 FFFFC224 */   addiu     $v0, $a2, -0x1
    /* A0054 800AF854 21108000 */  addu       $v0, $a0, $zero
  .L800AF858:
    /* A0058 800AF858 21204000 */  addu       $a0, $v0, $zero
    /* A005C 800AF85C 00140500 */  sll        $v0, $a1, 16
    /* A0060 800AF860 03340200 */  sra        $a2, $v0, 16
    /* A0064 800AF864 0C00C004 */  bltz       $a2, .L800AF898
    /* A0068 800AF868 00000000 */   nop
    /* A006C 800AF86C 0D80023C */  lui        $v0, %hi(D_800CEACA)
    /* A0070 800AF870 CAEA4284 */  lh         $v0, %lo(D_800CEACA)($v0)
    /* A0074 800AF874 00000000 */  nop
    /* A0078 800AF878 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A007C 800AF87C 2A104600 */  slt        $v0, $v0, $a2
    /* A0080 800AF880 0D80063C */  lui        $a2, %hi(D_800CEACA)
    /* A0084 800AF884 CAEAC694 */  lhu        $a2, %lo(D_800CEACA)($a2)
    /* A0088 800AF888 05004010 */  beqz       $v0, .L800AF8A0
    /* A008C 800AF88C FF03A330 */   andi      $v1, $a1, 0x3FF
    /* A0090 800AF890 27BE0208 */  j          .L800AF89C
    /* A0094 800AF894 FFFFC524 */   addiu     $a1, $a2, -0x1
  .L800AF898:
    /* A0098 800AF898 21280000 */  addu       $a1, $zero, $zero
  .L800AF89C:
    /* A009C 800AF89C FF03A330 */  andi       $v1, $a1, 0x3FF
  .L800AF8A0:
    /* A00A0 800AF8A0 801A0300 */  sll        $v1, $v1, 10
    /* A00A4 800AF8A4 FF038230 */  andi       $v0, $a0, 0x3FF
    /* A00A8 800AF8A8 00E3043C */  lui        $a0, (0xE3000000 >> 16)
    /* A00AC 800AF8AC 25104400 */  or         $v0, $v0, $a0
    /* A00B0 800AF8B0 0800E003 */  jr         $ra
    /* A00B4 800AF8B4 25106200 */   or        $v0, $v1, $v0
endlabel func_800AF820
