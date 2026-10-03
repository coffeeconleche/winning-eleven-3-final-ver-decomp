nonmatching func_8003C0E8, 0x384

glabel func_8003C0E8
    /* 2C8E8 8003C0E8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2C8EC 8003C0EC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2C8F0 8003C0F0 21888000 */  addu       $s1, $a0, $zero
    /* 2C8F4 8003C0F4 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 2C8F8 8003C0F8 2800B4AF */  sw         $s4, 0x28($sp)
    /* 2C8FC 8003C0FC 2400B3AF */  sw         $s3, 0x24($sp)
    /* 2C900 8003C100 2000B2AF */  sw         $s2, 0x20($sp)
    /* 2C904 8003C104 476F010C */  jal        func_8005BD1C
    /* 2C908 8003C108 1800B0AF */   sw        $s0, 0x18($sp)
    /* 2C90C 8003C10C 97032292 */  lbu        $v0, 0x397($s1)
    /* 2C910 8003C110 00000000 */  nop
    /* 2C914 8003C114 C6004014 */  bnez       $v0, .L8003C430
    /* 2C918 8003C118 801F143C */   lui       $s4, (0x1F8002B6 >> 16)
    /* 2C91C 8003C11C AB032492 */  lbu        $a0, 0x3AB($s1)
    /* 2C920 8003C120 AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 2C924 8003C124 F36D010C */  jal        func_8005B7CC
    /* 2C928 8003C128 28000624 */   addiu     $a2, $zero, 0x28
    /* 2C92C 8003C12C FF004430 */  andi       $a0, $v0, 0xFF
    /* 2C930 8003C130 C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 2C934 8003C134 23186400 */  subu       $v1, $v1, $a0
    /* 2C938 8003C138 21206000 */  addu       $a0, $v1, $zero
    /* 2C93C 8003C13C 02006104 */  bgez       $v1, .L8003C148
    /* 2C940 8003C140 AA0322A2 */   sb        $v0, 0x3AA($s1)
    /* 2C944 8003C144 FF006424 */  addiu      $a0, $v1, 0xFF
  .L8003C148:
    /* 2C948 8003C148 03120400 */  sra        $v0, $a0, 8
    /* 2C94C 8003C14C 00120200 */  sll        $v0, $v0, 8
    /* 2C950 8003C150 23106200 */  subu       $v0, $v1, $v0
    /* 2C954 8003C154 02002396 */  lhu        $v1, 0x2($s1)
    /* 2C958 8003C158 CA032496 */  lhu        $a0, 0x3CA($s1)
    /* 2C95C 8003C15C 00110200 */  sll        $v0, $v0, 4
    /* 2C960 8003C160 260022A6 */  sh         $v0, 0x26($s1)
    /* 2C964 8003C164 06002296 */  lhu        $v0, 0x6($s1)
    /* 2C968 8003C168 21186400 */  addu       $v1, $v1, $a0
    /* 2C96C 8003C16C CE032496 */  lhu        $a0, 0x3CE($s1)
    /* 2C970 8003C170 020023A6 */  sh         $v1, 0x2($s1)
    /* 2C974 8003C174 90032392 */  lbu        $v1, 0x390($s1)
    /* 2C978 8003C178 21104400 */  addu       $v0, $v0, $a0
    /* 2C97C 8003C17C 0700632C */  sltiu      $v1, $v1, 0x7
    /* 2C980 8003C180 B1006014 */  bnez       $v1, .L8003C448
    /* 2C984 8003C184 060022A6 */   sh        $v0, 0x6($s1)
    /* 2C988 8003C188 21202002 */  addu       $a0, $s1, $zero
    /* 2C98C 8003C18C 01000524 */  addiu      $a1, $zero, 0x1
    /* 2C990 8003C190 97032292 */  lbu        $v0, 0x397($s1)
    /* 2C994 8003C194 01000624 */  addiu      $a2, $zero, 0x1
    /* 2C998 8003C198 01004224 */  addiu      $v0, $v0, 0x1
    /* 2C99C 8003C19C 9DF4000C */  jal        func_8003D274
    /* 2C9A0 8003C1A0 970322A2 */   sb        $v0, 0x397($s1)
    /* 2C9A4 8003C1A4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2C9A8 8003C1A8 A7004010 */  beqz       $v0, .L8003C448
    /* 2C9AC 8003C1AC 00000000 */   nop
    /* 2C9B0 8003C1B0 99032292 */  lbu        $v0, 0x399($s1)
    /* 2C9B4 8003C1B4 02002386 */  lh         $v1, 0x2($s1)
    /* 2C9B8 8003C1B8 06004010 */  beqz       $v0, .L8003C1D4
    /* 2C9BC 8003C1BC 23100300 */   negu      $v0, $v1
    /* 2C9C0 8003C1C0 90194228 */  slti       $v0, $v0, 0x1990
    /* 2C9C4 8003C1C4 3B004010 */  beqz       $v0, .L8003C2B4
    /* 2C9C8 8003C1C8 00000000 */   nop
    /* 2C9CC 8003C1CC 78F00008 */  j          .L8003C1E0
    /* 2C9D0 8003C1D0 00000000 */   nop
  .L8003C1D4:
    /* 2C9D4 8003C1D4 90196228 */  slti       $v0, $v1, 0x1990
    /* 2C9D8 8003C1D8 36004010 */  beqz       $v0, .L8003C2B4
    /* 2C9DC 8003C1DC 00000000 */   nop
  .L8003C1E0:
    /* 2C9E0 8003C1E0 E871010C */  jal        func_8005C7A0
    /* 2C9E4 8003C1E4 08000424 */   addiu     $a0, $zero, 0x8
    /* 2C9E8 8003C1E8 24000624 */  addiu      $a2, $zero, 0x24
    /* 2C9EC 8003C1EC 99032492 */  lbu        $a0, 0x399($s1)
    /* 2C9F0 8003C1F0 AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 2C9F4 8003C1F4 C0210400 */  sll        $a0, $a0, 7
    /* 2C9F8 8003C1F8 21208200 */  addu       $a0, $a0, $v0
    /* 2C9FC 8003C1FC F36D010C */  jal        func_8005B7CC
    /* 2CA00 8003C200 FF008430 */   andi      $a0, $a0, 0xFF
    /* 2CA04 8003C204 08000424 */  addiu      $a0, $zero, 0x8
    /* 2CA08 8003C208 E871010C */  jal        func_8005C7A0
    /* 2CA0C 8003C20C 21904000 */   addu      $s2, $v0, $zero
    /* 2CA10 8003C210 08000424 */  addiu      $a0, $zero, 0x8
    /* 2CA14 8003C214 AE79000C */  jal        func_8001E6B8
    /* 2CA18 8003C218 21804000 */   addu      $s0, $v0, $zero
    /* 2CA1C 8003C21C 00841000 */  sll        $s0, $s0, 16
    /* 2CA20 8003C220 03841000 */  sra        $s0, $s0, 16
    /* 2CA24 8003C224 70004224 */  addiu      $v0, $v0, 0x70
    /* 2CA28 8003C228 21980202 */  addu       $s3, $s0, $v0
    /* 2CA2C 8003C22C AE79000C */  jal        func_8001E6B8
    /* 2CA30 8003C230 04000424 */   addiu     $a0, $zero, 0x4
    /* 2CA34 8003C234 21202002 */  addu       $a0, $s1, $zero
    /* 2CA38 8003C238 FF004532 */  andi       $a1, $s2, 0xFF
    /* 2CA3C 8003C23C 21306002 */  addu       $a2, $s3, $zero
    /* 2CA40 8003C240 3C2C010C */  jal        func_8004B0F0
    /* 2CA44 8003C244 1C004724 */   addiu     $a3, $v0, 0x1C
    /* 2CA48 8003C248 F402838E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s4)
    /* 2CA4C 8003C24C 08000224 */  addiu      $v0, $zero, 0x8
    /* 2CA50 8003C250 B20362A0 */  sb         $v0, 0x3B2($v1)
    /* 2CA54 8003C254 F402838E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s4)
    /* 2CA58 8003C258 04000224 */  addiu      $v0, $zero, 0x4
    /* 2CA5C 8003C25C 960362A0 */  sb         $v0, 0x396($v1)
    /* 2CA60 8003C260 99032292 */  lbu        $v0, 0x399($s1)
    /* 2CA64 8003C264 07050424 */  addiu      $a0, $zero, 0x507
    /* 2CA68 8003C268 01004238 */  xori       $v0, $v0, 0x1
    /* 2CA6C 8003C26C FF004230 */  andi       $v0, $v0, 0xFF
    /* 2CA70 8003C270 88AD020C */  jal        func_800AB620
    /* 2CA74 8003C274 1C0382A6 */   sh        $v0, (0x1F80031C & 0xFFFF)($s4)
    /* 2CA78 8003C278 9E2C010C */  jal        func_8004B278
    /* 2CA7C 8003C27C 00000000 */   nop
    /* 2CA80 8003C280 21202002 */  addu       $a0, $s1, $zero
    /* 2CA84 8003C284 01000524 */  addiu      $a1, $zero, 0x1
    /* 2CA88 8003C288 01000624 */  addiu      $a2, $zero, 0x1
    /* 2CA8C 8003C28C B4028796 */  lhu        $a3, (0x1F8002B4 & 0xFFFF)($s4)
    /* 2CA90 8003C290 B6028296 */  lhu        $v0, (0x1F8002B6 & 0xFFFF)($s4)
    /* 2CA94 8003C294 003C0700 */  sll        $a3, $a3, 16
    /* 2CA98 8003C298 033C0700 */  sra        $a3, $a3, 16
    /* 2CA9C 8003C29C 00140200 */  sll        $v0, $v0, 16
    /* 2CAA0 8003C2A0 03140200 */  sra        $v0, $v0, 16
    /* 2CAA4 8003C2A4 A526010C */  jal        func_80049A94
    /* 2CAA8 8003C2A8 1000A2AF */   sw        $v0, 0x10($sp)
    /* 2CAAC 8003C2AC 12F10008 */  j          .L8003C448
    /* 2CAB0 8003C2B0 00000000 */   nop
  .L8003C2B4:
    /* 2CAB4 8003C2B4 AE79000C */  jal        func_8001E6B8
    /* 2CAB8 8003C2B8 03000424 */   addiu     $a0, $zero, 0x3
    /* 2CABC 8003C2BC 23004010 */  beqz       $v0, .L8003C34C
    /* 2CAC0 8003C2C0 00000000 */   nop
    /* 2CAC4 8003C2C4 AE79000C */  jal        func_8001E6B8
    /* 2CAC8 8003C2C8 04000424 */   addiu     $a0, $zero, 0x4
    /* 2CACC 8003C2CC B0005324 */  addiu      $s3, $v0, 0xB0
    /* 2CAD0 8003C2D0 AE79000C */  jal        func_8001E6B8
    /* 2CAD4 8003C2D4 03000424 */   addiu     $a0, $zero, 0x3
    /* 2CAD8 8003C2D8 18004010 */  beqz       $v0, .L8003C33C
    /* 2CADC 8003C2DC 00000000 */   nop
    /* 2CAE0 8003C2E0 92032292 */  lbu        $v0, 0x392($s1)
    /* 2CAE4 8003C2E4 98032492 */  lbu        $a0, 0x398($s1)
    /* 2CAE8 8003C2E8 40180200 */  sll        $v1, $v0, 1
    /* 2CAEC 8003C2EC 21186200 */  addu       $v1, $v1, $v0
    /* 2CAF0 8003C2F0 80180300 */  sll        $v1, $v1, 2
    /* 2CAF4 8003C2F4 40110400 */  sll        $v0, $a0, 5
    /* 2CAF8 8003C2F8 21104400 */  addu       $v0, $v0, $a0
    /* 2CAFC 8003C2FC C0100200 */  sll        $v0, $v0, 3
    /* 2CB00 8003C300 21186200 */  addu       $v1, $v1, $v0
    /* 2CB04 8003C304 1180013C */  lui        $at, %hi(D_8010C32C)
    /* 2CB08 8003C308 21082300 */  addu       $at, $at, $v1
    /* 2CB0C 8003C30C 2CC3248C */  lw         $a0, %lo(D_8010C32C)($at)
    /* 2CB10 8003C310 0D000224 */  addiu      $v0, $zero, 0xD
    /* 2CB14 8003C314 02210400 */  srl        $a0, $a0, 4
    /* 2CB18 8003C318 0F008430 */  andi       $a0, $a0, 0xF
    /* 2CB1C 8003C31C AE79000C */  jal        func_8001E6B8
    /* 2CB20 8003C320 23204400 */   subu      $a0, $v0, $a0
    /* 2CB24 8003C324 21202002 */  addu       $a0, $s1, $zero
    /* 2CB28 8003C328 79AC000C */  jal        func_8002B1E4
    /* 2CB2C 8003C32C 21804000 */   addu      $s0, $v0, $zero
    /* 2CB30 8003C330 0A004224 */  addiu      $v0, $v0, 0xA
    /* 2CB34 8003C334 D9F00008 */  j          .L8003C364
    /* 2CB38 8003C338 21800202 */   addu      $s0, $s0, $v0
  .L8003C33C:
    /* 2CB3C 8003C33C AE79000C */  jal        func_8001E6B8
    /* 2CB40 8003C340 04000424 */   addiu     $a0, $zero, 0x4
    /* 2CB44 8003C344 D9F00008 */  j          .L8003C364
    /* 2CB48 8003C348 04005024 */   addiu     $s0, $v0, 0x4
  .L8003C34C:
    /* 2CB4C 8003C34C AE79000C */  jal        func_8001E6B8
    /* 2CB50 8003C350 04000424 */   addiu     $a0, $zero, 0x4
    /* 2CB54 8003C354 B8005324 */  addiu      $s3, $v0, 0xB8
    /* 2CB58 8003C358 AE79000C */  jal        func_8001E6B8
    /* 2CB5C 8003C35C 04000424 */   addiu     $a0, $zero, 0x4
    /* 2CB60 8003C360 F1FF5024 */  addiu      $s0, $v0, -0xF
  .L8003C364:
    /* 2CB64 8003C364 92032292 */  lbu        $v0, 0x392($s1)
    /* 2CB68 8003C368 98032492 */  lbu        $a0, 0x398($s1)
    /* 2CB6C 8003C36C 40180200 */  sll        $v1, $v0, 1
    /* 2CB70 8003C370 21186200 */  addu       $v1, $v1, $v0
    /* 2CB74 8003C374 80180300 */  sll        $v1, $v1, 2
    /* 2CB78 8003C378 40110400 */  sll        $v0, $a0, 5
    /* 2CB7C 8003C37C 21104400 */  addu       $v0, $v0, $a0
    /* 2CB80 8003C380 C0100200 */  sll        $v0, $v0, 3
    /* 2CB84 8003C384 21186200 */  addu       $v1, $v1, $v0
    /* 2CB88 8003C388 1180013C */  lui        $at, %hi(D_8010C330)
    /* 2CB8C 8003C38C 21082300 */  addu       $at, $at, $v1
    /* 2CB90 8003C390 30C3228C */  lw         $v0, %lo(D_8010C330)($at)
    /* 2CB94 8003C394 AC032392 */  lbu        $v1, 0x3AC($s1)
    /* 2CB98 8003C398 02110200 */  srl        $v0, $v0, 4
    /* 2CB9C 8003C39C 01004230 */  andi       $v0, $v0, 0x1
    /* 2CBA0 8003C3A0 06006210 */  beq        $v1, $v0, .L8003C3BC
    /* 2CBA4 8003C3A4 001A1300 */   sll       $v1, $s3, 8
    /* 2CBA8 8003C3A8 F0F0023C */  lui        $v0, (0xF0F0F0F1 >> 16)
    /* 2CBAC 8003C3AC F1F04234 */  ori        $v0, $v0, (0xF0F0F0F1 & 0xFFFF)
    /* 2CBB0 8003C3B0 19006200 */  multu      $v1, $v0
    /* 2CBB4 8003C3B4 10400000 */  mfhi       $t0
    /* 2CBB8 8003C3B8 029A0800 */  srl        $s3, $t0, 8
  .L8003C3BC:
    /* 2CBBC 8003C3BC 21202002 */  addu       $a0, $s1, $zero
    /* 2CBC0 8003C3C0 AB032592 */  lbu        $a1, 0x3AB($s1)
    /* 2CBC4 8003C3C4 67F6000C */  jal        func_8003D99C
    /* 2CBC8 8003C3C8 01000624 */   addiu     $a2, $zero, 0x1
    /* 2CBCC 8003C3CC 21202002 */  addu       $a0, $s1, $zero
    /* 2CBD0 8003C3D0 FF004530 */  andi       $a1, $v0, 0xFF
    /* 2CBD4 8003C3D4 21306002 */  addu       $a2, $s3, $zero
    /* 2CBD8 8003C3D8 3C2C010C */  jal        func_8004B0F0
    /* 2CBDC 8003C3DC 21380002 */   addu      $a3, $s0, $zero
    /* 2CBE0 8003C3E0 F402838E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s4)
    /* 2CBE4 8003C3E4 B1032292 */  lbu        $v0, 0x3B1($s1)
    /* 2CBE8 8003C3E8 03000424 */  addiu      $a0, $zero, 0x3
    /* 2CBEC 8003C3EC AE79000C */  jal        func_8001E6B8
    /* 2CBF0 8003C3F0 CA0362A4 */   sh        $v0, 0x3CA($v1)
    /* 2CBF4 8003C3F4 07050424 */  addiu      $a0, $zero, 0x507
    /* 2CBF8 8003C3F8 F402838E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s4)
    /* 2CBFC 8003C3FC 05004224 */  addiu      $v0, $v0, 0x5
    /* 2CC00 8003C400 C80362A4 */  sh         $v0, 0x3C8($v1)
    /* 2CC04 8003C404 F402838E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s4)
    /* 2CC08 8003C408 04000224 */  addiu      $v0, $zero, 0x4
    /* 2CC0C 8003C40C 88AD020C */  jal        func_800AB620
    /* 2CC10 8003C410 960362A0 */   sb        $v0, 0x396($v1)
    /* 2CC14 8003C414 21202002 */  addu       $a0, $s1, $zero
    /* 2CC18 8003C418 69AD000C */  jal        func_8002B5A4
    /* 2CC1C 8003C41C 02000524 */   addiu     $a1, $zero, 0x2
    /* 2CC20 8003C420 1F5C010C */  jal        func_8005707C
    /* 2CC24 8003C424 21202002 */   addu      $a0, $s1, $zero
    /* 2CC28 8003C428 12F10008 */  j          .L8003C448
    /* 2CC2C 8003C42C 00000000 */   nop
  .L8003C430:
    /* 2CC30 8003C430 90032392 */  lbu        $v1, 0x390($s1)
    /* 2CC34 8003C434 1C000224 */  addiu      $v0, $zero, 0x1C
    /* 2CC38 8003C438 03006214 */  bne        $v1, $v0, .L8003C448
    /* 2CC3C 8003C43C 00000000 */   nop
    /* 2CC40 8003C440 960320A2 */  sb         $zero, 0x396($s1)
    /* 2CC44 8003C444 970320A2 */  sb         $zero, 0x397($s1)
  .L8003C448:
    /* 2CC48 8003C448 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 2CC4C 8003C44C 2800B48F */  lw         $s4, 0x28($sp)
    /* 2CC50 8003C450 2400B38F */  lw         $s3, 0x24($sp)
    /* 2CC54 8003C454 2000B28F */  lw         $s2, 0x20($sp)
    /* 2CC58 8003C458 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2CC5C 8003C45C 1800B08F */  lw         $s0, 0x18($sp)
    /* 2CC60 8003C460 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 2CC64 8003C464 0800E003 */  jr         $ra
    /* 2CC68 8003C468 00000000 */   nop
endlabel func_8003C0E8
