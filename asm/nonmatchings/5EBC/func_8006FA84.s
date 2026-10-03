nonmatching func_8006FA84, 0x24

glabel func_8006FA84
    /* 60284 8006FA84 FF008430 */  andi       $a0, $a0, 0xFF
    /* 60288 8006FA88 80100400 */  sll        $v0, $a0, 2
    /* 6028C 8006FA8C 21104400 */  addu       $v0, $v0, $a0
    /* 60290 8006FA90 C0100200 */  sll        $v0, $v0, 3
    /* 60294 8006FA94 1080013C */  lui        $at, %hi(D_8010550C)
    /* 60298 8006FA98 21082200 */  addu       $at, $at, $v0
    /* 6029C 8006FA9C 0C5525A0 */  sb         $a1, %lo(D_8010550C)($at)
    /* 602A0 8006FAA0 0800E003 */  jr         $ra
    /* 602A4 8006FAA4 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_8006FA84
