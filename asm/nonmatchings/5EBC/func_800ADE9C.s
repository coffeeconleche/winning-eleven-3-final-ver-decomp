nonmatching func_800ADE9C, 0x20

glabel func_800ADE9C
    /* 9E69C 800ADE9C 5555033C */  lui        $v1, (0x55555555 >> 16)
    /* 9E6A0 800ADEA0 55556334 */  ori        $v1, $v1, (0x55555555 & 0xFFFF)
    /* 9E6A4 800ADEA4 06000224 */  addiu      $v0, $zero, 0x6
    /* 9E6A8 800ADEA8 030082A0 */  sb         $v0, 0x3($a0)
    /* 9E6AC 800ADEAC 4C000224 */  addiu      $v0, $zero, 0x4C
    /* 9E6B0 800ADEB0 070082A0 */  sb         $v0, 0x7($a0)
    /* 9E6B4 800ADEB4 0800E003 */  jr         $ra
    /* 9E6B8 800ADEB8 180083AC */   sw        $v1, 0x18($a0)
endlabel func_800ADE9C
