nonmatching func_800AA7C4, 0x28

glabel func_800AA7C4
    /* 9AFC4 800AA7C4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9AFC8 800AA7C8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9AFCC 800AA7CC FBA9020C */  jal        func_800AA7EC
    /* 9AFD0 800AA7D0 00000000 */   nop
    /* 9AFD4 800AA7D4 CDA6020C */  jal        func_800A9B34
    /* 9AFD8 800AA7D8 00000000 */   nop
    /* 9AFDC 800AA7DC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9AFE0 800AA7E0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9AFE4 800AA7E4 0800E003 */  jr         $ra
    /* 9AFE8 800AA7E8 00000000 */   nop
endlabel func_800AA7C4
