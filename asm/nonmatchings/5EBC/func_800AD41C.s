nonmatching func_800AD41C, 0x14

glabel func_800AD41C
    /* 9DC1C 800AD41C 0E80093C */  lui        $t1, %hi(jtbl_800E7024)
    /* 9DC20 800AD420 2470298D */  lw         $t1, %lo(jtbl_800E7024)($t1)
    /* 9DC24 800AD424 00000000 */  nop
    /* 9DC28 800AD428 08002001 */  jr         $t1
    /* 9DC2C 800AD42C 00000000 */   nop
endlabel func_800AD41C
