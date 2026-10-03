nonmatching func_800C1E78, 0x24

glabel func_800C1E78
    /* B2678 800C1E78 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B267C 800C1E7C 1000BFAF */  sw         $ra, 0x10($sp)
    /* B2680 800C1E80 21288000 */  addu       $a1, $a0, $zero
    /* B2684 800C1E84 E6E9020C */  jal        func_800BA798
    /* B2688 800C1E88 04000424 */   addiu     $a0, $zero, 0x4
    /* B268C 800C1E8C 1000BF8F */  lw         $ra, 0x10($sp)
    /* B2690 800C1E90 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B2694 800C1E94 0800E003 */  jr         $ra
    /* B2698 800C1E98 00000000 */   nop
endlabel func_800C1E78
    /* B269C 800C1E9C 00000000 */  nop
    /* B26A0 800C1EA0 00000000 */  nop
    /* B26A4 800C1EA4 00000000 */  nop
