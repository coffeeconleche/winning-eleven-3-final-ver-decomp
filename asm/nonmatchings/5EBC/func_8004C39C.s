nonmatching func_8004C39C, 0x10C8

glabel func_8004C39C
    /* 3CB9C 8004C39C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 3CBA0 8004C3A0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3CBA4 8004C3A4 21888000 */  addu       $s1, $a0, $zero
    /* 3CBA8 8004C3A8 0BB6043C */  lui        $a0, (0xB60B60B7 >> 16)
    /* 3CBAC 8004C3AC 2800BFAF */  sw         $ra, 0x28($sp)
    /* 3CBB0 8004C3B0 2400B5AF */  sw         $s5, 0x24($sp)
    /* 3CBB4 8004C3B4 2000B4AF */  sw         $s4, 0x20($sp)
    /* 3CBB8 8004C3B8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 3CBBC 8004C3BC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3CBC0 8004C3C0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3CBC4 8004C3C4 92032292 */  lbu        $v0, 0x392($s1)
    /* 3CBC8 8004C3C8 98032792 */  lbu        $a3, 0x398($s1)
    /* 3CBCC 8004C3CC 40180200 */  sll        $v1, $v0, 1
    /* 3CBD0 8004C3D0 21186200 */  addu       $v1, $v1, $v0
    /* 3CBD4 8004C3D4 80180300 */  sll        $v1, $v1, 2
    /* 3CBD8 8004C3D8 40110700 */  sll        $v0, $a3, 5
    /* 3CBDC 8004C3DC 21104700 */  addu       $v0, $v0, $a3
    /* 3CBE0 8004C3E0 C0100200 */  sll        $v0, $v0, 3
    /* 3CBE4 8004C3E4 21186200 */  addu       $v1, $v1, $v0
    /* 3CBE8 8004C3E8 1180013C */  lui        $at, %hi(D_8010C330)
    /* 3CBEC 8004C3EC 21082300 */  addu       $at, $at, $v1
    /* 3CBF0 8004C3F0 30C3238C */  lw         $v1, %lo(D_8010C330)($at)
    /* 3CBF4 8004C3F4 B7608434 */  ori        $a0, $a0, (0xB60B60B7 & 0xFFFF)
    /* 3CBF8 8004C3F8 C21A0300 */  srl        $v1, $v1, 11
    /* 3CBFC 8004C3FC 7F006330 */  andi       $v1, $v1, 0x7F
    /* 3CC00 8004C400 64006324 */  addiu      $v1, $v1, 0x64
    /* 3CC04 8004C404 C0100300 */  sll        $v0, $v1, 3
    /* 3CC08 8004C408 23104300 */  subu       $v0, $v0, $v1
    /* 3CC0C 8004C40C 80100200 */  sll        $v0, $v0, 2
    /* 3CC10 8004C410 21104300 */  addu       $v0, $v0, $v1
    /* 3CC14 8004C414 80100200 */  sll        $v0, $v0, 2
    /* 3CC18 8004C418 23104300 */  subu       $v0, $v0, $v1
    /* 3CC1C 8004C41C 80100200 */  sll        $v0, $v0, 2
    /* 3CC20 8004C420 23100200 */  negu       $v0, $v0
    /* 3CC24 8004C424 18004400 */  mult       $v0, $a0
    /* 3CC28 8004C428 1080153C */  lui        $s5, %hi(D_800FF748)
    /* 3CC2C 8004C42C 48F7B526 */  addiu      $s5, $s5, %lo(D_800FF748)
    /* 3CC30 8004C430 801F063C */  lui        $a2, (0x1F8002F4 >> 16)
    /* 3CC34 8004C434 F402C68C */  lw         $a2, (0x1F8002F4 & 0xFFFF)($a2)
    /* 3CC38 8004C438 00000000 */  nop
    /* 3CC3C 8004C43C 0400C484 */  lh         $a0, 0x4($a2)
    /* 3CC40 8004C440 10400000 */  mfhi       $t0
    /* 3CC44 8004C444 21180201 */  addu       $v1, $t0, $v0
    /* 3CC48 8004C448 C3190300 */  sra        $v1, $v1, 7
    /* 3CC4C 8004C44C C3170200 */  sra        $v0, $v0, 31
    /* 3CC50 8004C450 23186200 */  subu       $v1, $v1, $v0
    /* 3CC54 8004C454 2A186400 */  slt        $v1, $v1, $a0
    /* 3CC58 8004C458 3A006010 */  beqz       $v1, .L8004C544
    /* 3CC5C 8004C45C 801F133C */   lui       $s3, (0x1F8002F4 >> 16)
    /* 3CC60 8004C460 8D032292 */  lbu        $v0, 0x38D($s1)
    /* 3CC64 8004C464 801F033C */  lui        $v1, (0x1F8002A9 >> 16)
    /* 3CC68 8004C468 A9026390 */  lbu        $v1, (0x1F8002A9 & 0xFFFF)($v1)
    /* 3CC6C 8004C46C 00000000 */  nop
    /* 3CC70 8004C470 03004310 */  beq        $v0, $v1, .L8004C480
    /* 3CC74 8004C474 00000000 */   nop
    /* 3CC78 8004C478 34006014 */  bnez       $v1, .L8004C54C
    /* 3CC7C 8004C47C 00000000 */   nop
  .L8004C480:
    /* 3CC80 8004C480 801F013C */  lui        $at, (0x1F8002CF >> 16)
    /* 3CC84 8004C484 2108E100 */  addu       $at, $a3, $at
    /* 3CC88 8004C488 CF022390 */  lbu        $v1, (0x1F8002CF & 0xFFFF)($at)
    /* 3CC8C 8004C48C 01000224 */  addiu      $v0, $zero, 0x1
    /* 3CC90 8004C490 1B006214 */  bne        $v1, $v0, .L8004C500
    /* 3CC94 8004C494 00000000 */   nop
    /* 3CC98 8004C498 801F023C */  lui        $v0, (0x1F8002B0 >> 16)
    /* 3CC9C 8004C49C B002428C */  lw         $v0, (0x1F8002B0 & 0xFFFF)($v0)
    /* 3CCA0 8004C4A0 00000000 */  nop
    /* 3CCA4 8004C4A4 16004314 */  bne        $v0, $v1, .L8004C500
    /* 3CCA8 8004C4A8 00000000 */   nop
    /* 3CCAC 8004C4AC 801F023C */  lui        $v0, (0x1F80031C >> 16)
    /* 3CCB0 8004C4B0 1C034284 */  lh         $v0, (0x1F80031C & 0xFFFF)($v0)
    /* 3CCB4 8004C4B4 00000000 */  nop
    /* 3CCB8 8004C4B8 10004228 */  slti       $v0, $v0, 0x10
    /* 3CCBC 8004C4BC 10004010 */  beqz       $v0, .L8004C500
    /* 3CCC0 8004C4C0 00000000 */   nop
    /* 3CCC4 8004C4C4 02002286 */  lh         $v0, 0x2($s1)
    /* 3CCC8 8004C4C8 0200C384 */  lh         $v1, 0x2($a2)
    /* 3CCCC 8004C4CC 00000000 */  nop
    /* 3CCD0 8004C4D0 23104300 */  subu       $v0, $v0, $v1
    /* 3CCD4 8004C4D4 18004200 */  mult       $v0, $v0
    /* 3CCD8 8004C4D8 06002286 */  lh         $v0, 0x6($s1)
    /* 3CCDC 8004C4DC 0600C384 */  lh         $v1, 0x6($a2)
    /* 3CCE0 8004C4E0 12200000 */  mflo       $a0
    /* 3CCE4 8004C4E4 23104300 */  subu       $v0, $v0, $v1
    /* 3CCE8 8004C4E8 00000000 */  nop
    /* 3CCEC 8004C4EC 18004200 */  mult       $v0, $v0
    /* 3CCF0 8004C4F0 12180000 */  mflo       $v1
    /* 3CCF4 8004C4F4 21108300 */  addu       $v0, $a0, $v1
    /* 3CCF8 8004C4F8 61310108 */  j          .L8004C584
    /* 3CCFC 8004C4FC 01244228 */   slti      $v0, $v0, 0x2401
  .L8004C500:
    /* 3CD00 8004C500 F402648E */  lw         $a0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3CD04 8004C504 02002286 */  lh         $v0, 0x2($s1)
    /* 3CD08 8004C508 02008384 */  lh         $v1, 0x2($a0)
    /* 3CD0C 8004C50C 00000000 */  nop
    /* 3CD10 8004C510 23104300 */  subu       $v0, $v0, $v1
    /* 3CD14 8004C514 18004200 */  mult       $v0, $v0
    /* 3CD18 8004C518 06002286 */  lh         $v0, 0x6($s1)
    /* 3CD1C 8004C51C 06008384 */  lh         $v1, 0x6($a0)
    /* 3CD20 8004C520 12300000 */  mflo       $a2
    /* 3CD24 8004C524 23104300 */  subu       $v0, $v0, $v1
    /* 3CD28 8004C528 00000000 */  nop
    /* 3CD2C 8004C52C 18004200 */  mult       $v0, $v0
    /* 3CD30 8004C530 12180000 */  mflo       $v1
    /* 3CD34 8004C534 2110C300 */  addu       $v0, $a2, $v1
    /* 3CD38 8004C538 2B10A200 */  sltu       $v0, $a1, $v0
    /* 3CD3C 8004C53C 13004010 */  beqz       $v0, .L8004C58C
    /* 3CD40 8004C540 21202002 */   addu      $a0, $s1, $zero
  .L8004C544:
    /* 3CD44 8004C544 0F350108 */  j          .L8004D43C
    /* 3CD48 8004C548 21100000 */   addu      $v0, $zero, $zero
  .L8004C54C:
    /* 3CD4C 8004C54C 02002286 */  lh         $v0, 0x2($s1)
    /* 3CD50 8004C550 0200C384 */  lh         $v1, 0x2($a2)
    /* 3CD54 8004C554 00000000 */  nop
    /* 3CD58 8004C558 23104300 */  subu       $v0, $v0, $v1
    /* 3CD5C 8004C55C 18004200 */  mult       $v0, $v0
    /* 3CD60 8004C560 06002286 */  lh         $v0, 0x6($s1)
    /* 3CD64 8004C564 0600C384 */  lh         $v1, 0x6($a2)
    /* 3CD68 8004C568 12200000 */  mflo       $a0
    /* 3CD6C 8004C56C 23104300 */  subu       $v0, $v0, $v1
    /* 3CD70 8004C570 00000000 */  nop
    /* 3CD74 8004C574 18004200 */  mult       $v0, $v0
    /* 3CD78 8004C578 12180000 */  mflo       $v1
    /* 3CD7C 8004C57C 21108300 */  addu       $v0, $a0, $v1
    /* 3CD80 8004C580 01404228 */  slti       $v0, $v0, 0x4001
  .L8004C584:
    /* 3CD84 8004C584 EFFF4010 */  beqz       $v0, .L8004C544
    /* 3CD88 8004C588 21202002 */   addu      $a0, $s1, $zero
  .L8004C58C:
    /* 3CD8C 8004C58C AE44010C */  jal        func_800512B8
    /* 3CD90 8004C590 01000524 */   addiu     $a1, $zero, 0x1
    /* 3CD94 8004C594 02002486 */  lh         $a0, 0x2($s1)
    /* 3CD98 8004C598 F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3CD9C 8004C59C 06002586 */  lh         $a1, 0x6($s1)
    /* 3CDA0 8004C5A0 C2034684 */  lh         $a2, 0x3C2($v0)
    /* 3CDA4 8004C5A4 C6034784 */  lh         $a3, 0x3C6($v0)
    /* 3CDA8 8004C5A8 DB6C010C */  jal        func_8005B36C
    /* 3CDAC 8004C5AC 00000000 */   nop
    /* 3CDB0 8004C5B0 AA032492 */  lbu        $a0, 0x3AA($s1)
    /* 3CDB4 8004C5B4 21804000 */  addu       $s0, $v0, $zero
    /* 3CDB8 8004C5B8 23100402 */  subu       $v0, $s0, $a0
    /* 3CDBC 8004C5BC FF004330 */  andi       $v1, $v0, 0xFF
    /* 3CDC0 8004C5C0 8100622C */  sltiu      $v0, $v1, 0x81
    /* 3CDC4 8004C5C4 08004014 */  bnez       $v0, .L8004C5E8
    /* 3CDC8 8004C5C8 49006228 */   slti      $v0, $v1, 0x49
    /* 3CDCC 8004C5CC 23109000 */  subu       $v0, $a0, $s0
    /* 3CDD0 8004C5D0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3CDD4 8004C5D4 49004228 */  slti       $v0, $v0, 0x49
    /* 3CDD8 8004C5D8 05004010 */  beqz       $v0, .L8004C5F0
    /* 3CDDC 8004C5DC 21202002 */   addu      $a0, $s1, $zero
    /* 3CDE0 8004C5E0 C3310108 */  j          .L8004C70C
    /* 3CDE4 8004C5E4 00000000 */   nop
  .L8004C5E8:
    /* 3CDE8 8004C5E8 48004014 */  bnez       $v0, .L8004C70C
    /* 3CDEC 8004C5EC 21202002 */   addu      $a0, $s1, $zero
  .L8004C5F0:
    /* 3CDF0 8004C5F0 02002486 */  lh         $a0, 0x2($s1)
    /* 3CDF4 8004C5F4 F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3CDF8 8004C5F8 06002586 */  lh         $a1, 0x6($s1)
    /* 3CDFC 8004C5FC 02004684 */  lh         $a2, 0x2($v0)
    /* 3CE00 8004C600 06004784 */  lh         $a3, 0x6($v0)
    /* 3CE04 8004C604 DB6C010C */  jal        func_8005B36C
    /* 3CE08 8004C608 00000000 */   nop
    /* 3CE0C 8004C60C AA032392 */  lbu        $v1, 0x3AA($s1)
    /* 3CE10 8004C610 00000000 */  nop
    /* 3CE14 8004C614 23104300 */  subu       $v0, $v0, $v1
    /* 3CE18 8004C618 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3CE1C 8004C61C 8100422C */  sltiu      $v0, $v0, 0x81
    /* 3CE20 8004C620 11004014 */  bnez       $v0, .L8004C668
    /* 3CE24 8004C624 00000000 */   nop
    /* 3CE28 8004C628 02002486 */  lh         $a0, 0x2($s1)
    /* 3CE2C 8004C62C F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3CE30 8004C630 06002586 */  lh         $a1, 0x6($s1)
    /* 3CE34 8004C634 02004684 */  lh         $a2, 0x2($v0)
    /* 3CE38 8004C638 06004784 */  lh         $a3, 0x6($v0)
    /* 3CE3C 8004C63C DB6C010C */  jal        func_8005B36C
    /* 3CE40 8004C640 00000000 */   nop
    /* 3CE44 8004C644 AA032392 */  lbu        $v1, 0x3AA($s1)
    /* 3CE48 8004C648 00000000 */  nop
    /* 3CE4C 8004C64C 23186200 */  subu       $v1, $v1, $v0
    /* 3CE50 8004C650 FF006330 */  andi       $v1, $v1, 0xFF
    /* 3CE54 8004C654 49006328 */  slti       $v1, $v1, 0x49
    /* 3CE58 8004C658 11006010 */  beqz       $v1, .L8004C6A0
    /* 3CE5C 8004C65C 21202002 */   addu      $a0, $s1, $zero
    /* 3CE60 8004C660 C3310108 */  j          .L8004C70C
    /* 3CE64 8004C664 00000000 */   nop
  .L8004C668:
    /* 3CE68 8004C668 02002486 */  lh         $a0, 0x2($s1)
    /* 3CE6C 8004C66C F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3CE70 8004C670 06002586 */  lh         $a1, 0x6($s1)
    /* 3CE74 8004C674 02004684 */  lh         $a2, 0x2($v0)
    /* 3CE78 8004C678 06004784 */  lh         $a3, 0x6($v0)
    /* 3CE7C 8004C67C DB6C010C */  jal        func_8005B36C
    /* 3CE80 8004C680 00000000 */   nop
    /* 3CE84 8004C684 AA032392 */  lbu        $v1, 0x3AA($s1)
    /* 3CE88 8004C688 00000000 */  nop
    /* 3CE8C 8004C68C 23104300 */  subu       $v0, $v0, $v1
    /* 3CE90 8004C690 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3CE94 8004C694 49004228 */  slti       $v0, $v0, 0x49
    /* 3CE98 8004C698 1C004014 */  bnez       $v0, .L8004C70C
    /* 3CE9C 8004C69C 21202002 */   addu      $a0, $s1, $zero
  .L8004C6A0:
    /* 3CEA0 8004C6A0 F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3CEA4 8004C6A4 00000000 */  nop
    /* 3CEA8 8004C6A8 04004284 */  lh         $v0, 0x4($v0)
    /* 3CEAC 8004C6AC 00000000 */  nop
    /* 3CEB0 8004C6B0 60FF4228 */  slti       $v0, $v0, -0xA0
    /* 3CEB4 8004C6B4 15004010 */  beqz       $v0, .L8004C70C
    /* 3CEB8 8004C6B8 21202002 */   addu      $a0, $s1, $zero
    /* 3CEBC 8004C6BC FF001032 */  andi       $s0, $s0, 0xFF
    /* 3CEC0 8004C6C0 21200002 */  addu       $a0, $s0, $zero
    /* 3CEC4 8004C6C4 A579000C */  jal        func_8001E694
    /* 3CEC8 8004C6C8 68000524 */   addiu     $a1, $zero, 0x68
    /* 3CECC 8004C6CC 21200002 */  addu       $a0, $s0, $zero
    /* 3CED0 8004C6D0 68000524 */  addiu      $a1, $zero, 0x68
    /* 3CED4 8004C6D4 02002396 */  lhu        $v1, 0x2($s1)
    /* 3CED8 8004C6D8 F402668E */  lw         $a2, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3CEDC 8004C6DC 21186200 */  addu       $v1, $v1, $v0
    /* 3CEE0 8004C6E0 6979000C */  jal        func_8001E5A4
    /* 3CEE4 8004C6E4 0200C3A4 */   sh        $v1, 0x2($a2)
    /* 3CEE8 8004C6E8 21202002 */  addu       $a0, $s1, $zero
    /* 3CEEC 8004C6EC 21280002 */  addu       $a1, $s0, $zero
    /* 3CEF0 8004C6F0 06008394 */  lhu        $v1, 0x6($a0)
    /* 3CEF4 8004C6F4 F402668E */  lw         $a2, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3CEF8 8004C6F8 21186200 */  addu       $v1, $v1, $v0
    /* 3CEFC 8004C6FC A838010C */  jal        func_8004E2A0
    /* 3CF00 8004C700 0600C3A4 */   sh        $v1, 0x6($a2)
    /* 3CF04 8004C704 0F350108 */  j          .L8004D43C
    /* 3CF08 8004C708 01000224 */   addiu     $v0, $zero, 0x1
  .L8004C70C:
    /* 3CF0C 8004C70C F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3CF10 8004C710 FF000532 */  andi       $a1, $s0, 0xFF
    /* 3CF14 8004C714 B10340A0 */  sb         $zero, 0x3B1($v0)
    /* 3CF18 8004C718 FF7F0224 */  addiu      $v0, $zero, 0x7FFF
    /* 3CF1C 8004C71C F20260A2 */  sb         $zero, (0x1F8002F2 & 0xFFFF)($s3)
    /* 3CF20 8004C720 B40262A6 */  sh         $v0, (0x1F8002B4 & 0xFFFF)($s3)
    /* 3CF24 8004C724 BF37010C */  jal        func_8004DEFC
    /* 3CF28 8004C728 B80262A6 */   sh        $v0, (0x1F8002B8 & 0xFFFF)($s3)
    /* 3CF2C 8004C72C FF004230 */  andi       $v0, $v0, 0xFF
    /* 3CF30 8004C730 42034014 */  bnez       $v0, .L8004D43C
    /* 3CF34 8004C734 01000224 */   addiu     $v0, $zero, 0x1
    /* 3CF38 8004C738 8636010C */  jal        func_8004DA18
    /* 3CF3C 8004C73C 21202002 */   addu      $a0, $s1, $zero
    /* 3CF40 8004C740 3E034014 */  bnez       $v0, .L8004D43C
    /* 3CF44 8004C744 01000224 */   addiu     $v0, $zero, 0x1
    /* 3CF48 8004C748 98032292 */  lbu        $v0, 0x398($s1)
    /* 3CF4C 8004C74C 00000000 */  nop
    /* 3CF50 8004C750 21106202 */  addu       $v0, $s3, $v0
    /* 3CF54 8004C754 CF0240A0 */  sb         $zero, (0x1F8002CF & 0xFFFF)($v0)
    /* 3CF58 8004C758 98032292 */  lbu        $v0, 0x398($s1)
    /* 3CF5C 8004C75C 01000324 */  addiu      $v1, $zero, 0x1
    /* 3CF60 8004C760 01004238 */  xori       $v0, $v0, 0x1
    /* 3CF64 8004C764 21106202 */  addu       $v0, $s3, $v0
    /* 3CF68 8004C768 CF0243A0 */  sb         $v1, (0x1F8002CF & 0xFFFF)($v0)
    /* 3CF6C 8004C76C D1032392 */  lbu        $v1, 0x3D1($s1)
    /* 3CF70 8004C770 05000224 */  addiu      $v0, $zero, 0x5
    /* 3CF74 8004C774 31036210 */  beq        $v1, $v0, .L8004D43C
    /* 3CF78 8004C778 01000224 */   addiu     $v0, $zero, 0x1
    /* 3CF7C 8004C77C 9A032292 */  lbu        $v0, 0x39A($s1)
    /* 3CF80 8004C780 00000000 */  nop
    /* 3CF84 8004C784 1B004014 */  bnez       $v0, .L8004C7F4
    /* 3CF88 8004C788 00000000 */   nop
    /* 3CF8C 8004C78C E7026292 */  lbu        $v0, (0x1F8002E7 & 0xFFFF)($s3)
    /* 3CF90 8004C790 00000000 */  nop
    /* 3CF94 8004C794 FF004330 */  andi       $v1, $v0, 0xFF
    /* 3CF98 8004C798 09006014 */  bnez       $v1, .L8004C7C0
    /* 3CF9C 8004C79C 80000224 */   addiu     $v0, $zero, 0x80
    /* 3CFA0 8004C7A0 D4032396 */  lhu        $v1, 0x3D4($s1)
    /* 3CFA4 8004C7A4 00000000 */  nop
    /* 3CFA8 8004C7A8 00706230 */  andi       $v0, $v1, 0x7000
    /* 3CFAC 8004C7AC C2120200 */  srl        $v0, $v0, 11
    /* 3CFB0 8004C7B0 C21B0300 */  srl        $v1, $v1, 15
    /* 3CFB4 8004C7B4 25104300 */  or         $v0, $v0, $v1
    /* 3CFB8 8004C7B8 2A320108 */  j          .L8004C8A8
    /* 3CFBC 8004C7BC 8C0262A2 */   sb        $v0, (0x1F80028C & 0xFFFF)($s3)
  .L8004C7C0:
    /* 3CFC0 8004C7C0 09006214 */  bne        $v1, $v0, .L8004C7E8
    /* 3CFC4 8004C7C4 00000000 */   nop
    /* 3CFC8 8004C7C8 D4032296 */  lhu        $v0, 0x3D4($s1)
    /* 3CFCC 8004C7CC 00000000 */  nop
    /* 3CFD0 8004C7D0 421B0200 */  srl        $v1, $v0, 13
    /* 3CFD4 8004C7D4 00104230 */  andi       $v0, $v0, 0x1000
    /* 3CFD8 8004C7D8 42120200 */  srl        $v0, $v0, 9
    /* 3CFDC 8004C7DC 25186200 */  or         $v1, $v1, $v0
    /* 3CFE0 8004C7E0 2A320108 */  j          .L8004C8A8
    /* 3CFE4 8004C7E4 8C0263A2 */   sb        $v1, (0x1F80028C & 0xFFFF)($s3)
  .L8004C7E8:
    /* 3CFE8 8004C7E8 D4032296 */  lhu        $v0, 0x3D4($s1)
    /* 3CFEC 8004C7EC 27320108 */  j          .L8004C89C
    /* 3CFF0 8004C7F0 02130200 */   srl       $v0, $v0, 12
  .L8004C7F4:
    /* 3CFF4 8004C7F4 28036292 */  lbu        $v0, (0x1F800328 & 0xFFFF)($s3)
    /* 3CFF8 8004C7F8 00000000 */  nop
    /* 3CFFC 8004C7FC 29004010 */  beqz       $v0, .L8004C8A4
    /* 3D000 8004C800 00000000 */   nop
    /* 3D004 8004C804 02002286 */  lh         $v0, 0x2($s1)
    /* 3D008 8004C808 00000000 */  nop
    /* 3D00C 8004C80C 02004104 */  bgez       $v0, .L8004C818
    /* 3D010 8004C810 00000000 */   nop
    /* 3D014 8004C814 23100200 */  negu       $v0, $v0
  .L8004C818:
    /* 3D018 8004C818 20314228 */  slti       $v0, $v0, 0x3120
    /* 3D01C 8004C81C 21004010 */  beqz       $v0, .L8004C8A4
    /* 3D020 8004C820 00000000 */   nop
    /* 3D024 8004C824 06002286 */  lh         $v0, 0x6($s1)
    /* 3D028 8004C828 00000000 */  nop
    /* 3D02C 8004C82C 02004104 */  bgez       $v0, .L8004C838
    /* 3D030 8004C830 00000000 */   nop
    /* 3D034 8004C834 23100200 */  negu       $v0, $v0
  .L8004C838:
    /* 3D038 8004C838 001F4228 */  slti       $v0, $v0, 0x1F00
    /* 3D03C 8004C83C 19004010 */  beqz       $v0, .L8004C8A4
    /* 3D040 8004C840 00000000 */   nop
    /* 3D044 8004C844 F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3D048 8004C848 99032392 */  lbu        $v1, 0x399($s1)
    /* 3D04C 8004C84C 02004284 */  lh         $v0, 0x2($v0)
    /* 3D050 8004C850 05006010 */  beqz       $v1, .L8004C868
    /* 3D054 8004C854 00000000 */   nop
    /* 3D058 8004C858 09004004 */  bltz       $v0, .L8004C880
    /* 3D05C 8004C85C 00000000 */   nop
    /* 3D060 8004C860 1C320108 */  j          .L8004C870
    /* 3D064 8004C864 00000000 */   nop
  .L8004C868:
    /* 3D068 8004C868 0500401C */  bgtz       $v0, .L8004C880
    /* 3D06C 8004C86C 00000000 */   nop
  .L8004C870:
    /* 3D070 8004C870 B002638E */  lw         $v1, (0x1F8002B0 & 0xFFFF)($s3)
    /* 3D074 8004C874 01000224 */  addiu      $v0, $zero, 0x1
    /* 3D078 8004C878 0A006214 */  bne        $v1, $v0, .L8004C8A4
    /* 3D07C 8004C87C 00000000 */   nop
  .L8004C880:
    /* 3D080 8004C880 99032492 */  lbu        $a0, 0x399($s1)
    /* 3D084 8004C884 00000000 */  nop
    /* 3D088 8004C888 C0210400 */  sll        $a0, $a0, 7
    /* 3D08C 8004C88C 3A78010C */  jal        func_8005E0E8
    /* 3D090 8004C890 80008430 */   andi      $a0, $a0, 0x80
    /* 3D094 8004C894 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 3D098 8004C898 02130200 */  srl        $v0, $v0, 12
  .L8004C89C:
    /* 3D09C 8004C89C 2A320108 */  j          .L8004C8A8
    /* 3D0A0 8004C8A0 8C0262A2 */   sb        $v0, (0x1F80028C & 0xFFFF)($s3)
  .L8004C8A4:
    /* 3D0A4 8004C8A4 8C0260A2 */  sb         $zero, (0x1F80028C & 0xFFFF)($s3)
  .L8004C8A8:
    /* 3D0A8 8004C8A8 F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3D0AC 8004C8AC 00000000 */  nop
    /* 3D0B0 8004C8B0 04004284 */  lh         $v0, 0x4($v0)
    /* 3D0B4 8004C8B4 00000000 */  nop
    /* 3D0B8 8004C8B8 8CFF4228 */  slti       $v0, $v0, -0x74
    /* 3D0BC 8004C8BC 43014014 */  bnez       $v0, .L8004CDCC
    /* 3D0C0 8004C8C0 00000000 */   nop
    /* 3D0C4 8004C8C4 AA026392 */  lbu        $v1, (0x1F8002AA & 0xFFFF)($s3)
    /* 3D0C8 8004C8C8 8D032292 */  lbu        $v0, 0x38D($s1)
    /* 3D0CC 8004C8CC 00000000 */  nop
    /* 3D0D0 8004C8D0 DA024310 */  beq        $v0, $v1, .L8004D43C
    /* 3D0D4 8004C8D4 01000224 */   addiu     $v0, $zero, 0x1
    /* 3D0D8 8004C8D8 AB0263A2 */  sb         $v1, (0x1F8002AB & 0xFFFF)($s3)
    /* 3D0DC 8004C8DC 8D032292 */  lbu        $v0, 0x38D($s1)
    /* 3D0E0 8004C8E0 00000000 */  nop
    /* 3D0E4 8004C8E4 AA0262A2 */  sb         $v0, (0x1F8002AA & 0xFFFF)($s3)
    /* 3D0E8 8004C8E8 9A032292 */  lbu        $v0, 0x39A($s1)
    /* 3D0EC 8004C8EC 00000000 */  nop
    /* 3D0F0 8004C8F0 1A004010 */  beqz       $v0, .L8004C95C
    /* 3D0F4 8004C8F4 0C000224 */   addiu     $v0, $zero, 0xC
    /* 3D0F8 8004C8F8 B002638E */  lw         $v1, (0x1F8002B0 & 0xFFFF)($s3)
    /* 3D0FC 8004C8FC 00000000 */  nop
    /* 3D100 8004C900 16006214 */  bne        $v1, $v0, .L8004C95C
    /* 3D104 8004C904 00000000 */   nop
    /* 3D108 8004C908 99032492 */  lbu        $a0, 0x399($s1)
    /* 3D10C 8004C90C 00000000 */  nop
    /* 3D110 8004C910 02008014 */  bnez       $a0, .L8004C91C
    /* 3D114 8004C914 00100524 */   addiu     $a1, $zero, 0x1000
    /* 3D118 8004C918 00F00524 */  addiu      $a1, $zero, -0x1000
  .L8004C91C:
    /* 3D11C 8004C91C 21300000 */  addu       $a2, $zero, $zero
    /* 3D120 8004C920 B19D010C */  jal        func_800676C4
    /* 3D124 8004C924 21380000 */   addu      $a3, $zero, $zero
    /* 3D128 8004C928 6527010C */  jal        func_80049D94
    /* 3D12C 8004C92C 21202002 */   addu      $a0, $s1, $zero
    /* 3D130 8004C930 FF004330 */  andi       $v1, $v0, 0xFF
    /* 3D134 8004C934 01000224 */  addiu      $v0, $zero, 0x1
    /* 3D138 8004C938 C20323A6 */  sh         $v1, 0x3C2($s1)
    /* 3D13C 8004C93C 03000324 */  addiu      $v1, $zero, 0x3
    /* 3D140 8004C940 C40320A6 */  sh         $zero, 0x3C4($s1)
    /* 3D144 8004C944 320363A2 */  sb         $v1, (0x1F800332 & 0xFFFF)($s3)
    /* 3D148 8004C948 05000324 */  addiu      $v1, $zero, 0x5
    /* 3D14C 8004C94C 960323A2 */  sb         $v1, 0x396($s1)
    /* 3D150 8004C950 970320A2 */  sb         $zero, 0x397($s1)
    /* 3D154 8004C954 0F350108 */  j          .L8004D43C
    /* 3D158 8004C958 1C0360A6 */   sh        $zero, (0x1F80031C & 0xFFFF)($s3)
  .L8004C95C:
    /* 3D15C 8004C95C D1032392 */  lbu        $v1, 0x3D1($s1)
    /* 3D160 8004C960 01000224 */  addiu      $v0, $zero, 0x1
    /* 3D164 8004C964 3A006214 */  bne        $v1, $v0, .L8004CA50
    /* 3D168 8004C968 00000000 */   nop
    /* 3D16C 8004C96C 8C026292 */  lbu        $v0, (0x1F80028C & 0xFFFF)($s3)
    /* 3D170 8004C970 00000000 */  nop
    /* 3D174 8004C974 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3D178 8004C978 14004010 */  beqz       $v0, .L8004C9CC
    /* 3D17C 8004C97C 21202002 */   addu      $a0, $s1, $zero
    /* 3D180 8004C980 AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 3D184 8004C984 0C80013C */  lui        $at, %hi(D_800C6B74)
    /* 3D188 8004C988 21082200 */  addu       $at, $at, $v0
    /* 3D18C 8004C98C 746B2490 */  lbu        $a0, %lo(D_800C6B74)($at)
    /* 3D190 8004C990 00000000 */  nop
    /* 3D194 8004C994 2310A400 */  subu       $v0, $a1, $a0
    /* 3D198 8004C998 FF004330 */  andi       $v1, $v0, 0xFF
    /* 3D19C 8004C99C 8100622C */  sltiu      $v0, $v1, 0x81
    /* 3D1A0 8004C9A0 08004014 */  bnez       $v0, .L8004C9C4
    /* 3D1A4 8004C9A4 41006228 */   slti      $v0, $v1, 0x41
    /* 3D1A8 8004C9A8 23108500 */  subu       $v0, $a0, $a1
    /* 3D1AC 8004C9AC FF004230 */  andi       $v0, $v0, 0xFF
    /* 3D1B0 8004C9B0 41004228 */  slti       $v0, $v0, 0x41
    /* 3D1B4 8004C9B4 05004010 */  beqz       $v0, .L8004C9CC
    /* 3D1B8 8004C9B8 21202002 */   addu      $a0, $s1, $zero
    /* 3D1BC 8004C9BC 94320108 */  j          .L8004CA50
    /* 3D1C0 8004C9C0 00000000 */   nop
  .L8004C9C4:
    /* 3D1C4 8004C9C4 22004014 */  bnez       $v0, .L8004CA50
    /* 3D1C8 8004C9C8 21202002 */   addu      $a0, $s1, $zero
  .L8004C9CC:
    /* 3D1CC 8004C9CC 8752010C */  jal        func_80054A1C
    /* 3D1D0 8004C9D0 B00260AE */   sw        $zero, (0x1F8002B0 & 0xFFFF)($s3)
    /* 3D1D4 8004C9D4 8E032396 */  lhu        $v1, 0x38E($s1)
    /* 3D1D8 8004C9D8 16000224 */  addiu      $v0, $zero, 0x16
    /* 3D1DC 8004C9DC 04006210 */  beq        $v1, $v0, .L8004C9F0
    /* 3D1E0 8004C9E0 21202002 */   addu      $a0, $s1, $zero
    /* 3D1E4 8004C9E4 16000524 */  addiu      $a1, $zero, 0x16
    /* 3D1E8 8004C9E8 8C6E010C */  jal        func_8005BA30
    /* 3D1EC 8004C9EC 21300000 */   addu      $a2, $zero, $zero
  .L8004C9F0:
    /* 3D1F0 8004C9F0 21900000 */  addu       $s2, $zero, $zero
    /* 3D1F4 8004C9F4 92032292 */  lbu        $v0, 0x392($s1)
    /* 3D1F8 8004C9F8 98032492 */  lbu        $a0, 0x398($s1)
    /* 3D1FC 8004C9FC 40180200 */  sll        $v1, $v0, 1
    /* 3D200 8004CA00 21186200 */  addu       $v1, $v1, $v0
    /* 3D204 8004CA04 80180300 */  sll        $v1, $v1, 2
    /* 3D208 8004CA08 40110400 */  sll        $v0, $a0, 5
    /* 3D20C 8004CA0C 21104400 */  addu       $v0, $v0, $a0
    /* 3D210 8004CA10 C0100200 */  sll        $v0, $v0, 3
    /* 3D214 8004CA14 21186200 */  addu       $v1, $v1, $v0
    /* 3D218 8004CA18 1180013C */  lui        $at, %hi(D_8010C330)
    /* 3D21C 8004CA1C 21082300 */  addu       $at, $at, $v1
    /* 3D220 8004CA20 30C3238C */  lw         $v1, %lo(D_8010C330)($at)
    /* 3D224 8004CA24 04000224 */  addiu      $v0, $zero, 0x4
    /* 3D228 8004CA28 D00322A2 */  sb         $v0, 0x3D0($s1)
    /* 3D22C 8004CA2C 0E000224 */  addiu      $v0, $zero, 0xE
    /* 3D230 8004CA30 960322A2 */  sb         $v0, 0x396($s1)
    /* 3D234 8004CA34 10000224 */  addiu      $v0, $zero, 0x10
    /* 3D238 8004CA38 D10320A2 */  sb         $zero, 0x3D1($s1)
    /* 3D23C 8004CA3C 970322A2 */  sb         $v0, 0x397($s1)
    /* 3D240 8004CA40 02190300 */  srl        $v1, $v1, 4
    /* 3D244 8004CA44 01006330 */  andi       $v1, $v1, 0x1
    /* 3D248 8004CA48 BA320108 */  j          .L8004CAE8
    /* 3D24C 8004CA4C AC0323A2 */   sb        $v1, 0x3AC($s1)
  .L8004CA50:
    /* 3D250 8004CA50 02002486 */  lh         $a0, 0x2($s1)
    /* 3D254 8004CA54 F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3D258 8004CA58 06002586 */  lh         $a1, 0x6($s1)
    /* 3D25C 8004CA5C 02004684 */  lh         $a2, 0x2($v0)
    /* 3D260 8004CA60 06004784 */  lh         $a3, 0x6($v0)
    /* 3D264 8004CA64 DB6C010C */  jal        func_8005B36C
    /* 3D268 8004CA68 00000000 */   nop
    /* 3D26C 8004CA6C AA032492 */  lbu        $a0, 0x3AA($s1)
    /* 3D270 8004CA70 21A04000 */  addu       $s4, $v0, $zero
    /* 3D274 8004CA74 23108402 */  subu       $v0, $s4, $a0
    /* 3D278 8004CA78 FF004330 */  andi       $v1, $v0, 0xFF
    /* 3D27C 8004CA7C 8100622C */  sltiu      $v0, $v1, 0x81
    /* 3D280 8004CA80 08004014 */  bnez       $v0, .L8004CAA4
    /* 3D284 8004CA84 31006228 */   slti      $v0, $v1, 0x31
    /* 3D288 8004CA88 23109400 */  subu       $v0, $a0, $s4
    /* 3D28C 8004CA8C FF004230 */  andi       $v0, $v0, 0xFF
    /* 3D290 8004CA90 31004228 */  slti       $v0, $v0, 0x31
    /* 3D294 8004CA94 05004014 */  bnez       $v0, .L8004CAAC
    /* 3D298 8004CA98 FF009032 */   andi      $s0, $s4, 0xFF
    /* 3D29C 8004CA9C B9320108 */  j          .L8004CAE4
    /* 3D2A0 8004CAA0 00000000 */   nop
  .L8004CAA4:
    /* 3D2A4 8004CAA4 0F004010 */  beqz       $v0, .L8004CAE4
    /* 3D2A8 8004CAA8 FF009032 */   andi      $s0, $s4, 0xFF
  .L8004CAAC:
    /* 3D2AC 8004CAAC 21200002 */  addu       $a0, $s0, $zero
    /* 3D2B0 8004CAB0 A579000C */  jal        func_8001E694
    /* 3D2B4 8004CAB4 68000524 */   addiu     $a1, $zero, 0x68
    /* 3D2B8 8004CAB8 21200002 */  addu       $a0, $s0, $zero
    /* 3D2BC 8004CABC 68000524 */  addiu      $a1, $zero, 0x68
    /* 3D2C0 8004CAC0 02002396 */  lhu        $v1, 0x2($s1)
    /* 3D2C4 8004CAC4 F402668E */  lw         $a2, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3D2C8 8004CAC8 21186200 */  addu       $v1, $v1, $v0
    /* 3D2CC 8004CACC 6979000C */  jal        func_8001E5A4
    /* 3D2D0 8004CAD0 0200C3A4 */   sh        $v1, 0x2($a2)
    /* 3D2D4 8004CAD4 06002396 */  lhu        $v1, 0x6($s1)
    /* 3D2D8 8004CAD8 F402648E */  lw         $a0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3D2DC 8004CADC 21186200 */  addu       $v1, $v1, $v0
    /* 3D2E0 8004CAE0 060083A4 */  sh         $v1, 0x6($a0)
  .L8004CAE4:
    /* 3D2E4 8004CAE4 A003328E */  lw         $s2, 0x3A0($s1)
  .L8004CAE8:
    /* 3D2E8 8004CAE8 F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3D2EC 8004CAEC 00000000 */  nop
    /* 3D2F0 8004CAF0 0C00428C */  lw         $v0, 0xC($v0)
    /* 3D2F4 8004CAF4 00000000 */  nop
    /* 3D2F8 8004CAF8 02004104 */  bgez       $v0, .L8004CB04
    /* 3D2FC 8004CAFC 00000000 */   nop
    /* 3D300 8004CB00 23100200 */  negu       $v0, $v0
  .L8004CB04:
    /* 3D304 8004CB04 81394228 */  slti       $v0, $v0, 0x3981
    /* 3D308 8004CB08 60004014 */  bnez       $v0, .L8004CC8C
    /* 3D30C 8004CB0C 00000000 */   nop
    /* 3D310 8004CB10 1C036296 */  lhu        $v0, (0x1F80031C & 0xFFFF)($s3)
    /* 3D314 8004CB14 00000000 */  nop
    /* 3D318 8004CB18 00140200 */  sll        $v0, $v0, 16
    /* 3D31C 8004CB1C 03140200 */  sra        $v0, $v0, 16
    /* 3D320 8004CB20 21004228 */  slti       $v0, $v0, 0x21
    /* 3D324 8004CB24 59004010 */  beqz       $v0, .L8004CC8C
    /* 3D328 8004CB28 09001024 */   addiu     $s0, $zero, 0x9
    /* 3D32C 8004CB2C 92032292 */  lbu        $v0, 0x392($s1)
    /* 3D330 8004CB30 98032492 */  lbu        $a0, 0x398($s1)
    /* 3D334 8004CB34 40180200 */  sll        $v1, $v0, 1
    /* 3D338 8004CB38 21186200 */  addu       $v1, $v1, $v0
    /* 3D33C 8004CB3C 80180300 */  sll        $v1, $v1, 2
    /* 3D340 8004CB40 40110400 */  sll        $v0, $a0, 5
    /* 3D344 8004CB44 21104400 */  addu       $v0, $v0, $a0
    /* 3D348 8004CB48 C0100200 */  sll        $v0, $v0, 3
    /* 3D34C 8004CB4C 21186200 */  addu       $v1, $v1, $v0
    /* 3D350 8004CB50 1180013C */  lui        $at, %hi(D_8010C32C)
    /* 3D354 8004CB54 21082300 */  addu       $at, $at, $v1
    /* 3D358 8004CB58 2CC3248C */  lw         $a0, %lo(D_8010C32C)($at)
    /* 3D35C 8004CB5C 00000000 */  nop
    /* 3D360 8004CB60 02230400 */  srl        $a0, $a0, 12
    /* 3D364 8004CB64 0F008430 */  andi       $a0, $a0, 0xF
    /* 3D368 8004CB68 AE79000C */  jal        func_8001E6B8
    /* 3D36C 8004CB6C 23200402 */   subu      $a0, $s0, $a0
    /* 3D370 8004CB70 46004010 */  beqz       $v0, .L8004CC8C
    /* 3D374 8004CB74 00000000 */   nop
    /* 3D378 8004CB78 92032292 */  lbu        $v0, 0x392($s1)
    /* 3D37C 8004CB7C 98032492 */  lbu        $a0, 0x398($s1)
    /* 3D380 8004CB80 40180200 */  sll        $v1, $v0, 1
    /* 3D384 8004CB84 21186200 */  addu       $v1, $v1, $v0
    /* 3D388 8004CB88 80180300 */  sll        $v1, $v1, 2
    /* 3D38C 8004CB8C 40110400 */  sll        $v0, $a0, 5
    /* 3D390 8004CB90 21104400 */  addu       $v0, $v0, $a0
    /* 3D394 8004CB94 C0100200 */  sll        $v0, $v0, 3
    /* 3D398 8004CB98 21186200 */  addu       $v1, $v1, $v0
    /* 3D39C 8004CB9C 1180013C */  lui        $at, %hi(D_8010C32C)
    /* 3D3A0 8004CBA0 21082300 */  addu       $at, $at, $v1
    /* 3D3A4 8004CBA4 2CC3248C */  lw         $a0, %lo(D_8010C32C)($at)
    /* 3D3A8 8004CBA8 00000000 */  nop
    /* 3D3AC 8004CBAC 02230400 */  srl        $a0, $a0, 12
    /* 3D3B0 8004CBB0 0F008430 */  andi       $a0, $a0, 0xF
    /* 3D3B4 8004CBB4 23200402 */  subu       $a0, $s0, $a0
    /* 3D3B8 8004CBB8 AE79000C */  jal        func_8001E6B8
    /* 3D3BC 8004CBBC 80200400 */   sll       $a0, $a0, 2
    /* 3D3C0 8004CBC0 0C004326 */  addiu      $v1, $s2, 0xC
    /* 3D3C4 8004CBC4 21906200 */  addu       $s2, $v1, $v0
    /* 3D3C8 8004CBC8 3800422A */  slti       $v0, $s2, 0x38
    /* 3D3CC 8004CBCC 03004010 */  beqz       $v0, .L8004CBDC
    /* 3D3D0 8004CBD0 5300422A */   slti      $v0, $s2, 0x53
    /* 3D3D4 8004CBD4 FA320108 */  j          .L8004CBE8
    /* 3D3D8 8004CBD8 38001224 */   addiu     $s2, $zero, 0x38
  .L8004CBDC:
    /* 3D3DC 8004CBDC 02004014 */  bnez       $v0, .L8004CBE8
    /* 3D3E0 8004CBE0 00000000 */   nop
    /* 3D3E4 8004CBE4 52001224 */  addiu      $s2, $zero, 0x52
  .L8004CBE8:
    /* 3D3E8 8004CBE8 F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3D3EC 8004CBEC 16B2033C */  lui        $v1, (0xB21642C9 >> 16)
    /* 3D3F0 8004CBF0 0C00448C */  lw         $a0, 0xC($v0)
    /* 3D3F4 8004CBF4 C9426334 */  ori        $v1, $v1, (0xB21642C9 & 0xFFFF)
    /* 3D3F8 8004CBF8 43200400 */  sra        $a0, $a0, 1
    /* 3D3FC 8004CBFC 02008104 */  bgez       $a0, .L8004CC08
    /* 3D400 8004CC00 00000000 */   nop
    /* 3D404 8004CC04 23200400 */  negu       $a0, $a0
  .L8004CC08:
    /* 3D408 8004CC08 18008300 */  mult       $a0, $v1
    /* 3D40C 8004CC0C 10400000 */  mfhi       $t0
    /* 3D410 8004CC10 21100401 */  addu       $v0, $t0, $a0
    /* 3D414 8004CC14 43120200 */  sra        $v0, $v0, 9
    /* 3D418 8004CC18 C3270400 */  sra        $a0, $a0, 31
    /* 3D41C 8004CC1C AE79000C */  jal        func_8001E6B8
    /* 3D420 8004CC20 23204400 */   subu      $a0, $v0, $a0
    /* 3D424 8004CC24 21804000 */  addu       $s0, $v0, $zero
    /* 3D428 8004CC28 E871010C */  jal        func_8005C7A0
    /* 3D42C 8004CC2C 08000424 */   addiu     $a0, $zero, 0x8
    /* 3D430 8004CC30 21202002 */  addu       $a0, $s1, $zero
    /* 3D434 8004CC34 21304002 */  addu       $a2, $s2, $zero
    /* 3D438 8004CC38 AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 3D43C 8004CC3C 21380002 */  addu       $a3, $s0, $zero
    /* 3D440 8004CC40 2128A200 */  addu       $a1, $a1, $v0
    /* 3D444 8004CC44 3C2C010C */  jal        func_8004B0F0
    /* 3D448 8004CC48 FF00A530 */   andi      $a1, $a1, 0xFF
    /* 3D44C 8004CC4C F402638E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3D450 8004CC50 04000224 */  addiu      $v0, $zero, 0x4
    /* 3D454 8004CC54 B00362A0 */  sb         $v0, 0x3B0($v1)
    /* 3D458 8004CC58 96032392 */  lbu        $v1, 0x396($s1)
    /* 3D45C 8004CC5C 0E000224 */  addiu      $v0, $zero, 0xE
    /* 3D460 8004CC60 53006210 */  beq        $v1, $v0, .L8004CDB0
    /* 3D464 8004CC64 00000000 */   nop
    /* 3D468 8004CC68 1B4B010C */  jal        func_80052C6C
    /* 3D46C 8004CC6C 21202002 */   addu      $a0, $s1, $zero
    /* 3D470 8004CC70 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3D474 8004CC74 4E004014 */  bnez       $v0, .L8004CDB0
    /* 3D478 8004CC78 1B000224 */   addiu     $v0, $zero, 0x1B
    /* 3D47C 8004CC7C 960322A2 */  sb         $v0, 0x396($s1)
    /* 3D480 8004CC80 01000224 */  addiu      $v0, $zero, 0x1
    /* 3D484 8004CC84 6C330108 */  j          .L8004CDB0
    /* 3D488 8004CC88 970322A2 */   sb        $v0, 0x397($s1)
  .L8004CC8C:
    /* 3D48C 8004CC8C AB026392 */  lbu        $v1, (0x1F8002AB & 0xFFFF)($s3)
    /* 3D490 8004CC90 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 3D494 8004CC94 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 3D498 8004CC98 FF006330 */  andi       $v1, $v1, 0xFF
    /* 3D49C 8004CC9C 19006200 */  multu      $v1, $v0
    /* 3D4A0 8004CCA0 21202002 */  addu       $a0, $s1, $zero
    /* 3D4A4 8004CCA4 21304002 */  addu       $a2, $s2, $zero
    /* 3D4A8 8004CCA8 10400000 */  mfhi       $t0
    /* 3D4AC 8004CCAC 02290800 */  srl        $a1, $t0, 4
    /* 3D4B0 8004CCB0 40100500 */  sll        $v0, $a1, 1
    /* 3D4B4 8004CCB4 21104500 */  addu       $v0, $v0, $a1
    /* 3D4B8 8004CCB8 C0100200 */  sll        $v0, $v0, 3
    /* 3D4BC 8004CCBC 23186200 */  subu       $v1, $v1, $v0
    /* 3D4C0 8004CCC0 FF006330 */  andi       $v1, $v1, 0xFF
    /* 3D4C4 8004CCC4 40290300 */  sll        $a1, $v1, 5
    /* 3D4C8 8004CCC8 2328A300 */  subu       $a1, $a1, $v1
    /* 3D4CC 8004CCCC 80280500 */  sll        $a1, $a1, 2
    /* 3D4D0 8004CCD0 2128A300 */  addu       $a1, $a1, $v1
    /* 3D4D4 8004CCD4 C0280500 */  sll        $a1, $a1, 3
    /* 3D4D8 8004CCD8 8455010C */  jal        func_80055610
    /* 3D4DC 8004CCDC 2128A502 */   addu      $a1, $s5, $a1
    /* 3D4E0 8004CCE0 33004010 */  beqz       $v0, .L8004CDB0
    /* 3D4E4 8004CCE4 00000000 */   nop
    /* 3D4E8 8004CCE8 92032292 */  lbu        $v0, 0x392($s1)
    /* 3D4EC 8004CCEC 98032492 */  lbu        $a0, 0x398($s1)
    /* 3D4F0 8004CCF0 40180200 */  sll        $v1, $v0, 1
    /* 3D4F4 8004CCF4 21186200 */  addu       $v1, $v1, $v0
    /* 3D4F8 8004CCF8 80180300 */  sll        $v1, $v1, 2
    /* 3D4FC 8004CCFC 40110400 */  sll        $v0, $a0, 5
    /* 3D500 8004CD00 21104400 */  addu       $v0, $v0, $a0
    /* 3D504 8004CD04 C0100200 */  sll        $v0, $v0, 3
    /* 3D508 8004CD08 21186200 */  addu       $v1, $v1, $v0
    /* 3D50C 8004CD0C 1180013C */  lui        $at, %hi(D_8010C32C)
    /* 3D510 8004CD10 21082300 */  addu       $at, $at, $v1
    /* 3D514 8004CD14 2CC3248C */  lw         $a0, %lo(D_8010C32C)($at)
    /* 3D518 8004CD18 09000224 */  addiu      $v0, $zero, 0x9
    /* 3D51C 8004CD1C 02230400 */  srl        $a0, $a0, 12
    /* 3D520 8004CD20 0F008430 */  andi       $a0, $a0, 0xF
    /* 3D524 8004CD24 AE79000C */  jal        func_8001E6B8
    /* 3D528 8004CD28 23204400 */   subu      $a0, $v0, $a0
    /* 3D52C 8004CD2C 10004326 */  addiu      $v1, $s2, 0x10
    /* 3D530 8004CD30 21906200 */  addu       $s2, $v1, $v0
    /* 3D534 8004CD34 3400422A */  slti       $v0, $s2, 0x34
    /* 3D538 8004CD38 03004010 */  beqz       $v0, .L8004CD48
    /* 3D53C 8004CD3C 5300422A */   slti      $v0, $s2, 0x53
    /* 3D540 8004CD40 55330108 */  j          .L8004CD54
    /* 3D544 8004CD44 34001224 */   addiu     $s2, $zero, 0x34
  .L8004CD48:
    /* 3D548 8004CD48 02004014 */  bnez       $v0, .L8004CD54
    /* 3D54C 8004CD4C 00000000 */   nop
    /* 3D550 8004CD50 52001224 */  addiu      $s2, $zero, 0x52
  .L8004CD54:
    /* 3D554 8004CD54 AE79000C */  jal        func_8001E6B8
    /* 3D558 8004CD58 04000424 */   addiu     $a0, $zero, 0x4
    /* 3D55C 8004CD5C 21202002 */  addu       $a0, $s1, $zero
    /* 3D560 8004CD60 21304002 */  addu       $a2, $s2, $zero
    /* 3D564 8004CD64 AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 3D568 8004CD68 3C2C010C */  jal        func_8004B0F0
    /* 3D56C 8004CD6C 21384000 */   addu      $a3, $v0, $zero
    /* 3D570 8004CD70 8D032292 */  lbu        $v0, 0x38D($s1)
    /* 3D574 8004CD74 F402638E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3D578 8004CD78 21202002 */  addu       $a0, $s1, $zero
    /* 3D57C 8004CD7C 1C0360A6 */  sh         $zero, (0x1F80031C & 0xFFFF)($s3)
    /* 3D580 8004CD80 A90262A2 */  sb         $v0, (0x1F8002A9 & 0xFFFF)($s3)
    /* 3D584 8004CD84 04000224 */  addiu      $v0, $zero, 0x4
    /* 3D588 8004CD88 1B4B010C */  jal        func_80052C6C
    /* 3D58C 8004CD8C B00362A0 */   sb        $v0, 0x3B0($v1)
    /* 3D590 8004CD90 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3D594 8004CD94 A9014014 */  bnez       $v0, .L8004D43C
    /* 3D598 8004CD98 01000224 */   addiu     $v0, $zero, 0x1
    /* 3D59C 8004CD9C 1B000224 */  addiu      $v0, $zero, 0x1B
    /* 3D5A0 8004CDA0 960322A2 */  sb         $v0, 0x396($s1)
    /* 3D5A4 8004CDA4 01000224 */  addiu      $v0, $zero, 0x1
    /* 3D5A8 8004CDA8 0E350108 */  j          .L8004D438
    /* 3D5AC 8004CDAC 970322A2 */   sb        $v0, 0x397($s1)
  .L8004CDB0:
    /* 3D5B0 8004CDB0 F402648E */  lw         $a0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3D5B4 8004CDB4 AA032392 */  lbu        $v1, 0x3AA($s1)
    /* 3D5B8 8004CDB8 01000224 */  addiu      $v0, $zero, 0x1
    /* 3D5BC 8004CDBC A40383A0 */  sb         $v1, 0x3A4($a0)
    /* 3D5C0 8004CDC0 B00260AE */  sw         $zero, (0x1F8002B0 & 0xFFFF)($s3)
    /* 3D5C4 8004CDC4 0F350108 */  j          .L8004D43C
    /* 3D5C8 8004CDC8 1C0360A6 */   sh        $zero, (0x1F80031C & 0xFFFF)($s3)
  .L8004CDCC:
    /* 3D5CC 8004CDCC 1C0360A6 */  sh         $zero, (0x1F80031C & 0xFFFF)($s3)
    /* 3D5D0 8004CDD0 A003228E */  lw         $v0, 0x3A0($s1)
    /* 3D5D4 8004CDD4 00000000 */  nop
    /* 3D5D8 8004CDD8 3100422C */  sltiu      $v0, $v0, 0x31
    /* 3D5DC 8004CDDC 16004014 */  bnez       $v0, .L8004CE38
    /* 3D5E0 8004CDE0 00000000 */   nop
    /* 3D5E4 8004CDE4 92032292 */  lbu        $v0, 0x392($s1)
    /* 3D5E8 8004CDE8 98032492 */  lbu        $a0, 0x398($s1)
    /* 3D5EC 8004CDEC 40180200 */  sll        $v1, $v0, 1
    /* 3D5F0 8004CDF0 21186200 */  addu       $v1, $v1, $v0
    /* 3D5F4 8004CDF4 80180300 */  sll        $v1, $v1, 2
    /* 3D5F8 8004CDF8 40110400 */  sll        $v0, $a0, 5
    /* 3D5FC 8004CDFC 21104400 */  addu       $v0, $v0, $a0
    /* 3D600 8004CE00 C0100200 */  sll        $v0, $v0, 3
    /* 3D604 8004CE04 21186200 */  addu       $v1, $v1, $v0
    /* 3D608 8004CE08 1180013C */  lui        $at, %hi(D_8010C32C)
    /* 3D60C 8004CE0C 21082300 */  addu       $at, $at, $v1
    /* 3D610 8004CE10 2CC3248C */  lw         $a0, %lo(D_8010C32C)($at)
    /* 3D614 8004CE14 09000224 */  addiu      $v0, $zero, 0x9
    /* 3D618 8004CE18 02230400 */  srl        $a0, $a0, 12
    /* 3D61C 8004CE1C 0F008430 */  andi       $a0, $a0, 0xF
    /* 3D620 8004CE20 AE79000C */  jal        func_8001E6B8
    /* 3D624 8004CE24 23204400 */   subu      $a0, $v0, $a0
    /* 3D628 8004CE28 A003238E */  lw         $v1, 0x3A0($s1)
    /* 3D62C 8004CE2C 06004224 */  addiu      $v0, $v0, 0x6
    /* 3D630 8004CE30 A0330108 */  j          .L8004CE80
    /* 3D634 8004CE34 21906200 */   addu      $s2, $v1, $v0
  .L8004CE38:
    /* 3D638 8004CE38 92032292 */  lbu        $v0, 0x392($s1)
    /* 3D63C 8004CE3C 98032492 */  lbu        $a0, 0x398($s1)
    /* 3D640 8004CE40 40180200 */  sll        $v1, $v0, 1
    /* 3D644 8004CE44 21186200 */  addu       $v1, $v1, $v0
    /* 3D648 8004CE48 80180300 */  sll        $v1, $v1, 2
    /* 3D64C 8004CE4C 40110400 */  sll        $v0, $a0, 5
    /* 3D650 8004CE50 21104400 */  addu       $v0, $v0, $a0
    /* 3D654 8004CE54 C0100200 */  sll        $v0, $v0, 3
    /* 3D658 8004CE58 21186200 */  addu       $v1, $v1, $v0
    /* 3D65C 8004CE5C 1180013C */  lui        $at, %hi(D_8010C32C)
    /* 3D660 8004CE60 21082300 */  addu       $at, $at, $v1
    /* 3D664 8004CE64 2CC3248C */  lw         $a0, %lo(D_8010C32C)($at)
    /* 3D668 8004CE68 09000224 */  addiu      $v0, $zero, 0x9
    /* 3D66C 8004CE6C 02230400 */  srl        $a0, $a0, 12
    /* 3D670 8004CE70 0F008430 */  andi       $a0, $a0, 0xF
    /* 3D674 8004CE74 AE79000C */  jal        func_8001E6B8
    /* 3D678 8004CE78 23204400 */   subu      $a0, $v0, $a0
    /* 3D67C 8004CE7C 38005224 */  addiu      $s2, $v0, 0x38
  .L8004CE80:
    /* 3D680 8004CE80 9A032292 */  lbu        $v0, 0x39A($s1)
    /* 3D684 8004CE84 00000000 */  nop
    /* 3D688 8004CE88 0E004014 */  bnez       $v0, .L8004CEC4
    /* 3D68C 8004CE8C 00000000 */   nop
    /* 3D690 8004CE90 8C026292 */  lbu        $v0, (0x1F80028C & 0xFFFF)($s3)
    /* 3D694 8004CE94 00000000 */  nop
    /* 3D698 8004CE98 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3D69C 8004CE9C 06004010 */  beqz       $v0, .L8004CEB8
    /* 3D6A0 8004CEA0 00000000 */   nop
    /* 3D6A4 8004CEA4 0C80013C */  lui        $at, %hi(D_800C6B74)
    /* 3D6A8 8004CEA8 21082200 */  addu       $at, $at, $v0
    /* 3D6AC 8004CEAC 746B2690 */  lbu        $a2, %lo(D_800C6B74)($at)
    /* 3D6B0 8004CEB0 B4330108 */  j          .L8004CED0
    /* 3D6B4 8004CEB4 00000000 */   nop
  .L8004CEB8:
    /* 3D6B8 8004CEB8 AA032692 */  lbu        $a2, 0x3AA($s1)
    /* 3D6BC 8004CEBC B4330108 */  j          .L8004CED0
    /* 3D6C0 8004CEC0 00000000 */   nop
  .L8004CEC4:
    /* 3D6C4 8004CEC4 99032292 */  lbu        $v0, 0x399($s1)
    /* 3D6C8 8004CEC8 00000000 */  nop
    /* 3D6CC 8004CECC C0310200 */  sll        $a2, $v0, 7
  .L8004CED0:
    /* 3D6D0 8004CED0 AA026392 */  lbu        $v1, (0x1F8002AA & 0xFFFF)($s3)
    /* 3D6D4 8004CED4 8D032292 */  lbu        $v0, 0x38D($s1)
    /* 3D6D8 8004CED8 00000000 */  nop
    /* 3D6DC 8004CEDC 37004314 */  bne        $v0, $v1, .L8004CFBC
    /* 3D6E0 8004CEE0 FF000432 */   andi      $a0, $s0, 0xFF
    /* 3D6E4 8004CEE4 AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 3D6E8 8004CEE8 F36D010C */  jal        func_8005B7CC
    /* 3D6EC 8004CEEC 10000624 */   addiu     $a2, $zero, 0x10
    /* 3D6F0 8004CEF0 FF004430 */  andi       $a0, $v0, 0xFF
    /* 3D6F4 8004CEF4 C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 3D6F8 8004CEF8 23186400 */  subu       $v1, $v1, $a0
    /* 3D6FC 8004CEFC 21206000 */  addu       $a0, $v1, $zero
    /* 3D700 8004CF00 02006104 */  bgez       $v1, .L8004CF0C
    /* 3D704 8004CF04 AA0322A2 */   sb        $v0, 0x3AA($s1)
    /* 3D708 8004CF08 FF006424 */  addiu      $a0, $v1, 0xFF
  .L8004CF0C:
    /* 3D70C 8004CF0C 03120400 */  sra        $v0, $a0, 8
    /* 3D710 8004CF10 00120200 */  sll        $v0, $v0, 8
    /* 3D714 8004CF14 23106200 */  subu       $v0, $v1, $v0
    /* 3D718 8004CF18 00110200 */  sll        $v0, $v0, 4
    /* 3D71C 8004CF1C 260022A6 */  sh         $v0, 0x26($s1)
    /* 3D720 8004CF20 F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3D724 8004CF24 00000000 */  nop
    /* 3D728 8004CF28 04004284 */  lh         $v0, 0x4($v0)
    /* 3D72C 8004CF2C AA033492 */  lbu        $s4, 0x3AA($s1)
    /* 3D730 8004CF30 41FF4228 */  slti       $v0, $v0, -0xBF
    /* 3D734 8004CF34 02004010 */  beqz       $v0, .L8004CF40
    /* 3D738 8004CF38 FBFF1024 */   addiu     $s0, $zero, -0x5
    /* 3D73C 8004CF3C F9FF1024 */  addiu      $s0, $zero, -0x7
  .L8004CF40:
    /* 3D740 8004CF40 21202002 */  addu       $a0, $s1, $zero
    /* 3D744 8004CF44 FF008532 */  andi       $a1, $s4, 0xFF
    /* 3D748 8004CF48 FAFF4626 */  addiu      $a2, $s2, -0x6
    /* 3D74C 8004CF4C 3C2C010C */  jal        func_8004B0F0
    /* 3D750 8004CF50 21380002 */   addu      $a3, $s0, $zero
    /* 3D754 8004CF54 8D032292 */  lbu        $v0, 0x38D($s1)
    /* 3D758 8004CF58 00000000 */  nop
    /* 3D75C 8004CF5C A90262A2 */  sb         $v0, (0x1F8002A9 & 0xFFFF)($s3)
    /* 3D760 8004CF60 F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3D764 8004CF64 06000324 */  addiu      $v1, $zero, 0x6
    /* 3D768 8004CF68 B00343A0 */  sb         $v1, 0x3B0($v0)
    /* 3D76C 8004CF6C F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3D770 8004CF70 00000000 */  nop
    /* 3D774 8004CF74 B20343A0 */  sb         $v1, 0x3B2($v0)
    /* 3D778 8004CF78 96032392 */  lbu        $v1, 0x396($s1)
    /* 3D77C 8004CF7C 01000224 */  addiu      $v0, $zero, 0x1
    /* 3D780 8004CF80 05006210 */  beq        $v1, $v0, .L8004CF98
    /* 3D784 8004CF84 03000224 */   addiu     $v0, $zero, 0x3
    /* 3D788 8004CF88 06006210 */  beq        $v1, $v0, .L8004CFA4
    /* 3D78C 8004CF8C 21202002 */   addu      $a0, $s1, $zero
    /* 3D790 8004CF90 0F350108 */  j          .L8004D43C
    /* 3D794 8004CF94 01000224 */   addiu     $v0, $zero, 0x1
  .L8004CF98:
    /* 3D798 8004CF98 02000224 */  addiu      $v0, $zero, 0x2
    /* 3D79C 8004CF9C ED330108 */  j          .L8004CFB4
    /* 3D7A0 8004CFA0 D00320A2 */   sb        $zero, 0x3D0($s1)
  .L8004CFA4:
    /* 3D7A4 8004CFA4 90032692 */  lbu        $a2, 0x390($s1)
    /* 3D7A8 8004CFA8 9E6E010C */  jal        func_8005BA78
    /* 3D7AC 8004CFAC 04000524 */   addiu     $a1, $zero, 0x4
    /* 3D7B0 8004CFB0 02000224 */  addiu      $v0, $zero, 0x2
  .L8004CFB4:
    /* 3D7B4 8004CFB4 0E350108 */  j          .L8004D438
    /* 3D7B8 8004CFB8 970322A2 */   sb        $v0, 0x397($s1)
  .L8004CFBC:
    /* 3D7BC 8004CFBC 99032292 */  lbu        $v0, 0x399($s1)
    /* 3D7C0 8004CFC0 02002386 */  lh         $v1, 0x2($s1)
    /* 3D7C4 8004CFC4 06004010 */  beqz       $v0, .L8004CFE0
    /* 3D7C8 8004CFC8 23100300 */   negu      $v0, $v1
    /* 3D7CC 8004CFCC 11D74228 */  slti       $v0, $v0, -0x28EF
    /* 3D7D0 8004CFD0 11004010 */  beqz       $v0, .L8004D018
    /* 3D7D4 8004CFD4 00000000 */   nop
    /* 3D7D8 8004CFD8 FB330108 */  j          .L8004CFEC
    /* 3D7DC 8004CFDC 00000000 */   nop
  .L8004CFE0:
    /* 3D7E0 8004CFE0 11D76228 */  slti       $v0, $v1, -0x28EF
    /* 3D7E4 8004CFE4 0C004010 */  beqz       $v0, .L8004D018
    /* 3D7E8 8004CFE8 00000000 */   nop
  .L8004CFEC:
    /* 3D7EC 8004CFEC 06002286 */  lh         $v0, 0x6($s1)
    /* 3D7F0 8004CFF0 00000000 */  nop
    /* 3D7F4 8004CFF4 02004104 */  bgez       $v0, .L8004D000
    /* 3D7F8 8004CFF8 00000000 */   nop
    /* 3D7FC 8004CFFC 23100200 */  negu       $v0, $v0
  .L8004D000:
    /* 3D800 8004D000 20044228 */  slti       $v0, $v0, 0x420
    /* 3D804 8004D004 04004010 */  beqz       $v0, .L8004D018
    /* 3D808 8004D008 00000000 */   nop
    /* 3D80C 8004D00C 99032292 */  lbu        $v0, 0x399($s1)
    /* 3D810 8004D010 44340108 */  j          .L8004D110
    /* 3D814 8004D014 C0A10200 */   sll       $s4, $v0, 7
  .L8004D018:
    /* 3D818 8004D018 D1032392 */  lbu        $v1, 0x3D1($s1)
    /* 3D81C 8004D01C 01000224 */  addiu      $v0, $zero, 0x1
    /* 3D820 8004D020 07006210 */  beq        $v1, $v0, .L8004D040
    /* 3D824 8004D024 21202002 */   addu      $a0, $s1, $zero
    /* 3D828 8004D028 FF008532 */  andi       $a1, $s4, 0xFF
    /* 3D82C 8004D02C FF00C630 */  andi       $a2, $a2, 0xFF
    /* 3D830 8004D030 1935010C */  jal        func_8004D464
    /* 3D834 8004D034 21384002 */   addu      $a3, $s2, $zero
    /* 3D838 8004D038 0F350108 */  j          .L8004D43C
    /* 3D83C 8004D03C 01000224 */   addiu     $v0, $zero, 0x1
  .L8004D040:
    /* 3D840 8004D040 8C026292 */  lbu        $v0, (0x1F80028C & 0xFFFF)($s3)
    /* 3D844 8004D044 00000000 */  nop
    /* 3D848 8004D048 2E004010 */  beqz       $v0, .L8004D104
    /* 3D84C 8004D04C FF00C530 */   andi      $a1, $a2, 0xFF
    /* 3D850 8004D050 A4032592 */  lbu        $a1, 0x3A4($s1)
    /* 3D854 8004D054 AA032492 */  lbu        $a0, 0x3AA($s1)
    /* 3D858 8004D058 00000000 */  nop
    /* 3D85C 8004D05C 2310A400 */  subu       $v0, $a1, $a0
    /* 3D860 8004D060 FF004330 */  andi       $v1, $v0, 0xFF
    /* 3D864 8004D064 8100622C */  sltiu      $v0, $v1, 0x81
    /* 3D868 8004D068 08004014 */  bnez       $v0, .L8004D08C
    /* 3D86C 8004D06C 21006228 */   slti      $v0, $v1, 0x21
    /* 3D870 8004D070 23108500 */  subu       $v0, $a0, $a1
    /* 3D874 8004D074 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3D878 8004D078 21004228 */  slti       $v0, $v0, 0x21
    /* 3D87C 8004D07C 08004014 */  bnez       $v0, .L8004D0A0
    /* 3D880 8004D080 23108600 */   subu      $v0, $a0, $a2
    /* 3D884 8004D084 40340108 */  j          .L8004D100
    /* 3D888 8004D088 21202002 */   addu      $a0, $s1, $zero
  .L8004D08C:
    /* 3D88C 8004D08C 1C004010 */  beqz       $v0, .L8004D100
    /* 3D890 8004D090 21202002 */   addu      $a0, $s1, $zero
    /* 3D894 8004D094 AA032492 */  lbu        $a0, 0x3AA($s1)
    /* 3D898 8004D098 00000000 */  nop
    /* 3D89C 8004D09C 23108600 */  subu       $v0, $a0, $a2
  .L8004D0A0:
    /* 3D8A0 8004D0A0 FF004330 */  andi       $v1, $v0, 0xFF
    /* 3D8A4 8004D0A4 8100622C */  sltiu      $v0, $v1, 0x81
    /* 3D8A8 8004D0A8 08004014 */  bnez       $v0, .L8004D0CC
    /* 3D8AC 8004D0AC 21006228 */   slti      $v0, $v1, 0x21
    /* 3D8B0 8004D0B0 2310C400 */  subu       $v0, $a2, $a0
    /* 3D8B4 8004D0B4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3D8B8 8004D0B8 21004228 */  slti       $v0, $v0, 0x21
    /* 3D8BC 8004D0BC 05004014 */  bnez       $v0, .L8004D0D4
    /* 3D8C0 8004D0C0 21202002 */   addu      $a0, $s1, $zero
    /* 3D8C4 8004D0C4 40340108 */  j          .L8004D100
    /* 3D8C8 8004D0C8 00000000 */   nop
  .L8004D0CC:
    /* 3D8CC 8004D0CC 0C004010 */  beqz       $v0, .L8004D100
    /* 3D8D0 8004D0D0 21202002 */   addu      $a0, $s1, $zero
  .L8004D0D4:
    /* 3D8D4 8004D0D4 A003228E */  lw         $v0, 0x3A0($s1)
    /* 3D8D8 8004D0D8 00000000 */  nop
    /* 3D8DC 8004D0DC 3000422C */  sltiu      $v0, $v0, 0x30
    /* 3D8E0 8004D0E0 07004014 */  bnez       $v0, .L8004D100
    /* 3D8E4 8004D0E4 21202002 */   addu      $a0, $s1, $zero
    /* 3D8E8 8004D0E8 FF008532 */  andi       $a1, $s4, 0xFF
    /* 3D8EC 8004D0EC FF00C630 */  andi       $a2, $a2, 0xFF
    /* 3D8F0 8004D0F0 1935010C */  jal        func_8004D464
    /* 3D8F4 8004D0F4 21384002 */   addu      $a3, $s2, $zero
    /* 3D8F8 8004D0F8 0F350108 */  j          .L8004D43C
    /* 3D8FC 8004D0FC 01000224 */   addiu     $v0, $zero, 0x1
  .L8004D100:
    /* 3D900 8004D100 FF00C530 */  andi       $a1, $a2, 0xFF
  .L8004D104:
    /* 3D904 8004D104 E624010C */  jal        func_80049398
    /* 3D908 8004D108 1900063C */   lui       $a2, (0x190000 >> 16)
    /* 3D90C 8004D10C 21A04000 */  addu       $s4, $v0, $zero
  .L8004D110:
    /* 3D910 8004D110 02002486 */  lh         $a0, 0x2($s1)
    /* 3D914 8004D114 F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3D918 8004D118 06002586 */  lh         $a1, 0x6($s1)
    /* 3D91C 8004D11C C2034684 */  lh         $a2, 0x3C2($v0)
    /* 3D920 8004D120 C6034784 */  lh         $a3, 0x3C6($v0)
    /* 3D924 8004D124 DB6C010C */  jal        func_8005B36C
    /* 3D928 8004D128 FF009232 */   andi      $s2, $s4, 0xFF
    /* 3D92C 8004D12C 21204002 */  addu       $a0, $s2, $zero
    /* 3D930 8004D130 FF004530 */  andi       $a1, $v0, 0xFF
    /* 3D934 8004D134 F36D010C */  jal        func_8005B7CC
    /* 3D938 8004D138 28000624 */   addiu     $a2, $zero, 0x28
    /* 3D93C 8004D13C FF005030 */  andi       $s0, $v0, 0xFF
    /* 3D940 8004D140 21200002 */  addu       $a0, $s0, $zero
    /* 3D944 8004D144 A579000C */  jal        func_8001E694
    /* 3D948 8004D148 68000524 */   addiu     $a1, $zero, 0x68
    /* 3D94C 8004D14C 02002396 */  lhu        $v1, 0x2($s1)
    /* 3D950 8004D150 F402648E */  lw         $a0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3D954 8004D154 21186200 */  addu       $v1, $v1, $v0
    /* 3D958 8004D158 020083A4 */  sh         $v1, 0x2($a0)
    /* 3D95C 8004D15C F402638E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3D960 8004D160 68000524 */  addiu      $a1, $zero, 0x68
    /* 3D964 8004D164 04006294 */  lhu        $v0, 0x4($v1)
    /* 3D968 8004D168 21200002 */  addu       $a0, $s0, $zero
    /* 3D96C 8004D16C 20004224 */  addiu      $v0, $v0, 0x20
    /* 3D970 8004D170 6979000C */  jal        func_8001E5A4
    /* 3D974 8004D174 040062A4 */   sh        $v0, 0x4($v1)
    /* 3D978 8004D178 21200002 */  addu       $a0, $s0, $zero
    /* 3D97C 8004D17C 06002396 */  lhu        $v1, 0x6($s1)
    /* 3D980 8004D180 F402658E */  lw         $a1, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3D984 8004D184 21186200 */  addu       $v1, $v1, $v0
    /* 3D988 8004D188 0600A3A4 */  sh         $v1, 0x6($a1)
    /* 3D98C 8004D18C AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 3D990 8004D190 F36D010C */  jal        func_8005B7CC
    /* 3D994 8004D194 28000624 */   addiu     $a2, $zero, 0x28
    /* 3D998 8004D198 FF004430 */  andi       $a0, $v0, 0xFF
    /* 3D99C 8004D19C C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 3D9A0 8004D1A0 23186400 */  subu       $v1, $v1, $a0
    /* 3D9A4 8004D1A4 21306000 */  addu       $a2, $v1, $zero
    /* 3D9A8 8004D1A8 02006104 */  bgez       $v1, .L8004D1B4
    /* 3D9AC 8004D1AC AA0322A2 */   sb        $v0, 0x3AA($s1)
    /* 3D9B0 8004D1B0 FF006624 */  addiu      $a2, $v1, 0xFF
  .L8004D1B4:
    /* 3D9B4 8004D1B4 21204002 */  addu       $a0, $s2, $zero
    /* 3D9B8 8004D1B8 00030524 */  addiu      $a1, $zero, 0x300
    /* 3D9BC 8004D1BC 03120600 */  sra        $v0, $a2, 8
    /* 3D9C0 8004D1C0 00120200 */  sll        $v0, $v0, 8
    /* 3D9C4 8004D1C4 23106200 */  subu       $v0, $v1, $v0
    /* 3D9C8 8004D1C8 00110200 */  sll        $v0, $v0, 4
    /* 3D9CC 8004D1CC A579000C */  jal        func_8001E694
    /* 3D9D0 8004D1D0 260022A6 */   sh        $v0, 0x26($s1)
    /* 3D9D4 8004D1D4 21204002 */  addu       $a0, $s2, $zero
    /* 3D9D8 8004D1D8 02003096 */  lhu        $s0, 0x2($s1)
    /* 3D9DC 8004D1DC 00030524 */  addiu      $a1, $zero, 0x300
    /* 3D9E0 8004D1E0 21800202 */  addu       $s0, $s0, $v0
    /* 3D9E4 8004D1E4 00841000 */  sll        $s0, $s0, 16
    /* 3D9E8 8004D1E8 6979000C */  jal        func_8001E5A4
    /* 3D9EC 8004D1EC 03841000 */   sra       $s0, $s0, 16
    /* 3D9F0 8004D1F0 21300002 */  addu       $a2, $s0, $zero
    /* 3D9F4 8004D1F4 06002796 */  lhu        $a3, 0x6($s1)
    /* 3D9F8 8004D1F8 F402638E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3D9FC 8004D1FC 2138E200 */  addu       $a3, $a3, $v0
    /* 3DA00 8004D200 003C0700 */  sll        $a3, $a3, 16
    /* 3DA04 8004D204 02006484 */  lh         $a0, 0x2($v1)
    /* 3DA08 8004D208 06006584 */  lh         $a1, 0x6($v1)
    /* 3DA0C 8004D20C DB6C010C */  jal        func_8005B36C
    /* 3DA10 8004D210 033C0700 */   sra       $a3, $a3, 16
    /* 3DA14 8004D214 FF004430 */  andi       $a0, $v0, 0xFF
    /* 3DA18 8004D218 AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 3DA1C 8004D21C F36D010C */  jal        func_8005B7CC
    /* 3DA20 8004D220 38000624 */   addiu     $a2, $zero, 0x38
    /* 3DA24 8004D224 21A04000 */  addu       $s4, $v0, $zero
    /* 3DA28 8004D228 92032392 */  lbu        $v1, 0x392($s1)
    /* 3DA2C 8004D22C 98032592 */  lbu        $a1, 0x398($s1)
    /* 3DA30 8004D230 40200300 */  sll        $a0, $v1, 1
    /* 3DA34 8004D234 21208300 */  addu       $a0, $a0, $v1
    /* 3DA38 8004D238 80200400 */  sll        $a0, $a0, 2
    /* 3DA3C 8004D23C 40190500 */  sll        $v1, $a1, 5
    /* 3DA40 8004D240 21186500 */  addu       $v1, $v1, $a1
    /* 3DA44 8004D244 C0180300 */  sll        $v1, $v1, 3
    /* 3DA48 8004D248 21208300 */  addu       $a0, $a0, $v1
    /* 3DA4C 8004D24C 1180013C */  lui        $at, %hi(D_8010C32C)
    /* 3DA50 8004D250 21082400 */  addu       $at, $at, $a0
    /* 3DA54 8004D254 2CC3238C */  lw         $v1, %lo(D_8010C32C)($at)
    /* 3DA58 8004D258 09000424 */  addiu      $a0, $zero, 0x9
    /* 3DA5C 8004D25C 021B0300 */  srl        $v1, $v1, 12
    /* 3DA60 8004D260 0F006330 */  andi       $v1, $v1, 0xF
    /* 3DA64 8004D264 23208300 */  subu       $a0, $a0, $v1
    /* 3DA68 8004D268 AE79000C */  jal        func_8001E6B8
    /* 3DA6C 8004D26C 40200400 */   sll       $a0, $a0, 1
    /* 3DA70 8004D270 F402638E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3DA74 8004D274 00000000 */  nop
    /* 3DA78 8004D278 A4036390 */  lbu        $v1, 0x3A4($v1)
    /* 3DA7C 8004D27C 02004624 */  addiu      $a2, $v0, 0x2
    /* 3DA80 8004D280 23188302 */  subu       $v1, $s4, $v1
    /* 3DA84 8004D284 80FF6424 */  addiu      $a0, $v1, -0x80
    /* 3DA88 8004D288 FF008330 */  andi       $v1, $a0, 0xFF
    /* 3DA8C 8004D28C 8100622C */  sltiu      $v0, $v1, 0x81
    /* 3DA90 8004D290 0C004014 */  bnez       $v0, .L8004D2C4
    /* 3DA94 8004D294 AA2A023C */   lui       $v0, (0x2AAAAAAB >> 16)
    /* 3DA98 8004D298 AA2A033C */  lui        $v1, (0x2AAAAAAB >> 16)
    /* 3DA9C 8004D29C ABAA6334 */  ori        $v1, $v1, (0x2AAAAAAB & 0xFFFF)
    /* 3DAA0 8004D2A0 23100400 */  negu       $v0, $a0
    /* 3DAA4 8004D2A4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3DAA8 8004D2A8 18004300 */  mult       $v0, $v1
    /* 3DAAC 8004D2AC C3170200 */  sra        $v0, $v0, 31
    /* 3DAB0 8004D2B0 10400000 */  mfhi       $t0
    /* 3DAB4 8004D2B4 43180800 */  sra        $v1, $t0, 1
    /* 3DAB8 8004D2B8 23186200 */  subu       $v1, $v1, $v0
    /* 3DABC 8004D2BC B8340108 */  j          .L8004D2E0
    /* 3DAC0 8004D2C0 2190C300 */   addu      $s2, $a2, $v1
  .L8004D2C4:
    /* 3DAC4 8004D2C4 ABAA4234 */  ori        $v0, $v0, (0x2AAAAAAB & 0xFFFF)
    /* 3DAC8 8004D2C8 18006200 */  mult       $v1, $v0
    /* 3DACC 8004D2CC C31F0300 */  sra        $v1, $v1, 31
    /* 3DAD0 8004D2D0 10400000 */  mfhi       $t0
    /* 3DAD4 8004D2D4 43100800 */  sra        $v0, $t0, 1
    /* 3DAD8 8004D2D8 23104300 */  subu       $v0, $v0, $v1
    /* 3DADC 8004D2DC 2190C200 */  addu       $s2, $a2, $v0
  .L8004D2E0:
    /* 3DAE0 8004D2E0 F402638E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3DAE4 8004D2E4 00000000 */  nop
    /* 3DAE8 8004D2E8 04006284 */  lh         $v0, 0x4($v1)
    /* 3DAEC 8004D2EC 00000000 */  nop
    /* 3DAF0 8004D2F0 20FF4228 */  slti       $v0, $v0, -0xE0
    /* 3DAF4 8004D2F4 0A004010 */  beqz       $v0, .L8004D320
    /* 3DAF8 8004D2F8 15000524 */   addiu     $a1, $zero, 0x15
    /* 3DAFC 8004D2FC 21202002 */  addu       $a0, $s1, $zero
    /* 3DB00 8004D300 8C6E010C */  jal        func_8005BA30
    /* 3DB04 8004D304 21300000 */   addu      $a2, $zero, $zero
    /* 3DB08 8004D308 0B000224 */  addiu      $v0, $zero, 0xB
    /* 3DB0C 8004D30C B00322A2 */  sb         $v0, 0x3B0($s1)
    /* 3DB10 8004D310 AE79000C */  jal        func_8001E6B8
    /* 3DB14 8004D314 04000424 */   addiu     $a0, $zero, 0x4
    /* 3DB18 8004D318 E7340108 */  j          .L8004D39C
    /* 3DB1C 8004D31C F6FF5024 */   addiu     $s0, $v0, -0xA
  .L8004D320:
    /* 3DB20 8004D320 21202002 */  addu       $a0, $s1, $zero
    /* 3DB24 8004D324 17000524 */  addiu      $a1, $zero, 0x17
    /* 3DB28 8004D328 A4036290 */  lbu        $v0, 0x3A4($v1)
    /* 3DB2C 8004D32C AA032392 */  lbu        $v1, 0x3AA($s1)
    /* 3DB30 8004D330 21300000 */  addu       $a2, $zero, $zero
    /* 3DB34 8004D334 23104300 */  subu       $v0, $v0, $v1
    /* 3DB38 8004D338 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3DB3C 8004D33C 8100422C */  sltiu      $v0, $v0, 0x81
    /* 3DB40 8004D340 8C6E010C */  jal        func_8005BA30
    /* 3DB44 8004D344 AC0322A2 */   sb        $v0, 0x3AC($s1)
    /* 3DB48 8004D348 02000424 */  addiu      $a0, $zero, 0x2
    /* 3DB4C 8004D34C 08000224 */  addiu      $v0, $zero, 0x8
    /* 3DB50 8004D350 AE79000C */  jal        func_8001E6B8
    /* 3DB54 8004D354 B00322A2 */   sb        $v0, 0x3B0($s1)
    /* 3DB58 8004D358 F402638E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3DB5C 8004D35C 16B2053C */  lui        $a1, (0xB21642C9 >> 16)
    /* 3DB60 8004D360 0C00648C */  lw         $a0, 0xC($v1)
    /* 3DB64 8004D364 C942A534 */  ori        $a1, $a1, (0xB21642C9 & 0xFFFF)
    /* 3DB68 8004D368 83200400 */  sra        $a0, $a0, 2
    /* 3DB6C 8004D36C 02008104 */  bgez       $a0, .L8004D378
    /* 3DB70 8004D370 00000000 */   nop
    /* 3DB74 8004D374 23200400 */  negu       $a0, $a0
  .L8004D378:
    /* 3DB78 8004D378 18008500 */  mult       $a0, $a1
    /* 3DB7C 8004D37C F8FF5024 */  addiu      $s0, $v0, -0x8
    /* 3DB80 8004D380 10400000 */  mfhi       $t0
    /* 3DB84 8004D384 21100401 */  addu       $v0, $t0, $a0
    /* 3DB88 8004D388 43120200 */  sra        $v0, $v0, 9
    /* 3DB8C 8004D38C C3270400 */  sra        $a0, $a0, 31
    /* 3DB90 8004D390 AE79000C */  jal        func_8001E6B8
    /* 3DB94 8004D394 23204400 */   subu      $a0, $v0, $a0
    /* 3DB98 8004D398 21904202 */  addu       $s2, $s2, $v0
  .L8004D39C:
    /* 3DB9C 8004D39C F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 3DBA0 8004D3A0 16B2033C */  lui        $v1, (0xB21642C9 >> 16)
    /* 3DBA4 8004D3A4 0C00448C */  lw         $a0, 0xC($v0)
    /* 3DBA8 8004D3A8 C9426334 */  ori        $v1, $v1, (0xB21642C9 & 0xFFFF)
    /* 3DBAC 8004D3AC 83200400 */  sra        $a0, $a0, 2
    /* 3DBB0 8004D3B0 02008104 */  bgez       $a0, .L8004D3BC
    /* 3DBB4 8004D3B4 00000000 */   nop
    /* 3DBB8 8004D3B8 23200400 */  negu       $a0, $a0
  .L8004D3BC:
    /* 3DBBC 8004D3BC 18008300 */  mult       $a0, $v1
    /* 3DBC0 8004D3C0 10400000 */  mfhi       $t0
    /* 3DBC4 8004D3C4 21100401 */  addu       $v0, $t0, $a0
    /* 3DBC8 8004D3C8 43120200 */  sra        $v0, $v0, 9
    /* 3DBCC 8004D3CC C3270400 */  sra        $a0, $a0, 31
    /* 3DBD0 8004D3D0 AE79000C */  jal        func_8001E6B8
    /* 3DBD4 8004D3D4 23204400 */   subu      $a0, $v0, $a0
    /* 3DBD8 8004D3D8 21202002 */  addu       $a0, $s1, $zero
    /* 3DBDC 8004D3DC FF008532 */  andi       $a1, $s4, 0xFF
    /* 3DBE0 8004D3E0 21304002 */  addu       $a2, $s2, $zero
    /* 3DBE4 8004D3E4 3C2C010C */  jal        func_8004B0F0
    /* 3DBE8 8004D3E8 21380202 */   addu      $a3, $s0, $v0
    /* 3DBEC 8004D3EC 21202002 */  addu       $a0, $s1, $zero
    /* 3DBF0 8004D3F0 8D038290 */  lbu        $v0, 0x38D($a0)
    /* 3DBF4 8004D3F4 06000524 */  addiu      $a1, $zero, 0x6
    /* 3DBF8 8004D3F8 A90262A2 */  sb         $v0, (0x1F8002A9 & 0xFFFF)($s3)
    /* 3DBFC 8004D3FC 02008394 */  lhu        $v1, 0x2($a0)
    /* 3DC00 8004D400 06008694 */  lhu        $a2, 0x6($a0)
    /* 3DC04 8004D404 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 3DC08 8004D408 B20382A0 */  sb         $v0, 0x3B2($a0)
    /* 3DC0C 8004D40C 04000224 */  addiu      $v0, $zero, 0x4
    /* 3DC10 8004D410 D00382A0 */  sb         $v0, 0x3D0($a0)
    /* 3DC14 8004D414 0E000224 */  addiu      $v0, $zero, 0xE
    /* 3DC18 8004D418 D10380A0 */  sb         $zero, 0x3D1($a0)
    /* 3DC1C 8004D41C B10380A0 */  sb         $zero, 0x3B1($a0)
    /* 3DC20 8004D420 960382A0 */  sb         $v0, 0x396($a0)
    /* 3DC24 8004D424 970380A0 */  sb         $zero, 0x397($a0)
    /* 3DC28 8004D428 A00380AC */  sw         $zero, 0x3A0($a0)
    /* 3DC2C 8004D42C C60383A4 */  sh         $v1, 0x3C6($a0)
    /* 3DC30 8004D430 4115010C */  jal        func_80045504
    /* 3DC34 8004D434 C80386A4 */   sh        $a2, 0x3C8($a0)
  .L8004D438:
    /* 3DC38 8004D438 01000224 */  addiu      $v0, $zero, 0x1
  .L8004D43C:
    /* 3DC3C 8004D43C 2800BF8F */  lw         $ra, 0x28($sp)
    /* 3DC40 8004D440 2400B58F */  lw         $s5, 0x24($sp)
    /* 3DC44 8004D444 2000B48F */  lw         $s4, 0x20($sp)
    /* 3DC48 8004D448 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3DC4C 8004D44C 1800B28F */  lw         $s2, 0x18($sp)
    /* 3DC50 8004D450 1400B18F */  lw         $s1, 0x14($sp)
    /* 3DC54 8004D454 1000B08F */  lw         $s0, 0x10($sp)
    /* 3DC58 8004D458 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 3DC5C 8004D45C 0800E003 */  jr         $ra
    /* 3DC60 8004D460 00000000 */   nop
endlabel func_8004C39C
