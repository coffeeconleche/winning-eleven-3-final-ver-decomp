nonmatching func_800AAC90, 0x24

glabel func_800AAC90
    /* 9B490 800AAC90 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9B494 800AAC94 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9B498 800AAC98 21200000 */  addu       $a0, $zero, $zero
    /* 9B49C 800AAC9C E60E030C */  jal        func_800C3B98
    /* 9B4A0 800AACA0 4000053C */   lui       $a1, (0x400000 >> 16)
    /* 9B4A4 800AACA4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9B4A8 800AACA8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9B4AC 800AACAC 0800E003 */  jr         $ra
    /* 9B4B0 800AACB0 00000000 */   nop
endlabel func_800AAC90
