nonmatching func_800AA9E8, 0x28

glabel func_800AA9E8
    /* 9B1E8 800AA9E8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9B1EC 800AA9EC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9B1F0 800AA9F0 1180043C */  lui        $a0, %hi(D_8010A5C0)
    /* 9B1F4 800AA9F4 C0A58424 */  addiu      $a0, $a0, %lo(D_8010A5C0)
    /* 9B1F8 800AA9F8 0711030C */  jal        func_800C441C
    /* 9B1FC 800AA9FC 00000000 */   nop
    /* 9B200 800AAA00 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9B204 800AAA04 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9B208 800AAA08 0800E003 */  jr         $ra
    /* 9B20C 800AAA0C 00000000 */   nop
endlabel func_800AA9E8
