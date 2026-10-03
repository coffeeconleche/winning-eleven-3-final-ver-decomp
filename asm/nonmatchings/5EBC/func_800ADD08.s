nonmatching func_800ADD08, 0x14

glabel func_800ADD08
    /* 9E508 800ADD08 04000224 */  addiu      $v0, $zero, 0x4
    /* 9E50C 800ADD0C 030082A0 */  sb         $v0, 0x3($a0)
    /* 9E510 800ADD10 20000224 */  addiu      $v0, $zero, 0x20
    /* 9E514 800ADD14 0800E003 */  jr         $ra
    /* 9E518 800ADD18 070082A0 */   sb        $v0, 0x7($a0)
endlabel func_800ADD08
