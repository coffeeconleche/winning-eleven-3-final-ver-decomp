nonmatching func_800171FC, 0x10

glabel func_800171FC
    /* 79FC 800171FC 801F013C */  lui        $at, (0x1F80029B >> 16)
    /* 7A00 80017200 9B0224A0 */  sb         $a0, (0x1F80029B & 0xFFFF)($at)
    /* 7A04 80017204 0800E003 */  jr         $ra
    /* 7A08 80017208 00000000 */   nop
endlabel func_800171FC
