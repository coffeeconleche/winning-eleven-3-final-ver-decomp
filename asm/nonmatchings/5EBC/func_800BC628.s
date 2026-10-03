nonmatching func_800BC628, 0x30

glabel func_800BC628
    /* ACE28 800BC628 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* ACE2C 800BC62C 1000BFAF */  sw         $ra, 0x10($sp)
    /* ACE30 800BC630 CEE9020C */  jal        func_800BA738
    /* ACE34 800BC634 00000000 */   nop
    /* ACE38 800BC638 6E04030C */  jal        func_800C11B8
    /* ACE3C 800BC63C 00000000 */   nop
    /* ACE40 800BC640 4EF1020C */  jal        func_800BC538
    /* ACE44 800BC644 00000000 */   nop
    /* ACE48 800BC648 1000BF8F */  lw         $ra, 0x10($sp)
    /* ACE4C 800BC64C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* ACE50 800BC650 0800E003 */  jr         $ra
    /* ACE54 800BC654 00000000 */   nop
endlabel func_800BC628
