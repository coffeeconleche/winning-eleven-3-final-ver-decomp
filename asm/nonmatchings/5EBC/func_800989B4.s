nonmatching func_800989B4, 0x14

glabel func_800989B4
    /* 891B4 800989B4 0A000224 */  addiu      $v0, $zero, 0xA
    /* 891B8 800989B8 801F013C */  lui        $at, (0x1F8000E0 >> 16)
    /* 891BC 800989BC E00022A4 */  sh         $v0, (0x1F8000E0 & 0xFFFF)($at)
    /* 891C0 800989C0 0800E003 */  jr         $ra
    /* 891C4 800989C4 00000000 */   nop
endlabel func_800989B4
