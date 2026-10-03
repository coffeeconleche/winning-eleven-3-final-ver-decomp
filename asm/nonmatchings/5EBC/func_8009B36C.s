nonmatching func_8009B36C, 0x18C

glabel func_8009B36C
    /* 8BB6C 8009B36C 00008290 */  lbu        $v0, 0x0($a0)
    /* 8BB70 8009B370 0D80013C */  lui        $at, %hi(D_800CB3FB)
    /* 8BB74 8009B374 21082200 */  addu       $at, $at, $v0
    /* 8BB78 8009B378 FBB32290 */  lbu        $v0, %lo(D_800CB3FB)($at)
    /* 8BB7C 8009B37C 00000000 */  nop
    /* 8BB80 8009B380 FFFF4424 */  addiu      $a0, $v0, -0x1
    /* 8BB84 8009B384 1200822C */  sltiu      $v0, $a0, 0x12
    /* 8BB88 8009B388 31004010 */  beqz       $v0, .L8009B450
    /* 8BB8C 8009B38C 801F0C3C */   lui       $t4, (0x1F800190 >> 16)
    /* 8BB90 8009B390 80100400 */  sll        $v0, $a0, 2
    /* 8BB94 8009B394 0180013C */  lui        $at, %hi(jtbl_8001421C)
    /* 8BB98 8009B398 21082200 */  addu       $at, $at, $v0
    /* 8BB9C 8009B39C 1C42228C */  lw         $v0, %lo(jtbl_8001421C)($at)
    /* 8BBA0 8009B3A0 00000000 */  nop
    /* 8BBA4 8009B3A4 08004000 */  jr         $v0
    /* 8BBA8 8009B3A8 00000000 */   nop
  jlabel .L8009B3AC
    /* 8BBAC 8009B3AC F26C0208 */  j          .L8009B3C8
    /* 8BBB0 8009B3B0 21400000 */   addu      $t0, $zero, $zero
  jlabel .L8009B3B4
    /* 8BBB4 8009B3B4 F26C0208 */  j          .L8009B3C8
    /* 8BBB8 8009B3B8 20000824 */   addiu     $t0, $zero, 0x20
  jlabel .L8009B3BC
    /* 8BBBC 8009B3BC F26C0208 */  j          .L8009B3C8
    /* 8BBC0 8009B3C0 40000824 */   addiu     $t0, $zero, 0x40
  jlabel .L8009B3C4
    /* 8BBC4 8009B3C4 60000824 */  addiu      $t0, $zero, 0x60
  .L8009B3C8:
    /* 8BBC8 8009B3C8 21380000 */  addu       $a3, $zero, $zero
    /* 8BBCC 8009B3CC 146D0208 */  j          .L8009B450
    /* 8BBD0 8009B3D0 21180000 */   addu      $v1, $zero, $zero
  jlabel .L8009B3D4
    /* 8BBD4 8009B3D4 FC6C0208 */  j          .L8009B3F0
    /* 8BBD8 8009B3D8 21400000 */   addu      $t0, $zero, $zero
  jlabel .L8009B3DC
    /* 8BBDC 8009B3DC FC6C0208 */  j          .L8009B3F0
    /* 8BBE0 8009B3E0 20000824 */   addiu     $t0, $zero, 0x20
  jlabel .L8009B3E4
    /* 8BBE4 8009B3E4 FC6C0208 */  j          .L8009B3F0
    /* 8BBE8 8009B3E8 40000824 */   addiu     $t0, $zero, 0x40
  jlabel .L8009B3EC
    /* 8BBEC 8009B3EC 60000824 */  addiu      $t0, $zero, 0x60
  .L8009B3F0:
    /* 8BBF0 8009B3F0 20000724 */  addiu      $a3, $zero, 0x20
    /* 8BBF4 8009B3F4 146D0208 */  j          .L8009B450
    /* 8BBF8 8009B3F8 21180000 */   addu      $v1, $zero, $zero
  jlabel .L8009B3FC
    /* 8BBFC 8009B3FC 21400000 */  addu       $t0, $zero, $zero
    /* 8BC00 8009B400 136D0208 */  j          .L8009B44C
    /* 8BC04 8009B404 21380000 */   addu      $a3, $zero, $zero
  jlabel .L8009B408
    /* 8BC08 8009B408 20000824 */  addiu      $t0, $zero, 0x20
    /* 8BC0C 8009B40C 136D0208 */  j          .L8009B44C
    /* 8BC10 8009B410 21380000 */   addu      $a3, $zero, $zero
  jlabel .L8009B414
    /* 8BC14 8009B414 40000824 */  addiu      $t0, $zero, 0x40
    /* 8BC18 8009B418 136D0208 */  j          .L8009B44C
    /* 8BC1C 8009B41C 21380000 */   addu      $a3, $zero, $zero
  jlabel .L8009B420
    /* 8BC20 8009B420 60000824 */  addiu      $t0, $zero, 0x60
    /* 8BC24 8009B424 136D0208 */  j          .L8009B44C
    /* 8BC28 8009B428 21380000 */   addu      $a3, $zero, $zero
  jlabel .L8009B42C
    /* 8BC2C 8009B42C 126D0208 */  j          .L8009B448
    /* 8BC30 8009B430 21400000 */   addu      $t0, $zero, $zero
  jlabel .L8009B434
    /* 8BC34 8009B434 126D0208 */  j          .L8009B448
    /* 8BC38 8009B438 20000824 */   addiu     $t0, $zero, 0x20
  jlabel .L8009B43C
    /* 8BC3C 8009B43C 126D0208 */  j          .L8009B448
    /* 8BC40 8009B440 40000824 */   addiu     $t0, $zero, 0x40
  jlabel .L8009B444
    /* 8BC44 8009B444 60000824 */  addiu      $t0, $zero, 0x60
  .L8009B448:
    /* 8BC48 8009B448 20000724 */  addiu      $a3, $zero, 0x20
  .L8009B44C:
    /* 8BC4C 8009B44C 1E000324 */  addiu      $v1, $zero, 0x1E
  jlabel .L8009B450
    /* 8BC50 8009B450 21480000 */  addu       $t1, $zero, $zero
    /* 8BC54 8009B454 21580301 */  addu       $t3, $t0, $v1
    /* 8BC58 8009B458 E2FF6224 */  addiu      $v0, $v1, -0x1E
    /* 8BC5C 8009B45C 23500201 */  subu       $t2, $t0, $v0
    /* 8BC60 8009B460 21400000 */  addu       $t0, $zero, $zero
  .L8009B464:
    /* 8BC64 8009B464 9001848D */  lw         $a0, (0x1F800190 & 0xFFFF)($t4)
    /* 8BC68 8009B468 0000A390 */  lbu        $v1, 0x0($a1)
    /* 8BC6C 8009B46C 21208800 */  addu       $a0, $a0, $t0
    /* 8BC70 8009B470 80100300 */  sll        $v0, $v1, 2
    /* 8BC74 8009B474 21104300 */  addu       $v0, $v0, $v1
    /* 8BC78 8009B478 C0100200 */  sll        $v0, $v0, 3
    /* 8BC7C 8009B47C 60364224 */  addiu      $v0, $v0, 0x3660
    /* 8BC80 8009B480 21208200 */  addu       $a0, $a0, $v0
    /* 8BC84 8009B484 0C008BA0 */  sb         $t3, 0xC($a0)
    /* 8BC88 8009B488 0000C290 */  lbu        $v0, 0x0($a2)
    /* 8BC8C 8009B48C 14008AA0 */  sb         $t2, 0x14($a0)
    /* 8BC90 8009B490 80110200 */  sll        $v0, $v0, 6
    /* 8BC94 8009B494 2110E200 */  addu       $v0, $a3, $v0
    /* 8BC98 8009B498 0D0082A0 */  sb         $v0, 0xD($a0)
    /* 8BC9C 8009B49C 0000C290 */  lbu        $v0, 0x0($a2)
    /* 8BCA0 8009B4A0 1C008BA0 */  sb         $t3, 0x1C($a0)
    /* 8BCA4 8009B4A4 80110200 */  sll        $v0, $v0, 6
    /* 8BCA8 8009B4A8 2110E200 */  addu       $v0, $a3, $v0
    /* 8BCAC 8009B4AC 150082A0 */  sb         $v0, 0x15($a0)
    /* 8BCB0 8009B4B0 0000C290 */  lbu        $v0, 0x0($a2)
    /* 8BCB4 8009B4B4 01002925 */  addiu      $t1, $t1, 0x1
    /* 8BCB8 8009B4B8 24008AA0 */  sb         $t2, 0x24($a0)
    /* 8BCBC 8009B4BC 80110200 */  sll        $v0, $v0, 6
    /* 8BCC0 8009B4C0 1F004224 */  addiu      $v0, $v0, 0x1F
    /* 8BCC4 8009B4C4 2110E200 */  addu       $v0, $a3, $v0
    /* 8BCC8 8009B4C8 1D0082A0 */  sb         $v0, 0x1D($a0)
    /* 8BCCC 8009B4CC 0000C290 */  lbu        $v0, 0x0($a2)
    /* 8BCD0 8009B4D0 00000000 */  nop
    /* 8BCD4 8009B4D4 80110200 */  sll        $v0, $v0, 6
    /* 8BCD8 8009B4D8 1F004224 */  addiu      $v0, $v0, 0x1F
    /* 8BCDC 8009B4DC 2110E200 */  addu       $v0, $a3, $v0
    /* 8BCE0 8009B4E0 250082A0 */  sb         $v0, 0x25($a0)
    /* 8BCE4 8009B4E4 02002229 */  slti       $v0, $t1, 0x2
    /* 8BCE8 8009B4E8 DEFF4014 */  bnez       $v0, .L8009B464
    /* 8BCEC 8009B4EC C03A0825 */   addiu     $t0, $t0, 0x3AC0
    /* 8BCF0 8009B4F0 0800E003 */  jr         $ra
    /* 8BCF4 8009B4F4 00000000 */   nop
endlabel func_8009B36C
