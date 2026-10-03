nonmatching func_800B700C, 0x14

glabel func_800B700C
    /* A780C 800B700C 0D80023C */  lui        $v0, %hi(D_800D394C)
    /* A7810 800B7010 4C39428C */  lw         $v0, %lo(D_800D394C)($v0)
    /* A7814 800B7014 0D80013C */  lui        $at, %hi(D_800D394C)
    /* A7818 800B7018 0800E003 */  jr         $ra
    /* A781C 800B701C 4C3924AC */   sw        $a0, %lo(D_800D394C)($at)
endlabel func_800B700C
