nonmatching func_8006FDB4, 0x20

glabel func_8006FDB4
    /* 605B4 8006FDB4 FF008430 */  andi       $a0, $a0, 0xFF
    /* 605B8 8006FDB8 03008014 */  bnez       $a0, .L8006FDC8
    /* 605BC 8006FDBC 01000224 */   addiu     $v0, $zero, 0x1
    /* 605C0 8006FDC0 73BF0108 */  j          .L8006FDCC
    /* 605C4 8006FDC4 21100000 */   addu      $v0, $zero, $zero
  .L8006FDC8:
    /* 605C8 8006FDC8 0000A0A0 */  sb         $zero, 0x0($a1)
  .L8006FDCC:
    /* 605CC 8006FDCC 0800E003 */  jr         $ra
    /* 605D0 8006FDD0 00000000 */   nop
endlabel func_8006FDB4
