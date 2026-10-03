nonmatching func_8002C28C, 0x7F0

glabel func_8002C28C
    /* 1CA8C 8002C28C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1CA90 8002C290 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 1CA94 8002C294 21988000 */  addu       $s3, $a0, $zero
    /* 1CA98 8002C298 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1CA9C 8002C29C 1080103C */  lui        $s0, %hi(D_800FF748)
    /* 1CAA0 8002C2A0 48F71026 */  addiu      $s0, $s0, %lo(D_800FF748)
    /* 1CAA4 8002C2A4 2800B6AF */  sw         $s6, 0x28($sp)
    /* 1CAA8 8002C2A8 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 1CAAC 8002C2AC 2400B5AF */  sw         $s5, 0x24($sp)
    /* 1CAB0 8002C2B0 2000B4AF */  sw         $s4, 0x20($sp)
    /* 1CAB4 8002C2B4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1CAB8 8002C2B8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1CABC 8002C2BC 97036392 */  lbu        $v1, 0x397($s3)
    /* 1CAC0 8002C2C0 02000224 */  addiu      $v0, $zero, 0x2
    /* 1CAC4 8002C2C4 1C006210 */  beq        $v1, $v0, .L8002C338
    /* 1CAC8 8002C2C8 801F163C */   lui       $s6, (0x1F8002F4 >> 16)
    /* 1CACC 8002C2CC 801F033C */  lui        $v1, (0x1F80029A >> 16)
    /* 1CAD0 8002C2D0 9A026390 */  lbu        $v1, (0x1F80029A & 0xFFFF)($v1)
    /* 1CAD4 8002C2D4 01000224 */  addiu      $v0, $zero, 0x1
    /* 1CAD8 8002C2D8 17006214 */  bne        $v1, $v0, .L8002C338
    /* 1CADC 8002C2DC 04000224 */   addiu     $v0, $zero, 0x4
    /* 1CAE0 8002C2E0 C4036386 */  lh         $v1, 0x3C4($s3)
    /* 1CAE4 8002C2E4 00000000 */  nop
    /* 1CAE8 8002C2E8 11006210 */  beq        $v1, $v0, .L8002C330
    /* 1CAEC 8002C2EC 00000000 */   nop
    /* 1CAF0 8002C2F0 801F023C */  lui        $v0, (0x1F80028C >> 16)
    /* 1CAF4 8002C2F4 8C024290 */  lbu        $v0, (0x1F80028C & 0xFFFF)($v0)
    /* 1CAF8 8002C2F8 00000000 */  nop
    /* 1CAFC 8002C2FC 06004010 */  beqz       $v0, .L8002C318
    /* 1CB00 8002C300 00000000 */   nop
    /* 1CB04 8002C304 0C80013C */  lui        $at, %hi(D_800C6B74)
    /* 1CB08 8002C308 21082200 */  addu       $at, $at, $v0
    /* 1CB0C 8002C30C 746B3290 */  lbu        $s2, %lo(D_800C6B74)($at)
    /* 1CB10 8002C310 C8B00008 */  j          .L8002C320
    /* 1CB14 8002C314 21206002 */   addu      $a0, $s3, $zero
  .L8002C318:
    /* 1CB18 8002C318 AA037292 */  lbu        $s2, 0x3AA($s3)
    /* 1CB1C 8002C31C 21206002 */  addu       $a0, $s3, $zero
  .L8002C320:
    /* 1CB20 8002C320 9FB2000C */  jal        func_8002CA7C
    /* 1CB24 8002C324 FF004532 */   andi      $a1, $s2, 0xFF
    /* 1CB28 8002C328 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1CB2C 8002C32C C20362A6 */  sh         $v0, 0x3C2($s3)
  .L8002C330:
    /* 1CB30 8002C330 D7B3000C */  jal        func_8002CF5C
    /* 1CB34 8002C334 21206002 */   addu      $a0, $s3, $zero
  .L8002C338:
    /* 1CB38 8002C338 C2036296 */  lhu        $v0, 0x3C2($s3)
    /* 1CB3C 8002C33C 00000000 */  nop
    /* 1CB40 8002C340 001C0200 */  sll        $v1, $v0, 16
    /* 1CB44 8002C344 03240300 */  sra        $a0, $v1, 16
    /* 1CB48 8002C348 54008010 */  beqz       $a0, .L8002C49C
    /* 1CB4C 8002C34C AA2A023C */   lui       $v0, (0x2AAAAAAB >> 16)
    /* 1CB50 8002C350 ABAA4234 */  ori        $v0, $v0, (0x2AAAAAAB & 0xFFFF)
    /* 1CB54 8002C354 18008200 */  mult       $a0, $v0
    /* 1CB58 8002C358 C31F0300 */  sra        $v1, $v1, 31
    /* 1CB5C 8002C35C 10400000 */  mfhi       $t0
    /* 1CB60 8002C360 83100800 */  sra        $v0, $t0, 2
    /* 1CB64 8002C364 23104300 */  subu       $v0, $v0, $v1
    /* 1CB68 8002C368 40180200 */  sll        $v1, $v0, 1
    /* 1CB6C 8002C36C 21186200 */  addu       $v1, $v1, $v0
    /* 1CB70 8002C370 C0180300 */  sll        $v1, $v1, 3
    /* 1CB74 8002C374 23188300 */  subu       $v1, $a0, $v1
    /* 1CB78 8002C378 001C0300 */  sll        $v1, $v1, 16
    /* 1CB7C 8002C37C 031C0300 */  sra        $v1, $v1, 16
    /* 1CB80 8002C380 40110300 */  sll        $v0, $v1, 5
    /* 1CB84 8002C384 23104300 */  subu       $v0, $v0, $v1
    /* 1CB88 8002C388 80100200 */  sll        $v0, $v0, 2
    /* 1CB8C 8002C38C 21104300 */  addu       $v0, $v0, $v1
    /* 1CB90 8002C390 C0100200 */  sll        $v0, $v0, 3
    /* 1CB94 8002C394 21380202 */  addu       $a3, $s0, $v0
    /* 1CB98 8002C398 0800E28C */  lw         $v0, 0x8($a3)
    /* 1CB9C 8002C39C 0200E384 */  lh         $v1, 0x2($a3)
    /* 1CBA0 8002C3A0 80100200 */  sll        $v0, $v0, 2
    /* 1CBA4 8002C3A4 21186200 */  addu       $v1, $v1, $v0
    /* 1CBA8 8002C3A8 99036292 */  lbu        $v0, 0x399($s3)
    /* 1CBAC 8002C3AC C6036486 */  lh         $a0, 0x3C6($s3)
    /* 1CBB0 8002C3B0 02004014 */  bnez       $v0, .L8002C3BC
    /* 1CBB4 8002C3B4 23A06400 */   subu      $s4, $v1, $a0
    /* 1CBB8 8002C3B8 21A06400 */  addu       $s4, $v1, $a0
  .L8002C3BC:
    /* 1CBBC 8002C3BC 008C1400 */  sll        $s1, $s4, 16
    /* 1CBC0 8002C3C0 038C1100 */  sra        $s1, $s1, 16
    /* 1CBC4 8002C3C4 21302002 */  addu       $a2, $s1, $zero
    /* 1CBC8 8002C3C8 02006486 */  lh         $a0, 0x2($s3)
    /* 1CBCC 8002C3CC 06006586 */  lh         $a1, 0x6($s3)
    /* 1CBD0 8002C3D0 1000E28C */  lw         $v0, 0x10($a3)
    /* 1CBD4 8002C3D4 0600F094 */  lhu        $s0, 0x6($a3)
    /* 1CBD8 8002C3D8 80100200 */  sll        $v0, $v0, 2
    /* 1CBDC 8002C3DC 21800202 */  addu       $s0, $s0, $v0
    /* 1CBE0 8002C3E0 00841000 */  sll        $s0, $s0, 16
    /* 1CBE4 8002C3E4 03841000 */  sra        $s0, $s0, 16
    /* 1CBE8 8002C3E8 DB6C010C */  jal        func_8005B36C
    /* 1CBEC 8002C3EC 21380002 */   addu      $a3, $s0, $zero
    /* 1CBF0 8002C3F0 F402C48E */  lw         $a0, (0x1F8002F4 & 0xFFFF)($s6)
    /* 1CBF4 8002C3F4 00000000 */  nop
    /* 1CBF8 8002C3F8 02008384 */  lh         $v1, 0x2($a0)
    /* 1CBFC 8002C3FC 00000000 */  nop
    /* 1CC00 8002C400 23187100 */  subu       $v1, $v1, $s1
    /* 1CC04 8002C404 18006300 */  mult       $v1, $v1
    /* 1CC08 8002C408 06008384 */  lh         $v1, 0x6($a0)
    /* 1CC0C 8002C40C 12280000 */  mflo       $a1
    /* 1CC10 8002C410 23187000 */  subu       $v1, $v1, $s0
    /* 1CC14 8002C414 00000000 */  nop
    /* 1CC18 8002C418 18006300 */  mult       $v1, $v1
    /* 1CC1C 8002C41C 21904000 */  addu       $s2, $v0, $zero
    /* 1CC20 8002C420 12180000 */  mflo       $v1
    /* 1CC24 8002C424 4AC4020C */  jal        func_800B1128
    /* 1CC28 8002C428 2120A300 */   addu      $a0, $a1, $v1
    /* 1CC2C 8002C42C 21884000 */  addu       $s1, $v0, $zero
    /* 1CC30 8002C430 C4036386 */  lh         $v1, 0x3C4($s3)
    /* 1CC34 8002C434 01000224 */  addiu      $v0, $zero, 0x1
    /* 1CC38 8002C438 03006210 */  beq        $v1, $v0, .L8002C448
    /* 1CC3C 8002C43C 04000224 */   addiu     $v0, $zero, 0x4
    /* 1CC40 8002C440 93006214 */  bne        $v1, $v0, .L8002C690
    /* 1CC44 8002C444 FF004232 */   andi      $v0, $s2, 0xFF
  .L8002C448:
    /* 1CC48 8002C448 AA036492 */  lbu        $a0, 0x3AA($s3)
    /* 1CC4C 8002C44C 00000000 */  nop
    /* 1CC50 8002C450 23104402 */  subu       $v0, $s2, $a0
    /* 1CC54 8002C454 FF004330 */  andi       $v1, $v0, 0xFF
    /* 1CC58 8002C458 8100622C */  sltiu      $v0, $v1, 0x81
    /* 1CC5C 8002C45C 08004014 */  bnez       $v0, .L8002C480
    /* 1CC60 8002C460 60006228 */   slti      $v0, $v1, 0x60
    /* 1CC64 8002C464 23109200 */  subu       $v0, $a0, $s2
    /* 1CC68 8002C468 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1CC6C 8002C46C 60004228 */  slti       $v0, $v0, 0x60
    /* 1CC70 8002C470 05004010 */  beqz       $v0, .L8002C488
    /* 1CC74 8002C474 010C222E */   sltiu     $v0, $s1, 0xC01
    /* 1CC78 8002C478 A2B10008 */  j          .L8002C688
    /* 1CC7C 8002C47C 00000000 */   nop
  .L8002C480:
    /* 1CC80 8002C480 81004014 */  bnez       $v0, .L8002C688
    /* 1CC84 8002C484 010C222E */   sltiu     $v0, $s1, 0xC01
  .L8002C488:
    /* 1CC88 8002C488 7F004014 */  bnez       $v0, .L8002C688
    /* 1CC8C 8002C48C 00000000 */   nop
    /* 1CC90 8002C490 C40360A6 */  sh         $zero, 0x3C4($s3)
    /* 1CC94 8002C494 A2B10008 */  j          .L8002C688
    /* 1CC98 8002C498 C60360A6 */   sh        $zero, 0x3C6($s3)
  .L8002C49C:
    /* 1CC9C 8002C49C 9A036292 */  lbu        $v0, 0x39A($s3)
    /* 1CCA0 8002C4A0 00000000 */  nop
    /* 1CCA4 8002C4A4 12004010 */  beqz       $v0, .L8002C4F0
    /* 1CCA8 8002C4A8 00000000 */   nop
    /* 1CCAC 8002C4AC A802C392 */  lbu        $v1, (0x1F8002A8 & 0xFFFF)($s6)
    /* 1CCB0 8002C4B0 8D036292 */  lbu        $v0, 0x38D($s3)
    /* 1CCB4 8002C4B4 00000000 */  nop
    /* 1CCB8 8002C4B8 08004314 */  bne        $v0, $v1, .L8002C4DC
    /* 1CCBC 8002C4BC 1B000224 */   addiu     $v0, $zero, 0x1B
    /* 1CCC0 8002C4C0 21206002 */  addu       $a0, $s3, $zero
    /* 1CCC4 8002C4C4 01000524 */  addiu      $a1, $zero, 0x1
    /* 1CCC8 8002C4C8 8C6E010C */  jal        func_8005BA30
    /* 1CCCC 8002C4CC 21300000 */   addu      $a2, $zero, $zero
    /* 1CCD0 8002C4D0 960360A2 */  sb         $zero, 0x396($s3)
    /* 1CCD4 8002C4D4 94B20008 */  j          .L8002CA50
    /* 1CCD8 8002C4D8 970360A2 */   sb        $zero, 0x397($s3)
  .L8002C4DC:
    /* 1CCDC 8002C4DC 960362A2 */  sb         $v0, 0x396($s3)
    /* 1CCE0 8002C4E0 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 1CCE4 8002C4E4 970360A2 */  sb         $zero, 0x397($s3)
    /* 1CCE8 8002C4E8 94B20008 */  j          .L8002CA50
    /* 1CCEC 8002C4EC C20362A6 */   sh        $v0, 0x3C2($s3)
  .L8002C4F0:
    /* 1CCF0 8002C4F0 99036292 */  lbu        $v0, 0x399($s3)
    /* 1CCF4 8002C4F4 02006386 */  lh         $v1, 0x2($s3)
    /* 1CCF8 8002C4F8 06004010 */  beqz       $v0, .L8002C514
    /* 1CCFC 8002C4FC 23100300 */   negu      $v0, $v1
    /* 1CD00 8002C500 E3214228 */  slti       $v0, $v0, 0x21E3
    /* 1CD04 8002C504 06004010 */  beqz       $v0, .L8002C520
    /* 1CD08 8002C508 06000224 */   addiu     $v0, $zero, 0x6
    /* 1CD0C 8002C50C A0B10008 */  j          .L8002C680
    /* 1CD10 8002C510 00000000 */   nop
  .L8002C514:
    /* 1CD14 8002C514 E3216228 */  slti       $v0, $v1, 0x21E3
    /* 1CD18 8002C518 59004014 */  bnez       $v0, .L8002C680
    /* 1CD1C 8002C51C 06000224 */   addiu     $v0, $zero, 0x6
  .L8002C520:
    /* 1CD20 8002C520 99036292 */  lbu        $v0, 0x399($s3)
    /* 1CD24 8002C524 AA036592 */  lbu        $a1, 0x3AA($s3)
    /* 1CD28 8002C528 C0210200 */  sll        $a0, $v0, 7
    /* 1CD2C 8002C52C 23108500 */  subu       $v0, $a0, $a1
    /* 1CD30 8002C530 FF004330 */  andi       $v1, $v0, 0xFF
    /* 1CD34 8002C534 8100622C */  sltiu      $v0, $v1, 0x81
    /* 1CD38 8002C538 08004014 */  bnez       $v0, .L8002C55C
    /* 1CD3C 8002C53C 31006228 */   slti      $v0, $v1, 0x31
    /* 1CD40 8002C540 2310A400 */  subu       $v0, $a1, $a0
    /* 1CD44 8002C544 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1CD48 8002C548 31004228 */  slti       $v0, $v0, 0x31
    /* 1CD4C 8002C54C 05004014 */  bnez       $v0, .L8002C564
    /* 1CD50 8002C550 B6081524 */   addiu     $s5, $zero, 0x8B6
    /* 1CD54 8002C554 A0B10008 */  j          .L8002C680
    /* 1CD58 8002C558 06000224 */   addiu     $v0, $zero, 0x6
  .L8002C55C:
    /* 1CD5C 8002C55C 47004010 */  beqz       $v0, .L8002C67C
    /* 1CD60 8002C560 B6081524 */   addiu     $s5, $zero, 0x8B6
  .L8002C564:
    /* 1CD64 8002C564 06006386 */  lh         $v1, 0x6($s3)
    /* 1CD68 8002C568 05000224 */  addiu      $v0, $zero, 0x5
    /* 1CD6C 8002C56C 02006018 */  blez       $v1, .L8002C578
    /* 1CD70 8002C570 C40362A6 */   sh        $v0, 0x3C4($s3)
    /* 1CD74 8002C574 4AF71524 */  addiu      $s5, $zero, -0x8B6
  .L8002C578:
    /* 1CD78 8002C578 AE79000C */  jal        func_8001E6B8
    /* 1CD7C 8002C57C 00010424 */   addiu     $a0, $zero, 0x100
    /* 1CD80 8002C580 80004424 */  addiu      $a0, $v0, 0x80
    /* 1CD84 8002C584 99036292 */  lbu        $v0, 0x399($s3)
    /* 1CD88 8002C588 02006386 */  lh         $v1, 0x2($s3)
    /* 1CD8C 8002C58C 02004014 */  bnez       $v0, .L8002C598
    /* 1CD90 8002C590 21A06400 */   addu      $s4, $v1, $a0
    /* 1CD94 8002C594 23A06400 */  subu       $s4, $v1, $a0
  .L8002C598:
    /* 1CD98 8002C598 AE79000C */  jal        func_8001E6B8
    /* 1CD9C 8002C59C 00040424 */   addiu     $a0, $zero, 0x400
    /* 1CDA0 8002C5A0 F0284224 */  addiu      $v0, $v0, 0x28F0
    /* 1CDA4 8002C5A4 001C1400 */  sll        $v1, $s4, 16
    /* 1CDA8 8002C5A8 032C0300 */  sra        $a1, $v1, 16
    /* 1CDAC 8002C5AC FE00C2A6 */  sh         $v0, (0x1F8000FE & 0xFFFF)($s6)
    /* 1CDB0 8002C5B0 00140200 */  sll        $v0, $v0, 16
    /* 1CDB4 8002C5B4 99036392 */  lbu        $v1, 0x399($s3)
    /* 1CDB8 8002C5B8 00000000 */  nop
    /* 1CDBC 8002C5BC 07006010 */  beqz       $v1, .L8002C5DC
    /* 1CDC0 8002C5C0 03240200 */   sra       $a0, $v0, 16
    /* 1CDC4 8002C5C4 23100500 */  negu       $v0, $a1
    /* 1CDC8 8002C5C8 2A104400 */  slt        $v0, $v0, $a0
    /* 1CDCC 8002C5CC 06004014 */  bnez       $v0, .L8002C5E8
    /* 1CDD0 8002C5D0 008C1400 */   sll       $s1, $s4, 16
    /* 1CDD4 8002C5D4 83B10008 */  j          .L8002C60C
    /* 1CDD8 8002C5D8 00000000 */   nop
  .L8002C5DC:
    /* 1CDDC 8002C5DC 2A10A400 */  slt        $v0, $a1, $a0
    /* 1CDE0 8002C5E0 0A004010 */  beqz       $v0, .L8002C60C
    /* 1CDE4 8002C5E4 008C1400 */   sll       $s1, $s4, 16
  .L8002C5E8:
    /* 1CDE8 8002C5E8 FE00C296 */  lhu        $v0, (0x1F8000FE & 0xFFFF)($s6)
    /* 1CDEC 8002C5EC 99036392 */  lbu        $v1, 0x399($s3)
    /* 1CDF0 8002C5F0 00140200 */  sll        $v0, $v0, 16
    /* 1CDF4 8002C5F4 03006010 */  beqz       $v1, .L8002C604
    /* 1CDF8 8002C5F8 03140200 */   sra       $v0, $v0, 16
    /* 1CDFC 8002C5FC 82B10008 */  j          .L8002C608
    /* 1CE00 8002C600 23A00200 */   negu      $s4, $v0
  .L8002C604:
    /* 1CE04 8002C604 21A04000 */  addu       $s4, $v0, $zero
  .L8002C608:
    /* 1CE08 8002C608 008C1400 */  sll        $s1, $s4, 16
  .L8002C60C:
    /* 1CE0C 8002C60C 038C1100 */  sra        $s1, $s1, 16
    /* 1CE10 8002C610 21302002 */  addu       $a2, $s1, $zero
    /* 1CE14 8002C614 00841500 */  sll        $s0, $s5, 16
    /* 1CE18 8002C618 03841000 */  sra        $s0, $s0, 16
    /* 1CE1C 8002C61C 02006486 */  lh         $a0, 0x2($s3)
    /* 1CE20 8002C620 06006586 */  lh         $a1, 0x6($s3)
    /* 1CE24 8002C624 DB6C010C */  jal        func_8005B36C
    /* 1CE28 8002C628 21380002 */   addu      $a3, $s0, $zero
    /* 1CE2C 8002C62C 02000424 */  addiu      $a0, $zero, 0x2
    /* 1CE30 8002C630 E871010C */  jal        func_8005C7A0
    /* 1CE34 8002C634 21904000 */   addu      $s2, $v0, $zero
    /* 1CE38 8002C638 02006386 */  lh         $v1, 0x2($s3)
    /* 1CE3C 8002C63C 00000000 */  nop
    /* 1CE40 8002C640 23187100 */  subu       $v1, $v1, $s1
    /* 1CE44 8002C644 18006300 */  mult       $v1, $v1
    /* 1CE48 8002C648 06006386 */  lh         $v1, 0x6($s3)
    /* 1CE4C 8002C64C 12200000 */  mflo       $a0
    /* 1CE50 8002C650 23187000 */  subu       $v1, $v1, $s0
    /* 1CE54 8002C654 00000000 */  nop
    /* 1CE58 8002C658 18006300 */  mult       $v1, $v1
    /* 1CE5C 8002C65C 21904202 */  addu       $s2, $s2, $v0
    /* 1CE60 8002C660 12180000 */  mflo       $v1
    /* 1CE64 8002C664 4AC4020C */  jal        func_800B1128
    /* 1CE68 8002C668 21208300 */   addu      $a0, $a0, $v1
    /* 1CE6C 8002C66C 21884000 */  addu       $s1, $v0, $zero
    /* 1CE70 8002C670 FE00D4A6 */  sh         $s4, (0x1F8000FE & 0xFFFF)($s6)
    /* 1CE74 8002C674 A2B10008 */  j          .L8002C688
    /* 1CE78 8002C678 0001D5A6 */   sh        $s5, (0x1F800100 & 0xFFFF)($s6)
  .L8002C67C:
    /* 1CE7C 8002C67C 06000224 */  addiu      $v0, $zero, 0x6
  .L8002C680:
    /* 1CE80 8002C680 C40362A6 */  sh         $v0, 0x3C4($s3)
    /* 1CE84 8002C684 00101124 */  addiu      $s1, $zero, 0x1000
  .L8002C688:
    /* 1CE88 8002C688 C4036386 */  lh         $v1, 0x3C4($s3)
    /* 1CE8C 8002C68C FF004232 */  andi       $v0, $s2, 0xFF
  .L8002C690:
    /* 1CE90 8002C690 CC0362A6 */  sh         $v0, 0x3CC($s3)
    /* 1CE94 8002C694 0500622C */  sltiu      $v0, $v1, 0x5
    /* 1CE98 8002C698 13004010 */  beqz       $v0, .L8002C6E8
    /* 1CE9C 8002C69C CA0371A6 */   sh        $s1, 0x3CA($s3)
    /* 1CEA0 8002C6A0 80100300 */  sll        $v0, $v1, 2
    /* 1CEA4 8002C6A4 0180013C */  lui        $at, %hi(jtbl_80010E70)
    /* 1CEA8 8002C6A8 21082200 */  addu       $at, $at, $v0
    /* 1CEAC 8002C6AC 700E228C */  lw         $v0, %lo(jtbl_80010E70)($at)
    /* 1CEB0 8002C6B0 00000000 */  nop
    /* 1CEB4 8002C6B4 08004000 */  jr         $v0
    /* 1CEB8 8002C6B8 00000000 */   nop
  jlabel .L8002C6BC
    /* 1CEBC 8002C6BC 21206002 */  addu       $a0, $s3, $zero
    /* 1CEC0 8002C6C0 CC036592 */  lbu        $a1, 0x3CC($s3)
    /* 1CEC4 8002C6C4 B6B10008 */  j          .L8002C6D8
    /* 1CEC8 8002C6C8 00022626 */   addiu     $a2, $s1, 0x200
  jlabel .L8002C6CC
    /* 1CECC 8002C6CC 21206002 */  addu       $a0, $s3, $zero
    /* 1CED0 8002C6D0 CC036592 */  lbu        $a1, 0x3CC($s3)
    /* 1CED4 8002C6D4 00062626 */  addiu      $a2, $s1, 0x600
  .L8002C6D8:
    /* 1CED8 8002C6D8 2CBB000C */  jal        func_8002ECB0
    /* 1CEDC 8002C6DC 00000000 */   nop
    /* 1CEE0 8002C6E0 BBB10008 */  j          .L8002C6EC
    /* 1CEE4 8002C6E4 21904000 */   addu      $s2, $v0, $zero
  .L8002C6E8:
    /* 1CEE8 8002C6E8 CC037292 */  lbu        $s2, 0x3CC($s3)
  .L8002C6EC:
    /* 1CEEC 8002C6EC 02006486 */  lh         $a0, 0x2($s3)
    /* 1CEF0 8002C6F0 3C00C696 */  lhu        $a2, (0x1F80003C & 0xFFFF)($s6)
    /* 1CEF4 8002C6F4 06006586 */  lh         $a1, 0x6($s3)
    /* 1CEF8 8002C6F8 6C00C796 */  lhu        $a3, (0x1F80006C & 0xFFFF)($s6)
    /* 1CEFC 8002C6FC 00340600 */  sll        $a2, $a2, 16
    /* 1CF00 8002C700 03340600 */  sra        $a2, $a2, 16
    /* 1CF04 8002C704 003C0700 */  sll        $a3, $a3, 16
    /* 1CF08 8002C708 DB6C010C */  jal        func_8005B36C
    /* 1CF0C 8002C70C 033C0700 */   sra       $a3, $a3, 16
    /* 1CF10 8002C710 AA036492 */  lbu        $a0, 0x3AA($s3)
    /* 1CF14 8002C714 21804000 */  addu       $s0, $v0, $zero
    /* 1CF18 8002C718 23100402 */  subu       $v0, $s0, $a0
    /* 1CF1C 8002C71C FF004330 */  andi       $v1, $v0, 0xFF
    /* 1CF20 8002C720 8100622C */  sltiu      $v0, $v1, 0x81
    /* 1CF24 8002C724 08004014 */  bnez       $v0, .L8002C748
    /* 1CF28 8002C728 40006228 */   slti      $v0, $v1, 0x40
    /* 1CF2C 8002C72C 23109000 */  subu       $v0, $a0, $s0
    /* 1CF30 8002C730 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1CF34 8002C734 40004228 */  slti       $v0, $v0, 0x40
    /* 1CF38 8002C738 05004010 */  beqz       $v0, .L8002C750
    /* 1CF3C 8002C73C 23105002 */   subu      $v0, $s2, $s0
    /* 1CF40 8002C740 D7B10008 */  j          .L8002C75C
    /* 1CF44 8002C744 00000000 */   nop
  .L8002C748:
    /* 1CF48 8002C748 04004014 */  bnez       $v0, .L8002C75C
    /* 1CF4C 8002C74C 23105002 */   subu      $v0, $s2, $s0
  .L8002C750:
    /* 1CF50 8002C750 AA037092 */  lbu        $s0, 0x3AA($s3)
    /* 1CF54 8002C754 00000000 */  nop
    /* 1CF58 8002C758 23105002 */  subu       $v0, $s2, $s0
  .L8002C75C:
    /* 1CF5C 8002C75C 08004224 */  addiu      $v0, $v0, 0x8
    /* 1CF60 8002C760 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1CF64 8002C764 02A10200 */  srl        $s4, $v0, 4
    /* 1CF68 8002C768 FF008332 */  andi       $v1, $s4, 0xFF
    /* 1CF6C 8002C76C 1000622C */  sltiu      $v0, $v1, 0x10
    /* 1CF70 8002C770 85004010 */  beqz       $v0, .L8002C988
    /* 1CF74 8002C774 CE0374A6 */   sh        $s4, 0x3CE($s3)
    /* 1CF78 8002C778 80100300 */  sll        $v0, $v1, 2
    /* 1CF7C 8002C77C 0180013C */  lui        $at, %hi(jtbl_80010E88)
    /* 1CF80 8002C780 21082200 */  addu       $at, $at, $v0
    /* 1CF84 8002C784 880E228C */  lw         $v0, %lo(jtbl_80010E88)($at)
    /* 1CF88 8002C788 00000000 */  nop
    /* 1CF8C 8002C78C 08004000 */  jr         $v0
    /* 1CF90 8002C790 00000000 */   nop
  jlabel .L8002C794
    /* 1CF94 8002C794 21206002 */  addu       $a0, $s3, $zero
    /* 1CF98 8002C798 10000524 */  addiu      $a1, $zero, 0x10
    /* 1CF9C 8002C79C 92036292 */  lbu        $v0, 0x392($s3)
    /* 1CFA0 8002C7A0 98036692 */  lbu        $a2, 0x398($s3)
    /* 1CFA4 8002C7A4 40180200 */  sll        $v1, $v0, 1
    /* 1CFA8 8002C7A8 21186200 */  addu       $v1, $v1, $v0
    /* 1CFAC 8002C7AC 80180300 */  sll        $v1, $v1, 2
    /* 1CFB0 8002C7B0 40110600 */  sll        $v0, $a2, 5
    /* 1CFB4 8002C7B4 21104600 */  addu       $v0, $v0, $a2
    /* 1CFB8 8002C7B8 C0100200 */  sll        $v0, $v0, 3
    /* 1CFBC 8002C7BC 21186200 */  addu       $v1, $v1, $v0
    /* 1CFC0 8002C7C0 1180013C */  lui        $at, %hi(D_8010C330)
    /* 1CFC4 8002C7C4 21082300 */  addu       $at, $at, $v1
    /* 1CFC8 8002C7C8 30C3228C */  lw         $v0, %lo(D_8010C330)($at)
    /* 1CFCC 8002C7CC 06000624 */  addiu      $a2, $zero, 0x6
    /* 1CFD0 8002C7D0 02110200 */  srl        $v0, $v0, 4
    /* 1CFD4 8002C7D4 01004230 */  andi       $v0, $v0, 0x1
    /* 1CFD8 8002C7D8 8C6E010C */  jal        func_8005BA30
    /* 1CFDC 8002C7DC AC0362A2 */   sb        $v0, 0x3AC($s3)
    /* 1CFE0 8002C7E0 06B20008 */  j          .L8002C818
    /* 1CFE4 8002C7E4 21206002 */   addu      $a0, $s3, $zero
  jlabel .L8002C7E8
    /* 1CFE8 8002C7E8 21206002 */  addu       $a0, $s3, $zero
    /* 1CFEC 8002C7EC 10000524 */  addiu      $a1, $zero, 0x10
    /* 1CFF0 8002C7F0 06000624 */  addiu      $a2, $zero, 0x6
    /* 1CFF4 8002C7F4 C2101400 */  srl        $v0, $s4, 3
    /* 1CFF8 8002C7F8 8C6E010C */  jal        func_8005BA30
    /* 1CFFC 8002C7FC AC0362A2 */   sb        $v0, 0x3AC($s3)
    /* 1D000 8002C800 FF004432 */  andi       $a0, $s2, 0xFF
    /* 1D004 8002C804 FF000532 */  andi       $a1, $s0, 0xFF
    /* 1D008 8002C808 F36D010C */  jal        func_8005B7CC
    /* 1D00C 8002C80C 0C000624 */   addiu     $a2, $zero, 0xC
    /* 1D010 8002C810 21904000 */  addu       $s2, $v0, $zero
    /* 1D014 8002C814 21206002 */  addu       $a0, $s3, $zero
  .L8002C818:
    /* 1D018 8002C818 FF004532 */  andi       $a1, $s2, 0xFF
    /* 1D01C 8002C81C 09000624 */  addiu      $a2, $zero, 0x9
    /* 1D020 8002C820 7C27010C */  jal        func_80049DF0
    /* 1D024 8002C824 03000724 */   addiu     $a3, $zero, 0x3
    /* 1D028 8002C828 03000224 */  addiu      $v0, $zero, 0x3
    /* 1D02C 8002C82C 8EB20008 */  j          .L8002CA38
    /* 1D030 8002C830 970362A2 */   sb        $v0, 0x397($s3)
  jlabel .L8002C834
    /* 1D034 8002C834 000E222E */  sltiu      $v0, $s1, 0xE00
    /* 1D038 8002C838 30004010 */  beqz       $v0, .L8002C8FC
    /* 1D03C 8002C83C 21206002 */   addu      $a0, $s3, $zero
    /* 1D040 8002C840 92036292 */  lbu        $v0, 0x392($s3)
    /* 1D044 8002C844 98036492 */  lbu        $a0, 0x398($s3)
    /* 1D048 8002C848 40180200 */  sll        $v1, $v0, 1
    /* 1D04C 8002C84C 21186200 */  addu       $v1, $v1, $v0
    /* 1D050 8002C850 80180300 */  sll        $v1, $v1, 2
    /* 1D054 8002C854 40110400 */  sll        $v0, $a0, 5
    /* 1D058 8002C858 21104400 */  addu       $v0, $v0, $a0
    /* 1D05C 8002C85C C0100200 */  sll        $v0, $v0, 3
    /* 1D060 8002C860 21186200 */  addu       $v1, $v1, $v0
    /* 1D064 8002C864 1180013C */  lui        $at, %hi(D_8010C32E)
    /* 1D068 8002C868 21082300 */  addu       $at, $at, $v1
    /* 1D06C 8002C86C 2EC32394 */  lhu        $v1, %lo(D_8010C32E)($at)
    /* 1D070 8002C870 09000224 */  addiu      $v0, $zero, 0x9
    /* 1D074 8002C874 0F006330 */  andi       $v1, $v1, 0xF
    /* 1D078 8002C878 23104300 */  subu       $v0, $v0, $v1
    /* 1D07C 8002C87C 03004228 */  slti       $v0, $v0, 0x3
    /* 1D080 8002C880 1E004010 */  beqz       $v0, .L8002C8FC
    /* 1D084 8002C884 21206002 */   addu      $a0, $s3, $zero
    /* 1D088 8002C888 174E010C */  jal        func_8005385C
    /* 1D08C 8002C88C 01000524 */   addiu     $a1, $zero, 0x1
    /* 1D090 8002C890 42004010 */  beqz       $v0, .L8002C99C
    /* 1D094 8002C894 21206002 */   addu      $a0, $s3, $zero
    /* 1D098 8002C898 12000524 */  addiu      $a1, $zero, 0x12
    /* 1D09C 8002C89C 8C6E010C */  jal        func_8005BA30
    /* 1D0A0 8002C8A0 01000624 */   addiu     $a2, $zero, 0x1
    /* 1D0A4 8002C8A4 C2101400 */  srl        $v0, $s4, 3
    /* 1D0A8 8002C8A8 01004238 */  xori       $v0, $v0, 0x1
    /* 1D0AC 8002C8AC AC0362A2 */  sb         $v0, 0x3AC($s3)
    /* 1D0B0 8002C8B0 03004014 */  bnez       $v0, .L8002C8C0
    /* 1D0B4 8002C8B4 FF004432 */   andi      $a0, $s2, 0xFF
    /* 1D0B8 8002C8B8 31B20008 */  j          .L8002C8C4
    /* 1D0BC 8002C8BC 28009224 */   addiu     $s2, $a0, 0x28
  .L8002C8C0:
    /* 1D0C0 8002C8C0 D8FF9224 */  addiu      $s2, $a0, -0x28
  .L8002C8C4:
    /* 1D0C4 8002C8C4 FF004432 */  andi       $a0, $s2, 0xFF
    /* 1D0C8 8002C8C8 FF001032 */  andi       $s0, $s0, 0xFF
    /* 1D0CC 8002C8CC 21280002 */  addu       $a1, $s0, $zero
    /* 1D0D0 8002C8D0 F36D010C */  jal        func_8005B7CC
    /* 1D0D4 8002C8D4 0C000624 */   addiu     $a2, $zero, 0xC
    /* 1D0D8 8002C8D8 21904000 */  addu       $s2, $v0, $zero
    /* 1D0DC 8002C8DC 21206002 */  addu       $a0, $s3, $zero
    /* 1D0E0 8002C8E0 21280002 */  addu       $a1, $s0, $zero
    /* 1D0E4 8002C8E4 04000624 */  addiu      $a2, $zero, 0x4
    /* 1D0E8 8002C8E8 7C27010C */  jal        func_80049DF0
    /* 1D0EC 8002C8EC 03000724 */   addiu     $a3, $zero, 0x3
    /* 1D0F0 8002C8F0 05000224 */  addiu      $v0, $zero, 0x5
    /* 1D0F4 8002C8F4 8EB20008 */  j          .L8002CA38
    /* 1D0F8 8002C8F8 970362A2 */   sb        $v0, 0x397($s3)
  .L8002C8FC:
    /* 1D0FC 8002C8FC 174E010C */  jal        func_8005385C
    /* 1D100 8002C900 01000524 */   addiu     $a1, $zero, 0x1
    /* 1D104 8002C904 25004010 */  beqz       $v0, .L8002C99C
    /* 1D108 8002C908 21206002 */   addu      $a0, $s3, $zero
    /* 1D10C 8002C90C 10000524 */  addiu      $a1, $zero, 0x10
    /* 1D110 8002C910 8D036292 */  lbu        $v0, 0x38D($s3)
    /* 1D114 8002C914 F402C38E */  lw         $v1, 0x2F4($s6)
    /* 1D118 8002C918 04000624 */  addiu      $a2, $zero, 0x4
    /* 1D11C 8002C91C A802C2A2 */  sb         $v0, 0x2A8($s6)
    /* 1D120 8002C920 03000224 */  addiu      $v0, $zero, 0x3
    /* 1D124 8002C924 960362A0 */  sb         $v0, 0x396($v1)
    /* 1D128 8002C928 C2101400 */  srl        $v0, $s4, 3
    /* 1D12C 8002C92C 8C6E010C */  jal        func_8005BA30
    /* 1D130 8002C930 AC0362A2 */   sb        $v0, 0x3AC($s3)
    /* 1D134 8002C934 FF000432 */  andi       $a0, $s0, 0xFF
    /* 1D138 8002C938 FF004532 */  andi       $a1, $s2, 0xFF
    /* 1D13C 8002C93C F36D010C */  jal        func_8005B7CC
    /* 1D140 8002C940 10000624 */   addiu     $a2, $zero, 0x10
    /* 1D144 8002C944 21904000 */  addu       $s2, $v0, $zero
    /* 1D148 8002C948 FF004432 */  andi       $a0, $s2, 0xFF
    /* 1D14C 8002C94C AA036592 */  lbu        $a1, 0x3AA($s3)
    /* 1D150 8002C950 18000624 */  addiu      $a2, $zero, 0x18
    /* 1D154 8002C954 F36D010C */  jal        func_8005B7CC
    /* 1D158 8002C958 AB0372A2 */   sb        $s2, 0x3AB($s3)
    /* 1D15C 8002C95C A003638E */  lw         $v1, 0x3A0($s3)
    /* 1D160 8002C960 AA0362A2 */  sb         $v0, 0x3AA($s3)
    /* 1D164 8002C964 1300622C */  sltiu      $v0, $v1, 0x13
    /* 1D168 8002C968 03004010 */  beqz       $v0, .L8002C978
    /* 1D16C 8002C96C EEFF6224 */   addiu     $v0, $v1, -0x12
    /* 1D170 8002C970 5FB20008 */  j          .L8002C97C
    /* 1D174 8002C974 A00360AE */   sw        $zero, 0x3A0($s3)
  .L8002C978:
    /* 1D178 8002C978 A00362AE */  sw         $v0, 0x3A0($s3)
  .L8002C97C:
    /* 1D17C 8002C97C 03000224 */  addiu      $v0, $zero, 0x3
    /* 1D180 8002C980 94B20008 */  j          .L8002CA50
    /* 1D184 8002C984 970362A2 */   sb        $v0, 0x397($s3)
  jlabel .L8002C988
    /* 1D188 8002C988 21206002 */  addu       $a0, $s3, $zero
    /* 1D18C 8002C98C 174E010C */  jal        func_8005385C
    /* 1D190 8002C990 01000524 */   addiu     $a1, $zero, 0x1
    /* 1D194 8002C994 08004014 */  bnez       $v0, .L8002C9B8
    /* 1D198 8002C998 00000000 */   nop
  .L8002C99C:
    /* 1D19C 8002C99C 96036392 */  lbu        $v1, 0x396($s3)
    /* 1D1A0 8002C9A0 18000224 */  addiu      $v0, $zero, 0x18
    /* 1D1A4 8002C9A4 2A006210 */  beq        $v1, $v0, .L8002CA50
    /* 1D1A8 8002C9A8 02000224 */   addiu     $v0, $zero, 0x2
    /* 1D1AC 8002C9AC D10362A2 */  sb         $v0, 0x3D1($s3)
    /* 1D1B0 8002C9B0 94B20008 */  j          .L8002CA50
    /* 1D1B4 8002C9B4 970362A2 */   sb        $v0, 0x397($s3)
  .L8002C9B8:
    /* 1D1B8 8002C9B8 92036292 */  lbu        $v0, 0x392($s3)
    /* 1D1BC 8002C9BC 98036492 */  lbu        $a0, 0x398($s3)
    /* 1D1C0 8002C9C0 40180200 */  sll        $v1, $v0, 1
    /* 1D1C4 8002C9C4 21186200 */  addu       $v1, $v1, $v0
    /* 1D1C8 8002C9C8 80180300 */  sll        $v1, $v1, 2
    /* 1D1CC 8002C9CC 40110400 */  sll        $v0, $a0, 5
    /* 1D1D0 8002C9D0 21104400 */  addu       $v0, $v0, $a0
    /* 1D1D4 8002C9D4 C0100200 */  sll        $v0, $v0, 3
    /* 1D1D8 8002C9D8 21186200 */  addu       $v1, $v1, $v0
    /* 1D1DC 8002C9DC 1180013C */  lui        $at, %hi(D_8010C330)
    /* 1D1E0 8002C9E0 21082300 */  addu       $at, $at, $v1
    /* 1D1E4 8002C9E4 30C3228C */  lw         $v0, %lo(D_8010C330)($at)
    /* 1D1E8 8002C9E8 8E036396 */  lhu        $v1, 0x38E($s3)
    /* 1D1EC 8002C9EC 02110200 */  srl        $v0, $v0, 4
    /* 1D1F0 8002C9F0 01004230 */  andi       $v0, $v0, 0x1
    /* 1D1F4 8002C9F4 AC0362A2 */  sb         $v0, 0x3AC($s3)
    /* 1D1F8 8002C9F8 0C000224 */  addiu      $v0, $zero, 0xC
    /* 1D1FC 8002C9FC 04006210 */  beq        $v1, $v0, .L8002CA10
    /* 1D200 8002CA00 21206002 */   addu      $a0, $s3, $zero
    /* 1D204 8002CA04 0C000524 */  addiu      $a1, $zero, 0xC
    /* 1D208 8002CA08 8C6E010C */  jal        func_8005BA30
    /* 1D20C 8002CA0C 21300000 */   addu      $a2, $zero, $zero
  .L8002CA10:
    /* 1D210 8002CA10 80004426 */  addiu      $a0, $s2, 0x80
    /* 1D214 8002CA14 FF008430 */  andi       $a0, $a0, 0xFF
    /* 1D218 8002CA18 AA036592 */  lbu        $a1, 0x3AA($s3)
    /* 1D21C 8002CA1C 0C000624 */  addiu      $a2, $zero, 0xC
    /* 1D220 8002CA20 F36D010C */  jal        func_8005B7CC
    /* 1D224 8002CA24 AB0372A2 */   sb        $s2, 0x3AB($s3)
    /* 1D228 8002CA28 AA0362A2 */  sb         $v0, 0x3AA($s3)
    /* 1D22C 8002CA2C 06000224 */  addiu      $v0, $zero, 0x6
    /* 1D230 8002CA30 94B20008 */  j          .L8002CA50
    /* 1D234 8002CA34 970362A2 */   sb        $v0, 0x397($s3)
  .L8002CA38:
    /* 1D238 8002CA38 FF004432 */  andi       $a0, $s2, 0xFF
    /* 1D23C 8002CA3C AA036592 */  lbu        $a1, 0x3AA($s3)
    /* 1D240 8002CA40 F36D010C */  jal        func_8005B7CC
    /* 1D244 8002CA44 0C000624 */   addiu     $a2, $zero, 0xC
    /* 1D248 8002CA48 AA0362A2 */  sb         $v0, 0x3AA($s3)
    /* 1D24C 8002CA4C AB0372A2 */  sb         $s2, 0x3AB($s3)
  .L8002CA50:
    /* 1D250 8002CA50 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 1D254 8002CA54 2800B68F */  lw         $s6, 0x28($sp)
    /* 1D258 8002CA58 2400B58F */  lw         $s5, 0x24($sp)
    /* 1D25C 8002CA5C 2000B48F */  lw         $s4, 0x20($sp)
    /* 1D260 8002CA60 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 1D264 8002CA64 1800B28F */  lw         $s2, 0x18($sp)
    /* 1D268 8002CA68 1400B18F */  lw         $s1, 0x14($sp)
    /* 1D26C 8002CA6C 1000B08F */  lw         $s0, 0x10($sp)
    /* 1D270 8002CA70 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 1D274 8002CA74 0800E003 */  jr         $ra
    /* 1D278 8002CA78 00000000 */   nop
endlabel func_8002C28C
