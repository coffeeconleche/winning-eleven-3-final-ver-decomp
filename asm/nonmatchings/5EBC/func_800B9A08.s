nonmatching func_800B9A08, 0x1C

glabel func_800B9A08
    /* AA208 800B9A08 1180013C */  lui        $at, %hi(D_8010CD84)
    /* AA20C 800B9A0C 84CD24AC */  sw         $a0, %lo(D_8010CD84)($at)
    /* AA210 800B9A10 0F80013C */  lui        $at, %hi(D_800F0F6C)
    /* AA214 800B9A14 6C0F25AC */  sw         $a1, %lo(D_800F0F6C)($at)
    /* AA218 800B9A18 1180013C */  lui        $at, %hi(D_8010CD58)
    /* AA21C 800B9A1C 0800E003 */  jr         $ra
    /* AA220 800B9A20 58CD26AC */   sw        $a2, %lo(D_8010CD58)($at)
endlabel func_800B9A08
    /* AA224 800B9A24 00000000 */  nop
