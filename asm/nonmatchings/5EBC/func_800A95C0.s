nonmatching func_800A95C0, 0x28

glabel func_800A95C0
    /* 99DC0 800A95C0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 99DC4 800A95C4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 99DC8 800A95C8 0E80053C */  lui        $a1, %hi(D_800E6AE0)
    /* 99DCC 800A95CC E06AA524 */  addiu      $a1, $a1, %lo(D_800E6AE0)
    /* 99DD0 800A95D0 5CDC020C */  jal        func_800B7170
    /* 99DD4 800A95D4 06000434 */   ori       $a0, $zero, 0x6
    /* 99DD8 800A95D8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 99DDC 800A95DC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 99DE0 800A95E0 0800E003 */  jr         $ra
    /* 99DE4 800A95E4 00000000 */   nop
endlabel func_800A95C0
