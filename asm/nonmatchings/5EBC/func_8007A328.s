nonmatching func_8007A328, 0x44C

glabel func_8007A328
    /* 6AB28 8007A328 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 6AB2C 8007A32C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6AB30 8007A330 801F123C */  lui        $s2, (0x1F80029A >> 16)
    /* 6AB34 8007A334 2000B4AF */  sw         $s4, 0x20($sp)
    /* 6AB38 8007A338 1080143C */  lui        $s4, %hi(D_800FF748)
    /* 6AB3C 8007A33C 48F79426 */  addiu      $s4, $s4, %lo(D_800FF748)
    /* 6AB40 8007A340 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6AB44 8007A344 E8039126 */  addiu      $s1, $s4, 0x3E8
    /* 6AB48 8007A348 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 6AB4C 8007A34C 21980000 */  addu       $s3, $zero, $zero
    /* 6AB50 8007A350 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6AB54 8007A354 7F079026 */  addiu      $s0, $s4, 0x77F
    /* 6AB58 8007A358 2400BFAF */  sw         $ra, 0x24($sp)
  .L8007A35C:
    /* 6AB5C 8007A35C F44D010C */  jal        func_800537D0
    /* 6AB60 8007A360 21202002 */   addu      $a0, $s1, $zero
    /* 6AB64 8007A364 22004010 */  beqz       $v0, .L8007A3F0
    /* 6AB68 8007A368 00000000 */   nop
    /* 6AB6C 8007A36C 9A024292 */  lbu        $v0, (0x1F80029A & 0xFFFF)($s2)
    /* 6AB70 8007A370 00000000 */  nop
    /* 6AB74 8007A374 FF004330 */  andi       $v1, $v0, 0xFF
    /* 6AB78 8007A378 04000224 */  addiu      $v0, $zero, 0x4
    /* 6AB7C 8007A37C 10006210 */  beq        $v1, $v0, .L8007A3C0
    /* 6AB80 8007A380 05006228 */   slti      $v0, $v1, 0x5
    /* 6AB84 8007A384 05004010 */  beqz       $v0, .L8007A39C
    /* 6AB88 8007A388 03000224 */   addiu     $v0, $zero, 0x3
    /* 6AB8C 8007A38C 0A006210 */  beq        $v1, $v0, .L8007A3B8
    /* 6AB90 8007A390 2C000224 */   addiu     $v0, $zero, 0x2C
    /* 6AB94 8007A394 FDE80108 */  j          .L8007A3F4
    /* 6AB98 8007A398 01007326 */   addiu     $s3, $s3, 0x1
  .L8007A39C:
    /* 6AB9C 8007A39C 09000224 */  addiu      $v0, $zero, 0x9
    /* 6ABA0 8007A3A0 0A006210 */  beq        $v1, $v0, .L8007A3CC
    /* 6ABA4 8007A3A4 0C000224 */   addiu     $v0, $zero, 0xC
    /* 6ABA8 8007A3A8 0B006210 */  beq        $v1, $v0, .L8007A3D8
    /* 6ABAC 8007A3AC 00000000 */   nop
    /* 6ABB0 8007A3B0 FDE80108 */  j          .L8007A3F4
    /* 6ABB4 8007A3B4 01007326 */   addiu     $s3, $s3, 0x1
  .L8007A3B8:
    /* 6ABB8 8007A3B8 FBE80108 */  j          .L8007A3EC
    /* 6ABBC 8007A3BC FFFF02A2 */   sb        $v0, -0x1($s0)
  .L8007A3C0:
    /* 6ABC0 8007A3C0 2F000224 */  addiu      $v0, $zero, 0x2F
    /* 6ABC4 8007A3C4 FBE80108 */  j          .L8007A3EC
    /* 6ABC8 8007A3C8 FFFF02A2 */   sb        $v0, -0x1($s0)
  .L8007A3CC:
    /* 6ABCC 8007A3CC 2D000224 */  addiu      $v0, $zero, 0x2D
    /* 6ABD0 8007A3D0 FBE80108 */  j          .L8007A3EC
    /* 6ABD4 8007A3D4 FFFF02A2 */   sb        $v0, -0x1($s0)
  .L8007A3D8:
    /* 6ABD8 8007A3D8 FFFF0292 */  lbu        $v0, -0x1($s0)
    /* 6ABDC 8007A3DC 00000000 */  nop
    /* 6ABE0 8007A3E0 03004010 */  beqz       $v0, .L8007A3F0
    /* 6ABE4 8007A3E4 00000000 */   nop
    /* 6ABE8 8007A3E8 FFFF00A2 */  sb         $zero, -0x1($s0)
  .L8007A3EC:
    /* 6ABEC 8007A3EC 000000A2 */  sb         $zero, 0x0($s0)
  .L8007A3F0:
    /* 6ABF0 8007A3F0 01007326 */  addiu      $s3, $s3, 0x1
  .L8007A3F4:
    /* 6ABF4 8007A3F4 E8031026 */  addiu      $s0, $s0, 0x3E8
    /* 6ABF8 8007A3F8 1600622A */  slti       $v0, $s3, 0x16
    /* 6ABFC 8007A3FC D7FF4014 */  bnez       $v0, .L8007A35C
    /* 6AC00 8007A400 E8033126 */   addiu     $s1, $s1, 0x3E8
    /* 6AC04 8007A404 9A024292 */  lbu        $v0, (0x1F80029A & 0xFFFF)($s2)
    /* 6AC08 8007A408 00000000 */  nop
    /* 6AC0C 8007A40C FF004330 */  andi       $v1, $v0, 0xFF
    /* 6AC10 8007A410 04000224 */  addiu      $v0, $zero, 0x4
    /* 6AC14 8007A414 0E006210 */  beq        $v1, $v0, .L8007A450
    /* 6AC18 8007A418 05006228 */   slti      $v0, $v1, 0x5
    /* 6AC1C 8007A41C 05004010 */  beqz       $v0, .L8007A434
    /* 6AC20 8007A420 03000224 */   addiu     $v0, $zero, 0x3
    /* 6AC24 8007A424 0D006210 */  beq        $v1, $v0, .L8007A45C
    /* 6AC28 8007A428 03000424 */   addiu     $a0, $zero, 0x3
    /* 6AC2C 8007A42C 19E90108 */  j          .L8007A464
    /* 6AC30 8007A430 00000000 */   nop
  .L8007A434:
    /* 6AC34 8007A434 09000224 */  addiu      $v0, $zero, 0x9
    /* 6AC38 8007A438 07006210 */  beq        $v1, $v0, .L8007A458
    /* 6AC3C 8007A43C 0C000224 */   addiu     $v0, $zero, 0xC
    /* 6AC40 8007A440 06006210 */  beq        $v1, $v0, .L8007A45C
    /* 6AC44 8007A444 20000424 */   addiu     $a0, $zero, 0x20
    /* 6AC48 8007A448 19E90108 */  j          .L8007A464
    /* 6AC4C 8007A44C 00000000 */   nop
  .L8007A450:
    /* 6AC50 8007A450 17E90108 */  j          .L8007A45C
    /* 6AC54 8007A454 01000424 */   addiu     $a0, $zero, 0x1
  .L8007A458:
    /* 6AC58 8007A458 04000424 */  addiu      $a0, $zero, 0x4
  .L8007A45C:
    /* 6AC5C 8007A45C 8B7D020C */  jal        func_8009F62C
    /* 6AC60 8007A460 00000000 */   nop
  .L8007A464:
    /* 6AC64 8007A464 0F8A000C */  jal        func_8002283C
    /* 6AC68 8007A468 00000000 */   nop
    /* 6AC6C 8007A46C B428010C */  jal        func_8004A2D0
    /* 6AC70 8007A470 00000000 */   nop
    /* 6AC74 8007A474 0446010C */  jal        func_80051810
    /* 6AC78 8007A478 00000000 */   nop
    /* 6AC7C 8007A47C 973C010C */  jal        func_8004F25C
    /* 6AC80 8007A480 00000000 */   nop
    /* 6AC84 8007A484 9765010C */  jal        func_8005965C
    /* 6AC88 8007A488 00000000 */   nop
    /* 6AC8C 8007A48C E1024292 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($s2)
    /* 6AC90 8007A490 05000324 */  addiu      $v1, $zero, 0x5
    /* 6AC94 8007A494 FF004230 */  andi       $v0, $v0, 0xFF
    /* 6AC98 8007A498 05004314 */  bne        $v0, $v1, .L8007A4B0
    /* 6AC9C 8007A49C 00000000 */   nop
    /* 6ACA0 8007A4A0 C926060C */  jal        func_80189B24
    /* 6ACA4 8007A4A4 00000000 */   nop
    /* 6ACA8 8007A4A8 A9004014 */  bnez       $v0, .L8007A750
    /* 6ACAC 8007A4AC 00000000 */   nop
  .L8007A4B0:
    /* 6ACB0 8007A4B0 E43D010C */  jal        func_8004F790
    /* 6ACB4 8007A4B4 00000000 */   nop
    /* 6ACB8 8007A4B8 07004010 */  beqz       $v0, .L8007A4D8
    /* 6ACBC 8007A4BC 00000000 */   nop
    /* 6ACC0 8007A4C0 5A3B010C */  jal        func_8004ED68
    /* 6ACC4 8007A4C4 21200000 */   addu      $a0, $zero, $zero
    /* 6ACC8 8007A4C8 5A3B010C */  jal        func_8004ED68
    /* 6ACCC 8007A4CC 01000424 */   addiu     $a0, $zero, 0x1
    /* 6ACD0 8007A4D0 D4E90108 */  j          .L8007A750
    /* 6ACD4 8007A4D4 00000000 */   nop
  .L8007A4D8:
    /* 6ACD8 8007A4D8 94024296 */  lhu        $v0, (0x1F800294 & 0xFFFF)($s2)
    /* 6ACDC 8007A4DC 00000000 */  nop
    /* 6ACE0 8007A4E0 24004010 */  beqz       $v0, .L8007A574
    /* 6ACE4 8007A4E4 00000000 */   nop
    /* 6ACE8 8007A4E8 C402428E */  lw         $v0, (0x1F8002C4 & 0xFFFF)($s2)
    /* 6ACEC 8007A4EC 00000000 */  nop
    /* 6ACF0 8007A4F0 1A004014 */  bnez       $v0, .L8007A55C
    /* 6ACF4 8007A4F4 00000000 */   nop
    /* 6ACF8 8007A4F8 C802428E */  lw         $v0, (0x1F8002C8 & 0xFFFF)($s2)
    /* 6ACFC 8007A4FC 00000000 */  nop
    /* 6AD00 8007A500 B4004228 */  slti       $v0, $v0, 0xB4
    /* 6AD04 8007A504 15004010 */  beqz       $v0, .L8007A55C
    /* 6AD08 8007A508 00000000 */   nop
    /* 6AD0C 8007A50C 9A024292 */  lbu        $v0, (0x1F80029A & 0xFFFF)($s2)
    /* 6AD10 8007A510 00000000 */  nop
    /* 6AD14 8007A514 FF004330 */  andi       $v1, $v0, 0xFF
    /* 6AD18 8007A518 09000224 */  addiu      $v0, $zero, 0x9
    /* 6AD1C 8007A51C 0D006210 */  beq        $v1, $v0, .L8007A554
    /* 6AD20 8007A520 03000224 */   addiu     $v0, $zero, 0x3
    /* 6AD24 8007A524 0D006214 */  bne        $v1, $v0, .L8007A55C
    /* 6AD28 8007A528 00000000 */   nop
    /* 6AD2C 8007A52C BC024296 */  lhu        $v0, (0x1F8002BC & 0xFFFF)($s2)
    /* 6AD30 8007A530 00000000 */  nop
    /* 6AD34 8007A534 00140200 */  sll        $v0, $v0, 16
    /* 6AD38 8007A538 03140200 */  sra        $v0, $v0, 16
    /* 6AD3C 8007A53C 02004104 */  bgez       $v0, .L8007A548
    /* 6AD40 8007A540 00000000 */   nop
    /* 6AD44 8007A544 23100200 */  negu       $v0, $v0
  .L8007A548:
    /* 6AD48 8007A548 90194228 */  slti       $v0, $v0, 0x1990
    /* 6AD4C 8007A54C 03004010 */  beqz       $v0, .L8007A55C
    /* 6AD50 8007A550 00000000 */   nop
  .L8007A554:
    /* 6AD54 8007A554 D2E90108 */  j          .L8007A748
    /* 6AD58 8007A558 0A000424 */   addiu     $a0, $zero, 0xA
  .L8007A55C:
    /* 6AD5C 8007A55C 94024296 */  lhu        $v0, (0x1F800294 & 0xFFFF)($s2)
    /* 6AD60 8007A560 00000000 */  nop
    /* 6AD64 8007A564 03004010 */  beqz       $v0, .L8007A574
    /* 6AD68 8007A568 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 6AD6C 8007A56C D4E90108 */  j          .L8007A750
    /* 6AD70 8007A570 940242A6 */   sh        $v0, (0x1F800294 & 0xFFFF)($s2)
  .L8007A574:
    /* 6AD74 8007A574 F13E010C */  jal        func_8004FBC4
    /* 6AD78 8007A578 21200000 */   addu      $a0, $zero, $zero
    /* 6AD7C 8007A57C 74004010 */  beqz       $v0, .L8007A750
    /* 6AD80 8007A580 00000000 */   nop
    /* 6AD84 8007A584 C20240A2 */  sb         $zero, (0x1F8002C2 & 0xFFFF)($s2)
    /* 6AD88 8007A588 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6AD8C 8007A58C 21088102 */  addu       $at, $s4, $at
    /* 6AD90 8007A590 76AC20A0 */  sb         $zero, -0x538A($at)
    /* 6AD94 8007A594 775C000C */  jal        func_800171DC
    /* 6AD98 8007A598 00000000 */   nop
    /* 6AD9C 8007A59C 9A024292 */  lbu        $v0, (0x1F80029A & 0xFFFF)($s2)
    /* 6ADA0 8007A5A0 04000424 */  addiu      $a0, $zero, 0x4
    /* 6ADA4 8007A5A4 FF004330 */  andi       $v1, $v0, 0xFF
    /* 6ADA8 8007A5A8 2C006410 */  beq        $v1, $a0, .L8007A65C
    /* 6ADAC 8007A5AC 05006228 */   slti      $v0, $v1, 0x5
    /* 6ADB0 8007A5B0 05004010 */  beqz       $v0, .L8007A5C8
    /* 6ADB4 8007A5B4 03000224 */   addiu     $v0, $zero, 0x3
    /* 6ADB8 8007A5B8 0A006210 */  beq        $v1, $v0, .L8007A5E4
    /* 6ADBC 8007A5BC 00000000 */   nop
    /* 6ADC0 8007A5C0 97E90108 */  j          .L8007A65C
    /* 6ADC4 8007A5C4 00000000 */   nop
  .L8007A5C8:
    /* 6ADC8 8007A5C8 09000224 */  addiu      $v0, $zero, 0x9
    /* 6ADCC 8007A5CC 43006210 */  beq        $v1, $v0, .L8007A6DC
    /* 6ADD0 8007A5D0 0C000224 */   addiu     $v0, $zero, 0xC
    /* 6ADD4 8007A5D4 56006210 */  beq        $v1, $v0, .L8007A730
    /* 6ADD8 8007A5D8 0B000424 */   addiu     $a0, $zero, 0xB
    /* 6ADDC 8007A5DC 97E90108 */  j          .L8007A65C
    /* 6ADE0 8007A5E0 00000000 */   nop
  .L8007A5E4:
    /* 6ADE4 8007A5E4 AD024392 */  lbu        $v1, (0x1F8002AD & 0xFFFF)($s2)
    /* 6ADE8 8007A5E8 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 6ADEC 8007A5EC ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 6ADF0 8007A5F0 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6ADF4 8007A5F4 19006200 */  multu      $v1, $v0
    /* 6ADF8 8007A5F8 10280000 */  mfhi       $a1
    /* 6ADFC 8007A5FC 02210500 */  srl        $a0, $a1, 4
    /* 6AE00 8007A600 40100400 */  sll        $v0, $a0, 1
    /* 6AE04 8007A604 21104400 */  addu       $v0, $v0, $a0
    /* 6AE08 8007A608 C0100200 */  sll        $v0, $v0, 3
    /* 6AE0C 8007A60C 23186200 */  subu       $v1, $v1, $v0
    /* 6AE10 8007A610 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6AE14 8007A614 40110300 */  sll        $v0, $v1, 5
    /* 6AE18 8007A618 23104300 */  subu       $v0, $v0, $v1
    /* 6AE1C 8007A61C 80100200 */  sll        $v0, $v0, 2
    /* 6AE20 8007A620 21104300 */  addu       $v0, $v0, $v1
    /* 6AE24 8007A624 C0100200 */  sll        $v0, $v0, 3
    /* 6AE28 8007A628 21888202 */  addu       $s1, $s4, $v0
    /* 6AE2C 8007A62C 9A032292 */  lbu        $v0, 0x39A($s1)
    /* 6AE30 8007A630 00000000 */  nop
    /* 6AE34 8007A634 05004010 */  beqz       $v0, .L8007A64C
    /* 6AE38 8007A638 00000000 */   nop
    /* 6AE3C 8007A63C 4441010C */  jal        func_80050510
    /* 6AE40 8007A640 21200000 */   addu      $a0, $zero, $zero
    /* 6AE44 8007A644 D4E90108 */  j          .L8007A750
    /* 6AE48 8007A648 00000000 */   nop
  .L8007A64C:
    /* 6AE4C 8007A64C 4441010C */  jal        func_80050510
    /* 6AE50 8007A650 01000424 */   addiu     $a0, $zero, 0x1
    /* 6AE54 8007A654 D4E90108 */  j          .L8007A750
    /* 6AE58 8007A658 00000000 */   nop
  .L8007A65C:
    /* 6AE5C 8007A65C 4441010C */  jal        func_80050510
    /* 6AE60 8007A660 01000424 */   addiu     $a0, $zero, 0x1
    /* 6AE64 8007A664 E1024292 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($s2)
    /* 6AE68 8007A668 05000324 */  addiu      $v1, $zero, 0x5
    /* 6AE6C 8007A66C FF004230 */  andi       $v0, $v0, 0xFF
    /* 6AE70 8007A670 37004310 */  beq        $v0, $v1, .L8007A750
    /* 6AE74 8007A674 00000000 */   nop
    /* 6AE78 8007A678 BE024296 */  lhu        $v0, (0x1F8002BE & 0xFFFF)($s2)
    /* 6AE7C 8007A67C 00000000 */  nop
    /* 6AE80 8007A680 00140200 */  sll        $v0, $v0, 16
    /* 6AE84 8007A684 03140200 */  sra        $v0, $v0, 16
    /* 6AE88 8007A688 02004104 */  bgez       $v0, .L8007A694
    /* 6AE8C 8007A68C 00000000 */   nop
    /* 6AE90 8007A690 23100200 */  negu       $v0, $v0
  .L8007A694:
    /* 6AE94 8007A694 F5124228 */  slti       $v0, $v0, 0x12F5
    /* 6AE98 8007A698 2D004010 */  beqz       $v0, .L8007A750
    /* 6AE9C 8007A69C 0B000224 */   addiu     $v0, $zero, 0xB
    /* 6AEA0 8007A6A0 B002438E */  lw         $v1, (0x1F8002B0 & 0xFFFF)($s2)
    /* 6AEA4 8007A6A4 00000000 */  nop
    /* 6AEA8 8007A6A8 29006214 */  bne        $v1, $v0, .L8007A750
    /* 6AEAC 8007A6AC 00000000 */   nop
    /* 6AEB0 8007A6B0 AA024292 */  lbu        $v0, (0x1F8002AA & 0xFFFF)($s2)
    /* 6AEB4 8007A6B4 00000000 */  nop
    /* 6AEB8 8007A6B8 FF004330 */  andi       $v1, $v0, 0xFF
    /* 6AEBC 8007A6BC 01000224 */  addiu      $v0, $zero, 0x1
    /* 6AEC0 8007A6C0 03006210 */  beq        $v1, $v0, .L8007A6D0
    /* 6AEC4 8007A6C4 0C000224 */   addiu     $v0, $zero, 0xC
    /* 6AEC8 8007A6C8 21006214 */  bne        $v1, $v0, .L8007A750
    /* 6AECC 8007A6CC 00000000 */   nop
  .L8007A6D0:
    /* 6AED0 8007A6D0 0B000424 */  addiu      $a0, $zero, 0xB
    /* 6AED4 8007A6D4 CDE90108 */  j          .L8007A734
    /* 6AED8 8007A6D8 03000224 */   addiu     $v0, $zero, 0x3
  .L8007A6DC:
    /* 6AEDC 8007A6DC B002438E */  lw         $v1, (0x1F8002B0 & 0xFFFF)($s2)
    /* 6AEE0 8007A6E0 00000000 */  nop
    /* 6AEE4 8007A6E4 06006410 */  beq        $v1, $a0, .L8007A700
    /* 6AEE8 8007A6E8 0D000224 */   addiu     $v0, $zero, 0xD
    /* 6AEEC 8007A6EC 04006210 */  beq        $v1, $v0, .L8007A700
    /* 6AEF0 8007A6F0 F7FF6224 */   addiu     $v0, $v1, -0x9
    /* 6AEF4 8007A6F4 0200422C */  sltiu      $v0, $v0, 0x2
    /* 6AEF8 8007A6F8 15004010 */  beqz       $v0, .L8007A750
    /* 6AEFC 8007A6FC 00000000 */   nop
  .L8007A700:
    /* 6AF00 8007A700 BE024296 */  lhu        $v0, (0x1F8002BE & 0xFFFF)($s2)
    /* 6AF04 8007A704 00000000 */  nop
    /* 6AF08 8007A708 00140200 */  sll        $v0, $v0, 16
    /* 6AF0C 8007A70C 03140200 */  sra        $v0, $v0, 16
    /* 6AF10 8007A710 02004104 */  bgez       $v0, .L8007A71C
    /* 6AF14 8007A714 00000000 */   nop
    /* 6AF18 8007A718 23100200 */  negu       $v0, $v0
  .L8007A71C:
    /* 6AF1C 8007A71C B7084228 */  slti       $v0, $v0, 0x8B7
    /* 6AF20 8007A720 0B004010 */  beqz       $v0, .L8007A750
    /* 6AF24 8007A724 0B000424 */   addiu     $a0, $zero, 0xB
    /* 6AF28 8007A728 CDE90108 */  j          .L8007A734
    /* 6AF2C 8007A72C 02000224 */   addiu     $v0, $zero, 0x2
  .L8007A730:
    /* 6AF30 8007A730 01000224 */  addiu      $v0, $zero, 0x1
  .L8007A734:
    /* 6AF34 8007A734 A10240A2 */  sb         $zero, (0x1F8002A1 & 0xFFFF)($s2)
    /* 6AF38 8007A738 C20240A2 */  sb         $zero, (0x1F8002C2 & 0xFFFF)($s2)
    /* 6AF3C 8007A73C EC0140A2 */  sb         $zero, (0x1F8001EC & 0xFFFF)($s2)
    /* 6AF40 8007A740 0F80013C */  lui        $at, %hi(D_800EF9C8)
    /* 6AF44 8007A744 C8F922A0 */  sb         $v0, %lo(D_800EF9C8)($at)
  .L8007A748:
    /* 6AF48 8007A748 715C000C */  jal        func_800171C4
    /* 6AF4C 8007A74C 00000000 */   nop
  .L8007A750:
    /* 6AF50 8007A750 2400BF8F */  lw         $ra, 0x24($sp)
    /* 6AF54 8007A754 2000B48F */  lw         $s4, 0x20($sp)
    /* 6AF58 8007A758 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 6AF5C 8007A75C 1800B28F */  lw         $s2, 0x18($sp)
    /* 6AF60 8007A760 1400B18F */  lw         $s1, 0x14($sp)
    /* 6AF64 8007A764 1000B08F */  lw         $s0, 0x10($sp)
    /* 6AF68 8007A768 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 6AF6C 8007A76C 0800E003 */  jr         $ra
    /* 6AF70 8007A770 00000000 */   nop
endlabel func_8007A328
