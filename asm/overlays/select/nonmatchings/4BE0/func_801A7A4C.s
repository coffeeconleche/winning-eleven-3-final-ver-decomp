nonmatching func_801A7A4C, 0x40

glabel func_801A7A4C
    /* 1EAD4 801A7A4C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1EAD8 801A7A50 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1EADC 801A7A54 21800000 */  addu       $s0, $zero, $zero
    /* 1EAE0 801A7A58 1400BFAF */  sw         $ra, 0x14($sp)
    /* 1EAE4 801A7A5C FF000432 */  andi       $a0, $s0, 0xFF
  .L801A7A60:
    /* 1EAE8 801A7A60 A39E060C */  jal        func_801A7A8C
    /* 1EAEC 801A7A64 21280000 */   addu      $a1, $zero, $zero
    /* 1EAF0 801A7A68 01001026 */  addiu      $s0, $s0, 0x1
    /* 1EAF4 801A7A6C 0B00022A */  slti       $v0, $s0, 0xB
    /* 1EAF8 801A7A70 FBFF4014 */  bnez       $v0, .L801A7A60
    /* 1EAFC 801A7A74 FF000432 */   andi      $a0, $s0, 0xFF
    /* 1EB00 801A7A78 1400BF8F */  lw         $ra, 0x14($sp)
    /* 1EB04 801A7A7C 1000B08F */  lw         $s0, 0x10($sp)
    /* 1EB08 801A7A80 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1EB0C 801A7A84 0800E003 */  jr         $ra
    /* 1EB10 801A7A88 00000000 */   nop
endlabel func_801A7A4C
