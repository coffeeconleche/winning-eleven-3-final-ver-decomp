nonmatching func_800B4D04, 0x30

glabel func_800B4D04
    /* A5504 800B4D04 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A5508 800B4D08 1000BFAF */  sw         $ra, 0x10($sp)
    /* A550C 800B4D0C 1400858C */  lw         $a1, 0x14($a0)
    /* A5510 800B4D10 1800868C */  lw         $a2, 0x18($a0)
    /* A5514 800B4D14 1C00878C */  lw         $a3, 0x1C($a0)
    /* A5518 800B4D18 0180043C */  lui        $a0, %hi(D_800150A0)
    /* A551C 800B4D1C A6B5020C */  jal        func_800AD698
    /* A5520 800B4D20 A0508424 */   addiu     $a0, $a0, %lo(D_800150A0)
    /* A5524 800B4D24 1000BF8F */  lw         $ra, 0x10($sp)
    /* A5528 800B4D28 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A552C 800B4D2C 0800E003 */  jr         $ra
    /* A5530 800B4D30 00000000 */   nop
endlabel func_800B4D04
    /* A5534 800B4D34 00000000 */  nop
