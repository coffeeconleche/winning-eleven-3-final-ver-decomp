nonmatching func_800BC328, 0xA4

glabel func_800BC328
    /* ACB28 800BC328 00240400 */  sll        $a0, $a0, 16
    /* ACB2C 800BC32C 83230400 */  sra        $a0, $a0, 14
    /* ACB30 800BC330 002C0500 */  sll        $a1, $a1, 16
    /* ACB34 800BC334 032C0500 */  sra        $a1, $a1, 16
    /* ACB38 800BC338 40100500 */  sll        $v0, $a1, 1
    /* ACB3C 800BC33C 21104500 */  addu       $v0, $v0, $a1
    /* ACB40 800BC340 80100200 */  sll        $v0, $v0, 2
    /* ACB44 800BC344 23104500 */  subu       $v0, $v0, $a1
    /* ACB48 800BC348 1180033C */  lui        $v1, %hi(D_8010C2A8)
    /* ACB4C 800BC34C 21186400 */  addu       $v1, $v1, $a0
    /* ACB50 800BC350 A8C2638C */  lw         $v1, %lo(D_8010C2A8)($v1)
    /* ACB54 800BC354 00110200 */  sll        $v0, $v0, 4
    /* ACB58 800BC358 21286200 */  addu       $a1, $v1, $v0
    /* ACB5C 800BC35C 0000A28C */  lw         $v0, 0x0($a1)
    /* ACB60 800BC360 00000000 */  nop
    /* ACB64 800BC364 00004490 */  lbu        $a0, 0x0($v0)
    /* ACB68 800BC368 01004224 */  addiu      $v0, $v0, 0x1
    /* ACB6C 800BC36C 0000A2AC */  sw         $v0, 0x0($a1)
    /* ACB70 800BC370 14008010 */  beqz       $a0, .L800BC3C4
    /* ACB74 800BC374 21100000 */   addu      $v0, $zero, $zero
    /* ACB78 800BC378 80008230 */  andi       $v0, $a0, 0x80
    /* ACB7C 800BC37C 0C004010 */  beqz       $v0, .L800BC3B0
    /* ACB80 800BC380 80100400 */   sll       $v0, $a0, 2
    /* ACB84 800BC384 7F008430 */  andi       $a0, $a0, 0x7F
  .L800BC388:
    /* ACB88 800BC388 0000A28C */  lw         $v0, 0x0($a1)
    /* ACB8C 800BC38C C0210400 */  sll        $a0, $a0, 7
    /* ACB90 800BC390 00004390 */  lbu        $v1, 0x0($v0)
    /* ACB94 800BC394 01004224 */  addiu      $v0, $v0, 0x1
    /* ACB98 800BC398 0000A2AC */  sw         $v0, 0x0($a1)
    /* ACB9C 800BC39C 7F006230 */  andi       $v0, $v1, 0x7F
    /* ACBA0 800BC3A0 80006330 */  andi       $v1, $v1, 0x80
    /* ACBA4 800BC3A4 F8FF6014 */  bnez       $v1, .L800BC388
    /* ACBA8 800BC3A8 21208200 */   addu      $a0, $a0, $v0
    /* ACBAC 800BC3AC 80100400 */  sll        $v0, $a0, 2
  .L800BC3B0:
    /* ACBB0 800BC3B0 21104400 */  addu       $v0, $v0, $a0
    /* ACBB4 800BC3B4 8800A38C */  lw         $v1, 0x88($a1)
    /* ACBB8 800BC3B8 40100200 */  sll        $v0, $v0, 1
    /* ACBBC 800BC3BC 21186200 */  addu       $v1, $v1, $v0
    /* ACBC0 800BC3C0 8800A3AC */  sw         $v1, 0x88($a1)
  .L800BC3C4:
    /* ACBC4 800BC3C4 0800E003 */  jr         $ra
    /* ACBC8 800BC3C8 00000000 */   nop
endlabel func_800BC328
    /* ACBCC 800BC3CC 00000000 */  nop
    /* ACBD0 800BC3D0 00000000 */  nop
    /* ACBD4 800BC3D4 00000000 */  nop
