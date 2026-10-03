nonmatching func_8007C264, 0x480

glabel func_8007C264
    /* 6CA64 8007C264 801F033C */  lui        $v1, (0x1F8002AD >> 16)
    /* 6CA68 8007C268 AD026390 */  lbu        $v1, (0x1F8002AD & 0xFFFF)($v1)
    /* 6CA6C 8007C26C AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 6CA70 8007C270 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 6CA74 8007C274 19006200 */  multu      $v1, $v0
    /* 6CA78 8007C278 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 6CA7C 8007C27C 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 6CA80 8007C280 1080153C */  lui        $s5, %hi(D_800FF748)
    /* 6CA84 8007C284 48F7B526 */  addiu      $s5, $s5, %lo(D_800FF748)
    /* 6CA88 8007C288 4000BFAF */  sw         $ra, 0x40($sp)
    /* 6CA8C 8007C28C 3800B4AF */  sw         $s4, 0x38($sp)
    /* 6CA90 8007C290 3400B3AF */  sw         $s3, 0x34($sp)
    /* 6CA94 8007C294 3000B2AF */  sw         $s2, 0x30($sp)
    /* 6CA98 8007C298 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 6CA9C 8007C29C 2800B0AF */  sw         $s0, 0x28($sp)
    /* 6CAA0 8007C2A0 801F013C */  lui        $at, (0x1F800294 >> 16)
    /* 6CAA4 8007C2A4 940220A4 */  sh         $zero, (0x1F800294 & 0xFFFF)($at)
    /* 6CAA8 8007C2A8 10400000 */  mfhi       $t0
    /* 6CAAC 8007C2AC 02210800 */  srl        $a0, $t0, 4
    /* 6CAB0 8007C2B0 40100400 */  sll        $v0, $a0, 1
    /* 6CAB4 8007C2B4 21104400 */  addu       $v0, $v0, $a0
    /* 6CAB8 8007C2B8 C0100200 */  sll        $v0, $v0, 3
    /* 6CABC 8007C2BC 23186200 */  subu       $v1, $v1, $v0
    /* 6CAC0 8007C2C0 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6CAC4 8007C2C4 40110300 */  sll        $v0, $v1, 5
    /* 6CAC8 8007C2C8 23104300 */  subu       $v0, $v0, $v1
    /* 6CACC 8007C2CC 80100200 */  sll        $v0, $v0, 2
    /* 6CAD0 8007C2D0 21104300 */  addu       $v0, $v0, $v1
    /* 6CAD4 8007C2D4 C0100200 */  sll        $v0, $v0, 3
    /* 6CAD8 8007C2D8 21905500 */  addu       $s2, $v0, $s5
    /* 6CADC 8007C2DC 98034392 */  lbu        $v1, 0x398($s2)
    /* 6CAE0 8007C2E0 CC8E0234 */  ori        $v0, $zero, 0x8ECC
    /* 6CAE4 8007C2E4 21187500 */  addu       $v1, $v1, $s5
    /* 6CAE8 8007C2E8 21186200 */  addu       $v1, $v1, $v0
    /* 6CAEC 8007C2EC 00006290 */  lbu        $v0, 0x0($v1)
    /* 6CAF0 8007C2F0 00000000 */  nop
    /* 6CAF4 8007C2F4 01004224 */  addiu      $v0, $v0, 0x1
    /* 6CAF8 8007C2F8 000062A0 */  sb         $v0, 0x0($v1)
    /* 6CAFC 8007C2FC 801F033C */  lui        $v1, (0x1F8002AF >> 16)
    /* 6CB00 8007C300 AF026390 */  lbu        $v1, (0x1F8002AF & 0xFFFF)($v1)
    /* 6CB04 8007C304 01000224 */  addiu      $v0, $zero, 0x1
    /* 6CB08 8007C308 24006214 */  bne        $v1, $v0, .L8007C39C
    /* 6CB0C 8007C30C 801F143C */   lui       $s4, (0x1F8002F0 >> 16)
    /* 6CB10 8007C310 715C000C */  jal        func_800171C4
    /* 6CB14 8007C314 02000424 */   addiu     $a0, $zero, 0x2
    /* 6CB18 8007C318 801F023C */  lui        $v0, (0x1F8002BE >> 16)
    /* 6CB1C 8007C31C BE024284 */  lh         $v0, (0x1F8002BE & 0xFFFF)($v0)
    /* 6CB20 8007C320 00000000 */  nop
    /* 6CB24 8007C324 02004104 */  bgez       $v0, .L8007C330
    /* 6CB28 8007C328 00000000 */   nop
    /* 6CB2C 8007C32C 23100200 */  negu       $v0, $v0
  .L8007C330:
    /* 6CB30 8007C330 F4124228 */  slti       $v0, $v0, 0x12F4
    /* 6CB34 8007C334 15004010 */  beqz       $v0, .L8007C38C
    /* 6CB38 8007C338 00000000 */   nop
    /* 6CB3C 8007C33C 99034292 */  lbu        $v0, 0x399($s2)
    /* 6CB40 8007C340 801F033C */  lui        $v1, (0x1F8002BC >> 16)
    /* 6CB44 8007C344 BC026384 */  lh         $v1, (0x1F8002BC & 0xFFFF)($v1)
    /* 6CB48 8007C348 06004010 */  beqz       $v0, .L8007C364
    /* 6CB4C 8007C34C 23100300 */   negu      $v0, $v1
    /* 6CB50 8007C350 1EDC4228 */  slti       $v0, $v0, -0x23E2
    /* 6CB54 8007C354 06004014 */  bnez       $v0, .L8007C370
    /* 6CB58 8007C358 04000224 */   addiu     $v0, $zero, 0x4
    /* 6CB5C 8007C35C E3F00108 */  j          .L8007C38C
    /* 6CB60 8007C360 00000000 */   nop
  .L8007C364:
    /* 6CB64 8007C364 1EDC6228 */  slti       $v0, $v1, -0x23E2
    /* 6CB68 8007C368 08004010 */  beqz       $v0, .L8007C38C
    /* 6CB6C 8007C36C 04000224 */   addiu     $v0, $zero, 0x4
  .L8007C370:
    /* 6CB70 8007C370 D859A0A2 */  sb         $zero, 0x59D8($s5)
    /* 6CB74 8007C374 0F80013C */  lui        $at, %hi(D_800EF9C8)
    /* 6CB78 8007C378 C8F922A0 */  sb         $v0, %lo(D_800EF9C8)($at)
    /* 6CB7C 8007C37C 715C000C */  jal        func_800171C4
    /* 6CB80 8007C380 0B000424 */   addiu     $a0, $zero, 0xB
    /* 6CB84 8007C384 AFF10108 */  j          .L8007C6BC
    /* 6CB88 8007C388 00000000 */   nop
  .L8007C38C:
    /* 6CB8C 8007C38C F265010C */  jal        func_800597C8
    /* 6CB90 8007C390 21200000 */   addu      $a0, $zero, $zero
    /* 6CB94 8007C394 AFF10108 */  j          .L8007C6BC
    /* 6CB98 8007C398 00000000 */   nop
  .L8007C39C:
    /* 6CB9C 8007C39C 21980000 */  addu       $s3, $zero, $zero
    /* 6CBA0 8007C3A0 EE03B126 */  addiu      $s1, $s5, 0x3EE
  .L8007C3A4:
    /* 6CBA4 8007C3A4 AD028292 */  lbu        $v0, (0x1F8002AD & 0xFFFF)($s4)
    /* 6CBA8 8007C3A8 87032392 */  lbu        $v1, 0x387($s1)
    /* 6CBAC 8007C3AC 00000000 */  nop
    /* 6CBB0 8007C3B0 27006210 */  beq        $v1, $v0, .L8007C450
    /* 6CBB4 8007C3B4 00000000 */   nop
    /* 6CBB8 8007C3B8 AE028292 */  lbu        $v0, (0x1F8002AE & 0xFFFF)($s4)
    /* 6CBBC 8007C3BC 00000000 */  nop
    /* 6CBC0 8007C3C0 23006210 */  beq        $v1, $v0, .L8007C450
    /* 6CBC4 8007C3C4 00000000 */   nop
    /* 6CBC8 8007C3C8 02004286 */  lh         $v0, 0x2($s2)
    /* 6CBCC 8007C3CC FCFF2386 */  lh         $v1, -0x4($s1)
    /* 6CBD0 8007C3D0 00000000 */  nop
    /* 6CBD4 8007C3D4 23104300 */  subu       $v0, $v0, $v1
    /* 6CBD8 8007C3D8 18004200 */  mult       $v0, $v0
    /* 6CBDC 8007C3DC 06004286 */  lh         $v0, 0x6($s2)
    /* 6CBE0 8007C3E0 00002386 */  lh         $v1, 0x0($s1)
    /* 6CBE4 8007C3E4 12200000 */  mflo       $a0
    /* 6CBE8 8007C3E8 23104300 */  subu       $v0, $v0, $v1
    /* 6CBEC 8007C3EC 00000000 */  nop
    /* 6CBF0 8007C3F0 18004200 */  mult       $v0, $v0
    /* 6CBF4 8007C3F4 2300033C */  lui        $v1, (0x23FFFF >> 16)
    /* 6CBF8 8007C3F8 FFFF6334 */  ori        $v1, $v1, (0x23FFFF & 0xFFFF)
    /* 6CBFC 8007C3FC 12480000 */  mflo       $t1
    /* 6CC00 8007C400 21108900 */  addu       $v0, $a0, $t1
    /* 6CC04 8007C404 2A186200 */  slt        $v1, $v1, $v0
    /* 6CC08 8007C408 11006014 */  bnez       $v1, .L8007C450
    /* 6CC0C 8007C40C 00000000 */   nop
    /* 6CC10 8007C410 AE79000C */  jal        func_8001E6B8
    /* 6CC14 8007C414 00010424 */   addiu     $a0, $zero, 0x100
    /* 6CC18 8007C418 FF005030 */  andi       $s0, $v0, 0xFF
    /* 6CC1C 8007C41C 21200002 */  addu       $a0, $s0, $zero
    /* 6CC20 8007C420 A579000C */  jal        func_8001E694
    /* 6CC24 8007C424 00060524 */   addiu     $a1, $zero, 0x600
    /* 6CC28 8007C428 21200002 */  addu       $a0, $s0, $zero
    /* 6CC2C 8007C42C 02004396 */  lhu        $v1, 0x2($s2)
    /* 6CC30 8007C430 00060524 */  addiu      $a1, $zero, 0x600
    /* 6CC34 8007C434 21186200 */  addu       $v1, $v1, $v0
    /* 6CC38 8007C438 6979000C */  jal        func_8001E5A4
    /* 6CC3C 8007C43C FCFF23A6 */   sh        $v1, -0x4($s1)
    /* 6CC40 8007C440 06004396 */  lhu        $v1, 0x6($s2)
    /* 6CC44 8007C444 00000000 */  nop
    /* 6CC48 8007C448 21186200 */  addu       $v1, $v1, $v0
    /* 6CC4C 8007C44C 000023A6 */  sh         $v1, 0x0($s1)
  .L8007C450:
    /* 6CC50 8007C450 01007326 */  addiu      $s3, $s3, 0x1
    /* 6CC54 8007C454 1600622A */  slti       $v0, $s3, 0x16
    /* 6CC58 8007C458 D2FF4014 */  bnez       $v0, .L8007C3A4
    /* 6CC5C 8007C45C E8033126 */   addiu     $s1, $s1, 0x3E8
    /* 6CC60 8007C460 AE028392 */  lbu        $v1, (0x1F8002AE & 0xFFFF)($s4)
    /* 6CC64 8007C464 AAAA113C */  lui        $s1, (0xAAAAAAAB >> 16)
    /* 6CC68 8007C468 ABAA3136 */  ori        $s1, $s1, (0xAAAAAAAB & 0xFFFF)
    /* 6CC6C 8007C46C FF006330 */  andi       $v1, $v1, 0xFF
    /* 6CC70 8007C470 19007100 */  multu      $v1, $s1
    /* 6CC74 8007C474 02004486 */  lh         $a0, 0x2($s2)
    /* 6CC78 8007C478 06004586 */  lh         $a1, 0x6($s2)
    /* 6CC7C 8007C47C 10400000 */  mfhi       $t0
    /* 6CC80 8007C480 02310800 */  srl        $a2, $t0, 4
    /* 6CC84 8007C484 40100600 */  sll        $v0, $a2, 1
    /* 6CC88 8007C488 21104600 */  addu       $v0, $v0, $a2
    /* 6CC8C 8007C48C C0100200 */  sll        $v0, $v0, 3
    /* 6CC90 8007C490 23186200 */  subu       $v1, $v1, $v0
    /* 6CC94 8007C494 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6CC98 8007C498 40110300 */  sll        $v0, $v1, 5
    /* 6CC9C 8007C49C 23104300 */  subu       $v0, $v0, $v1
    /* 6CCA0 8007C4A0 80100200 */  sll        $v0, $v0, 2
    /* 6CCA4 8007C4A4 21104300 */  addu       $v0, $v0, $v1
    /* 6CCA8 8007C4A8 C0100200 */  sll        $v0, $v0, 3
    /* 6CCAC 8007C4AC 2110A202 */  addu       $v0, $s5, $v0
    /* 6CCB0 8007C4B0 02004684 */  lh         $a2, 0x2($v0)
    /* 6CCB4 8007C4B4 06004784 */  lh         $a3, 0x6($v0)
    /* 6CCB8 8007C4B8 DB6C010C */  jal        func_8005B36C
    /* 6CCBC 8007C4BC 00000000 */   nop
    /* 6CCC0 8007C4C0 50004224 */  addiu      $v0, $v0, 0x50
    /* 6CCC4 8007C4C4 FF004430 */  andi       $a0, $v0, 0xFF
    /* 6CCC8 8007C4C8 C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 6CCCC 8007C4CC 23186400 */  subu       $v1, $v1, $a0
    /* 6CCD0 8007C4D0 21306000 */  addu       $a2, $v1, $zero
    /* 6CCD4 8007C4D4 02006104 */  bgez       $v1, .L8007C4E0
    /* 6CCD8 8007C4D8 AA0342A2 */   sb        $v0, 0x3AA($s2)
    /* 6CCDC 8007C4DC FF006624 */  addiu      $a2, $v1, 0xFF
  .L8007C4E0:
    /* 6CCE0 8007C4E0 80020524 */  addiu      $a1, $zero, 0x280
    /* 6CCE4 8007C4E4 03120600 */  sra        $v0, $a2, 8
    /* 6CCE8 8007C4E8 00120200 */  sll        $v0, $v0, 8
    /* 6CCEC 8007C4EC 23106200 */  subu       $v0, $v1, $v0
    /* 6CCF0 8007C4F0 AA034492 */  lbu        $a0, 0x3AA($s2)
    /* 6CCF4 8007C4F4 00110200 */  sll        $v0, $v0, 4
    /* 6CCF8 8007C4F8 A579000C */  jal        func_8001E694
    /* 6CCFC 8007C4FC 260042A6 */   sh        $v0, 0x26($s2)
    /* 6CD00 8007C500 80020524 */  addiu      $a1, $zero, 0x280
    /* 6CD04 8007C504 02005096 */  lhu        $s0, 0x2($s2)
    /* 6CD08 8007C508 AA034492 */  lbu        $a0, 0x3AA($s2)
    /* 6CD0C 8007C50C 6979000C */  jal        func_8001E5A4
    /* 6CD10 8007C510 21800202 */   addu      $s0, $s0, $v0
    /* 6CD14 8007C514 17000424 */  addiu      $a0, $zero, 0x17
    /* 6CD18 8007C518 41000524 */  addiu      $a1, $zero, 0x41
    /* 6CD1C 8007C51C 35000624 */  addiu      $a2, $zero, 0x35
    /* 6CD20 8007C520 00841000 */  sll        $s0, $s0, 16
    /* 6CD24 8007C524 06004396 */  lhu        $v1, 0x6($s2)
    /* 6CD28 8007C528 033C1000 */  sra        $a3, $s0, 16
    /* 6CD2C 8007C52C 21186200 */  addu       $v1, $v1, $v0
    /* 6CD30 8007C530 001C0300 */  sll        $v1, $v1, 16
    /* 6CD34 8007C534 031C0300 */  sra        $v1, $v1, 16
    /* 6CD38 8007C538 1000A3AF */  sw         $v1, 0x10($sp)
    /* 6CD3C 8007C53C AA034392 */  lbu        $v1, 0x3AA($s2)
    /* 6CD40 8007C540 00100224 */  addiu      $v0, $zero, 0x1000
    /* 6CD44 8007C544 1800A2AF */  sw         $v0, 0x18($sp)
    /* 6CD48 8007C548 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 6CD4C 8007C54C 2000A2AF */  sw         $v0, 0x20($sp)
    /* 6CD50 8007C550 01000224 */  addiu      $v0, $zero, 0x1
    /* 6CD54 8007C554 2400A2AF */  sw         $v0, 0x24($sp)
    /* 6CD58 8007C558 80006324 */  addiu      $v1, $v1, 0x80
    /* 6CD5C 8007C55C FF006330 */  andi       $v1, $v1, 0xFF
    /* 6CD60 8007C560 5374000C */  jal        func_8001D14C
    /* 6CD64 8007C564 1400A3AF */   sw        $v1, 0x14($sp)
    /* 6CD68 8007C568 1A000624 */  addiu      $a2, $zero, 0x1A
    /* 6CD6C 8007C56C AD028792 */  lbu        $a3, (0x1F8002AD & 0xFFFF)($s4)
    /* 6CD70 8007C570 98034392 */  lbu        $v1, 0x398($s2)
    /* 6CD74 8007C574 FF00E730 */  andi       $a3, $a3, 0xFF
    /* 6CD78 8007C578 1900F100 */  multu      $a3, $s1
    /* 6CD7C 8007C57C A5881034 */  ori        $s0, $zero, 0x88A5
    /* 6CD80 8007C580 40100300 */  sll        $v0, $v1, 1
    /* 6CD84 8007C584 21104300 */  addu       $v0, $v0, $v1
    /* 6CD88 8007C588 80100200 */  sll        $v0, $v0, 2
    /* 6CD8C 8007C58C 23104300 */  subu       $v0, $v0, $v1
    /* 6CD90 8007C590 40100200 */  sll        $v0, $v0, 1
    /* 6CD94 8007C594 21105500 */  addu       $v0, $v0, $s5
    /* 6CD98 8007C598 92034392 */  lbu        $v1, 0x392($s2)
    /* 6CD9C 8007C59C 21105000 */  addu       $v0, $v0, $s0
    /* 6CDA0 8007C5A0 21104300 */  addu       $v0, $v0, $v1
    /* 6CDA4 8007C5A4 00004590 */  lbu        $a1, 0x0($v0)
    /* 6CDA8 8007C5A8 10400000 */  mfhi       $t0
    /* 6CDAC 8007C5AC 02190800 */  srl        $v1, $t0, 4
    /* 6CDB0 8007C5B0 40100300 */  sll        $v0, $v1, 1
    /* 6CDB4 8007C5B4 21104300 */  addu       $v0, $v0, $v1
    /* 6CDB8 8007C5B8 C0100200 */  sll        $v0, $v0, 3
    /* 6CDBC 8007C5BC 2338E200 */  subu       $a3, $a3, $v0
    /* 6CDC0 8007C5C0 FF00E730 */  andi       $a3, $a3, 0xFF
    /* 6CDC4 8007C5C4 40210700 */  sll        $a0, $a3, 5
    /* 6CDC8 8007C5C8 23208700 */  subu       $a0, $a0, $a3
    /* 6CDCC 8007C5CC 80200400 */  sll        $a0, $a0, 2
    /* 6CDD0 8007C5D0 21208700 */  addu       $a0, $a0, $a3
    /* 6CDD4 8007C5D4 C0200400 */  sll        $a0, $a0, 3
    /* 6CDD8 8007C5D8 3472010C */  jal        func_8005C8D0
    /* 6CDDC 8007C5DC 2120A402 */   addu      $a0, $s5, $a0
    /* 6CDE0 8007C5E0 E871010C */  jal        func_8005C7A0
    /* 6CDE4 8007C5E4 30000424 */   addiu     $a0, $zero, 0x30
    /* 6CDE8 8007C5E8 80004224 */  addiu      $v0, $v0, 0x80
    /* 6CDEC 8007C5EC F0028592 */  lbu        $a1, (0x1F8002F0 & 0xFFFF)($s4)
    /* 6CDF0 8007C5F0 AA034392 */  lbu        $v1, 0x3AA($s2)
    /* 6CDF4 8007C5F4 AF028492 */  lbu        $a0, (0x1F8002AF & 0xFFFF)($s4)
    /* 6CDF8 8007C5F8 0100A524 */  addiu      $a1, $a1, 0x1
    /* 6CDFC 8007C5FC 21186200 */  addu       $v1, $v1, $v0
    /* 6CE00 8007C600 FF008430 */  andi       $a0, $a0, 0xFF
    /* 6CE04 8007C604 02000224 */  addiu      $v0, $zero, 0x2
    /* 6CE08 8007C608 E70283A2 */  sb         $v1, (0x1F8002E7 & 0xFFFF)($s4)
    /* 6CE0C 8007C60C 13008214 */  bne        $a0, $v0, .L8007C65C
    /* 6CE10 8007C610 F00285A2 */   sb        $a1, (0x1F8002F0 & 0xFFFF)($s4)
    /* 6CE14 8007C614 98034392 */  lbu        $v1, 0x398($s2)
    /* 6CE18 8007C618 00000000 */  nop
    /* 6CE1C 8007C61C 40100300 */  sll        $v0, $v1, 1
    /* 6CE20 8007C620 21104300 */  addu       $v0, $v0, $v1
    /* 6CE24 8007C624 80100200 */  sll        $v0, $v0, 2
    /* 6CE28 8007C628 23104300 */  subu       $v0, $v0, $v1
    /* 6CE2C 8007C62C 40100200 */  sll        $v0, $v0, 1
    /* 6CE30 8007C630 21105500 */  addu       $v0, $v0, $s5
    /* 6CE34 8007C634 92034392 */  lbu        $v1, 0x392($s2)
    /* 6CE38 8007C638 21105000 */  addu       $v0, $v0, $s0
    /* 6CE3C 8007C63C 21104300 */  addu       $v0, $v0, $v1
    /* 6CE40 8007C640 00004390 */  lbu        $v1, 0x0($v0)
    /* 6CE44 8007C644 00000000 */  nop
    /* 6CE48 8007C648 01006324 */  addiu      $v1, $v1, 0x1
    /* 6CE4C 8007C64C 000043A0 */  sb         $v1, 0x0($v0)
    /* 6CE50 8007C650 98034392 */  lbu        $v1, 0x398($s2)
    /* 6CE54 8007C654 A8F10108 */  j          .L8007C6A0
    /* 6CE58 8007C658 D08E0234 */   ori       $v0, $zero, 0x8ED0
  .L8007C65C:
    /* 6CE5C 8007C65C 98034392 */  lbu        $v1, 0x398($s2)
    /* 6CE60 8007C660 00000000 */  nop
    /* 6CE64 8007C664 40100300 */  sll        $v0, $v1, 1
    /* 6CE68 8007C668 21104300 */  addu       $v0, $v0, $v1
    /* 6CE6C 8007C66C 80100200 */  sll        $v0, $v0, 2
    /* 6CE70 8007C670 23104300 */  subu       $v0, $v0, $v1
    /* 6CE74 8007C674 40100200 */  sll        $v0, $v0, 1
    /* 6CE78 8007C678 21105500 */  addu       $v0, $v0, $s5
    /* 6CE7C 8007C67C 92034392 */  lbu        $v1, 0x392($s2)
    /* 6CE80 8007C680 21105000 */  addu       $v0, $v0, $s0
    /* 6CE84 8007C684 21104300 */  addu       $v0, $v0, $v1
    /* 6CE88 8007C688 00004390 */  lbu        $v1, 0x0($v0)
    /* 6CE8C 8007C68C 00000000 */  nop
    /* 6CE90 8007C690 04006324 */  addiu      $v1, $v1, 0x4
    /* 6CE94 8007C694 000043A0 */  sb         $v1, 0x0($v0)
    /* 6CE98 8007C698 98034392 */  lbu        $v1, 0x398($s2)
    /* 6CE9C 8007C69C CE8E0234 */  ori        $v0, $zero, 0x8ECE
  .L8007C6A0:
    /* 6CEA0 8007C6A0 2118A302 */  addu       $v1, $s5, $v1
    /* 6CEA4 8007C6A4 21186200 */  addu       $v1, $v1, $v0
    /* 6CEA8 8007C6A8 00006290 */  lbu        $v0, 0x0($v1)
    /* 6CEAC 8007C6AC 00000000 */  nop
    /* 6CEB0 8007C6B0 01004224 */  addiu      $v0, $v0, 0x1
    /* 6CEB4 8007C6B4 775C000C */  jal        func_800171DC
    /* 6CEB8 8007C6B8 000062A0 */   sb        $v0, 0x0($v1)
  .L8007C6BC:
    /* 6CEBC 8007C6BC 4000BF8F */  lw         $ra, 0x40($sp)
    /* 6CEC0 8007C6C0 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 6CEC4 8007C6C4 3800B48F */  lw         $s4, 0x38($sp)
    /* 6CEC8 8007C6C8 3400B38F */  lw         $s3, 0x34($sp)
    /* 6CECC 8007C6CC 3000B28F */  lw         $s2, 0x30($sp)
    /* 6CED0 8007C6D0 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 6CED4 8007C6D4 2800B08F */  lw         $s0, 0x28($sp)
    /* 6CED8 8007C6D8 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 6CEDC 8007C6DC 0800E003 */  jr         $ra
    /* 6CEE0 8007C6E0 00000000 */   nop
endlabel func_8007C264
