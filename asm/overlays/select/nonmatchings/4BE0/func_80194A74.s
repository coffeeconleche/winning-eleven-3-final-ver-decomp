nonmatching func_80194A74, 0xF0

glabel func_80194A74
    /* BAFC 80194A74 21380000 */  addu       $a3, $zero, $zero
    /* BB00 80194A78 0000A690 */  lbu        $a2, 0x0($a1)
    /* BB04 80194A7C 0A000224 */  addiu      $v0, $zero, 0xA
    /* BB08 80194A80 FF00C330 */  andi       $v1, $a2, 0xFF
    /* BB0C 80194A84 20006210 */  beq        $v1, $v0, .L80194B08
    /* BB10 80194A88 21400000 */   addu      $t0, $zero, $zero
    /* BB14 80194A8C 1E006010 */  beqz       $v1, .L80194B08
    /* BB18 80194A90 5C000224 */   addiu     $v0, $zero, 0x5C
    /* BB1C 80194A94 1C006210 */  beq        $v1, $v0, .L80194B08
    /* BB20 80194A98 09000224 */   addiu     $v0, $zero, 0x9
    /* BB24 80194A9C 1A006210 */  beq        $v1, $v0, .L80194B08
    /* BB28 80194AA0 09000324 */   addiu     $v1, $zero, 0x9
    /* BB2C 80194AA4 0B000C24 */  addiu      $t4, $zero, 0xB
    /* BB30 80194AA8 20000B24 */  addiu      $t3, $zero, 0x20
    /* BB34 80194AAC 0A000A24 */  addiu      $t2, $zero, 0xA
    /* BB38 80194AB0 5C000924 */  addiu      $t1, $zero, 0x5C
    /* BB3C 80194AB4 FF00C230 */  andi       $v0, $a2, 0xFF
  .L80194AB8:
    /* BB40 80194AB8 13004C10 */  beq        $v0, $t4, .L80194B08
    /* BB44 80194ABC 00000000 */   nop
    /* BB48 80194AC0 04004B14 */  bne        $v0, $t3, .L80194AD4
    /* BB4C 80194AC4 00000000 */   nop
    /* BB50 80194AC8 0100E724 */  addiu      $a3, $a3, 0x1
    /* BB54 80194ACC B7520608 */  j          .L80194ADC
    /* BB58 80194AD0 0100A524 */   addiu     $a1, $a1, 0x1
  .L80194AD4:
    /* BB5C 80194AD4 0200E724 */  addiu      $a3, $a3, 0x2
    /* BB60 80194AD8 0200A524 */  addiu      $a1, $a1, 0x2
  .L80194ADC:
    /* BB64 80194ADC 0000A690 */  lbu        $a2, 0x0($a1)
    /* BB68 80194AE0 00000000 */  nop
    /* BB6C 80194AE4 FF00C230 */  andi       $v0, $a2, 0xFF
    /* BB70 80194AE8 07004A10 */  beq        $v0, $t2, .L80194B08
    /* BB74 80194AEC 01000825 */   addiu     $t0, $t0, 0x1
    /* BB78 80194AF0 05004010 */  beqz       $v0, .L80194B08
    /* BB7C 80194AF4 00000000 */   nop
    /* BB80 80194AF8 03004910 */  beq        $v0, $t1, .L80194B08
    /* BB84 80194AFC 00000000 */   nop
    /* BB88 80194B00 EDFF4314 */  bne        $v0, $v1, .L80194AB8
    /* BB8C 80194B04 00000000 */   nop
  .L80194B08:
    /* BB90 80194B08 FFFF0825 */  addiu      $t0, $t0, -0x1
    /* BB94 80194B0C 09008380 */  lb         $v1, 0x9($a0)
    /* BB98 80194B10 FF000231 */  andi       $v0, $t0, 0xFF
    /* BB9C 80194B14 18004300 */  mult       $v0, $v1
    /* BBA0 80194B18 FF00E330 */  andi       $v1, $a3, 0xFF
    /* BBA4 80194B1C 40100300 */  sll        $v0, $v1, 1
    /* BBA8 80194B20 21104300 */  addu       $v0, $v0, $v1
    /* BBAC 80194B24 40100200 */  sll        $v0, $v0, 1
    /* BBB0 80194B28 06008394 */  lhu        $v1, 0x6($a0)
    /* BBB4 80194B2C 12680000 */  mflo       $t5
    /* BBB8 80194B30 21104D00 */  addu       $v0, $v0, $t5
    /* BBBC 80194B34 23186200 */  subu       $v1, $v1, $v0
    /* BBC0 80194B38 001C0300 */  sll        $v1, $v1, 16
    /* BBC4 80194B3C 431C0300 */  sra        $v1, $v1, 17
    /* BBC8 80194B40 02006104 */  bgez       $v1, .L80194B4C
    /* BBCC 80194B44 21286000 */   addu      $a1, $v1, $zero
    /* BBD0 80194B48 21280000 */  addu       $a1, $zero, $zero
  .L80194B4C:
    /* BBD4 80194B4C 02008294 */  lhu        $v0, 0x2($a0)
    /* BBD8 80194B50 00000000 */  nop
    /* BBDC 80194B54 21104500 */  addu       $v0, $v0, $a1
    /* BBE0 80194B58 00140200 */  sll        $v0, $v0, 16
    /* BBE4 80194B5C 0800E003 */  jr         $ra
    /* BBE8 80194B60 03140200 */   sra       $v0, $v0, 16
endlabel func_80194A74
