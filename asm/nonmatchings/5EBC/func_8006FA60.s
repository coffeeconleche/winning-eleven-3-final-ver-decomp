nonmatching func_8006FA60, 0x24

glabel func_8006FA60
    /* 60260 8006FA60 FF008430 */  andi       $a0, $a0, 0xFF
    /* 60264 8006FA64 80100400 */  sll        $v0, $a0, 2
    /* 60268 8006FA68 21104400 */  addu       $v0, $v0, $a0
    /* 6026C 8006FA6C C0100200 */  sll        $v0, $v0, 3
    /* 60270 8006FA70 1080013C */  lui        $at, %hi(D_8010551D)
    /* 60274 8006FA74 21082200 */  addu       $at, $at, $v0
    /* 60278 8006FA78 1D5525A0 */  sb         $a1, %lo(D_8010551D)($at)
    /* 6027C 8006FA7C 0800E003 */  jr         $ra
    /* 60280 8006FA80 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_8006FA60
