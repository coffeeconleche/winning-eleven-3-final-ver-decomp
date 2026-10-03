nonmatching func_8007CC00, 0x2DC

glabel func_8007CC00
    /* 6D400 8007CC00 801F033C */  lui        $v1, (0x1F8002AD >> 16)
    /* 6D404 8007CC04 AD026390 */  lbu        $v1, (0x1F8002AD & 0xFFFF)($v1)
    /* 6D408 8007CC08 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 6D40C 8007CC0C ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 6D410 8007CC10 19006200 */  multu      $v1, $v0
    /* 6D414 8007CC14 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 6D418 8007CC18 2400B3AF */  sw         $s3, 0x24($sp)
    /* 6D41C 8007CC1C 1080133C */  lui        $s3, %hi(D_800FF748)
    /* 6D420 8007CC20 48F77326 */  addiu      $s3, $s3, %lo(D_800FF748)
    /* 6D424 8007CC24 2000B2AF */  sw         $s2, 0x20($sp)
    /* 6D428 8007CC28 801F123C */  lui        $s2, (0x1F800000 >> 16)
    /* 6D42C 8007CC2C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 6D430 8007CC30 2800BFAF */  sw         $ra, 0x28($sp)
    /* 6D434 8007CC34 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 6D438 8007CC38 10400000 */  mfhi       $t0
    /* 6D43C 8007CC3C 02210800 */  srl        $a0, $t0, 4
    /* 6D440 8007CC40 40100400 */  sll        $v0, $a0, 1
    /* 6D444 8007CC44 21104400 */  addu       $v0, $v0, $a0
    /* 6D448 8007CC48 C0100200 */  sll        $v0, $v0, 3
    /* 6D44C 8007CC4C 23186200 */  subu       $v1, $v1, $v0
    /* 6D450 8007CC50 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6D454 8007CC54 40110300 */  sll        $v0, $v1, 5
    /* 6D458 8007CC58 23104300 */  subu       $v0, $v0, $v1
    /* 6D45C 8007CC5C 80100200 */  sll        $v0, $v0, 2
    /* 6D460 8007CC60 21104300 */  addu       $v0, $v0, $v1
    /* 6D464 8007CC64 C0100200 */  sll        $v0, $v0, 3
    /* 6D468 8007CC68 1080033C */  lui        $v1, %hi(D_801054B6)
    /* 6D46C 8007CC6C B6546390 */  lbu        $v1, %lo(D_801054B6)($v1)
    /* 6D470 8007CC70 21885300 */  addu       $s1, $v0, $s3
    /* 6D474 8007CC74 0500622C */  sltiu      $v0, $v1, 0x5
    /* 6D478 8007CC78 90004010 */  beqz       $v0, .L8007CEBC
    /* 6D47C 8007CC7C D8597026 */   addiu     $s0, $s3, 0x59D8
    /* 6D480 8007CC80 80100300 */  sll        $v0, $v1, 2
    /* 6D484 8007CC84 0180013C */  lui        $at, %hi(jtbl_80013158)
    /* 6D488 8007CC88 21082200 */  addu       $at, $at, $v0
    /* 6D48C 8007CC8C 5831228C */  lw         $v0, %lo(jtbl_80013158)($at)
    /* 6D490 8007CC90 00000000 */  nop
    /* 6D494 8007CC94 08004000 */  jr         $v0
    /* 6D498 8007CC98 00000000 */   nop
  jlabel .L8007CC9C
    /* 6D49C 8007CC9C 21200000 */  addu       $a0, $zero, $zero
    /* 6D4A0 8007CCA0 E8010524 */  addiu      $a1, $zero, 0x1E8
    /* 6D4A4 8007CCA4 01000624 */  addiu      $a2, $zero, 0x1
    /* 6D4A8 8007CCA8 96030292 */  lbu        $v0, 0x396($s0)
    /* 6D4AC 8007CCAC E9010724 */  addiu      $a3, $zero, 0x1E9
    /* 6D4B0 8007CCB0 B00300A2 */  sb         $zero, 0x3B0($s0)
    /* 6D4B4 8007CCB4 B10300A2 */  sb         $zero, 0x3B1($s0)
    /* 6D4B8 8007CCB8 01004224 */  addiu      $v0, $v0, 0x1
    /* 6D4BC 8007CCBC 2C40010C */  jal        func_800500B0
    /* 6D4C0 8007CCC0 960302A2 */   sb        $v0, 0x396($s0)
    /* 6D4C4 8007CCC4 AFF30108 */  j          .L8007CEBC
    /* 6D4C8 8007CCC8 00000000 */   nop
  jlabel .L8007CCCC
    /* 6D4CC 8007CCCC B0030292 */  lbu        $v0, 0x3B0($s0)
    /* 6D4D0 8007CCD0 00000000 */  nop
    /* 6D4D4 8007CCD4 01004224 */  addiu      $v0, $v0, 0x1
    /* 6D4D8 8007CCD8 B00302A2 */  sb         $v0, 0x3B0($s0)
    /* 6D4DC 8007CCDC FF004230 */  andi       $v0, $v0, 0xFF
    /* 6D4E0 8007CCE0 1500422C */  sltiu      $v0, $v0, 0x15
    /* 6D4E4 8007CCE4 71004010 */  beqz       $v0, .L8007CEAC
    /* 6D4E8 8007CCE8 00000000 */   nop
    /* 6D4EC 8007CCEC AFF30108 */  j          .L8007CEBC
    /* 6D4F0 8007CCF0 00000000 */   nop
  jlabel .L8007CCF4
    /* 6D4F4 8007CCF4 476F010C */  jal        func_8005BD1C
    /* 6D4F8 8007CCF8 21200002 */   addu      $a0, $s0, $zero
    /* 6D4FC 8007CCFC 90030292 */  lbu        $v0, 0x390($s0)
    /* 6D500 8007CD00 00000000 */  nop
    /* 6D504 8007CD04 1700422C */  sltiu      $v0, $v0, 0x17
    /* 6D508 8007CD08 03004014 */  bnez       $v0, .L8007CD18
    /* 6D50C 8007CD0C 28000224 */   addiu     $v0, $zero, 0x28
    /* 6D510 8007CD10 47F30108 */  j          .L8007CD1C
    /* 6D514 8007CD14 940242A6 */   sh        $v0, 0x294($s2)
  .L8007CD18:
    /* 6D518 8007CD18 940240A6 */  sh         $zero, 0x294($s2)
  .L8007CD1C:
    /* 6D51C 8007CD1C 90030392 */  lbu        $v1, 0x390($s0)
    /* 6D520 8007CD20 17000224 */  addiu      $v0, $zero, 0x17
    /* 6D524 8007CD24 13006214 */  bne        $v1, $v0, .L8007CD74
    /* 6D528 8007CD28 22000224 */   addiu     $v0, $zero, 0x22
    /* 6D52C 8007CD2C AF024292 */  lbu        $v0, 0x2AF($s2)
    /* 6D530 8007CD30 02000324 */  addiu      $v1, $zero, 0x2
    /* 6D534 8007CD34 FF004230 */  andi       $v0, $v0, 0xFF
    /* 6D538 8007CD38 06004314 */  bne        $v0, $v1, .L8007CD54
    /* 6D53C 8007CD3C 02000424 */   addiu     $a0, $zero, 0x2
    /* 6D540 8007CD40 B1030292 */  lbu        $v0, 0x3B1($s0)
    /* 6D544 8007CD44 00000000 */  nop
    /* 6D548 8007CD48 03004014 */  bnez       $v0, .L8007CD58
    /* 6D54C 8007CD4C E8010524 */   addiu     $a1, $zero, 0x1E8
    /* 6D550 8007CD50 01000424 */  addiu      $a0, $zero, 0x1
  .L8007CD54:
    /* 6D554 8007CD54 E8010524 */  addiu      $a1, $zero, 0x1E8
  .L8007CD58:
    /* 6D558 8007CD58 01000624 */  addiu      $a2, $zero, 0x1
    /* 6D55C 8007CD5C 2C40010C */  jal        func_800500B0
    /* 6D560 8007CD60 E9010724 */   addiu     $a3, $zero, 0x1E9
    /* 6D564 8007CD64 4DB9020C */  jal        func_800AE534
    /* 6D568 8007CD68 21200000 */   addu      $a0, $zero, $zero
    /* 6D56C 8007CD6C 90030392 */  lbu        $v1, 0x390($s0)
    /* 6D570 8007CD70 22000224 */  addiu      $v0, $zero, 0x22
  .L8007CD74:
    /* 6D574 8007CD74 51006214 */  bne        $v1, $v0, .L8007CEBC
    /* 6D578 8007CD78 00000000 */   nop
    /* 6D57C 8007CD7C B1030292 */  lbu        $v0, 0x3B1($s0)
    /* 6D580 8007CD80 00000000 */  nop
    /* 6D584 8007CD84 10004014 */  bnez       $v0, .L8007CDC8
    /* 6D588 8007CD88 1D010224 */   addiu     $v0, $zero, 0x11D
    /* 6D58C 8007CD8C 98032392 */  lbu        $v1, 0x398($s1)
    /* 6D590 8007CD90 92032492 */  lbu        $a0, 0x392($s1)
    /* 6D594 8007CD94 40100300 */  sll        $v0, $v1, 1
    /* 6D598 8007CD98 21104300 */  addu       $v0, $v0, $v1
    /* 6D59C 8007CD9C 80100200 */  sll        $v0, $v0, 2
    /* 6D5A0 8007CDA0 23104300 */  subu       $v0, $v0, $v1
    /* 6D5A4 8007CDA4 40100200 */  sll        $v0, $v0, 1
    /* 6D5A8 8007CDA8 21105300 */  addu       $v0, $v0, $s3
    /* 6D5AC 8007CDAC A5880334 */  ori        $v1, $zero, 0x88A5
    /* 6D5B0 8007CDB0 21104300 */  addu       $v0, $v0, $v1
    /* 6D5B4 8007CDB4 21104400 */  addu       $v0, $v0, $a0
    /* 6D5B8 8007CDB8 00004390 */  lbu        $v1, 0x0($v0)
    /* 6D5BC 8007CDBC 02000224 */  addiu      $v0, $zero, 0x2
    /* 6D5C0 8007CDC0 04006210 */  beq        $v1, $v0, .L8007CDD4
    /* 6D5C4 8007CDC4 1D010224 */   addiu     $v0, $zero, 0x11D
  .L8007CDC8:
    /* 6D5C8 8007CDC8 940242A6 */  sh         $v0, 0x294($s2)
    /* 6D5CC 8007CDCC AEF30108 */  j          .L8007CEB8
    /* 6D5D0 8007CDD0 FF000224 */   addiu     $v0, $zero, 0xFF
  .L8007CDD4:
    /* 6D5D4 8007CDD4 96030292 */  lbu        $v0, 0x396($s0)
    /* 6D5D8 8007CDD8 ACF30108 */  j          .L8007CEB0
    /* 6D5DC 8007CDDC B00300A2 */   sb        $zero, 0x3B0($s0)
  jlabel .L8007CDE0
    /* 6D5E0 8007CDE0 B0030292 */  lbu        $v0, 0x3B0($s0)
    /* 6D5E4 8007CDE4 00000000 */  nop
    /* 6D5E8 8007CDE8 01004224 */  addiu      $v0, $v0, 0x1
    /* 6D5EC 8007CDEC B00302A2 */  sb         $v0, 0x3B0($s0)
    /* 6D5F0 8007CDF0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 6D5F4 8007CDF4 2900422C */  sltiu      $v0, $v0, 0x29
    /* 6D5F8 8007CDF8 2C004010 */  beqz       $v0, .L8007CEAC
    /* 6D5FC 8007CDFC 00000000 */   nop
    /* 6D600 8007CE00 AFF30108 */  j          .L8007CEBC
    /* 6D604 8007CE04 00000000 */   nop
  jlabel .L8007CE08
    /* 6D608 8007CE08 21200002 */  addu       $a0, $s0, $zero
    /* 6D60C 8007CE0C 90030692 */  lbu        $a2, 0x390($s0)
    /* 6D610 8007CE10 8E030592 */  lbu        $a1, 0x38E($s0)
    /* 6D614 8007CE14 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 6D618 8007CE18 8C6E010C */  jal        func_8005BA30
    /* 6D61C 8007CE1C FF00C630 */   andi      $a2, $a2, 0xFF
    /* 6D620 8007CE20 90030392 */  lbu        $v1, 0x390($s0)
    /* 6D624 8007CE24 17000224 */  addiu      $v0, $zero, 0x17
    /* 6D628 8007CE28 08006214 */  bne        $v1, $v0, .L8007CE4C
    /* 6D62C 8007CE2C 0E000224 */   addiu     $v0, $zero, 0xE
    /* 6D630 8007CE30 21200000 */  addu       $a0, $zero, $zero
    /* 6D634 8007CE34 E8010524 */  addiu      $a1, $zero, 0x1E8
    /* 6D638 8007CE38 01000624 */  addiu      $a2, $zero, 0x1
    /* 6D63C 8007CE3C 2C40010C */  jal        func_800500B0
    /* 6D640 8007CE40 E9010724 */   addiu     $a3, $zero, 0x1E9
    /* 6D644 8007CE44 90030392 */  lbu        $v1, 0x390($s0)
    /* 6D648 8007CE48 0E000224 */  addiu      $v0, $zero, 0xE
  .L8007CE4C:
    /* 6D64C 8007CE4C 1B006214 */  bne        $v1, $v0, .L8007CEBC
    /* 6D650 8007CE50 00000000 */   nop
    /* 6D654 8007CE54 B1030592 */  lbu        $a1, 0x3B1($s0)
    /* 6D658 8007CE58 00000000 */  nop
    /* 6D65C 8007CE5C 1300A014 */  bnez       $a1, .L8007CEAC
    /* 6D660 8007CE60 00000000 */   nop
    /* 6D664 8007CE64 98032392 */  lbu        $v1, 0x398($s1)
    /* 6D668 8007CE68 92032492 */  lbu        $a0, 0x392($s1)
    /* 6D66C 8007CE6C 40100300 */  sll        $v0, $v1, 1
    /* 6D670 8007CE70 21104300 */  addu       $v0, $v0, $v1
    /* 6D674 8007CE74 80100200 */  sll        $v0, $v0, 2
    /* 6D678 8007CE78 23104300 */  subu       $v0, $v0, $v1
    /* 6D67C 8007CE7C 40100200 */  sll        $v0, $v0, 1
    /* 6D680 8007CE80 21105300 */  addu       $v0, $v0, $s3
    /* 6D684 8007CE84 A5880334 */  ori        $v1, $zero, 0x88A5
    /* 6D688 8007CE88 21104300 */  addu       $v0, $v0, $v1
    /* 6D68C 8007CE8C 21104400 */  addu       $v0, $v0, $a0
    /* 6D690 8007CE90 00004390 */  lbu        $v1, 0x0($v0)
    /* 6D694 8007CE94 02000224 */  addiu      $v0, $zero, 0x2
    /* 6D698 8007CE98 04006214 */  bne        $v1, $v0, .L8007CEAC
    /* 6D69C 8007CE9C 0100A224 */   addiu     $v0, $a1, 0x1
    /* 6D6A0 8007CEA0 B10302A2 */  sb         $v0, 0x3B1($s0)
    /* 6D6A4 8007CEA4 AEF30108 */  j          .L8007CEB8
    /* 6D6A8 8007CEA8 02000224 */   addiu     $v0, $zero, 0x2
  .L8007CEAC:
    /* 6D6AC 8007CEAC 96030292 */  lbu        $v0, 0x396($s0)
  .L8007CEB0:
    /* 6D6B0 8007CEB0 00000000 */  nop
    /* 6D6B4 8007CEB4 01004224 */  addiu      $v0, $v0, 0x1
  .L8007CEB8:
    /* 6D6B8 8007CEB8 960302A2 */  sb         $v0, 0x396($s0)
  .L8007CEBC:
    /* 6D6BC 8007CEBC 2800BF8F */  lw         $ra, 0x28($sp)
    /* 6D6C0 8007CEC0 2400B38F */  lw         $s3, 0x24($sp)
    /* 6D6C4 8007CEC4 2000B28F */  lw         $s2, 0x20($sp)
    /* 6D6C8 8007CEC8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 6D6CC 8007CECC 1800B08F */  lw         $s0, 0x18($sp)
    /* 6D6D0 8007CED0 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 6D6D4 8007CED4 0800E003 */  jr         $ra
    /* 6D6D8 8007CED8 00000000 */   nop
endlabel func_8007CC00
