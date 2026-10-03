nonmatching func_8001951C, 0x48

glabel func_8001951C
    /* 9D1C 8001951C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9D20 80019520 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9D24 80019524 5EDB020C */  jal        func_800B6D78
    /* 9D28 80019528 00000000 */   nop
    /* 9D2C 8001952C 595D000C */  jal        func_80017564
    /* 9D30 80019530 10000424 */   addiu     $a0, $zero, 0x10
    /* 9D34 80019534 1A80043C */  lui        $a0, %hi(D_801A6000)
    /* 9D38 80019538 0060848C */  lw         $a0, %lo(D_801A6000)($a0)
    /* 9D3C 8001953C 5965000C */  jal        func_80019564
    /* 9D40 80019540 21280000 */   addu      $a1, $zero, $zero
    /* 9D44 80019544 1A80043C */  lui        $a0, %hi(D_801A6004)
    /* 9D48 80019548 0460848C */  lw         $a0, %lo(D_801A6004)($a0)
    /* 9D4C 8001954C 5965000C */  jal        func_80019564
    /* 9D50 80019550 21280000 */   addu      $a1, $zero, $zero
    /* 9D54 80019554 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9D58 80019558 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9D5C 8001955C 0800E003 */  jr         $ra
    /* 9D60 80019560 00000000 */   nop
endlabel func_8001951C
