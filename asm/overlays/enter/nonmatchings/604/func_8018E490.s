nonmatching func_8018E490, 0x50

glabel func_8018E490
    /* 5518 8018E490 21280000 */  addu       $a1, $zero, $zero
    /* 551C 8018E494 FF008430 */  andi       $a0, $a0, 0xFF
    /* 5520 8018E498 0C000624 */  addiu      $a2, $zero, 0xC
    /* 5524 8018E49C 18000724 */  addiu      $a3, $zero, 0x18
    /* 5528 8018E4A0 1080033C */  lui        $v1, %hi(D_800FFED6)
    /* 552C 8018E4A4 D6FE6324 */  addiu      $v1, $v1, %lo(D_800FFED6)
  .L8018E4A8:
    /* 5530 8018E4A8 04008014 */  bnez       $a0, .L8018E4BC
    /* 5534 8018E4AC 00000000 */   nop
    /* 5538 8018E4B0 FFFF60A0 */  sb         $zero, -0x1($v1)
    /* 553C 8018E4B4 31390608 */  j          .L8018E4C4
    /* 5540 8018E4B8 000066A0 */   sb        $a2, 0x0($v1)
  .L8018E4BC:
    /* 5544 8018E4BC FFFF66A0 */  sb         $a2, -0x1($v1)
    /* 5548 8018E4C0 000067A0 */  sb         $a3, 0x0($v1)
  .L8018E4C4:
    /* 554C 8018E4C4 0100A524 */  addiu      $a1, $a1, 0x1
    /* 5550 8018E4C8 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 5554 8018E4CC 1600422C */  sltiu      $v0, $v0, 0x16
    /* 5558 8018E4D0 F5FF4014 */  bnez       $v0, .L8018E4A8
    /* 555C 8018E4D4 E8036324 */   addiu     $v1, $v1, 0x3E8
    /* 5560 8018E4D8 0800E003 */  jr         $ra
    /* 5564 8018E4DC 00000000 */   nop
endlabel func_8018E490
