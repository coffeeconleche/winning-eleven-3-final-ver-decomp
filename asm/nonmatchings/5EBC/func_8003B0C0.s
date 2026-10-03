nonmatching func_8003B0C0, 0x370

glabel func_8003B0C0
    /* 2B8C0 8003B0C0 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 2B8C4 8003B0C4 2400B1AF */  sw         $s1, 0x24($sp)
    /* 2B8C8 8003B0C8 21888000 */  addu       $s1, $a0, $zero
    /* 2B8CC 8003B0CC 3000BFAF */  sw         $ra, 0x30($sp)
    /* 2B8D0 8003B0D0 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 2B8D4 8003B0D4 2800B2AF */  sw         $s2, 0x28($sp)
    /* 2B8D8 8003B0D8 2000B0AF */  sw         $s0, 0x20($sp)
    /* 2B8DC 8003B0DC 97032392 */  lbu        $v1, 0x397($s1)
    /* 2B8E0 8003B0E0 00000000 */  nop
    /* 2B8E4 8003B0E4 06006010 */  beqz       $v1, .L8003B100
    /* 2B8E8 8003B0E8 801F133C */   lui       $s3, (0x1F8002F4 >> 16)
    /* 2B8EC 8003B0EC 01000224 */  addiu      $v0, $zero, 0x1
    /* 2B8F0 8003B0F0 88006210 */  beq        $v1, $v0, .L8003B314
    /* 2B8F4 8003B0F4 00000000 */   nop
    /* 2B8F8 8003B0F8 F1EC0008 */  j          .L8003B3C4
    /* 2B8FC 8003B0FC 00000000 */   nop
  .L8003B100:
    /* 2B900 8003B100 476F010C */  jal        func_8005BD1C
    /* 2B904 8003B104 21202002 */   addu      $a0, $s1, $zero
    /* 2B908 8003B108 AB032492 */  lbu        $a0, 0x3AB($s1)
    /* 2B90C 8003B10C AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 2B910 8003B110 F36D010C */  jal        func_8005B7CC
    /* 2B914 8003B114 0C000624 */   addiu     $a2, $zero, 0xC
    /* 2B918 8003B118 FF004430 */  andi       $a0, $v0, 0xFF
    /* 2B91C 8003B11C C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 2B920 8003B120 23186400 */  subu       $v1, $v1, $a0
    /* 2B924 8003B124 21206000 */  addu       $a0, $v1, $zero
    /* 2B928 8003B128 02006104 */  bgez       $v1, .L8003B134
    /* 2B92C 8003B12C AA0322A2 */   sb        $v0, 0x3AA($s1)
    /* 2B930 8003B130 FF006424 */  addiu      $a0, $v1, 0xFF
  .L8003B134:
    /* 2B934 8003B134 03120400 */  sra        $v0, $a0, 8
    /* 2B938 8003B138 00120200 */  sll        $v0, $v0, 8
    /* 2B93C 8003B13C 23106200 */  subu       $v0, $v1, $v0
    /* 2B940 8003B140 00110200 */  sll        $v0, $v0, 4
    /* 2B944 8003B144 260022A6 */  sh         $v0, 0x26($s1)
    /* 2B948 8003B148 02002296 */  lhu        $v0, 0x2($s1)
    /* 2B94C 8003B14C CA032496 */  lhu        $a0, 0x3CA($s1)
    /* 2B950 8003B150 04002396 */  lhu        $v1, 0x4($s1)
    /* 2B954 8003B154 CC032596 */  lhu        $a1, 0x3CC($s1)
    /* 2B958 8003B158 21104400 */  addu       $v0, $v0, $a0
    /* 2B95C 8003B15C 020022A6 */  sh         $v0, 0x2($s1)
    /* 2B960 8003B160 06002296 */  lhu        $v0, 0x6($s1)
    /* 2B964 8003B164 CE032496 */  lhu        $a0, 0x3CE($s1)
    /* 2B968 8003B168 21186500 */  addu       $v1, $v1, $a1
    /* 2B96C 8003B16C 040023A6 */  sh         $v1, 0x4($s1)
    /* 2B970 8003B170 90032392 */  lbu        $v1, 0x390($s1)
    /* 2B974 8003B174 21104400 */  addu       $v0, $v0, $a0
    /* 2B978 8003B178 0500632C */  sltiu      $v1, $v1, 0x5
    /* 2B97C 8003B17C 91006014 */  bnez       $v1, .L8003B3C4
    /* 2B980 8003B180 060022A6 */   sh        $v0, 0x6($s1)
    /* 2B984 8003B184 21202002 */  addu       $a0, $s1, $zero
    /* 2B988 8003B188 21280000 */  addu       $a1, $zero, $zero
    /* 2B98C 8003B18C 21300000 */  addu       $a2, $zero, $zero
    /* 2B990 8003B190 97032292 */  lbu        $v0, 0x397($s1)
    /* 2B994 8003B194 CC032396 */  lhu        $v1, 0x3CC($s1)
    /* 2B998 8003B198 01004224 */  addiu      $v0, $v0, 0x1
    /* 2B99C 8003B19C 001C0300 */  sll        $v1, $v1, 16
    /* 2B9A0 8003B1A0 431C0300 */  sra        $v1, $v1, 17
    /* 2B9A4 8003B1A4 970322A2 */  sb         $v0, 0x397($s1)
    /* 2B9A8 8003B1A8 9DF4000C */  jal        func_8003D274
    /* 2B9AC 8003B1AC CC0323A6 */   sh        $v1, 0x3CC($s1)
    /* 2B9B0 8003B1B0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2B9B4 8003B1B4 83004010 */  beqz       $v0, .L8003B3C4
    /* 2B9B8 8003B1B8 00000000 */   nop
    /* 2B9BC 8003B1BC 801F023C */  lui        $v0, (0x1F8000F2 >> 16)
    /* 2B9C0 8003B1C0 F2004284 */  lh         $v0, (0x1F8000F2 & 0xFFFF)($v0)
    /* 2B9C4 8003B1C4 801F033C */  lui        $v1, (0x1F80004E >> 16)
    /* 2B9C8 8003B1C8 4E006384 */  lh         $v1, (0x1F80004E & 0xFFFF)($v1)
    /* 2B9CC 8003B1CC 00000000 */  nop
    /* 2B9D0 8003B1D0 23104300 */  subu       $v0, $v0, $v1
    /* 2B9D4 8003B1D4 FF004224 */  addiu      $v0, $v0, 0xFF
    /* 2B9D8 8003B1D8 BF01422C */  sltiu      $v0, $v0, 0x1BF
    /* 2B9DC 8003B1DC 79004010 */  beqz       $v0, .L8003B3C4
    /* 2B9E0 8003B1E0 00000000 */   nop
    /* 2B9E4 8003B1E4 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 2B9E8 8003B1E8 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 2B9EC 8003B1EC 801F033C */  lui        $v1, (0x1F8000F0 >> 16)
    /* 2B9F0 8003B1F0 F0006394 */  lhu        $v1, (0x1F8000F0 & 0xFFFF)($v1)
    /* 2B9F4 8003B1F4 00000000 */  nop
    /* 2B9F8 8003B1F8 020043A4 */  sh         $v1, 0x2($v0)
    /* 2B9FC 8003B1FC 801F023C */  lui        $v0, (0x1F80004E >> 16)
    /* 2BA00 8003B200 4E004284 */  lh         $v0, (0x1F80004E & 0xFFFF)($v0)
    /* 2BA04 8003B204 00000000 */  nop
    /* 2BA08 8003B208 21184000 */  addu       $v1, $v0, $zero
    /* 2BA0C 8003B20C C9FF4228 */  slti       $v0, $v0, -0x37
    /* 2BA10 8003B210 05004014 */  bnez       $v0, .L8003B228
    /* 2BA14 8003B214 D8FF0224 */   addiu     $v0, $zero, -0x28
    /* 2BA18 8003B218 801F033C */  lui        $v1, (0x1F8002F4 >> 16)
    /* 2BA1C 8003B21C F402638C */  lw         $v1, (0x1F8002F4 & 0xFFFF)($v1)
    /* 2BA20 8003B220 8EEC0008 */  j          .L8003B238
    /* 2BA24 8003B224 040062A4 */   sh        $v0, 0x4($v1)
  .L8003B228:
    /* 2BA28 8003B228 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 2BA2C 8003B22C F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 2BA30 8003B230 00000000 */  nop
    /* 2BA34 8003B234 040043A4 */  sh         $v1, 0x4($v0)
  .L8003B238:
    /* 2BA38 8003B238 F402638E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s3)
    /* 2BA3C 8003B23C F4006296 */  lhu        $v0, (0x1F8000F4 & 0xFFFF)($s3)
    /* 2BA40 8003B240 21202002 */  addu       $a0, $s1, $zero
    /* 2BA44 8003B244 060062A4 */  sh         $v0, 0x6($v1)
    /* 2BA48 8003B248 B2032592 */  lbu        $a1, 0x3B2($s1)
    /* 2BA4C 8003B24C 67F6000C */  jal        func_8003D99C
    /* 2BA50 8003B250 01000624 */   addiu     $a2, $zero, 0x1
    /* 2BA54 8003B254 08000424 */  addiu      $a0, $zero, 0x8
    /* 2BA58 8003B258 AE79000C */  jal        func_8001E6B8
    /* 2BA5C 8003B25C 21904000 */   addu      $s2, $v0, $zero
    /* 2BA60 8003B260 06000424 */  addiu      $a0, $zero, 0x6
    /* 2BA64 8003B264 AE79000C */  jal        func_8001E6B8
    /* 2BA68 8003B268 8C005024 */   addiu     $s0, $v0, 0x8C
    /* 2BA6C 8003B26C 21202002 */  addu       $a0, $s1, $zero
    /* 2BA70 8003B270 FF004532 */  andi       $a1, $s2, 0xFF
    /* 2BA74 8003B274 21300002 */  addu       $a2, $s0, $zero
    /* 2BA78 8003B278 3C2C010C */  jal        func_8004B0F0
    /* 2BA7C 8003B27C 04004724 */   addiu     $a3, $v0, 0x4
    /* 2BA80 8003B280 04000224 */  addiu      $v0, $zero, 0x4
    /* 2BA84 8003B284 F402638E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s3)
    /* 2BA88 8003B288 00000000 */  nop
    /* 2BA8C 8003B28C 960362A0 */  sb         $v0, 0x396($v1)
    /* 2BA90 8003B290 AA032292 */  lbu        $v0, 0x3AA($s1)
    /* 2BA94 8003B294 F402638E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s3)
    /* 2BA98 8003B298 23104202 */  subu       $v0, $s2, $v0
    /* 2BA9C 8003B29C FF004230 */  andi       $v0, $v0, 0xFF
    /* 2BAA0 8003B2A0 8100422C */  sltiu      $v0, $v0, 0x81
    /* 2BAA4 8003B2A4 CA0362A4 */  sh         $v0, 0x3CA($v1)
    /* 2BAA8 8003B2A8 F402708E */  lw         $s0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 2BAAC 8003B2AC AE79000C */  jal        func_8001E6B8
    /* 2BAB0 8003B2B0 02000424 */   addiu     $a0, $zero, 0x2
    /* 2BAB4 8003B2B4 09000324 */  addiu      $v1, $zero, 0x9
    /* 2BAB8 8003B2B8 AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 2BABC 8003B2BC 23186200 */  subu       $v1, $v1, $v0
    /* 2BAC0 8003B2C0 2310B200 */  subu       $v0, $a1, $s2
    /* 2BAC4 8003B2C4 FF004430 */  andi       $a0, $v0, 0xFF
    /* 2BAC8 8003B2C8 8100822C */  sltiu      $v0, $a0, 0x81
    /* 2BACC 8003B2CC 04004014 */  bnez       $v0, .L8003B2E0
    /* 2BAD0 8003B2D0 23104502 */   subu      $v0, $s2, $a1
    /* 2BAD4 8003B2D4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2BAD8 8003B2D8 B9EC0008 */  j          .L8003B2E4
    /* 2BADC 8003B2DC 83110200 */   sra       $v0, $v0, 6
  .L8003B2E0:
    /* 2BAE0 8003B2E0 83110400 */  sra        $v0, $a0, 6
  .L8003B2E4:
    /* 2BAE4 8003B2E4 23106200 */  subu       $v0, $v1, $v0
    /* 2BAE8 8003B2E8 07050424 */  addiu      $a0, $zero, 0x507
    /* 2BAEC 8003B2EC 88AD020C */  jal        func_800AB620
    /* 2BAF0 8003B2F0 C80302A6 */   sh        $v0, 0x3C8($s0)
    /* 2BAF4 8003B2F4 21202002 */  addu       $a0, $s1, $zero
    /* 2BAF8 8003B2F8 0B000524 */  addiu      $a1, $zero, 0xB
    /* 2BAFC 8003B2FC 69AD000C */  jal        func_8002B5A4
    /* 2BB00 8003B300 AB0332A2 */   sb        $s2, 0x3AB($s1)
    /* 2BB04 8003B304 1F5C010C */  jal        func_8005707C
    /* 2BB08 8003B308 21202002 */   addu      $a0, $s1, $zero
    /* 2BB0C 8003B30C F1EC0008 */  j          .L8003B3C4
    /* 2BB10 8003B310 00000000 */   nop
  .L8003B314:
    /* 2BB14 8003B314 476F010C */  jal        func_8005BD1C
    /* 2BB18 8003B318 21202002 */   addu      $a0, $s1, $zero
    /* 2BB1C 8003B31C 6666073C */  lui        $a3, (0x66666667 >> 16)
    /* 2BB20 8003B320 CA032286 */  lh         $v0, 0x3CA($s1)
    /* 2BB24 8003B324 6766E734 */  ori        $a3, $a3, (0x66666667 & 0xFFFF)
    /* 2BB28 8003B328 C0300200 */  sll        $a2, $v0, 3
    /* 2BB2C 8003B32C 2130C200 */  addu       $a2, $a2, $v0
    /* 2BB30 8003B330 1800C700 */  mult       $a2, $a3
    /* 2BB34 8003B334 CE032586 */  lh         $a1, 0x3CE($s1)
    /* 2BB38 8003B338 CA032396 */  lhu        $v1, 0x3CA($s1)
    /* 2BB3C 8003B33C C0200500 */  sll        $a0, $a1, 3
    /* 2BB40 8003B340 21208500 */  addu       $a0, $a0, $a1
    /* 2BB44 8003B344 C3370600 */  sra        $a2, $a2, 31
    /* 2BB48 8003B348 02002296 */  lhu        $v0, 0x2($s1)
    /* 2BB4C 8003B34C CC032596 */  lhu        $a1, 0x3CC($s1)
    /* 2BB50 8003B350 21104300 */  addu       $v0, $v0, $v1
    /* 2BB54 8003B354 020022A6 */  sh         $v0, 0x2($s1)
    /* 2BB58 8003B358 10400000 */  mfhi       $t0
    /* 2BB5C 8003B35C 04002296 */  lhu        $v0, 0x4($s1)
    /* 2BB60 8003B360 06002396 */  lhu        $v1, 0x6($s1)
    /* 2BB64 8003B364 18008700 */  mult       $a0, $a3
    /* 2BB68 8003B368 23104500 */  subu       $v0, $v0, $a1
    /* 2BB6C 8003B36C 040022A6 */  sh         $v0, 0x4($s1)
    /* 2BB70 8003B370 83100800 */  sra        $v0, $t0, 2
    /* 2BB74 8003B374 CE032796 */  lhu        $a3, 0x3CE($s1)
    /* 2BB78 8003B378 23104600 */  subu       $v0, $v0, $a2
    /* 2BB7C 8003B37C 21186700 */  addu       $v1, $v1, $a3
    /* 2BB80 8003B380 060023A6 */  sh         $v1, 0x6($s1)
    /* 2BB84 8003B384 90032392 */  lbu        $v1, 0x390($s1)
    /* 2BB88 8003B388 C3270400 */  sra        $a0, $a0, 31
    /* 2BB8C 8003B38C CA0322A6 */  sh         $v0, 0x3CA($s1)
    /* 2BB90 8003B390 0F00632C */  sltiu      $v1, $v1, 0xF
    /* 2BB94 8003B394 10500000 */  mfhi       $t2
    /* 2BB98 8003B398 83100A00 */  sra        $v0, $t2, 2
    /* 2BB9C 8003B39C 23104400 */  subu       $v0, $v0, $a0
    /* 2BBA0 8003B3A0 02006014 */  bnez       $v1, .L8003B3AC
    /* 2BBA4 8003B3A4 CE0322A6 */   sh        $v0, 0x3CE($s1)
    /* 2BBA8 8003B3A8 040020A6 */  sh         $zero, 0x4($s1)
  .L8003B3AC:
    /* 2BBAC 8003B3AC 90032392 */  lbu        $v1, 0x390($s1)
    /* 2BBB0 8003B3B0 19000224 */  addiu      $v0, $zero, 0x19
    /* 2BBB4 8003B3B4 03006214 */  bne        $v1, $v0, .L8003B3C4
    /* 2BBB8 8003B3B8 00000000 */   nop
    /* 2BBBC 8003B3BC 960320A2 */  sb         $zero, 0x396($s1)
    /* 2BBC0 8003B3C0 970320A2 */  sb         $zero, 0x397($s1)
  .L8003B3C4:
    /* 2BBC4 8003B3C4 90032292 */  lbu        $v0, 0x390($s1)
    /* 2BBC8 8003B3C8 00000000 */  nop
    /* 2BBCC 8003B3CC 0600422C */  sltiu      $v0, $v0, 0x6
    /* 2BBD0 8003B3D0 0D004014 */  bnez       $v0, .L8003B408
    /* 2BBD4 8003B3D4 00000000 */   nop
    /* 2BBD8 8003B3D8 AE79000C */  jal        func_8001E6B8
    /* 2BBDC 8003B3DC 04000424 */   addiu     $a0, $zero, 0x4
    /* 2BBE0 8003B3E0 21202002 */  addu       $a0, $s1, $zero
    /* 2BBE4 8003B3E4 0C000524 */  addiu      $a1, $zero, 0xC
    /* 2BBE8 8003B3E8 21380000 */  addu       $a3, $zero, $zero
    /* 2BBEC 8003B3EC F402638E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s3)
    /* 2BBF0 8003B3F0 FCFF0824 */  addiu      $t0, $zero, -0x4
    /* 2BBF4 8003B3F4 A4036690 */  lbu        $a2, 0x3A4($v1)
    /* 2BBF8 8003B3F8 23400201 */  subu       $t0, $t0, $v0
    /* 2BBFC 8003B3FC 1000A8AF */  sw         $t0, 0x10($sp)
    /* 2BC00 8003B400 8B51020C */  jal        func_8009462C
    /* 2BC04 8003B404 8000C624 */   addiu     $a2, $a2, 0x80
  .L8003B408:
    /* 2BC08 8003B408 2B26010C */  jal        func_800498AC
    /* 2BC0C 8003B40C 21202002 */   addu      $a0, $s1, $zero
    /* 2BC10 8003B410 3000BF8F */  lw         $ra, 0x30($sp)
    /* 2BC14 8003B414 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 2BC18 8003B418 2800B28F */  lw         $s2, 0x28($sp)
    /* 2BC1C 8003B41C 2400B18F */  lw         $s1, 0x24($sp)
    /* 2BC20 8003B420 2000B08F */  lw         $s0, 0x20($sp)
    /* 2BC24 8003B424 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 2BC28 8003B428 0800E003 */  jr         $ra
    /* 2BC2C 8003B42C 00000000 */   nop
endlabel func_8003B0C0
