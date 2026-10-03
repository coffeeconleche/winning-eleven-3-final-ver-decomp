nonmatching func_800AAC24, 0x24

glabel func_800AAC24
    /* 9B424 800AAC24 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9B428 800AAC28 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9B42C 800AAC2C 01000434 */  ori        $a0, $zero, 0x1
    /* 9B430 800AAC30 E60E030C */  jal        func_800C3B98
    /* 9B434 800AAC34 8000053C */   lui       $a1, (0x800000 >> 16)
    /* 9B438 800AAC38 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9B43C 800AAC3C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9B440 800AAC40 0800E003 */  jr         $ra
    /* 9B444 800AAC44 00000000 */   nop
endlabel func_800AAC24
