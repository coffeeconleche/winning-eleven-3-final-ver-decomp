nonmatching func_8019E494, 0x44

glabel func_8019E494
    /* 1551C 8019E494 FF008330 */  andi       $v1, $a0, 0xFF
    /* 15520 8019E498 0800622C */  sltiu      $v0, $v1, 0x8
    /* 15524 8019E49C 0C004014 */  bnez       $v0, .L8019E4D0
    /* 15528 8019E4A0 01000224 */   addiu     $v0, $zero, 0x1
    /* 1552C 8019E4A4 0C00622C */  sltiu      $v0, $v1, 0xC
    /* 15530 8019E4A8 09004014 */  bnez       $v0, .L8019E4D0
    /* 15534 8019E4AC 02000224 */   addiu     $v0, $zero, 0x2
    /* 15538 8019E4B0 1400622C */  sltiu      $v0, $v1, 0x14
    /* 1553C 8019E4B4 03004010 */  beqz       $v0, .L8019E4C4
    /* 15540 8019E4B8 1C00632C */   sltiu     $v1, $v1, 0x1C
    /* 15544 8019E4BC 34790608 */  j          .L8019E4D0
    /* 15548 8019E4C0 03000224 */   addiu     $v0, $zero, 0x3
  .L8019E4C4:
    /* 1554C 8019E4C4 02006014 */  bnez       $v1, .L8019E4D0
    /* 15550 8019E4C8 02000224 */   addiu     $v0, $zero, 0x2
    /* 15554 8019E4CC 01000224 */  addiu      $v0, $zero, 0x1
  .L8019E4D0:
    /* 15558 8019E4D0 0800E003 */  jr         $ra
    /* 1555C 8019E4D4 00000000 */   nop
endlabel func_8019E494
