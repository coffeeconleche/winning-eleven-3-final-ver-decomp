nonmatching func_8008ECC0, 0x2E4

glabel func_8008ECC0
    /* 7F4C0 8008ECC0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 7F4C4 8008ECC4 1800B0AF */  sw         $s0, 0x18($sp)
    /* 7F4C8 8008ECC8 21808000 */  addu       $s0, $a0, $zero
    /* 7F4CC 8008ECCC 2000BFAF */  sw         $ra, 0x20($sp)
    /* 7F4D0 8008ECD0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 7F4D4 8008ECD4 97030292 */  lbu        $v0, 0x397($s0)
    /* 7F4D8 8008ECD8 00000000 */  nop
    /* 7F4DC 8008ECDC 20004014 */  bnez       $v0, .L8008ED60
    /* 7F4E0 8008ECE0 801F113C */   lui       $s1, (0x1F800000 >> 16)
    /* 7F4E4 8008ECE4 73000524 */  addiu      $a1, $zero, 0x73
    /* 7F4E8 8008ECE8 8C6E010C */  jal        func_8005BA30
    /* 7F4EC 8008ECEC 21300000 */   addu      $a2, $zero, $zero
    /* 7F4F0 8008ECF0 AB030492 */  lbu        $a0, 0x3AB($s0)
    /* 7F4F4 8008ECF4 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 7F4F8 8008ECF8 F36D010C */  jal        func_8005B7CC
    /* 7F4FC 8008ECFC 40000624 */   addiu     $a2, $zero, 0x40
    /* 7F500 8008ED00 FF004430 */  andi       $a0, $v0, 0xFF
    /* 7F504 8008ED04 C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 7F508 8008ED08 23186400 */  subu       $v1, $v1, $a0
    /* 7F50C 8008ED0C 21206000 */  addu       $a0, $v1, $zero
    /* 7F510 8008ED10 02006104 */  bgez       $v1, .L8008ED1C
    /* 7F514 8008ED14 AA0302A2 */   sb        $v0, 0x3AA($s0)
    /* 7F518 8008ED18 FF006424 */  addiu      $a0, $v1, 0xFF
  .L8008ED1C:
    /* 7F51C 8008ED1C 03120400 */  sra        $v0, $a0, 8
    /* 7F520 8008ED20 00120200 */  sll        $v0, $v0, 8
    /* 7F524 8008ED24 23106200 */  subu       $v0, $v1, $v0
    /* 7F528 8008ED28 97030492 */  lbu        $a0, 0x397($s0)
    /* 7F52C 8008ED2C 0800058E */  lw         $a1, 0x8($s0)
    /* 7F530 8008ED30 00110200 */  sll        $v0, $v0, 4
    /* 7F534 8008ED34 260002A6 */  sh         $v0, 0x26($s0)
    /* 7F538 8008ED38 02000296 */  lhu        $v0, 0x2($s0)
    /* 7F53C 8008ED3C 1000068E */  lw         $a2, 0x10($s0)
    /* 7F540 8008ED40 06000396 */  lhu        $v1, 0x6($s0)
    /* 7F544 8008ED44 01008424 */  addiu      $a0, $a0, 0x1
    /* 7F548 8008ED48 21104500 */  addu       $v0, $v0, $a1
    /* 7F54C 8008ED4C 21186600 */  addu       $v1, $v1, $a2
    /* 7F550 8008ED50 020002A6 */  sh         $v0, 0x2($s0)
    /* 7F554 8008ED54 060003A6 */  sh         $v1, 0x6($s0)
    /* 7F558 8008ED58 E33B0208 */  j          .L8008EF8C
    /* 7F55C 8008ED5C 970304A2 */   sb        $a0, 0x397($s0)
  .L8008ED60:
    /* 7F560 8008ED60 476F010C */  jal        func_8005BD1C
    /* 7F564 8008ED64 21200002 */   addu      $a0, $s0, $zero
    /* 7F568 8008ED68 90030292 */  lbu        $v0, 0x390($s0)
    /* 7F56C 8008ED6C 00000000 */  nop
    /* 7F570 8008ED70 FFFF4324 */  addiu      $v1, $v0, -0x1
    /* 7F574 8008ED74 1100622C */  sltiu      $v0, $v1, 0x11
    /* 7F578 8008ED78 82004010 */  beqz       $v0, .L8008EF84
    /* 7F57C 8008ED7C 80100300 */   sll       $v0, $v1, 2
    /* 7F580 8008ED80 0180013C */  lui        $at, %hi(jtbl_80013E5C)
    /* 7F584 8008ED84 21082200 */  addu       $at, $at, $v0
    /* 7F588 8008ED88 5C3E228C */  lw         $v0, %lo(jtbl_80013E5C)($at)
    /* 7F58C 8008ED8C 00000000 */  nop
    /* 7F590 8008ED90 08004000 */  jr         $v0
    /* 7F594 8008ED94 00000000 */   nop
  jlabel .L8008ED98
    /* 7F598 8008ED98 AB030492 */  lbu        $a0, 0x3AB($s0)
    /* 7F59C 8008ED9C AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 7F5A0 8008EDA0 F36D010C */  jal        func_8005B7CC
    /* 7F5A4 8008EDA4 0C000624 */   addiu     $a2, $zero, 0xC
    /* 7F5A8 8008EDA8 FF004430 */  andi       $a0, $v0, 0xFF
    /* 7F5AC 8008EDAC C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 7F5B0 8008EDB0 23186400 */  subu       $v1, $v1, $a0
    /* 7F5B4 8008EDB4 21206000 */  addu       $a0, $v1, $zero
    /* 7F5B8 8008EDB8 02006104 */  bgez       $v1, .L8008EDC4
    /* 7F5BC 8008EDBC AA0302A2 */   sb        $v0, 0x3AA($s0)
    /* 7F5C0 8008EDC0 FF006424 */  addiu      $a0, $v1, 0xFF
  .L8008EDC4:
    /* 7F5C4 8008EDC4 03120400 */  sra        $v0, $a0, 8
    /* 7F5C8 8008EDC8 00120200 */  sll        $v0, $v0, 8
    /* 7F5CC 8008EDCC 23106200 */  subu       $v0, $v1, $v0
    /* 7F5D0 8008EDD0 0800048E */  lw         $a0, 0x8($s0)
    /* 7F5D4 8008EDD4 00110200 */  sll        $v0, $v0, 4
    /* 7F5D8 8008EDD8 260002A6 */  sh         $v0, 0x26($s0)
    /* 7F5DC 8008EDDC 02000296 */  lhu        $v0, 0x2($s0)
    /* 7F5E0 8008EDE0 1000058E */  lw         $a1, 0x10($s0)
    /* 7F5E4 8008EDE4 06000396 */  lhu        $v1, 0x6($s0)
    /* 7F5E8 8008EDE8 21104400 */  addu       $v0, $v0, $a0
    /* 7F5EC 8008EDEC 21186500 */  addu       $v1, $v1, $a1
    /* 7F5F0 8008EDF0 020002A6 */  sh         $v0, 0x2($s0)
    /* 7F5F4 8008EDF4 E13B0208 */  j          .L8008EF84
    /* 7F5F8 8008EDF8 060003A6 */   sh        $v1, 0x6($s0)
  jlabel .L8008EDFC
    /* 7F5FC 8008EDFC 21200002 */  addu       $a0, $s0, $zero
    /* 7F600 8008EE00 00010524 */  addiu      $a1, $zero, 0x100
    /* 7F604 8008EE04 0800068E */  lw         $a2, 0x8($s0)
    /* 7F608 8008EE08 02000296 */  lhu        $v0, 0x2($s0)
    /* 7F60C 8008EE0C 1000078E */  lw         $a3, 0x10($s0)
    /* 7F610 8008EE10 06000396 */  lhu        $v1, 0x6($s0)
    /* 7F614 8008EE14 21104600 */  addu       $v0, $v0, $a2
    /* 7F618 8008EE18 21186700 */  addu       $v1, $v1, $a3
    /* 7F61C 8008EE1C 020002A6 */  sh         $v0, 0x2($s0)
    /* 7F620 8008EE20 BB53020C */  jal        func_80094EEC
    /* 7F624 8008EE24 060003A6 */   sh        $v1, 0x6($s0)
    /* 7F628 8008EE28 56004010 */  beqz       $v0, .L8008EF84
    /* 7F62C 8008EE2C 21200002 */   addu      $a0, $s0, $zero
    /* 7F630 8008EE30 0A000624 */  addiu      $a2, $zero, 0xA
    /* 7F634 8008EE34 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 7F638 8008EE38 3C2C010C */  jal        func_8004B0F0
    /* 7F63C 8008EE3C F1FF0724 */   addiu     $a3, $zero, -0xF
    /* 7F640 8008EE40 8D030292 */  lbu        $v0, 0x38D($s0)
    /* 7F644 8008EE44 21200002 */  addu       $a0, $s0, $zero
    /* 7F648 8008EE48 2454020C */  jal        func_80095090
    /* 7F64C 8008EE4C A90222A2 */   sb        $v0, 0x2A9($s1)
    /* 7F650 8008EE50 F402238E */  lw         $v1, 0x2F4($s1)
    /* 7F654 8008EE54 4E002296 */  lhu        $v0, 0x4E($s1)
    /* 7F658 8008EE58 00000000 */  nop
    /* 7F65C 8008EE5C 040062A4 */  sh         $v0, 0x4($v1)
    /* 7F660 8008EE60 98030292 */  lbu        $v0, 0x398($s0)
    /* 7F664 8008EE64 00000000 */  nop
    /* 7F668 8008EE68 21102202 */  addu       $v0, $s1, $v0
    /* 7F66C 8008EE6C CF0240A0 */  sb         $zero, 0x2CF($v0)
    /* 7F670 8008EE70 E13B0208 */  j          .L8008EF84
    /* 7F674 8008EE74 B00220AE */   sw        $zero, 0x2B0($s1)
  jlabel .L8008EE78
    /* 7F678 8008EE78 08000224 */  addiu      $v0, $zero, 0x8
    /* 7F67C 8008EE7C A00302AE */  sw         $v0, 0x3A0($s0)
    /* 7F680 8008EE80 21200002 */  addu       $a0, $s0, $zero
    /* 7F684 8008EE84 196E010C */  jal        func_8005B864
    /* 7F688 8008EE88 08000524 */   addiu     $a1, $zero, 0x8
    /* 7F68C 8008EE8C E13B0208 */  j          .L8008EF84
    /* 7F690 8008EE90 00000000 */   nop
  jlabel .L8008EE94
    /* 7F694 8008EE94 A9022392 */  lbu        $v1, 0x2A9($s1)
    /* 7F698 8008EE98 8D030292 */  lbu        $v0, 0x38D($s0)
    /* 7F69C 8008EE9C 00000000 */  nop
    /* 7F6A0 8008EEA0 36004314 */  bne        $v0, $v1, .L8008EF7C
    /* 7F6A4 8008EEA4 9D000224 */   addiu     $v0, $zero, 0x9D
    /* 7F6A8 8008EEA8 B9030392 */  lbu        $v1, 0x3B9($s0)
    /* 7F6AC 8008EEAC CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* 7F6B0 8008EEB0 CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* 7F6B4 8008EEB4 19006200 */  multu      $v1, $v0
    /* 7F6B8 8008EEB8 21200002 */  addu       $a0, $s0, $zero
    /* 7F6BC 8008EEBC 15000224 */  addiu      $v0, $zero, 0x15
    /* 7F6C0 8008EEC0 10400000 */  mfhi       $t0
    /* 7F6C4 8008EEC4 C2280800 */  srl        $a1, $t0, 3
    /* 7F6C8 8008EEC8 FF00A530 */  andi       $a1, $a1, 0xFF
    /* 7F6CC 8008EECC B055020C */  jal        func_800956C0
    /* 7F6D0 8008EED0 23284500 */   subu      $a1, $v0, $a1
    /* 7F6D4 8008EED4 21200002 */  addu       $a0, $s0, $zero
    /* 7F6D8 8008EED8 5F000524 */  addiu      $a1, $zero, 0x5F
    /* 7F6DC 8008EEDC AB030792 */  lbu        $a3, 0x3AB($s0)
    /* 7F6E0 8008EEE0 AC030292 */  lbu        $v0, 0x3AC($s0)
    /* 7F6E4 8008EEE4 06000624 */  addiu      $a2, $zero, 0x6
    /* 7F6E8 8008EEE8 AB70010C */  jal        func_8005C2AC
    /* 7F6EC 8008EEEC 1000A2AF */   sw        $v0, 0x10($sp)
    /* 7F6F0 8008EEF0 4992043C */  lui        $a0, (0x92492493 >> 16)
    /* 7F6F4 8008EEF4 93248434 */  ori        $a0, $a0, (0x92492493 & 0xFFFF)
    /* 7F6F8 8008EEF8 44002296 */  lhu        $v0, 0x44($s1)
    /* 7F6FC 8008EEFC F0002396 */  lhu        $v1, 0xF0($s1)
    /* 7F700 8008EF00 00140200 */  sll        $v0, $v0, 16
    /* 7F704 8008EF04 03140200 */  sra        $v0, $v0, 16
    /* 7F708 8008EF08 001C0300 */  sll        $v1, $v1, 16
    /* 7F70C 8008EF0C 031C0300 */  sra        $v1, $v1, 16
    /* 7F710 8008EF10 23104300 */  subu       $v0, $v0, $v1
    /* 7F714 8008EF14 18004400 */  mult       $v0, $a0
    /* 7F718 8008EF18 10400000 */  mfhi       $t0
    /* 7F71C 8008EF1C 21180201 */  addu       $v1, $t0, $v0
    /* 7F720 8008EF20 83180300 */  sra        $v1, $v1, 2
    /* 7F724 8008EF24 C3170200 */  sra        $v0, $v0, 31
    /* 7F728 8008EF28 23186200 */  subu       $v1, $v1, $v0
    /* 7F72C 8008EF2C 080003AE */  sw         $v1, 0x8($s0)
    /* 7F730 8008EF30 74002396 */  lhu        $v1, 0x74($s1)
    /* 7F734 8008EF34 F4002296 */  lhu        $v0, 0xF4($s1)
    /* 7F738 8008EF38 001C0300 */  sll        $v1, $v1, 16
    /* 7F73C 8008EF3C 031C0300 */  sra        $v1, $v1, 16
    /* 7F740 8008EF40 00140200 */  sll        $v0, $v0, 16
    /* 7F744 8008EF44 03140200 */  sra        $v0, $v0, 16
    /* 7F748 8008EF48 23186200 */  subu       $v1, $v1, $v0
    /* 7F74C 8008EF4C 18006400 */  mult       $v1, $a0
    /* 7F750 8008EF50 040000A6 */  sh         $zero, 0x4($s0)
    /* 7F754 8008EF54 970300A2 */  sb         $zero, 0x397($s0)
    /* 7F758 8008EF58 87000224 */  addiu      $v0, $zero, 0x87
    /* 7F75C 8008EF5C 960302A2 */  sb         $v0, 0x396($s0)
    /* 7F760 8008EF60 10400000 */  mfhi       $t0
    /* 7F764 8008EF64 21100301 */  addu       $v0, $t0, $v1
    /* 7F768 8008EF68 83100200 */  sra        $v0, $v0, 2
    /* 7F76C 8008EF6C C31F0300 */  sra        $v1, $v1, 31
    /* 7F770 8008EF70 23104300 */  subu       $v0, $v0, $v1
    /* 7F774 8008EF74 E13B0208 */  j          .L8008EF84
    /* 7F778 8008EF78 100002AE */   sw        $v0, 0x10($s0)
  .L8008EF7C:
    /* 7F77C 8008EF7C 960302A2 */  sb         $v0, 0x396($s0)
    /* 7F780 8008EF80 970300A2 */  sb         $zero, 0x397($s0)
  jlabel .L8008EF84
    /* 7F784 8008EF84 3A55020C */  jal        func_800954E8
    /* 7F788 8008EF88 21200002 */   addu      $a0, $s0, $zero
  .L8008EF8C:
    /* 7F78C 8008EF8C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 7F790 8008EF90 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 7F794 8008EF94 1800B08F */  lw         $s0, 0x18($sp)
    /* 7F798 8008EF98 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 7F79C 8008EF9C 0800E003 */  jr         $ra
    /* 7F7A0 8008EFA0 00000000 */   nop
endlabel func_8008ECC0
