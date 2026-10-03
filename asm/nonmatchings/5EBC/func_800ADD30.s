nonmatching func_800ADD30, 0x14

glabel func_800ADD30
    /* 9E530 800ADD30 06000224 */  addiu      $v0, $zero, 0x6
    /* 9E534 800ADD34 030082A0 */  sb         $v0, 0x3($a0)
    /* 9E538 800ADD38 30000224 */  addiu      $v0, $zero, 0x30
    /* 9E53C 800ADD3C 0800E003 */  jr         $ra
    /* 9E540 800ADD40 070082A0 */   sb        $v0, 0x7($a0)
endlabel func_800ADD30
