nonmatching func_800B73F0, 0x20

glabel func_800B73F0
    /* A7BF0 800B73F0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A7BF4 800B73F4 1000BFAF */  sw         $ra, 0x10($sp)
    /* A7BF8 800B73F8 32E1020C */  jal        func_800B84C8
    /* A7BFC 800B73FC 00000000 */   nop
    /* A7C00 800B7400 1000BF8F */  lw         $ra, 0x10($sp)
    /* A7C04 800B7404 01000224 */  addiu      $v0, $zero, 0x1
    /* A7C08 800B7408 0800E003 */  jr         $ra
    /* A7C0C 800B740C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800B73F0
