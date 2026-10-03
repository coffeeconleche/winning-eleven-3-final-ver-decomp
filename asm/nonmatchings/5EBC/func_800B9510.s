nonmatching func_800B9510, 0x14

glabel func_800B9510
    /* A9D10 800B9510 0D80023C */  lui        $v0, %hi(D_800D3C64)
    /* A9D14 800B9514 643C428C */  lw         $v0, %lo(D_800D3C64)($v0)
    /* A9D18 800B9518 0D80013C */  lui        $at, %hi(D_800D3C64)
    /* A9D1C 800B951C 0800E003 */  jr         $ra
    /* A9D20 800B9520 643C24AC */   sw        $a0, %lo(D_800D3C64)($at)
endlabel func_800B9510
