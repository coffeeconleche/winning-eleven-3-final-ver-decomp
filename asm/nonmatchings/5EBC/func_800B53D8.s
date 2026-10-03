nonmatching func_800B53D8, 0x20

glabel func_800B53D8
    /* A5BD8 800B53D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A5BDC 800B53DC 1000BFAF */  sw         $ra, 0x10($sp)
    /* A5BE0 800B53E0 FED4020C */  jal        func_800B53F8
    /* A5BE4 800B53E4 00000000 */   nop
    /* A5BE8 800B53E8 1000BF8F */  lw         $ra, 0x10($sp)
    /* A5BEC 800B53EC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A5BF0 800B53F0 0800E003 */  jr         $ra
    /* A5BF4 800B53F4 00000000 */   nop
endlabel func_800B53D8
