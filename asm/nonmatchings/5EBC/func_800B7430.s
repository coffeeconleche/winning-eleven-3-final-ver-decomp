nonmatching func_800B7430, 0x20

glabel func_800B7430
    /* A7C30 800B7430 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A7C34 800B7434 1000BFAF */  sw         $ra, 0x10($sp)
    /* A7C38 800B7438 EAE2020C */  jal        func_800B8BA8
    /* A7C3C 800B743C 00000000 */   nop
    /* A7C40 800B7440 1000BF8F */  lw         $ra, 0x10($sp)
    /* A7C44 800B7444 0100422C */  sltiu      $v0, $v0, 0x1
    /* A7C48 800B7448 0800E003 */  jr         $ra
    /* A7C4C 800B744C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800B7430
