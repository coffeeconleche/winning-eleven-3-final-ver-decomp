nonmatching func_8001E730, 0x38

glabel func_8001E730
    /* EF30 8001E730 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* EF34 8001E734 1000B0AF */  sw         $s0, 0x10($sp)
    /* EF38 8001E738 21808000 */  addu       $s0, $a0, $zero
    /* EF3C 8001E73C 1400BFAF */  sw         $ra, 0x14($sp)
    /* EF40 8001E740 AE79000C */  jal        func_8001E6B8
    /* EF44 8001E744 64000424 */   addiu     $a0, $zero, 0x64
    /* EF48 8001E748 00841000 */  sll        $s0, $s0, 16
    /* EF4C 8001E74C 03841000 */  sra        $s0, $s0, 16
    /* EF50 8001E750 2A105000 */  slt        $v0, $v0, $s0
    /* EF54 8001E754 1400BF8F */  lw         $ra, 0x14($sp)
    /* EF58 8001E758 1000B08F */  lw         $s0, 0x10($sp)
    /* EF5C 8001E75C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* EF60 8001E760 0800E003 */  jr         $ra
    /* EF64 8001E764 00000000 */   nop
endlabel func_8001E730
