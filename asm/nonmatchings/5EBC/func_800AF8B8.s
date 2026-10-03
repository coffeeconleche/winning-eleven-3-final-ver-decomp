nonmatching func_800AF8B8, 0x98

glabel func_800AF8B8
    /* A00B8 800AF8B8 00140400 */  sll        $v0, $a0, 16
    /* A00BC 800AF8BC 03340200 */  sra        $a2, $v0, 16
    /* A00C0 800AF8C0 0B00C004 */  bltz       $a2, .L800AF8F0
    /* A00C4 800AF8C4 21100000 */   addu      $v0, $zero, $zero
    /* A00C8 800AF8C8 0D80023C */  lui        $v0, %hi(D_800CEAC8)
    /* A00CC 800AF8CC C8EA4284 */  lh         $v0, %lo(D_800CEAC8)($v0)
    /* A00D0 800AF8D0 00000000 */  nop
    /* A00D4 800AF8D4 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A00D8 800AF8D8 2A104600 */  slt        $v0, $v0, $a2
    /* A00DC 800AF8DC 0D80063C */  lui        $a2, %hi(D_800CEAC8)
    /* A00E0 800AF8E0 C8EAC694 */  lhu        $a2, %lo(D_800CEAC8)($a2)
    /* A00E4 800AF8E4 02004014 */  bnez       $v0, .L800AF8F0
    /* A00E8 800AF8E8 FFFFC224 */   addiu     $v0, $a2, -0x1
    /* A00EC 800AF8EC 21108000 */  addu       $v0, $a0, $zero
  .L800AF8F0:
    /* A00F0 800AF8F0 21204000 */  addu       $a0, $v0, $zero
    /* A00F4 800AF8F4 00140500 */  sll        $v0, $a1, 16
    /* A00F8 800AF8F8 03340200 */  sra        $a2, $v0, 16
    /* A00FC 800AF8FC 0C00C004 */  bltz       $a2, .L800AF930
    /* A0100 800AF900 00000000 */   nop
    /* A0104 800AF904 0D80023C */  lui        $v0, %hi(D_800CEACA)
    /* A0108 800AF908 CAEA4284 */  lh         $v0, %lo(D_800CEACA)($v0)
    /* A010C 800AF90C 00000000 */  nop
    /* A0110 800AF910 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* A0114 800AF914 2A104600 */  slt        $v0, $v0, $a2
    /* A0118 800AF918 0D80063C */  lui        $a2, %hi(D_800CEACA)
    /* A011C 800AF91C CAEAC694 */  lhu        $a2, %lo(D_800CEACA)($a2)
    /* A0120 800AF920 05004010 */  beqz       $v0, .L800AF938
    /* A0124 800AF924 FF03A330 */   andi      $v1, $a1, 0x3FF
    /* A0128 800AF928 4DBE0208 */  j          .L800AF934
    /* A012C 800AF92C FFFFC524 */   addiu     $a1, $a2, -0x1
  .L800AF930:
    /* A0130 800AF930 21280000 */  addu       $a1, $zero, $zero
  .L800AF934:
    /* A0134 800AF934 FF03A330 */  andi       $v1, $a1, 0x3FF
  .L800AF938:
    /* A0138 800AF938 801A0300 */  sll        $v1, $v1, 10
    /* A013C 800AF93C FF038230 */  andi       $v0, $a0, 0x3FF
    /* A0140 800AF940 00E4043C */  lui        $a0, (0xE4000000 >> 16)
    /* A0144 800AF944 25104400 */  or         $v0, $v0, $a0
    /* A0148 800AF948 0800E003 */  jr         $ra
    /* A014C 800AF94C 25106200 */   or        $v0, $v1, $v0
endlabel func_800AF8B8
