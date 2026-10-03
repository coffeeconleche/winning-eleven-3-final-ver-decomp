nonmatching func_800C5AA8, 0xA4

glabel func_800C5AA8
    /* B62A8 800C5AA8 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* B62AC 800C5AAC 08004001 */  jr         $t2
    /* B62B0 800C5AB0 4C000924 */   addiu     $t1, $zero, 0x4C
    /* B62B4 800C5AB4 00000000 */  nop
    /* B62B8 800C5AB8 0A006F94 */  lhu        $t7, 0xA($v1)
    /* B62BC 800C5ABC 0000083C */  lui        $t0, (0x0 >> 16)
    /* B62C0 800C5AC0 25C0E201 */  or         $t8, $t7, $v0
    /* B62C4 800C5AC4 12001937 */  ori        $t9, $t8, 0x12
    /* B62C8 800C5AC8 0A0079A4 */  sh         $t9, 0xA($v1)
    /* B62CC 800C5ACC 28000824 */  addiu      $t0, $zero, 0x28
  .L800C5AD0:
    /* B62D0 800C5AD0 FFFF0825 */  addiu      $t0, $t0, -0x1
    /* B62D4 800C5AD4 FEFF0015 */  bnez       $t0, .L800C5AD0
    /* B62D8 800C5AD8 00000000 */   nop
    /* B62DC 800C5ADC 0800E003 */  jr         $ra
    /* B62E0 800C5AE0 00000000 */   nop
    /* B62E4 800C5AE4 7410628C */  lw         $v0, 0x1074($v1)
    /* B62E8 800C5AE8 00000000 */  nop
    /* B62EC 800C5AEC 80004230 */  andi       $v0, $v0, 0x80
    /* B62F0 800C5AF0 0B004010 */  beqz       $v0, .L800C5B20
    /* B62F4 800C5AF4 00000000 */   nop
  .L800C5AF8:
    /* B62F8 800C5AF8 4410628C */  lw         $v0, 0x1044($v1)
    /* B62FC 800C5AFC 00000000 */  nop
    /* B6300 800C5B00 80004230 */  andi       $v0, $v0, 0x80
    /* B6304 800C5B04 FCFF4014 */  bnez       $v0, .L800C5AF8
    /* B6308 800C5B08 00000000 */   nop
    /* B630C 800C5B0C 0100023C */  lui        $v0, (0x10000 >> 16)
    /* B6310 800C5B10 FCDF428C */  lw         $v0, -0x2004($v0)
    /* B6314 800C5B14 00000000 */  nop
    /* B6318 800C5B18 08004000 */  jr         $v0
    /* B631C 800C5B1C 00000000 */   nop
  .L800C5B20:
    /* B6320 800C5B20 0800E003 */  jr         $ra
    /* B6324 800C5B24 00000000 */   nop
  alabel D_800C5B28
    /* B6328 800C5B28 01A0023C */  lui        $v0, %hi(D_A000DFAC)
    /* B632C 800C5B2C ACDF4224 */  addiu      $v0, $v0, %lo(D_A000DFAC)
    /* B6330 800C5B30 08004000 */  jr         $v0
    /* B6334 800C5B34 00000000 */   nop
    /* B6338 800C5B38 00000000 */  nop
  alabel D_800C5B3C
    /* B633C 800C5B3C 01A0083C */  lui        $t0, %hi(D_A000DF80)
    /* B6340 800C5B40 80DF0825 */  addiu      $t0, $t0, %lo(D_A000DF80)
    /* B6344 800C5B44 09F80001 */  jalr       $t0
    /* B6348 800C5B48 00000000 */   nop
endlabel func_800C5AA8
    /* B634C 800C5B4C 00000000 */  nop
