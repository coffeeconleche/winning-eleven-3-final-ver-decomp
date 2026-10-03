nonmatching func_801B4FA8, 0x64

glabel func_801B4FA8
    /* 2C030 801B4FA8 1080063C */  lui        $a2, %hi(D_800FF748)
    /* 2C034 801B4FAC 48F7C624 */  addiu      $a2, $a2, %lo(D_800FF748)
    /* 2C038 801B4FB0 21280000 */  addu       $a1, $zero, $zero
    /* 2C03C 801B4FB4 80AB0734 */  ori        $a3, $zero, 0xAB80
    /* 2C040 801B4FB8 FF008430 */  andi       $a0, $a0, 0xFF
  .L801B4FBC:
    /* 2C044 801B4FBC 2110C500 */  addu       $v0, $a2, $a1
    /* 2C048 801B4FC0 21104700 */  addu       $v0, $v0, $a3
    /* 2C04C 801B4FC4 00004390 */  lbu        $v1, 0x0($v0)
    /* 2C050 801B4FC8 00000000 */  nop
    /* 2C054 801B4FCC C0100300 */  sll        $v0, $v1, 3
    /* 2C058 801B4FD0 21104300 */  addu       $v0, $v0, $v1
    /* 2C05C 801B4FD4 80100200 */  sll        $v0, $v0, 2
    /* 2C060 801B4FD8 2110C200 */  addu       $v0, $a2, $v0
    /* 2C064 801B4FDC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2C068 801B4FE0 21084100 */  addu       $at, $v0, $at
    /* 2C06C 801B4FE4 258F2290 */  lbu        $v0, -0x70DB($at)
    /* 2C070 801B4FE8 00000000 */  nop
    /* 2C074 801B4FEC 05004410 */  beq        $v0, $a0, .L801B5004
    /* 2C078 801B4FF0 00000000 */   nop
    /* 2C07C 801B4FF4 0100A524 */  addiu      $a1, $a1, 0x1
    /* 2C080 801B4FF8 2000A228 */  slti       $v0, $a1, 0x20
    /* 2C084 801B4FFC EFFF4014 */  bnez       $v0, .L801B4FBC
    /* 2C088 801B5000 00000000 */   nop
  .L801B5004:
    /* 2C08C 801B5004 0800E003 */  jr         $ra
    /* 2C090 801B5008 FF00A230 */   andi      $v0, $a1, 0xFF
endlabel func_801B4FA8
