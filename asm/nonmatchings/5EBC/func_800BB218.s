nonmatching func_800BB218, 0x14

glabel func_800BB218
    /* ABA18 800BB218 0D80023C */  lui        $v0, %hi(D_800D4EF4)
    /* ABA1C 800BB21C F44E428C */  lw         $v0, %lo(D_800D4EF4)($v0)
    /* ABA20 800BB220 0D80013C */  lui        $at, %hi(D_800D4EF4)
    /* ABA24 800BB224 0800E003 */  jr         $ra
    /* ABA28 800BB228 F44E24AC */   sw        $a0, %lo(D_800D4EF4)($at)
endlabel func_800BB218
