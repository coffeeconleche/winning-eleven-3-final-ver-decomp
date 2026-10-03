nonmatching func_800AED30, 0x34

glabel func_800AED30
    /* 9F530 800AED30 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9F534 800AED34 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9F538 800AED38 21808000 */  addu       $s0, $a0, $zero
    /* 9F53C 800AED3C 0D80053C */  lui        $a1, %hi(D_800CEAD4)
    /* 9F540 800AED40 D4EAA524 */  addiu      $a1, $a1, %lo(D_800CEAD4)
    /* 9F544 800AED44 1400BFAF */  sw         $ra, 0x14($sp)
    /* 9F548 800AED48 46C4020C */  jal        func_800B1118
    /* 9F54C 800AED4C 5C000624 */   addiu     $a2, $zero, 0x5C
    /* 9F550 800AED50 21100002 */  addu       $v0, $s0, $zero
    /* 9F554 800AED54 1400BF8F */  lw         $ra, 0x14($sp)
    /* 9F558 800AED58 1000B08F */  lw         $s0, 0x10($sp)
    /* 9F55C 800AED5C 0800E003 */  jr         $ra
    /* 9F560 800AED60 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800AED30
