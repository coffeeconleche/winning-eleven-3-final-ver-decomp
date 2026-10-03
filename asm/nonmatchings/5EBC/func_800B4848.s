nonmatching func_800B4848, 0x24

glabel func_800B4848
    /* A5048 800B4848 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A504C 800B484C 1000BFAF */  sw         $ra, 0x10($sp)
    /* A5050 800B4850 00F2043C */  lui        $a0, (0xF2000001 >> 16)
    /* A5054 800B4854 EDB3020C */  jal        func_800ACFB4
    /* A5058 800B4858 01008434 */   ori       $a0, $a0, (0xF2000001 & 0xFFFF)
    /* A505C 800B485C 1000BF8F */  lw         $ra, 0x10($sp)
    /* A5060 800B4860 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A5064 800B4864 0800E003 */  jr         $ra
    /* A5068 800B4868 00000000 */   nop
endlabel func_800B4848
    /* A506C 800B486C 00000000 */  nop
    /* A5070 800B4870 00000000 */  nop
    /* A5074 800B4874 00000000 */  nop
