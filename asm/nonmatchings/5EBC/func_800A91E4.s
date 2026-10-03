nonmatching func_800A91E4, 0x28

glabel func_800A91E4
    /* 999E4 800A91E4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 999E8 800A91E8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 999EC 800A91EC 0E80053C */  lui        $a1, %hi(D_800E6AF8)
    /* 999F0 800A91F0 F86AA524 */  addiu      $a1, $a1, %lo(D_800E6AF8)
    /* 999F4 800A91F4 FBDB020C */  jal        func_800B6FEC
    /* 999F8 800A91F8 01000434 */   ori       $a0, $zero, 0x1
    /* 999FC 800A91FC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 99A00 800A9200 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 99A04 800A9204 0800E003 */  jr         $ra
    /* 99A08 800A9208 00000000 */   nop
endlabel func_800A91E4
