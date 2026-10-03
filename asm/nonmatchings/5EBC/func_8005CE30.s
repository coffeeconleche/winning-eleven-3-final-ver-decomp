nonmatching func_8005CE30, 0x1C

glabel func_8005CE30
    /* 4D630 8005CE30 FF008430 */  andi       $a0, $a0, 0xFF
    /* 4D634 8005CE34 0C00842C */  sltiu      $a0, $a0, 0xC
    /* 4D638 8005CE38 02008014 */  bnez       $a0, .L8005CE44
    /* 4D63C 8005CE3C 0C000224 */   addiu     $v0, $zero, 0xC
    /* 4D640 8005CE40 01000224 */  addiu      $v0, $zero, 0x1
  .L8005CE44:
    /* 4D644 8005CE44 0800E003 */  jr         $ra
    /* 4D648 8005CE48 00000000 */   nop
endlabel func_8005CE30
