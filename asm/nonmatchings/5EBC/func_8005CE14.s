nonmatching func_8005CE14, 0x1C

glabel func_8005CE14
    /* 4D614 8005CE14 FF008430 */  andi       $a0, $a0, 0xFF
    /* 4D618 8005CE18 0C00842C */  sltiu      $a0, $a0, 0xC
    /* 4D61C 8005CE1C 02008014 */  bnez       $a0, .L8005CE28
    /* 4D620 8005CE20 01000224 */   addiu     $v0, $zero, 0x1
    /* 4D624 8005CE24 0C000224 */  addiu      $v0, $zero, 0xC
  .L8005CE28:
    /* 4D628 8005CE28 0800E003 */  jr         $ra
    /* 4D62C 8005CE2C 00000000 */   nop
endlabel func_8005CE14
