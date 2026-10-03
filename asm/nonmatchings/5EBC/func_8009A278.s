nonmatching func_8009A278, 0x684

glabel func_8009A278
    /* 8AA78 8009A278 11800F3C */  lui        $t7, %hi(D_8010C1D8)
    /* 8AA7C 8009A27C D8C1EF25 */  addiu      $t7, $t7, %lo(D_8010C1D8)
    /* 8AA80 8009A280 FF008430 */  andi       $a0, $a0, 0xFF
    /* 8AA84 8009A284 01000224 */  addiu      $v0, $zero, 0x1
    /* 8AA88 8009A288 81008210 */  beq        $a0, $v0, .L8009A490
    /* 8AA8C 8009A28C 801F0E3C */   lui       $t6, (0x1F800190 >> 16)
    /* 8AA90 8009A290 02008228 */  slti       $v0, $a0, 0x2
    /* 8AA94 8009A294 05004010 */  beqz       $v0, .L8009A2AC
    /* 8AA98 8009A298 00000000 */   nop
    /* 8AA9C 8009A29C 08008010 */  beqz       $a0, .L8009A2C0
    /* 8AAA0 8009A2A0 02000224 */   addiu     $v0, $zero, 0x2
    /* 8AAA4 8009A2A4 A9690208 */  j          .L8009A6A4
    /* 8AAA8 8009A2A8 21480000 */   addu      $t1, $zero, $zero
  .L8009A2AC:
    /* 8AAAC 8009A2AC 02000224 */  addiu      $v0, $zero, 0x2
    /* 8AAB0 8009A2B0 D7008210 */  beq        $a0, $v0, .L8009A610
    /* 8AAB4 8009A2B4 21480000 */   addu      $t1, $zero, $zero
    /* 8AAB8 8009A2B8 A9690208 */  j          .L8009A6A4
    /* 8AABC 8009A2BC 00000000 */   nop
  .L8009A2C0:
    /* 8AAC0 8009A2C0 1180033C */  lui        $v1, %hi(D_8010C1DE)
    /* 8AAC4 8009A2C4 DEC16390 */  lbu        $v1, %lo(D_8010C1DE)($v1)
    /* 8AAC8 8009A2C8 00000000 */  nop
    /* 8AACC 8009A2CC 3B006214 */  bne        $v1, $v0, .L8009A3BC
    /* 8AAD0 8009A2D0 20000224 */   addiu     $v0, $zero, 0x20
    /* 8AAD4 8009A2D4 0D80053C */  lui        $a1, %hi(D_800CAA70)
    /* 8AAD8 8009A2D8 70AAA524 */  addiu      $a1, $a1, %lo(D_800CAA70)
    /* 8AADC 8009A2DC 0000A390 */  lbu        $v1, 0x0($a1)
    /* 8AAE0 8009A2E0 00000000 */  nop
    /* 8AAE4 8009A2E4 FF006430 */  andi       $a0, $v1, 0xFF
    /* 8AAE8 8009A2E8 03008210 */  beq        $a0, $v0, .L8009A2F8
    /* 8AAEC 8009A2EC 01006224 */   addiu     $v0, $v1, 0x1
    /* 8AAF0 8009A2F0 A8690208 */  j          .L8009A6A0
    /* 8AAF4 8009A2F4 0000A2A0 */   sb        $v0, 0x0($a1)
  .L8009A2F8:
    /* 8AAF8 8009A2F8 0D80023C */  lui        $v0, %hi(D_800CAA71)
    /* 8AAFC 8009A2FC 71AA4290 */  lbu        $v0, %lo(D_800CAA71)($v0)
    /* 8AB00 8009A300 00000000 */  nop
    /* 8AB04 8009A304 FF004330 */  andi       $v1, $v0, 0xFF
    /* 8AB08 8009A308 05006410 */  beq        $v1, $a0, .L8009A320
    /* 8AB0C 8009A30C 01004224 */   addiu     $v0, $v0, 0x1
    /* 8AB10 8009A310 0D80013C */  lui        $at, %hi(D_800CAA71)
    /* 8AB14 8009A314 71AA22A0 */  sb         $v0, %lo(D_800CAA71)($at)
    /* 8AB18 8009A318 A9690208 */  j          .L8009A6A4
    /* 8AB1C 8009A31C 21480000 */   addu      $t1, $zero, $zero
  .L8009A320:
    /* 8AB20 8009A320 0D80023C */  lui        $v0, %hi(D_800CAA72)
    /* 8AB24 8009A324 72AA4290 */  lbu        $v0, %lo(D_800CAA72)($v0)
    /* 8AB28 8009A328 00000000 */  nop
    /* 8AB2C 8009A32C FF004430 */  andi       $a0, $v0, 0xFF
    /* 8AB30 8009A330 05008310 */  beq        $a0, $v1, .L8009A348
    /* 8AB34 8009A334 01004224 */   addiu     $v0, $v0, 0x1
    /* 8AB38 8009A338 0D80013C */  lui        $at, %hi(D_800CAA72)
    /* 8AB3C 8009A33C 72AA22A0 */  sb         $v0, %lo(D_800CAA72)($at)
    /* 8AB40 8009A340 A9690208 */  j          .L8009A6A4
    /* 8AB44 8009A344 21480000 */   addu      $t1, $zero, $zero
  .L8009A348:
    /* 8AB48 8009A348 0D80023C */  lui        $v0, %hi(D_800CAA73)
    /* 8AB4C 8009A34C 73AA4290 */  lbu        $v0, %lo(D_800CAA73)($v0)
    /* 8AB50 8009A350 00000000 */  nop
    /* 8AB54 8009A354 FF004530 */  andi       $a1, $v0, 0xFF
    /* 8AB58 8009A358 0500A410 */  beq        $a1, $a0, .L8009A370
    /* 8AB5C 8009A35C 01004224 */   addiu     $v0, $v0, 0x1
    /* 8AB60 8009A360 0D80013C */  lui        $at, %hi(D_800CAA73)
    /* 8AB64 8009A364 73AA22A0 */  sb         $v0, %lo(D_800CAA73)($at)
    /* 8AB68 8009A368 A9690208 */  j          .L8009A6A4
    /* 8AB6C 8009A36C 21480000 */   addu      $t1, $zero, $zero
  .L8009A370:
    /* 8AB70 8009A370 0D80023C */  lui        $v0, %hi(D_800CAA74)
    /* 8AB74 8009A374 74AA4290 */  lbu        $v0, %lo(D_800CAA74)($v0)
    /* 8AB78 8009A378 00000000 */  nop
    /* 8AB7C 8009A37C FF004330 */  andi       $v1, $v0, 0xFF
    /* 8AB80 8009A380 05006510 */  beq        $v1, $a1, .L8009A398
    /* 8AB84 8009A384 01004224 */   addiu     $v0, $v0, 0x1
    /* 8AB88 8009A388 0D80013C */  lui        $at, %hi(D_800CAA74)
    /* 8AB8C 8009A38C 74AA22A0 */  sb         $v0, %lo(D_800CAA74)($at)
    /* 8AB90 8009A390 A9690208 */  j          .L8009A6A4
    /* 8AB94 8009A394 21480000 */   addu      $t1, $zero, $zero
  .L8009A398:
    /* 8AB98 8009A398 0D80023C */  lui        $v0, %hi(D_800CAA75)
    /* 8AB9C 8009A39C 75AA4290 */  lbu        $v0, %lo(D_800CAA75)($v0)
    /* 8ABA0 8009A3A0 00000000 */  nop
    /* 8ABA4 8009A3A4 BE004310 */  beq        $v0, $v1, .L8009A6A0
    /* 8ABA8 8009A3A8 01004224 */   addiu     $v0, $v0, 0x1
    /* 8ABAC 8009A3AC 0D80013C */  lui        $at, %hi(D_800CAA75)
    /* 8ABB0 8009A3B0 75AA22A0 */  sb         $v0, %lo(D_800CAA75)($at)
    /* 8ABB4 8009A3B4 A9690208 */  j          .L8009A6A4
    /* 8ABB8 8009A3B8 21480000 */   addu      $t1, $zero, $zero
  .L8009A3BC:
    /* 8ABBC 8009A3BC 0D80033C */  lui        $v1, %hi(D_800CAA70)
    /* 8ABC0 8009A3C0 70AA6324 */  addiu      $v1, $v1, %lo(D_800CAA70)
    /* 8ABC4 8009A3C4 00006290 */  lbu        $v0, 0x0($v1)
    /* 8ABC8 8009A3C8 00000000 */  nop
    /* 8ABCC 8009A3CC 03004010 */  beqz       $v0, .L8009A3DC
    /* 8ABD0 8009A3D0 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 8ABD4 8009A3D4 A8690208 */  j          .L8009A6A0
    /* 8ABD8 8009A3D8 000062A0 */   sb        $v0, 0x0($v1)
  .L8009A3DC:
    /* 8ABDC 8009A3DC 0D80023C */  lui        $v0, %hi(D_800CAA71)
    /* 8ABE0 8009A3E0 71AA4290 */  lbu        $v0, %lo(D_800CAA71)($v0)
    /* 8ABE4 8009A3E4 00000000 */  nop
    /* 8ABE8 8009A3E8 05004010 */  beqz       $v0, .L8009A400
    /* 8ABEC 8009A3EC FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 8ABF0 8009A3F0 0D80013C */  lui        $at, %hi(D_800CAA71)
    /* 8ABF4 8009A3F4 71AA22A0 */  sb         $v0, %lo(D_800CAA71)($at)
    /* 8ABF8 8009A3F8 A9690208 */  j          .L8009A6A4
    /* 8ABFC 8009A3FC 21480000 */   addu      $t1, $zero, $zero
  .L8009A400:
    /* 8AC00 8009A400 0D80023C */  lui        $v0, %hi(D_800CAA72)
    /* 8AC04 8009A404 72AA4290 */  lbu        $v0, %lo(D_800CAA72)($v0)
    /* 8AC08 8009A408 00000000 */  nop
    /* 8AC0C 8009A40C 05004010 */  beqz       $v0, .L8009A424
    /* 8AC10 8009A410 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 8AC14 8009A414 0D80013C */  lui        $at, %hi(D_800CAA72)
    /* 8AC18 8009A418 72AA22A0 */  sb         $v0, %lo(D_800CAA72)($at)
    /* 8AC1C 8009A41C A9690208 */  j          .L8009A6A4
    /* 8AC20 8009A420 21480000 */   addu      $t1, $zero, $zero
  .L8009A424:
    /* 8AC24 8009A424 0D80023C */  lui        $v0, %hi(D_800CAA73)
    /* 8AC28 8009A428 73AA4290 */  lbu        $v0, %lo(D_800CAA73)($v0)
    /* 8AC2C 8009A42C 00000000 */  nop
    /* 8AC30 8009A430 05004010 */  beqz       $v0, .L8009A448
    /* 8AC34 8009A434 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 8AC38 8009A438 0D80013C */  lui        $at, %hi(D_800CAA73)
    /* 8AC3C 8009A43C 73AA22A0 */  sb         $v0, %lo(D_800CAA73)($at)
    /* 8AC40 8009A440 A9690208 */  j          .L8009A6A4
    /* 8AC44 8009A444 21480000 */   addu      $t1, $zero, $zero
  .L8009A448:
    /* 8AC48 8009A448 0D80023C */  lui        $v0, %hi(D_800CAA74)
    /* 8AC4C 8009A44C 74AA4290 */  lbu        $v0, %lo(D_800CAA74)($v0)
    /* 8AC50 8009A450 00000000 */  nop
    /* 8AC54 8009A454 05004010 */  beqz       $v0, .L8009A46C
    /* 8AC58 8009A458 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 8AC5C 8009A45C 0D80013C */  lui        $at, %hi(D_800CAA74)
    /* 8AC60 8009A460 74AA22A0 */  sb         $v0, %lo(D_800CAA74)($at)
    /* 8AC64 8009A464 A9690208 */  j          .L8009A6A4
    /* 8AC68 8009A468 21480000 */   addu      $t1, $zero, $zero
  .L8009A46C:
    /* 8AC6C 8009A46C 0D80023C */  lui        $v0, %hi(D_800CAA75)
    /* 8AC70 8009A470 75AA4290 */  lbu        $v0, %lo(D_800CAA75)($v0)
    /* 8AC74 8009A474 00000000 */  nop
    /* 8AC78 8009A478 89004010 */  beqz       $v0, .L8009A6A0
    /* 8AC7C 8009A47C FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 8AC80 8009A480 0D80013C */  lui        $at, %hi(D_800CAA75)
    /* 8AC84 8009A484 75AA22A0 */  sb         $v0, %lo(D_800CAA75)($at)
    /* 8AC88 8009A488 A9690208 */  j          .L8009A6A4
    /* 8AC8C 8009A48C 21480000 */   addu      $t1, $zero, $zero
  .L8009A490:
    /* 8AC90 8009A490 1180033C */  lui        $v1, %hi(D_8010C1DE)
    /* 8AC94 8009A494 DEC16390 */  lbu        $v1, %lo(D_8010C1DE)($v1)
    /* 8AC98 8009A498 02000224 */  addiu      $v0, $zero, 0x2
    /* 8AC9C 8009A49C 2A006214 */  bne        $v1, $v0, .L8009A548
    /* 8ACA0 8009A4A0 20000224 */   addiu     $v0, $zero, 0x20
    /* 8ACA4 8009A4A4 0D80053C */  lui        $a1, %hi(D_800CAA70)
    /* 8ACA8 8009A4A8 70AAA524 */  addiu      $a1, $a1, %lo(D_800CAA70)
    /* 8ACAC 8009A4AC 0000A390 */  lbu        $v1, 0x0($a1)
    /* 8ACB0 8009A4B0 00000000 */  nop
    /* 8ACB4 8009A4B4 FF006430 */  andi       $a0, $v1, 0xFF
    /* 8ACB8 8009A4B8 0B008210 */  beq        $a0, $v0, .L8009A4E8
    /* 8ACBC 8009A4BC 01006224 */   addiu     $v0, $v1, 0x1
    /* 8ACC0 8009A4C0 0000A2A0 */  sb         $v0, 0x0($a1)
    /* 8ACC4 8009A4C4 0D80023C */  lui        $v0, %hi(D_800CAA72)
    /* 8ACC8 8009A4C8 72AA4290 */  lbu        $v0, %lo(D_800CAA72)($v0)
    /* 8ACCC 8009A4CC 0D80033C */  lui        $v1, %hi(D_800CAA74)
    /* 8ACD0 8009A4D0 74AA6390 */  lbu        $v1, %lo(D_800CAA74)($v1)
    /* 8ACD4 8009A4D4 0E80013C */  lui        $at, %hi(D_800E6E18)
    /* 8ACD8 8009A4D8 186E20A0 */  sb         $zero, %lo(D_800E6E18)($at)
    /* 8ACDC 8009A4DC 01004224 */  addiu      $v0, $v0, 0x1
    /* 8ACE0 8009A4E0 61690208 */  j          .L8009A584
    /* 8ACE4 8009A4E4 01006324 */   addiu     $v1, $v1, 0x1
  .L8009A4E8:
    /* 8ACE8 8009A4E8 0E80023C */  lui        $v0, %hi(D_800E6E18)
    /* 8ACEC 8009A4EC 186E4290 */  lbu        $v0, %lo(D_800E6E18)($v0)
    /* 8ACF0 8009A4F0 00000000 */  nop
    /* 8ACF4 8009A4F4 01004224 */  addiu      $v0, $v0, 0x1
    /* 8ACF8 8009A4F8 0E80013C */  lui        $at, %hi(D_800E6E18)
    /* 8ACFC 8009A4FC 186E22A0 */  sb         $v0, %lo(D_800E6E18)($at)
    /* 8AD00 8009A500 FF004230 */  andi       $v0, $v0, 0xFF
    /* 8AD04 8009A504 8000422C */  sltiu      $v0, $v0, 0x80
    /* 8AD08 8009A508 66004014 */  bnez       $v0, .L8009A6A4
    /* 8AD0C 8009A50C 21480000 */   addu      $t1, $zero, $zero
    /* 8AD10 8009A510 0D80023C */  lui        $v0, %hi(D_800CAA71)
    /* 8AD14 8009A514 71AA4290 */  lbu        $v0, %lo(D_800CAA71)($v0)
    /* 8AD18 8009A518 00000000 */  nop
    /* 8AD1C 8009A51C 61004410 */  beq        $v0, $a0, .L8009A6A4
    /* 8AD20 8009A520 01004224 */   addiu     $v0, $v0, 0x1
    /* 8AD24 8009A524 0D80013C */  lui        $at, %hi(D_800CAA71)
    /* 8AD28 8009A528 71AA22A0 */  sb         $v0, %lo(D_800CAA71)($at)
    /* 8AD2C 8009A52C 0D80023C */  lui        $v0, %hi(D_800CAA73)
    /* 8AD30 8009A530 73AA4290 */  lbu        $v0, %lo(D_800CAA73)($v0)
    /* 8AD34 8009A534 0D80033C */  lui        $v1, %hi(D_800CAA75)
    /* 8AD38 8009A538 75AA6390 */  lbu        $v1, %lo(D_800CAA75)($v1)
    /* 8AD3C 8009A53C 01004224 */  addiu      $v0, $v0, 0x1
    /* 8AD40 8009A540 7E690208 */  j          .L8009A5F8
    /* 8AD44 8009A544 01006324 */   addiu     $v1, $v1, 0x1
  .L8009A548:
    /* 8AD48 8009A548 0D80033C */  lui        $v1, %hi(D_800CAA70)
    /* 8AD4C 8009A54C 70AA6324 */  addiu      $v1, $v1, %lo(D_800CAA70)
    /* 8AD50 8009A550 00006290 */  lbu        $v0, 0x0($v1)
    /* 8AD54 8009A554 00000000 */  nop
    /* 8AD58 8009A558 10004010 */  beqz       $v0, .L8009A59C
    /* 8AD5C 8009A55C FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 8AD60 8009A560 000062A0 */  sb         $v0, 0x0($v1)
    /* 8AD64 8009A564 0D80023C */  lui        $v0, %hi(D_800CAA72)
    /* 8AD68 8009A568 72AA4290 */  lbu        $v0, %lo(D_800CAA72)($v0)
    /* 8AD6C 8009A56C 0D80033C */  lui        $v1, %hi(D_800CAA74)
    /* 8AD70 8009A570 74AA6390 */  lbu        $v1, %lo(D_800CAA74)($v1)
    /* 8AD74 8009A574 0E80013C */  lui        $at, %hi(D_800E6E18)
    /* 8AD78 8009A578 186E20A0 */  sb         $zero, %lo(D_800E6E18)($at)
    /* 8AD7C 8009A57C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 8AD80 8009A580 FFFF6324 */  addiu      $v1, $v1, -0x1
  .L8009A584:
    /* 8AD84 8009A584 0D80013C */  lui        $at, %hi(D_800CAA72)
    /* 8AD88 8009A588 72AA22A0 */  sb         $v0, %lo(D_800CAA72)($at)
    /* 8AD8C 8009A58C 0D80013C */  lui        $at, %hi(D_800CAA74)
    /* 8AD90 8009A590 74AA23A0 */  sb         $v1, %lo(D_800CAA74)($at)
    /* 8AD94 8009A594 A9690208 */  j          .L8009A6A4
    /* 8AD98 8009A598 21480000 */   addu      $t1, $zero, $zero
  .L8009A59C:
    /* 8AD9C 8009A59C 0E80023C */  lui        $v0, %hi(D_800E6E18)
    /* 8ADA0 8009A5A0 186E4290 */  lbu        $v0, %lo(D_800E6E18)($v0)
    /* 8ADA4 8009A5A4 00000000 */  nop
    /* 8ADA8 8009A5A8 01004224 */  addiu      $v0, $v0, 0x1
    /* 8ADAC 8009A5AC 0E80013C */  lui        $at, %hi(D_800E6E18)
    /* 8ADB0 8009A5B0 186E22A0 */  sb         $v0, %lo(D_800E6E18)($at)
    /* 8ADB4 8009A5B4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 8ADB8 8009A5B8 8000422C */  sltiu      $v0, $v0, 0x80
    /* 8ADBC 8009A5BC 39004014 */  bnez       $v0, .L8009A6A4
    /* 8ADC0 8009A5C0 21480000 */   addu      $t1, $zero, $zero
    /* 8ADC4 8009A5C4 0D80023C */  lui        $v0, %hi(D_800CAA71)
    /* 8ADC8 8009A5C8 71AA4290 */  lbu        $v0, %lo(D_800CAA71)($v0)
    /* 8ADCC 8009A5CC 00000000 */  nop
    /* 8ADD0 8009A5D0 34004010 */  beqz       $v0, .L8009A6A4
    /* 8ADD4 8009A5D4 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 8ADD8 8009A5D8 0D80013C */  lui        $at, %hi(D_800CAA71)
    /* 8ADDC 8009A5DC 71AA22A0 */  sb         $v0, %lo(D_800CAA71)($at)
    /* 8ADE0 8009A5E0 0D80023C */  lui        $v0, %hi(D_800CAA73)
    /* 8ADE4 8009A5E4 73AA4290 */  lbu        $v0, %lo(D_800CAA73)($v0)
    /* 8ADE8 8009A5E8 0D80033C */  lui        $v1, %hi(D_800CAA75)
    /* 8ADEC 8009A5EC 75AA6390 */  lbu        $v1, %lo(D_800CAA75)($v1)
    /* 8ADF0 8009A5F0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 8ADF4 8009A5F4 FFFF6324 */  addiu      $v1, $v1, -0x1
  .L8009A5F8:
    /* 8ADF8 8009A5F8 0D80013C */  lui        $at, %hi(D_800CAA73)
    /* 8ADFC 8009A5FC 73AA22A0 */  sb         $v0, %lo(D_800CAA73)($at)
    /* 8AE00 8009A600 0D80013C */  lui        $at, %hi(D_800CAA75)
    /* 8AE04 8009A604 75AA23A0 */  sb         $v1, %lo(D_800CAA75)($at)
    /* 8AE08 8009A608 A9690208 */  j          .L8009A6A4
    /* 8AE0C 8009A60C 21480000 */   addu      $t1, $zero, $zero
  .L8009A610:
    /* 8AE10 8009A610 1180023C */  lui        $v0, %hi(D_8010C1DE)
    /* 8AE14 8009A614 DEC14290 */  lbu        $v0, %lo(D_8010C1DE)($v0)
    /* 8AE18 8009A618 00000000 */  nop
    /* 8AE1C 8009A61C 12004414 */  bne        $v0, $a0, .L8009A668
    /* 8AE20 8009A620 20000224 */   addiu     $v0, $zero, 0x20
    /* 8AE24 8009A624 0D80043C */  lui        $a0, %hi(D_800CAA70)
    /* 8AE28 8009A628 70AA8424 */  addiu      $a0, $a0, %lo(D_800CAA70)
    /* 8AE2C 8009A62C 00008390 */  lbu        $v1, 0x0($a0)
    /* 8AE30 8009A630 00000000 */  nop
    /* 8AE34 8009A634 1A006210 */  beq        $v1, $v0, .L8009A6A0
    /* 8AE38 8009A638 21188000 */   addu      $v1, $a0, $zero
    /* 8AE3C 8009A63C 06006424 */  addiu      $a0, $v1, 0x6
  .L8009A640:
    /* 8AE40 8009A640 00006290 */  lbu        $v0, 0x0($v1)
    /* 8AE44 8009A644 00000000 */  nop
    /* 8AE48 8009A648 01004224 */  addiu      $v0, $v0, 0x1
    /* 8AE4C 8009A64C 000062A0 */  sb         $v0, 0x0($v1)
    /* 8AE50 8009A650 01006324 */  addiu      $v1, $v1, 0x1
    /* 8AE54 8009A654 2A106400 */  slt        $v0, $v1, $a0
    /* 8AE58 8009A658 F9FF4014 */  bnez       $v0, .L8009A640
    /* 8AE5C 8009A65C 21480000 */   addu      $t1, $zero, $zero
    /* 8AE60 8009A660 A9690208 */  j          .L8009A6A4
    /* 8AE64 8009A664 00000000 */   nop
  .L8009A668:
    /* 8AE68 8009A668 0D80033C */  lui        $v1, %hi(D_800CAA70)
    /* 8AE6C 8009A66C 70AA6324 */  addiu      $v1, $v1, %lo(D_800CAA70)
    /* 8AE70 8009A670 00006290 */  lbu        $v0, 0x0($v1)
    /* 8AE74 8009A674 00000000 */  nop
    /* 8AE78 8009A678 09004010 */  beqz       $v0, .L8009A6A0
    /* 8AE7C 8009A67C 06006424 */   addiu     $a0, $v1, 0x6
  .L8009A680:
    /* 8AE80 8009A680 00006290 */  lbu        $v0, 0x0($v1)
    /* 8AE84 8009A684 00000000 */  nop
    /* 8AE88 8009A688 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 8AE8C 8009A68C 000062A0 */  sb         $v0, 0x0($v1)
    /* 8AE90 8009A690 01006324 */  addiu      $v1, $v1, 0x1
    /* 8AE94 8009A694 2A106400 */  slt        $v0, $v1, $a0
    /* 8AE98 8009A698 F9FF4014 */  bnez       $v0, .L8009A680
    /* 8AE9C 8009A69C 00000000 */   nop
  .L8009A6A0:
    /* 8AEA0 8009A6A0 21480000 */  addu       $t1, $zero, $zero
  .L8009A6A4:
    /* 8AEA4 8009A6A4 7F000A24 */  addiu      $t2, $zero, 0x7F
    /* 8AEA8 8009A6A8 21600000 */  addu       $t4, $zero, $zero
  .L8009A6AC:
    /* 8AEAC 8009A6AC F0230824 */  addiu      $t0, $zero, 0x23F0
  .L8009A6B0:
    /* 8AEB0 8009A6B0 02000624 */  addiu      $a2, $zero, 0x2
    /* 8AEB4 8009A6B4 21688001 */  addu       $t5, $t4, $zero
    /* 8AEB8 8009A6B8 21580001 */  addu       $t3, $t0, $zero
    /* 8AEBC 8009A6BC 50000724 */  addiu      $a3, $zero, 0x50
  .L8009A6C0:
    /* 8AEC0 8009A6C0 AA2A023C */  lui        $v0, (0x2AAAAAAB >> 16)
    /* 8AEC4 8009A6C4 ABAA4234 */  ori        $v0, $v0, (0x2AAAAAAB & 0xFFFF)
    /* 8AEC8 8009A6C8 FEFFC424 */  addiu      $a0, $a2, -0x2
    /* 8AECC 8009A6CC 18008200 */  mult       $a0, $v0
    /* 8AED0 8009A6D0 9001C28D */  lw         $v0, (0x1F800190 & 0xFFFF)($t6)
    /* 8AED4 8009A6D4 C31F0400 */  sra        $v1, $a0, 31
    /* 8AED8 8009A6D8 21104D00 */  addu       $v0, $v0, $t5
    /* 8AEDC 8009A6DC 21104B00 */  addu       $v0, $v0, $t3
    /* 8AEE0 8009A6E0 21284700 */  addu       $a1, $v0, $a3
    /* 8AEE4 8009A6E4 0C00AAA0 */  sb         $t2, 0xC($a1)
    /* 8AEE8 8009A6E8 10C00000 */  mfhi       $t8
    /* 8AEEC 8009A6EC 23180303 */  subu       $v1, $t8, $v1
    /* 8AEF0 8009A6F0 40100300 */  sll        $v0, $v1, 1
    /* 8AEF4 8009A6F4 21104300 */  addu       $v0, $v0, $v1
    /* 8AEF8 8009A6F8 40100200 */  sll        $v0, $v0, 1
    /* 8AEFC 8009A6FC 23208200 */  subu       $a0, $a0, $v0
    /* 8AF00 8009A700 0D80013C */  lui        $at, %hi(D_800CAA70)
    /* 8AF04 8009A704 21082400 */  addu       $at, $at, $a0
    /* 8AF08 8009A708 70AA2290 */  lbu        $v0, %lo(D_800CAA70)($at)
    /* 8AF0C 8009A70C 1400AAA0 */  sb         $t2, 0x14($a1)
    /* 8AF10 8009A710 A0004224 */  addiu      $v0, $v0, 0xA0
    /* 8AF14 8009A714 0D00A2A0 */  sb         $v0, 0xD($a1)
    /* 8AF18 8009A718 0D80013C */  lui        $at, %hi(D_800CAA70)
    /* 8AF1C 8009A71C 21082400 */  addu       $at, $at, $a0
    /* 8AF20 8009A720 70AA2290 */  lbu        $v0, %lo(D_800CAA70)($at)
    /* 8AF24 8009A724 1C00A0A0 */  sb         $zero, 0x1C($a1)
    /* 8AF28 8009A728 BF004224 */  addiu      $v0, $v0, 0xBF
    /* 8AF2C 8009A72C 1500A2A0 */  sb         $v0, 0x15($a1)
    /* 8AF30 8009A730 0D80013C */  lui        $at, %hi(D_800CAA70)
    /* 8AF34 8009A734 21082400 */  addu       $at, $at, $a0
    /* 8AF38 8009A738 70AA2290 */  lbu        $v0, %lo(D_800CAA70)($at)
    /* 8AF3C 8009A73C 0100C624 */  addiu      $a2, $a2, 0x1
    /* 8AF40 8009A740 2400A0A0 */  sb         $zero, 0x24($a1)
    /* 8AF44 8009A744 A0004224 */  addiu      $v0, $v0, 0xA0
    /* 8AF48 8009A748 1D00A2A0 */  sb         $v0, 0x1D($a1)
    /* 8AF4C 8009A74C 0D80013C */  lui        $at, %hi(D_800CAA70)
    /* 8AF50 8009A750 21082400 */  addu       $at, $at, $a0
    /* 8AF54 8009A754 70AA2290 */  lbu        $v0, %lo(D_800CAA70)($at)
    /* 8AF58 8009A758 00000000 */  nop
    /* 8AF5C 8009A75C BF004224 */  addiu      $v0, $v0, 0xBF
    /* 8AF60 8009A760 2500A2A0 */  sb         $v0, 0x25($a1)
    /* 8AF64 8009A764 0800C228 */  slti       $v0, $a2, 0x8
    /* 8AF68 8009A768 D5FF4014 */  bnez       $v0, .L8009A6C0
    /* 8AF6C 8009A76C 2800E724 */   addiu     $a3, $a3, 0x28
    /* 8AF70 8009A770 0C000624 */  addiu      $a2, $zero, 0xC
    /* 8AF74 8009A774 21688001 */  addu       $t5, $t4, $zero
    /* 8AF78 8009A778 21580001 */  addu       $t3, $t0, $zero
    /* 8AF7C 8009A77C E0010724 */  addiu      $a3, $zero, 0x1E0
  .L8009A780:
    /* 8AF80 8009A780 AA2A023C */  lui        $v0, (0x2AAAAAAB >> 16)
    /* 8AF84 8009A784 ABAA4234 */  ori        $v0, $v0, (0x2AAAAAAB & 0xFFFF)
    /* 8AF88 8009A788 F4FFC424 */  addiu      $a0, $a2, -0xC
    /* 8AF8C 8009A78C 18008200 */  mult       $a0, $v0
    /* 8AF90 8009A790 9001C28D */  lw         $v0, (0x1F800190 & 0xFFFF)($t6)
    /* 8AF94 8009A794 C31F0400 */  sra        $v1, $a0, 31
    /* 8AF98 8009A798 21104D00 */  addu       $v0, $v0, $t5
    /* 8AF9C 8009A79C 21104B00 */  addu       $v0, $v0, $t3
    /* 8AFA0 8009A7A0 21284700 */  addu       $a1, $v0, $a3
    /* 8AFA4 8009A7A4 0C00AAA0 */  sb         $t2, 0xC($a1)
    /* 8AFA8 8009A7A8 10C00000 */  mfhi       $t8
    /* 8AFAC 8009A7AC 23180303 */  subu       $v1, $t8, $v1
    /* 8AFB0 8009A7B0 40100300 */  sll        $v0, $v1, 1
    /* 8AFB4 8009A7B4 21104300 */  addu       $v0, $v0, $v1
    /* 8AFB8 8009A7B8 40100200 */  sll        $v0, $v0, 1
    /* 8AFBC 8009A7BC 23208200 */  subu       $a0, $a0, $v0
    /* 8AFC0 8009A7C0 0D80013C */  lui        $at, %hi(D_800CAA70)
    /* 8AFC4 8009A7C4 21082400 */  addu       $at, $at, $a0
    /* 8AFC8 8009A7C8 70AA2290 */  lbu        $v0, %lo(D_800CAA70)($at)
    /* 8AFCC 8009A7CC 1400AAA0 */  sb         $t2, 0x14($a1)
    /* 8AFD0 8009A7D0 A0004224 */  addiu      $v0, $v0, 0xA0
    /* 8AFD4 8009A7D4 0D00A2A0 */  sb         $v0, 0xD($a1)
    /* 8AFD8 8009A7D8 0D80013C */  lui        $at, %hi(D_800CAA70)
    /* 8AFDC 8009A7DC 21082400 */  addu       $at, $at, $a0
    /* 8AFE0 8009A7E0 70AA2290 */  lbu        $v0, %lo(D_800CAA70)($at)
    /* 8AFE4 8009A7E4 1C00A0A0 */  sb         $zero, 0x1C($a1)
    /* 8AFE8 8009A7E8 BF004224 */  addiu      $v0, $v0, 0xBF
    /* 8AFEC 8009A7EC 1500A2A0 */  sb         $v0, 0x15($a1)
    /* 8AFF0 8009A7F0 0D80013C */  lui        $at, %hi(D_800CAA70)
    /* 8AFF4 8009A7F4 21082400 */  addu       $at, $at, $a0
    /* 8AFF8 8009A7F8 70AA2290 */  lbu        $v0, %lo(D_800CAA70)($at)
    /* 8AFFC 8009A7FC 0100C624 */  addiu      $a2, $a2, 0x1
    /* 8B000 8009A800 2400A0A0 */  sb         $zero, 0x24($a1)
    /* 8B004 8009A804 A0004224 */  addiu      $v0, $v0, 0xA0
    /* 8B008 8009A808 1D00A2A0 */  sb         $v0, 0x1D($a1)
    /* 8B00C 8009A80C 0D80013C */  lui        $at, %hi(D_800CAA70)
    /* 8B010 8009A810 21082400 */  addu       $at, $at, $a0
    /* 8B014 8009A814 70AA2290 */  lbu        $v0, %lo(D_800CAA70)($at)
    /* 8B018 8009A818 00000000 */  nop
    /* 8B01C 8009A81C BF004224 */  addiu      $v0, $v0, 0xBF
    /* 8B020 8009A820 2500A2A0 */  sb         $v0, 0x25($a1)
    /* 8B024 8009A824 1200C228 */  slti       $v0, $a2, 0x12
    /* 8B028 8009A828 D5FF4014 */  bnez       $v0, .L8009A780
    /* 8B02C 8009A82C 2800E724 */   addiu     $a3, $a3, 0x28
    /* 8B030 8009A830 20030825 */  addiu      $t0, $t0, 0x320
    /* 8B034 8009A834 302A0229 */  slti       $v0, $t0, 0x2A30
    /* 8B038 8009A838 9DFF4014 */  bnez       $v0, .L8009A6B0
    /* 8B03C 8009A83C 00000000 */   nop
    /* 8B040 8009A840 01002925 */  addiu      $t1, $t1, 0x1
    /* 8B044 8009A844 02002229 */  slti       $v0, $t1, 0x2
    /* 8B048 8009A848 98FF4014 */  bnez       $v0, .L8009A6AC
    /* 8B04C 8009A84C C03A8C25 */   addiu     $t4, $t4, 0x3AC0
    /* 8B050 8009A850 0D80033C */  lui        $v1, %hi(D_800CAA70)
    /* 8B054 8009A854 70AA6324 */  addiu      $v1, $v1, %lo(D_800CAA70)
    /* 8B058 8009A858 00006290 */  lbu        $v0, 0x0($v1)
    /* 8B05C 8009A85C 00000000 */  nop
    /* 8B060 8009A860 0E004014 */  bnez       $v0, .L8009A89C
    /* 8B064 8009A864 00000000 */   nop
    /* 8B068 8009A868 0D80023C */  lui        $v0, %hi(D_800CAA75)
    /* 8B06C 8009A86C 75AA4290 */  lbu        $v0, %lo(D_800CAA75)($v0)
    /* 8B070 8009A870 00000000 */  nop
    /* 8B074 8009A874 09004014 */  bnez       $v0, .L8009A89C
    /* 8B078 8009A878 05000924 */   addiu     $t1, $zero, 0x5
    /* 8B07C 8009A87C 0600E0A1 */  sb         $zero, 0x6($t7)
    /* 8B080 8009A880 05006224 */  addiu      $v0, $v1, 0x5
  .L8009A884:
    /* 8B084 8009A884 000040A0 */  sb         $zero, 0x0($v0)
    /* 8B088 8009A888 FFFF2925 */  addiu      $t1, $t1, -0x1
    /* 8B08C 8009A88C FDFF2105 */  bgez       $t1, .L8009A884
    /* 8B090 8009A890 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 8B094 8009A894 3D6A0208 */  j          .L8009A8F4
    /* 8B098 8009A898 01000224 */   addiu     $v0, $zero, 0x1
  .L8009A89C:
    /* 8B09C 8009A89C 0D80043C */  lui        $a0, %hi(D_800CAA70)
    /* 8B0A0 8009A8A0 70AA8424 */  addiu      $a0, $a0, %lo(D_800CAA70)
    /* 8B0A4 8009A8A4 00008390 */  lbu        $v1, 0x0($a0)
    /* 8B0A8 8009A8A8 20000224 */  addiu      $v0, $zero, 0x20
    /* 8B0AC 8009A8AC 11006214 */  bne        $v1, $v0, .L8009A8F4
    /* 8B0B0 8009A8B0 21100000 */   addu      $v0, $zero, $zero
    /* 8B0B4 8009A8B4 0D80023C */  lui        $v0, %hi(D_800CAA75)
    /* 8B0B8 8009A8B8 75AA4290 */  lbu        $v0, %lo(D_800CAA75)($v0)
    /* 8B0BC 8009A8BC 00000000 */  nop
    /* 8B0C0 8009A8C0 0B004314 */  bne        $v0, $v1, .L8009A8F0
    /* 8B0C4 8009A8C4 01000224 */   addiu     $v0, $zero, 0x1
    /* 8B0C8 8009A8C8 0600E2A1 */  sb         $v0, 0x6($t7)
    /* 8B0CC 8009A8CC 20000324 */  addiu      $v1, $zero, 0x20
    /* 8B0D0 8009A8D0 05000924 */  addiu      $t1, $zero, 0x5
    /* 8B0D4 8009A8D4 05008224 */  addiu      $v0, $a0, 0x5
  .L8009A8D8:
    /* 8B0D8 8009A8D8 000043A0 */  sb         $v1, 0x0($v0)
    /* 8B0DC 8009A8DC FFFF2925 */  addiu      $t1, $t1, -0x1
    /* 8B0E0 8009A8E0 FDFF2105 */  bgez       $t1, .L8009A8D8
    /* 8B0E4 8009A8E4 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 8B0E8 8009A8E8 3D6A0208 */  j          .L8009A8F4
    /* 8B0EC 8009A8EC 01000224 */   addiu     $v0, $zero, 0x1
  .L8009A8F0:
    /* 8B0F0 8009A8F0 21100000 */  addu       $v0, $zero, $zero
  .L8009A8F4:
    /* 8B0F4 8009A8F4 0800E003 */  jr         $ra
    /* 8B0F8 8009A8F8 00000000 */   nop
endlabel func_8009A278
