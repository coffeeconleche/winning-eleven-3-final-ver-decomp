nonmatching func_8009F62C, 0x64

glabel func_8009F62C
    /* 8FE2C 8009F62C 801F083C */  lui        $t0, (0x1F8002E1 >> 16)
    /* 8FE30 8009F630 21280000 */  addu       $a1, $zero, $zero
    /* 8FE34 8009F634 05000724 */  addiu      $a3, $zero, 0x5
    /* 8FE38 8009F638 20000624 */  addiu      $a2, $zero, 0x20
    /* 8FE3C 8009F63C 1080033C */  lui        $v1, %hi(D_800FFF13)
    /* 8FE40 8009F640 13FF6324 */  addiu      $v1, $v1, %lo(D_800FFF13)
  .L8009F644:
    /* 8FE44 8009F644 E1020291 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($t0)
    /* 8FE48 8009F648 00000000 */  nop
    /* 8FE4C 8009F64C 07004714 */  bne        $v0, $a3, .L8009F66C
    /* 8FE50 8009F650 00000000 */   nop
    /* 8FE54 8009F654 B7FF6290 */  lbu        $v0, -0x49($v1)
    /* 8FE58 8009F658 00000000 */  nop
    /* 8FE5C 8009F65C 03004010 */  beqz       $v0, .L8009F66C
    /* 8FE60 8009F660 00000000 */   nop
    /* 8FE64 8009F664 9C7D0208 */  j          .L8009F670
    /* 8FE68 8009F668 FFFF66A0 */   sb        $a2, -0x1($v1)
  .L8009F66C:
    /* 8FE6C 8009F66C FFFF64A0 */  sb         $a0, -0x1($v1)
  .L8009F670:
    /* 8FE70 8009F670 000060A0 */  sb         $zero, 0x0($v1)
    /* 8FE74 8009F674 0100A524 */  addiu      $a1, $a1, 0x1
    /* 8FE78 8009F678 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 8FE7C 8009F67C 1600422C */  sltiu      $v0, $v0, 0x16
    /* 8FE80 8009F680 F0FF4014 */  bnez       $v0, .L8009F644
    /* 8FE84 8009F684 E8036324 */   addiu     $v1, $v1, 0x3E8
    /* 8FE88 8009F688 0800E003 */  jr         $ra
    /* 8FE8C 8009F68C 00000000 */   nop
endlabel func_8009F62C
