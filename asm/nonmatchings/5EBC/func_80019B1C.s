nonmatching func_80019B1C, 0x48

glabel func_80019B1C
    /* A31C 80019B1C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A320 80019B20 1000BFAF */  sw         $ra, 0x10($sp)
    /* A324 80019B24 5EDB020C */  jal        func_800B6D78
    /* A328 80019B28 00000000 */   nop
    /* A32C 80019B2C 595D000C */  jal        func_80017564
    /* A330 80019B30 09000424 */   addiu     $a0, $zero, 0x9
    /* A334 80019B34 1A80043C */  lui        $a0, %hi(D_801A6000)
    /* A338 80019B38 0060848C */  lw         $a0, %lo(D_801A6000)($a0)
    /* A33C 80019B3C 5965000C */  jal        func_80019564
    /* A340 80019B40 21280000 */   addu      $a1, $zero, $zero
    /* A344 80019B44 7740010C */  jal        func_800501DC
    /* A348 80019B48 21200000 */   addu      $a0, $zero, $zero
    /* A34C 80019B4C 7740010C */  jal        func_800501DC
    /* A350 80019B50 01000424 */   addiu     $a0, $zero, 0x1
    /* A354 80019B54 1000BF8F */  lw         $ra, 0x10($sp)
    /* A358 80019B58 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A35C 80019B5C 0800E003 */  jr         $ra
    /* A360 80019B60 00000000 */   nop
endlabel func_80019B1C
