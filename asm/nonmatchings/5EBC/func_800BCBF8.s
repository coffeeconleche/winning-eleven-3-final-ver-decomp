nonmatching func_800BCBF8, 0x54

glabel func_800BCBF8
    /* AD3F8 800BCBF8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AD3FC 800BCBFC 1000BFAF */  sw         $ra, 0x10($sp)
    /* AD400 800BCC00 00240400 */  sll        $a0, $a0, 16
    /* AD404 800BCC04 03240400 */  sra        $a0, $a0, 16
    /* AD408 800BCC08 9EF2020C */  jal        func_800BCA78
    /* AD40C 800BCC0C 21280000 */   addu      $a1, $zero, $zero
    /* AD410 800BCC10 1000BF8F */  lw         $ra, 0x10($sp)
    /* AD414 800BCC14 1800BD27 */  addiu      $sp, $sp, 0x18
    /* AD418 800BCC18 0800E003 */  jr         $ra
    /* AD41C 800BCC1C 00000000 */   nop
    /* AD420 800BCC20 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AD424 800BCC24 1000BFAF */  sw         $ra, 0x10($sp)
    /* AD428 800BCC28 00240400 */  sll        $a0, $a0, 16
    /* AD42C 800BCC2C 002C0500 */  sll        $a1, $a1, 16
    /* AD430 800BCC30 03240400 */  sra        $a0, $a0, 16
    /* AD434 800BCC34 9EF2020C */  jal        func_800BCA78
    /* AD438 800BCC38 032C0500 */   sra       $a1, $a1, 16
    /* AD43C 800BCC3C 1000BF8F */  lw         $ra, 0x10($sp)
    /* AD440 800BCC40 1800BD27 */  addiu      $sp, $sp, 0x18
    /* AD444 800BCC44 0800E003 */  jr         $ra
    /* AD448 800BCC48 00000000 */   nop
endlabel func_800BCBF8
    /* AD44C 800BCC4C 00000000 */  nop
    /* AD450 800BCC50 00000000 */  nop
    /* AD454 800BCC54 00000000 */  nop
