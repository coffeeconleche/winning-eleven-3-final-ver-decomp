nonmatching func_800A96EC, 0x14

glabel func_800A96EC
    /* 99EEC 800A96EC CA000234 */  ori        $v0, $zero, 0xCA
    /* 99EF0 800A96F0 0D80013C */  lui        $at, %hi(D_800CE244)
    /* 99EF4 800A96F4 44E222A4 */  sh         $v0, %lo(D_800CE244)($at)
    /* 99EF8 800A96F8 0800E003 */  jr         $ra
    /* 99EFC 800A96FC 00000000 */   nop
endlabel func_800A96EC
