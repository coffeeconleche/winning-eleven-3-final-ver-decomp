nonmatching func_800AAC6C, 0x24

glabel func_800AAC6C
    /* 9B46C 800AAC6C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9B470 800AAC70 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9B474 800AAC74 01000434 */  ori        $a0, $zero, 0x1
    /* 9B478 800AAC78 E60E030C */  jal        func_800C3B98
    /* 9B47C 800AAC7C 4000053C */   lui       $a1, (0x400000 >> 16)
    /* 9B480 800AAC80 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9B484 800AAC84 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9B488 800AAC88 0800E003 */  jr         $ra
    /* 9B48C 800AAC8C 00000000 */   nop
endlabel func_800AAC6C
