nonmatching func_800C1DC0, 0x28

glabel func_800C1DC0
    /* B25C0 800C1DC0 0D80043C */  lui        $a0, %hi(D_800D55A0)
    /* B25C4 800C1DC4 A055848C */  lw         $a0, %lo(D_800D55A0)($a0)
    /* B25C8 800C1DC8 FFF0033C */  lui        $v1, (0xF0FFFFFF >> 16)
    /* B25CC 800C1DCC 0000828C */  lw         $v0, 0x0($a0)
    /* B25D0 800C1DD0 FFFF6334 */  ori        $v1, $v1, (0xF0FFFFFF & 0xFFFF)
    /* B25D4 800C1DD4 24104300 */  and        $v0, $v0, $v1
    /* B25D8 800C1DD8 0020033C */  lui        $v1, (0x20000000 >> 16)
    /* B25DC 800C1DDC 25104300 */  or         $v0, $v0, $v1
    /* B25E0 800C1DE0 0800E003 */  jr         $ra
    /* B25E4 800C1DE4 000082AC */   sw        $v0, 0x0($a0)
endlabel func_800C1DC0
