nonmatching func_800BB4B8, 0x310

glabel func_800BB4B8
    /* ABCB8 800BB4B8 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* ABCBC 800BB4BC 21388000 */  addu       $a3, $a0, $zero
    /* ABCC0 800BB4C0 00140700 */  sll        $v0, $a3, 16
    /* ABCC4 800BB4C4 1180033C */  lui        $v1, %hi(D_8010C2A8)
    /* ABCC8 800BB4C8 A8C26324 */  addiu      $v1, $v1, %lo(D_8010C2A8)
    /* ABCCC 800BB4CC 83130200 */  sra        $v0, $v0, 14
    /* ABCD0 800BB4D0 2400B3AF */  sw         $s3, 0x24($sp)
    /* ABCD4 800BB4D4 21984300 */  addu       $s3, $v0, $v1
    /* ABCD8 800BB4D8 001C0500 */  sll        $v1, $a1, 16
    /* ABCDC 800BB4DC 031C0300 */  sra        $v1, $v1, 16
    /* ABCE0 800BB4E0 40100300 */  sll        $v0, $v1, 1
    /* ABCE4 800BB4E4 21104300 */  addu       $v0, $v0, $v1
    /* ABCE8 800BB4E8 80100200 */  sll        $v0, $v0, 2
    /* ABCEC 800BB4EC 23104300 */  subu       $v0, $v0, $v1
    /* ABCF0 800BB4F0 2000B2AF */  sw         $s2, 0x20($sp)
    /* ABCF4 800BB4F4 00910200 */  sll        $s2, $v0, 4
    /* ABCF8 800BB4F8 3000BFAF */  sw         $ra, 0x30($sp)
    /* ABCFC 800BB4FC 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* ABD00 800BB500 2800B4AF */  sw         $s4, 0x28($sp)
    /* ABD04 800BB504 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* ABD08 800BB508 1800B0AF */  sw         $s0, 0x18($sp)
    /* ABD0C 800BB50C 0000638E */  lw         $v1, 0x0($s3)
    /* ABD10 800BB510 21A8E000 */  addu       $s5, $a3, $zero
    /* ABD14 800BB514 21807200 */  addu       $s0, $v1, $s2
    /* ABD18 800BB518 A000028E */  lw         $v0, 0xA0($s0)
    /* ABD1C 800BB51C 21A0A000 */  addu       $s4, $a1, $zero
    /* ABD20 800BB520 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* ABD24 800BB524 04004104 */  bgez       $v0, .L800BB538
    /* ABD28 800BB528 A00002AE */   sw        $v0, 0xA0($s0)
    /* ABD2C 800BB52C 0000628E */  lw         $v0, 0x0($s3)
    /* ABD30 800BB530 DEED0208 */  j          .L800BB778
    /* ABD34 800BB534 21104202 */   addu      $v0, $s2, $v0
  .L800BB538:
    /* ABD38 800BB538 4C000686 */  lh         $a2, 0x4C($s0)
    /* ABD3C 800BB53C 4C000396 */  lhu        $v1, 0x4C($s0)
    /* ABD40 800BB540 2800C018 */  blez       $a2, .L800BB5E4
    /* ABD44 800BB544 00000000 */   nop
    /* ABD48 800BB548 1A004600 */  div        $zero, $v0, $a2
    /* ABD4C 800BB54C 0200C014 */  bnez       $a2, .L800BB558
    /* ABD50 800BB550 00000000 */   nop
    /* ABD54 800BB554 0D000700 */  break      7
  .L800BB558:
    /* ABD58 800BB558 FFFF0124 */  addiu      $at, $zero, -0x1
    /* ABD5C 800BB55C 0400C114 */  bne        $a2, $at, .L800BB570
    /* ABD60 800BB560 0080013C */   lui       $at, (0x80000000 >> 16)
    /* ABD64 800BB564 02004114 */  bne        $v0, $at, .L800BB570
    /* ABD68 800BB568 00000000 */   nop
    /* ABD6C 800BB56C 0D000600 */  break      6
  .L800BB570:
    /* ABD70 800BB570 10100000 */  mfhi       $v0
    /* ABD74 800BB574 85004014 */  bnez       $v0, .L800BB78C
    /* ABD78 800BB578 00221400 */   sll       $a0, $s4, 8
    /* ABD7C 800BB57C 4A000296 */  lhu        $v0, 0x4A($s0)
    /* ABD80 800BB580 00000000 */  nop
    /* ABD84 800BB584 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* ABD88 800BB588 4A0002A6 */  sh         $v0, 0x4A($s0)
    /* ABD8C 800BB58C 00140200 */  sll        $v0, $v0, 16
    /* ABD90 800BB590 55004004 */  bltz       $v0, .L800BB6E8
    /* ABD94 800BB594 00120500 */   sll       $v0, $a1, 8
    /* ABD98 800BB598 2510E200 */  or         $v0, $a3, $v0
    /* ABD9C 800BB59C 00140200 */  sll        $v0, $v0, 16
    /* ABDA0 800BB5A0 038C0200 */  sra        $s1, $v0, 16
    /* ABDA4 800BB5A4 21202002 */  addu       $a0, $s1, $zero
    /* ABDA8 800BB5A8 1000A527 */  addiu      $a1, $sp, 0x10
    /* ABDAC 800BB5AC 0F02030C */  jal        func_800C083C
    /* ABDB0 800BB5B0 1200A627 */   addiu     $a2, $sp, 0x12
    /* ABDB4 800BB5B4 1000A297 */  lhu        $v0, 0x10($sp)
    /* ABDB8 800BB5B8 4A000386 */  lh         $v1, 0x4A($s0)
    /* ABDBC 800BB5BC 01004524 */  addiu      $a1, $v0, 0x1
    /* ABDC0 800BB5C0 21104300 */  addu       $v0, $v0, $v1
    /* ABDC4 800BB5C4 2A104500 */  slt        $v0, $v0, $a1
    /* ABDC8 800BB5C8 56004014 */  bnez       $v0, .L800BB724
    /* ABDCC 800BB5CC 21202002 */   addu      $a0, $s1, $zero
    /* ABDD0 800BB5D0 FFFFA530 */  andi       $a1, $a1, 0xFFFF
    /* ABDD4 800BB5D4 1200A697 */  lhu        $a2, 0x12($sp)
    /* ABDD8 800BB5D8 01000724 */  addiu      $a3, $zero, 0x1
    /* ABDDC 800BB5DC B6ED0208 */  j          .L800BB6D8
    /* ABDE0 800BB5E0 0100C624 */   addiu     $a2, $a2, 0x1
  .L800BB5E4:
    /* ABDE4 800BB5E4 6900C104 */  bgez       $a2, .L800BB78C
    /* ABDE8 800BB5E8 00221400 */   sll       $a0, $s4, 8
    /* ABDEC 800BB5EC 4A000296 */  lhu        $v0, 0x4A($s0)
    /* ABDF0 800BB5F0 00000000 */  nop
    /* ABDF4 800BB5F4 21104300 */  addu       $v0, $v0, $v1
    /* ABDF8 800BB5F8 4A0002A6 */  sh         $v0, 0x4A($s0)
    /* ABDFC 800BB5FC 00140200 */  sll        $v0, $v0, 16
    /* ABE00 800BB600 39004004 */  bltz       $v0, .L800BB6E8
    /* ABE04 800BB604 00120500 */   sll       $v0, $a1, 8
    /* ABE08 800BB608 2510E200 */  or         $v0, $a3, $v0
    /* ABE0C 800BB60C 00140200 */  sll        $v0, $v0, 16
    /* ABE10 800BB610 038C0200 */  sra        $s1, $v0, 16
    /* ABE14 800BB614 21202002 */  addu       $a0, $s1, $zero
    /* ABE18 800BB618 1000A527 */  addiu      $a1, $sp, 0x10
    /* ABE1C 800BB61C 0F02030C */  jal        func_800C083C
    /* ABE20 800BB620 1200A627 */   addiu     $a2, $sp, 0x12
    /* ABE24 800BB624 1000A297 */  lhu        $v0, 0x10($sp)
    /* ABE28 800BB628 4C000386 */  lh         $v1, 0x4C($s0)
    /* ABE2C 800BB62C 00000000 */  nop
    /* ABE30 800BB630 23104300 */  subu       $v0, $v0, $v1
    /* ABE34 800BB634 7F004228 */  slti       $v0, $v0, 0x7F
    /* ABE38 800BB638 12004014 */  bnez       $v0, .L800BB684
    /* ABE3C 800BB63C 00000000 */   nop
    /* ABE40 800BB640 1200A297 */  lhu        $v0, 0x12($sp)
    /* ABE44 800BB644 00000000 */  nop
    /* ABE48 800BB648 23104300 */  subu       $v0, $v0, $v1
    /* ABE4C 800BB64C 7F004228 */  slti       $v0, $v0, 0x7F
    /* ABE50 800BB650 0C004014 */  bnez       $v0, .L800BB684
    /* ABE54 800BB654 21202002 */   addu      $a0, $s1, $zero
    /* ABE58 800BB658 7F000524 */  addiu      $a1, $zero, 0x7F
    /* ABE5C 800BB65C 7F000624 */  addiu      $a2, $zero, 0x7F
    /* ABE60 800BB660 AE00030C */  jal        func_800C02B8
    /* ABE64 800BB664 01000724 */   addiu     $a3, $zero, 0x1
    /* ABE68 800BB668 0000628E */  lw         $v0, 0x0($s3)
    /* ABE6C 800BB66C 00000000 */  nop
    /* ABE70 800BB670 21104202 */  addu       $v0, $s2, $v0
    /* ABE74 800BB674 9800438C */  lw         $v1, 0x98($v0)
    /* ABE78 800BB678 EFFF0424 */  addiu      $a0, $zero, -0x11
    /* ABE7C 800BB67C 24186400 */  and        $v1, $v1, $a0
    /* ABE80 800BB680 980043AC */  sw         $v1, 0x98($v0)
  .L800BB684:
    /* ABE84 800BB684 9C00038E */  lw         $v1, 0x9C($s0)
    /* ABE88 800BB688 A000048E */  lw         $a0, 0xA0($s0)
    /* ABE8C 800BB68C 4C000286 */  lh         $v0, 0x4C($s0)
    /* ABE90 800BB690 23186400 */  subu       $v1, $v1, $a0
    /* ABE94 800BB694 23100200 */  negu       $v0, $v0
    /* ABE98 800BB698 18006200 */  mult       $v1, $v0
    /* ABE9C 800BB69C 48000286 */  lh         $v0, 0x48($s0)
    /* ABEA0 800BB6A0 4C000396 */  lhu        $v1, 0x4C($s0)
    /* ABEA4 800BB6A4 12400000 */  mflo       $t0
    /* ABEA8 800BB6A8 2A100201 */  slt        $v0, $t0, $v0
    /* ABEAC 800BB6AC 1D004010 */  beqz       $v0, .L800BB724
    /* ABEB0 800BB6B0 00221400 */   sll       $a0, $s4, 8
    /* ABEB4 800BB6B4 2520A402 */  or         $a0, $s5, $a0
    /* ABEB8 800BB6B8 00240400 */  sll        $a0, $a0, 16
    /* ABEBC 800BB6BC 03240400 */  sra        $a0, $a0, 16
    /* ABEC0 800BB6C0 01000724 */  addiu      $a3, $zero, 0x1
    /* ABEC4 800BB6C4 1000A597 */  lhu        $a1, 0x10($sp)
    /* ABEC8 800BB6C8 1200A697 */  lhu        $a2, 0x12($sp)
    /* ABECC 800BB6CC 2328A300 */  subu       $a1, $a1, $v1
    /* ABED0 800BB6D0 FFFFA530 */  andi       $a1, $a1, 0xFFFF
    /* ABED4 800BB6D4 2330C300 */  subu       $a2, $a2, $v1
  .L800BB6D8:
    /* ABED8 800BB6D8 AE00030C */  jal        func_800C02B8
    /* ABEDC 800BB6DC FFFFC630 */   andi      $a2, $a2, 0xFFFF
    /* ABEE0 800BB6E0 C9ED0208 */  j          .L800BB724
    /* ABEE4 800BB6E4 00000000 */   nop
  .L800BB6E8:
    /* ABEE8 800BB6E8 00220500 */  sll        $a0, $a1, 8
    /* ABEEC 800BB6EC 2520E400 */  or         $a0, $a3, $a0
    /* ABEF0 800BB6F0 00240400 */  sll        $a0, $a0, 16
    /* ABEF4 800BB6F4 03240400 */  sra        $a0, $a0, 16
    /* ABEF8 800BB6F8 7F000524 */  addiu      $a1, $zero, 0x7F
    /* ABEFC 800BB6FC 7F000624 */  addiu      $a2, $zero, 0x7F
    /* ABF00 800BB700 AE00030C */  jal        func_800C02B8
    /* ABF04 800BB704 01000724 */   addiu     $a3, $zero, 0x1
    /* ABF08 800BB708 0000638E */  lw         $v1, 0x0($s3)
    /* ABF0C 800BB70C 00000000 */  nop
    /* ABF10 800BB710 21184302 */  addu       $v1, $s2, $v1
    /* ABF14 800BB714 9800628C */  lw         $v0, 0x98($v1)
    /* ABF18 800BB718 EFFF0424 */  addiu      $a0, $zero, -0x11
    /* ABF1C 800BB71C 24104400 */  and        $v0, $v0, $a0
    /* ABF20 800BB720 980062AC */  sw         $v0, 0x98($v1)
  .L800BB724:
    /* ABF24 800BB724 A000028E */  lw         $v0, 0xA0($s0)
    /* ABF28 800BB728 00000000 */  nop
    /* ABF2C 800BB72C 06004010 */  beqz       $v0, .L800BB748
    /* ABF30 800BB730 00241500 */   sll       $a0, $s5, 16
    /* ABF34 800BB734 4A000286 */  lh         $v0, 0x4A($s0)
    /* ABF38 800BB738 00000000 */  nop
    /* ABF3C 800BB73C 1300401C */  bgtz       $v0, .L800BB78C
    /* ABF40 800BB740 00221400 */   sll       $a0, $s4, 8
    /* ABF44 800BB744 00241500 */  sll        $a0, $s5, 16
  .L800BB748:
    /* ABF48 800BB748 83230400 */  sra        $a0, $a0, 14
    /* ABF4C 800BB74C 001C1400 */  sll        $v1, $s4, 16
    /* ABF50 800BB750 031C0300 */  sra        $v1, $v1, 16
    /* ABF54 800BB754 40100300 */  sll        $v0, $v1, 1
    /* ABF58 800BB758 21104300 */  addu       $v0, $v0, $v1
    /* ABF5C 800BB75C 80100200 */  sll        $v0, $v0, 2
    /* ABF60 800BB760 23104300 */  subu       $v0, $v0, $v1
    /* ABF64 800BB764 1180033C */  lui        $v1, %hi(D_8010C2A8)
    /* ABF68 800BB768 21186400 */  addu       $v1, $v1, $a0
    /* ABF6C 800BB76C A8C2638C */  lw         $v1, %lo(D_8010C2A8)($v1)
    /* ABF70 800BB770 00110200 */  sll        $v0, $v0, 4
    /* ABF74 800BB774 21104300 */  addu       $v0, $v0, $v1
  .L800BB778:
    /* ABF78 800BB778 9800438C */  lw         $v1, 0x98($v0)
    /* ABF7C 800BB77C EFFF0424 */  addiu      $a0, $zero, -0x11
    /* ABF80 800BB780 24186400 */  and        $v1, $v1, $a0
    /* ABF84 800BB784 980043AC */  sw         $v1, 0x98($v0)
    /* ABF88 800BB788 00221400 */  sll        $a0, $s4, 8
  .L800BB78C:
    /* ABF8C 800BB78C 2520A402 */  or         $a0, $s5, $a0
    /* ABF90 800BB790 00240400 */  sll        $a0, $a0, 16
    /* ABF94 800BB794 03240400 */  sra        $a0, $a0, 16
    /* ABF98 800BB798 5C000526 */  addiu      $a1, $s0, 0x5C
    /* ABF9C 800BB79C 0F02030C */  jal        func_800C083C
    /* ABFA0 800BB7A0 5E000626 */   addiu     $a2, $s0, 0x5E
    /* ABFA4 800BB7A4 3000BF8F */  lw         $ra, 0x30($sp)
    /* ABFA8 800BB7A8 2C00B58F */  lw         $s5, 0x2C($sp)
    /* ABFAC 800BB7AC 2800B48F */  lw         $s4, 0x28($sp)
    /* ABFB0 800BB7B0 2400B38F */  lw         $s3, 0x24($sp)
    /* ABFB4 800BB7B4 2000B28F */  lw         $s2, 0x20($sp)
    /* ABFB8 800BB7B8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* ABFBC 800BB7BC 1800B08F */  lw         $s0, 0x18($sp)
    /* ABFC0 800BB7C0 0800E003 */  jr         $ra
    /* ABFC4 800BB7C4 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_800BB4B8
