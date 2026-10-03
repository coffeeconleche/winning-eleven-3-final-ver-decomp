nonmatching func_800ADBE8, 0x1C

glabel func_800ADBE8
    /* 9E3E8 800ADBE8 FF00033C */  lui        $v1, (0xFFFFFF >> 16)
    /* 9E3EC 800ADBEC 0000828C */  lw         $v0, 0x0($a0)
    /* 9E3F0 800ADBF0 FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
    /* 9E3F4 800ADBF4 24104300 */  and        $v0, $v0, $v1
    /* 9E3F8 800ADBF8 26104300 */  xor        $v0, $v0, $v1
    /* 9E3FC 800ADBFC 0800E003 */  jr         $ra
    /* 9E400 800ADC00 0100422C */   sltiu     $v0, $v0, 0x1
endlabel func_800ADBE8
