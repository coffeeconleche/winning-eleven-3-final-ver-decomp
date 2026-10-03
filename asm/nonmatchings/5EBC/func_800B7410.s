nonmatching func_800B7410, 0x20

glabel func_800B7410
    /* A7C10 800B7410 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A7C14 800B7414 1000BFAF */  sw         $ra, 0x10($sp)
    /* A7C18 800B7418 AAE2020C */  jal        func_800B8AA8
    /* A7C1C 800B741C 00000000 */   nop
    /* A7C20 800B7420 1000BF8F */  lw         $ra, 0x10($sp)
    /* A7C24 800B7424 0100422C */  sltiu      $v0, $v0, 0x1
    /* A7C28 800B7428 0800E003 */  jr         $ra
    /* A7C2C 800B742C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800B7410
