nonmatching func_800B7020, 0x14

glabel func_800B7020
    /* A7820 800B7020 0D80023C */  lui        $v0, %hi(D_800D3950)
    /* A7824 800B7024 5039428C */  lw         $v0, %lo(D_800D3950)($v0)
    /* A7828 800B7028 0D80013C */  lui        $at, %hi(D_800D3950)
    /* A782C 800B702C 0800E003 */  jr         $ra
    /* A7830 800B7030 503924AC */   sw        $a0, %lo(D_800D3950)($at)
endlabel func_800B7020
