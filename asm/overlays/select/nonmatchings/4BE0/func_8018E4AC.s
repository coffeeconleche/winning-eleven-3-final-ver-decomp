nonmatching func_8018E4AC, 0x44

glabel func_8018E4AC
    /* 5534 8018E4AC FF008430 */  andi       $a0, $a0, 0xFF
    /* 5538 8018E4B0 1080033C */  lui        $v1, %hi(D_800FF748)
    /* 553C 8018E4B4 48F76324 */  addiu      $v1, $v1, %lo(D_800FF748)
    /* 5540 8018E4B8 FF00A530 */  andi       $a1, $a1, 0xFF
    /* 5544 8018E4BC 2A10A400 */  slt        $v0, $a1, $a0
    /* 5548 8018E4C0 09004014 */  bnez       $v0, .L8018E4E8
    /* 554C 8018E4C4 80100400 */   sll       $v0, $a0, 2
    /* 5550 8018E4C8 21104400 */  addu       $v0, $v0, $a0
    /* 5554 8018E4CC C0100200 */  sll        $v0, $v0, 3
    /* 5558 8018E4D0 21184300 */  addu       $v1, $v0, $v1
  .L8018E4D4:
    /* 555C 8018E4D4 C45D66A0 */  sb         $a2, 0x5DC4($v1)
    /* 5560 8018E4D8 01008424 */  addiu      $a0, $a0, 0x1
    /* 5564 8018E4DC 2A10A400 */  slt        $v0, $a1, $a0
    /* 5568 8018E4E0 FCFF4010 */  beqz       $v0, .L8018E4D4
    /* 556C 8018E4E4 28006324 */   addiu     $v1, $v1, 0x28
  .L8018E4E8:
    /* 5570 8018E4E8 0800E003 */  jr         $ra
    /* 5574 8018E4EC 00000000 */   nop
endlabel func_8018E4AC
