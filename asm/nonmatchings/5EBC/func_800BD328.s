nonmatching func_800BD328, 0x140

glabel func_800BD328
    /* ADB28 800BD328 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* ADB2C 800BD32C 0600023C */  lui        $v0, (0x60093 >> 16)
    /* ADB30 800BD330 1080033C */  lui        $v1, %hi(D_800FB578)
    /* ADB34 800BD334 78B56380 */  lb         $v1, %lo(D_800FB578)($v1)
    /* ADB38 800BD338 93004234 */  ori        $v0, $v0, (0x60093 & 0xFFFF)
    /* ADB3C 800BD33C 5000B0AF */  sw         $s0, 0x50($sp)
    /* ADB40 800BD340 21800000 */  addu       $s0, $zero, $zero
    /* ADB44 800BD344 1400A2AF */  sw         $v0, 0x14($sp)
    /* ADB48 800BD348 00100224 */  addiu      $v0, $zero, 0x1000
    /* ADB4C 800BD34C 2400A2A7 */  sh         $v0, 0x24($sp)
    /* ADB50 800BD350 00100224 */  addiu      $v0, $zero, 0x1000
    /* ADB54 800BD354 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* ADB58 800BD358 FF800234 */  ori        $v0, $zero, 0x80FF
    /* ADB5C 800BD35C 4A00A2A7 */  sh         $v0, 0x4A($sp)
    /* ADB60 800BD360 00400224 */  addiu      $v0, $zero, 0x4000
    /* ADB64 800BD364 6000BFAF */  sw         $ra, 0x60($sp)
    /* ADB68 800BD368 5C00B3AF */  sw         $s3, 0x5C($sp)
    /* ADB6C 800BD36C 5800B2AF */  sw         $s2, 0x58($sp)
    /* ADB70 800BD370 5400B1AF */  sw         $s1, 0x54($sp)
    /* ADB74 800BD374 1800A0A7 */  sh         $zero, 0x18($sp)
    /* ADB78 800BD378 1A00A0A7 */  sh         $zero, 0x1A($sp)
    /* ADB7C 800BD37C 33006018 */  blez       $v1, .L800BD44C
    /* ADB80 800BD380 4C00A2A7 */   sh        $v0, 0x4C($sp)
    /* ADB84 800BD384 01001324 */  addiu      $s3, $zero, 0x1
    /* ADB88 800BD388 18001224 */  addiu      $s2, $zero, 0x18
    /* ADB8C 800BD38C FF001124 */  addiu      $s1, $zero, 0xFF
    /* ADB90 800BD390 00141000 */  sll        $v0, $s0, 16
  .L800BD394:
    /* ADB94 800BD394 031C0200 */  sra        $v1, $v0, 16
    /* ADB98 800BD398 0D80023C */  lui        $v0, %hi(D_800D4F0C)
    /* ADB9C 800BD39C 0C4F428C */  lw         $v0, %lo(D_800D4F0C)($v0)
    /* ADBA0 800BD3A0 04287300 */  sllv       $a1, $s3, $v1
    /* ADBA4 800BD3A4 24104500 */  and        $v0, $v0, $a1
    /* ADBA8 800BD3A8 20004014 */  bnez       $v0, .L800BD42C
    /* ADBAC 800BD3AC 01000226 */   addiu     $v0, $s0, 0x1
    /* ADBB0 800BD3B0 1000A427 */  addiu      $a0, $sp, 0x10
    /* ADBB4 800BD3B4 C0100300 */  sll        $v0, $v1, 3
    /* ADBB8 800BD3B8 23104300 */  subu       $v0, $v0, $v1
    /* ADBBC 800BD3BC 80100200 */  sll        $v0, $v0, 2
    /* ADBC0 800BD3C0 23104300 */  subu       $v0, $v0, $v1
    /* ADBC4 800BD3C4 40100200 */  sll        $v0, $v0, 1
    /* ADBC8 800BD3C8 0E80013C */  lui        $at, %hi(D_800E78DA)
    /* ADBCC 800BD3CC 21082200 */  addu       $at, $at, $v0
    /* ADBD0 800BD3D0 DA7832A4 */  sh         $s2, %lo(D_800E78DA)($at)
    /* ADBD4 800BD3D4 0E80013C */  lui        $at, %hi(D_800E78DE)
    /* ADBD8 800BD3D8 21082200 */  addu       $at, $at, $v0
    /* ADBDC 800BD3DC DE7820A4 */  sh         $zero, %lo(D_800E78DE)($at)
    /* ADBE0 800BD3E0 0E80013C */  lui        $at, %hi(D_800E78E8)
    /* ADBE4 800BD3E4 21082200 */  addu       $at, $at, $v0
    /* ADBE8 800BD3E8 E87831A4 */  sh         $s1, %lo(D_800E78E8)($at)
    /* ADBEC 800BD3EC 0E80013C */  lui        $at, %hi(D_800E78EA)
    /* ADBF0 800BD3F0 21082200 */  addu       $at, $at, $v0
    /* ADBF4 800BD3F4 EA7820A4 */  sh         $zero, %lo(D_800E78EA)($at)
    /* ADBF8 800BD3F8 0E80013C */  lui        $at, %hi(D_800E78EC)
    /* ADBFC 800BD3FC 21082200 */  addu       $at, $at, $v0
    /* ADC00 800BD400 EC7820A4 */  sh         $zero, %lo(D_800E78EC)($at)
    /* ADC04 800BD404 0E80013C */  lui        $at, %hi(D_800E78EE)
    /* ADC08 800BD408 21082200 */  addu       $at, $at, $v0
    /* ADC0C 800BD40C EE7831A4 */  sh         $s1, %lo(D_800E78EE)($at)
    /* ADC10 800BD410 2A11030C */  jal        func_800C44A8
    /* ADC14 800BD414 1000A5AF */   sw        $a1, 0x10($sp)
    /* ADC18 800BD418 1180013C */  lui        $at, %hi(D_8010A3E2)
    /* ADC1C 800BD41C E2A330A4 */  sh         $s0, %lo(D_8010A3E2)($at)
    /* ADC20 800BD420 46FF020C */  jal        func_800BFD18
    /* ADC24 800BD424 01000424 */   addiu     $a0, $zero, 0x1
    /* ADC28 800BD428 01000226 */  addiu      $v0, $s0, 0x1
  .L800BD42C:
    /* ADC2C 800BD42C 21804000 */  addu       $s0, $v0, $zero
    /* ADC30 800BD430 00140200 */  sll        $v0, $v0, 16
    /* ADC34 800BD434 1080033C */  lui        $v1, %hi(D_800FB578)
    /* ADC38 800BD438 78B56380 */  lb         $v1, %lo(D_800FB578)($v1)
    /* ADC3C 800BD43C 03140200 */  sra        $v0, $v0, 16
    /* ADC40 800BD440 2A104300 */  slt        $v0, $v0, $v1
    /* ADC44 800BD444 D3FF4014 */  bnez       $v0, .L800BD394
    /* ADC48 800BD448 00141000 */   sll       $v0, $s0, 16
  .L800BD44C:
    /* ADC4C 800BD44C 6000BF8F */  lw         $ra, 0x60($sp)
    /* ADC50 800BD450 5C00B38F */  lw         $s3, 0x5C($sp)
    /* ADC54 800BD454 5800B28F */  lw         $s2, 0x58($sp)
    /* ADC58 800BD458 5400B18F */  lw         $s1, 0x54($sp)
    /* ADC5C 800BD45C 5000B08F */  lw         $s0, 0x50($sp)
    /* ADC60 800BD460 0800E003 */  jr         $ra
    /* ADC64 800BD464 6800BD27 */   addiu     $sp, $sp, 0x68
endlabel func_800BD328
