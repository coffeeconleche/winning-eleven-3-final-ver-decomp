nonmatching func_800ADEBC, 0x20

glabel func_800ADEBC
    /* 9E6BC 800ADEBC 5555033C */  lui        $v1, (0x55555555 >> 16)
    /* 9E6C0 800ADEC0 55556334 */  ori        $v1, $v1, (0x55555555 & 0xFFFF)
    /* 9E6C4 800ADEC4 09000224 */  addiu      $v0, $zero, 0x9
    /* 9E6C8 800ADEC8 030082A0 */  sb         $v0, 0x3($a0)
    /* 9E6CC 800ADECC 5C000224 */  addiu      $v0, $zero, 0x5C
    /* 9E6D0 800ADED0 070082A0 */  sb         $v0, 0x7($a0)
    /* 9E6D4 800ADED4 0800E003 */  jr         $ra
    /* 9E6D8 800ADED8 240083AC */   sw        $v1, 0x24($a0)
endlabel func_800ADEBC
