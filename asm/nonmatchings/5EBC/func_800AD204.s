nonmatching func_800AD204, 0x38

glabel func_800AD204
    /* 9DA04 800AD204 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9DA08 800AD208 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9DA0C 800AD20C 07B5020C */  jal        func_800AD41C
    /* 9DA10 800AD210 00000000 */   nop
    /* 9DA14 800AD214 EEB4020C */  jal        func_800AD3B8
    /* 9DA18 800AD218 00000000 */   nop
    /* 9DA1C 800AD21C ADB4020C */  jal        func_800AD2B4
    /* 9DA20 800AD220 00000000 */   nop
    /* 9DA24 800AD224 0D80013C */  lui        $at, %hi(D_800CEA64)
    /* 9DA28 800AD228 64EA20AC */  sw         $zero, %lo(D_800CEA64)($at)
    /* 9DA2C 800AD22C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9DA30 800AD230 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9DA34 800AD234 0800E003 */  jr         $ra
    /* 9DA38 800AD238 00000000 */   nop
endlabel func_800AD204
