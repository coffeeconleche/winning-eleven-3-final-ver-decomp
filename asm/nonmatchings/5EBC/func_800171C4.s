nonmatching func_800171C4, 0x18

glabel func_800171C4
    /* 79C4 800171C4 801F013C */  lui        $at, (0x1F80029A >> 16)
    /* 79C8 800171C8 9A0224A0 */  sb         $a0, (0x1F80029A & 0xFFFF)($at)
    /* 79CC 800171CC 801F013C */  lui        $at, (0x1F80029B >> 16)
    /* 79D0 800171D0 9B0220A0 */  sb         $zero, (0x1F80029B & 0xFFFF)($at)
    /* 79D4 800171D4 0800E003 */  jr         $ra
    /* 79D8 800171D8 00000000 */   nop
endlabel func_800171C4
