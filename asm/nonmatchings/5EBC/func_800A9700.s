nonmatching func_800A9700, 0x14

glabel func_800A9700
    /* 99F00 800A9700 B6000234 */  ori        $v0, $zero, 0xB6
    /* 99F04 800A9704 0D80013C */  lui        $at, %hi(D_800CE244)
    /* 99F08 800A9708 44E222A4 */  sh         $v0, %lo(D_800CE244)($at)
    /* 99F0C 800A970C 0800E003 */  jr         $ra
    /* 99F10 800A9710 00000000 */   nop
endlabel func_800A9700
