nonmatching func_801C1C5C, 0x78

glabel func_801C1C5C
    /* 38CE4 801C1C5C 1080063C */  lui        $a2, %hi(D_800FF748)
    /* 38CE8 801C1C60 48F7C624 */  addiu      $a2, $a2, %lo(D_800FF748)
    /* 38CEC 801C1C64 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 38CF0 801C1C68 05008214 */  bne        $a0, $v0, .L801C1C80
    /* 38CF4 801C1C6C 00000000 */   nop
    /* 38CF8 801C1C70 0400A014 */  bnez       $a1, .L801C1C84
    /* 38CFC 801C1C74 03008228 */   slti      $v0, $a0, 0x3
    /* 38D00 801C1C78 33070708 */  j          .L801C1CCC
    /* 38D04 801C1C7C 21100000 */   addu      $v0, $zero, $zero
  .L801C1C80:
    /* 38D08 801C1C80 03008228 */  slti       $v0, $a0, 0x3
  .L801C1C84:
    /* 38D0C 801C1C84 07004014 */  bnez       $v0, .L801C1CA4
    /* 38D10 801C1C88 04000324 */   addiu     $v1, $zero, 0x4
    /* 38D14 801C1C8C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 38D18 801C1C90 2108C100 */  addu       $at, $a2, $at
    /* 38D1C 801C1C94 208F2390 */  lbu        $v1, -0x70E0($at)
    /* 38D20 801C1C98 03000224 */  addiu      $v0, $zero, 0x3
    /* 38D24 801C1C9C 0B006210 */  beq        $v1, $v0, .L801C1CCC
    /* 38D28 801C1CA0 04000324 */   addiu     $v1, $zero, 0x4
  .L801C1CA4:
    /* 38D2C 801C1CA4 09008314 */  bne        $a0, $v1, .L801C1CCC
    /* 38D30 801C1CA8 02000224 */   addiu     $v0, $zero, 0x2
    /* 38D34 801C1CAC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 38D38 801C1CB0 2108C100 */  addu       $at, $a2, $at
    /* 38D3C 801C1CB4 208F2290 */  lbu        $v0, -0x70E0($at)
    /* 38D40 801C1CB8 00000000 */  nop
    /* 38D44 801C1CBC FCFF4224 */  addiu      $v0, $v0, -0x4
    /* 38D48 801C1CC0 2610A200 */  xor        $v0, $a1, $v0
    /* 38D4C 801C1CC4 2B100200 */  sltu       $v0, $zero, $v0
    /* 38D50 801C1CC8 40100200 */  sll        $v0, $v0, 1
  .L801C1CCC:
    /* 38D54 801C1CCC 0800E003 */  jr         $ra
    /* 38D58 801C1CD0 00000000 */   nop
endlabel func_801C1C5C
