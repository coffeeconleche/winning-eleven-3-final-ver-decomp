nonmatching func_800AB294, 0x38C

glabel func_800AB294
    /* 9BA94 800AB294 78FFBD27 */  addiu      $sp, $sp, -0x88
    /* 9BA98 800AB298 0F270434 */  ori        $a0, $zero, 0x270F
    /* 9BA9C 800AB29C 7400B5AF */  sw         $s5, 0x74($sp)
    /* 9BAA0 800AB2A0 07001534 */  ori        $s5, $zero, 0x7
    /* 9BAA4 800AB2A4 0F80033C */  lui        $v1, %hi(D_800EF8A6)
    /* 9BAA8 800AB2A8 A6F86324 */  addiu      $v1, $v1, %lo(D_800EF8A6)
    /* 9BAAC 800AB2AC 01000234 */  ori        $v0, $zero, 0x1
    /* 9BAB0 800AB2B0 8000BFAF */  sw         $ra, 0x80($sp)
    /* 9BAB4 800AB2B4 7C00B7AF */  sw         $s7, 0x7C($sp)
    /* 9BAB8 800AB2B8 7800B6AF */  sw         $s6, 0x78($sp)
    /* 9BABC 800AB2BC 7000B4AF */  sw         $s4, 0x70($sp)
    /* 9BAC0 800AB2C0 6C00B3AF */  sw         $s3, 0x6C($sp)
    /* 9BAC4 800AB2C4 6800B2AF */  sw         $s2, 0x68($sp)
    /* 9BAC8 800AB2C8 6400B1AF */  sw         $s1, 0x64($sp)
    /* 9BACC 800AB2CC 6000B0AF */  sw         $s0, 0x60($sp)
    /* 9BAD0 800AB2D0 3800A0A3 */  sb         $zero, 0x38($sp)
    /* 9BAD4 800AB2D4 FC0082A3 */  sb         $v0, %gp_rel(D_800E6B88)($gp)
    /* 9BAD8 800AB2D8 EA0080A7 */  sh         $zero, %gp_rel(D_800E6B76)($gp)
    /* 9BADC 800AB2DC A80080A7 */  sh         $zero, %gp_rel(D_800E6B34)($gp)
    /* 9BAE0 800AB2E0 4C0180A3 */  sb         $zero, %gp_rel(D_800E6BD8)($gp)
    /* 9BAE4 800AB2E4 600080A7 */  sh         $zero, %gp_rel(D_800E6AEC)($gp)
    /* 9BAE8 800AB2E8 C00080A7 */  sh         $zero, %gp_rel(D_800E6B4C)($gp)
    /* 9BAEC 800AB2EC 8A0080A7 */  sh         $zero, %gp_rel(D_800E6B16)($gp)
    /* 9BAF0 800AB2F0 5E0080A3 */  sb         $zero, %gp_rel(D_800E6AEA)($gp)
    /* 9BAF4 800AB2F4 4D0180A3 */  sb         $zero, %gp_rel(D_800E6BD9)($gp)
    /* 9BAF8 800AB2F8 740080A3 */  sb         $zero, %gp_rel(D_800E6B00)($gp)
    /* 9BAFC 800AB2FC 880080A3 */  sb         $zero, %gp_rel(D_800E6B14)($gp)
    /* 9BB00 800AB300 E80082A3 */  sb         $v0, %gp_rel(D_800E6B74)($gp)
    /* 9BB04 800AB304 2C0180AF */  sw         $zero, %gp_rel(D_800E6BB8)($gp)
  .L800AB308:
    /* 9BB08 800AB308 000064A4 */  sh         $a0, 0x0($v1)
    /* 9BB0C 800AB30C FFFFB526 */  addiu      $s5, $s5, -0x1
    /* 9BB10 800AB310 FDFFA106 */  bgez       $s5, .L800AB308
    /* 9BB14 800AB314 FEFF6324 */   addiu     $v1, $v1, -0x2
    /* 9BB18 800AB318 0F001534 */  ori        $s5, $zero, 0xF
    /* 9BB1C 800AB31C 1180023C */  lui        $v0, %hi(D_8010CD7E)
    /* 9BB20 800AB320 7ECD4224 */  addiu      $v0, $v0, %lo(D_8010CD7E)
  .L800AB324:
    /* 9BB24 800AB324 000040A4 */  sh         $zero, 0x0($v0)
    /* 9BB28 800AB328 FFFFB526 */  addiu      $s5, $s5, -0x1
    /* 9BB2C 800AB32C FDFFA106 */  bgez       $s5, .L800AB324
    /* 9BB30 800AB330 FEFF4224 */   addiu     $v0, $v0, -0x2
    /* 9BB34 800AB334 1E80023C */  lui        $v0, (0x801E1800 >> 16)
    /* 9BB38 800AB338 00184234 */  ori        $v0, $v0, (0x801E1800 & 0xFFFF)
    /* 9BB3C 800AB33C 21200000 */  addu       $a0, $zero, $zero
    /* 9BB40 800AB340 040180A3 */  sb         $zero, %gp_rel(D_800E6B90)($gp)
    /* 9BB44 800AB344 890080A3 */  sb         $zero, %gp_rel(D_800E6B15)($gp)
    /* 9BB48 800AB348 D00082AF */  sw         $v0, %gp_rel(D_800E6B5C)($gp)
    /* 9BB4C 800AB34C C6F1020C */  jal        func_800BC718
    /* 9BB50 800AB350 21280000 */   addu      $a1, $zero, $zero
    /* 9BB54 800AB354 E602030C */  jal        func_800C0B98
    /* 9BB58 800AB358 16000434 */   ori       $a0, $zero, 0x16
    /* 9BB5C 800AB35C B1A5020C */  jal        func_800A96C4
    /* 9BB60 800AB360 21A80000 */   addu      $s5, $zero, $zero
    /* 9BB64 800AB364 62F7020C */  jal        func_800BDD88
    /* 9BB68 800AB368 02000434 */   ori       $a0, $zero, 0x2
    /* 9BB6C 800AB36C 8EF7020C */  jal        func_800BDE38
    /* 9BB70 800AB370 21A00000 */   addu      $s4, $zero, $zero
    /* 9BB74 800AB374 7A0E030C */  jal        func_800C39E8
    /* 9BB78 800AB378 02000434 */   ori       $a0, $zero, 0x2
    /* 9BB7C 800AB37C 21884000 */  addu       $s1, $v0, $zero
    /* 9BB80 800AB380 28000434 */  ori        $a0, $zero, 0x28
    /* 9BB84 800AB384 3EF7020C */  jal        func_800BDCF8
    /* 9BB88 800AB388 28000534 */   ori       $a1, $zero, 0x28
    /* 9BB8C 800AB38C 21200000 */  addu       $a0, $zero, $zero
    /* 9BB90 800AB390 21280000 */  addu       $a1, $zero, $zero
    /* 9BB94 800AB394 96F1020C */  jal        func_800BC658
    /* 9BB98 800AB398 01000634 */   ori       $a2, $zero, 0x1
  .L800AB39C:
    /* 9BB9C 800AB39C 0D80013C */  lui        $at, %hi(D_800CE826)
    /* 9BBA0 800AB3A0 26E82124 */  addiu      $at, $at, %lo(D_800CE826)
    /* 9BBA4 800AB3A4 21083400 */  addu       $at, $at, $s4
    /* 9BBA8 800AB3A8 00002390 */  lbu        $v1, 0x0($at)
    /* 9BBAC 800AB3AC 01000234 */  ori        $v0, $zero, 0x1
    /* 9BBB0 800AB3B0 6E006214 */  bne        $v1, $v0, .L800AB56C
    /* 9BBB4 800AB3B4 0100123C */   lui       $s2, (0x10000 >> 16)
    /* 9BBB8 800AB3B8 0D80013C */  lui        $at, %hi(D_800CE80C)
    /* 9BBBC 800AB3BC 0CE82124 */  addiu      $at, $at, %lo(D_800CE80C)
    /* 9BBC0 800AB3C0 21083400 */  addu       $at, $at, $s4
    /* 9BBC4 800AB3C4 0000338C */  lw         $s3, 0x0($at)
    /* 9BBC8 800AB3C8 21808002 */  addu       $s0, $s4, $zero
  .L800AB3CC:
    /* 9BBCC 800AB3CC 0D80013C */  lui        $at, %hi(D_800CE824)
    /* 9BBD0 800AB3D0 24E82124 */  addiu      $at, $at, %lo(D_800CE824)
    /* 9BBD4 800AB3D4 21083000 */  addu       $at, $at, $s0
    /* 9BBD8 800AB3D8 00002290 */  lbu        $v0, 0x0($at)
    /* 9BBDC 800AB3DC 00000000 */  nop
    /* 9BBE0 800AB3E0 08004014 */  bnez       $v0, .L800AB404
    /* 9BBE4 800AB3E4 21286002 */   addu      $a1, $s3, $zero
    /* 9BBE8 800AB3E8 0D80013C */  lui        $at, %hi(D_800CE808)
    /* 9BBEC 800AB3EC 08E82124 */  addiu      $at, $at, %lo(D_800CE808)
    /* 9BBF0 800AB3F0 21083000 */  addu       $at, $at, $s0
    /* 9BBF4 800AB3F4 0000248C */  lw         $a0, 0x0($at)
    /* 9BBF8 800AB3F8 4AA4020C */  jal        func_800A9128
    /* 9BBFC 800AB3FC 1E80063C */   lui       $a2, (0x801E0000 >> 16)
    /* 9BC00 800AB400 21884000 */  addu       $s1, $v0, $zero
  .L800AB404:
    /* 9BC04 800AB404 F1FF2016 */  bnez       $s1, .L800AB3CC
    /* 9BC08 800AB408 00000000 */   nop
    /* 9BC0C 800AB40C 0D80013C */  lui        $at, %hi(D_800CE824)
    /* 9BC10 800AB410 24E82124 */  addiu      $at, $at, %lo(D_800CE824)
    /* 9BC14 800AB414 21083400 */  addu       $at, $at, $s4
    /* 9BC18 800AB418 00002290 */  lbu        $v0, 0x0($at)
    /* 9BC1C 800AB41C 00000000 */  nop
    /* 9BC20 800AB420 02004014 */  bnez       $v0, .L800AB42C
    /* 9BC24 800AB424 1E80043C */   lui       $a0, (0x801E0000 >> 16)
    /* 9BC28 800AB428 1E80173C */  lui        $s7, %hi(D_801E0A02)
  .L800AB42C:
    /* 9BC2C 800AB42C 0400063C */  lui        $a2, (0x41010 >> 16)
    /* 9BC30 800AB430 60000234 */  ori        $v0, $zero, 0x60
    /* 9BC34 800AB434 020AE2A2 */  sb         $v0, %lo(D_801E0A02)($s7)
    /* 9BC38 800AB438 6F000234 */  ori        $v0, $zero, 0x6F
    /* 9BC3C 800AB43C 0209E2A2 */  sb         $v0, %lo(D_801E0902)($s7)
    /* 9BC40 800AB440 32000234 */  ori        $v0, $zero, 0x32
    /* 9BC44 800AB444 0409E2A2 */  sb         $v0, %lo(D_801E0904)($s7)
    /* 9BC48 800AB448 4C000234 */  ori        $v0, $zero, 0x4C
    /* 9BC4C 800AB44C 1309E2A2 */  sb         $v0, %lo(D_801E0913)($s7)
    /* 9BC50 800AB450 05000234 */  ori        $v0, $zero, 0x5
    /* 9BC54 800AB454 1609E2A2 */  sb         $v0, %lo(D_801E0916)($s7)
    /* 9BC58 800AB458 0D80013C */  lui        $at, %hi(D_800CE824)
    /* 9BC5C 800AB45C 24E82124 */  addiu      $at, $at, %lo(D_800CE824)
    /* 9BC60 800AB460 21083400 */  addu       $at, $at, $s4
    /* 9BC64 800AB464 00002590 */  lbu        $a1, 0x0($at)
    /* 9BC68 800AB468 FE02030C */  jal        func_800C0BF8
    /* 9BC6C 800AB46C 1010C634 */   ori       $a2, $a2, (0x41010 & 0xFFFF)
    /* 9BC70 800AB470 00140200 */  sll        $v0, $v0, 16
    /* 9BC74 800AB474 038C0200 */  sra        $s1, $v0, 16
    /* 9BC78 800AB478 7F000234 */  ori        $v0, $zero, 0x7F
    /* 9BC7C 800AB47C E209E2A2 */  sb         $v0, %lo(D_801E09E2)($s7)
    /* 9BC80 800AB480 50000234 */  ori        $v0, $zero, 0x50
    /* 9BC84 800AB484 E409E2A2 */  sb         $v0, %lo(D_801E09E4)($s7)
    /* 9BC88 800AB488 06000234 */  ori        $v0, $zero, 0x6
    /* 9BC8C 800AB48C F609E2A2 */  sb         $v0, %lo(D_801E09F6)($s7)
    /* 9BC90 800AB490 0B000234 */  ori        $v0, $zero, 0xB
    /* 9BC94 800AB494 B60AE2A2 */  sb         $v0, %lo(D_801E0AB6)($s7)
    /* 9BC98 800AB498 F60AE2A2 */  sb         $v0, %lo(D_801E0AF6)($s7)
    /* 9BC9C 800AB49C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 9BCA0 800AB4A0 05002216 */  bne        $s1, $v0, .L800AB4B8
    /* 9BCA4 800AB4A4 00000000 */   nop
    /* 9BCA8 800AB4A8 0180043C */  lui        $a0, %hi(D_80014B38)
    /* 9BCAC 800AB4AC 384B8424 */  addiu      $a0, $a0, %lo(D_80014B38)
    /* 9BCB0 800AB4B0 A6B5020C */  jal        func_800AD698
    /* 9BCB4 800AB4B4 00000000 */   nop
  .L800AB4B8:
    /* 9BCB8 800AB4B8 0D80013C */  lui        $at, %hi(D_800CE820)
    /* 9BCBC 800AB4BC 20E82124 */  addiu      $at, $at, %lo(D_800CE820)
    /* 9BCC0 800AB4C0 21083400 */  addu       $at, $at, $s4
    /* 9BCC4 800AB4C4 0000228C */  lw         $v0, 0x0($at)
    /* 9BCC8 800AB4C8 0D80013C */  lui        $at, %hi(D_800CE81C)
    /* 9BCCC 800AB4CC 1CE82124 */  addiu      $at, $at, %lo(D_800CE81C)
    /* 9BCD0 800AB4D0 21083400 */  addu       $at, $at, $s4
    /* 9BCD4 800AB4D4 0000338C */  lw         $s3, 0x0($at)
    /* 9BCD8 800AB4D8 C0820200 */  sll        $s0, $v0, 11
    /* 9BCDC 800AB4DC 2A101202 */  slt        $v0, $s0, $s2
    /* 9BCE0 800AB4E0 02004010 */  beqz       $v0, .L800AB4EC
    /* 9BCE4 800AB4E4 00000000 */   nop
    /* 9BCE8 800AB4E8 21900002 */  addu       $s2, $s0, $zero
  .L800AB4EC:
    /* 9BCEC 800AB4EC 1F00001A */  blez       $s0, .L800AB56C
    /* 9BCF0 800AB4F0 00000000 */   nop
    /* 9BCF4 800AB4F4 21B08002 */  addu       $s6, $s4, $zero
  .L800AB4F8:
    /* 9BCF8 800AB4F8 02004106 */  bgez       $s2, .L800AB504
    /* 9BCFC 800AB4FC 21284002 */   addu      $a1, $s2, $zero
    /* 9BD00 800AB500 FF074526 */  addiu      $a1, $s2, 0x7FF
  .L800AB504:
    /* 9BD04 800AB504 21206002 */  addu       $a0, $s3, $zero
    /* 9BD08 800AB508 C32A0500 */  sra        $a1, $a1, 11
    /* 9BD0C 800AB50C 1E80063C */  lui        $a2, (0x801E3000 >> 16)
    /* 9BD10 800AB510 4AA4020C */  jal        func_800A9128
    /* 9BD14 800AB514 0030C634 */   ori       $a2, $a2, (0x801E3000 & 0xFFFF)
    /* 9BD18 800AB518 F7FF4014 */  bnez       $v0, .L800AB4F8
    /* 9BD1C 800AB51C 1E80043C */   lui       $a0, (0x801E3000 >> 16)
    /* 9BD20 800AB520 00308434 */  ori        $a0, $a0, (0x801E3000 & 0xFFFF)
    /* 9BD24 800AB524 21284002 */  addu       $a1, $s2, $zero
    /* 9BD28 800AB528 0D80013C */  lui        $at, %hi(D_800CE824)
    /* 9BD2C 800AB52C 24E82124 */  addiu      $at, $at, %lo(D_800CE824)
    /* 9BD30 800AB530 21083600 */  addu       $at, $at, $s6
    /* 9BD34 800AB534 00002690 */  lbu        $a2, 0x0($at)
    /* 9BD38 800AB538 20007326 */  addiu      $s3, $s3, 0x20
    /* 9BD3C 800AB53C 0A04030C */  jal        func_800C1028
    /* 9BD40 800AB540 23801202 */   subu      $s0, $s0, $s2
    /* 9BD44 800AB544 00140200 */  sll        $v0, $v0, 16
    /* 9BD48 800AB548 038C0200 */  sra        $s1, $v0, 16
    /* 9BD4C 800AB54C 6204030C */  jal        func_800C1188
    /* 9BD50 800AB550 01000434 */   ori       $a0, $zero, 0x1
    /* 9BD54 800AB554 2A105002 */  slt        $v0, $s2, $s0
    /* 9BD58 800AB558 02004014 */  bnez       $v0, .L800AB564
    /* 9BD5C 800AB55C 00000000 */   nop
    /* 9BD60 800AB560 21900002 */  addu       $s2, $s0, $zero
  .L800AB564:
    /* 9BD64 800AB564 E4FF001E */  bgtz       $s0, .L800AB4F8
    /* 9BD68 800AB568 00000000 */   nop
  .L800AB56C:
    /* 9BD6C 800AB56C 0100B526 */  addiu      $s5, $s5, 0x1
    /* 9BD70 800AB570 8AFFA01A */  blez       $s5, .L800AB39C
    /* 9BD74 800AB574 30009426 */   addiu     $s4, $s4, 0x30
    /* 9BD78 800AB578 5AF3020C */  jal        func_800BCD68
    /* 9BD7C 800AB57C 00100434 */   ori       $a0, $zero, 0x1000
    /* 9BD80 800AB580 30008287 */  lh         $v0, %gp_rel(D_800E6ABC)($gp)
    /* 9BD84 800AB584 7F000434 */  ori        $a0, $zero, 0x7F
    /* 9BD88 800AB588 0D80013C */  lui        $at, %hi(D_800CEA25)
    /* 9BD8C 800AB58C 25EA2124 */  addiu      $at, $at, %lo(D_800CEA25)
    /* 9BD90 800AB590 21082200 */  addu       $at, $at, $v0
    /* 9BD94 800AB594 00002290 */  lbu        $v0, 0x0($at)
    /* 9BD98 800AB598 00000000 */  nop
    /* 9BD9C 800AB59C B80082A7 */  sh         $v0, %gp_rel(D_800E6B44)($gp)
    /* 9BDA0 800AB5A0 C6F1020C */  jal        func_800BC718
    /* 9BDA4 800AB5A4 7F000534 */   ori       $a1, $zero, 0x7F
    /* 9BDA8 800AB5A8 6EF2020C */  jal        func_800BC9B8
    /* 9BDAC 800AB5AC 00000000 */   nop
    /* 9BDB0 800AB5B0 02000234 */  ori        $v0, $zero, 0x2
    /* 9BDB4 800AB5B4 FC0082A3 */  sb         $v0, %gp_rel(D_800E6B88)($gp)
    /* 9BDB8 800AB5B8 7AA5020C */  jal        func_800A95E8
    /* 9BDBC 800AB5BC 00000000 */   nop
    /* 9BDC0 800AB5C0 C00080A7 */  sh         $zero, %gp_rel(D_800E6B4C)($gp)
    /* 9BDC4 800AB5C4 0FAC020C */  jal        func_800AB03C
    /* 9BDC8 800AB5C8 00000000 */   nop
    /* 9BDCC 800AB5CC C5A5020C */  jal        func_800A9714
    /* 9BDD0 800AB5D0 0C000434 */   ori       $a0, $zero, 0xC
    /* 9BDD4 800AB5D4 38A6020C */  jal        func_800A98E0
    /* 9BDD8 800AB5D8 0C000434 */   ori       $a0, $zero, 0xC
    /* 9BDDC 800AB5DC 0D80023C */  lui        $v0, %hi(D_800CE750)
    /* 9BDE0 800AB5E0 50E74294 */  lhu        $v0, %lo(D_800CE750)($v0)
    /* 9BDE4 800AB5E4 500080A7 */  sh         $zero, %gp_rel(D_800E6ADC)($gp)
    /* 9BDE8 800AB5E8 4A0080A7 */  sh         $zero, %gp_rel(D_800E6AD6)($gp)
    /* 9BDEC 800AB5EC E00082A7 */  sh         $v0, %gp_rel(D_800E6B6C)($gp)
    /* 9BDF0 800AB5F0 8000BF8F */  lw         $ra, 0x80($sp)
    /* 9BDF4 800AB5F4 7C00B78F */  lw         $s7, 0x7C($sp)
    /* 9BDF8 800AB5F8 7800B68F */  lw         $s6, 0x78($sp)
    /* 9BDFC 800AB5FC 7400B58F */  lw         $s5, 0x74($sp)
    /* 9BE00 800AB600 7000B48F */  lw         $s4, 0x70($sp)
    /* 9BE04 800AB604 6C00B38F */  lw         $s3, 0x6C($sp)
    /* 9BE08 800AB608 6800B28F */  lw         $s2, 0x68($sp)
    /* 9BE0C 800AB60C 6400B18F */  lw         $s1, 0x64($sp)
    /* 9BE10 800AB610 6000B08F */  lw         $s0, 0x60($sp)
    /* 9BE14 800AB614 8800BD27 */  addiu      $sp, $sp, 0x88
    /* 9BE18 800AB618 0800E003 */  jr         $ra
    /* 9BE1C 800AB61C 00000000 */   nop
endlabel func_800AB294
