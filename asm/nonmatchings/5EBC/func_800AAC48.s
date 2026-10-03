nonmatching func_800AAC48, 0x24

glabel func_800AAC48
    /* 9B448 800AAC48 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9B44C 800AAC4C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9B450 800AAC50 21200000 */  addu       $a0, $zero, $zero
    /* 9B454 800AAC54 E60E030C */  jal        func_800C3B98
    /* 9B458 800AAC58 8000053C */   lui       $a1, (0x800000 >> 16)
    /* 9B45C 800AAC5C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9B460 800AAC60 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9B464 800AAC64 0800E003 */  jr         $ra
    /* 9B468 800AAC68 00000000 */   nop
endlabel func_800AAC48
