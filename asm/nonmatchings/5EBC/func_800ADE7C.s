nonmatching func_800ADE7C, 0x20

glabel func_800ADE7C
    /* 9E67C 800ADE7C 5555033C */  lui        $v1, (0x55555555 >> 16)
    /* 9E680 800ADE80 55556334 */  ori        $v1, $v1, (0x55555555 & 0xFFFF)
    /* 9E684 800ADE84 07000224 */  addiu      $v0, $zero, 0x7
    /* 9E688 800ADE88 030082A0 */  sb         $v0, 0x3($a0)
    /* 9E68C 800ADE8C 58000224 */  addiu      $v0, $zero, 0x58
    /* 9E690 800ADE90 070082A0 */  sb         $v0, 0x7($a0)
    /* 9E694 800ADE94 0800E003 */  jr         $ra
    /* 9E698 800ADE98 1C0083AC */   sw        $v1, 0x1C($a0)
endlabel func_800ADE7C
