nonmatching func_8002BAEC, 0x18C

glabel func_8002BAEC
    /* 1C2EC 8002BAEC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1C2F0 8002BAF0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1C2F4 8002BAF4 21808000 */  addu       $s0, $a0, $zero
    /* 1C2F8 8002BAF8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1C2FC 8002BAFC 2188A000 */  addu       $s1, $a1, $zero
    /* 1C300 8002BB00 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1C304 8002BB04 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 1C308 8002BB08 92030292 */  lbu        $v0, 0x392($s0)
    /* 1C30C 8002BB0C 98030492 */  lbu        $a0, 0x398($s0)
    /* 1C310 8002BB10 40180200 */  sll        $v1, $v0, 1
    /* 1C314 8002BB14 21186200 */  addu       $v1, $v1, $v0
    /* 1C318 8002BB18 80180300 */  sll        $v1, $v1, 2
    /* 1C31C 8002BB1C 40110400 */  sll        $v0, $a0, 5
    /* 1C320 8002BB20 21104400 */  addu       $v0, $v0, $a0
    /* 1C324 8002BB24 C0100200 */  sll        $v0, $v0, 3
    /* 1C328 8002BB28 21186200 */  addu       $v1, $v1, $v0
    /* 1C32C 8002BB2C 1180013C */  lui        $at, %hi(D_8010C32C)
    /* 1C330 8002BB30 21082300 */  addu       $at, $at, $v1
    /* 1C334 8002BB34 2CC3238C */  lw         $v1, %lo(D_8010C32C)($at)
    /* 1C338 8002BB38 09000224 */  addiu      $v0, $zero, 0x9
    /* 1C33C 8002BB3C 021B0300 */  srl        $v1, $v1, 12
    /* 1C340 8002BB40 0F006330 */  andi       $v1, $v1, 0xF
    /* 1C344 8002BB44 23104300 */  subu       $v0, $v0, $v1
    /* 1C348 8002BB48 02004228 */  slti       $v0, $v0, 0x2
    /* 1C34C 8002BB4C 42004010 */  beqz       $v0, .L8002BC58
    /* 1C350 8002BB50 2190C000 */   addu      $s2, $a2, $zero
    /* 1C354 8002BB54 AE79000C */  jal        func_8001E6B8
    /* 1C358 8002BB58 02000424 */   addiu     $a0, $zero, 0x2
    /* 1C35C 8002BB5C 3E004010 */  beqz       $v0, .L8002BC58
    /* 1C360 8002BB60 91000224 */   addiu     $v0, $zero, 0x91
    /* 1C364 8002BB64 96032392 */  lbu        $v1, 0x396($s1)
    /* 1C368 8002BB68 00000000 */  nop
    /* 1C36C 8002BB6C 03006210 */  beq        $v1, $v0, .L8002BB7C
    /* 1C370 8002BB70 9D000224 */   addiu     $v0, $zero, 0x9D
    /* 1C374 8002BB74 39006214 */  bne        $v1, $v0, .L8002BC5C
    /* 1C378 8002BB78 21100000 */   addu      $v0, $zero, $zero
  .L8002BB7C:
    /* 1C37C 8002BB7C 02000486 */  lh         $a0, 0x2($s0)
    /* 1C380 8002BB80 06000586 */  lh         $a1, 0x6($s0)
    /* 1C384 8002BB84 02002686 */  lh         $a2, 0x2($s1)
    /* 1C388 8002BB88 06002786 */  lh         $a3, 0x6($s1)
    /* 1C38C 8002BB8C DB6C010C */  jal        func_8005B36C
    /* 1C390 8002BB90 00000000 */   nop
    /* 1C394 8002BB94 23105200 */  subu       $v0, $v0, $s2
    /* 1C398 8002BB98 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1C39C 8002BB9C 8100422C */  sltiu      $v0, $v0, 0x81
    /* 1C3A0 8002BBA0 0E004014 */  bnez       $v0, .L8002BBDC
    /* 1C3A4 8002BBA4 00000000 */   nop
    /* 1C3A8 8002BBA8 02000486 */  lh         $a0, 0x2($s0)
    /* 1C3AC 8002BBAC 06000586 */  lh         $a1, 0x6($s0)
    /* 1C3B0 8002BBB0 02002686 */  lh         $a2, 0x2($s1)
    /* 1C3B4 8002BBB4 06002786 */  lh         $a3, 0x6($s1)
    /* 1C3B8 8002BBB8 DB6C010C */  jal        func_8005B36C
    /* 1C3BC 8002BBBC 00000000 */   nop
    /* 1C3C0 8002BBC0 23104202 */  subu       $v0, $s2, $v0
    /* 1C3C4 8002BBC4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1C3C8 8002BBC8 21004228 */  slti       $v0, $v0, 0x21
    /* 1C3CC 8002BBCC 0E004014 */  bnez       $v0, .L8002BC08
    /* 1C3D0 8002BBD0 21100000 */   addu      $v0, $zero, $zero
    /* 1C3D4 8002BBD4 17AF0008 */  j          .L8002BC5C
    /* 1C3D8 8002BBD8 00000000 */   nop
  .L8002BBDC:
    /* 1C3DC 8002BBDC 02000486 */  lh         $a0, 0x2($s0)
    /* 1C3E0 8002BBE0 06000586 */  lh         $a1, 0x6($s0)
    /* 1C3E4 8002BBE4 02002686 */  lh         $a2, 0x2($s1)
    /* 1C3E8 8002BBE8 06002786 */  lh         $a3, 0x6($s1)
    /* 1C3EC 8002BBEC DB6C010C */  jal        func_8005B36C
    /* 1C3F0 8002BBF0 00000000 */   nop
    /* 1C3F4 8002BBF4 23105200 */  subu       $v0, $v0, $s2
    /* 1C3F8 8002BBF8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1C3FC 8002BBFC 21004228 */  slti       $v0, $v0, 0x21
    /* 1C400 8002BC00 16004010 */  beqz       $v0, .L8002BC5C
    /* 1C404 8002BC04 21100000 */   addu      $v0, $zero, $zero
  .L8002BC08:
    /* 1C408 8002BC08 02000286 */  lh         $v0, 0x2($s0)
    /* 1C40C 8002BC0C 02002386 */  lh         $v1, 0x2($s1)
    /* 1C410 8002BC10 00000000 */  nop
    /* 1C414 8002BC14 23104300 */  subu       $v0, $v0, $v1
    /* 1C418 8002BC18 18004200 */  mult       $v0, $v0
    /* 1C41C 8002BC1C 06000286 */  lh         $v0, 0x6($s0)
    /* 1C420 8002BC20 06002386 */  lh         $v1, 0x6($s1)
    /* 1C424 8002BC24 12200000 */  mflo       $a0
    /* 1C428 8002BC28 23104300 */  subu       $v0, $v0, $v1
    /* 1C42C 8002BC2C 00000000 */  nop
    /* 1C430 8002BC30 18004200 */  mult       $v0, $v0
    /* 1C434 8002BC34 1800023C */  lui        $v0, (0x18FFFF >> 16)
    /* 1C438 8002BC38 FFFF4234 */  ori        $v0, $v0, (0x18FFFF & 0xFFFF)
    /* 1C43C 8002BC3C 12180000 */  mflo       $v1
    /* 1C440 8002BC40 21188300 */  addu       $v1, $a0, $v1
    /* 1C444 8002BC44 2A104300 */  slt        $v0, $v0, $v1
    /* 1C448 8002BC48 04004014 */  bnez       $v0, .L8002BC5C
    /* 1C44C 8002BC4C 21100000 */   addu      $v0, $zero, $zero
    /* 1C450 8002BC50 17AF0008 */  j          .L8002BC5C
    /* 1C454 8002BC54 01000224 */   addiu     $v0, $zero, 0x1
  .L8002BC58:
    /* 1C458 8002BC58 21100000 */  addu       $v0, $zero, $zero
  .L8002BC5C:
    /* 1C45C 8002BC5C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 1C460 8002BC60 1800B28F */  lw         $s2, 0x18($sp)
    /* 1C464 8002BC64 1400B18F */  lw         $s1, 0x14($sp)
    /* 1C468 8002BC68 1000B08F */  lw         $s0, 0x10($sp)
    /* 1C46C 8002BC6C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1C470 8002BC70 0800E003 */  jr         $ra
    /* 1C474 8002BC74 00000000 */   nop
endlabel func_8002BAEC
