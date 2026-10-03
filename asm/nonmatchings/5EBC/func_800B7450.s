nonmatching func_800B7450, 0x24

glabel func_800B7450
    /* A7C50 800B7450 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A7C54 800B7454 1000BFAF */  sw         $ra, 0x10($sp)
    /* A7C58 800B7458 21288000 */  addu       $a1, $a0, $zero
    /* A7C5C 800B745C E6E9020C */  jal        func_800BA798
    /* A7C60 800B7460 03000424 */   addiu     $a0, $zero, 0x3
    /* A7C64 800B7464 1000BF8F */  lw         $ra, 0x10($sp)
    /* A7C68 800B7468 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A7C6C 800B746C 0800E003 */  jr         $ra
    /* A7C70 800B7470 00000000 */   nop
endlabel func_800B7450
