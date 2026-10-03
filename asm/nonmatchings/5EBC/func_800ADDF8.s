nonmatching func_800ADDF8, 0x14

glabel func_800ADDF8
    /* 9E5F8 800ADDF8 02000224 */  addiu      $v0, $zero, 0x2
    /* 9E5FC 800ADDFC 030082A0 */  sb         $v0, 0x3($a0)
    /* 9E600 800ADE00 70000224 */  addiu      $v0, $zero, 0x70
    /* 9E604 800ADE04 0800E003 */  jr         $ra
    /* 9E608 800ADE08 070082A0 */   sb        $v0, 0x7($a0)
endlabel func_800ADDF8
