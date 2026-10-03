nonmatching func_800B6648, 0x3C

glabel func_800B6648
    /* A6E48 800B6648 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A6E4C 800B664C 05008004 */  bltz       $a0, .L800B6664
    /* A6E50 800B6650 1000BFAF */   sw        $ra, 0x10($sp)
    /* A6E54 800B6654 A1D9020C */  jal        func_800B6684
    /* A6E58 800B6658 FF0F8430 */   andi      $a0, $a0, 0xFFF
    /* A6E5C 800B665C 9DD90208 */  j          .L800B6674
    /* A6E60 800B6660 00000000 */   nop
  .L800B6664:
    /* A6E64 800B6664 23200400 */  negu       $a0, $a0
    /* A6E68 800B6668 A1D9020C */  jal        func_800B6684
    /* A6E6C 800B666C FF0F8430 */   andi      $a0, $a0, 0xFFF
    /* A6E70 800B6670 23100200 */  negu       $v0, $v0
  .L800B6674:
    /* A6E74 800B6674 1000BF8F */  lw         $ra, 0x10($sp)
    /* A6E78 800B6678 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A6E7C 800B667C 0800E003 */  jr         $ra
    /* A6E80 800B6680 00000000 */   nop
endlabel func_800B6648
