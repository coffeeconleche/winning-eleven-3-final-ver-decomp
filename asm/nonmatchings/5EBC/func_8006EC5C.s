nonmatching func_8006EC5C, 0x24

glabel func_8006EC5C
    /* 5F45C 8006EC5C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5F460 8006EC60 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5F464 8006EC64 0E000524 */  addiu      $a1, $zero, 0xE
    /* 5F468 8006EC68 8C6E010C */  jal        func_8005BA30
    /* 5F46C 8006EC6C 0F000624 */   addiu     $a2, $zero, 0xF
    /* 5F470 8006EC70 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5F474 8006EC74 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 5F478 8006EC78 0800E003 */  jr         $ra
    /* 5F47C 8006EC7C 00000000 */   nop
endlabel func_8006EC5C
