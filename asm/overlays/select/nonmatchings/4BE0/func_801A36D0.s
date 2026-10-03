nonmatching func_801A36D0, 0x5C

glabel func_801A36D0
    /* 1A758 801A36D0 FF008330 */  andi       $v1, $a0, 0xFF
    /* 1A75C 801A36D4 1600622C */  sltiu      $v0, $v1, 0x16
    /* 1A760 801A36D8 12004014 */  bnez       $v0, .L801A3724
    /* 1A764 801A36DC 21100000 */   addu      $v0, $zero, $zero
    /* 1A768 801A36E0 1B00622C */  sltiu      $v0, $v1, 0x1B
    /* 1A76C 801A36E4 0F004014 */  bnez       $v0, .L801A3724
    /* 1A770 801A36E8 01000224 */   addiu     $v0, $zero, 0x1
    /* 1A774 801A36EC 1E00622C */  sltiu      $v0, $v1, 0x1E
    /* 1A778 801A36F0 0C004014 */  bnez       $v0, .L801A3724
    /* 1A77C 801A36F4 02000224 */   addiu     $v0, $zero, 0x2
    /* 1A780 801A36F8 2300622C */  sltiu      $v0, $v1, 0x23
    /* 1A784 801A36FC 09004014 */  bnez       $v0, .L801A3724
    /* 1A788 801A3700 03000224 */   addiu     $v0, $zero, 0x3
    /* 1A78C 801A3704 2700622C */  sltiu      $v0, $v1, 0x27
    /* 1A790 801A3708 03004010 */  beqz       $v0, .L801A3718
    /* 1A794 801A370C 2800632C */   sltiu     $v1, $v1, 0x28
    /* 1A798 801A3710 C98D0608 */  j          .L801A3724
    /* 1A79C 801A3714 04000224 */   addiu     $v0, $zero, 0x4
  .L801A3718:
    /* 1A7A0 801A3718 02006014 */  bnez       $v1, .L801A3724
    /* 1A7A4 801A371C 05000224 */   addiu     $v0, $zero, 0x5
    /* 1A7A8 801A3720 06000224 */  addiu      $v0, $zero, 0x6
  .L801A3724:
    /* 1A7AC 801A3724 0800E003 */  jr         $ra
    /* 1A7B0 801A3728 00000000 */   nop
endlabel func_801A36D0
