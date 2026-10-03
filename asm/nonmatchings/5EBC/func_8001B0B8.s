/* Handwritten function */
nonmatching func_8001B0B8, 0x7DC

glabel func_8001B0B8
    /* B8B8 8001B0B8 70FFBD27 */  addiu      $sp, $sp, -0x90
    /* B8BC 8001B0BC 8C00BFAF */  sw         $ra, 0x8C($sp)
    /* B8C0 8001B0C0 8800BEAF */  sw         $fp, 0x88($sp)
    /* B8C4 8001B0C4 8400B7AF */  sw         $s7, 0x84($sp)
    /* B8C8 8001B0C8 8000B6AF */  sw         $s6, 0x80($sp)
    /* B8CC 8001B0CC 7C00B5AF */  sw         $s5, 0x7C($sp)
    /* B8D0 8001B0D0 7800B4AF */  sw         $s4, 0x78($sp)
    /* B8D4 8001B0D4 7400B3AF */  sw         $s3, 0x74($sp)
    /* B8D8 8001B0D8 7000B2AF */  sw         $s2, 0x70($sp)
    /* B8DC 8001B0DC 6C00B1AF */  sw         $s1, 0x6C($sp)
    /* B8E0 8001B0E0 6800B0AF */  sw         $s0, 0x68($sp)
    /* B8E4 8001B0E4 0180053C */  lui        $a1, %hi(D_800104B8)
    /* B8E8 8001B0E8 B804A524 */  addiu      $a1, $a1, %lo(D_800104B8)
    /* B8EC 8001B0EC 0300A288 */  lwl        $v0, 0x3($a1)
    /* B8F0 8001B0F0 0000A298 */  lwr        $v0, 0x0($a1)
    /* B8F4 8001B0F4 0700A388 */  lwl        $v1, 0x7($a1)
    /* B8F8 8001B0F8 0400A398 */  lwr        $v1, 0x4($a1)
    /* B8FC 8001B0FC 0B00A488 */  lwl        $a0, 0xB($a1)
    /* B900 8001B100 0800A498 */  lwr        $a0, 0x8($a1)
    /* B904 8001B104 1300A2AB */  swl        $v0, 0x13($sp)
    /* B908 8001B108 1000A2BB */  swr        $v0, 0x10($sp)
    /* B90C 8001B10C 1700A3AB */  swl        $v1, 0x17($sp)
    /* B910 8001B110 1400A3BB */  swr        $v1, 0x14($sp)
    /* B914 8001B114 1B00A4AB */  swl        $a0, 0x1B($sp)
    /* B918 8001B118 1800A4BB */  swr        $a0, 0x18($sp)
    /* B91C 8001B11C 0F00A288 */  lwl        $v0, 0xF($a1)
    /* B920 8001B120 0C00A298 */  lwr        $v0, 0xC($a1)
    /* B924 8001B124 1300A388 */  lwl        $v1, 0x13($a1)
    /* B928 8001B128 1000A398 */  lwr        $v1, 0x10($a1)
    /* B92C 8001B12C 1700A488 */  lwl        $a0, 0x17($a1)
    /* B930 8001B130 1400A498 */  lwr        $a0, 0x14($a1)
    /* B934 8001B134 1F00A2AB */  swl        $v0, 0x1F($sp)
    /* B938 8001B138 1C00A2BB */  swr        $v0, 0x1C($sp)
    /* B93C 8001B13C 2300A3AB */  swl        $v1, 0x23($sp)
    /* B940 8001B140 2000A3BB */  swr        $v1, 0x20($sp)
    /* B944 8001B144 2700A4AB */  swl        $a0, 0x27($sp)
    /* B948 8001B148 2400A4BB */  swr        $a0, 0x24($sp)
    /* B94C 8001B14C 1B00A288 */  lwl        $v0, 0x1B($a1)
    /* B950 8001B150 1800A298 */  lwr        $v0, 0x18($a1)
    /* B954 8001B154 1F00A388 */  lwl        $v1, 0x1F($a1)
    /* B958 8001B158 1C00A398 */  lwr        $v1, 0x1C($a1)
    /* B95C 8001B15C 2B00A2AB */  swl        $v0, 0x2B($sp)
    /* B960 8001B160 2800A2BB */  swr        $v0, 0x28($sp)
    /* B964 8001B164 2F00A3AB */  swl        $v1, 0x2F($sp)
    /* B968 8001B168 2C00A3BB */  swr        $v1, 0x2C($sp)
    /* B96C 8001B16C 0180053C */  lui        $a1, %hi(D_800104D8)
    /* B970 8001B170 D804A524 */  addiu      $a1, $a1, %lo(D_800104D8)
    /* B974 8001B174 0300A288 */  lwl        $v0, 0x3($a1)
    /* B978 8001B178 0000A298 */  lwr        $v0, 0x0($a1)
    /* B97C 8001B17C 0700A388 */  lwl        $v1, 0x7($a1)
    /* B980 8001B180 0400A398 */  lwr        $v1, 0x4($a1)
    /* B984 8001B184 0B00A488 */  lwl        $a0, 0xB($a1)
    /* B988 8001B188 0800A498 */  lwr        $a0, 0x8($a1)
    /* B98C 8001B18C 3300A2AB */  swl        $v0, 0x33($sp)
    /* B990 8001B190 3000A2BB */  swr        $v0, 0x30($sp)
    /* B994 8001B194 3700A3AB */  swl        $v1, 0x37($sp)
    /* B998 8001B198 3400A3BB */  swr        $v1, 0x34($sp)
    /* B99C 8001B19C 3B00A4AB */  swl        $a0, 0x3B($sp)
    /* B9A0 8001B1A0 3800A4BB */  swr        $a0, 0x38($sp)
    /* B9A4 8001B1A4 0F00A288 */  lwl        $v0, 0xF($a1)
    /* B9A8 8001B1A8 0C00A298 */  lwr        $v0, 0xC($a1)
    /* B9AC 8001B1AC 1300A388 */  lwl        $v1, 0x13($a1)
    /* B9B0 8001B1B0 1000A398 */  lwr        $v1, 0x10($a1)
    /* B9B4 8001B1B4 1700A488 */  lwl        $a0, 0x17($a1)
    /* B9B8 8001B1B8 1400A498 */  lwr        $a0, 0x14($a1)
    /* B9BC 8001B1BC 3F00A2AB */  swl        $v0, 0x3F($sp)
    /* B9C0 8001B1C0 3C00A2BB */  swr        $v0, 0x3C($sp)
    /* B9C4 8001B1C4 4300A3AB */  swl        $v1, 0x43($sp)
    /* B9C8 8001B1C8 4000A3BB */  swr        $v1, 0x40($sp)
    /* B9CC 8001B1CC 4700A4AB */  swl        $a0, 0x47($sp)
    /* B9D0 8001B1D0 4400A4BB */  swr        $a0, 0x44($sp)
    /* B9D4 8001B1D4 1B00A288 */  lwl        $v0, 0x1B($a1)
    /* B9D8 8001B1D8 1800A298 */  lwr        $v0, 0x18($a1)
    /* B9DC 8001B1DC 1F00A388 */  lwl        $v1, 0x1F($a1)
    /* B9E0 8001B1E0 1C00A398 */  lwr        $v1, 0x1C($a1)
    /* B9E4 8001B1E4 4B00A2AB */  swl        $v0, 0x4B($sp)
    /* B9E8 8001B1E8 4800A2BB */  swr        $v0, 0x48($sp)
    /* B9EC 8001B1EC 4F00A3AB */  swl        $v1, 0x4F($sp)
    /* B9F0 8001B1F0 4C00A3BB */  swr        $v1, 0x4C($sp)
    /* B9F4 8001B1F4 801F033C */  lui        $v1, (0x1F800298 >> 16)
    /* B9F8 8001B1F8 98026390 */  lbu        $v1, (0x1F800298 & 0xFFFF)($v1)
    /* B9FC 8001B1FC 04000224 */  addiu      $v0, $zero, 0x4
    /* BA00 8001B200 0D006214 */  bne        $v1, $v0, .L8001B238
    /* BA04 8001B204 801F143C */   lui       $s4, (0x1F80029D >> 16)
    /* BA08 8001B208 5555023C */  lui        $v0, (0x55555556 >> 16)
    /* BA0C 8001B20C 801F043C */  lui        $a0, (0x1F800290 >> 16)
    /* BA10 8001B210 9002848C */  lw         $a0, (0x1F800290 & 0xFFFF)($a0)
    /* BA14 8001B214 56554234 */  ori        $v0, $v0, (0x55555556 & 0xFFFF)
    /* BA18 8001B218 18008200 */  mult       $a0, $v0
    /* BA1C 8001B21C C31F0400 */  sra        $v1, $a0, 31
    /* BA20 8001B220 10400000 */  mfhi       $t0
    /* BA24 8001B224 23180301 */  subu       $v1, $t0, $v1
    /* BA28 8001B228 40100300 */  sll        $v0, $v1, 1
    /* BA2C 8001B22C 21104300 */  addu       $v0, $v0, $v1
    /* BA30 8001B230 62008214 */  bne        $a0, $v0, .L8001B3BC
    /* BA34 8001B234 21980000 */   addu      $s3, $zero, $zero
  .L8001B238:
    /* BA38 8001B238 21980000 */  addu       $s3, $zero, $zero
    /* BA3C 8001B23C 1000A727 */  addiu      $a3, $sp, 0x10
    /* BA40 8001B240 1080053C */  lui        $a1, %hi(D_800FF748)
    /* BA44 8001B244 48F7A524 */  addiu      $a1, $a1, %lo(D_800FF748)
  .L8001B248:
    /* BA48 8001B248 1180023C */  lui        $v0, %hi(D_8010A36C)
    /* BA4C 8001B24C 6CA3428C */  lw         $v0, %lo(D_8010A36C)($v0)
    /* BA50 8001B250 21186002 */  addu       $v1, $s3, $zero
    /* BA54 8001B254 02006106 */  bgez       $s3, .L8001B260
    /* BA58 8001B258 23200200 */   negu      $a0, $v0
    /* BA5C 8001B25C 07006326 */  addiu      $v1, $s3, 0x7
  .L8001B260:
    /* BA60 8001B260 C3180300 */  sra        $v1, $v1, 3
    /* BA64 8001B264 C0100300 */  sll        $v0, $v1, 3
    /* BA68 8001B268 23106202 */  subu       $v0, $s3, $v0
    /* BA6C 8001B26C 21108200 */  addu       $v0, $a0, $v0
    /* BA70 8001B270 21104300 */  addu       $v0, $v0, $v1
    /* BA74 8001B274 0F004630 */  andi       $a2, $v0, 0xF
    /* BA78 8001B278 40200600 */  sll        $a0, $a2, 1
    /* BA7C 8001B27C 21208700 */  addu       $a0, $a0, $a3
    /* BA80 8001B280 0100013C */  lui        $at, (0x10000 >> 16)
    /* BA84 8001B284 2108A100 */  addu       $at, $a1, $at
    /* BA88 8001B288 A4832294 */  lhu        $v0, -0x7C5C($at)
    /* BA8C 8001B28C 00008394 */  lhu        $v1, 0x0($a0)
    /* BA90 8001B290 00000000 */  nop
    /* BA94 8001B294 21104300 */  addu       $v0, $v0, $v1
    /* BA98 8001B298 0100C324 */  addiu      $v1, $a2, 0x1
    /* BA9C 8001B29C 0100013C */  lui        $at, (0x10000 >> 16)
    /* BAA0 8001B2A0 2108A100 */  addu       $at, $a1, $at
    /* BAA4 8001B2A4 A48322A4 */  sh         $v0, -0x7C5C($at)
    /* BAA8 8001B2A8 20008294 */  lhu        $v0, 0x20($a0)
    /* BAAC 8001B2AC 0100013C */  lui        $at, (0x10000 >> 16)
    /* BAB0 8001B2B0 2108A100 */  addu       $at, $a1, $at
    /* BAB4 8001B2B4 A88322A4 */  sh         $v0, -0x7C58($at)
    /* BAB8 8001B2B8 02006104 */  bgez       $v1, .L8001B2C4
    /* BABC 8001B2BC 21206000 */   addu      $a0, $v1, $zero
    /* BAC0 8001B2C0 1000C424 */  addiu      $a0, $a2, 0x10
  .L8001B2C4:
    /* BAC4 8001B2C4 30008430 */  andi       $a0, $a0, 0x30
    /* BAC8 8001B2C8 23206400 */  subu       $a0, $v1, $a0
    /* BACC 8001B2CC 40200400 */  sll        $a0, $a0, 1
    /* BAD0 8001B2D0 21208700 */  addu       $a0, $a0, $a3
    /* BAD4 8001B2D4 0100013C */  lui        $at, (0x10000 >> 16)
    /* BAD8 8001B2D8 2108A100 */  addu       $at, $a1, $at
    /* BADC 8001B2DC AC832294 */  lhu        $v0, -0x7C54($at)
    /* BAE0 8001B2E0 00008394 */  lhu        $v1, 0x0($a0)
    /* BAE4 8001B2E4 00000000 */  nop
    /* BAE8 8001B2E8 21104300 */  addu       $v0, $v0, $v1
    /* BAEC 8001B2EC 0100013C */  lui        $at, (0x10000 >> 16)
    /* BAF0 8001B2F0 2108A100 */  addu       $at, $a1, $at
    /* BAF4 8001B2F4 AC8322A4 */  sh         $v0, -0x7C54($at)
    /* BAF8 8001B2F8 20008294 */  lhu        $v0, 0x20($a0)
    /* BAFC 8001B2FC 0100013C */  lui        $at, (0x10000 >> 16)
    /* BB00 8001B300 2108A100 */  addu       $at, $a1, $at
    /* BB04 8001B304 B08322A4 */  sh         $v0, -0x7C50($at)
    /* BB08 8001B308 0100013C */  lui        $at, (0x10000 >> 16)
    /* BB0C 8001B30C 2108A100 */  addu       $at, $a1, $at
    /* BB10 8001B310 B4832294 */  lhu        $v0, -0x7C4C($at)
    /* BB14 8001B314 00008394 */  lhu        $v1, 0x0($a0)
    /* BB18 8001B318 00000000 */  nop
    /* BB1C 8001B31C 21104300 */  addu       $v0, $v0, $v1
    /* BB20 8001B320 0200C324 */  addiu      $v1, $a2, 0x2
    /* BB24 8001B324 0100013C */  lui        $at, (0x10000 >> 16)
    /* BB28 8001B328 2108A100 */  addu       $at, $a1, $at
    /* BB2C 8001B32C B48322A4 */  sh         $v0, -0x7C4C($at)
    /* BB30 8001B330 20008294 */  lhu        $v0, 0x20($a0)
    /* BB34 8001B334 0100013C */  lui        $at, (0x10000 >> 16)
    /* BB38 8001B338 2108A100 */  addu       $at, $a1, $at
    /* BB3C 8001B33C B88322A4 */  sh         $v0, -0x7C48($at)
    /* BB40 8001B340 02006104 */  bgez       $v1, .L8001B34C
    /* BB44 8001B344 21206000 */   addu      $a0, $v1, $zero
    /* BB48 8001B348 1100C424 */  addiu      $a0, $a2, 0x11
  .L8001B34C:
    /* BB4C 8001B34C 30008230 */  andi       $v0, $a0, 0x30
    /* BB50 8001B350 23106200 */  subu       $v0, $v1, $v0
    /* BB54 8001B354 40100200 */  sll        $v0, $v0, 1
    /* BB58 8001B358 21104700 */  addu       $v0, $v0, $a3
    /* BB5C 8001B35C 0100013C */  lui        $at, (0x10000 >> 16)
    /* BB60 8001B360 2108A100 */  addu       $at, $a1, $at
    /* BB64 8001B364 BC832394 */  lhu        $v1, -0x7C44($at)
    /* BB68 8001B368 00004494 */  lhu        $a0, 0x0($v0)
    /* BB6C 8001B36C 00000000 */  nop
    /* BB70 8001B370 21186400 */  addu       $v1, $v1, $a0
    /* BB74 8001B374 0100013C */  lui        $at, (0x10000 >> 16)
    /* BB78 8001B378 2108A100 */  addu       $at, $a1, $at
    /* BB7C 8001B37C BC8323A4 */  sh         $v1, -0x7C44($at)
    /* BB80 8001B380 20004294 */  lhu        $v0, 0x20($v0)
    /* BB84 8001B384 01007326 */  addiu      $s3, $s3, 0x1
    /* BB88 8001B388 0100013C */  lui        $at, (0x10000 >> 16)
    /* BB8C 8001B38C 2108A100 */  addu       $at, $a1, $at
    /* BB90 8001B390 C08322A4 */  sh         $v0, -0x7C40($at)
    /* BB94 8001B394 2800622A */  slti       $v0, $s3, 0x28
    /* BB98 8001B398 ABFF4014 */  bnez       $v0, .L8001B248
    /* BB9C 8001B39C 2000A524 */   addiu     $a1, $a1, 0x20
    /* BBA0 8001B3A0 1180023C */  lui        $v0, %hi(D_8010A36C)
    /* BBA4 8001B3A4 6CA3428C */  lw         $v0, %lo(D_8010A36C)($v0)
    /* BBA8 8001B3A8 00000000 */  nop
    /* BBAC 8001B3AC 01004224 */  addiu      $v0, $v0, 0x1
    /* BBB0 8001B3B0 1180013C */  lui        $at, %hi(D_8010A36C)
    /* BBB4 8001B3B4 6CA322AC */  sw         $v0, %lo(D_8010A36C)($at)
    /* BBB8 8001B3B8 21980000 */  addu       $s3, $zero, $zero
  .L8001B3BC:
    /* BBBC 8001B3BC 04019726 */  addiu      $s7, $s4, %lo(D_1F800104)
    /* BBC0 8001B3C0 C8018826 */  addiu      $t0, $s4, %lo(D_1F8001C8)
    /* BBC4 8001B3C4 5000A8AF */  sw         $t0, 0x50($sp)
    /* BBC8 8001B3C8 1080083C */  lui        $t0, %hi(D_800FF748)
    /* BBCC 8001B3CC 48F70825 */  addiu      $t0, $t0, %lo(D_800FF748)
    /* BBD0 8001B3D0 5800A8AF */  sw         $t0, 0x58($sp)
    /* BBD4 8001B3D4 5800BE8F */  lw         $fp, 0x58($sp)
  .L8001B3D8:
    /* BBD8 8001B3D8 1080083C */  lui        $t0, %hi(D_800FF748)
    /* BBDC 8001B3DC 48F70825 */  addiu      $t0, $t0, %lo(D_800FF748)
    /* BBE0 8001B3E0 21101301 */  addu       $v0, $t0, $s3
    /* BBE4 8001B3E4 0100013C */  lui        $at, (0x10000 >> 16)
    /* BBE8 8001B3E8 21084100 */  addu       $at, $v0, $at
    /* BBEC 8001B3EC 20AC2290 */  lbu        $v0, -0x53E0($at)
    /* BBF0 8001B3F0 00000000 */  nop
    /* BBF4 8001B3F4 13014010 */  beqz       $v0, .L8001B844
    /* BBF8 8001B3F8 44AC0534 */   ori       $a1, $zero, 0xAC44
    /* BBFC 8001B3FC 5800A88F */  lw         $t0, 0x58($sp)
    /* BC00 8001B400 0100013C */  lui        $at, (0x10000 >> 16)
    /* BC04 8001B404 21080101 */  addu       $at, $t0, $at
    /* BC08 8001B408 34AC2294 */  lhu        $v0, -0x53CC($at)
    /* BC0C 8001B40C 00000000 */  nop
    /* BC10 8001B410 240182A6 */  sh         $v0, (0x1F800124 & 0xFFFF)($s4)
    /* BC14 8001B414 0100013C */  lui        $at, (0x10000 >> 16)
    /* BC18 8001B418 21080101 */  addu       $at, $t0, $at
    /* BC1C 8001B41C 36AC2294 */  lhu        $v0, -0x53CA($at)
    /* BC20 8001B420 00000000 */  nop
    /* BC24 8001B424 260182A6 */  sh         $v0, (0x1F800126 & 0xFFFF)($s4)
    /* BC28 8001B428 0100013C */  lui        $at, (0x10000 >> 16)
    /* BC2C 8001B42C 21080101 */  addu       $at, $t0, $at
    /* BC30 8001B430 38AC2294 */  lhu        $v0, -0x53C8($at)
    /* BC34 8001B434 00000000 */  nop
    /* BC38 8001B438 280182A6 */  sh         $v0, (0x1F800128 & 0xFFFF)($s4)
    /* BC3C 8001B43C 0100013C */  lui        $at, (0x10000 >> 16)
    /* BC40 8001B440 2108C103 */  addu       $at, $fp, $at
    /* BC44 8001B444 28AC2284 */  lh         $v0, -0x53D8($at)
    /* BC48 8001B448 00000000 */  nop
    /* BC4C 8001B44C 3C0182AE */  sw         $v0, (0x1F80013C & 0xFFFF)($s4)
    /* BC50 8001B450 0100013C */  lui        $at, (0x10000 >> 16)
    /* BC54 8001B454 2108C103 */  addu       $at, $fp, $at
    /* BC58 8001B458 2CAC2284 */  lh         $v0, -0x53D4($at)
    /* BC5C 8001B45C 00000000 */  nop
    /* BC60 8001B460 400182AE */  sw         $v0, (0x1F800140 & 0xFFFF)($s4)
    /* BC64 8001B464 0100013C */  lui        $at, (0x10000 >> 16)
    /* BC68 8001B468 2108C103 */  addu       $at, $fp, $at
    /* BC6C 8001B46C 30AC2284 */  lh         $v0, -0x53D0($at)
    /* BC70 8001B470 2128C503 */  addu       $a1, $fp, $a1
    /* BC74 8001B474 440182AE */  sw         $v0, (0x1F800144 & 0xFFFF)($s4)
    /* BC78 8001B478 0000A284 */  lh         $v0, 0x0($a1)
    /* BC7C 8001B47C 6666043C */  lui        $a0, (0x66666667 >> 16)
    /* BC80 8001B480 4C0182AE */  sw         $v0, (0x1F80014C & 0xFFFF)($s4)
    /* BC84 8001B484 0000A384 */  lh         $v1, 0x0($a1)
    /* BC88 8001B488 67668434 */  ori        $a0, $a0, (0x66666667 & 0xFFFF)
    /* BC8C 8001B48C 40100300 */  sll        $v0, $v1, 1
    /* BC90 8001B490 21104300 */  addu       $v0, $v0, $v1
    /* BC94 8001B494 40100200 */  sll        $v0, $v0, 1
    /* BC98 8001B498 18004400 */  mult       $v0, $a0
    /* BC9C 8001B49C 24018426 */  addiu      $a0, $s4, %lo(D_1F800124)
    /* BCA0 8001B4A0 C3170200 */  sra        $v0, $v0, 31
    /* BCA4 8001B4A4 10400000 */  mfhi       $t0
    /* BCA8 8001B4A8 43180800 */  sra        $v1, $t0, 1
    /* BCAC 8001B4AC 23186200 */  subu       $v1, $v1, $v0
    /* BCB0 8001B4B0 500183AE */  sw         $v1, (0x1F800150 & 0xFFFF)($s4)
    /* BCB4 8001B4B4 0000A284 */  lh         $v0, 0x0($a1)
    /* BCB8 8001B4B8 2128E002 */  addu       $a1, $s7, $zero
    /* BCBC 8001B4BC 22C5020C */  jal        func_800B1488
    /* BCC0 8001B4C0 540182AE */   sw        $v0, (0x1F800154 & 0xFFFF)($s4)
    /* BCC4 8001B4C4 2120E002 */  addu       $a0, $s7, $zero
    /* BCC8 8001B4C8 D2C4020C */  jal        func_800B1348
    /* BCCC 8001B4CC 4C018526 */   addiu     $a1, $s4, %lo(D_1F80014C)
    /* BCD0 8001B4D0 2120E002 */  addu       $a0, $s7, $zero
    /* BCD4 8001B4D4 C6C4020C */  jal        func_800B1318
    /* BCD8 8001B4D8 3C018526 */   addiu     $a1, $s4, %lo(D_1F80013C)
    /* BCDC 8001B4DC 5000A88F */  lw         $t0, 0x50($sp)
    /* BCE0 8001B4E0 00000000 */  nop
    /* BCE4 8001B4E4 00000C8D */  lw         $t4, 0x0($t0)
    /* BCE8 8001B4E8 04000D8D */  lw         $t5, 0x4($t0)
    /* BCEC 8001B4EC 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
    /* BCF0 8001B4F0 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
    /* BCF4 8001B4F4 08000C8D */  lw         $t4, 0x8($t0)
    /* BCF8 8001B4F8 0C000D8D */  lw         $t5, 0xC($t0)
    /* BCFC 8001B4FC 10000E8D */  lw         $t6, 0x10($t0)
    /* BD00 8001B500 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
    /* BD04 8001B504 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
    /* BD08 8001B508 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
    /* BD0C 8001B50C 0000EC96 */  lhu        $t4, 0x0($s7)
    /* BD10 8001B510 0600ED96 */  lhu        $t5, 0x6($s7)
    /* BD14 8001B514 0C00EE96 */  lhu        $t6, 0xC($s7)
    /* BD18 8001B518 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
    /* BD1C 8001B51C 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
    /* BD20 8001B520 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
    /* BD24 8001B524 00000000 */  nop
    /* BD28 8001B528 00000000 */  nop
    /* BD2C 8001B52C 12E0494A */  mvmva      1, 0, 3, 3, 0
    /* BD30 8001B530 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
    /* BD34 8001B534 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
    /* BD38 8001B538 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
    /* BD3C 8001B53C 0000ECA6 */  sh         $t4, 0x0($s7)
    /* BD40 8001B540 0600EDA6 */  sh         $t5, 0x6($s7)
    /* BD44 8001B544 0C00EEA6 */  sh         $t6, 0xC($s7)
    /* BD48 8001B548 06018226 */  addiu      $v0, $s4, %lo(D_1F800104 + 0x2)
    /* BD4C 8001B54C 00004C94 */  lhu        $t4, 0x0($v0)
    /* BD50 8001B550 06004D94 */  lhu        $t5, 0x6($v0)
    /* BD54 8001B554 0C004E94 */  lhu        $t6, 0xC($v0)
    /* BD58 8001B558 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
    /* BD5C 8001B55C 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
    /* BD60 8001B560 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
    /* BD64 8001B564 00000000 */  nop
    /* BD68 8001B568 00000000 */  nop
    /* BD6C 8001B56C 12E0494A */  mvmva      1, 0, 3, 3, 0
    /* BD70 8001B570 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
    /* BD74 8001B574 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
    /* BD78 8001B578 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
    /* BD7C 8001B57C 00004CA4 */  sh         $t4, 0x0($v0)
    /* BD80 8001B580 06004DA4 */  sh         $t5, 0x6($v0)
    /* BD84 8001B584 0C004EA4 */  sh         $t6, 0xC($v0)
    /* BD88 8001B588 08018226 */  addiu      $v0, $s4, %lo(D_1F800108)
    /* BD8C 8001B58C 00004C94 */  lhu        $t4, 0x0($v0)
    /* BD90 8001B590 06004D94 */  lhu        $t5, 0x6($v0)
    /* BD94 8001B594 0C004E94 */  lhu        $t6, 0xC($v0)
    /* BD98 8001B598 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
    /* BD9C 8001B59C 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
    /* BDA0 8001B5A0 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
    /* BDA4 8001B5A4 00000000 */  nop
    /* BDA8 8001B5A8 00000000 */  nop
    /* BDAC 8001B5AC 12E0494A */  mvmva      1, 0, 3, 3, 0
    /* BDB0 8001B5B0 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
    /* BDB4 8001B5B4 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
    /* BDB8 8001B5B8 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
    /* BDBC 8001B5BC 00004CA4 */  sh         $t4, 0x0($v0)
    /* BDC0 8001B5C0 06004DA4 */  sh         $t5, 0x6($v0)
    /* BDC4 8001B5C4 0C004EA4 */  sh         $t6, 0xC($v0)
    /* BDC8 8001B5C8 14000C8D */  lw         $t4, 0x14($t0)
    /* BDCC 8001B5CC 18000D8D */  lw         $t5, 0x18($t0)
    /* BDD0 8001B5D0 0028CC48 */  ctc2       $t4, $5 /* handwritten instruction */
    /* BDD4 8001B5D4 1C000E8D */  lw         $t6, 0x1C($t0)
    /* BDD8 8001B5D8 0030CD48 */  ctc2       $t5, $6 /* handwritten instruction */
    /* BDDC 8001B5DC 0038CE48 */  ctc2       $t6, $7 /* handwritten instruction */
    /* BDE0 8001B5E0 18018226 */  addiu      $v0, $s4, %lo(D_1F800118)
    /* BDE4 8001B5E4 04004D94 */  lhu        $t5, 0x4($v0)
    /* BDE8 8001B5E8 00004C94 */  lhu        $t4, 0x0($v0)
    /* BDEC 8001B5EC 006C0D00 */  sll        $t5, $t5, 16
    /* BDF0 8001B5F0 25608D01 */  or         $t4, $t4, $t5
    /* BDF4 8001B5F4 00008C48 */  mtc2       $t4, $0 /* handwritten instruction */
    /* BDF8 8001B5F8 080041C8 */  lwc2       $1, 0x8($v0)
    /* BDFC 8001B5FC 00000000 */  nop
    /* BE00 8001B600 00000000 */  nop
    /* BE04 8001B604 1200484A */  mvmva      1, 0, 0, 0, 0
    /* BE08 8001B608 000059E8 */  swc2       $25, 0x0($v0)
    /* BE0C 8001B60C 04005AE8 */  swc2       $26, 0x4($v0) /* handwritten instruction */
    /* BE10 8001B610 08005BE8 */  swc2       $27, 0x8($v0) /* handwritten instruction */
    /* BE14 8001B614 0000EC8E */  lw         $t4, 0x0($s7)
    /* BE18 8001B618 0400ED8E */  lw         $t5, 0x4($s7)
    /* BE1C 8001B61C 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
    /* BE20 8001B620 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
    /* BE24 8001B624 0800EC8E */  lw         $t4, 0x8($s7)
    /* BE28 8001B628 0C00ED8E */  lw         $t5, 0xC($s7)
    /* BE2C 8001B62C 1000EE8E */  lw         $t6, 0x10($s7)
    /* BE30 8001B630 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
    /* BE34 8001B634 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
    /* BE38 8001B638 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
    /* BE3C 8001B63C 1400EC8E */  lw         $t4, 0x14($s7)
    /* BE40 8001B640 1800ED8E */  lw         $t5, 0x18($s7)
    /* BE44 8001B644 0028CC48 */  ctc2       $t4, $5 /* handwritten instruction */
    /* BE48 8001B648 1C00EE8E */  lw         $t6, 0x1C($s7)
    /* BE4C 8001B64C 0030CD48 */  ctc2       $t5, $6 /* handwritten instruction */
    /* BE50 8001B650 0038CE48 */  ctc2       $t6, $7 /* handwritten instruction */
    /* BE54 8001B654 21A80000 */  addu       $s5, $zero, $zero
    /* BE58 8001B658 FF00163C */  lui        $s6, (0xFFFFFF >> 16)
    /* BE5C 8001B65C FFFFD636 */  ori        $s6, $s6, (0xFFFFFF & 0xFFFF)
    /* BE60 8001B660 00FF063C */  lui        $a2, (0xFF000000 >> 16)
    /* BE64 8001B664 9D028392 */  lbu        $v1, (0x1F80029D & 0xFFFF)($s4)
    /* BE68 8001B668 1080123C */  lui        $s2, %hi(D_800FF748)
    /* BE6C 8001B66C 48F75226 */  addiu      $s2, $s2, %lo(D_800FF748)
    /* BE70 8001B670 FF006330 */  andi       $v1, $v1, 0xFF
    /* BE74 8001B674 00110300 */  sll        $v0, $v1, 4
    /* BE78 8001B678 23104300 */  subu       $v0, $v0, $v1
    /* BE7C 8001B67C 80100200 */  sll        $v0, $v0, 2
    /* BE80 8001B680 23104300 */  subu       $v0, $v0, $v1
    /* BE84 8001B684 80100200 */  sll        $v0, $v0, 2
    /* BE88 8001B688 23104300 */  subu       $v0, $v0, $v1
    /* BE8C 8001B68C 9001838E */  lw         $v1, (0x1F800190 & 0xFFFF)($s4)
    /* BE90 8001B690 80110200 */  sll        $v0, $v0, 6
    /* BE94 8001B694 21186200 */  addu       $v1, $v1, $v0
    /* BE98 8001B698 80111300 */  sll        $v0, $s3, 6
    /* BE9C 8001B69C 21105300 */  addu       $v0, $v0, $s3
    /* BEA0 8001B6A0 40110200 */  sll        $v0, $v0, 5
    /* BEA4 8001B6A4 B0134224 */  addiu      $v0, $v0, 0x13B0
    /* BEA8 8001B6A8 21886200 */  addu       $s1, $v1, $v0
    /* BEAC 8001B6AC 2A003026 */  addiu      $s0, $s1, 0x2A
  .L8001B6B0:
    /* BEB0 8001B6B0 21109302 */  addu       $v0, $s4, $s3
    /* BEB4 8001B6B4 DD024490 */  lbu        $a0, (0x1F8002DD & 0xFFFF)($v0)
    /* BEB8 8001B6B8 21280000 */  addu       $a1, $zero, $zero
    /* BEBC 8001B6BC C240010C */  jal        func_80050308
    /* BEC0 8001B6C0 6000A6AF */   sw        $a2, 0x60($sp)
    /* BEC4 8001B6C4 E4FF02A6 */  sh         $v0, -0x1C($s0)
    /* BEC8 8001B6C8 40111500 */  sll        $v0, $s5, 5
    /* BECC 8001B6CC A4830334 */  ori        $v1, $zero, 0x83A4
    /* BED0 8001B6D0 21104300 */  addu       $v0, $v0, $v1
    /* BED4 8001B6D4 1080083C */  lui        $t0, %hi(D_800FF748)
    /* BED8 8001B6D8 48F70825 */  addiu      $t0, $t0, %lo(D_800FF748)
    /* BEDC 8001B6DC 21100201 */  addu       $v0, $t0, $v0
    /* BEE0 8001B6E0 08004424 */  addiu      $a0, $v0, 0x8
    /* BEE4 8001B6E4 10004324 */  addiu      $v1, $v0, 0x10
    /* BEE8 8001B6E8 000040C8 */  lwc2       $0, 0x0($v0)
    /* BEEC 8001B6EC 040041C8 */  lwc2       $1, 0x4($v0)
    /* BEF0 8001B6F0 000082C8 */  lwc2       $2, 0x0($a0)
    /* BEF4 8001B6F4 040083C8 */  lwc2       $3, 0x4($a0)
    /* BEF8 8001B6F8 000064C8 */  lwc2       $4, 0x0($v1)
    /* BEFC 8001B6FC 040065C8 */  lwc2       $5, 0x4($v1)
    /* BF00 8001B700 00000000 */  nop
    /* BF04 8001B704 00000000 */  nop
    /* BF08 8001B708 3000284A */  rtpt
    /* BF0C 8001B70C 08002526 */  addiu      $a1, $s1, 0x8
    /* BF10 8001B710 14002426 */  addiu      $a0, $s1, 0x14
    /* BF14 8001B714 20002326 */  addiu      $v1, $s1, 0x20
    /* BF18 8001B718 0000ACE8 */  swc2       $12, 0x0($a1)
    /* BF1C 8001B71C 00008DE8 */  swc2       $13, 0x0($a0)
    /* BF20 8001B720 00006EE8 */  swc2       $14, 0x0($v1)
    /* BF24 8001B724 18004224 */  addiu      $v0, $v0, 0x18
    /* BF28 8001B728 000040C8 */  lwc2       $0, 0x0($v0)
    /* BF2C 8001B72C 040041C8 */  lwc2       $1, 0x4($v0)
    /* BF30 8001B730 00000000 */  nop
    /* BF34 8001B734 00000000 */  nop
    /* BF38 8001B738 0100184A */  rtps
    /* BF3C 8001B73C 2C002226 */  addiu      $v0, $s1, 0x2C
    /* BF40 8001B740 00004EE8 */  swc2       $14, 0x0($v0)
    /* BF44 8001B744 0100013C */  lui        $at, (0x10000 >> 16)
    /* BF48 8001B748 21084102 */  addu       $at, $s2, $at
    /* BF4C 8001B74C A8832284 */  lh         $v0, -0x7C58($at)
    /* BF50 8001B750 04000824 */  addiu      $t0, $zero, 0x4
    /* BF54 8001B754 23100201 */  subu       $v0, $t0, $v0
    /* BF58 8001B758 00110200 */  sll        $v0, $v0, 4
    /* BF5C 8001B75C 40004224 */  addiu      $v0, $v0, 0x40
    /* BF60 8001B760 DAFF02A2 */  sb         $v0, -0x26($s0)
    /* BF64 8001B764 DBFF02A2 */  sb         $v0, -0x25($s0)
    /* BF68 8001B768 DCFF02A2 */  sb         $v0, -0x24($s0)
    /* BF6C 8001B76C 0100013C */  lui        $at, (0x10000 >> 16)
    /* BF70 8001B770 21084102 */  addu       $at, $s2, $at
    /* BF74 8001B774 B0832284 */  lh         $v0, -0x7C50($at)
    /* BF78 8001B778 0100B526 */  addiu      $s5, $s5, 0x1
    /* BF7C 8001B77C 23100201 */  subu       $v0, $t0, $v0
    /* BF80 8001B780 00110200 */  sll        $v0, $v0, 4
    /* BF84 8001B784 40004224 */  addiu      $v0, $v0, 0x40
    /* BF88 8001B788 E6FF02A2 */  sb         $v0, -0x1A($s0)
    /* BF8C 8001B78C E7FF02A2 */  sb         $v0, -0x19($s0)
    /* BF90 8001B790 E8FF02A2 */  sb         $v0, -0x18($s0)
    /* BF94 8001B794 0100013C */  lui        $at, (0x10000 >> 16)
    /* BF98 8001B798 21084102 */  addu       $at, $s2, $at
    /* BF9C 8001B79C B8832284 */  lh         $v0, -0x7C48($at)
    /* BFA0 8001B7A0 24203602 */  and        $a0, $s1, $s6
    /* BFA4 8001B7A4 23100201 */  subu       $v0, $t0, $v0
    /* BFA8 8001B7A8 00110200 */  sll        $v0, $v0, 4
    /* BFAC 8001B7AC 40004224 */  addiu      $v0, $v0, 0x40
    /* BFB0 8001B7B0 F2FF02A2 */  sb         $v0, -0xE($s0)
    /* BFB4 8001B7B4 F3FF02A2 */  sb         $v0, -0xD($s0)
    /* BFB8 8001B7B8 F4FF02A2 */  sb         $v0, -0xC($s0)
    /* BFBC 8001B7BC 0100013C */  lui        $at, (0x10000 >> 16)
    /* BFC0 8001B7C0 21084102 */  addu       $at, $s2, $at
    /* BFC4 8001B7C4 C0832284 */  lh         $v0, -0x7C40($at)
    /* BFC8 8001B7C8 20005226 */  addiu      $s2, $s2, 0x20
    /* BFCC 8001B7CC 23100201 */  subu       $v0, $t0, $v0
    /* BFD0 8001B7D0 00110200 */  sll        $v0, $v0, 4
    /* BFD4 8001B7D4 40004224 */  addiu      $v0, $v0, 0x40
    /* BFD8 8001B7D8 0F80083C */  lui        $t0, %hi(D_800F3568)
    /* BFDC 8001B7DC 68350825 */  addiu      $t0, $t0, %lo(D_800F3568)
    /* BFE0 8001B7E0 FEFF02A2 */  sb         $v0, -0x2($s0)
    /* BFE4 8001B7E4 FFFF02A2 */  sb         $v0, -0x1($s0)
    /* BFE8 8001B7E8 000002A2 */  sb         $v0, 0x0($s0)
    /* BFEC 8001B7EC 9D028292 */  lbu        $v0, (0x1F80029D & 0xFFFF)($s4)
    /* BFF0 8001B7F0 0000238E */  lw         $v1, 0x0($s1)
    /* BFF4 8001B7F4 6000A68F */  lw         $a2, 0x60($sp)
    /* BFF8 8001B7F8 80130200 */  sll        $v0, $v0, 14
    /* BFFC 8001B7FC 21104800 */  addu       $v0, $v0, $t0
    /* C000 8001B800 0000428C */  lw         $v0, 0x0($v0)
    /* C004 8001B804 24186600 */  and        $v1, $v1, $a2
    /* C008 8001B808 24105600 */  and        $v0, $v0, $s6
    /* C00C 8001B80C 25186200 */  or         $v1, $v1, $v0
    /* C010 8001B810 000023AE */  sw         $v1, 0x0($s1)
    /* C014 8001B814 9D028392 */  lbu        $v1, (0x1F80029D & 0xFFFF)($s4)
    /* C018 8001B818 34001026 */  addiu      $s0, $s0, 0x34
    /* C01C 8001B81C 801B0300 */  sll        $v1, $v1, 14
    /* C020 8001B820 21186800 */  addu       $v1, $v1, $t0
    /* C024 8001B824 0000628C */  lw         $v0, 0x0($v1)
    /* C028 8001B828 00000000 */  nop
    /* C02C 8001B82C 24104600 */  and        $v0, $v0, $a2
    /* C030 8001B830 25104400 */  or         $v0, $v0, $a0
    /* C034 8001B834 000062AC */  sw         $v0, 0x0($v1)
    /* C038 8001B838 2800A22A */  slti       $v0, $s5, 0x28
    /* C03C 8001B83C 9CFF4014 */  bnez       $v0, .L8001B6B0
    /* C040 8001B840 34003126 */   addiu     $s1, $s1, 0x34
  .L8001B844:
    /* C044 8001B844 0200DE27 */  addiu      $fp, $fp, 0x2
    /* C048 8001B848 01007326 */  addiu      $s3, $s3, 0x1
    /* C04C 8001B84C 5800A88F */  lw         $t0, 0x58($sp)
    /* C050 8001B850 0200622A */  slti       $v0, $s3, 0x2
    /* C054 8001B854 08000825 */  addiu      $t0, $t0, 0x8
    /* C058 8001B858 DFFE4014 */  bnez       $v0, .L8001B3D8
    /* C05C 8001B85C 5800A8AF */   sw        $t0, 0x58($sp)
    /* C060 8001B860 8C00BF8F */  lw         $ra, 0x8C($sp)
    /* C064 8001B864 8800BE8F */  lw         $fp, 0x88($sp)
    /* C068 8001B868 8400B78F */  lw         $s7, 0x84($sp)
    /* C06C 8001B86C 8000B68F */  lw         $s6, 0x80($sp)
    /* C070 8001B870 7C00B58F */  lw         $s5, 0x7C($sp)
    /* C074 8001B874 7800B48F */  lw         $s4, 0x78($sp)
    /* C078 8001B878 7400B38F */  lw         $s3, 0x74($sp)
    /* C07C 8001B87C 7000B28F */  lw         $s2, 0x70($sp)
    /* C080 8001B880 6C00B18F */  lw         $s1, 0x6C($sp)
    /* C084 8001B884 6800B08F */  lw         $s0, 0x68($sp)
    /* C088 8001B888 9000BD27 */  addiu      $sp, $sp, 0x90
    /* C08C 8001B88C 0800E003 */  jr         $ra
    /* C090 8001B890 00000000 */   nop
endlabel func_8001B0B8
