nonmatching func_800484B8, 0x40

glabel func_800484B8
    /* 38CB8 800484B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 38CBC 800484BC B0FE0224 */  addiu      $v0, $zero, -0x150
    /* 38CC0 800484C0 00240400 */  sll        $a0, $a0, 16
    /* 38CC4 800484C4 002C0500 */  sll        $a1, $a1, 16
    /* 38CC8 800484C8 03240400 */  sra        $a0, $a0, 16
    /* 38CCC 800484CC 032C0500 */  sra        $a1, $a1, 16
    /* 38CD0 800484D0 FFFFC630 */  andi       $a2, $a2, 0xFFFF
    /* 38CD4 800484D4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 38CD8 800484D8 801F013C */  lui        $at, (0x1F8000F2 >> 16)
    /* 38CDC 800484DC F20022A4 */  sh         $v0, (0x1F8000F2 & 0xFFFF)($at)
    /* 38CE0 800484E0 3E21010C */  jal        func_800484F8
    /* 38CE4 800484E4 21380000 */   addu      $a3, $zero, $zero
    /* 38CE8 800484E8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 38CEC 800484EC FF004230 */  andi       $v0, $v0, 0xFF
    /* 38CF0 800484F0 0800E003 */  jr         $ra
    /* 38CF4 800484F4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800484B8
