nonmatching func_8001E694, 0x24

glabel func_8001E694
    /* EE94 8001E694 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* EE98 8001E698 1000BFAF */  sw         $ra, 0x10($sp)
    /* EE9C 8001E69C 40008424 */  addiu      $a0, $a0, 0x40
    /* EEA0 8001E6A0 6979000C */  jal        func_8001E5A4
    /* EEA4 8001E6A4 FF008430 */   andi      $a0, $a0, 0xFF
    /* EEA8 8001E6A8 1000BF8F */  lw         $ra, 0x10($sp)
    /* EEAC 8001E6AC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* EEB0 8001E6B0 0800E003 */  jr         $ra
    /* EEB4 8001E6B4 00000000 */   nop
endlabel func_8001E694
