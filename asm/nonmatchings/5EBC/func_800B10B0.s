nonmatching func_800B10B0, 0x28

glabel func_800B10B0
    /* A18B0 800B10B0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A18B4 800B10B4 1000BFAF */  sw         $ra, 0x10($sp)
    /* A18B8 800B10B8 0B80053C */  lui        $a1, %hi(func_800B0594)
    /* A18BC 800B10BC 9405A524 */  addiu      $a1, $a1, %lo(func_800B0594)
    /* A18C0 800B10C0 E6E9020C */  jal        func_800BA798
    /* A18C4 800B10C4 02000424 */   addiu     $a0, $zero, 0x2
    /* A18C8 800B10C8 1000BF8F */  lw         $ra, 0x10($sp)
    /* A18CC 800B10CC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A18D0 800B10D0 0800E003 */  jr         $ra
    /* A18D4 800B10D4 00000000 */   nop
endlabel func_800B10B0
