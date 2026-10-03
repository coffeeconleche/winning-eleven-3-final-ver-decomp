nonmatching func_800AACB4, 0x388

glabel func_800AACB4
    /* 9B4B4 800AACB4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9B4B8 800AACB8 FF008230 */  andi       $v0, $a0, 0xFF
    /* 9B4BC 800AACBC FFFF0334 */  ori        $v1, $zero, 0xFFFF
    /* 9B4C0 800AACC0 21104300 */  addu       $v0, $v0, $v1
    /* 9B4C4 800AACC4 380182A7 */  sh         $v0, %gp_rel(D_800E6BC4)($gp)
    /* 9B4C8 800AACC8 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 9B4CC 800AACCC 21104300 */  addu       $v0, $v0, $v1
    /* 9B4D0 800AACD0 FF008430 */  andi       $a0, $a0, 0xFF
    /* 9B4D4 800AACD4 80200400 */  sll        $a0, $a0, 2
    /* 9B4D8 800AACD8 FF00A530 */  andi       $a1, $a1, 0xFF
    /* 9B4DC 800AACDC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9B4E0 800AACE0 0D80013C */  lui        $at, %hi(D_800CE1B4)
    /* 9B4E4 800AACE4 B4E12124 */  addiu      $at, $at, %lo(D_800CE1B4)
    /* 9B4E8 800AACE8 21082400 */  addu       $at, $at, $a0
    /* 9B4EC 800AACEC 00002794 */  lhu        $a3, 0x0($at)
    /* 9B4F0 800AACF0 80280500 */  sll        $a1, $a1, 2
    /* 9B4F4 800AACF4 3A0182A7 */  sh         $v0, %gp_rel(D_800E6BC6)($gp)
    /* 9B4F8 800AACF8 0D80013C */  lui        $at, %hi(D_800CE1B4 + 0x2)
    /* 9B4FC 800AACFC B6E12124 */  addiu      $at, $at, %lo(D_800CE1B4 + 0x2)
    /* 9B500 800AAD00 21082400 */  addu       $at, $at, $a0
    /* 9B504 800AAD04 00002284 */  lh         $v0, 0x0($at)
    /* 9B508 800AAD08 0D80013C */  lui        $at, %hi(D_800CE1B4 + 0x2)
    /* 9B50C 800AAD0C B6E12124 */  addiu      $at, $at, %lo(D_800CE1B4 + 0x2)
    /* 9B510 800AAD10 21082500 */  addu       $at, $at, $a1
    /* 9B514 800AAD14 00002384 */  lh         $v1, 0x0($at)
    /* 9B518 800AAD18 0D80013C */  lui        $at, %hi(D_800CE1B4)
    /* 9B51C 800AAD1C B4E12124 */  addiu      $at, $at, %lo(D_800CE1B4)
    /* 9B520 800AAD20 21082500 */  addu       $at, $at, $a1
    /* 9B524 800AAD24 00002894 */  lhu        $t0, 0x0($at)
    /* 9B528 800AAD28 3A004314 */  bne        $v0, $v1, .L800AAE14
    /* 9B52C 800AAD2C 2A104300 */   slt       $v0, $v0, $v1
    /* 9B530 800AAD30 21300000 */  addu       $a2, $zero, $zero
    /* 9B534 800AAD34 00140700 */  sll        $v0, $a3, 16
    /* 9B538 800AAD38 034C0200 */  sra        $t1, $v0, 16
    /* 9B53C 800AAD3C 00140800 */  sll        $v0, $t0, 16
    /* 9B540 800AAD40 033C0200 */  sra        $a3, $v0, 16
    /* 9B544 800AAD44 001C0600 */  sll        $v1, $a2, 16
  .L800AAD48:
    /* 9B548 800AAD48 031C0300 */  sra        $v1, $v1, 16
    /* 9B54C 800AAD4C 02006424 */  addiu      $a0, $v1, 0x2
    /* 9B550 800AAD50 21102301 */  addu       $v0, $t1, $v1
    /* 9B554 800AAD54 80100200 */  sll        $v0, $v0, 2
    /* 9B558 800AAD58 0D80013C */  lui        $at, %hi(D_800CE26C)
    /* 9B55C 800AAD5C 6CE22124 */  addiu      $at, $at, %lo(D_800CE26C)
    /* 9B560 800AAD60 21082200 */  addu       $at, $at, $v0
    /* 9B564 800AAD64 00002594 */  lhu        $a1, 0x0($at)
    /* 9B568 800AAD68 80200400 */  sll        $a0, $a0, 2
    /* 9B56C 800AAD6C 0D80013C */  lui        $at, %hi(D_800CE26C)
    /* 9B570 800AAD70 6CE22124 */  addiu      $at, $at, %lo(D_800CE26C)
    /* 9B574 800AAD74 21082400 */  addu       $at, $at, $a0
    /* 9B578 800AAD78 000025A4 */  sh         $a1, 0x0($at)
    /* 9B57C 800AAD7C 0D80013C */  lui        $at, %hi(D_800CE26C + 0x2)
    /* 9B580 800AAD80 6EE22124 */  addiu      $at, $at, %lo(D_800CE26C + 0x2)
    /* 9B584 800AAD84 21082200 */  addu       $at, $at, $v0
    /* 9B588 800AAD88 00002290 */  lbu        $v0, 0x0($at)
    /* 9B58C 800AAD8C 00000000 */  nop
    /* 9B590 800AAD90 0D80013C */  lui        $at, %hi(D_800CE26C + 0x2)
    /* 9B594 800AAD94 6EE22124 */  addiu      $at, $at, %lo(D_800CE26C + 0x2)
    /* 9B598 800AAD98 21082400 */  addu       $at, $at, $a0
    /* 9B59C 800AAD9C 000022A0 */  sb         $v0, 0x0($at)
    /* 9B5A0 800AADA0 0C006424 */  addiu      $a0, $v1, 0xC
    /* 9B5A4 800AADA4 2118E300 */  addu       $v1, $a3, $v1
    /* 9B5A8 800AADA8 80180300 */  sll        $v1, $v1, 2
    /* 9B5AC 800AADAC 0D80013C */  lui        $at, %hi(D_800CE26C)
    /* 9B5B0 800AADB0 6CE22124 */  addiu      $at, $at, %lo(D_800CE26C)
    /* 9B5B4 800AADB4 21082300 */  addu       $at, $at, $v1
    /* 9B5B8 800AADB8 00002294 */  lhu        $v0, 0x0($at)
    /* 9B5BC 800AADBC 80200400 */  sll        $a0, $a0, 2
    /* 9B5C0 800AADC0 0D80013C */  lui        $at, %hi(D_800CE26C)
    /* 9B5C4 800AADC4 6CE22124 */  addiu      $at, $at, %lo(D_800CE26C)
    /* 9B5C8 800AADC8 21082400 */  addu       $at, $at, $a0
    /* 9B5CC 800AADCC 000022A4 */  sh         $v0, 0x0($at)
    /* 9B5D0 800AADD0 0100C224 */  addiu      $v0, $a2, 0x1
    /* 9B5D4 800AADD4 21304000 */  addu       $a2, $v0, $zero
    /* 9B5D8 800AADD8 00140200 */  sll        $v0, $v0, 16
    /* 9B5DC 800AADDC 03140200 */  sra        $v0, $v0, 16
    /* 9B5E0 800AADE0 0D80013C */  lui        $at, %hi(D_800CE26C + 0x2)
    /* 9B5E4 800AADE4 6EE22124 */  addiu      $at, $at, %lo(D_800CE26C + 0x2)
    /* 9B5E8 800AADE8 21082300 */  addu       $at, $at, $v1
    /* 9B5EC 800AADEC 00002390 */  lbu        $v1, 0x0($at)
    /* 9B5F0 800AADF0 0A004228 */  slti       $v0, $v0, 0xA
    /* 9B5F4 800AADF4 0D80013C */  lui        $at, %hi(D_800CE26C + 0x2)
    /* 9B5F8 800AADF8 6EE22124 */  addiu      $at, $at, %lo(D_800CE26C + 0x2)
    /* 9B5FC 800AADFC 21082400 */  addu       $at, $at, $a0
    /* 9B600 800AAE00 000023A0 */  sb         $v1, 0x0($at)
    /* 9B604 800AAE04 D0FF4014 */  bnez       $v0, .L800AAD48
    /* 9B608 800AAE08 001C0600 */   sll       $v1, $a2, 16
    /* 9B60C 800AAE0C 09AC0208 */  j          .L800AB024
    /* 9B610 800AAE10 00000000 */   nop
  .L800AAE14:
    /* 9B614 800AAE14 43004010 */  beqz       $v0, .L800AAF24
    /* 9B618 800AAE18 21300000 */   addu      $a2, $zero, $zero
    /* 9B61C 800AAE1C 00140700 */  sll        $v0, $a3, 16
    /* 9B620 800AAE20 032C0200 */  sra        $a1, $v0, 16
    /* 9B624 800AAE24 001C0600 */  sll        $v1, $a2, 16
  .L800AAE28:
    /* 9B628 800AAE28 031C0300 */  sra        $v1, $v1, 16
    /* 9B62C 800AAE2C 02006424 */  addiu      $a0, $v1, 0x2
    /* 9B630 800AAE30 05006324 */  addiu      $v1, $v1, 0x5
    /* 9B634 800AAE34 2118A300 */  addu       $v1, $a1, $v1
    /* 9B638 800AAE38 80180300 */  sll        $v1, $v1, 2
    /* 9B63C 800AAE3C 0D80013C */  lui        $at, %hi(D_800CE26C)
    /* 9B640 800AAE40 6CE22124 */  addiu      $at, $at, %lo(D_800CE26C)
    /* 9B644 800AAE44 21082300 */  addu       $at, $at, $v1
    /* 9B648 800AAE48 00002294 */  lhu        $v0, 0x0($at)
    /* 9B64C 800AAE4C 80200400 */  sll        $a0, $a0, 2
    /* 9B650 800AAE50 0D80013C */  lui        $at, %hi(D_800CE26C)
    /* 9B654 800AAE54 6CE22124 */  addiu      $at, $at, %lo(D_800CE26C)
    /* 9B658 800AAE58 21082400 */  addu       $at, $at, $a0
    /* 9B65C 800AAE5C 000022A4 */  sh         $v0, 0x0($at)
    /* 9B660 800AAE60 0100C224 */  addiu      $v0, $a2, 0x1
    /* 9B664 800AAE64 21304000 */  addu       $a2, $v0, $zero
    /* 9B668 800AAE68 00140200 */  sll        $v0, $v0, 16
    /* 9B66C 800AAE6C 03140200 */  sra        $v0, $v0, 16
    /* 9B670 800AAE70 0D80013C */  lui        $at, %hi(D_800CE26C + 0x2)
    /* 9B674 800AAE74 6EE22124 */  addiu      $at, $at, %lo(D_800CE26C + 0x2)
    /* 9B678 800AAE78 21082300 */  addu       $at, $at, $v1
    /* 9B67C 800AAE7C 00002390 */  lbu        $v1, 0x0($at)
    /* 9B680 800AAE80 0F004228 */  slti       $v0, $v0, 0xF
    /* 9B684 800AAE84 0D80013C */  lui        $at, %hi(D_800CE26C + 0x2)
    /* 9B688 800AAE88 6EE22124 */  addiu      $at, $at, %lo(D_800CE26C + 0x2)
    /* 9B68C 800AAE8C 21082400 */  addu       $at, $at, $a0
    /* 9B690 800AAE90 000023A0 */  sb         $v1, 0x0($at)
    /* 9B694 800AAE94 E4FF4014 */  bnez       $v0, .L800AAE28
    /* 9B698 800AAE98 001C0600 */   sll       $v1, $a2, 16
    /* 9B69C 800AAE9C 21300000 */  addu       $a2, $zero, $zero
    /* 9B6A0 800AAEA0 00140800 */  sll        $v0, $t0, 16
    /* 9B6A4 800AAEA4 032C0200 */  sra        $a1, $v0, 16
    /* 9B6A8 800AAEA8 001C0600 */  sll        $v1, $a2, 16
  .L800AAEAC:
    /* 9B6AC 800AAEAC 031C0300 */  sra        $v1, $v1, 16
    /* 9B6B0 800AAEB0 11006424 */  addiu      $a0, $v1, 0x11
    /* 9B6B4 800AAEB4 2118A300 */  addu       $v1, $a1, $v1
    /* 9B6B8 800AAEB8 80180300 */  sll        $v1, $v1, 2
    /* 9B6BC 800AAEBC 0D80013C */  lui        $at, %hi(D_800CE26C)
    /* 9B6C0 800AAEC0 6CE22124 */  addiu      $at, $at, %lo(D_800CE26C)
    /* 9B6C4 800AAEC4 21082300 */  addu       $at, $at, $v1
    /* 9B6C8 800AAEC8 00002294 */  lhu        $v0, 0x0($at)
    /* 9B6CC 800AAECC 80200400 */  sll        $a0, $a0, 2
    /* 9B6D0 800AAED0 0D80013C */  lui        $at, %hi(D_800CE26C)
    /* 9B6D4 800AAED4 6CE22124 */  addiu      $at, $at, %lo(D_800CE26C)
    /* 9B6D8 800AAED8 21082400 */  addu       $at, $at, $a0
    /* 9B6DC 800AAEDC 000022A4 */  sh         $v0, 0x0($at)
    /* 9B6E0 800AAEE0 0100C224 */  addiu      $v0, $a2, 0x1
    /* 9B6E4 800AAEE4 21304000 */  addu       $a2, $v0, $zero
    /* 9B6E8 800AAEE8 00140200 */  sll        $v0, $v0, 16
    /* 9B6EC 800AAEEC 03140200 */  sra        $v0, $v0, 16
    /* 9B6F0 800AAEF0 0D80013C */  lui        $at, %hi(D_800CE26C + 0x2)
    /* 9B6F4 800AAEF4 6EE22124 */  addiu      $at, $at, %lo(D_800CE26C + 0x2)
    /* 9B6F8 800AAEF8 21082300 */  addu       $at, $at, $v1
    /* 9B6FC 800AAEFC 00002390 */  lbu        $v1, 0x0($at)
    /* 9B700 800AAF00 05004228 */  slti       $v0, $v0, 0x5
    /* 9B704 800AAF04 0D80013C */  lui        $at, %hi(D_800CE26C + 0x2)
    /* 9B708 800AAF08 6EE22124 */  addiu      $at, $at, %lo(D_800CE26C + 0x2)
    /* 9B70C 800AAF0C 21082400 */  addu       $at, $at, $a0
    /* 9B710 800AAF10 000023A0 */  sb         $v1, 0x0($at)
    /* 9B714 800AAF14 E5FF4014 */  bnez       $v0, .L800AAEAC
    /* 9B718 800AAF18 001C0600 */   sll       $v1, $a2, 16
    /* 9B71C 800AAF1C 09AC0208 */  j          .L800AB024
    /* 9B720 800AAF20 00000000 */   nop
  .L800AAF24:
    /* 9B724 800AAF24 00140700 */  sll        $v0, $a3, 16
    /* 9B728 800AAF28 032C0200 */  sra        $a1, $v0, 16
    /* 9B72C 800AAF2C 001C0600 */  sll        $v1, $a2, 16
  .L800AAF30:
    /* 9B730 800AAF30 031C0300 */  sra        $v1, $v1, 16
    /* 9B734 800AAF34 02006424 */  addiu      $a0, $v1, 0x2
    /* 9B738 800AAF38 2118A300 */  addu       $v1, $a1, $v1
    /* 9B73C 800AAF3C 80180300 */  sll        $v1, $v1, 2
    /* 9B740 800AAF40 0D80013C */  lui        $at, %hi(D_800CE26C)
    /* 9B744 800AAF44 6CE22124 */  addiu      $at, $at, %lo(D_800CE26C)
    /* 9B748 800AAF48 21082300 */  addu       $at, $at, $v1
    /* 9B74C 800AAF4C 00002294 */  lhu        $v0, 0x0($at)
    /* 9B750 800AAF50 80200400 */  sll        $a0, $a0, 2
    /* 9B754 800AAF54 0D80013C */  lui        $at, %hi(D_800CE26C)
    /* 9B758 800AAF58 6CE22124 */  addiu      $at, $at, %lo(D_800CE26C)
    /* 9B75C 800AAF5C 21082400 */  addu       $at, $at, $a0
    /* 9B760 800AAF60 000022A4 */  sh         $v0, 0x0($at)
    /* 9B764 800AAF64 0100C224 */  addiu      $v0, $a2, 0x1
    /* 9B768 800AAF68 21304000 */  addu       $a2, $v0, $zero
    /* 9B76C 800AAF6C 00140200 */  sll        $v0, $v0, 16
    /* 9B770 800AAF70 03140200 */  sra        $v0, $v0, 16
    /* 9B774 800AAF74 0D80013C */  lui        $at, %hi(D_800CE26C + 0x2)
    /* 9B778 800AAF78 6EE22124 */  addiu      $at, $at, %lo(D_800CE26C + 0x2)
    /* 9B77C 800AAF7C 21082300 */  addu       $at, $at, $v1
    /* 9B780 800AAF80 00002390 */  lbu        $v1, 0x0($at)
    /* 9B784 800AAF84 05004228 */  slti       $v0, $v0, 0x5
    /* 9B788 800AAF88 0D80013C */  lui        $at, %hi(D_800CE26C + 0x2)
    /* 9B78C 800AAF8C 6EE22124 */  addiu      $at, $at, %lo(D_800CE26C + 0x2)
    /* 9B790 800AAF90 21082400 */  addu       $at, $at, $a0
    /* 9B794 800AAF94 000023A0 */  sb         $v1, 0x0($at)
    /* 9B798 800AAF98 E5FF4014 */  bnez       $v0, .L800AAF30
    /* 9B79C 800AAF9C 001C0600 */   sll       $v1, $a2, 16
    /* 9B7A0 800AAFA0 21300000 */  addu       $a2, $zero, $zero
    /* 9B7A4 800AAFA4 00140800 */  sll        $v0, $t0, 16
    /* 9B7A8 800AAFA8 032C0200 */  sra        $a1, $v0, 16
    /* 9B7AC 800AAFAC 001C0600 */  sll        $v1, $a2, 16
  .L800AAFB0:
    /* 9B7B0 800AAFB0 031C0300 */  sra        $v1, $v1, 16
    /* 9B7B4 800AAFB4 07006424 */  addiu      $a0, $v1, 0x7
    /* 9B7B8 800AAFB8 05006324 */  addiu      $v1, $v1, 0x5
    /* 9B7BC 800AAFBC 2118A300 */  addu       $v1, $a1, $v1
    /* 9B7C0 800AAFC0 80180300 */  sll        $v1, $v1, 2
    /* 9B7C4 800AAFC4 0D80013C */  lui        $at, %hi(D_800CE26C)
    /* 9B7C8 800AAFC8 6CE22124 */  addiu      $at, $at, %lo(D_800CE26C)
    /* 9B7CC 800AAFCC 21082300 */  addu       $at, $at, $v1
    /* 9B7D0 800AAFD0 00002294 */  lhu        $v0, 0x0($at)
    /* 9B7D4 800AAFD4 80200400 */  sll        $a0, $a0, 2
    /* 9B7D8 800AAFD8 0D80013C */  lui        $at, %hi(D_800CE26C)
    /* 9B7DC 800AAFDC 6CE22124 */  addiu      $at, $at, %lo(D_800CE26C)
    /* 9B7E0 800AAFE0 21082400 */  addu       $at, $at, $a0
    /* 9B7E4 800AAFE4 000022A4 */  sh         $v0, 0x0($at)
    /* 9B7E8 800AAFE8 0100C224 */  addiu      $v0, $a2, 0x1
    /* 9B7EC 800AAFEC 21304000 */  addu       $a2, $v0, $zero
    /* 9B7F0 800AAFF0 00140200 */  sll        $v0, $v0, 16
    /* 9B7F4 800AAFF4 03140200 */  sra        $v0, $v0, 16
    /* 9B7F8 800AAFF8 0D80013C */  lui        $at, %hi(D_800CE26C + 0x2)
    /* 9B7FC 800AAFFC 6EE22124 */  addiu      $at, $at, %lo(D_800CE26C + 0x2)
    /* 9B800 800AB000 21082300 */  addu       $at, $at, $v1
    /* 9B804 800AB004 00002390 */  lbu        $v1, 0x0($at)
    /* 9B808 800AB008 0F004228 */  slti       $v0, $v0, 0xF
    /* 9B80C 800AB00C 0D80013C */  lui        $at, %hi(D_800CE26C + 0x2)
    /* 9B810 800AB010 6EE22124 */  addiu      $at, $at, %lo(D_800CE26C + 0x2)
    /* 9B814 800AB014 21082400 */  addu       $at, $at, $a0
    /* 9B818 800AB018 000023A0 */  sb         $v1, 0x0($at)
    /* 9B81C 800AB01C E4FF4014 */  bnez       $v0, .L800AAFB0
    /* 9B820 800AB020 001C0600 */   sll       $v1, $a2, 16
  .L800AB024:
    /* 9B824 800AB024 88AD020C */  jal        func_800AB620
    /* 9B828 800AB028 A1170434 */   ori       $a0, $zero, 0x17A1
    /* 9B82C 800AB02C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9B830 800AB030 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9B834 800AB034 0800E003 */  jr         $ra
    /* 9B838 800AB038 00000000 */   nop
endlabel func_800AACB4
