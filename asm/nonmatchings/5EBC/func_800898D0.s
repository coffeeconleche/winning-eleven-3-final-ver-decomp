nonmatching func_800898D0, 0x30

glabel func_800898D0
    /* 7A0D0 800898D0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 7A0D4 800898D4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 7A0D8 800898D8 DA3E010C */  jal        func_8004FB68
    /* 7A0DC 800898DC 21200000 */   addu      $a0, $zero, $zero
    /* 7A0E0 800898E0 03004010 */  beqz       $v0, .L800898F0
    /* 7A0E4 800898E4 00000000 */   nop
    /* 7A0E8 800898E8 715C000C */  jal        func_800171C4
    /* 7A0EC 800898EC 0A000424 */   addiu     $a0, $zero, 0xA
  .L800898F0:
    /* 7A0F0 800898F0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 7A0F4 800898F4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 7A0F8 800898F8 0800E003 */  jr         $ra
    /* 7A0FC 800898FC 00000000 */   nop
endlabel func_800898D0
