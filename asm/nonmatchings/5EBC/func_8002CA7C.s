nonmatching func_8002CA7C, 0x3E4

glabel func_8002CA7C
    /* 1D27C 8002CA7C C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 1D280 8002CA80 2000B2AF */  sw         $s2, 0x20($sp)
    /* 1D284 8002CA84 21908000 */  addu       $s2, $a0, $zero
    /* 1D288 8002CA88 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 1D28C 8002CA8C 3800BEAF */  sw         $fp, 0x38($sp)
    /* 1D290 8002CA90 3400B7AF */  sw         $s7, 0x34($sp)
    /* 1D294 8002CA94 3000B6AF */  sw         $s6, 0x30($sp)
    /* 1D298 8002CA98 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 1D29C 8002CA9C 2800B4AF */  sw         $s4, 0x28($sp)
    /* 1D2A0 8002CAA0 2400B3AF */  sw         $s3, 0x24($sp)
    /* 1D2A4 8002CAA4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1D2A8 8002CAA8 1800B0AF */  sw         $s0, 0x18($sp)
    /* 1D2AC 8002CAAC 9A034292 */  lbu        $v0, 0x39A($s2)
    /* 1D2B0 8002CAB0 00000000 */  nop
    /* 1D2B4 8002CAB4 37004010 */  beqz       $v0, .L8002CB94
    /* 1D2B8 8002CAB8 21B8A000 */   addu      $s7, $a1, $zero
    /* 1D2BC 8002CABC 8D034392 */  lbu        $v1, 0x38D($s2)
    /* 1D2C0 8002CAC0 01000224 */  addiu      $v0, $zero, 0x1
    /* 1D2C4 8002CAC4 03006210 */  beq        $v1, $v0, .L8002CAD4
    /* 1D2C8 8002CAC8 0C000224 */   addiu     $v0, $zero, 0xC
    /* 1D2CC 8002CACC 04006214 */  bne        $v1, $v0, .L8002CAE0
    /* 1D2D0 8002CAD0 00000000 */   nop
  .L8002CAD4:
    /* 1D2D4 8002CAD4 C2034292 */  lbu        $v0, 0x3C2($s2)
    /* 1D2D8 8002CAD8 8BB30008 */  j          .L8002CE2C
    /* 1D2DC 8002CADC 00000000 */   nop
  .L8002CAE0:
    /* 1D2E0 8002CAE0 C2034592 */  lbu        $a1, 0x3C2($s2)
    /* 1D2E4 8002CAE4 E952010C */  jal        func_80054BA4
    /* 1D2E8 8002CAE8 21204002 */   addu      $a0, $s2, $zero
    /* 1D2EC 8002CAEC AA2A033C */  lui        $v1, (0x2AAAAAAB >> 16)
    /* 1D2F0 8002CAF0 ABAA6334 */  ori        $v1, $v1, (0x2AAAAAAB & 0xFFFF)
    /* 1D2F4 8002CAF4 00340200 */  sll        $a2, $v0, 16
    /* 1D2F8 8002CAF8 032C0600 */  sra        $a1, $a2, 16
    /* 1D2FC 8002CAFC 1800A300 */  mult       $a1, $v1
    /* 1D300 8002CB00 02004486 */  lh         $a0, 0x2($s2)
    /* 1D304 8002CB04 C3370600 */  sra        $a2, $a2, 31
    /* 1D308 8002CB08 C20342A6 */  sh         $v0, 0x3C2($s2)
    /* 1D30C 8002CB0C 10480000 */  mfhi       $t1
    /* 1D310 8002CB10 83180900 */  sra        $v1, $t1, 2
    /* 1D314 8002CB14 23186600 */  subu       $v1, $v1, $a2
    /* 1D318 8002CB18 40100300 */  sll        $v0, $v1, 1
    /* 1D31C 8002CB1C 21104300 */  addu       $v0, $v0, $v1
    /* 1D320 8002CB20 C0100200 */  sll        $v0, $v0, 3
    /* 1D324 8002CB24 2328A200 */  subu       $a1, $a1, $v0
    /* 1D328 8002CB28 002C0500 */  sll        $a1, $a1, 16
    /* 1D32C 8002CB2C 032C0500 */  sra        $a1, $a1, 16
    /* 1D330 8002CB30 40110500 */  sll        $v0, $a1, 5
    /* 1D334 8002CB34 23104500 */  subu       $v0, $v0, $a1
    /* 1D338 8002CB38 80100200 */  sll        $v0, $v0, 2
    /* 1D33C 8002CB3C 21104500 */  addu       $v0, $v0, $a1
    /* 1D340 8002CB40 C0100200 */  sll        $v0, $v0, 3
    /* 1D344 8002CB44 1080093C */  lui        $t1, %hi(D_800FF748)
    /* 1D348 8002CB48 48F72925 */  addiu      $t1, $t1, %lo(D_800FF748)
    /* 1D34C 8002CB4C 21A04900 */  addu       $s4, $v0, $t1
    /* 1D350 8002CB50 0800838E */  lw         $v1, 0x8($s4)
    /* 1D354 8002CB54 06004586 */  lh         $a1, 0x6($s2)
    /* 1D358 8002CB58 02008696 */  lhu        $a2, 0x2($s4)
    /* 1D35C 8002CB5C 06008796 */  lhu        $a3, 0x6($s4)
    /* 1D360 8002CB60 40100300 */  sll        $v0, $v1, 1
    /* 1D364 8002CB64 21104300 */  addu       $v0, $v0, $v1
    /* 1D368 8002CB68 2130C200 */  addu       $a2, $a2, $v0
    /* 1D36C 8002CB6C 00340600 */  sll        $a2, $a2, 16
    /* 1D370 8002CB70 1000838E */  lw         $v1, 0x10($s4)
    /* 1D374 8002CB74 03340600 */  sra        $a2, $a2, 16
    /* 1D378 8002CB78 40100300 */  sll        $v0, $v1, 1
    /* 1D37C 8002CB7C 21104300 */  addu       $v0, $v0, $v1
    /* 1D380 8002CB80 2138E200 */  addu       $a3, $a3, $v0
    /* 1D384 8002CB84 003C0700 */  sll        $a3, $a3, 16
    /* 1D388 8002CB88 DB6C010C */  jal        func_8005B36C
    /* 1D38C 8002CB8C 033C0700 */   sra       $a3, $a3, 16
    /* 1D390 8002CB90 21B84000 */  addu       $s7, $v0, $zero
  .L8002CB94:
    /* 1D394 8002CB94 8D034492 */  lbu        $a0, 0x38D($s2)
    /* 1D398 8002CB98 8573010C */  jal        func_8005CE14
    /* 1D39C 8002CB9C FFFF1624 */   addiu     $s6, $zero, -0x1
    /* 1D3A0 8002CBA0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1D3A4 8002CBA4 AAAA033C */  lui        $v1, (0xAAAAAAAB >> 16)
    /* 1D3A8 8002CBA8 ABAA6334 */  ori        $v1, $v1, (0xAAAAAAAB & 0xFFFF)
    /* 1D3AC 8002CBAC 19004300 */  multu      $v0, $v1
    /* 1D3B0 8002CBB0 21A80000 */  addu       $s5, $zero, $zero
    /* 1D3B4 8002CBB4 00041E3C */  lui        $fp, (0x4000000 >> 16)
    /* 1D3B8 8002CBB8 10480000 */  mfhi       $t1
    /* 1D3BC 8002CBBC 02210900 */  srl        $a0, $t1, 4
    /* 1D3C0 8002CBC0 40180400 */  sll        $v1, $a0, 1
    /* 1D3C4 8002CBC4 21186400 */  addu       $v1, $v1, $a0
    /* 1D3C8 8002CBC8 C0180300 */  sll        $v1, $v1, 3
    /* 1D3CC 8002CBCC 23104300 */  subu       $v0, $v0, $v1
    /* 1D3D0 8002CBD0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1D3D4 8002CBD4 40190200 */  sll        $v1, $v0, 5
    /* 1D3D8 8002CBD8 23186200 */  subu       $v1, $v1, $v0
    /* 1D3DC 8002CBDC 80180300 */  sll        $v1, $v1, 2
    /* 1D3E0 8002CBE0 21186200 */  addu       $v1, $v1, $v0
    /* 1D3E4 8002CBE4 C0180300 */  sll        $v1, $v1, 3
    /* 1D3E8 8002CBE8 1080093C */  lui        $t1, %hi(D_800FF748)
    /* 1D3EC 8002CBEC 48F72925 */  addiu      $t1, $t1, %lo(D_800FF748)
    /* 1D3F0 8002CBF0 21982301 */  addu       $s3, $t1, $v1
    /* 1D3F4 8002CBF4 21886002 */  addu       $s1, $s3, $zero
  .L8002CBF8:
    /* 1D3F8 8002CBF8 59005312 */  beq        $s2, $s3, .L8002CD60
    /* 1D3FC 8002CBFC 00000000 */   nop
    /* 1D400 8002CC00 1B4B010C */  jal        func_80052C6C
    /* 1D404 8002CC04 21206002 */   addu      $a0, $s3, $zero
    /* 1D408 8002CC08 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1D40C 8002CC0C 05004010 */  beqz       $v0, .L8002CC24
    /* 1D410 8002CC10 06000224 */   addiu     $v0, $zero, 0x6
    /* 1D414 8002CC14 96032392 */  lbu        $v1, 0x396($s1)
    /* 1D418 8002CC18 00000000 */  nop
    /* 1D41C 8002CC1C 50006214 */  bne        $v1, $v0, .L8002CD60
    /* 1D420 8002CC20 00000000 */   nop
  .L8002CC24:
    /* 1D424 8002CC24 0800238E */  lw         $v1, 0x8($s1)
    /* 1D428 8002CC28 02002696 */  lhu        $a2, 0x2($s1)
    /* 1D42C 8002CC2C 801F043C */  lui        $a0, (0x1F8002F4 >> 16)
    /* 1D430 8002CC30 F402848C */  lw         $a0, (0x1F8002F4 & 0xFFFF)($a0)
    /* 1D434 8002CC34 40100300 */  sll        $v0, $v1, 1
    /* 1D438 8002CC38 21104300 */  addu       $v0, $v0, $v1
    /* 1D43C 8002CC3C 2130C200 */  addu       $a2, $a2, $v0
    /* 1D440 8002CC40 00340600 */  sll        $a2, $a2, 16
    /* 1D444 8002CC44 02008284 */  lh         $v0, 0x2($a0)
    /* 1D448 8002CC48 03340600 */  sra        $a2, $a2, 16
    /* 1D44C 8002CC4C 23104600 */  subu       $v0, $v0, $a2
    /* 1D450 8002CC50 18004200 */  mult       $v0, $v0
    /* 1D454 8002CC54 1000238E */  lw         $v1, 0x10($s1)
    /* 1D458 8002CC58 06002796 */  lhu        $a3, 0x6($s1)
    /* 1D45C 8002CC5C 40100300 */  sll        $v0, $v1, 1
    /* 1D460 8002CC60 21104300 */  addu       $v0, $v0, $v1
    /* 1D464 8002CC64 2138E200 */  addu       $a3, $a3, $v0
    /* 1D468 8002CC68 003C0700 */  sll        $a3, $a3, 16
    /* 1D46C 8002CC6C 06008284 */  lh         $v0, 0x6($a0)
    /* 1D470 8002CC70 12400000 */  mflo       $t0
    /* 1D474 8002CC74 033C0700 */  sra        $a3, $a3, 16
    /* 1D478 8002CC78 23104700 */  subu       $v0, $v0, $a3
    /* 1D47C 8002CC7C 18004200 */  mult       $v0, $v0
    /* 1D480 8002CC80 06004586 */  lh         $a1, 0x6($s2)
    /* 1D484 8002CC84 02004486 */  lh         $a0, 0x2($s2)
    /* 1D488 8002CC88 12180000 */  mflo       $v1
    /* 1D48C 8002CC8C DB6C010C */  jal        func_8005B36C
    /* 1D490 8002CC90 21800301 */   addu      $s0, $t0, $v1
    /* 1D494 8002CC94 21204000 */  addu       $a0, $v0, $zero
    /* 1D498 8002CC98 23189700 */  subu       $v1, $a0, $s7
    /* 1D49C 8002CC9C FF006230 */  andi       $v0, $v1, 0xFF
    /* 1D4A0 8002CCA0 8100422C */  sltiu      $v0, $v0, 0x81
    /* 1D4A4 8002CCA4 02004010 */  beqz       $v0, .L8002CCB0
    /* 1D4A8 8002CCA8 2320E402 */   subu      $a0, $s7, $a0
    /* 1D4AC 8002CCAC 21206000 */  addu       $a0, $v1, $zero
  .L8002CCB0:
    /* 1D4B0 8002CCB0 C4034386 */  lh         $v1, 0x3C4($s2)
    /* 1D4B4 8002CCB4 01000224 */  addiu      $v0, $zero, 0x1
    /* 1D4B8 8002CCB8 0E006210 */  beq        $v1, $v0, .L8002CCF4
    /* 1D4BC 8002CCBC FF008230 */   andi      $v0, $a0, 0xFF
    /* 1D4C0 8002CCC0 4100422C */  sltiu      $v0, $v0, 0x41
    /* 1D4C4 8002CCC4 26004010 */  beqz       $v0, .L8002CD60
    /* 1D4C8 8002CCC8 2B10D003 */   sltu      $v0, $fp, $s0
    /* 1D4CC 8002CCCC 24004014 */  bnez       $v0, .L8002CD60
    /* 1D4D0 8002CCD0 0800023C */   lui       $v0, (0x8FFFF >> 16)
    /* 1D4D4 8002CCD4 FFFF4234 */  ori        $v0, $v0, (0x8FFFF & 0xFFFF)
    /* 1D4D8 8002CCD8 2B105000 */  sltu       $v0, $v0, $s0
    /* 1D4DC 8002CCDC 0A004014 */  bnez       $v0, .L8002CD08
    /* 1D4E0 8002CCE0 1B000224 */   addiu     $v0, $zero, 0x1B
    /* 1D4E4 8002CCE4 960322A2 */  sb         $v0, 0x396($s1)
    /* 1D4E8 8002CCE8 40000224 */  addiu      $v0, $zero, 0x40
    /* 1D4EC 8002CCEC 58B30008 */  j          .L8002CD60
    /* 1D4F0 8002CCF0 970322A2 */   sb        $v0, 0x397($s1)
  .L8002CCF4:
    /* 1D4F4 8002CCF4 4100422C */  sltiu      $v0, $v0, 0x41
    /* 1D4F8 8002CCF8 19004010 */  beqz       $v0, .L8002CD60
    /* 1D4FC 8002CCFC 2B10D003 */   sltu      $v0, $fp, $s0
    /* 1D500 8002CD00 17004014 */  bnez       $v0, .L8002CD60
    /* 1D504 8002CD04 00000000 */   nop
  .L8002CD08:
    /* 1D508 8002CD08 D2032292 */  lbu        $v0, 0x3D2($s1)
    /* 1D50C 8002CD0C 00000000 */  nop
    /* 1D510 8002CD10 03004010 */  beqz       $v0, .L8002CD20
    /* 1D514 8002CD14 FF008330 */   andi      $v1, $a0, 0xFF
    /* 1D518 8002CD18 10008424 */  addiu      $a0, $a0, 0x10
    /* 1D51C 8002CD1C FF008330 */  andi       $v1, $a0, 0xFF
  .L8002CD20:
    /* 1D520 8002CD20 1100622C */  sltiu      $v0, $v1, 0x11
    /* 1D524 8002CD24 03004010 */  beqz       $v0, .L8002CD34
    /* 1D528 8002CD28 2000622C */   sltiu     $v0, $v1, 0x20
    /* 1D52C 8002CD2C 53B30008 */  j          .L8002CD4C
    /* 1D530 8002CD30 21180002 */   addu      $v1, $s0, $zero
  .L8002CD34:
    /* 1D534 8002CD34 05004014 */  bnez       $v0, .L8002CD4C
    /* 1D538 8002CD38 80181000 */   sll       $v1, $s0, 2
    /* 1D53C 8002CD3C F0008230 */  andi       $v0, $a0, 0xF0
    /* 1D540 8002CD40 10004224 */  addiu      $v0, $v0, 0x10
    /* 1D544 8002CD44 18005000 */  mult       $v0, $s0
    /* 1D548 8002CD48 12180000 */  mflo       $v1
  .L8002CD4C:
    /* 1D54C 8002CD4C 2B10C302 */  sltu       $v0, $s6, $v1
    /* 1D550 8002CD50 03004014 */  bnez       $v0, .L8002CD60
    /* 1D554 8002CD54 00000000 */   nop
    /* 1D558 8002CD58 21A02002 */  addu       $s4, $s1, $zero
    /* 1D55C 8002CD5C 21B06000 */  addu       $s6, $v1, $zero
  .L8002CD60:
    /* 1D560 8002CD60 0100B526 */  addiu      $s5, $s5, 0x1
    /* 1D564 8002CD64 E8033126 */  addiu      $s1, $s1, 0x3E8
    /* 1D568 8002CD68 0B00A22A */  slti       $v0, $s5, 0xB
    /* 1D56C 8002CD6C A2FF4014 */  bnez       $v0, .L8002CBF8
    /* 1D570 8002CD70 E8037326 */   addiu     $s3, $s3, 0x3E8
    /* 1D574 8002CD74 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 1D578 8002CD78 2B00C216 */  bne        $s6, $v0, .L8002CE28
    /* 1D57C 8002CD7C 00000000 */   nop
    /* 1D580 8002CD80 9A034292 */  lbu        $v0, 0x39A($s2)
    /* 1D584 8002CD84 00000000 */  nop
    /* 1D588 8002CD88 25004010 */  beqz       $v0, .L8002CE20
    /* 1D58C 8002CD8C 30000224 */   addiu     $v0, $zero, 0x30
    /* 1D590 8002CD90 99034492 */  lbu        $a0, 0x399($s2)
    /* 1D594 8002CD94 02004586 */  lh         $a1, 0x2($s2)
    /* 1D598 8002CD98 06004686 */  lh         $a2, 0x6($s2)
    /* 1D59C 8002CD9C AA034792 */  lbu        $a3, 0x3AA($s2)
    /* 1D5A0 8002CDA0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1D5A4 8002CDA4 0001023C */  lui        $v0, (0x1000000 >> 16)
    /* 1D5A8 8002CDA8 189E010C */  jal        func_80067860
    /* 1D5AC 8002CDAC 1400A2AF */   sw        $v0, 0x14($sp)
    /* 1D5B0 8002CDB0 6527010C */  jal        func_80049D94
    /* 1D5B4 8002CDB4 21204002 */   addu      $a0, $s2, $zero
    /* 1D5B8 8002CDB8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1D5BC 8002CDBC AAAA033C */  lui        $v1, (0xAAAAAAAB >> 16)
    /* 1D5C0 8002CDC0 ABAA6334 */  ori        $v1, $v1, (0xAAAAAAAB & 0xFFFF)
    /* 1D5C4 8002CDC4 19004300 */  multu      $v0, $v1
    /* 1D5C8 8002CDC8 10480000 */  mfhi       $t1
    /* 1D5CC 8002CDCC 02210900 */  srl        $a0, $t1, 4
    /* 1D5D0 8002CDD0 40180400 */  sll        $v1, $a0, 1
    /* 1D5D4 8002CDD4 21186400 */  addu       $v1, $v1, $a0
    /* 1D5D8 8002CDD8 C0180300 */  sll        $v1, $v1, 3
    /* 1D5DC 8002CDDC 23104300 */  subu       $v0, $v0, $v1
    /* 1D5E0 8002CDE0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1D5E4 8002CDE4 40190200 */  sll        $v1, $v0, 5
    /* 1D5E8 8002CDE8 23186200 */  subu       $v1, $v1, $v0
    /* 1D5EC 8002CDEC 80180300 */  sll        $v1, $v1, 2
    /* 1D5F0 8002CDF0 21186200 */  addu       $v1, $v1, $v0
    /* 1D5F4 8002CDF4 C0180300 */  sll        $v1, $v1, 3
    /* 1D5F8 8002CDF8 1080093C */  lui        $t1, %hi(D_800FF748)
    /* 1D5FC 8002CDFC 48F72925 */  addiu      $t1, $t1, %lo(D_800FF748)
    /* 1D600 8002CE00 21A02301 */  addu       $s4, $t1, $v1
    /* 1D604 8002CE04 8D034392 */  lbu        $v1, 0x38D($s2)
    /* 1D608 8002CE08 8D038292 */  lbu        $v0, 0x38D($s4)
    /* 1D60C 8002CE0C 00000000 */  nop
    /* 1D610 8002CE10 06006210 */  beq        $v1, $v0, .L8002CE2C
    /* 1D614 8002CE14 21100000 */   addu      $v0, $zero, $zero
    /* 1D618 8002CE18 8AB30008 */  j          .L8002CE28
    /* 1D61C 8002CE1C C40340A6 */   sh        $zero, 0x3C4($s2)
  .L8002CE20:
    /* 1D620 8002CE20 8BB30008 */  j          .L8002CE2C
    /* 1D624 8002CE24 21100000 */   addu      $v0, $zero, $zero
  .L8002CE28:
    /* 1D628 8002CE28 8D038292 */  lbu        $v0, 0x38D($s4)
  .L8002CE2C:
    /* 1D62C 8002CE2C 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 1D630 8002CE30 3800BE8F */  lw         $fp, 0x38($sp)
    /* 1D634 8002CE34 3400B78F */  lw         $s7, 0x34($sp)
    /* 1D638 8002CE38 3000B68F */  lw         $s6, 0x30($sp)
    /* 1D63C 8002CE3C 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 1D640 8002CE40 2800B48F */  lw         $s4, 0x28($sp)
    /* 1D644 8002CE44 2400B38F */  lw         $s3, 0x24($sp)
    /* 1D648 8002CE48 2000B28F */  lw         $s2, 0x20($sp)
    /* 1D64C 8002CE4C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 1D650 8002CE50 1800B08F */  lw         $s0, 0x18($sp)
    /* 1D654 8002CE54 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 1D658 8002CE58 0800E003 */  jr         $ra
    /* 1D65C 8002CE5C 00000000 */   nop
endlabel func_8002CA7C
