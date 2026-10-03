nonmatching func_8001CA00, 0x3AC

glabel func_8001CA00
    /* D200 8001CA00 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* D204 8001CA04 2800B2AF */  sw         $s2, 0x28($sp)
    /* D208 8001CA08 801F123C */  lui        $s2, (0x1F8002A4 >> 16)
    /* D20C 8001CA0C 4000BEAF */  sw         $fp, 0x40($sp)
    /* D210 8001CA10 10801E3C */  lui        $fp, %hi(D_800FF748)
    /* D214 8001CA14 48F7DE27 */  addiu      $fp, $fp, %lo(D_800FF748)
    /* D218 8001CA18 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* D21C 8001CA1C D066D327 */  addiu      $s3, $fp, 0x66D0
    /* D220 8001CA20 3C00B7AF */  sw         $s7, 0x3C($sp)
    /* D224 8001CA24 21B80000 */  addu       $s7, $zero, $zero
    /* D228 8001CA28 3000B4AF */  sw         $s4, 0x30($sp)
    /* D22C 8001CA2C 0E001424 */  addiu      $s4, $zero, 0xE
    /* D230 8001CA30 3800B6AF */  sw         $s6, 0x38($sp)
    /* D234 8001CA34 1080163C */  lui        $s6, %hi(D_800FB580)
    /* D238 8001CA38 80B5D626 */  addiu      $s6, $s6, %lo(D_800FB580)
    /* D23C 8001CA3C 3400B5AF */  sw         $s5, 0x34($sp)
    /* D240 8001CA40 0F80153C */  lui        $s5, %hi(D_800F1018)
    /* D244 8001CA44 1810B526 */  addiu      $s5, $s5, %lo(D_800F1018)
    /* D248 8001CA48 2400B1AF */  sw         $s1, 0x24($sp)
    /* D24C 8001CA4C 5067D127 */  addiu      $s1, $fp, 0x6750
    /* D250 8001CA50 4400BFAF */  sw         $ra, 0x44($sp)
    /* D254 8001CA54 2000B0AF */  sw         $s0, 0x20($sp)
  .L8001CA58:
    /* D258 8001CA58 00006292 */  lbu        $v0, 0x0($s3)
    /* D25C 8001CA5C 00000000 */  nop
    /* D260 8001CA60 C0004010 */  beqz       $v0, .L8001CD64
    /* D264 8001CA64 00000000 */   nop
    /* D268 8001CA68 0D002292 */  lbu        $v0, 0xD($s1)
    /* D26C 8001CA6C 00000000 */  nop
    /* D270 8001CA70 BC004014 */  bnez       $v0, .L8001CD64
    /* D274 8001CA74 2C006426 */   addiu     $a0, $s3, 0x2C
    /* D278 8001CA78 04015026 */  addiu      $s0, $s2, %lo(D_1F800104)
    /* D27C 8001CA7C 21280002 */  addu       $a1, $s0, $zero
    /* D280 8001CA80 9EDA020C */  jal        func_800B6A78
    /* D284 8001CA84 ACFF20AE */   sw        $zero, -0x54($s1)
    /* D288 8001CA88 85D2020C */  jal        func_800B4A14
    /* D28C 8001CA8C 21200002 */   addu      $a0, $s0, $zero
    /* D290 8001CA90 00006292 */  lbu        $v0, 0x0($s3)
    /* D294 8001CA94 00000000 */  nop
    /* D298 8001CA98 FFFF4324 */  addiu      $v1, $v0, -0x1
    /* D29C 8001CA9C 1F00622C */  sltiu      $v0, $v1, 0x1F
    /* D2A0 8001CAA0 B0004010 */  beqz       $v0, .L8001CD64
    /* D2A4 8001CAA4 80100300 */   sll       $v0, $v1, 2
    /* D2A8 8001CAA8 0180013C */  lui        $at, %hi(jtbl_8001055C)
    /* D2AC 8001CAAC 21082200 */  addu       $at, $at, $v0
    /* D2B0 8001CAB0 5C05228C */  lw         $v0, %lo(jtbl_8001055C)($at)
    /* D2B4 8001CAB4 00000000 */  nop
    /* D2B8 8001CAB8 08004000 */  jr         $v0
    /* D2BC 8001CABC 00000000 */   nop
  jlabel .L8001CAC0
    /* D2C0 8001CAC0 A402478E */  lw         $a3, (0x1F8002A4 & 0xFFFF)($s2)
    /* D2C4 8001CAC4 0800228E */  lw         $v0, 0x8($s1)
    /* D2C8 8001CAC8 9D024392 */  lbu        $v1, (0x1F80029D & 0xFFFF)($s2)
    /* D2CC 8001CACC 1400B4AF */  sw         $s4, 0x14($sp)
    /* D2D0 8001CAD0 1000A2AF */  sw         $v0, 0x10($sp)
    /* D2D4 8001CAD4 80100300 */  sll        $v0, $v1, 2
    /* D2D8 8001CAD8 21104300 */  addu       $v0, $v0, $v1
    /* D2DC 8001CADC 80100200 */  sll        $v0, $v0, 2
    /* D2E0 8001CAE0 52730008 */  j          .L8001CD48
    /* D2E4 8001CAE4 21105600 */   addu      $v0, $v0, $s6
  jlabel .L8001CAE8
    /* D2E8 8001CAE8 E8014292 */  lbu        $v0, 0x1E8($s2)
    /* D2EC 8001CAEC 00000000 */  nop
    /* D2F0 8001CAF0 1E004010 */  beqz       $v0, .L8001CB6C
    /* D2F4 8001CAF4 00000000 */   nop
    /* D2F8 8001CAF8 F401428E */  lw         $v0, 0x1F4($s2)
    /* D2FC 8001CAFC 00000000 */  nop
    /* D300 8001CB00 C1F74228 */  slti       $v0, $v0, -0x83F
    /* D304 8001CB04 19004014 */  bnez       $v0, .L8001CB6C
    /* D308 8001CB08 00000000 */   nop
    /* D30C 8001CB0C F001428E */  lw         $v0, 0x1F0($s2)
    /* D310 8001CB10 00000000 */  nop
    /* D314 8001CB14 01F34228 */  slti       $v0, $v0, -0xCFF
    /* D318 8001CB18 14004014 */  bnez       $v0, .L8001CB6C
    /* D31C 8001CB1C 00000000 */   nop
    /* D320 8001CB20 A402478E */  lw         $a3, 0x2A4($s2)
    /* D324 8001CB24 0800238E */  lw         $v1, 0x8($s1)
    /* D328 8001CB28 1400B4AF */  sw         $s4, 0x14($sp)
    /* D32C 8001CB2C 9D024492 */  lbu        $a0, 0x29D($s2)
    /* D330 8001CB30 F070C227 */  addiu      $v0, $fp, 0x70F0
    /* D334 8001CB34 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* D338 8001CB38 80100400 */  sll        $v0, $a0, 2
    /* D33C 8001CB3C 21104400 */  addu       $v0, $v0, $a0
    /* D340 8001CB40 80100200 */  sll        $v0, $v0, 2
    /* D344 8001CB44 21105600 */  addu       $v0, $v0, $s6
    /* D348 8001CB48 1000A3AF */  sw         $v1, 0x10($sp)
    /* D34C 8001CB4C 1800A2AF */  sw         $v0, 0x18($sp)
    /* D350 8001CB50 0400248E */  lw         $a0, 0x4($s1)
    /* D354 8001CB54 FCFF258E */  lw         $a1, -0x4($s1)
    /* D358 8001CB58 0000268E */  lw         $a2, 0x0($s1)
    /* D35C 8001CB5C 0ACB020C */  jal        func_800B2C28
    /* D360 8001CB60 00000000 */   nop
    /* D364 8001CB64 59730008 */  j          .L8001CD64
    /* D368 8001CB68 A40242AE */   sw        $v0, 0x2A4($s2)
  .L8001CB6C:
    /* D36C 8001CB6C A402478E */  lw         $a3, 0x2A4($s2)
    /* D370 8001CB70 0800228E */  lw         $v0, 0x8($s1)
    /* D374 8001CB74 9D024392 */  lbu        $v1, 0x29D($s2)
    /* D378 8001CB78 1400B4AF */  sw         $s4, 0x14($sp)
    /* D37C 8001CB7C 1000A2AF */  sw         $v0, 0x10($sp)
    /* D380 8001CB80 80100300 */  sll        $v0, $v1, 2
    /* D384 8001CB84 21104300 */  addu       $v0, $v0, $v1
    /* D388 8001CB88 80100200 */  sll        $v0, $v0, 2
    /* D38C 8001CB8C 52730008 */  j          .L8001CD48
    /* D390 8001CB90 21105600 */   addu      $v0, $v0, $s6
  jlabel .L8001CB94
    /* D394 8001CB94 E8014292 */  lbu        $v0, 0x1E8($s2)
    /* D398 8001CB98 00000000 */  nop
    /* D39C 8001CB9C 1E004010 */  beqz       $v0, .L8001CC18
    /* D3A0 8001CBA0 00000000 */   nop
    /* D3A4 8001CBA4 F401428E */  lw         $v0, 0x1F4($s2)
    /* D3A8 8001CBA8 00000000 */  nop
    /* D3AC 8001CBAC C1F74228 */  slti       $v0, $v0, -0x83F
    /* D3B0 8001CBB0 19004014 */  bnez       $v0, .L8001CC18
    /* D3B4 8001CBB4 00000000 */   nop
    /* D3B8 8001CBB8 F001428E */  lw         $v0, 0x1F0($s2)
    /* D3BC 8001CBBC 00000000 */  nop
    /* D3C0 8001CBC0 000D4228 */  slti       $v0, $v0, 0xD00
    /* D3C4 8001CBC4 14004010 */  beqz       $v0, .L8001CC18
    /* D3C8 8001CBC8 00000000 */   nop
    /* D3CC 8001CBCC A402478E */  lw         $a3, 0x2A4($s2)
    /* D3D0 8001CBD0 0800238E */  lw         $v1, 0x8($s1)
    /* D3D4 8001CBD4 1400B4AF */  sw         $s4, 0x14($sp)
    /* D3D8 8001CBD8 9D024492 */  lbu        $a0, 0x29D($s2)
    /* D3DC 8001CBDC F070C227 */  addiu      $v0, $fp, 0x70F0
    /* D3E0 8001CBE0 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* D3E4 8001CBE4 80100400 */  sll        $v0, $a0, 2
    /* D3E8 8001CBE8 21104400 */  addu       $v0, $v0, $a0
    /* D3EC 8001CBEC 80100200 */  sll        $v0, $v0, 2
    /* D3F0 8001CBF0 21105600 */  addu       $v0, $v0, $s6
    /* D3F4 8001CBF4 1000A3AF */  sw         $v1, 0x10($sp)
    /* D3F8 8001CBF8 1800A2AF */  sw         $v0, 0x18($sp)
    /* D3FC 8001CBFC 0400248E */  lw         $a0, 0x4($s1)
    /* D400 8001CC00 FCFF258E */  lw         $a1, -0x4($s1)
    /* D404 8001CC04 0000268E */  lw         $a2, 0x0($s1)
    /* D408 8001CC08 0ACB020C */  jal        func_800B2C28
    /* D40C 8001CC0C 00000000 */   nop
    /* D410 8001CC10 59730008 */  j          .L8001CD64
    /* D414 8001CC14 A40242AE */   sw        $v0, 0x2A4($s2)
  .L8001CC18:
    /* D418 8001CC18 A402478E */  lw         $a3, 0x2A4($s2)
    /* D41C 8001CC1C 0800228E */  lw         $v0, 0x8($s1)
    /* D420 8001CC20 9D024392 */  lbu        $v1, 0x29D($s2)
    /* D424 8001CC24 1400B4AF */  sw         $s4, 0x14($sp)
    /* D428 8001CC28 1000A2AF */  sw         $v0, 0x10($sp)
    /* D42C 8001CC2C 80100300 */  sll        $v0, $v1, 2
    /* D430 8001CC30 21104300 */  addu       $v0, $v0, $v1
    /* D434 8001CC34 80100200 */  sll        $v0, $v0, 2
    /* D438 8001CC38 52730008 */  j          .L8001CD48
    /* D43C 8001CC3C 21105600 */   addu      $v0, $v0, $s6
  jlabel .L8001CC40
    /* D440 8001CC40 0800228E */  lw         $v0, 0x8($s1)
    /* D444 8001CC44 A402478E */  lw         $a3, 0x2A4($s2)
    /* D448 8001CC48 1000A2AF */  sw         $v0, 0x10($sp)
    /* D44C 8001CC4C 0000428E */  lw         $v0, 0x0($s2)
    /* D450 8001CC50 9D024392 */  lbu        $v1, 0x29D($s2)
    /* D454 8001CC54 23108202 */  subu       $v0, $s4, $v0
    /* D458 8001CC58 1400A2AF */  sw         $v0, 0x14($sp)
    /* D45C 8001CC5C 80100300 */  sll        $v0, $v1, 2
    /* D460 8001CC60 21104300 */  addu       $v0, $v0, $v1
    /* D464 8001CC64 80100200 */  sll        $v0, $v0, 2
    /* D468 8001CC68 21105500 */  addu       $v0, $v0, $s5
    /* D46C 8001CC6C 1800A2AF */  sw         $v0, 0x18($sp)
    /* D470 8001CC70 0400248E */  lw         $a0, 0x4($s1)
    /* D474 8001CC74 FCFF258E */  lw         $a1, -0x4($s1)
    /* D478 8001CC78 0000268E */  lw         $a2, 0x0($s1)
    /* D47C 8001CC7C CAC9020C */  jal        func_800B2728
    /* D480 8001CC80 0100F726 */   addiu     $s7, $s7, 0x1
    /* D484 8001CC84 21206002 */  addu       $a0, $s3, $zero
    /* D488 8001CC88 8763020C */  jal        func_80098E1C
    /* D48C 8001CC8C A40242AE */   sw        $v0, 0x2A4($s2)
    /* D490 8001CC90 5B730008 */  j          .L8001CD6C
    /* D494 8001CC94 90003126 */   addiu     $s1, $s1, 0x90
  jlabel .L8001CC98
    /* D498 8001CC98 0800228E */  lw         $v0, 0x8($s1)
    /* D49C 8001CC9C A402478E */  lw         $a3, 0x2A4($s2)
    /* D4A0 8001CCA0 1000A2AF */  sw         $v0, 0x10($sp)
    /* D4A4 8001CCA4 0F000224 */  addiu      $v0, $zero, 0xF
    /* D4A8 8001CCA8 0000438E */  lw         $v1, 0x0($s2)
    /* D4AC 8001CCAC 9D024492 */  lbu        $a0, 0x29D($s2)
    /* D4B0 8001CCB0 23104300 */  subu       $v0, $v0, $v1
    /* D4B4 8001CCB4 1400A2AF */  sw         $v0, 0x14($sp)
    /* D4B8 8001CCB8 80100400 */  sll        $v0, $a0, 2
    /* D4BC 8001CCBC 50730008 */  j          .L8001CD40
    /* D4C0 8001CCC0 21104400 */   addu      $v0, $v0, $a0
  jlabel .L8001CCC4
    /* D4C4 8001CCC4 0800228E */  lw         $v0, 0x8($s1)
    /* D4C8 8001CCC8 A402478E */  lw         $a3, 0x2A4($s2)
    /* D4CC 8001CCCC 1000A2AF */  sw         $v0, 0x10($sp)
    /* D4D0 8001CCD0 0000428E */  lw         $v0, 0x0($s2)
    /* D4D4 8001CCD4 9D024392 */  lbu        $v1, 0x29D($s2)
    /* D4D8 8001CCD8 23108202 */  subu       $v0, $s4, $v0
    /* D4DC 8001CCDC 1400A2AF */  sw         $v0, 0x14($sp)
    /* D4E0 8001CCE0 80100300 */  sll        $v0, $v1, 2
    /* D4E4 8001CCE4 21104300 */  addu       $v0, $v0, $v1
    /* D4E8 8001CCE8 80100200 */  sll        $v0, $v0, 2
    /* D4EC 8001CCEC 21105500 */  addu       $v0, $v0, $s5
    /* D4F0 8001CCF0 1800A2AF */  sw         $v0, 0x18($sp)
    /* D4F4 8001CCF4 0400248E */  lw         $a0, 0x4($s1)
    /* D4F8 8001CCF8 FCFF258E */  lw         $a1, -0x4($s1)
    /* D4FC 8001CCFC 0000268E */  lw         $a2, 0x0($s1)
    /* D500 8001CD00 CAC9020C */  jal        func_800B2728
    /* D504 8001CD04 0100F726 */   addiu     $s7, $s7, 0x1
    /* D508 8001CD08 21206002 */  addu       $a0, $s3, $zero
    /* D50C 8001CD0C 3F6A020C */  jal        func_8009A8FC
    /* D510 8001CD10 A40242AE */   sw        $v0, 0x2A4($s2)
    /* D514 8001CD14 5B730008 */  j          .L8001CD6C
    /* D518 8001CD18 90003126 */   addiu     $s1, $s1, 0x90
  jlabel .L8001CD1C
    /* D51C 8001CD1C 0800228E */  lw         $v0, 0x8($s1)
    /* D520 8001CD20 A402478E */  lw         $a3, 0x2A4($s2)
    /* D524 8001CD24 1000A2AF */  sw         $v0, 0x10($sp)
    /* D528 8001CD28 0000428E */  lw         $v0, 0x0($s2)
    /* D52C 8001CD2C 9D024392 */  lbu        $v1, 0x29D($s2)
    /* D530 8001CD30 23108202 */  subu       $v0, $s4, $v0
    /* D534 8001CD34 1400A2AF */  sw         $v0, 0x14($sp)
    /* D538 8001CD38 80100300 */  sll        $v0, $v1, 2
    /* D53C 8001CD3C 21104300 */  addu       $v0, $v0, $v1
  .L8001CD40:
    /* D540 8001CD40 80100200 */  sll        $v0, $v0, 2
    /* D544 8001CD44 21105500 */  addu       $v0, $v0, $s5
  .L8001CD48:
    /* D548 8001CD48 1800A2AF */  sw         $v0, 0x18($sp)
    /* D54C 8001CD4C 0400248E */  lw         $a0, 0x4($s1)
    /* D550 8001CD50 FCFF258E */  lw         $a1, -0x4($s1)
    /* D554 8001CD54 0000268E */  lw         $a2, 0x0($s1)
    /* D558 8001CD58 CAC9020C */  jal        func_800B2728
    /* D55C 8001CD5C 00000000 */   nop
    /* D560 8001CD60 A40242AE */  sw         $v0, (0x1F8002A4 & 0xFFFF)($s2)
  jlabel .L8001CD64
    /* D564 8001CD64 0100F726 */  addiu      $s7, $s7, 0x1
    /* D568 8001CD68 90003126 */  addiu      $s1, $s1, 0x90
  .L8001CD6C:
    /* D56C 8001CD6C 1200E22A */  slti       $v0, $s7, 0x12
    /* D570 8001CD70 39FF4014 */  bnez       $v0, .L8001CA58
    /* D574 8001CD74 90007326 */   addiu     $s3, $s3, 0x90
    /* D578 8001CD78 4400BF8F */  lw         $ra, 0x44($sp)
    /* D57C 8001CD7C 4000BE8F */  lw         $fp, 0x40($sp)
    /* D580 8001CD80 3C00B78F */  lw         $s7, 0x3C($sp)
    /* D584 8001CD84 3800B68F */  lw         $s6, 0x38($sp)
    /* D588 8001CD88 3400B58F */  lw         $s5, 0x34($sp)
    /* D58C 8001CD8C 3000B48F */  lw         $s4, 0x30($sp)
    /* D590 8001CD90 2C00B38F */  lw         $s3, 0x2C($sp)
    /* D594 8001CD94 2800B28F */  lw         $s2, 0x28($sp)
    /* D598 8001CD98 2400B18F */  lw         $s1, 0x24($sp)
    /* D59C 8001CD9C 2000B08F */  lw         $s0, 0x20($sp)
    /* D5A0 8001CDA0 4800BD27 */  addiu      $sp, $sp, 0x48
    /* D5A4 8001CDA4 0800E003 */  jr         $ra
    /* D5A8 8001CDA8 00000000 */   nop
endlabel func_8001CA00
