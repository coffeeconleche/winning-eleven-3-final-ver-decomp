nonmatching func_8001FA1C, 0x560

glabel func_8001FA1C
    /* 1021C 8001FA1C C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 10220 8001FA20 03000424 */  addiu      $a0, $zero, 0x3
    /* 10224 8001FA24 21280000 */  addu       $a1, $zero, $zero
    /* 10228 8001FA28 21300000 */  addu       $a2, $zero, $zero
    /* 1022C 8001FA2C 21380000 */  addu       $a3, $zero, $zero
    /* 10230 8001FA30 2800B0AF */  sw         $s0, 0x28($sp)
    /* 10234 8001FA34 00101024 */  addiu      $s0, $zero, 0x1000
    /* 10238 8001FA38 04000224 */  addiu      $v0, $zero, 0x4
    /* 1023C 8001FA3C 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 10240 8001FA40 3800B4AF */  sw         $s4, 0x38($sp)
    /* 10244 8001FA44 3400B3AF */  sw         $s3, 0x34($sp)
    /* 10248 8001FA48 3000B2AF */  sw         $s2, 0x30($sp)
    /* 1024C 8001FA4C 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 10250 8001FA50 1000A0AF */  sw         $zero, 0x10($sp)
    /* 10254 8001FA54 1400B0AF */  sw         $s0, 0x14($sp)
    /* 10258 8001FA58 1800B0AF */  sw         $s0, 0x18($sp)
    /* 1025C 8001FA5C 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 10260 8001FA60 1C75000C */  jal        func_8001D470
    /* 10264 8001FA64 2000A2AF */   sw        $v0, 0x20($sp)
    /* 10268 8001FA68 04000424 */  addiu      $a0, $zero, 0x4
    /* 1026C 8001FA6C 21280000 */  addu       $a1, $zero, $zero
    /* 10270 8001FA70 21300000 */  addu       $a2, $zero, $zero
    /* 10274 8001FA74 21380000 */  addu       $a3, $zero, $zero
    /* 10278 8001FA78 80001124 */  addiu      $s1, $zero, 0x80
    /* 1027C 8001FA7C 05000224 */  addiu      $v0, $zero, 0x5
    /* 10280 8001FA80 1000B1AF */  sw         $s1, 0x10($sp)
    /* 10284 8001FA84 1400B0AF */  sw         $s0, 0x14($sp)
    /* 10288 8001FA88 1800B0AF */  sw         $s0, 0x18($sp)
    /* 1028C 8001FA8C 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 10290 8001FA90 1C75000C */  jal        func_8001D470
    /* 10294 8001FA94 2000A2AF */   sw        $v0, 0x20($sp)
    /* 10298 8001FA98 0D000424 */  addiu      $a0, $zero, 0xD
    /* 1029C 8001FA9C 01000524 */  addiu      $a1, $zero, 0x1
    /* 102A0 8001FAA0 21300000 */  addu       $a2, $zero, $zero
    /* 102A4 8001FAA4 21380000 */  addu       $a3, $zero, $zero
    /* 102A8 8001FAA8 06000224 */  addiu      $v0, $zero, 0x6
    /* 102AC 8001FAAC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 102B0 8001FAB0 1400B0AF */  sw         $s0, 0x14($sp)
    /* 102B4 8001FAB4 1800B0AF */  sw         $s0, 0x18($sp)
    /* 102B8 8001FAB8 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 102BC 8001FABC 1C75000C */  jal        func_8001D470
    /* 102C0 8001FAC0 2000A2AF */   sw        $v0, 0x20($sp)
    /* 102C4 8001FAC4 0F000424 */  addiu      $a0, $zero, 0xF
    /* 102C8 8001FAC8 02000524 */  addiu      $a1, $zero, 0x2
    /* 102CC 8001FACC 21300000 */  addu       $a2, $zero, $zero
    /* 102D0 8001FAD0 21380000 */  addu       $a3, $zero, $zero
    /* 102D4 8001FAD4 08000224 */  addiu      $v0, $zero, 0x8
    /* 102D8 8001FAD8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 102DC 8001FADC 1400B0AF */  sw         $s0, 0x14($sp)
    /* 102E0 8001FAE0 1800B0AF */  sw         $s0, 0x18($sp)
    /* 102E4 8001FAE4 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 102E8 8001FAE8 1C75000C */  jal        func_8001D470
    /* 102EC 8001FAEC 2000A2AF */   sw        $v0, 0x20($sp)
    /* 102F0 8001FAF0 1080133C */  lui        $s3, %hi(D_800FF748)
    /* 102F4 8001FAF4 48F77326 */  addiu      $s3, $s3, %lo(D_800FF748)
    /* 102F8 8001FAF8 801F033C */  lui        $v1, (0x1F8002E3 >> 16)
    /* 102FC 8001FAFC E3026390 */  lbu        $v1, (0x1F8002E3 & 0xFFFF)($v1)
    /* 10300 8001FB00 03000224 */  addiu      $v0, $zero, 0x3
    /* 10304 8001FB04 08006210 */  beq        $v1, $v0, .L8001FB28
    /* 10308 8001FB08 801F143C */   lui       $s4, (0x1F8002E5 >> 16)
    /* 1030C 8001FB0C 10000424 */  addiu      $a0, $zero, 0x10
    /* 10310 8001FB10 02000524 */  addiu      $a1, $zero, 0x2
    /* 10314 8001FB14 21300000 */  addu       $a2, $zero, $zero
    /* 10318 8001FB18 21380000 */  addu       $a3, $zero, $zero
    /* 1031C 8001FB1C 09000224 */  addiu      $v0, $zero, 0x9
    /* 10320 8001FB20 D07E0008 */  j          .L8001FB40
    /* 10324 8001FB24 1000B1AF */   sw        $s1, 0x10($sp)
  .L8001FB28:
    /* 10328 8001FB28 10000424 */  addiu      $a0, $zero, 0x10
    /* 1032C 8001FB2C 03000524 */  addiu      $a1, $zero, 0x3
    /* 10330 8001FB30 21300000 */  addu       $a2, $zero, $zero
    /* 10334 8001FB34 21380000 */  addu       $a3, $zero, $zero
    /* 10338 8001FB38 09000224 */  addiu      $v0, $zero, 0x9
    /* 1033C 8001FB3C 1000A0AF */  sw         $zero, 0x10($sp)
  .L8001FB40:
    /* 10340 8001FB40 1400B0AF */  sw         $s0, 0x14($sp)
    /* 10344 8001FB44 1800B0AF */  sw         $s0, 0x18($sp)
    /* 10348 8001FB48 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 1034C 8001FB4C 1C75000C */  jal        func_8001D470
    /* 10350 8001FB50 2000A2AF */   sw        $v0, 0x20($sp)
    /* 10354 8001FB54 0C000424 */  addiu      $a0, $zero, 0xC
    /* 10358 8001FB58 04000524 */  addiu      $a1, $zero, 0x4
    /* 1035C 8001FB5C 21300000 */  addu       $a2, $zero, $zero
    /* 10360 8001FB60 21380000 */  addu       $a3, $zero, $zero
    /* 10364 8001FB64 00101024 */  addiu      $s0, $zero, 0x1000
    /* 10368 8001FB68 0A000224 */  addiu      $v0, $zero, 0xA
    /* 1036C 8001FB6C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 10370 8001FB70 1400B0AF */  sw         $s0, 0x14($sp)
    /* 10374 8001FB74 1800B0AF */  sw         $s0, 0x18($sp)
    /* 10378 8001FB78 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 1037C 8001FB7C 1C75000C */  jal        func_8001D470
    /* 10380 8001FB80 2000A2AF */   sw        $v0, 0x20($sp)
    /* 10384 8001FB84 0E000424 */  addiu      $a0, $zero, 0xE
    /* 10388 8001FB88 01000524 */  addiu      $a1, $zero, 0x1
    /* 1038C 8001FB8C 21300000 */  addu       $a2, $zero, $zero
    /* 10390 8001FB90 21380000 */  addu       $a3, $zero, $zero
    /* 10394 8001FB94 80001224 */  addiu      $s2, $zero, 0x80
    /* 10398 8001FB98 07000224 */  addiu      $v0, $zero, 0x7
    /* 1039C 8001FB9C 1000B2AF */  sw         $s2, 0x10($sp)
    /* 103A0 8001FBA0 1400B0AF */  sw         $s0, 0x14($sp)
    /* 103A4 8001FBA4 1800B0AF */  sw         $s0, 0x18($sp)
    /* 103A8 8001FBA8 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 103AC 8001FBAC 1C75000C */  jal        func_8001D470
    /* 103B0 8001FBB0 2000A2AF */   sw        $v0, 0x20($sp)
    /* 103B4 8001FBB4 E3028292 */  lbu        $v0, (0x1F8002E3 & 0xFFFF)($s4)
    /* 103B8 8001FBB8 04000324 */  addiu      $v1, $zero, 0x4
    /* 103BC 8001FBBC FF004230 */  andi       $v0, $v0, 0xFF
    /* 103C0 8001FBC0 0B004310 */  beq        $v0, $v1, .L8001FBF0
    /* 103C4 8001FBC4 05000424 */   addiu     $a0, $zero, 0x5
    /* 103C8 8001FBC8 05000524 */  addiu      $a1, $zero, 0x5
    /* 103CC 8001FBCC 21300000 */  addu       $a2, $zero, $zero
    /* 103D0 8001FBD0 21380000 */  addu       $a3, $zero, $zero
    /* 103D4 8001FBD4 01000224 */  addiu      $v0, $zero, 0x1
    /* 103D8 8001FBD8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 103DC 8001FBDC 1400B0AF */  sw         $s0, 0x14($sp)
    /* 103E0 8001FBE0 1800B0AF */  sw         $s0, 0x18($sp)
    /* 103E4 8001FBE4 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 103E8 8001FBE8 1C75000C */  jal        func_8001D470
    /* 103EC 8001FBEC 2000A2AF */   sw        $v0, 0x20($sp)
  .L8001FBF0:
    /* 103F0 8001FBF0 08000424 */  addiu      $a0, $zero, 0x8
    /* 103F4 8001FBF4 07000524 */  addiu      $a1, $zero, 0x7
    /* 103F8 8001FBF8 E0CC0624 */  addiu      $a2, $zero, -0x3320
    /* 103FC 8001FBFC 21380000 */  addu       $a3, $zero, $zero
    /* 10400 8001FC00 0B000224 */  addiu      $v0, $zero, 0xB
    /* 10404 8001FC04 1000A0AF */  sw         $zero, 0x10($sp)
    /* 10408 8001FC08 1400B0AF */  sw         $s0, 0x14($sp)
    /* 1040C 8001FC0C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 10410 8001FC10 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 10414 8001FC14 1C75000C */  jal        func_8001D470
    /* 10418 8001FC18 2000A2AF */   sw        $v0, 0x20($sp)
    /* 1041C 8001FC1C 09000424 */  addiu      $a0, $zero, 0x9
    /* 10420 8001FC20 07000524 */  addiu      $a1, $zero, 0x7
    /* 10424 8001FC24 20330624 */  addiu      $a2, $zero, 0x3320
    /* 10428 8001FC28 21380000 */  addu       $a3, $zero, $zero
    /* 1042C 8001FC2C 0C000224 */  addiu      $v0, $zero, 0xC
    /* 10430 8001FC30 1000B2AF */  sw         $s2, 0x10($sp)
    /* 10434 8001FC34 1400B0AF */  sw         $s0, 0x14($sp)
    /* 10438 8001FC38 1800B0AF */  sw         $s0, 0x18($sp)
    /* 1043C 8001FC3C 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 10440 8001FC40 1C75000C */  jal        func_8001D470
    /* 10444 8001FC44 2000A2AF */   sw        $v0, 0x20($sp)
    /* 10448 8001FC48 02000424 */  addiu      $a0, $zero, 0x2
    /* 1044C 8001FC4C 06000524 */  addiu      $a1, $zero, 0x6
    /* 10450 8001FC50 21300000 */  addu       $a2, $zero, $zero
    /* 10454 8001FC54 21380000 */  addu       $a3, $zero, $zero
    /* 10458 8001FC58 03000224 */  addiu      $v0, $zero, 0x3
    /* 1045C 8001FC5C 1000B2AF */  sw         $s2, 0x10($sp)
    /* 10460 8001FC60 1400B0AF */  sw         $s0, 0x14($sp)
    /* 10464 8001FC64 1800B0AF */  sw         $s0, 0x18($sp)
    /* 10468 8001FC68 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 1046C 8001FC6C 1C75000C */  jal        func_8001D470
    /* 10470 8001FC70 2000A2AF */   sw        $v0, 0x20($sp)
    /* 10474 8001FC74 01000424 */  addiu      $a0, $zero, 0x1
    /* 10478 8001FC78 06000524 */  addiu      $a1, $zero, 0x6
    /* 1047C 8001FC7C 21300000 */  addu       $a2, $zero, $zero
    /* 10480 8001FC80 21380000 */  addu       $a3, $zero, $zero
    /* 10484 8001FC84 02000224 */  addiu      $v0, $zero, 0x2
    /* 10488 8001FC88 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1048C 8001FC8C 1400B0AF */  sw         $s0, 0x14($sp)
    /* 10490 8001FC90 1800B0AF */  sw         $s0, 0x18($sp)
    /* 10494 8001FC94 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 10498 8001FC98 1C75000C */  jal        func_8001D470
    /* 1049C 8001FC9C 2000A2AF */   sw        $v0, 0x20($sp)
    /* 104A0 8001FCA0 E3028292 */  lbu        $v0, (0x1F8002E3 & 0xFFFF)($s4)
    /* 104A4 8001FCA4 05001124 */  addiu      $s1, $zero, 0x5
    /* 104A8 8001FCA8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 104AC 8001FCAC 16005114 */  bne        $v0, $s1, .L8001FD08
    /* 104B0 8001FCB0 06000424 */   addiu     $a0, $zero, 0x6
    /* 104B4 8001FCB4 0A000524 */  addiu      $a1, $zero, 0xA
    /* 104B8 8001FCB8 21300000 */  addu       $a2, $zero, $zero
    /* 104BC 8001FCBC 21380000 */  addu       $a3, $zero, $zero
    /* 104C0 8001FCC0 1E000224 */  addiu      $v0, $zero, 0x1E
    /* 104C4 8001FCC4 1000A0AF */  sw         $zero, 0x10($sp)
    /* 104C8 8001FCC8 1400B0AF */  sw         $s0, 0x14($sp)
    /* 104CC 8001FCCC 1800B0AF */  sw         $s0, 0x18($sp)
    /* 104D0 8001FCD0 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 104D4 8001FCD4 1C75000C */  jal        func_8001D470
    /* 104D8 8001FCD8 2000A2AF */   sw        $v0, 0x20($sp)
    /* 104DC 8001FCDC 07000424 */  addiu      $a0, $zero, 0x7
    /* 104E0 8001FCE0 0A000524 */  addiu      $a1, $zero, 0xA
    /* 104E4 8001FCE4 21300000 */  addu       $a2, $zero, $zero
    /* 104E8 8001FCE8 21380000 */  addu       $a3, $zero, $zero
    /* 104EC 8001FCEC 1F000224 */  addiu      $v0, $zero, 0x1F
    /* 104F0 8001FCF0 1000B2AF */  sw         $s2, 0x10($sp)
    /* 104F4 8001FCF4 1400B0AF */  sw         $s0, 0x14($sp)
    /* 104F8 8001FCF8 1800B0AF */  sw         $s0, 0x18($sp)
    /* 104FC 8001FCFC 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 10500 8001FD00 1C75000C */  jal        func_8001D470
    /* 10504 8001FD04 2000A2AF */   sw        $v0, 0x20($sp)
  .L8001FD08:
    /* 10508 8001FD08 E1028292 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($s4)
    /* 1050C 8001FD0C 00000000 */  nop
    /* 10510 8001FD10 21005110 */  beq        $v0, $s1, .L8001FD98
    /* 10514 8001FD14 0A000424 */   addiu     $a0, $zero, 0xA
    /* 10518 8001FD18 08000524 */  addiu      $a1, $zero, 0x8
    /* 1051C 8001FD1C 21300000 */  addu       $a2, $zero, $zero
    /* 10520 8001FD20 21380000 */  addu       $a3, $zero, $zero
    /* 10524 8001FD24 0D000224 */  addiu      $v0, $zero, 0xD
    /* 10528 8001FD28 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1052C 8001FD2C 1400B0AF */  sw         $s0, 0x14($sp)
    /* 10530 8001FD30 1800B0AF */  sw         $s0, 0x18($sp)
    /* 10534 8001FD34 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 10538 8001FD38 1C75000C */  jal        func_8001D470
    /* 1053C 8001FD3C 2000A2AF */   sw        $v0, 0x20($sp)
    /* 10540 8001FD40 0B000424 */  addiu      $a0, $zero, 0xB
    /* 10544 8001FD44 08000524 */  addiu      $a1, $zero, 0x8
    /* 10548 8001FD48 21300000 */  addu       $a2, $zero, $zero
    /* 1054C 8001FD4C 21380000 */  addu       $a3, $zero, $zero
    /* 10550 8001FD50 0E000224 */  addiu      $v0, $zero, 0xE
    /* 10554 8001FD54 1000B2AF */  sw         $s2, 0x10($sp)
    /* 10558 8001FD58 1400B0AF */  sw         $s0, 0x14($sp)
    /* 1055C 8001FD5C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 10560 8001FD60 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 10564 8001FD64 1C75000C */  jal        func_8001D470
    /* 10568 8001FD68 2000A2AF */   sw        $v0, 0x20($sp)
    /* 1056C 8001FD6C E5028292 */  lbu        $v0, (0x1F8002E5 & 0xFFFF)($s4)
    /* 10570 8001FD70 01000324 */  addiu      $v1, $zero, 0x1
    /* 10574 8001FD74 FF004230 */  andi       $v0, $v0, 0xFF
    /* 10578 8001FD78 1C004314 */  bne        $v0, $v1, .L8001FDEC
    /* 1057C 8001FD7C 11000424 */   addiu     $a0, $zero, 0x11
    /* 10580 8001FD80 09000524 */  addiu      $a1, $zero, 0x9
    /* 10584 8001FD84 21300000 */  addu       $a2, $zero, $zero
    /* 10588 8001FD88 21380000 */  addu       $a3, $zero, $zero
    /* 1058C 8001FD8C 0F000224 */  addiu      $v0, $zero, 0xF
    /* 10590 8001FD90 767F0008 */  j          .L8001FDD8
    /* 10594 8001FD94 1000A0AF */   sw        $zero, 0x10($sp)
  .L8001FD98:
    /* 10598 8001FD98 08000524 */  addiu      $a1, $zero, 0x8
    /* 1059C 8001FD9C 21300000 */  addu       $a2, $zero, $zero
    /* 105A0 8001FDA0 21380000 */  addu       $a3, $zero, $zero
    /* 105A4 8001FDA4 1C000224 */  addiu      $v0, $zero, 0x1C
    /* 105A8 8001FDA8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 105AC 8001FDAC 1400B0AF */  sw         $s0, 0x14($sp)
    /* 105B0 8001FDB0 1800B0AF */  sw         $s0, 0x18($sp)
    /* 105B4 8001FDB4 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 105B8 8001FDB8 1C75000C */  jal        func_8001D470
    /* 105BC 8001FDBC 2000A2AF */   sw        $v0, 0x20($sp)
    /* 105C0 8001FDC0 0B000424 */  addiu      $a0, $zero, 0xB
    /* 105C4 8001FDC4 08000524 */  addiu      $a1, $zero, 0x8
    /* 105C8 8001FDC8 21300000 */  addu       $a2, $zero, $zero
    /* 105CC 8001FDCC 21380000 */  addu       $a3, $zero, $zero
    /* 105D0 8001FDD0 1D000224 */  addiu      $v0, $zero, 0x1D
    /* 105D4 8001FDD4 1000B2AF */  sw         $s2, 0x10($sp)
  .L8001FDD8:
    /* 105D8 8001FDD8 1400B0AF */  sw         $s0, 0x14($sp)
    /* 105DC 8001FDDC 1800B0AF */  sw         $s0, 0x18($sp)
    /* 105E0 8001FDE0 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 105E4 8001FDE4 1C75000C */  jal        func_8001D470
    /* 105E8 8001FDE8 2000A2AF */   sw        $v0, 0x20($sp)
  .L8001FDEC:
    /* 105EC 8001FDEC E1028292 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($s4)
    /* 105F0 8001FDF0 01000324 */  addiu      $v1, $zero, 0x1
    /* 105F4 8001FDF4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 105F8 8001FDF8 21086102 */  addu       $at, $s3, $at
    /* 105FC 8001FDFC E1AB23A0 */  sb         $v1, -0x541F($at)
    /* 10600 8001FE00 05000324 */  addiu      $v1, $zero, 0x5
    /* 10604 8001FE04 FF004230 */  andi       $v0, $v0, 0xFF
    /* 10608 8001FE08 14004310 */  beq        $v0, $v1, .L8001FE5C
    /* 1060C 8001FE0C 48000424 */   addiu     $a0, $zero, 0x48
    /* 10610 8001FE10 E3028292 */  lbu        $v0, (0x1F8002E3 & 0xFFFF)($s4)
    /* 10614 8001FE14 00000000 */  nop
    /* 10618 8001FE18 FF004330 */  andi       $v1, $v0, 0xFF
    /* 1061C 8001FE1C 0600622C */  sltiu      $v0, $v1, 0x6
    /* 10620 8001FE20 12004010 */  beqz       $v0, .L8001FE6C
    /* 10624 8001FE24 80100300 */   sll       $v0, $v1, 2
    /* 10628 8001FE28 0180013C */  lui        $at, %hi(jtbl_80010670)
    /* 1062C 8001FE2C 21082200 */  addu       $at, $at, $v0
    /* 10630 8001FE30 7006228C */  lw         $v0, %lo(jtbl_80010670)($at)
    /* 10634 8001FE34 00000000 */  nop
    /* 10638 8001FE38 08004000 */  jr         $v0
    /* 1063C 8001FE3C 00000000 */   nop
  jlabel .L8001FE40
    /* 10640 8001FE40 977F0008 */  j          .L8001FE5C
    /* 10644 8001FE44 40000424 */   addiu     $a0, $zero, 0x40
  jlabel .L8001FE48
    /* 10648 8001FE48 40000424 */  addiu      $a0, $zero, 0x40
    /* 1064C 8001FE4C 60000524 */  addiu      $a1, $zero, 0x60
    /* 10650 8001FE50 997F0008 */  j          .L8001FE64
    /* 10654 8001FE54 28000624 */   addiu     $a2, $zero, 0x28
  jlabel .L8001FE58
    /* 10658 8001FE58 48000424 */  addiu      $a0, $zero, 0x48
  .L8001FE5C:
    /* 1065C 8001FE5C 60000524 */  addiu      $a1, $zero, 0x60
    /* 10660 8001FE60 30000624 */  addiu      $a2, $zero, 0x30
  .L8001FE64:
    /* 10664 8001FE64 4E78000C */  jal        func_8001E138
    /* 10668 8001FE68 00000000 */   nop
  .L8001FE6C:
    /* 1066C 8001FE6C F17D000C */  jal        func_8001F7C4
    /* 10670 8001FE70 21880000 */   addu      $s1, $zero, $zero
    /* 10674 8001FE74 02001324 */  addiu      $s3, $zero, 0x2
    /* 10678 8001FE78 08001024 */  addiu      $s0, $zero, 0x8
    /* 1067C 8001FE7C 10001224 */  addiu      $s2, $zero, 0x10
    /* 10680 8001FE80 FF002332 */  andi       $v1, $s1, 0xFF
  .L8001FE84:
    /* 10684 8001FE84 03006014 */  bnez       $v1, .L8001FE94
    /* 10688 8001FE88 01000224 */   addiu     $v0, $zero, 0x1
    /* 1068C 8001FE8C A87F0008 */  j          .L8001FEA0
    /* 10690 8001FE90 28000424 */   addiu     $a0, $zero, 0x28
  .L8001FE94:
    /* 10694 8001FE94 02006214 */  bne        $v1, $v0, .L8001FEA0
    /* 10698 8001FE98 43000424 */   addiu     $a0, $zero, 0x43
    /* 1069C 8001FE9C 42000424 */  addiu      $a0, $zero, 0x42
  .L8001FEA0:
    /* 106A0 8001FEA0 0174000C */  jal        func_8001D004
    /* 106A4 8001FEA4 00000000 */   nop
    /* 106A8 8001FEA8 21184000 */  addu       $v1, $v0, $zero
    /* 106AC 8001FEAC E3028292 */  lbu        $v0, (0x1F8002E3 & 0xFFFF)($s4)
    /* 106B0 8001FEB0 00000000 */  nop
    /* 106B4 8001FEB4 FF004430 */  andi       $a0, $v0, 0xFF
    /* 106B8 8001FEB8 0500822C */  sltiu      $v0, $a0, 0x5
    /* 106BC 8001FEBC 19004010 */  beqz       $v0, .L8001FF24
    /* 106C0 8001FEC0 80100400 */   sll       $v0, $a0, 2
    /* 106C4 8001FEC4 0180013C */  lui        $at, %hi(jtbl_80010688)
    /* 106C8 8001FEC8 21082200 */  addu       $at, $at, $v0
    /* 106CC 8001FECC 8806228C */  lw         $v0, %lo(jtbl_80010688)($at)
    /* 106D0 8001FED0 00000000 */  nop
    /* 106D4 8001FED4 08004000 */  jr         $v0
    /* 106D8 8001FED8 00000000 */   nop
  jlabel .L8001FEDC
    /* 106DC 8001FEDC FF002232 */  andi       $v0, $s1, 0xFF
    /* 106E0 8001FEE0 020060A0 */  sb         $zero, 0x2($v1)
    /* 106E4 8001FEE4 0E0060A0 */  sb         $zero, 0xE($v1)
    /* 106E8 8001FEE8 16005314 */  bne        $v0, $s3, .L8001FF44
    /* 106EC 8001FEEC 1A0060A0 */   sb        $zero, 0x1A($v1)
    /* 106F0 8001FEF0 260060A0 */  sb         $zero, 0x26($v1)
    /* 106F4 8001FEF4 320060A0 */  sb         $zero, 0x32($v1)
    /* 106F8 8001FEF8 D17F0008 */  j          .L8001FF44
    /* 106FC 8001FEFC 3E0060A0 */   sb        $zero, 0x3E($v1)
  jlabel .L8001FF00
    /* 10700 8001FF00 FF002232 */  andi       $v0, $s1, 0xFF
    /* 10704 8001FF04 020072A0 */  sb         $s2, 0x2($v1)
    /* 10708 8001FF08 0E0072A0 */  sb         $s2, 0xE($v1)
    /* 1070C 8001FF0C 0D005314 */  bne        $v0, $s3, .L8001FF44
    /* 10710 8001FF10 1A0072A0 */   sb        $s2, 0x1A($v1)
    /* 10714 8001FF14 260072A0 */  sb         $s2, 0x26($v1)
    /* 10718 8001FF18 320072A0 */  sb         $s2, 0x32($v1)
    /* 1071C 8001FF1C D17F0008 */  j          .L8001FF44
    /* 10720 8001FF20 3E0072A0 */   sb        $s2, 0x3E($v1)
  jlabel .L8001FF24
    /* 10724 8001FF24 FF002232 */  andi       $v0, $s1, 0xFF
    /* 10728 8001FF28 020070A0 */  sb         $s0, 0x2($v1)
    /* 1072C 8001FF2C 0E0070A0 */  sb         $s0, 0xE($v1)
    /* 10730 8001FF30 04005314 */  bne        $v0, $s3, .L8001FF44
    /* 10734 8001FF34 1A0070A0 */   sb        $s0, 0x1A($v1)
    /* 10738 8001FF38 260070A0 */  sb         $s0, 0x26($v1)
    /* 1073C 8001FF3C 320070A0 */  sb         $s0, 0x32($v1)
    /* 10740 8001FF40 3E0070A0 */  sb         $s0, 0x3E($v1)
  .L8001FF44:
    /* 10744 8001FF44 01003126 */  addiu      $s1, $s1, 0x1
    /* 10748 8001FF48 FF002232 */  andi       $v0, $s1, 0xFF
    /* 1074C 8001FF4C 0300422C */  sltiu      $v0, $v0, 0x3
    /* 10750 8001FF50 CCFF4014 */  bnez       $v0, .L8001FE84
    /* 10754 8001FF54 FF002332 */   andi      $v1, $s1, 0xFF
    /* 10758 8001FF58 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 1075C 8001FF5C 3800B48F */  lw         $s4, 0x38($sp)
    /* 10760 8001FF60 3400B38F */  lw         $s3, 0x34($sp)
    /* 10764 8001FF64 3000B28F */  lw         $s2, 0x30($sp)
    /* 10768 8001FF68 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 1076C 8001FF6C 2800B08F */  lw         $s0, 0x28($sp)
    /* 10770 8001FF70 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 10774 8001FF74 0800E003 */  jr         $ra
    /* 10778 8001FF78 00000000 */   nop
endlabel func_8001FA1C
