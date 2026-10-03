nonmatching func_800A96C4, 0x28

glabel func_800A96C4
    /* 99EC4 800A96C4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 99EC8 800A96C8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 99ECC 800A96CC 860F030C */  jal        func_800C3E18
    /* 99ED0 800A96D0 21200000 */   addu      $a0, $zero, $zero
    /* 99ED4 800A96D4 57A6020C */  jal        func_800A995C
    /* 99ED8 800A96D8 00000000 */   nop
    /* 99EDC 800A96DC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 99EE0 800A96E0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 99EE4 800A96E4 0800E003 */  jr         $ra
    /* 99EE8 800A96E8 00000000 */   nop
endlabel func_800A96C4
