nonmatching func_8008C348, 0x2D0

glabel func_8008C348
    /* 7CB48 8008C348 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 7CB4C 8008C34C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 7CB50 8008C350 21808000 */  addu       $s0, $a0, $zero
    /* 7CB54 8008C354 04000524 */  addiu      $a1, $zero, 0x4
    /* 7CB58 8008C358 1800BFAF */  sw         $ra, 0x18($sp)
    /* 7CB5C 8008C35C AE44010C */  jal        func_800512B8
    /* 7CB60 8008C360 1400B1AF */   sw        $s1, 0x14($sp)
    /* 7CB64 8008C364 97030392 */  lbu        $v1, 0x397($s0)
    /* 7CB68 8008C368 01000224 */  addiu      $v0, $zero, 0x1
    /* 7CB6C 8008C36C 2D006210 */  beq        $v1, $v0, .L8008C424
    /* 7CB70 8008C370 801F113C */   lui       $s1, (0x1F800332 >> 16)
    /* 7CB74 8008C374 02006228 */  slti       $v0, $v1, 0x2
    /* 7CB78 8008C378 05004010 */  beqz       $v0, .L8008C390
    /* 7CB7C 8008C37C 00000000 */   nop
    /* 7CB80 8008C380 08006010 */  beqz       $v1, .L8008C3A4
    /* 7CB84 8008C384 21200002 */   addu      $a0, $s0, $zero
    /* 7CB88 8008C388 4A310208 */  j          .L8008C528
    /* 7CB8C 8008C38C 00000000 */   nop
  .L8008C390:
    /* 7CB90 8008C390 02000224 */  addiu      $v0, $zero, 0x2
    /* 7CB94 8008C394 42006210 */  beq        $v1, $v0, .L8008C4A0
    /* 7CB98 8008C398 21200002 */   addu      $a0, $s0, $zero
    /* 7CB9C 8008C39C 4A310208 */  j          .L8008C528
    /* 7CBA0 8008C3A0 00000000 */   nop
  .L8008C3A4:
    /* 7CBA4 8008C3A4 FD53020C */  jal        func_80094FF4
    /* 7CBA8 8008C3A8 D10300A2 */   sb        $zero, 0x3D1($s0)
    /* 7CBAC 8008C3AC 02000286 */  lh         $v0, 0x2($s0)
    /* 7CBB0 8008C3B0 00000000 */  nop
    /* 7CBB4 8008C3B4 02004104 */  bgez       $v0, .L8008C3C0
    /* 7CBB8 8008C3B8 00000000 */   nop
    /* 7CBBC 8008C3BC 23100200 */  negu       $v0, $v0
  .L8008C3C0:
    /* 7CBC0 8008C3C0 F1284228 */  slti       $v0, $v0, 0x28F1
    /* 7CBC4 8008C3C4 0C004014 */  bnez       $v0, .L8008C3F8
    /* 7CBC8 8008C3C8 A00300AE */   sw        $zero, 0x3A0($s0)
    /* 7CBCC 8008C3CC 21200002 */  addu       $a0, $s0, $zero
    /* 7CBD0 8008C3D0 69000524 */  addiu      $a1, $zero, 0x69
    /* 7CBD4 8008C3D4 8C6E010C */  jal        func_8005BA30
    /* 7CBD8 8008C3D8 21300000 */   addu      $a2, $zero, $zero
    /* 7CBDC 8008C3DC 97030392 */  lbu        $v1, 0x397($s0)
    /* 7CBE0 8008C3E0 99030292 */  lbu        $v0, 0x399($s0)
    /* 7CBE4 8008C3E4 01006324 */  addiu      $v1, $v1, 0x1
    /* 7CBE8 8008C3E8 C0110200 */  sll        $v0, $v0, 7
    /* 7CBEC 8008C3EC A40302A2 */  sb         $v0, 0x3A4($s0)
    /* 7CBF0 8008C3F0 4A310208 */  j          .L8008C528
    /* 7CBF4 8008C3F4 970303A2 */   sb        $v1, 0x397($s0)
  .L8008C3F8:
    /* 7CBF8 8008C3F8 21200002 */  addu       $a0, $s0, $zero
    /* 7CBFC 8008C3FC 69000524 */  addiu      $a1, $zero, 0x69
    /* 7CC00 8008C400 8C6E010C */  jal        func_8005BA30
    /* 7CC04 8008C404 2D000624 */   addiu     $a2, $zero, 0x2D
    /* 7CC08 8008C408 99030292 */  lbu        $v0, 0x399($s0)
    /* 7CC0C 8008C40C 02000324 */  addiu      $v1, $zero, 0x2
    /* 7CC10 8008C410 970303A2 */  sb         $v1, 0x397($s0)
    /* 7CC14 8008C414 01004238 */  xori       $v0, $v0, 0x1
    /* 7CC18 8008C418 C0110200 */  sll        $v0, $v0, 7
    /* 7CC1C 8008C41C 4A310208 */  j          .L8008C528
    /* 7CC20 8008C420 A40302A2 */   sb        $v0, 0x3A4($s0)
  .L8008C424:
    /* 7CC24 8008C424 476F010C */  jal        func_8005BD1C
    /* 7CC28 8008C428 21200002 */   addu      $a0, $s0, $zero
    /* 7CC2C 8008C42C 10000624 */  addiu      $a2, $zero, 0x10
    /* 7CC30 8008C430 99030492 */  lbu        $a0, 0x399($s0)
    /* 7CC34 8008C434 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 7CC38 8008C438 C0210400 */  sll        $a0, $a0, 7
    /* 7CC3C 8008C43C F36D010C */  jal        func_8005B7CC
    /* 7CC40 8008C440 80008430 */   andi      $a0, $a0, 0x80
    /* 7CC44 8008C444 FF004430 */  andi       $a0, $v0, 0xFF
    /* 7CC48 8008C448 C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 7CC4C 8008C44C 23186400 */  subu       $v1, $v1, $a0
    /* 7CC50 8008C450 21206000 */  addu       $a0, $v1, $zero
    /* 7CC54 8008C454 02006104 */  bgez       $v1, .L8008C460
    /* 7CC58 8008C458 AA0302A2 */   sb        $v0, 0x3AA($s0)
    /* 7CC5C 8008C45C FF006424 */  addiu      $a0, $v1, 0xFF
  .L8008C460:
    /* 7CC60 8008C460 03120400 */  sra        $v0, $a0, 8
    /* 7CC64 8008C464 00120200 */  sll        $v0, $v0, 8
    /* 7CC68 8008C468 23106200 */  subu       $v0, $v1, $v0
    /* 7CC6C 8008C46C 90030392 */  lbu        $v1, 0x390($s0)
    /* 7CC70 8008C470 00110200 */  sll        $v0, $v0, 4
    /* 7CC74 8008C474 2600632C */  sltiu      $v1, $v1, 0x26
    /* 7CC78 8008C478 03006010 */  beqz       $v1, .L8008C488
    /* 7CC7C 8008C47C 260002A6 */   sh        $v0, 0x26($s0)
    /* 7CC80 8008C480 12000224 */  addiu      $v0, $zero, 0x12
    /* 7CC84 8008C484 A00302AE */  sw         $v0, 0x3A0($s0)
  .L8008C488:
    /* 7CC88 8008C488 90030392 */  lbu        $v1, 0x390($s0)
    /* 7CC8C 8008C48C 2D000224 */  addiu      $v0, $zero, 0x2D
    /* 7CC90 8008C490 25006214 */  bne        $v1, $v0, .L8008C528
    /* 7CC94 8008C494 81000224 */   addiu     $v0, $zero, 0x81
    /* 7CC98 8008C498 48310208 */  j          .L8008C520
    /* 7CC9C 8008C49C 00000000 */   nop
  .L8008C4A0:
    /* 7CCA0 8008C4A0 90030692 */  lbu        $a2, 0x390($s0)
    /* 7CCA4 8008C4A4 69000524 */  addiu      $a1, $zero, 0x69
    /* 7CCA8 8008C4A8 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 7CCAC 8008C4AC 8C6E010C */  jal        func_8005BA30
    /* 7CCB0 8008C4B0 FF00C630 */   andi      $a2, $a2, 0xFF
    /* 7CCB4 8008C4B4 10000624 */  addiu      $a2, $zero, 0x10
    /* 7CCB8 8008C4B8 99030492 */  lbu        $a0, 0x399($s0)
    /* 7CCBC 8008C4BC AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 7CCC0 8008C4C0 C0210400 */  sll        $a0, $a0, 7
    /* 7CCC4 8008C4C4 F36D010C */  jal        func_8005B7CC
    /* 7CCC8 8008C4C8 80008430 */   andi      $a0, $a0, 0x80
    /* 7CCCC 8008C4CC FF004430 */  andi       $a0, $v0, 0xFF
    /* 7CCD0 8008C4D0 C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 7CCD4 8008C4D4 23186400 */  subu       $v1, $v1, $a0
    /* 7CCD8 8008C4D8 21206000 */  addu       $a0, $v1, $zero
    /* 7CCDC 8008C4DC 02006104 */  bgez       $v1, .L8008C4E8
    /* 7CCE0 8008C4E0 AA0302A2 */   sb        $v0, 0x3AA($s0)
    /* 7CCE4 8008C4E4 FF006424 */  addiu      $a0, $v1, 0xFF
  .L8008C4E8:
    /* 7CCE8 8008C4E8 03120400 */  sra        $v0, $a0, 8
    /* 7CCEC 8008C4EC 00120200 */  sll        $v0, $v0, 8
    /* 7CCF0 8008C4F0 23106200 */  subu       $v0, $v1, $v0
    /* 7CCF4 8008C4F4 90030392 */  lbu        $v1, 0x390($s0)
    /* 7CCF8 8008C4F8 00110200 */  sll        $v0, $v0, 4
    /* 7CCFC 8008C4FC 0800632C */  sltiu      $v1, $v1, 0x8
    /* 7CD00 8008C500 03006014 */  bnez       $v1, .L8008C510
    /* 7CD04 8008C504 260002A6 */   sh        $v0, 0x26($s0)
    /* 7CD08 8008C508 12000224 */  addiu      $v0, $zero, 0x12
    /* 7CD0C 8008C50C A00302AE */  sw         $v0, 0x3A0($s0)
  .L8008C510:
    /* 7CD10 8008C510 90030292 */  lbu        $v0, 0x390($s0)
    /* 7CD14 8008C514 00000000 */  nop
    /* 7CD18 8008C518 03004014 */  bnez       $v0, .L8008C528
    /* 7CD1C 8008C51C 81000224 */   addiu     $v0, $zero, 0x81
  .L8008C520:
    /* 7CD20 8008C520 960302A2 */  sb         $v0, 0x396($s0)
    /* 7CD24 8008C524 970300A2 */  sb         $zero, 0x397($s0)
  .L8008C528:
    /* 7CD28 8008C528 9A030292 */  lbu        $v0, 0x39A($s0)
    /* 7CD2C 8008C52C 00000000 */  nop
    /* 7CD30 8008C530 2A004014 */  bnez       $v0, .L8008C5DC
    /* 7CD34 8008C534 00000000 */   nop
    /* 7CD38 8008C538 99030292 */  lbu        $v0, 0x399($s0)
    /* 7CD3C 8008C53C AA030392 */  lbu        $v1, 0x3AA($s0)
    /* 7CD40 8008C540 C0110200 */  sll        $v0, $v0, 7
    /* 7CD44 8008C544 25006214 */  bne        $v1, $v0, .L8008C5DC
    /* 7CD48 8008C548 00000000 */   nop
    /* 7CD4C 8008C54C 98030292 */  lbu        $v0, 0x398($s0)
    /* 7CD50 8008C550 D6030396 */  lhu        $v1, 0x3D6($s0)
    /* 7CD54 8008C554 40100200 */  sll        $v0, $v0, 1
    /* 7CD58 8008C558 21105100 */  addu       $v0, $v0, $s1
    /* 7CD5C 8008C55C 1A004294 */  lhu        $v0, (0x1F80001A & 0xFFFF)($v0)
    /* 7CD60 8008C560 00000000 */  nop
    /* 7CD64 8008C564 24104300 */  and        $v0, $v0, $v1
    /* 7CD68 8008C568 09004010 */  beqz       $v0, .L8008C590
    /* 7CD6C 8008C56C 00000000 */   nop
    /* 7CD70 8008C570 02000286 */  lh         $v0, 0x2($s0)
    /* 7CD74 8008C574 00000000 */  nop
    /* 7CD78 8008C578 02004104 */  bgez       $v0, .L8008C584
    /* 7CD7C 8008C57C 00000000 */   nop
    /* 7CD80 8008C580 23100200 */  negu       $v0, $v0
  .L8008C584:
    /* 7CD84 8008C584 63254228 */  slti       $v0, $v0, 0x2563
    /* 7CD88 8008C588 12004010 */  beqz       $v0, .L8008C5D4
    /* 7CD8C 8008C58C 94000224 */   addiu     $v0, $zero, 0x94
  .L8008C590:
    /* 7CD90 8008C590 98030292 */  lbu        $v0, 0x398($s0)
    /* 7CD94 8008C594 00000000 */  nop
    /* 7CD98 8008C598 40100200 */  sll        $v0, $v0, 1
    /* 7CD9C 8008C59C 21105100 */  addu       $v0, $v0, $s1
    /* 7CDA0 8008C5A0 12004394 */  lhu        $v1, (0x1F800012 & 0xFFFF)($v0)
    /* 7CDA4 8008C5A4 16004494 */  lhu        $a0, (0x1F800016 & 0xFFFF)($v0)
    /* 7CDA8 8008C5A8 D6030296 */  lhu        $v0, 0x3D6($s0)
    /* 7CDAC 8008C5AC 25186400 */  or         $v1, $v1, $a0
    /* 7CDB0 8008C5B0 24104300 */  and        $v0, $v0, $v1
    /* 7CDB4 8008C5B4 09004010 */  beqz       $v0, .L8008C5DC
    /* 7CDB8 8008C5B8 00000000 */   nop
    /* 7CDBC 8008C5BC 482F020C */  jal        func_8008BD20
    /* 7CDC0 8008C5C0 21200002 */   addu      $a0, $s0, $zero
    /* 7CDC4 8008C5C4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 7CDC8 8008C5C8 04004010 */  beqz       $v0, .L8008C5DC
    /* 7CDCC 8008C5CC C20302A6 */   sh        $v0, 0x3C2($s0)
    /* 7CDD0 8008C5D0 92000224 */  addiu      $v0, $zero, 0x92
  .L8008C5D4:
    /* 7CDD4 8008C5D4 960302A2 */  sb         $v0, 0x396($s0)
    /* 7CDD8 8008C5D8 970300A2 */  sb         $zero, 0x397($s0)
  .L8008C5DC:
    /* 7CDDC 8008C5DC B1030292 */  lbu        $v0, 0x3B1($s0)
    /* 7CDE0 8008C5E0 21200002 */  addu       $a0, $s0, $zero
    /* 7CDE4 8008C5E4 01004224 */  addiu      $v0, $v0, 0x1
    /* 7CDE8 8008C5E8 426E010C */  jal        func_8005B908
    /* 7CDEC 8008C5EC B10302A2 */   sb        $v0, 0x3B1($s0)
    /* 7CDF0 8008C5F0 21200002 */  addu       $a0, $s0, $zero
    /* 7CDF4 8008C5F4 A00380AC */  sw         $zero, 0x3A0($a0)
    /* 7CDF8 8008C5F8 3A55020C */  jal        func_800954E8
    /* 7CDFC 8008C5FC 320320A2 */   sb        $zero, (0x1F800332 & 0xFFFF)($s1)
    /* 7CE00 8008C600 1800BF8F */  lw         $ra, 0x18($sp)
    /* 7CE04 8008C604 1400B18F */  lw         $s1, 0x14($sp)
    /* 7CE08 8008C608 1000B08F */  lw         $s0, 0x10($sp)
    /* 7CE0C 8008C60C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 7CE10 8008C610 0800E003 */  jr         $ra
    /* 7CE14 8008C614 00000000 */   nop
endlabel func_8008C348
