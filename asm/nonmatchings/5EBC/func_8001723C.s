nonmatching func_8001723C, 0x1C

glabel func_8001723C
    /* 7A3C 8001723C 801F013C */  lui        $at, (0x1F8002DF >> 16)
    /* 7A40 80017240 DF0224A0 */  sb         $a0, (0x1F8002DF & 0xFFFF)($at)
    /* 7A44 80017244 01008430 */  andi       $a0, $a0, 0x1
    /* 7A48 80017248 801F013C */  lui        $at, (0x1F8002E0 >> 16)
    /* 7A4C 8001724C E00224A0 */  sb         $a0, (0x1F8002E0 & 0xFFFF)($at)
    /* 7A50 80017250 0800E003 */  jr         $ra
    /* 7A54 80017254 00000000 */   nop
endlabel func_8001723C
