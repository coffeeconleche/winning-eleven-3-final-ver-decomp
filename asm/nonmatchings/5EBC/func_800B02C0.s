nonmatching func_800B02C0, 0x24

glabel func_800B02C0
    /* A0AC0 800B02C0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A0AC4 800B02C4 1000BFAF */  sw         $ra, 0x10($sp)
    /* A0AC8 800B02C8 2138C000 */  addu       $a3, $a2, $zero
    /* A0ACC 800B02CC B9C0020C */  jal        func_800B02E4
    /* A0AD0 800B02D0 21300000 */   addu      $a2, $zero, $zero
    /* A0AD4 800B02D4 1000BF8F */  lw         $ra, 0x10($sp)
    /* A0AD8 800B02D8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A0ADC 800B02DC 0800E003 */  jr         $ra
    /* A0AE0 800B02E0 00000000 */   nop
endlabel func_800B02C0
