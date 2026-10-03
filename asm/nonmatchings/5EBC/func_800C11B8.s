nonmatching func_800C11B8, 0x20

glabel func_800C11B8
    /* B19B8 800C11B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B19BC 800C11BC 1000BFAF */  sw         $ra, 0x10($sp)
    /* B19C0 800C11C0 7604030C */  jal        func_800C11D8
    /* B19C4 800C11C4 21200000 */   addu      $a0, $zero, $zero
    /* B19C8 800C11C8 1000BF8F */  lw         $ra, 0x10($sp)
    /* B19CC 800C11CC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B19D0 800C11D0 0800E003 */  jr         $ra
    /* B19D4 800C11D4 00000000 */   nop
endlabel func_800C11B8
