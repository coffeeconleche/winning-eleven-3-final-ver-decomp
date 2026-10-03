nonmatching func_800ACFEC, 0x30

glabel func_800ACFEC
    /* 9D7EC 800ACFEC FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* 9D7F0 800ACFF0 80200200 */  sll        $a0, $v0, 2
    /* 9D7F4 800ACFF4 0D80053C */  lui        $a1, %hi(D_800CEA44)
    /* 9D7F8 800ACFF8 44EAA58C */  lw         $a1, %lo(D_800CEA44)($a1)
    /* 9D7FC 800ACFFC 0D80013C */  lui        $at, %hi(D_800CEA4C)
    /* 9D800 800AD000 21082400 */  addu       $at, $at, $a0
    /* 9D804 800AD004 4CEA248C */  lw         $a0, %lo(D_800CEA4C)($at)
    /* 9D808 800AD008 0400A38C */  lw         $v1, 0x4($a1)
    /* 9D80C 800AD00C 03004228 */  slti       $v0, $v0, 0x3
    /* 9D810 800AD010 25186400 */  or         $v1, $v1, $a0
    /* 9D814 800AD014 0800E003 */  jr         $ra
    /* 9D818 800AD018 0400A3AC */   sw        $v1, 0x4($a1)
endlabel func_800ACFEC
