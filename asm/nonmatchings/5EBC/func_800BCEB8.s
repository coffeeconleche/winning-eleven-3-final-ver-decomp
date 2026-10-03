nonmatching func_800BCEB8, 0x3C

glabel func_800BCEB8
    /* AD6B8 800BCEB8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AD6BC 800BCEBC 1000BFAF */  sw         $ra, 0x10($sp)
    /* AD6C0 800BCEC0 21108000 */  addu       $v0, $a0, $zero
    /* AD6C4 800BCEC4 2138A000 */  addu       $a3, $a1, $zero
    /* AD6C8 800BCEC8 02320700 */  srl        $a2, $a3, 8
    /* AD6CC 800BCECC 00220200 */  sll        $a0, $v0, 8
    /* AD6D0 800BCED0 03240400 */  sra        $a0, $a0, 16
    /* AD6D4 800BCED4 FF004530 */  andi       $a1, $v0, 0xFF
    /* AD6D8 800BCED8 FFFFC630 */  andi       $a2, $a2, 0xFFFF
    /* AD6DC 800BCEDC 14FD020C */  jal        func_800BF450
    /* AD6E0 800BCEE0 FF00E730 */   andi      $a3, $a3, 0xFF
    /* AD6E4 800BCEE4 1000BF8F */  lw         $ra, 0x10($sp)
    /* AD6E8 800BCEE8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* AD6EC 800BCEEC 0800E003 */  jr         $ra
    /* AD6F0 800BCEF0 00000000 */   nop
endlabel func_800BCEB8
    /* AD6F4 800BCEF4 00000000 */  nop
