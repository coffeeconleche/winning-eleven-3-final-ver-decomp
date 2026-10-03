nonmatching func_800B6FEC, 0x20

glabel func_800B6FEC
    /* A77EC 800B6FEC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A77F0 800B6FF0 1000BFAF */  sw         $ra, 0x10($sp)
    /* A77F4 800B6FF4 7DDF020C */  jal        func_800B7DF4
    /* A77F8 800B6FF8 00000000 */   nop
    /* A77FC 800B6FFC 1000BF8F */  lw         $ra, 0x10($sp)
    /* A7800 800B7000 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A7804 800B7004 0800E003 */  jr         $ra
    /* A7808 800B7008 00000000 */   nop
endlabel func_800B6FEC
