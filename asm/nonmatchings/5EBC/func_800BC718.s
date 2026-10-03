nonmatching func_800BC718, 0x50

glabel func_800BC718
    /* ACF18 800BC718 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* ACF1C 800BC71C 03000224 */  addiu      $v0, $zero, 0x3
    /* ACF20 800BC720 00240400 */  sll        $a0, $a0, 16
    /* ACF24 800BC724 03240400 */  sra        $a0, $a0, 16
    /* ACF28 800BC728 1000A2AF */  sw         $v0, 0x10($sp)
    /* ACF2C 800BC72C C0110400 */  sll        $v0, $a0, 7
    /* ACF30 800BC730 21104400 */  addu       $v0, $v0, $a0
    /* ACF34 800BC734 002C0500 */  sll        $a1, $a1, 16
    /* ACF38 800BC738 032C0500 */  sra        $a1, $a1, 16
    /* ACF3C 800BC73C 1400A2A7 */  sh         $v0, 0x14($sp)
    /* ACF40 800BC740 C0110500 */  sll        $v0, $a1, 7
    /* ACF44 800BC744 21104500 */  addu       $v0, $v0, $a1
    /* ACF48 800BC748 1000A427 */  addiu      $a0, $sp, 0x10
    /* ACF4C 800BC74C 3800BFAF */  sw         $ra, 0x38($sp)
    /* ACF50 800BC750 F20F030C */  jal        func_800C3FC8
    /* ACF54 800BC754 1600A2A7 */   sh        $v0, 0x16($sp)
    /* ACF58 800BC758 3800BF8F */  lw         $ra, 0x38($sp)
    /* ACF5C 800BC75C 4000BD27 */  addiu      $sp, $sp, 0x40
    /* ACF60 800BC760 0800E003 */  jr         $ra
    /* ACF64 800BC764 00000000 */   nop
endlabel func_800BC718
