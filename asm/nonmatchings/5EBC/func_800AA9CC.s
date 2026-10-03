nonmatching func_800AA9CC, 0x1C

glabel func_800AA9CC
    /* 9B1CC 800AA9CC FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* 9B1D0 800AA9D0 90000234 */  ori        $v0, $zero, 0x90
    /* 9B1D4 800AA9D4 3C0184AF */  sw         $a0, %gp_rel(D_800E6BC8)($gp)
    /* 9B1D8 800AA9D8 CC0082A7 */  sh         $v0, %gp_rel(D_800E6B58)($gp)
    /* 9B1DC 800AA9DC AC0080AF */  sw         $zero, %gp_rel(D_800E6B38)($gp)
    /* 9B1E0 800AA9E0 0800E003 */  jr         $ra
    /* 9B1E4 800AA9E4 00000000 */   nop
endlabel func_800AA9CC
