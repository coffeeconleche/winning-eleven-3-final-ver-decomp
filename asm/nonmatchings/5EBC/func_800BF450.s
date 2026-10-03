nonmatching func_800BF450, 0x3C

glabel func_800BF450
    /* AFC50 800BF450 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AFC54 800BF454 1000BFAF */  sw         $ra, 0x10($sp)
    /* AFC58 800BF458 00140400 */  sll        $v0, $a0, 16
    /* AFC5C 800BF45C 001C0500 */  sll        $v1, $a1, 16
    /* AFC60 800BF460 FFFFC730 */  andi       $a3, $a2, 0xFFFF
    /* AFC64 800BF464 21000424 */  addiu      $a0, $zero, 0x21
    /* AFC68 800BF468 032C0200 */  sra        $a1, $v0, 16
    /* AFC6C 800BF46C 7FFC020C */  jal        func_800BF1FC
    /* AFC70 800BF470 03340300 */   sra       $a2, $v1, 16
    /* AFC74 800BF474 1000BF8F */  lw         $ra, 0x10($sp)
    /* AFC78 800BF478 1800BD27 */  addiu      $sp, $sp, 0x18
    /* AFC7C 800BF47C 0800E003 */  jr         $ra
    /* AFC80 800BF480 00000000 */   nop
    /* AFC84 800BF484 0800E003 */  jr         $ra
    /* AFC88 800BF488 00000000 */   nop
endlabel func_800BF450
    /* AFC8C 800BF48C 00000000 */  nop
    /* AFC90 800BF490 00000000 */  nop
    /* AFC94 800BF494 00000000 */  nop
