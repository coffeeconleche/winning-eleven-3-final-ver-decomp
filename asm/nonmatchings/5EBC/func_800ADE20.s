nonmatching func_800ADE20, 0x14

glabel func_800ADE20
    /* 9E620 800ADE20 03000224 */  addiu      $v0, $zero, 0x3
    /* 9E624 800ADE24 030082A0 */  sb         $v0, 0x3($a0)
    /* 9E628 800ADE28 60000224 */  addiu      $v0, $zero, 0x60
    /* 9E62C 800ADE2C 0800E003 */  jr         $ra
    /* 9E630 800ADE30 070082A0 */   sb        $v0, 0x7($a0)
endlabel func_800ADE20
