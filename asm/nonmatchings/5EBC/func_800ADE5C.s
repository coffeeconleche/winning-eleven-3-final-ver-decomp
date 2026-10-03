nonmatching func_800ADE5C, 0x20

glabel func_800ADE5C
    /* 9E65C 800ADE5C 5555033C */  lui        $v1, (0x55555555 >> 16)
    /* 9E660 800ADE60 55556334 */  ori        $v1, $v1, (0x55555555 & 0xFFFF)
    /* 9E664 800ADE64 05000224 */  addiu      $v0, $zero, 0x5
    /* 9E668 800ADE68 030082A0 */  sb         $v0, 0x3($a0)
    /* 9E66C 800ADE6C 48000224 */  addiu      $v0, $zero, 0x48
    /* 9E670 800ADE70 070082A0 */  sb         $v0, 0x7($a0)
    /* 9E674 800ADE74 0800E003 */  jr         $ra
    /* 9E678 800ADE78 140083AC */   sw        $v1, 0x14($a0)
endlabel func_800ADE5C
