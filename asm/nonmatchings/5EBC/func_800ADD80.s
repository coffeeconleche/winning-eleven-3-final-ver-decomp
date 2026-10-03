nonmatching func_800ADD80, 0x14

glabel func_800ADD80
    /* 9E580 800ADD80 08000224 */  addiu      $v0, $zero, 0x8
    /* 9E584 800ADD84 030082A0 */  sb         $v0, 0x3($a0)
    /* 9E588 800ADD88 38000224 */  addiu      $v0, $zero, 0x38
    /* 9E58C 800ADD8C 0800E003 */  jr         $ra
    /* 9E590 800ADD90 070082A0 */   sb        $v0, 0x7($a0)
endlabel func_800ADD80
