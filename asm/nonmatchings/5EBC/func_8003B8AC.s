nonmatching func_8003B8AC, 0x3D8

glabel func_8003B8AC
    /* 2C0AC 8003B8AC D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2C0B0 8003B8B0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2C0B4 8003B8B4 21888000 */  addu       $s1, $a0, $zero
    /* 2C0B8 8003B8B8 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 2C0BC 8003B8BC 2800B4AF */  sw         $s4, 0x28($sp)
    /* 2C0C0 8003B8C0 2400B3AF */  sw         $s3, 0x24($sp)
    /* 2C0C4 8003B8C4 2000B2AF */  sw         $s2, 0x20($sp)
    /* 2C0C8 8003B8C8 1800B0AF */  sw         $s0, 0x18($sp)
    /* 2C0CC 8003B8CC 97032392 */  lbu        $v1, 0x397($s1)
    /* 2C0D0 8003B8D0 00000000 */  nop
    /* 2C0D4 8003B8D4 06006010 */  beqz       $v1, .L8003B8F0
    /* 2C0D8 8003B8D8 801F143C */   lui       $s4, (0x1F8002F4 >> 16)
    /* 2C0DC 8003B8DC 01000224 */  addiu      $v0, $zero, 0x1
    /* 2C0E0 8003B8E0 3A006210 */  beq        $v1, $v0, .L8003B9CC
    /* 2C0E4 8003B8E4 00000000 */   nop
    /* 2C0E8 8003B8E8 97EE0008 */  j          .L8003BA5C
    /* 2C0EC 8003B8EC 00000000 */   nop
  .L8003B8F0:
    /* 2C0F0 8003B8F0 476F010C */  jal        func_8005BD1C
    /* 2C0F4 8003B8F4 21202002 */   addu      $a0, $s1, $zero
    /* 2C0F8 8003B8F8 AB032492 */  lbu        $a0, 0x3AB($s1)
    /* 2C0FC 8003B8FC AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 2C100 8003B900 F36D010C */  jal        func_8005B7CC
    /* 2C104 8003B904 0C000624 */   addiu     $a2, $zero, 0xC
    /* 2C108 8003B908 FF004430 */  andi       $a0, $v0, 0xFF
    /* 2C10C 8003B90C C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 2C110 8003B910 23186400 */  subu       $v1, $v1, $a0
    /* 2C114 8003B914 21206000 */  addu       $a0, $v1, $zero
    /* 2C118 8003B918 02006104 */  bgez       $v1, .L8003B924
    /* 2C11C 8003B91C AA0322A2 */   sb        $v0, 0x3AA($s1)
    /* 2C120 8003B920 FF006424 */  addiu      $a0, $v1, 0xFF
  .L8003B924:
    /* 2C124 8003B924 03120400 */  sra        $v0, $a0, 8
    /* 2C128 8003B928 00120200 */  sll        $v0, $v0, 8
    /* 2C12C 8003B92C 23106200 */  subu       $v0, $v1, $v0
    /* 2C130 8003B930 02002396 */  lhu        $v1, 0x2($s1)
    /* 2C134 8003B934 CA032496 */  lhu        $a0, 0x3CA($s1)
    /* 2C138 8003B938 00110200 */  sll        $v0, $v0, 4
    /* 2C13C 8003B93C 260022A6 */  sh         $v0, 0x26($s1)
    /* 2C140 8003B940 06002296 */  lhu        $v0, 0x6($s1)
    /* 2C144 8003B944 21186400 */  addu       $v1, $v1, $a0
    /* 2C148 8003B948 020023A6 */  sh         $v1, 0x2($s1)
    /* 2C14C 8003B94C CE032396 */  lhu        $v1, 0x3CE($s1)
    /* 2C150 8003B950 90032492 */  lbu        $a0, 0x390($s1)
    /* 2C154 8003B954 21104300 */  addu       $v0, $v0, $v1
    /* 2C158 8003B958 FEFF8424 */  addiu      $a0, $a0, -0x2
    /* 2C15C 8003B95C 060022A6 */  sh         $v0, 0x6($s1)
    /* 2C160 8003B960 0E00822C */  sltiu      $v0, $a0, 0xE
    /* 2C164 8003B964 3D004010 */  beqz       $v0, .L8003BA5C
    /* 2C168 8003B968 80100400 */   sll       $v0, $a0, 2
    /* 2C16C 8003B96C 0180013C */  lui        $at, %hi(jtbl_800110BC)
    /* 2C170 8003B970 21082200 */  addu       $at, $at, $v0
    /* 2C174 8003B974 BC10228C */  lw         $v0, %lo(jtbl_800110BC)($at)
    /* 2C178 8003B978 00000000 */  nop
    /* 2C17C 8003B97C 08004000 */  jr         $v0
    /* 2C180 8003B980 00000000 */   nop
  jlabel .L8003B984
    /* 2C184 8003B984 04002296 */  lhu        $v0, 0x4($s1)
    /* 2C188 8003B988 CC032396 */  lhu        $v1, 0x3CC($s1)
    /* 2C18C 8003B98C 00000000 */  nop
    /* 2C190 8003B990 21104300 */  addu       $v0, $v0, $v1
    /* 2C194 8003B994 97EE0008 */  j          .L8003BA5C
    /* 2C198 8003B998 040022A6 */   sh        $v0, 0x4($s1)
  jlabel .L8003B99C
    /* 2C19C 8003B99C CC032296 */  lhu        $v0, 0x3CC($s1)
    /* 2C1A0 8003B9A0 04002396 */  lhu        $v1, 0x4($s1)
    /* 2C1A4 8003B9A4 00140200 */  sll        $v0, $v0, 16
    /* 2C1A8 8003B9A8 43140200 */  sra        $v0, $v0, 17
    /* 2C1AC 8003B9AC 23186200 */  subu       $v1, $v1, $v0
    /* 2C1B0 8003B9B0 97EE0008 */  j          .L8003BA5C
    /* 2C1B4 8003B9B4 040023A6 */   sh        $v1, 0x4($s1)
  jlabel .L8003B9B8
    /* 2C1B8 8003B9B8 97032292 */  lbu        $v0, 0x397($s1)
    /* 2C1BC 8003B9BC 040020A6 */  sh         $zero, 0x4($s1)
    /* 2C1C0 8003B9C0 01004224 */  addiu      $v0, $v0, 0x1
    /* 2C1C4 8003B9C4 97EE0008 */  j          .L8003BA5C
    /* 2C1C8 8003B9C8 970322A2 */   sb        $v0, 0x397($s1)
  .L8003B9CC:
    /* 2C1CC 8003B9CC 476F010C */  jal        func_8005BD1C
    /* 2C1D0 8003B9D0 21202002 */   addu      $a0, $s1, $zero
    /* 2C1D4 8003B9D4 6666053C */  lui        $a1, (0x66666667 >> 16)
    /* 2C1D8 8003B9D8 CA032286 */  lh         $v0, 0x3CA($s1)
    /* 2C1DC 8003B9DC 6766A534 */  ori        $a1, $a1, (0x66666667 & 0xFFFF)
    /* 2C1E0 8003B9E0 C0180200 */  sll        $v1, $v0, 3
    /* 2C1E4 8003B9E4 21186200 */  addu       $v1, $v1, $v0
    /* 2C1E8 8003B9E8 18006500 */  mult       $v1, $a1
    /* 2C1EC 8003B9EC CE032286 */  lh         $v0, 0x3CE($s1)
    /* 2C1F0 8003B9F0 10480000 */  mfhi       $t1
    /* 2C1F4 8003B9F4 C0200200 */  sll        $a0, $v0, 3
    /* 2C1F8 8003B9F8 21208200 */  addu       $a0, $a0, $v0
    /* 2C1FC 8003B9FC 18008500 */  mult       $a0, $a1
    /* 2C200 8003BA00 C31F0300 */  sra        $v1, $v1, 31
    /* 2C204 8003BA04 83100900 */  sra        $v0, $t1, 2
    /* 2C208 8003BA08 23104300 */  subu       $v0, $v0, $v1
    /* 2C20C 8003BA0C 06002396 */  lhu        $v1, 0x6($s1)
    /* 2C210 8003BA10 C3270400 */  sra        $a0, $a0, 31
    /* 2C214 8003BA14 CA0322A6 */  sh         $v0, 0x3CA($s1)
    /* 2C218 8003BA18 10280000 */  mfhi       $a1
    /* 2C21C 8003BA1C 83100500 */  sra        $v0, $a1, 2
    /* 2C220 8003BA20 23104400 */  subu       $v0, $v0, $a0
    /* 2C224 8003BA24 CE0322A6 */  sh         $v0, 0x3CE($s1)
    /* 2C228 8003BA28 02002296 */  lhu        $v0, 0x2($s1)
    /* 2C22C 8003BA2C CE032596 */  lhu        $a1, 0x3CE($s1)
    /* 2C230 8003BA30 CA032496 */  lhu        $a0, 0x3CA($s1)
    /* 2C234 8003BA34 21186500 */  addu       $v1, $v1, $a1
    /* 2C238 8003BA38 060023A6 */  sh         $v1, 0x6($s1)
    /* 2C23C 8003BA3C 90032392 */  lbu        $v1, 0x390($s1)
    /* 2C240 8003BA40 21104400 */  addu       $v0, $v0, $a0
    /* 2C244 8003BA44 020022A6 */  sh         $v0, 0x2($s1)
    /* 2C248 8003BA48 1B000224 */  addiu      $v0, $zero, 0x1B
    /* 2C24C 8003BA4C 03006214 */  bne        $v1, $v0, .L8003BA5C
    /* 2C250 8003BA50 11000224 */   addiu     $v0, $zero, 0x11
    /* 2C254 8003BA54 960322A2 */  sb         $v0, 0x396($s1)
    /* 2C258 8003BA58 970320A2 */  sb         $zero, 0x397($s1)
  jlabel .L8003BA5C
    /* 2C25C 8003BA5C 90032292 */  lbu        $v0, 0x390($s1)
    /* 2C260 8003BA60 00000000 */  nop
    /* 2C264 8003BA64 FEFF4224 */  addiu      $v0, $v0, -0x2
    /* 2C268 8003BA68 0700422C */  sltiu      $v0, $v0, 0x7
    /* 2C26C 8003BA6C 66004010 */  beqz       $v0, .L8003BC08
    /* 2C270 8003BA70 01000524 */   addiu     $a1, $zero, 0x1
    /* 2C274 8003BA74 21202002 */  addu       $a0, $s1, $zero
    /* 2C278 8003BA78 9DF4000C */  jal        func_8003D274
    /* 2C27C 8003BA7C 01000624 */   addiu     $a2, $zero, 0x1
    /* 2C280 8003BA80 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2C284 8003BA84 60004010 */  beqz       $v0, .L8003BC08
    /* 2C288 8003BA88 00000000 */   nop
    /* 2C28C 8003BA8C 21202002 */  addu       $a0, $s1, $zero
    /* 2C290 8003BA90 B2032592 */  lbu        $a1, 0x3B2($s1)
    /* 2C294 8003BA94 67F6000C */  jal        func_8003D99C
    /* 2C298 8003BA98 21300000 */   addu      $a2, $zero, $zero
    /* 2C29C 8003BA9C 04000424 */  addiu      $a0, $zero, 0x4
    /* 2C2A0 8003BAA0 AE79000C */  jal        func_8001E6B8
    /* 2C2A4 8003BAA4 21904000 */   addu      $s2, $v0, $zero
    /* 2C2A8 8003BAA8 AA032492 */  lbu        $a0, 0x3AA($s1)
    /* 2C2AC 8003BAAC A8004624 */  addiu      $a2, $v0, 0xA8
    /* 2C2B0 8003BAB0 23109200 */  subu       $v0, $a0, $s2
    /* 2C2B4 8003BAB4 FF004330 */  andi       $v1, $v0, 0xFF
    /* 2C2B8 8003BAB8 8100622C */  sltiu      $v0, $v1, 0x81
    /* 2C2BC 8003BABC 04004014 */  bnez       $v0, .L8003BAD0
    /* 2C2C0 8003BAC0 23104402 */   subu      $v0, $s2, $a0
    /* 2C2C4 8003BAC4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2C2C8 8003BAC8 B5EE0008 */  j          .L8003BAD4
    /* 2C2CC 8003BACC C3100200 */   sra       $v0, $v0, 3
  .L8003BAD0:
    /* 2C2D0 8003BAD0 C3100300 */  sra        $v0, $v1, 3
  .L8003BAD4:
    /* 2C2D4 8003BAD4 2398C200 */  subu       $s3, $a2, $v0
    /* 2C2D8 8003BAD8 F402828E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s4)
    /* 2C2DC 8003BADC 00000000 */  nop
    /* 2C2E0 8003BAE0 A4034490 */  lbu        $a0, 0x3A4($v0)
    /* 2C2E4 8003BAE4 00000000 */  nop
    /* 2C2E8 8003BAE8 23109200 */  subu       $v0, $a0, $s2
    /* 2C2EC 8003BAEC FF004330 */  andi       $v1, $v0, 0xFF
    /* 2C2F0 8003BAF0 8100622C */  sltiu      $v0, $v1, 0x81
    /* 2C2F4 8003BAF4 08004014 */  bnez       $v0, .L8003BB18
    /* 2C2F8 8003BAF8 21006228 */   slti      $v0, $v1, 0x21
    /* 2C2FC 8003BAFC 23104402 */  subu       $v0, $s2, $a0
    /* 2C300 8003BB00 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2C304 8003BB04 21004228 */  slti       $v0, $v0, 0x21
    /* 2C308 8003BB08 0D004010 */  beqz       $v0, .L8003BB40
    /* 2C30C 8003BB0C 00000000 */   nop
    /* 2C310 8003BB10 C9EE0008 */  j          .L8003BB24
    /* 2C314 8003BB14 DCFF7326 */   addiu     $s3, $s3, -0x24
  .L8003BB18:
    /* 2C318 8003BB18 09004010 */  beqz       $v0, .L8003BB40
    /* 2C31C 8003BB1C 00000000 */   nop
    /* 2C320 8003BB20 DCFF7326 */  addiu      $s3, $s3, -0x24
  .L8003BB24:
    /* 2C324 8003BB24 AE79000C */  jal        func_8001E6B8
    /* 2C328 8003BB28 04000424 */   addiu     $a0, $zero, 0x4
    /* 2C32C 8003BB2C 21202002 */  addu       $a0, $s1, $zero
    /* 2C330 8003BB30 79AC000C */  jal        func_8002B1E4
    /* 2C334 8003BB34 21804000 */   addu      $s0, $v0, $zero
    /* 2C338 8003BB38 DCEE0008 */  j          .L8003BB70
    /* 2C33C 8003BB3C 04004224 */   addiu     $v0, $v0, 0x4
  .L8003BB40:
    /* 2C340 8003BB40 A9028392 */  lbu        $v1, (0x1F8002A9 & 0xFFFF)($s4)
    /* 2C344 8003BB44 8D032292 */  lbu        $v0, 0x38D($s1)
    /* 2C348 8003BB48 00000000 */  nop
    /* 2C34C 8003BB4C 02004314 */  bne        $v0, $v1, .L8003BB58
    /* 2C350 8003BB50 00000000 */   nop
    /* 2C354 8003BB54 ECFF7326 */  addiu      $s3, $s3, -0x14
  .L8003BB58:
    /* 2C358 8003BB58 AE79000C */  jal        func_8001E6B8
    /* 2C35C 8003BB5C 0C000424 */   addiu     $a0, $zero, 0xC
    /* 2C360 8003BB60 21202002 */  addu       $a0, $s1, $zero
    /* 2C364 8003BB64 79AC000C */  jal        func_8002B1E4
    /* 2C368 8003BB68 21804000 */   addu      $s0, $v0, $zero
    /* 2C36C 8003BB6C F8FF4224 */  addiu      $v0, $v0, -0x8
  .L8003BB70:
    /* 2C370 8003BB70 21380202 */  addu       $a3, $s0, $v0
    /* 2C374 8003BB74 21202002 */  addu       $a0, $s1, $zero
    /* 2C378 8003BB78 FF004532 */  andi       $a1, $s2, 0xFF
    /* 2C37C 8003BB7C 3C2C010C */  jal        func_8004B0F0
    /* 2C380 8003BB80 21306002 */   addu      $a2, $s3, $zero
    /* 2C384 8003BB84 AA032292 */  lbu        $v0, 0x3AA($s1)
    /* 2C388 8003BB88 F402838E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s4)
    /* 2C38C 8003BB8C 23104202 */  subu       $v0, $s2, $v0
    /* 2C390 8003BB90 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2C394 8003BB94 8100422C */  sltiu      $v0, $v0, 0x81
    /* 2C398 8003BB98 CA0362A4 */  sh         $v0, 0x3CA($v1)
    /* 2C39C 8003BB9C F402908E */  lw         $s0, (0x1F8002F4 & 0xFFFF)($s4)
    /* 2C3A0 8003BBA0 AE79000C */  jal        func_8001E6B8
    /* 2C3A4 8003BBA4 02000424 */   addiu     $a0, $zero, 0x2
    /* 2C3A8 8003BBA8 09000324 */  addiu      $v1, $zero, 0x9
    /* 2C3AC 8003BBAC AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 2C3B0 8003BBB0 23186200 */  subu       $v1, $v1, $v0
    /* 2C3B4 8003BBB4 2310B200 */  subu       $v0, $a1, $s2
    /* 2C3B8 8003BBB8 FF004430 */  andi       $a0, $v0, 0xFF
    /* 2C3BC 8003BBBC 8100822C */  sltiu      $v0, $a0, 0x81
    /* 2C3C0 8003BBC0 04004014 */  bnez       $v0, .L8003BBD4
    /* 2C3C4 8003BBC4 23104502 */   subu      $v0, $s2, $a1
    /* 2C3C8 8003BBC8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2C3CC 8003BBCC F6EE0008 */  j          .L8003BBD8
    /* 2C3D0 8003BBD0 83110200 */   sra       $v0, $v0, 6
  .L8003BBD4:
    /* 2C3D4 8003BBD4 83110400 */  sra        $v0, $a0, 6
  .L8003BBD8:
    /* 2C3D8 8003BBD8 23106200 */  subu       $v0, $v1, $v0
    /* 2C3DC 8003BBDC 07050424 */  addiu      $a0, $zero, 0x507
    /* 2C3E0 8003BBE0 C80302A6 */  sh         $v0, 0x3C8($s0)
    /* 2C3E4 8003BBE4 F402838E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s4)
    /* 2C3E8 8003BBE8 04000224 */  addiu      $v0, $zero, 0x4
    /* 2C3EC 8003BBEC 88AD020C */  jal        func_800AB620
    /* 2C3F0 8003BBF0 960362A0 */   sb        $v0, 0x396($v1)
    /* 2C3F4 8003BBF4 21202002 */  addu       $a0, $s1, $zero
    /* 2C3F8 8003BBF8 69AD000C */  jal        func_8002B5A4
    /* 2C3FC 8003BBFC 01000524 */   addiu     $a1, $zero, 0x1
    /* 2C400 8003BC00 785C010C */  jal        func_800571E0
    /* 2C404 8003BC04 21202002 */   addu      $a0, $s1, $zero
  .L8003BC08:
    /* 2C408 8003BC08 90032292 */  lbu        $v0, 0x390($s1)
    /* 2C40C 8003BC0C 00000000 */  nop
    /* 2C410 8003BC10 0200422C */  sltiu      $v0, $v0, 0x2
    /* 2C414 8003BC14 10004014 */  bnez       $v0, .L8003BC58
    /* 2C418 8003BC18 00000000 */   nop
    /* 2C41C 8003BC1C AA028392 */  lbu        $v1, (0x1F8002AA & 0xFFFF)($s4)
    /* 2C420 8003BC20 8D032292 */  lbu        $v0, 0x38D($s1)
    /* 2C424 8003BC24 00000000 */  nop
    /* 2C428 8003BC28 0B004310 */  beq        $v0, $v1, .L8003BC58
    /* 2C42C 8003BC2C 00000000 */   nop
    /* 2C430 8003BC30 AE79000C */  jal        func_8001E6B8
    /* 2C434 8003BC34 04000424 */   addiu     $a0, $zero, 0x4
    /* 2C438 8003BC38 21202002 */  addu       $a0, $s1, $zero
    /* 2C43C 8003BC3C 0A000524 */  addiu      $a1, $zero, 0xA
    /* 2C440 8003BC40 21380000 */  addu       $a3, $zero, $zero
    /* 2C444 8003BC44 FCFF0324 */  addiu      $v1, $zero, -0x4
    /* 2C448 8003BC48 AA032692 */  lbu        $a2, 0x3AA($s1)
    /* 2C44C 8003BC4C 23186200 */  subu       $v1, $v1, $v0
    /* 2C450 8003BC50 8B51020C */  jal        func_8009462C
    /* 2C454 8003BC54 1000A3AF */   sw        $v1, 0x10($sp)
  .L8003BC58:
    /* 2C458 8003BC58 2B26010C */  jal        func_800498AC
    /* 2C45C 8003BC5C 21202002 */   addu      $a0, $s1, $zero
    /* 2C460 8003BC60 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 2C464 8003BC64 2800B48F */  lw         $s4, 0x28($sp)
    /* 2C468 8003BC68 2400B38F */  lw         $s3, 0x24($sp)
    /* 2C46C 8003BC6C 2000B28F */  lw         $s2, 0x20($sp)
    /* 2C470 8003BC70 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2C474 8003BC74 1800B08F */  lw         $s0, 0x18($sp)
    /* 2C478 8003BC78 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 2C47C 8003BC7C 0800E003 */  jr         $ra
    /* 2C480 8003BC80 00000000 */   nop
endlabel func_8003B8AC
