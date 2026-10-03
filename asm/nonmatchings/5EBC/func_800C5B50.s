nonmatching func_800C5B50, 0x94

glabel func_800C5B50
    /* B6350 800C5B50 0E80013C */  lui        $at, %hi(D_800E7328)
    /* B6354 800C5B54 28733FAC */  sw         $ra, %lo(D_800E7328)($at)
    /* B6358 800C5B58 F6B4020C */  jal        func_800AD3D8
    /* B635C 800C5B5C 00000000 */   nop
    /* B6360 800C5B60 56000924 */  addiu      $t1, $zero, 0x56
    /* B6364 800C5B64 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* B6368 800C5B68 09F84001 */  jalr       $t2
    /* B636C 800C5B6C 00000000 */   nop
    /* B6370 800C5B70 1800428C */  lw         $v0, 0x18($v0)
    /* B6374 800C5B74 00000000 */  nop
    /* B6378 800C5B78 7000438C */  lw         $v1, 0x70($v0)
    /* B637C 800C5B7C 00000000 */  nop
    /* B6380 800C5B80 FFFF6930 */  andi       $t1, $v1, 0xFFFF
    /* B6384 800C5B84 004C0900 */  sll        $t1, $t1, 16
    /* B6388 800C5B88 7400438C */  lw         $v1, 0x74($v0)
    /* B638C 800C5B8C 00000000 */  nop
    /* B6390 800C5B90 FFFF6A30 */  andi       $t2, $v1, 0xFFFF
    /* B6394 800C5B94 21182A01 */  addu       $v1, $t1, $t2
    /* B6398 800C5B98 28006224 */  addiu      $v0, $v1, 0x28
    /* B639C 800C5B9C 0C800A3C */  lui        $t2, %hi(D_800C5B28)
    /* B63A0 800C5BA0 285B4A25 */  addiu      $t2, $t2, %lo(D_800C5B28)
    /* B63A4 800C5BA4 0C80093C */  lui        $t1, %hi(D_800C5B3C)
    /* B63A8 800C5BA8 3C5B2925 */  addiu      $t1, $t1, %lo(D_800C5B3C)
  .L800C5BAC:
    /* B63AC 800C5BAC 0000438D */  lw         $v1, 0x0($t2)
    /* B63B0 800C5BB0 00000000 */  nop
    /* B63B4 800C5BB4 000043AC */  sw         $v1, 0x0($v0)
    /* B63B8 800C5BB8 04004A25 */  addiu      $t2, $t2, 0x4
    /* B63BC 800C5BBC FBFF4915 */  bne        $t2, $t1, .L800C5BAC
    /* B63C0 800C5BC0 04004224 */   addiu     $v0, $v0, 0x4
    /* B63C4 800C5BC4 0100013C */  lui        $at, (0x10000 >> 16)
    /* B63C8 800C5BC8 2AB5020C */  jal        func_800AD4A8
    /* B63CC 800C5BCC FCDF22AC */   sw        $v0, -0x2004($at)
    /* B63D0 800C5BD0 0E801F3C */  lui        $ra, %hi(D_800E7328)
    /* B63D4 800C5BD4 2873FF8F */  lw         $ra, %lo(D_800E7328)($ra)
    /* B63D8 800C5BD8 00000000 */  nop
    /* B63DC 800C5BDC 0800E003 */  jr         $ra
    /* B63E0 800C5BE0 00000000 */   nop
endlabel func_800C5B50
