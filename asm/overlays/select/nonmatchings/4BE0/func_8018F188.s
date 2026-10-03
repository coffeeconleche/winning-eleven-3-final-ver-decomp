nonmatching func_8018F188, 0x168

glabel func_8018F188
    /* 6210 8018F188 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 6214 8018F18C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 6218 8018F190 21808000 */  addu       $s0, $a0, $zero
    /* 621C 8018F194 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 6220 8018F198 1980053C */  lui        $a1, %hi(D_80188FD8)
    /* 6224 8018F19C D88FA524 */  addiu      $a1, $a1, %lo(D_80188FD8)
    /* 6228 8018F1A0 0300A288 */  lwl        $v0, 0x3($a1)
    /* 622C 8018F1A4 0000A298 */  lwr        $v0, 0x0($a1)
    /* 6230 8018F1A8 0700A388 */  lwl        $v1, 0x7($a1)
    /* 6234 8018F1AC 0400A398 */  lwr        $v1, 0x4($a1)
    /* 6238 8018F1B0 1300A2AB */  swl        $v0, 0x13($sp)
    /* 623C 8018F1B4 1000A2BB */  swr        $v0, 0x10($sp)
    /* 6240 8018F1B8 1700A3AB */  swl        $v1, 0x17($sp)
    /* 6244 8018F1BC 1400A3BB */  swr        $v1, 0x14($sp)
    /* 6248 8018F1C0 1E80063C */  lui        $a2, %hi(D_801DA05C)
    /* 624C 8018F1C4 5CA0C68C */  lw         $a2, %lo(D_801DA05C)($a2)
    /* 6250 8018F1C8 00000000 */  nop
    /* 6254 8018F1CC 0100C224 */  addiu      $v0, $a2, 0x1
    /* 6258 8018F1D0 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 625C 8018F1D4 5CA022AC */  sw         $v0, %lo(D_801DA05C)($at)
    /* 6260 8018F1D8 0A00C228 */  slti       $v0, $a2, 0xA
    /* 6264 8018F1DC 07004010 */  beqz       $v0, .L8018F1FC
    /* 6268 8018F1E0 1000A427 */   addiu     $a0, $sp, 0x10
    /* 626C 8018F1E4 3C00C01C */  bgtz       $a2, .L8018F2D8
    /* 6270 8018F1E8 00000000 */   nop
    /* 6274 8018F1EC 1500C010 */  beqz       $a2, .L8018F244
    /* 6278 8018F1F0 21280000 */   addu      $a1, $zero, $zero
    /* 627C 8018F1F4 B73C0608 */  j          .L8018F2DC
    /* 6280 8018F1F8 00000000 */   nop
  .L8018F1FC:
    /* 6284 8018F1FC 0A000224 */  addiu      $v0, $zero, 0xA
    /* 6288 8018F200 3600C214 */  bne        $a2, $v0, .L8018F2DC
    /* 628C 8018F204 21280000 */   addu      $a1, $zero, $zero
    /* 6290 8018F208 21300000 */  addu       $a2, $zero, $zero
    /* 6294 8018F20C AEB9020C */  jal        func_800AE6B8
    /* 6298 8018F210 21380000 */   addu      $a3, $zero, $zero
    /* 629C 8018F214 4DB9020C */  jal        func_800AE534
    /* 62A0 8018F218 21200000 */   addu      $a0, $zero, $zero
    /* 62A4 8018F21C FF000232 */  andi       $v0, $s0, 0xFF
    /* 62A8 8018F220 03004010 */  beqz       $v0, .L8018F230
    /* 62AC 8018F224 80010424 */   addiu     $a0, $zero, 0x180
    /* 62B0 8018F228 8D3C0608 */  j          .L8018F234
    /* 62B4 8018F22C E0010524 */   addiu     $a1, $zero, 0x1E0
  .L8018F230:
    /* 62B8 8018F230 F0000524 */  addiu      $a1, $zero, 0xF0
  .L8018F234:
    /* 62BC 8018F234 DD77000C */  jal        func_8001DF74
    /* 62C0 8018F238 00000000 */   nop
    /* 62C4 8018F23C B73C0608 */  j          .L8018F2DC
    /* 62C8 8018F240 01000224 */   addiu     $v0, $zero, 0x1
  .L8018F244:
    /* 62CC 8018F244 21300000 */  addu       $a2, $zero, $zero
    /* 62D0 8018F248 AEB9020C */  jal        func_800AE6B8
    /* 62D4 8018F24C 21380000 */   addu      $a3, $zero, $zero
    /* 62D8 8018F250 4DB9020C */  jal        func_800AE534
    /* 62DC 8018F254 21200000 */   addu      $a0, $zero, $zero
    /* 62E0 8018F258 153F010C */  jal        func_8004FC54
    /* 62E4 8018F25C 21200000 */   addu      $a0, $zero, $zero
    /* 62E8 8018F260 39000324 */  addiu      $v1, $zero, 0x39
    /* 62EC 8018F264 1080043C */  lui        $a0, %hi(D_800FF748)
    /* 62F0 8018F268 48F78424 */  addiu      $a0, $a0, %lo(D_800FF748)
    /* 62F4 8018F26C E8088224 */  addiu      $v0, $a0, 0x8E8
  .L8018F270:
    /* 62F8 8018F270 C45D40A0 */  sb         $zero, 0x5DC4($v0)
    /* 62FC 8018F274 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 6300 8018F278 FDFF6104 */  bgez       $v1, .L8018F270
    /* 6304 8018F27C D8FF4224 */   addiu     $v0, $v0, -0x28
    /* 6308 8018F280 1E80033C */  lui        $v1, %hi(D_801D8F90)
    /* 630C 8018F284 908F6324 */  addiu      $v1, $v1, %lo(D_801D8F90)
    /* 6310 8018F288 1F000224 */  addiu      $v0, $zero, 0x1F
  .L8018F28C:
    /* 6314 8018F28C 100060A0 */  sb         $zero, 0x10($v1)
    /* 6318 8018F290 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 631C 8018F294 FDFF4104 */  bgez       $v0, .L8018F28C
    /* 6320 8018F298 18006324 */   addiu     $v1, $v1, 0x18
    /* 6324 8018F29C 1E80033C */  lui        $v1, %hi(D_801D92A0)
    /* 6328 8018F2A0 A0926324 */  addiu      $v1, $v1, %lo(D_801D92A0)
    /* 632C 8018F2A4 13000224 */  addiu      $v0, $zero, 0x13
  .L8018F2A8:
    /* 6330 8018F2A8 030060A0 */  sb         $zero, 0x3($v1)
    /* 6334 8018F2AC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 6338 8018F2B0 FDFF4104 */  bgez       $v0, .L8018F2A8
    /* 633C 8018F2B4 1C006324 */   addiu     $v1, $v1, 0x1C
    /* 6340 8018F2B8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6344 8018F2BC 21088100 */  addu       $at, $a0, $at
    /* 6348 8018F2C0 21AC20A0 */  sb         $zero, -0x53DF($at)
    /* 634C 8018F2C4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6350 8018F2C8 21088100 */  addu       $at, $a0, $at
    /* 6354 8018F2CC 20AC20A0 */  sb         $zero, -0x53E0($at)
    /* 6358 8018F2D0 801F013C */  lui        $at, (0x1F8002A2 >> 16)
    /* 635C 8018F2D4 A20220A0 */  sb         $zero, (0x1F8002A2 & 0xFFFF)($at)
  .L8018F2D8:
    /* 6360 8018F2D8 21100000 */  addu       $v0, $zero, $zero
  .L8018F2DC:
    /* 6364 8018F2DC 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 6368 8018F2E0 1800B08F */  lw         $s0, 0x18($sp)
    /* 636C 8018F2E4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 6370 8018F2E8 0800E003 */  jr         $ra
    /* 6374 8018F2EC 00000000 */   nop
endlabel func_8018F188
