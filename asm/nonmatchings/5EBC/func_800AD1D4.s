nonmatching func_800AD1D4, 0x30

glabel func_800AD1D4
    /* 9D9D4 800AD1D4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9D9D8 800AD1D8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9D9DC 800AD1DC EAB4020C */  jal        func_800AD3A8
    /* 9D9E0 800AD1E0 00000000 */   nop
    /* 9D9E4 800AD1E4 C2B3020C */  jal        func_800ACF08
    /* 9D9E8 800AD1E8 21200000 */   addu      $a0, $zero, $zero
    /* 9D9EC 800AD1EC 02B5020C */  jal        func_800AD408
    /* 9D9F0 800AD1F0 00000000 */   nop
    /* 9D9F4 800AD1F4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9D9F8 800AD1F8 01000224 */  addiu      $v0, $zero, 0x1
    /* 9D9FC 800AD1FC 0800E003 */  jr         $ra
    /* 9DA00 800AD200 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800AD1D4
