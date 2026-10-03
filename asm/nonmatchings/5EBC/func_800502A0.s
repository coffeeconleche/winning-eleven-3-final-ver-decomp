nonmatching func_800502A0, 0x68

glabel func_800502A0
    /* 40AA0 800502A0 FF00A530 */  andi       $a1, $a1, 0xFF
    /* 40AA4 800502A4 01000224 */  addiu      $v0, $zero, 0x1
    /* 40AA8 800502A8 0400A214 */  bne        $a1, $v0, .L800502BC
    /* 40AAC 800502AC 21188000 */   addu      $v1, $a0, $zero
    /* 40AB0 800502B0 D3008224 */  addiu      $v0, $a0, 0xD3
    /* 40AB4 800502B4 C0400108 */  j          .L80050300
    /* 40AB8 800502B8 FF004230 */   andi      $v0, $v0, 0xFF
  .L800502BC:
    /* 40ABC 800502BC FF006330 */  andi       $v1, $v1, 0xFF
    /* 40AC0 800502C0 1000622C */  sltiu      $v0, $v1, 0x10
    /* 40AC4 800502C4 03004010 */  beqz       $v0, .L800502D4
    /* 40AC8 800502C8 20008224 */   addiu     $v0, $a0, 0x20
    /* 40ACC 800502CC C0400108 */  j          .L80050300
    /* 40AD0 800502D0 FF004230 */   andi      $v0, $v0, 0xFF
  .L800502D4:
    /* 40AD4 800502D4 2000622C */  sltiu      $v0, $v1, 0x20
    /* 40AD8 800502D8 03004010 */  beqz       $v0, .L800502E8
    /* 40ADC 800502DC 30008224 */   addiu     $v0, $a0, 0x30
    /* 40AE0 800502E0 C0400108 */  j          .L80050300
    /* 40AE4 800502E4 FF004230 */   andi      $v0, $v0, 0xFF
  .L800502E8:
    /* 40AE8 800502E8 2B000224 */  addiu      $v0, $zero, 0x2B
    /* 40AEC 800502EC 03006210 */  beq        $v1, $v0, .L800502FC
    /* 40AF0 800502F0 A8FF8224 */   addiu     $v0, $a0, -0x58
    /* 40AF4 800502F4 C0400108 */  j          .L80050300
    /* 40AF8 800502F8 FF004230 */   andi      $v0, $v0, 0xFF
  .L800502FC:
    /* 40AFC 800502FC 22000224 */  addiu      $v0, $zero, 0x22
  .L80050300:
    /* 40B00 80050300 0800E003 */  jr         $ra
    /* 40B04 80050304 00000000 */   nop
endlabel func_800502A0
