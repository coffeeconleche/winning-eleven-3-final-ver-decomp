nonmatching func_800AD354, 0x40

glabel func_800AD354
    /* 9DB54 800AD354 0D80033C */  lui        $v1, %hi(D_800CEA6C)
    /* 9DB58 800AD358 6CEA638C */  lw         $v1, %lo(D_800CEA6C)($v1)
    /* 9DB5C 800AD35C 00000000 */  nop
    /* 9DB60 800AD360 0400628C */  lw         $v0, 0x4($v1)
    /* 9DB64 800AD364 00000000 */  nop
    /* 9DB68 800AD368 01004230 */  andi       $v0, $v0, 0x1
    /* 9DB6C 800AD36C 07004010 */  beqz       $v0, .L800AD38C
    /* 9DB70 800AD370 21100000 */   addu      $v0, $zero, $zero
    /* 9DB74 800AD374 0000628C */  lw         $v0, 0x0($v1)
    /* 9DB78 800AD378 00000000 */  nop
    /* 9DB7C 800AD37C 01004230 */  andi       $v0, $v0, 0x1
    /* 9DB80 800AD380 02004014 */  bnez       $v0, .L800AD38C
    /* 9DB84 800AD384 01000224 */   addiu     $v0, $zero, 0x1
    /* 9DB88 800AD388 21100000 */  addu       $v0, $zero, $zero
  .L800AD38C:
    /* 9DB8C 800AD38C 0800E003 */  jr         $ra
    /* 9DB90 800AD390 00000000 */   nop
endlabel func_800AD354
    /* 9DB94 800AD394 00000000 */  nop
