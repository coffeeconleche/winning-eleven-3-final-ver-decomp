nonmatching func_8002B1E4, 0x1A8

glabel func_8002B1E4
    /* 1B9E4 8002B1E4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1B9E8 8002B1E8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1B9EC 8002B1EC 21808000 */  addu       $s0, $a0, $zero
    /* 1B9F0 8002B1F0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 1B9F4 8002B1F4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1B9F8 8002B1F8 99030292 */  lbu        $v0, 0x399($s0)
    /* 1B9FC 8002B1FC 02000586 */  lh         $a1, 0x2($s0)
    /* 1BA00 8002B200 02004014 */  bnez       $v0, .L8002B20C
    /* 1BA04 8002B204 2033A624 */   addiu     $a2, $a1, 0x3320
    /* 1BA08 8002B208 E0CCA624 */  addiu      $a2, $a1, -0x3320
  .L8002B20C:
    /* 1BA0C 8002B20C 06000286 */  lh         $v0, 0x6($s0)
    /* 1BA10 8002B210 00000000 */  nop
    /* 1BA14 8002B214 18004200 */  mult       $v0, $v0
    /* 1BA18 8002B218 99030392 */  lbu        $v1, 0x399($s0)
    /* 1BA1C 8002B21C 12200000 */  mflo       $a0
    /* 1BA20 8002B220 02006014 */  bnez       $v1, .L8002B22C
    /* 1BA24 8002B224 2033A224 */   addiu     $v0, $a1, 0x3320
    /* 1BA28 8002B228 E0CCA224 */  addiu      $v0, $a1, -0x3320
  .L8002B22C:
    /* 1BA2C 8002B22C 1800C200 */  mult       $a2, $v0
    /* 1BA30 8002B230 12380000 */  mflo       $a3
    /* 1BA34 8002B234 4AC4020C */  jal        func_800B1128
    /* 1BA38 8002B238 2120E400 */   addu      $a0, $a3, $a0
    /* 1BA3C 8002B23C 21884000 */  addu       $s1, $v0, $zero
    /* 1BA40 8002B240 96030492 */  lbu        $a0, 0x396($s0)
    /* 1BA44 8002B244 30000224 */  addiu      $v0, $zero, 0x30
    /* 1BA48 8002B248 14008214 */  bne        $a0, $v0, .L8002B29C
    /* 1BA4C 8002B24C 0108222E */   sltiu     $v0, $s1, 0x801
    /* 1BA50 8002B250 18003102 */  mult       $s1, $s1
    /* 1BA54 8002B254 A302023C */  lui        $v0, (0x2A3FFFF >> 16)
    /* 1BA58 8002B258 FFFF4234 */  ori        $v0, $v0, (0x2A3FFFF & 0xFFFF)
    /* 1BA5C 8002B25C 12180000 */  mflo       $v1
    /* 1BA60 8002B260 2B104300 */  sltu       $v0, $v0, $v1
    /* 1BA64 8002B264 09004010 */  beqz       $v0, .L8002B28C
    /* 1BA68 8002B268 FF03023C */   lui       $v0, (0x3FFFFFF >> 16)
    /* 1BA6C 8002B26C FFFF4234 */  ori        $v0, $v0, (0x3FFFFFF & 0xFFFF)
    /* 1BA70 8002B270 2B104300 */  sltu       $v0, $v0, $v1
    /* 1BA74 8002B274 05004014 */  bnez       $v0, .L8002B28C
    /* 1BA78 8002B278 00000000 */   nop
    /* 1BA7C 8002B27C AE79000C */  jal        func_8001E6B8
    /* 1BA80 8002B280 02000424 */   addiu     $a0, $zero, 0x2
    /* 1BA84 8002B284 D8AC0008 */  j          .L8002B360
    /* 1BA88 8002B288 0A004324 */   addiu     $v1, $v0, 0xA
  .L8002B28C:
    /* 1BA8C 8002B28C AE79000C */  jal        func_8001E6B8
    /* 1BA90 8002B290 02000424 */   addiu     $a0, $zero, 0x2
    /* 1BA94 8002B294 D8AC0008 */  j          .L8002B360
    /* 1BA98 8002B298 0B004324 */   addiu     $v1, $v0, 0xB
  .L8002B29C:
    /* 1BA9C 8002B29C 06004010 */  beqz       $v0, .L8002B2B8
    /* 1BAA0 8002B2A0 00000000 */   nop
    /* 1BAA4 8002B2A4 AE79000C */  jal        func_8001E6B8
    /* 1BAA8 8002B2A8 04000424 */   addiu     $a0, $zero, 0x4
    /* 1BAAC 8002B2AC FBFF0324 */  addiu      $v1, $zero, -0x5
    /* 1BAB0 8002B2B0 DDAC0008 */  j          .L8002B374
    /* 1BAB4 8002B2B4 23106200 */   subu      $v0, $v1, $v0
  .L8002B2B8:
    /* 1BAB8 8002B2B8 04000224 */  addiu      $v0, $zero, 0x4
    /* 1BABC 8002B2BC 1D008214 */  bne        $a0, $v0, .L8002B334
    /* 1BAC0 8002B2C0 00F83126 */   addiu     $s1, $s1, -0x800
    /* 1BAC4 8002B2C4 AE79000C */  jal        func_8001E6B8
    /* 1BAC8 8002B2C8 03000424 */   addiu     $a0, $zero, 0x3
    /* 1BACC 8002B2CC 05004014 */  bnez       $v0, .L8002B2E4
    /* 1BAD0 8002B2D0 00000000 */   nop
    /* 1BAD4 8002B2D4 AE79000C */  jal        func_8001E6B8
    /* 1BAD8 8002B2D8 04000424 */   addiu     $a0, $zero, 0x4
    /* 1BADC 8002B2DC C8AC0008 */  j          .L8002B320
    /* 1BAE0 8002B2E0 04004324 */   addiu     $v1, $v0, 0x4
  .L8002B2E4:
    /* 1BAE4 8002B2E4 AE79000C */  jal        func_8001E6B8
    /* 1BAE8 8002B2E8 04000424 */   addiu     $a0, $zero, 0x4
    /* 1BAEC 8002B2EC 40000424 */  addiu      $a0, $zero, 0x40
    /* 1BAF0 8002B2F0 AE79000C */  jal        func_8001E6B8
    /* 1BAF4 8002B2F4 21804000 */   addu      $s0, $v0, $zero
    /* 1BAF8 8002B2F8 00020324 */  addiu      $v1, $zero, 0x200
    /* 1BAFC 8002B2FC 23186200 */  subu       $v1, $v1, $v0
    /* 1BB00 8002B300 1B002302 */  divu       $zero, $s1, $v1
    /* 1BB04 8002B304 02006014 */  bnez       $v1, .L8002B310
    /* 1BB08 8002B308 00000000 */   nop
    /* 1BB0C 8002B30C 0D000700 */  break      7
  .L8002B310:
    /* 1BB10 8002B310 12180000 */  mflo       $v1
    /* 1BB14 8002B314 00000000 */  nop
    /* 1BB18 8002B318 04006324 */  addiu      $v1, $v1, 0x4
    /* 1BB1C 8002B31C 21180302 */  addu       $v1, $s0, $v1
  .L8002B320:
    /* 1BB20 8002B320 0E006228 */  slti       $v0, $v1, 0xE
    /* 1BB24 8002B324 0F004014 */  bnez       $v0, .L8002B364
    /* 1BB28 8002B328 11006228 */   slti      $v0, $v1, 0x11
    /* 1BB2C 8002B32C D8AC0008 */  j          .L8002B360
    /* 1BB30 8002B330 0D000324 */   addiu     $v1, $zero, 0xD
  .L8002B334:
    /* 1BB34 8002B334 AE79000C */  jal        func_8001E6B8
    /* 1BB38 8002B338 40000424 */   addiu     $a0, $zero, 0x40
    /* 1BB3C 8002B33C 80010324 */  addiu      $v1, $zero, 0x180
    /* 1BB40 8002B340 23186200 */  subu       $v1, $v1, $v0
    /* 1BB44 8002B344 1B002302 */  divu       $zero, $s1, $v1
    /* 1BB48 8002B348 02006014 */  bnez       $v1, .L8002B354
    /* 1BB4C 8002B34C 00000000 */   nop
    /* 1BB50 8002B350 0D000700 */  break      7
  .L8002B354:
    /* 1BB54 8002B354 12180000 */  mflo       $v1
    /* 1BB58 8002B358 00000000 */  nop
    /* 1BB5C 8002B35C FDFF6324 */  addiu      $v1, $v1, -0x3
  .L8002B360:
    /* 1BB60 8002B360 11006228 */  slti       $v0, $v1, 0x11
  .L8002B364:
    /* 1BB64 8002B364 03004014 */  bnez       $v0, .L8002B374
    /* 1BB68 8002B368 21106000 */   addu      $v0, $v1, $zero
    /* 1BB6C 8002B36C 10000324 */  addiu      $v1, $zero, 0x10
    /* 1BB70 8002B370 21106000 */  addu       $v0, $v1, $zero
  .L8002B374:
    /* 1BB74 8002B374 1800BF8F */  lw         $ra, 0x18($sp)
    /* 1BB78 8002B378 1400B18F */  lw         $s1, 0x14($sp)
    /* 1BB7C 8002B37C 1000B08F */  lw         $s0, 0x10($sp)
    /* 1BB80 8002B380 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1BB84 8002B384 0800E003 */  jr         $ra
    /* 1BB88 8002B388 00000000 */   nop
endlabel func_8002B1E4
