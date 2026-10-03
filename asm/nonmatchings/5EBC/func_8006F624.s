nonmatching func_8006F624, 0xF0

glabel func_8006F624
    /* 5FE24 8006F624 21500000 */  addu       $t2, $zero, $zero
    /* 5FE28 8006F628 21400000 */  addu       $t0, $zero, $zero
    /* 5FE2C 8006F62C 21480000 */  addu       $t1, $zero, $zero
    /* 5FE30 8006F630 FF008430 */  andi       $a0, $a0, 0xFF
    /* 5FE34 8006F634 80100400 */  sll        $v0, $a0, 2
    /* 5FE38 8006F638 21104400 */  addu       $v0, $v0, $a0
    /* 5FE3C 8006F63C C0100200 */  sll        $v0, $v0, 3
    /* 5FE40 8006F640 1080033C */  lui        $v1, %hi(D_80105508)
    /* 5FE44 8006F644 08556324 */  addiu      $v1, $v1, %lo(D_80105508)
    /* 5FE48 8006F648 21204300 */  addu       $a0, $v0, $v1
    /* 5FE4C 8006F64C 16008390 */  lbu        $v1, 0x16($a0)
    /* 5FE50 8006F650 0000A290 */  lbu        $v0, 0x0($a1)
    /* 5FE54 8006F654 00000000 */  nop
    /* 5FE58 8006F658 2B106200 */  sltu       $v0, $v1, $v0
    /* 5FE5C 8006F65C 08004010 */  beqz       $v0, .L8006F680
    /* 5FE60 8006F660 2138C000 */   addu      $a3, $a2, $zero
    /* 5FE64 8006F664 21106600 */  addu       $v0, $v1, $a2
    /* 5FE68 8006F668 160082A0 */  sb         $v0, 0x16($a0)
    /* 5FE6C 8006F66C 0000A390 */  lbu        $v1, 0x0($a1)
    /* 5FE70 8006F670 FF004230 */  andi       $v0, $v0, 0xFF
    /* 5FE74 8006F674 2B104300 */  sltu       $v0, $v0, $v1
    /* 5FE78 8006F678 04004014 */  bnez       $v0, .L8006F68C
    /* 5FE7C 8006F67C 00000000 */   nop
  .L8006F680:
    /* 5FE80 8006F680 0000A290 */  lbu        $v0, 0x0($a1)
    /* 5FE84 8006F684 01000A24 */  addiu      $t2, $zero, 0x1
    /* 5FE88 8006F688 160082A0 */  sb         $v0, 0x16($a0)
  .L8006F68C:
    /* 5FE8C 8006F68C 17008390 */  lbu        $v1, 0x17($a0)
    /* 5FE90 8006F690 0100A290 */  lbu        $v0, 0x1($a1)
    /* 5FE94 8006F694 00000000 */  nop
    /* 5FE98 8006F698 2B106200 */  sltu       $v0, $v1, $v0
    /* 5FE9C 8006F69C 07004010 */  beqz       $v0, .L8006F6BC
    /* 5FEA0 8006F6A0 21106700 */   addu      $v0, $v1, $a3
    /* 5FEA4 8006F6A4 170082A0 */  sb         $v0, 0x17($a0)
    /* 5FEA8 8006F6A8 0100A390 */  lbu        $v1, 0x1($a1)
    /* 5FEAC 8006F6AC FF004230 */  andi       $v0, $v0, 0xFF
    /* 5FEB0 8006F6B0 2B104300 */  sltu       $v0, $v0, $v1
    /* 5FEB4 8006F6B4 04004014 */  bnez       $v0, .L8006F6C8
    /* 5FEB8 8006F6B8 00000000 */   nop
  .L8006F6BC:
    /* 5FEBC 8006F6BC 0100A290 */  lbu        $v0, 0x1($a1)
    /* 5FEC0 8006F6C0 01000824 */  addiu      $t0, $zero, 0x1
    /* 5FEC4 8006F6C4 170082A0 */  sb         $v0, 0x17($a0)
  .L8006F6C8:
    /* 5FEC8 8006F6C8 18008390 */  lbu        $v1, 0x18($a0)
    /* 5FECC 8006F6CC 0200A290 */  lbu        $v0, 0x2($a1)
    /* 5FED0 8006F6D0 00000000 */  nop
    /* 5FED4 8006F6D4 2B106200 */  sltu       $v0, $v1, $v0
    /* 5FED8 8006F6D8 08004010 */  beqz       $v0, .L8006F6FC
    /* 5FEDC 8006F6DC 00000000 */   nop
    /* 5FEE0 8006F6E0 21106700 */  addu       $v0, $v1, $a3
    /* 5FEE4 8006F6E4 180082A0 */  sb         $v0, 0x18($a0)
    /* 5FEE8 8006F6E8 0200A390 */  lbu        $v1, 0x2($a1)
    /* 5FEEC 8006F6EC FF004230 */  andi       $v0, $v0, 0xFF
    /* 5FEF0 8006F6F0 2B104300 */  sltu       $v0, $v0, $v1
    /* 5FEF4 8006F6F4 04004014 */  bnez       $v0, .L8006F708
    /* 5FEF8 8006F6F8 00000000 */   nop
  .L8006F6FC:
    /* 5FEFC 8006F6FC 0200A290 */  lbu        $v0, 0x2($a1)
    /* 5FF00 8006F700 01000924 */  addiu      $t1, $zero, 0x1
    /* 5FF04 8006F704 180082A0 */  sb         $v0, 0x18($a0)
  .L8006F708:
    /* 5FF08 8006F708 24104801 */  and        $v0, $t2, $t0
    /* 5FF0C 8006F70C 0800E003 */  jr         $ra
    /* 5FF10 8006F710 24102201 */   and       $v0, $t1, $v0
endlabel func_8006F624
