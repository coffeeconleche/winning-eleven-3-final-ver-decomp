nonmatching func_800179D0, 0x50

glabel func_800179D0
    /* 81D0 800179D0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 81D4 800179D4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 81D8 800179D8 5EDB020C */  jal        func_800B6D78
    /* 81DC 800179DC 00000000 */   nop
    /* 81E0 800179E0 88AD020C */  jal        func_800AB620
    /* 81E4 800179E4 0F000424 */   addiu     $a0, $zero, 0xF
    /* 81E8 800179E8 595D000C */  jal        func_80017564
    /* 81EC 800179EC 03000424 */   addiu     $a0, $zero, 0x3
    /* 81F0 800179F0 1A80043C */  lui        $a0, %hi(D_801A6000)
    /* 81F4 800179F4 0060848C */  lw         $a0, %lo(D_801A6000)($a0)
    /* 81F8 800179F8 5965000C */  jal        func_80019564
    /* 81FC 800179FC 21280000 */   addu      $a1, $zero, $zero
    /* 8200 80017A00 1A80043C */  lui        $a0, %hi(D_801A6004)
    /* 8204 80017A04 0460848C */  lw         $a0, %lo(D_801A6004)($a0)
    /* 8208 80017A08 5965000C */  jal        func_80019564
    /* 820C 80017A0C 21280000 */   addu      $a1, $zero, $zero
    /* 8210 80017A10 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8214 80017A14 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 8218 80017A18 0800E003 */  jr         $ra
    /* 821C 80017A1C 00000000 */   nop
endlabel func_800179D0
