nonmatching func_800AD408, 0x14

glabel func_800AD408
    /* 9DC08 800AD408 0E80093C */  lui        $t1, %hi(jtbl_800E7020)
    /* 9DC0C 800AD40C 2070298D */  lw         $t1, %lo(jtbl_800E7020)($t1)
    /* 9DC10 800AD410 00000000 */  nop
    /* 9DC14 800AD414 08002001 */  jr         $t1
    /* 9DC18 800AD418 00000000 */   nop
endlabel func_800AD408
