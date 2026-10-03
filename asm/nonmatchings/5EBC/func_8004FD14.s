nonmatching func_8004FD14, 0x48

glabel func_8004FD14
    /* 40514 8004FD14 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 40518 8004FD18 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4051C 8004FD1C 1080053C */  lui        $a1, %hi(D_80105508)
    /* 40520 8004FD20 0855A524 */  addiu      $a1, $a1, %lo(D_80105508)
    /* 40524 8004FD24 35000324 */  addiu      $v1, $zero, 0x35
  .L8004FD28:
    /* 40528 8004FD28 0400A0A0 */  sb         $zero, 0x4($a1)
    /* 4052C 8004FD2C FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 40530 8004FD30 FDFF6104 */  bgez       $v1, .L8004FD28
    /* 40534 8004FD34 2800A524 */   addiu     $a1, $a1, 0x28
    /* 40538 8004FD38 FF008230 */  andi       $v0, $a0, 0xFF
    /* 4053C 8004FD3C 03004010 */  beqz       $v0, .L8004FD4C
    /* 40540 8004FD40 21200000 */   addu      $a0, $zero, $zero
    /* 40544 8004FD44 B03E010C */  jal        func_8004FAC0
    /* 40548 8004FD48 21280000 */   addu      $a1, $zero, $zero
  .L8004FD4C:
    /* 4054C 8004FD4C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 40550 8004FD50 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 40554 8004FD54 0800E003 */  jr         $ra
    /* 40558 8004FD58 00000000 */   nop
endlabel func_8004FD14
