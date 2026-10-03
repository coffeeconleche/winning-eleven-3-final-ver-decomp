nonmatching func_800C1DE8, 0x28

glabel func_800C1DE8
    /* B25E8 800C1DE8 0D80043C */  lui        $a0, %hi(D_800D55A0)
    /* B25EC 800C1DEC A055848C */  lw         $a0, %lo(D_800D55A0)($a0)
    /* B25F0 800C1DF0 FFF0033C */  lui        $v1, (0xF0FFFFFF >> 16)
    /* B25F4 800C1DF4 0000828C */  lw         $v0, 0x0($a0)
    /* B25F8 800C1DF8 FFFF6334 */  ori        $v1, $v1, (0xF0FFFFFF & 0xFFFF)
    /* B25FC 800C1DFC 24104300 */  and        $v0, $v0, $v1
    /* B2600 800C1E00 0022033C */  lui        $v1, (0x22000000 >> 16)
    /* B2604 800C1E04 25104300 */  or         $v0, $v0, $v1
    /* B2608 800C1E08 0800E003 */  jr         $ra
    /* B260C 800C1E0C 000082AC */   sw        $v0, 0x0($a0)
endlabel func_800C1DE8
