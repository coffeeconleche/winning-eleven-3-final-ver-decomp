nonmatching func_800B7474, 0x20

glabel func_800B7474
    /* A7C74 800B7474 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A7C78 800B7478 1000BFAF */  sw         $ra, 0x10($sp)
    /* A7C7C 800B747C 50E2020C */  jal        func_800B8940
    /* A7C80 800B7480 00000000 */   nop
    /* A7C84 800B7484 1000BF8F */  lw         $ra, 0x10($sp)
    /* A7C88 800B7488 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A7C8C 800B748C 0800E003 */  jr         $ra
    /* A7C90 800B7490 00000000 */   nop
endlabel func_800B7474
