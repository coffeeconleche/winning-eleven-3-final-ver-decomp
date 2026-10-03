nonmatching func_800AC27C, 0xA04

glabel func_800AC27C
    /* 9CA7C 800AC27C 8000838F */  lw         $v1, %gp_rel(D_800E6B0C)($gp)
    /* 9CA80 800AC280 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 9CA84 800AC284 3C006228 */  slti       $v0, $v1, 0x3C
    /* 9CA88 800AC288 07004014 */  bnez       $v0, .L800AC2A8
    /* 9CA8C 800AC28C 3000BFAF */   sw        $ra, 0x30($sp)
    /* 9CA90 800AC290 1001828F */  lw         $v0, %gp_rel(D_800E6B9C)($gp)
    /* 9CA94 800AC294 800080AF */  sw         $zero, %gp_rel(D_800E6B0C)($gp)
    /* 9CA98 800AC298 01004224 */  addiu      $v0, $v0, 0x1
    /* 9CA9C 800AC29C 100182AF */  sw         $v0, %gp_rel(D_800E6B9C)($gp)
    /* 9CAA0 800AC2A0 AFB00208 */  j          .L800AC2BC
    /* 9CAA4 800AC2A4 00000000 */   nop
  .L800AC2A8:
    /* 9CAA8 800AC2A8 1180023C */  lui        $v0, %hi(D_8010CDDC)
    /* 9CAAC 800AC2AC DCCD428C */  lw         $v0, %lo(D_8010CDDC)($v0)
    /* 9CAB0 800AC2B0 00000000 */  nop
    /* 9CAB4 800AC2B4 21106200 */  addu       $v0, $v1, $v0
    /* 9CAB8 800AC2B8 800082AF */  sw         $v0, %gp_rel(D_800E6B0C)($gp)
  .L800AC2BC:
    /* 9CABC 800AC2BC 0E80053C */  lui        $a1, %hi(D_800E6A8C)
    /* 9CAC0 800AC2C0 8C6AA58C */  lw         $a1, %lo(D_800E6A8C)($a1)
    /* 9CAC4 800AC2C4 6E0E030C */  jal        func_800C39B8
    /* 9CAC8 800AC2C8 01000434 */   ori       $a0, $zero, 0x1
    /* 9CACC 800AC2CC F1A9020C */  jal        func_800AA7C4
    /* 9CAD0 800AC2D0 00000000 */   nop
    /* 9CAD4 800AC2D4 7AAA020C */  jal        func_800AA9E8
    /* 9CAD8 800AC2D8 00000000 */   nop
    /* 9CADC 800AC2DC 2400828F */  lw         $v0, %gp_rel(D_800E6AB0)($gp)
    /* 9CAE0 800AC2E0 00000000 */  nop
    /* 9CAE4 800AC2E4 08004014 */  bnez       $v0, .L800AC308
    /* 9CAE8 800AC2E8 00000000 */   nop
    /* 9CAEC 800AC2EC 1180023C */  lui        $v0, %hi(D_8010CDDC)
    /* 9CAF0 800AC2F0 DCCD428C */  lw         $v0, %lo(D_8010CDDC)($v0)
    /* 9CAF4 800AC2F4 2000848F */  lw         $a0, %gp_rel(D_800E6AAC)($gp)
    /* 9CAF8 800AC2F8 80180200 */  sll        $v1, $v0, 2
    /* 9CAFC 800AC2FC 21186200 */  addu       $v1, $v1, $v0
    /* 9CB00 800AC300 21186400 */  addu       $v1, $v1, $a0
    /* 9CB04 800AC304 200083AF */  sw         $v1, %gp_rel(D_800E6AAC)($gp)
  .L800AC308:
    /* 9CB08 800AC308 5E008293 */  lbu        $v0, %gp_rel(D_800E6AEA)($gp)
    /* 9CB0C 800AC30C 00000000 */  nop
    /* 9CB10 800AC310 57024014 */  bnez       $v0, .L800ACC70
    /* 9CB14 800AC314 00000000 */   nop
    /* 9CB18 800AC318 C0008387 */  lh         $v1, %gp_rel(D_800E6B4C)($gp)
    /* 9CB1C 800AC31C 00000000 */  nop
    /* 9CB20 800AC320 5E00622C */  sltiu      $v0, $v1, 0x5E
    /* 9CB24 800AC324 52024010 */  beqz       $v0, .L800ACC70
    /* 9CB28 800AC328 00000000 */   nop
    /* 9CB2C 800AC32C 80100300 */  sll        $v0, $v1, 2
    /* 9CB30 800AC330 0180013C */  lui        $at, %hi(jtbl_80014BB8)
    /* 9CB34 800AC334 B84B2124 */  addiu      $at, $at, %lo(jtbl_80014BB8)
    /* 9CB38 800AC338 21082200 */  addu       $at, $at, $v0
    /* 9CB3C 800AC33C 0000228C */  lw         $v0, 0x0($at)
    /* 9CB40 800AC340 00000000 */  nop
    /* 9CB44 800AC344 08004000 */  jr         $v0
    /* 9CB48 800AC348 00000000 */   nop
  jlabel .L800AC34C
    /* 9CB4C 800AC34C 01000434 */  ori        $a0, $zero, 0x1
    /* 9CB50 800AC350 F3DB020C */  jal        func_800B6FCC
    /* 9CB54 800AC354 21280000 */   addu      $a1, $zero, $zero
    /* 9CB58 800AC358 02000334 */  ori        $v1, $zero, 0x2
    /* 9CB5C 800AC35C CB014314 */  bne        $v0, $v1, .L800ACA8C
    /* 9CB60 800AC360 00000000 */   nop
    /* 9CB64 800AC364 EA008497 */  lhu        $a0, %gp_rel(D_800E6B76)($gp)
    /* 9CB68 800AC368 00000000 */  nop
    /* 9CB6C 800AC36C 0003822C */  sltiu      $v0, $a0, 0x300
    /* 9CB70 800AC370 05004014 */  bnez       $v0, .L800AC388
    /* 9CB74 800AC374 0002822C */   sltiu     $v0, $a0, 0x200
    /* 9CB78 800AC378 58B0020C */  jal        func_800AC160
    /* 9CB7C 800AC37C 00000000 */   nop
    /* 9CB80 800AC380 1CB30208 */  j          .L800ACC70
    /* 9CB84 800AC384 00000000 */   nop
  .L800AC388:
    /* 9CB88 800AC388 05004014 */  bnez       $v0, .L800AC3A0
    /* 9CB8C 800AC38C 00000000 */   nop
    /* 9CB90 800AC390 21B0020C */  jal        func_800AC084
    /* 9CB94 800AC394 00000000 */   nop
    /* 9CB98 800AC398 1CB30208 */  j          .L800ACC70
    /* 9CB9C 800AC39C 00000000 */   nop
  .L800AC3A0:
    /* 9CBA0 800AC3A0 C00080A7 */  sh         $zero, %gp_rel(D_800E6B4C)($gp)
    /* 9CBA4 800AC3A4 1CB30208 */  j          .L800ACC70
    /* 9CBA8 800AC3A8 00000000 */   nop
  jlabel .L800AC3AC
    /* 9CBAC 800AC3AC 01000434 */  ori        $a0, $zero, 0x1
    /* 9CBB0 800AC3B0 F3DB020C */  jal        func_800B6FCC
    /* 9CBB4 800AC3B4 21280000 */   addu      $a1, $zero, $zero
    /* 9CBB8 800AC3B8 02000334 */  ori        $v1, $zero, 0x2
    /* 9CBBC 800AC3BC 62014310 */  beq        $v0, $v1, .L800AC948
    /* 9CBC0 800AC3C0 00000000 */   nop
    /* 9CBC4 800AC3C4 C1B20208 */  j          .L800ACB04
    /* 9CBC8 800AC3C8 00000000 */   nop
  jlabel .L800AC3CC
    /* 9CBCC 800AC3CC 4A008297 */  lhu        $v0, %gp_rel(D_800E6AD6)($gp)
    /* 9CBD0 800AC3D0 00000000 */  nop
    /* 9CBD4 800AC3D4 F8FF4224 */  addiu      $v0, $v0, -0x8
    /* 9CBD8 800AC3D8 21204000 */  addu       $a0, $v0, $zero
    /* 9CBDC 800AC3DC 4A0082A7 */  sh         $v0, %gp_rel(D_800E6AD6)($gp)
    /* 9CBE0 800AC3E0 00140200 */  sll        $v0, $v0, 16
    /* 9CBE4 800AC3E4 031C0200 */  sra        $v1, $v0, 16
    /* 9CBE8 800AC3E8 CA01601C */  bgtz       $v1, .L800ACB14
    /* 9CBEC 800AC3EC 00000000 */   nop
    /* 9CBF0 800AC3F0 01000434 */  ori        $a0, $zero, 0x1
    /* 9CBF4 800AC3F4 500080A7 */  sh         $zero, %gp_rel(D_800E6ADC)($gp)
    /* 9CBF8 800AC3F8 4A0080A7 */  sh         $zero, %gp_rel(D_800E6AD6)($gp)
    /* 9CBFC 800AC3FC F3DB020C */  jal        func_800B6FCC
    /* 9CC00 800AC400 21280000 */   addu      $a1, $zero, $zero
    /* 9CC04 800AC404 02000334 */  ori        $v1, $zero, 0x2
    /* 9CC08 800AC408 A0014314 */  bne        $v0, $v1, .L800ACA8C
    /* 9CC0C 800AC40C 00000000 */   nop
    /* 9CC10 800AC410 7AA5020C */  jal        func_800A95E8
    /* 9CC14 800AC414 00000000 */   nop
    /* 9CC18 800AC418 0A000234 */  ori        $v0, $zero, 0xA
    /* 9CC1C 800AC41C C00082A7 */  sh         $v0, %gp_rel(D_800E6B4C)($gp)
    /* 9CC20 800AC420 1CB30208 */  j          .L800ACC70
    /* 9CC24 800AC424 00000000 */   nop
  jlabel .L800AC428
    /* 9CC28 800AC428 8000838F */  lw         $v1, %gp_rel(D_800E6B0C)($gp)
    /* 9CC2C 800AC42C 1E000234 */  ori        $v0, $zero, 0x1E
    /* 9CC30 800AC430 07006214 */  bne        $v1, $v0, .L800AC450
    /* 9CC34 800AC434 FFFF0324 */   addiu     $v1, $zero, -0x1
    /* 9CC38 800AC438 01000434 */  ori        $a0, $zero, 0x1
    /* 9CC3C 800AC43C 0E80063C */  lui        $a2, %hi(D_800E6AF0)
    /* 9CC40 800AC440 F06AC624 */  addiu      $a2, $a2, %lo(D_800E6AF0)
    /* 9CC44 800AC444 0DDC020C */  jal        func_800B7034
    /* 9CC48 800AC448 21280000 */   addu      $a1, $zero, $zero
    /* 9CC4C 800AC44C 21184000 */  addu       $v1, $v0, $zero
  .L800AC450:
    /* 9CC50 800AC450 01000234 */  ori        $v0, $zero, 0x1
    /* 9CC54 800AC454 06026214 */  bne        $v1, $v0, .L800ACC70
    /* 9CC58 800AC458 00000000 */   nop
    /* 9CC5C 800AC45C 03000234 */  ori        $v0, $zero, 0x3
    /* 9CC60 800AC460 C00082A7 */  sh         $v0, %gp_rel(D_800E6B4C)($gp)
    /* 9CC64 800AC464 52B10208 */  j          .L800AC548
    /* 9CC68 800AC468 5B000234 */   ori       $v0, $zero, 0x5B
  jlabel .L800AC46C
    /* 9CC6C 800AC46C 26018297 */  lhu        $v0, %gp_rel(D_800E6BB2)($gp)
    /* 9CC70 800AC470 1180033C */  lui        $v1, %hi(D_8010CDDC)
    /* 9CC74 800AC474 DCCD6394 */  lhu        $v1, %lo(D_8010CDDC)($v1)
    /* 9CC78 800AC478 00000000 */  nop
    /* 9CC7C 800AC47C 21104300 */  addu       $v0, $v0, $v1
    /* 9CC80 800AC480 260182A7 */  sh         $v0, %gp_rel(D_800E6BB2)($gp)
    /* 9CC84 800AC484 26018297 */  lhu        $v0, %gp_rel(D_800E6BB2)($gp)
    /* 9CC88 800AC488 00000000 */  nop
    /* 9CC8C 800AC48C B500422C */  sltiu      $v0, $v0, 0xB5
    /* 9CC90 800AC490 F7014014 */  bnez       $v0, .L800ACC70
    /* 9CC94 800AC494 00000000 */   nop
    /* 9CC98 800AC498 5C000234 */  ori        $v0, $zero, 0x5C
    /* 9CC9C 800AC49C 260180A7 */  sh         $zero, %gp_rel(D_800E6BB2)($gp)
    /* 9CCA0 800AC4A0 140180A3 */  sb         $zero, %gp_rel(D_800E6BA0)($gp)
    /* 9CCA4 800AC4A4 C00082A7 */  sh         $v0, %gp_rel(D_800E6B4C)($gp)
    /* 9CCA8 800AC4A8 1CB30208 */  j          .L800ACC70
    /* 9CCAC 800AC4AC 00000000 */   nop
  jlabel .L800AC4B0
    /* 9CCB0 800AC4B0 01000434 */  ori        $a0, $zero, 0x1
    /* 9CCB4 800AC4B4 F3DB020C */  jal        func_800B6FCC
    /* 9CCB8 800AC4B8 21280000 */   addu      $a1, $zero, $zero
    /* 9CCBC 800AC4BC 02000334 */  ori        $v1, $zero, 0x2
    /* 9CCC0 800AC4C0 72014314 */  bne        $v0, $v1, .L800ACA8C
    /* 9CCC4 800AC4C4 01000434 */   ori       $a0, $zero, 0x1
    /* 9CCC8 800AC4C8 0E80063C */  lui        $a2, %hi(D_800E6AF0)
    /* 9CCCC 800AC4CC F06AC624 */  addiu      $a2, $a2, %lo(D_800E6AF0)
    /* 9CCD0 800AC4D0 0DDC020C */  jal        func_800B7034
    /* 9CCD4 800AC4D4 21280000 */   addu      $a1, $zero, $zero
    /* 9CCD8 800AC4D8 5D000234 */  ori        $v0, $zero, 0x5D
    /* 9CCDC 800AC4DC C00082A7 */  sh         $v0, %gp_rel(D_800E6B4C)($gp)
    /* 9CCE0 800AC4E0 1CB30208 */  j          .L800ACC70
    /* 9CCE4 800AC4E4 00000000 */   nop
  jlabel .L800AC4E8
    /* 9CCE8 800AC4E8 08000234 */  ori        $v0, $zero, 0x8
    /* 9CCEC 800AC4EC 260180A7 */  sh         $zero, %gp_rel(D_800E6BB2)($gp)
    /* 9CCF0 800AC4F0 740080A3 */  sb         $zero, %gp_rel(D_800E6B00)($gp)
    /* 9CCF4 800AC4F4 C00082A7 */  sh         $v0, %gp_rel(D_800E6B4C)($gp)
    /* 9CCF8 800AC4F8 1CB30208 */  j          .L800ACC70
    /* 9CCFC 800AC4FC 00000000 */   nop
  jlabel .L800AC500
    /* 9CD00 800AC500 88AD020C */  jal        func_800AB620
    /* 9CD04 800AC504 20050434 */   ori       $a0, $zero, 0x520
    /* 9CD08 800AC508 4A008287 */  lh         $v0, %gp_rel(D_800E6AD6)($gp)
    /* 9CD0C 800AC50C 9C0080A7 */  sh         $zero, %gp_rel(D_800E6B28)($gp)
    /* 9CD10 800AC510 1100401C */  bgtz       $v0, .L800AC558
    /* 9CD14 800AC514 21184000 */   addu      $v1, $v0, $zero
    /* 9CD18 800AC518 0E80053C */  lui        $a1, %hi(D_800E6AF0)
    /* 9CD1C 800AC51C F06AA524 */  addiu      $a1, $a1, %lo(D_800E6AF0)
    /* 9CD20 800AC520 500080A7 */  sh         $zero, %gp_rel(D_800E6ADC)($gp)
    /* 9CD24 800AC524 4A0080A7 */  sh         $zero, %gp_rel(D_800E6AD6)($gp)
    /* 9CD28 800AC528 F3DB020C */  jal        func_800B6FCC
    /* 9CD2C 800AC52C 01000434 */   ori       $a0, $zero, 0x1
    /* 9CD30 800AC530 02000334 */  ori        $v1, $zero, 0x2
    /* 9CD34 800AC534 55014314 */  bne        $v0, $v1, .L800ACA8C
    /* 9CD38 800AC538 00000000 */   nop
    /* 9CD3C 800AC53C 7AA5020C */  jal        func_800A95E8
    /* 9CD40 800AC540 00000000 */   nop
    /* 9CD44 800AC544 14000234 */  ori        $v0, $zero, 0x14
  .L800AC548:
    /* 9CD48 800AC548 260180A7 */  sh         $zero, %gp_rel(D_800E6BB2)($gp)
    /* 9CD4C 800AC54C C00082A7 */  sh         $v0, %gp_rel(D_800E6B4C)($gp)
    /* 9CD50 800AC550 1CB30208 */  j          .L800ACC70
    /* 9CD54 800AC554 00000000 */   nop
  .L800AC558:
    /* 9CD58 800AC558 F8FF6224 */  addiu      $v0, $v1, -0x8
    /* 9CD5C 800AC55C 001C0200 */  sll        $v1, $v0, 16
    /* 9CD60 800AC560 E0008487 */  lh         $a0, %gp_rel(D_800E6B6C)($gp)
    /* 9CD64 800AC564 031C0300 */  sra        $v1, $v1, 16
    /* 9CD68 800AC568 4A0082A7 */  sh         $v0, %gp_rel(D_800E6AD6)($gp)
    /* 9CD6C 800AC56C 500082A7 */  sh         $v0, %gp_rel(D_800E6ADC)($gp)
    /* 9CD70 800AC570 C9B20208 */  j          .L800ACB24
    /* 9CD74 800AC574 18006400 */   mult      $v1, $a0
  jlabel .L800AC578
    /* 9CD78 800AC578 18018287 */  lh         $v0, %gp_rel(D_800E6BA4)($gp)
    /* 9CD7C 800AC57C 00000000 */  nop
    /* 9CD80 800AC580 21184000 */  addu       $v1, $v0, $zero
    /* 9CD84 800AC584 65004228 */  slti       $v0, $v0, 0x65
    /* 9CD88 800AC588 02004010 */  beqz       $v0, .L800AC594
    /* 9CD8C 800AC58C 01006224 */   addiu     $v0, $v1, 0x1
    /* 9CD90 800AC590 180182A7 */  sh         $v0, %gp_rel(D_800E6BA4)($gp)
  .L800AC594:
    /* 9CD94 800AC594 18018387 */  lh         $v1, %gp_rel(D_800E6BA4)($gp)
    /* 9CD98 800AC598 3C000234 */  ori        $v0, $zero, 0x3C
    /* 9CD9C 800AC59C 05006214 */  bne        $v1, $v0, .L800AC5B4
    /* 9CDA0 800AC5A0 00000000 */   nop
    /* 9CDA4 800AC5A4 0DAF020C */  jal        func_800ABC34
    /* 9CDA8 800AC5A8 00000000 */   nop
    /* 9CDAC 800AC5AC 01000234 */  ori        $v0, $zero, 0x1
    /* 9CDB0 800AC5B0 9C0082A7 */  sh         $v0, %gp_rel(D_800E6B28)($gp)
  .L800AC5B4:
    /* 9CDB4 800AC5B4 18018287 */  lh         $v0, %gp_rel(D_800E6BA4)($gp)
    /* 9CDB8 800AC5B8 00000000 */  nop
    /* 9CDBC 800AC5BC 5A004228 */  slti       $v0, $v0, 0x5A
    /* 9CDC0 800AC5C0 2F004014 */  bnez       $v0, .L800AC680
    /* 9CDC4 800AC5C4 01000234 */   ori       $v0, $zero, 0x1
    /* 9CDC8 800AC5C8 9C0082A7 */  sh         $v0, %gp_rel(D_800E6B28)($gp)
    /* 9CDCC 800AC5CC 0E80053C */  lui        $a1, %hi(D_800E6AF0)
    /* 9CDD0 800AC5D0 F06AA524 */  addiu      $a1, $a1, %lo(D_800E6AF0)
    /* 9CDD4 800AC5D4 F3DB020C */  jal        func_800B6FCC
    /* 9CDD8 800AC5D8 01000434 */   ori       $a0, $zero, 0x1
    /* 9CDDC 800AC5DC 02000334 */  ori        $v1, $zero, 0x2
    /* 9CDE0 800AC5E0 0C004314 */  bne        $v0, $v1, .L800AC614
    /* 9CDE4 800AC5E4 00000000 */   nop
    /* 9CDE8 800AC5E8 8000828F */  lw         $v0, %gp_rel(D_800E6B0C)($gp)
    /* 9CDEC 800AC5EC 00000000 */  nop
    /* 9CDF0 800AC5F0 03004230 */  andi       $v0, $v0, 0x3
    /* 9CDF4 800AC5F4 03004014 */  bnez       $v0, .L800AC604
    /* 9CDF8 800AC5F8 00000000 */   nop
    /* 9CDFC 800AC5FC 0DAF020C */  jal        func_800ABC34
    /* 9CE00 800AC600 00000000 */   nop
  .L800AC604:
    /* 9CE04 800AC604 EA008297 */  lhu        $v0, %gp_rel(D_800E6B76)($gp)
    /* 9CE08 800AC608 00000000 */  nop
    /* 9CE0C 800AC60C 02FE4224 */  addiu      $v0, $v0, -0x1FE
    /* 9CE10 800AC610 B80082A7 */  sh         $v0, %gp_rel(D_800E6B44)($gp)
  .L800AC614:
    /* 9CE14 800AC614 01000434 */  ori        $a0, $zero, 0x1
    /* 9CE18 800AC618 FBDB020C */  jal        func_800B6FEC
    /* 9CE1C 800AC61C 21280000 */   addu      $a1, $zero, $zero
    /* 9CE20 800AC620 04000334 */  ori        $v1, $zero, 0x4
    /* 9CE24 800AC624 16004314 */  bne        $v0, $v1, .L800AC680
    /* 9CE28 800AC628 00000000 */   nop
    /* 9CE2C 800AC62C EA008497 */  lhu        $a0, %gp_rel(D_800E6B76)($gp)
    /* 9CE30 800AC630 00000000 */  nop
    /* 9CE34 800AC634 00FE8224 */  addiu      $v0, $a0, -0x200
    /* 9CE38 800AC638 40180200 */  sll        $v1, $v0, 1
    /* 9CE3C 800AC63C 21186200 */  addu       $v1, $v1, $v0
    /* 9CE40 800AC640 40180300 */  sll        $v1, $v1, 1
    /* 9CE44 800AC644 0D80013C */  lui        $at, %hi(D_800CE9D4 + 0x3)
    /* 9CE48 800AC648 D7E92124 */  addiu      $at, $at, %lo(D_800CE9D4 + 0x3)
    /* 9CE4C 800AC64C 21082300 */  addu       $at, $at, $v1
    /* 9CE50 800AC650 00002290 */  lbu        $v0, 0x0($at)
    /* 9CE54 800AC654 00000000 */  nop
    /* 9CE58 800AC658 05004014 */  bnez       $v0, .L800AC670
    /* 9CE5C 800AC65C 00000000 */   nop
    /* 9CE60 800AC660 21B0020C */  jal        func_800AC084
    /* 9CE64 800AC664 00000000 */   nop
    /* 9CE68 800AC668 A0B10208 */  j          .L800AC680
    /* 9CE6C 800AC66C 00000000 */   nop
  .L800AC670:
    /* 9CE70 800AC670 C00080A7 */  sh         $zero, %gp_rel(D_800E6B4C)($gp)
    /* 9CE74 800AC674 7AA5020C */  jal        func_800A95E8
    /* 9CE78 800AC678 00000000 */   nop
    /* 9CE7C 800AC67C EA0080A7 */  sh         $zero, %gp_rel(D_800E6B76)($gp)
  .L800AC680:
    /* 9CE80 800AC680 4C018393 */  lbu        $v1, %gp_rel(D_800E6BD8)($gp)
    /* 9CE84 800AC684 01000234 */  ori        $v0, $zero, 0x1
    /* 9CE88 800AC688 04006214 */  bne        $v1, $v0, .L800AC69C
    /* 9CE8C 800AC68C 45000234 */   ori       $v0, $zero, 0x45
    /* 9CE90 800AC690 C00082A7 */  sh         $v0, %gp_rel(D_800E6B4C)($gp)
    /* 9CE94 800AC694 1CB30208 */  j          .L800ACC70
    /* 9CE98 800AC698 00000000 */   nop
  jlabel .L800AC69C
    /* 9CE9C 800AC69C 8A008287 */  lh         $v0, %gp_rel(D_800E6B16)($gp)
    /* 9CEA0 800AC6A0 00000000 */  nop
    /* 9CEA4 800AC6A4 1D004010 */  beqz       $v0, .L800AC71C
    /* 9CEA8 800AC6A8 21184000 */   addu      $v1, $v0, $zero
    /* 9CEAC 800AC6AC 4A008297 */  lhu        $v0, %gp_rel(D_800E6AD6)($gp)
    /* 9CEB0 800AC6B0 00000000 */  nop
    /* 9CEB4 800AC6B4 23104300 */  subu       $v0, $v0, $v1
    /* 9CEB8 800AC6B8 4A0082A7 */  sh         $v0, %gp_rel(D_800E6AD6)($gp)
    /* 9CEBC 800AC6BC 00140200 */  sll        $v0, $v0, 16
    /* 9CEC0 800AC6C0 0700401C */  bgtz       $v0, .L800AC6E0
    /* 9CEC4 800AC6C4 00000000 */   nop
    /* 9CEC8 800AC6C8 4A0080A7 */  sh         $zero, %gp_rel(D_800E6AD6)($gp)
    /* 9CECC 800AC6CC 8A0080A7 */  sh         $zero, %gp_rel(D_800E6B16)($gp)
    /* 9CED0 800AC6D0 7AA5020C */  jal        func_800A95E8
    /* 9CED4 800AC6D4 00000000 */   nop
    /* 9CED8 800AC6D8 C00080A7 */  sh         $zero, %gp_rel(D_800E6B4C)($gp)
    /* 9CEDC 800AC6DC EA0080A7 */  sh         $zero, %gp_rel(D_800E6B76)($gp)
  .L800AC6E0:
    /* 9CEE0 800AC6E0 4A008297 */  lhu        $v0, %gp_rel(D_800E6AD6)($gp)
    /* 9CEE4 800AC6E4 E0008487 */  lh         $a0, %gp_rel(D_800E6B6C)($gp)
    /* 9CEE8 800AC6E8 001C0200 */  sll        $v1, $v0, 16
    /* 9CEEC 800AC6EC 031C0300 */  sra        $v1, $v1, 16
    /* 9CEF0 800AC6F0 18006400 */  mult       $v1, $a0
    /* 9CEF4 800AC6F4 500082A7 */  sh         $v0, %gp_rel(D_800E6ADC)($gp)
    /* 9CEF8 800AC6F8 12180000 */  mflo       $v1
    /* 9CEFC 800AC6FC 02006104 */  bgez       $v1, .L800AC708
    /* 9CF00 800AC700 21106000 */   addu      $v0, $v1, $zero
    /* 9CF04 800AC704 7F006224 */  addiu      $v0, $v1, 0x7F
  .L800AC708:
    /* 9CF08 800AC708 40120200 */  sll        $v0, $v0, 9
    /* 9CF0C 800AC70C 032C0200 */  sra        $a1, $v0, 16
    /* 9CF10 800AC710 21200000 */  addu       $a0, $zero, $zero
    /* 9CF14 800AC714 16F3020C */  jal        func_800BCC58
    /* 9CF18 800AC718 2130A000 */   addu      $a2, $a1, $zero
  jlabel .L800AC71C
    /* 9CF1C 800AC71C 4A008287 */  lh         $v0, %gp_rel(D_800E6AD6)($gp)
    /* 9CF20 800AC720 E0008487 */  lh         $a0, %gp_rel(D_800E6B6C)($gp)
    /* 9CF24 800AC724 00000000 */  nop
    /* 9CF28 800AC728 18004400 */  mult       $v0, $a0
    /* 9CF2C 800AC72C 12180000 */  mflo       $v1
    /* 9CF30 800AC730 02006104 */  bgez       $v1, .L800AC73C
    /* 9CF34 800AC734 00000000 */   nop
    /* 9CF38 800AC738 7F006324 */  addiu      $v1, $v1, 0x7F
  .L800AC73C:
    /* 9CF3C 800AC73C 50008287 */  lh         $v0, %gp_rel(D_800E6ADC)($gp)
    /* 9CF40 800AC740 00000000 */  nop
    /* 9CF44 800AC744 18004400 */  mult       $v0, $a0
    /* 9CF48 800AC748 40120300 */  sll        $v0, $v1, 9
    /* 9CF4C 800AC74C 12300000 */  mflo       $a2
    /* 9CF50 800AC750 0200C104 */  bgez       $a2, .L800AC75C
    /* 9CF54 800AC754 032C0200 */   sra       $a1, $v0, 16
    /* 9CF58 800AC758 7F00C624 */  addiu      $a2, $a2, 0x7F
  .L800AC75C:
    /* 9CF5C 800AC75C 21200000 */  addu       $a0, $zero, $zero
    /* 9CF60 800AC760 40320600 */  sll        $a2, $a2, 9
    /* 9CF64 800AC764 16F3020C */  jal        func_800BCC58
    /* 9CF68 800AC768 03340600 */   sra       $a2, $a2, 16
    /* 9CF6C 800AC76C C0008387 */  lh         $v1, %gp_rel(D_800E6B4C)($gp)
    /* 9CF70 800AC770 04000234 */  ori        $v0, $zero, 0x4
    /* 9CF74 800AC774 3D006210 */  beq        $v1, $v0, .L800AC86C
    /* 9CF78 800AC778 01000234 */   ori       $v0, $zero, 0x1
    /* 9CF7C 800AC77C 2400838F */  lw         $v1, %gp_rel(D_800E6AB0)($gp)
    /* 9CF80 800AC780 00000000 */  nop
    /* 9CF84 800AC784 39006214 */  bne        $v1, $v0, .L800AC86C
    /* 9CF88 800AC788 01000434 */   ori       $a0, $zero, 0x1
    /* 9CF8C 800AC78C 0E80063C */  lui        $a2, %hi(D_800E6AF8)
    /* 9CF90 800AC790 F86AC624 */  addiu      $a2, $a2, %lo(D_800E6AF8)
    /* 9CF94 800AC794 0DDC020C */  jal        func_800B7034
    /* 9CF98 800AC798 1000A527 */   addiu     $a1, $sp, 0x10
    /* 9CF9C 800AC79C 0E80053C */  lui        $a1, %hi(D_800E6AF8)
    /* 9CFA0 800AC7A0 F86AA524 */  addiu      $a1, $a1, %lo(D_800E6AF8)
    /* 9CFA4 800AC7A4 F3DB020C */  jal        func_800B6FCC
    /* 9CFA8 800AC7A8 01000434 */   ori       $a0, $zero, 0x1
    /* 9CFAC 800AC7AC 6C008293 */  lbu        $v0, %gp_rel(D_800E6AF8)($gp)
    /* 9CFB0 800AC7B0 00000000 */  nop
    /* 9CFB4 800AC7B4 0C004010 */  beqz       $v0, .L800AC7E8
    /* 9CFB8 800AC7B8 00000000 */   nop
    /* 9CFBC 800AC7BC 640082A3 */  sb         $v0, %gp_rel(D_800E6AF0)($gp)
    /* 9CFC0 800AC7C0 64008293 */  lbu        $v0, %gp_rel(D_800E6AF0)($gp)
    /* 9CFC4 800AC7C4 0E80033C */  lui        $v1, %hi(D_800E6AF9)
    /* 9CFC8 800AC7C8 F96A6390 */  lbu        $v1, %lo(D_800E6AF9)($v1)
    /* 9CFCC 800AC7CC 1000422C */  sltiu      $v0, $v0, 0x10
    /* 9CFD0 800AC7D0 0E80013C */  lui        $at, %hi(D_800E6AF1)
    /* 9CFD4 800AC7D4 F16A23A0 */  sb         $v1, %lo(D_800E6AF1)($at)
    /* 9CFD8 800AC7D8 03004014 */  bnez       $v0, .L800AC7E8
    /* 9CFDC 800AC7DC FF000234 */   ori       $v0, $zero, 0xFF
    /* 9CFE0 800AC7E0 0E80013C */  lui        $at, %hi(D_800E6B58)
    /* 9CFE4 800AC7E4 586B22A4 */  sh         $v0, %lo(D_800E6B58)($at)
  .L800AC7E8:
    /* 9CFE8 800AC7E8 6C008393 */  lbu        $v1, %gp_rel(D_800E6AF8)($gp)
    /* 9CFEC 800AC7EC 00000000 */  nop
    /* 9CFF0 800AC7F0 40006230 */  andi       $v0, $v1, 0x40
    /* 9CFF4 800AC7F4 07004010 */  beqz       $v0, .L800AC814
    /* 9CFF8 800AC7F8 20006230 */   andi      $v0, $v1, 0x20
    /* 9CFFC 800AC7FC 74008293 */  lbu        $v0, %gp_rel(D_800E6B00)($gp)
    /* 9D000 800AC800 00000000 */  nop
    /* 9D004 800AC804 01004224 */  addiu      $v0, $v0, 0x1
    /* 9D008 800AC808 740082A3 */  sb         $v0, %gp_rel(D_800E6B00)($gp)
    /* 9D00C 800AC80C 0AB20208 */  j          .L800AC828
    /* 9D010 800AC810 00000000 */   nop
  .L800AC814:
    /* 9D014 800AC814 04004010 */  beqz       $v0, .L800AC828
    /* 9D018 800AC818 00000000 */   nop
    /* 9D01C 800AC81C 740080A3 */  sb         $zero, %gp_rel(D_800E6B00)($gp)
    /* 9D020 800AC820 200080AF */  sw         $zero, %gp_rel(D_800E6AAC)($gp)
    /* 9D024 800AC824 240080AF */  sw         $zero, %gp_rel(D_800E6AB0)($gp)
  .L800AC828:
    /* 9D028 800AC828 74008293 */  lbu        $v0, %gp_rel(D_800E6B00)($gp)
    /* 9D02C 800AC82C 00000000 */  nop
    /* 9D030 800AC830 2E00422C */  sltiu      $v0, $v0, 0x2E
    /* 9D034 800AC834 0D004014 */  bnez       $v0, .L800AC86C
    /* 9D038 800AC838 03000234 */   ori       $v0, $zero, 0x3
    /* 9D03C 800AC83C C0008387 */  lh         $v1, %gp_rel(D_800E6B4C)($gp)
    /* 9D040 800AC840 00000000 */  nop
    /* 9D044 800AC844 05006214 */  bne        $v1, $v0, .L800AC85C
    /* 9D048 800AC848 5A000234 */   ori       $v0, $zero, 0x5A
    /* 9D04C 800AC84C C00082A7 */  sh         $v0, %gp_rel(D_800E6B4C)($gp)
    /* 9D050 800AC850 240080AF */  sw         $zero, %gp_rel(D_800E6AB0)($gp)
    /* 9D054 800AC854 1BB20208 */  j          .L800AC86C
    /* 9D058 800AC858 00000000 */   nop
  .L800AC85C:
    /* 9D05C 800AC85C C00080A7 */  sh         $zero, %gp_rel(D_800E6B4C)($gp)
    /* 9D060 800AC860 740080A3 */  sb         $zero, %gp_rel(D_800E6B00)($gp)
    /* 9D064 800AC864 1DB0020C */  jal        func_800AC074
    /* 9D068 800AC868 00000000 */   nop
  .L800AC86C:
    /* 9D06C 800AC86C 4C018293 */  lbu        $v0, %gp_rel(D_800E6BD8)($gp)
    /* 9D070 800AC870 01000334 */  ori        $v1, $zero, 0x1
    /* 9D074 800AC874 05004310 */  beq        $v0, $v1, .L800AC88C
    /* 9D078 800AC878 00000000 */   nop
    /* 9D07C 800AC87C 2E008293 */  lbu        $v0, %gp_rel(D_800E6ABA)($gp)
    /* 9D080 800AC880 00000000 */  nop
    /* 9D084 800AC884 21004314 */  bne        $v0, $v1, .L800AC90C
    /* 9D088 800AC888 00000000 */   nop
  .L800AC88C:
    /* 9D08C 800AC88C C0008387 */  lh         $v1, %gp_rel(D_800E6B4C)($gp)
    /* 9D090 800AC890 04000234 */  ori        $v0, $zero, 0x4
    /* 9D094 800AC894 1F006210 */  beq        $v1, $v0, .L800AC914
    /* 9D098 800AC898 01000534 */   ori       $a1, $zero, 0x1
    /* 9D09C 800AC89C 4A008297 */  lhu        $v0, %gp_rel(D_800E6AD6)($gp)
    /* 9D0A0 800AC8A0 00000000 */  nop
    /* 9D0A4 800AC8A4 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* 9D0A8 800AC8A8 4A0082A7 */  sh         $v0, %gp_rel(D_800E6AD6)($gp)
    /* 9D0AC 800AC8AC 00140200 */  sll        $v0, $v0, 16
    /* 9D0B0 800AC8B0 0700401C */  bgtz       $v0, .L800AC8D0
    /* 9D0B4 800AC8B4 00000000 */   nop
    /* 9D0B8 800AC8B8 4A0080A7 */  sh         $zero, %gp_rel(D_800E6AD6)($gp)
    /* 9D0BC 800AC8BC 2E0080A3 */  sb         $zero, %gp_rel(D_800E6ABA)($gp)
    /* 9D0C0 800AC8C0 240080AF */  sw         $zero, %gp_rel(D_800E6AB0)($gp)
    /* 9D0C4 800AC8C4 C00080A7 */  sh         $zero, %gp_rel(D_800E6B4C)($gp)
    /* 9D0C8 800AC8C8 7AA5020C */  jal        func_800A95E8
    /* 9D0CC 800AC8CC 00000000 */   nop
  .L800AC8D0:
    /* 9D0D0 800AC8D0 4A008297 */  lhu        $v0, %gp_rel(D_800E6AD6)($gp)
    /* 9D0D4 800AC8D4 E0008487 */  lh         $a0, %gp_rel(D_800E6B6C)($gp)
    /* 9D0D8 800AC8D8 001C0200 */  sll        $v1, $v0, 16
    /* 9D0DC 800AC8DC 031C0300 */  sra        $v1, $v1, 16
    /* 9D0E0 800AC8E0 18006400 */  mult       $v1, $a0
    /* 9D0E4 800AC8E4 500082A7 */  sh         $v0, %gp_rel(D_800E6ADC)($gp)
    /* 9D0E8 800AC8E8 12180000 */  mflo       $v1
    /* 9D0EC 800AC8EC 02006104 */  bgez       $v1, .L800AC8F8
    /* 9D0F0 800AC8F0 21106000 */   addu      $v0, $v1, $zero
    /* 9D0F4 800AC8F4 7F006224 */  addiu      $v0, $v1, 0x7F
  .L800AC8F8:
    /* 9D0F8 800AC8F8 40120200 */  sll        $v0, $v0, 9
    /* 9D0FC 800AC8FC 032C0200 */  sra        $a1, $v0, 16
    /* 9D100 800AC900 21200000 */  addu       $a0, $zero, $zero
    /* 9D104 800AC904 16F3020C */  jal        func_800BCC58
    /* 9D108 800AC908 2130A000 */   addu      $a2, $a1, $zero
  .L800AC90C:
    /* 9D10C 800AC90C C0008387 */  lh         $v1, %gp_rel(D_800E6B4C)($gp)
    /* 9D110 800AC910 01000534 */  ori        $a1, $zero, 0x1
  .L800AC914:
    /* 9D114 800AC914 10006514 */  bne        $v1, $a1, .L800AC958
    /* 9D118 800AC918 03000234 */   ori       $v0, $zero, 0x3
    /* 9D11C 800AC91C 2800838F */  lw         $v1, %gp_rel(D_800E6AB4)($gp)
    /* 9D120 800AC920 2000828F */  lw         $v0, %gp_rel(D_800E6AAC)($gp)
    /* 9D124 800AC924 00000000 */  nop
    /* 9D128 800AC928 2A104300 */  slt        $v0, $v0, $v1
    /* 9D12C 800AC92C D0004014 */  bnez       $v0, .L800ACC70
    /* 9D130 800AC930 00000000 */   nop
    /* 9D134 800AC934 4C018293 */  lbu        $v0, %gp_rel(D_800E6BD8)($gp)
    /* 9D138 800AC938 00000000 */  nop
    /* 9D13C 800AC93C CC004014 */  bnez       $v0, .L800ACC70
    /* 9D140 800AC940 00000000 */   nop
    /* 9D144 800AC944 C00080A7 */  sh         $zero, %gp_rel(D_800E6B4C)($gp)
  .L800AC948:
    /* 9D148 800AC948 1DB0020C */  jal        func_800AC074
    /* 9D14C 800AC94C 00000000 */   nop
    /* 9D150 800AC950 1CB30208 */  j          .L800ACC70
    /* 9D154 800AC954 00000000 */   nop
  .L800AC958:
    /* 9D158 800AC958 C5006214 */  bne        $v1, $v0, .L800ACC70
    /* 9D15C 800AC95C 00000000 */   nop
    /* 9D160 800AC960 2800838F */  lw         $v1, %gp_rel(D_800E6AB4)($gp)
    /* 9D164 800AC964 2000828F */  lw         $v0, %gp_rel(D_800E6AAC)($gp)
    /* 9D168 800AC968 00000000 */  nop
    /* 9D16C 800AC96C 2A104300 */  slt        $v0, $v0, $v1
    /* 9D170 800AC970 BF004014 */  bnez       $v0, .L800ACC70
    /* 9D174 800AC974 00000000 */   nop
    /* 9D178 800AC978 EA008497 */  lhu        $a0, %gp_rel(D_800E6B76)($gp)
    /* 9D17C 800AC97C C00080A7 */  sh         $zero, %gp_rel(D_800E6B4C)($gp)
    /* 9D180 800AC980 0E80013C */  lui        $at, %hi(D_800E6B58)
    /* 9D184 800AC984 586B20A4 */  sh         $zero, %lo(D_800E6B58)($at)
    /* 9D188 800AC988 00FD8224 */  addiu      $v0, $a0, -0x300
    /* 9D18C 800AC98C 40180200 */  sll        $v1, $v0, 1
    /* 9D190 800AC990 21186200 */  addu       $v1, $v1, $v0
    /* 9D194 800AC994 80180300 */  sll        $v1, $v1, 2
    /* 9D198 800AC998 0D80013C */  lui        $at, %hi(D_800CE9D0 + 0x1)
    /* 9D19C 800AC99C D1E92124 */  addiu      $at, $at, %lo(D_800CE9D0 + 0x1)
    /* 9D1A0 800AC9A0 21082300 */  addu       $at, $at, $v1
    /* 9D1A4 800AC9A4 00002290 */  lbu        $v0, 0x0($at)
    /* 9D1A8 800AC9A8 00000000 */  nop
    /* 9D1AC 800AC9AC A6004014 */  bnez       $v0, .L800ACC48
    /* 9D1B0 800AC9B0 00000000 */   nop
    /* 9D1B4 800AC9B4 240085AF */  sw         $a1, %gp_rel(D_800E6AB0)($gp)
    /* 9D1B8 800AC9B8 58B0020C */  jal        func_800AC160
    /* 9D1BC 800AC9BC 00000000 */   nop
    /* 9D1C0 800AC9C0 1CB30208 */  j          .L800ACC70
    /* 9D1C4 800AC9C4 00000000 */   nop
  jlabel .L800AC9C8
    /* 9D1C8 800AC9C8 01000434 */  ori        $a0, $zero, 0x1
    /* 9D1CC 800AC9CC F3DB020C */  jal        func_800B6FCC
    /* 9D1D0 800AC9D0 21280000 */   addu      $a1, $zero, $zero
    /* 9D1D4 800AC9D4 02000334 */  ori        $v1, $zero, 0x2
    /* 9D1D8 800AC9D8 2C004314 */  bne        $v0, $v1, .L800ACA8C
    /* 9D1DC 800AC9DC 00000000 */   nop
    /* 9D1E0 800AC9E0 7AA5020C */  jal        func_800A95E8
    /* 9D1E4 800AC9E4 00000000 */   nop
    /* 9D1E8 800AC9E8 07000234 */  ori        $v0, $zero, 0x7
    /* 9D1EC 800AC9EC C00082A7 */  sh         $v0, %gp_rel(D_800E6B4C)($gp)
    /* 9D1F0 800AC9F0 1CB30208 */  j          .L800ACC70
    /* 9D1F4 800AC9F4 00000000 */   nop
  jlabel .L800AC9F8
    /* 9D1F8 800AC9F8 01000434 */  ori        $a0, $zero, 0x1
    /* 9D1FC 800AC9FC F3DB020C */  jal        func_800B6FCC
    /* 9D200 800ACA00 21280000 */   addu      $a1, $zero, $zero
    /* 9D204 800ACA04 02000334 */  ori        $v1, $zero, 0x2
    /* 9D208 800ACA08 CFFF4310 */  beq        $v0, $v1, .L800AC948
    /* 9D20C 800ACA0C 00000000 */   nop
    /* 9D210 800ACA10 A3B20208 */  j          .L800ACA8C
    /* 9D214 800ACA14 00000000 */   nop
  jlabel .L800ACA18
    /* 9D218 800ACA18 01000434 */  ori        $a0, $zero, 0x1
    /* 9D21C 800ACA1C F3DB020C */  jal        func_800B6FCC
    /* 9D220 800ACA20 21280000 */   addu      $a1, $zero, $zero
    /* 9D224 800ACA24 02000334 */  ori        $v1, $zero, 0x2
    /* 9D228 800ACA28 18004314 */  bne        $v0, $v1, .L800ACA8C
    /* 9D22C 800ACA2C 00000000 */   nop
    /* 9D230 800ACA30 740080A3 */  sb         $zero, %gp_rel(D_800E6B00)($gp)
    /* 9D234 800ACA34 70A5020C */  jal        func_800A95C0
    /* 9D238 800ACA38 00000000 */   nop
    /* 9D23C 800ACA3C 28000234 */  ori        $v0, $zero, 0x28
    /* 9D240 800ACA40 C00082A7 */  sh         $v0, %gp_rel(D_800E6B4C)($gp)
    /* 9D244 800ACA44 1CB30208 */  j          .L800ACC70
    /* 9D248 800ACA48 00000000 */   nop
  jlabel .L800ACA4C
    /* 9D24C 800ACA4C 01000434 */  ori        $a0, $zero, 0x1
    /* 9D250 800ACA50 F3DB020C */  jal        func_800B6FCC
    /* 9D254 800ACA54 21280000 */   addu      $a1, $zero, $zero
    /* 9D258 800ACA58 02000334 */  ori        $v1, $zero, 0x2
    /* 9D25C 800ACA5C 0B004314 */  bne        $v0, $v1, .L800ACA8C
    /* 9D260 800ACA60 00000000 */   nop
    /* 9D264 800ACA64 5AA5020C */  jal        func_800A9568
    /* 9D268 800ACA68 00000000 */   nop
    /* 9D26C 800ACA6C 4A008287 */  lh         $v0, %gp_rel(D_800E6AD6)($gp)
    /* 9D270 800ACA70 E0008487 */  lh         $a0, %gp_rel(D_800E6B6C)($gp)
    /* 9D274 800ACA74 00000000 */  nop
    /* 9D278 800ACA78 18004400 */  mult       $v0, $a0
    /* 9D27C 800ACA7C 03000234 */  ori        $v0, $zero, 0x3
    /* 9D280 800ACA80 C00082A7 */  sh         $v0, %gp_rel(D_800E6B4C)($gp)
    /* 9D284 800ACA84 F0B20208 */  j          .L800ACBC0
    /* 9D288 800ACA88 00000000 */   nop
  .L800ACA8C:
    /* 9D28C 800ACA8C 42B3020C */  jal        func_800ACD08
    /* 9D290 800ACA90 00000000 */   nop
    /* 9D294 800ACA94 1CB30208 */  j          .L800ACC70
    /* 9D298 800ACA98 00000000 */   nop
  jlabel .L800ACA9C
    /* 9D29C 800ACA9C 4A008297 */  lhu        $v0, %gp_rel(D_800E6AD6)($gp)
    /* 9D2A0 800ACAA0 00000000 */  nop
    /* 9D2A4 800ACAA4 F4FF4224 */  addiu      $v0, $v0, -0xC
    /* 9D2A8 800ACAA8 21204000 */  addu       $a0, $v0, $zero
    /* 9D2AC 800ACAAC 4A0082A7 */  sh         $v0, %gp_rel(D_800E6AD6)($gp)
    /* 9D2B0 800ACAB0 00140200 */  sll        $v0, $v0, 16
    /* 9D2B4 800ACAB4 031C0200 */  sra        $v1, $v0, 16
    /* 9D2B8 800ACAB8 0D006228 */  slti       $v0, $v1, 0xD
    /* 9D2BC 800ACABC 15004010 */  beqz       $v0, .L800ACB14
    /* 9D2C0 800ACAC0 00000000 */   nop
    /* 9D2C4 800ACAC4 01000434 */  ori        $a0, $zero, 0x1
    /* 9D2C8 800ACAC8 500080A7 */  sh         $zero, %gp_rel(D_800E6ADC)($gp)
    /* 9D2CC 800ACACC 4A0080A7 */  sh         $zero, %gp_rel(D_800E6AD6)($gp)
    /* 9D2D0 800ACAD0 F3DB020C */  jal        func_800B6FCC
    /* 9D2D4 800ACAD4 21280000 */   addu      $a1, $zero, $zero
    /* 9D2D8 800ACAD8 02000334 */  ori        $v1, $zero, 0x2
    /* 9D2DC 800ACADC 09004314 */  bne        $v0, $v1, .L800ACB04
    /* 9D2E0 800ACAE0 00000000 */   nop
    /* 9D2E4 800ACAE4 7AA5020C */  jal        func_800A95E8
    /* 9D2E8 800ACAE8 00000000 */   nop
    /* 9D2EC 800ACAEC C0008297 */  lhu        $v0, %gp_rel(D_800E6B4C)($gp)
    /* 9D2F0 800ACAF0 00000000 */  nop
    /* 9D2F4 800ACAF4 01004224 */  addiu      $v0, $v0, 0x1
    /* 9D2F8 800ACAF8 C00082A7 */  sh         $v0, %gp_rel(D_800E6B4C)($gp)
    /* 9D2FC 800ACAFC 1CB30208 */  j          .L800ACC70
    /* 9D300 800ACB00 00000000 */   nop
  .L800ACB04:
    /* 9D304 800ACB04 20B3020C */  jal        func_800ACC80
    /* 9D308 800ACB08 00000000 */   nop
    /* 9D30C 800ACB0C 1CB30208 */  j          .L800ACC70
    /* 9D310 800ACB10 00000000 */   nop
  .L800ACB14:
    /* 9D314 800ACB14 E0008287 */  lh         $v0, %gp_rel(D_800E6B6C)($gp)
    /* 9D318 800ACB18 00000000 */  nop
    /* 9D31C 800ACB1C 18006200 */  mult       $v1, $v0
    /* 9D320 800ACB20 500084A7 */  sh         $a0, %gp_rel(D_800E6ADC)($gp)
  .L800ACB24:
    /* 9D324 800ACB24 12180000 */  mflo       $v1
    /* 9D328 800ACB28 02006104 */  bgez       $v1, .L800ACB34
    /* 9D32C 800ACB2C 21106000 */   addu      $v0, $v1, $zero
    /* 9D330 800ACB30 7F006224 */  addiu      $v0, $v1, 0x7F
  .L800ACB34:
    /* 9D334 800ACB34 40120200 */  sll        $v0, $v0, 9
    /* 9D338 800ACB38 032C0200 */  sra        $a1, $v0, 16
    /* 9D33C 800ACB3C 21200000 */  addu       $a0, $zero, $zero
    /* 9D340 800ACB40 16F3020C */  jal        func_800BCC58
    /* 9D344 800ACB44 2130A000 */   addu      $a2, $a1, $zero
    /* 9D348 800ACB48 1CB30208 */  j          .L800ACC70
    /* 9D34C 800ACB4C 00000000 */   nop
  jlabel .L800ACB50
    /* 9D350 800ACB50 4A008297 */  lhu        $v0, %gp_rel(D_800E6AD6)($gp)
    /* 9D354 800ACB54 00000000 */  nop
    /* 9D358 800ACB58 0C004224 */  addiu      $v0, $v0, 0xC
    /* 9D35C 800ACB5C 21184000 */  addu       $v1, $v0, $zero
    /* 9D360 800ACB60 4A0082A7 */  sh         $v0, %gp_rel(D_800E6AD6)($gp)
    /* 9D364 800ACB64 00140200 */  sll        $v0, $v0, 16
    /* 9D368 800ACB68 03140200 */  sra        $v0, $v0, 16
    /* 9D36C 800ACB6C 75004228 */  slti       $v0, $v0, 0x75
    /* 9D370 800ACB70 0E004014 */  bnez       $v0, .L800ACBAC
    /* 9D374 800ACB74 75000234 */   ori       $v0, $zero, 0x75
    /* 9D378 800ACB78 C0008387 */  lh         $v1, %gp_rel(D_800E6B4C)($gp)
    /* 9D37C 800ACB7C 500082A7 */  sh         $v0, %gp_rel(D_800E6ADC)($gp)
    /* 9D380 800ACB80 4A0082A7 */  sh         $v0, %gp_rel(D_800E6AD6)($gp)
    /* 9D384 800ACB84 3E000234 */  ori        $v0, $zero, 0x3E
    /* 9D388 800ACB88 05006214 */  bne        $v1, $v0, .L800ACBA0
    /* 9D38C 800ACB8C 04000234 */   ori       $v0, $zero, 0x4
    /* 9D390 800ACB90 03000234 */  ori        $v0, $zero, 0x3
    /* 9D394 800ACB94 C00082A7 */  sh         $v0, %gp_rel(D_800E6B4C)($gp)
    /* 9D398 800ACB98 ECB20208 */  j          .L800ACBB0
    /* 9D39C 800ACB9C 00000000 */   nop
  .L800ACBA0:
    /* 9D3A0 800ACBA0 C00082A7 */  sh         $v0, %gp_rel(D_800E6B4C)($gp)
    /* 9D3A4 800ACBA4 ECB20208 */  j          .L800ACBB0
    /* 9D3A8 800ACBA8 00000000 */   nop
  .L800ACBAC:
    /* 9D3AC 800ACBAC 500083A7 */  sh         $v1, %gp_rel(D_800E6ADC)($gp)
  .L800ACBB0:
    /* 9D3B0 800ACBB0 4A008287 */  lh         $v0, %gp_rel(D_800E6AD6)($gp)
    /* 9D3B4 800ACBB4 E0008487 */  lh         $a0, %gp_rel(D_800E6B6C)($gp)
    /* 9D3B8 800ACBB8 00000000 */  nop
    /* 9D3BC 800ACBBC 18004400 */  mult       $v0, $a0
  .L800ACBC0:
    /* 9D3C0 800ACBC0 12180000 */  mflo       $v1
    /* 9D3C4 800ACBC4 02006104 */  bgez       $v1, .L800ACBD0
    /* 9D3C8 800ACBC8 00000000 */   nop
    /* 9D3CC 800ACBCC 7F006324 */  addiu      $v1, $v1, 0x7F
  .L800ACBD0:
    /* 9D3D0 800ACBD0 50008287 */  lh         $v0, %gp_rel(D_800E6ADC)($gp)
    /* 9D3D4 800ACBD4 00000000 */  nop
    /* 9D3D8 800ACBD8 18004400 */  mult       $v0, $a0
    /* 9D3DC 800ACBDC 40120300 */  sll        $v0, $v1, 9
    /* 9D3E0 800ACBE0 12300000 */  mflo       $a2
    /* 9D3E4 800ACBE4 0200C104 */  bgez       $a2, .L800ACBF0
    /* 9D3E8 800ACBE8 032C0200 */   sra       $a1, $v0, 16
    /* 9D3EC 800ACBEC 7F00C624 */  addiu      $a2, $a2, 0x7F
  .L800ACBF0:
    /* 9D3F0 800ACBF0 21200000 */  addu       $a0, $zero, $zero
    /* 9D3F4 800ACBF4 40320600 */  sll        $a2, $a2, 9
    /* 9D3F8 800ACBF8 16F3020C */  jal        func_800BCC58
    /* 9D3FC 800ACBFC 03340600 */   sra       $a2, $a2, 16
    /* 9D400 800ACC00 1CB30208 */  j          .L800ACC70
    /* 9D404 800ACC04 00000000 */   nop
  jlabel .L800ACC08
    /* 9D408 800ACC08 01000434 */  ori        $a0, $zero, 0x1
    /* 9D40C 800ACC0C F3DB020C */  jal        func_800B6FCC
    /* 9D410 800ACC10 21280000 */   addu      $a1, $zero, $zero
    /* 9D414 800ACC14 02000334 */  ori        $v1, $zero, 0x2
    /* 9D418 800ACC18 15004314 */  bne        $v0, $v1, .L800ACC70
    /* 9D41C 800ACC1C 00000000 */   nop
    /* 9D420 800ACC20 0DAF020C */  jal        func_800ABC34
    /* 9D424 800ACC24 00000000 */   nop
    /* 9D428 800ACC28 C0008387 */  lh         $v1, %gp_rel(D_800E6B4C)($gp)
    /* 9D42C 800ACC2C 45000234 */  ori        $v0, $zero, 0x45
    /* 9D430 800ACC30 0F006214 */  bne        $v1, $v0, .L800ACC70
    /* 9D434 800ACC34 00000000 */   nop
    /* 9D438 800ACC38 47000234 */  ori        $v0, $zero, 0x47
    /* 9D43C 800ACC3C C00082A7 */  sh         $v0, %gp_rel(D_800E6B4C)($gp)
    /* 9D440 800ACC40 1CB30208 */  j          .L800ACC70
    /* 9D444 800ACC44 00000000 */   nop
  jlabel .L800ACC48
    /* 9D448 800ACC48 7AA5020C */  jal        func_800A95E8
    /* 9D44C 800ACC4C 00000000 */   nop
    /* 9D450 800ACC50 1CB30208 */  j          .L800ACC70
    /* 9D454 800ACC54 00000000 */   nop
  jlabel .L800ACC58
    /* 9D458 800ACC58 B6AA020C */  jal        func_800AAAD8
    /* 9D45C 800ACC5C 00000000 */   nop
    /* 9D460 800ACC60 1CB30208 */  j          .L800ACC70
    /* 9D464 800ACC64 00000000 */   nop
  jlabel .L800ACC68
    /* 9D468 800ACC68 02000234 */  ori        $v0, $zero, 0x2
    /* 9D46C 800ACC6C 240082AF */  sw         $v0, %gp_rel(D_800E6AB0)($gp)
  jlabel .L800ACC70
    /* 9D470 800ACC70 3000BF8F */  lw         $ra, 0x30($sp)
    /* 9D474 800ACC74 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 9D478 800ACC78 0800E003 */  jr         $ra
    /* 9D47C 800ACC7C 00000000 */   nop
endlabel func_800AC27C
