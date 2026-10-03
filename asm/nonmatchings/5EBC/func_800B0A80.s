nonmatching func_800B0A80, 0x34

glabel func_800B0A80
    /* A1280 800B0A80 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A1284 800B0A84 1000BFAF */  sw         $ra, 0x10($sp)
    /* A1288 800B0A88 46E9020C */  jal        func_800BA518
    /* A128C 800B0A8C FFFF0424 */   addiu     $a0, $zero, -0x1
    /* A1290 800B0A90 F0004224 */  addiu      $v0, $v0, 0xF0
    /* A1294 800B0A94 0D80013C */  lui        $at, %hi(D_800CEBD0)
    /* A1298 800B0A98 D0EB22AC */  sw         $v0, %lo(D_800CEBD0)($at)
    /* A129C 800B0A9C 0D80013C */  lui        $at, %hi(D_800CEBD4)
    /* A12A0 800B0AA0 D4EB20AC */  sw         $zero, %lo(D_800CEBD4)($at)
    /* A12A4 800B0AA4 1000BF8F */  lw         $ra, 0x10($sp)
    /* A12A8 800B0AA8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A12AC 800B0AAC 0800E003 */  jr         $ra
    /* A12B0 800B0AB0 00000000 */   nop
endlabel func_800B0A80
