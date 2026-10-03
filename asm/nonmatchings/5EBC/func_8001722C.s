nonmatching func_8001722C, 0x10

glabel func_8001722C
    /* 7A2C 8001722C 801F013C */  lui        $at, (0x1F80029C >> 16)
    /* 7A30 80017230 9C0224A0 */  sb         $a0, (0x1F80029C & 0xFFFF)($at)
    /* 7A34 80017234 0800E003 */  jr         $ra
    /* 7A38 80017238 00000000 */   nop
endlabel func_8001722C
