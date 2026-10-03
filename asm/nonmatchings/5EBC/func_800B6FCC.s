nonmatching func_800B6FCC, 0x20

glabel func_800B6FCC
    /* A77CC 800B6FCC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A77D0 800B6FD0 1000BFAF */  sw         $ra, 0x10($sp)
    /* A77D4 800B6FD4 DDDE020C */  jal        func_800B7B74
    /* A77D8 800B6FD8 00000000 */   nop
    /* A77DC 800B6FDC 1000BF8F */  lw         $ra, 0x10($sp)
    /* A77E0 800B6FE0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A77E4 800B6FE4 0800E003 */  jr         $ra
    /* A77E8 800B6FE8 00000000 */   nop
endlabel func_800B6FCC
