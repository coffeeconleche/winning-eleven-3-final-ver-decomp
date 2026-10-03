nonmatching func_8006E5F0, 0x66C

glabel func_8006E5F0
    /* 5EDF0 8006E5F0 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 5EDF4 8006E5F4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5EDF8 8006E5F8 21888000 */  addu       $s1, $a0, $zero
    /* 5EDFC 8006E5FC 01000324 */  addiu      $v1, $zero, 0x1
    /* 5EE00 8006E600 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5EE04 8006E604 1080103C */  lui        $s0, %hi(D_800FF748)
    /* 5EE08 8006E608 48F71026 */  addiu      $s0, $s0, %lo(D_800FF748)
    /* 5EE0C 8006E60C 2800BFAF */  sw         $ra, 0x28($sp)
    /* 5EE10 8006E610 2400B5AF */  sw         $s5, 0x24($sp)
    /* 5EE14 8006E614 2000B4AF */  sw         $s4, 0x20($sp)
    /* 5EE18 8006E618 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 5EE1C 8006E61C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5EE20 8006E620 AE032296 */  lhu        $v0, 0x3AE($s1)
    /* 5EE24 8006E624 801F153C */  lui        $s5, (0x1F80029A >> 16)
    /* 5EE28 8006E628 A70323A2 */  sb         $v1, 0x3A7($s1)
    /* 5EE2C 8006E62C D10323A2 */  sb         $v1, 0x3D1($s1)
    /* 5EE30 8006E630 97032392 */  lbu        $v1, 0x397($s1)
    /* 5EE34 8006E634 FEFF4224 */  addiu      $v0, $v0, -0x2
    /* 5EE38 8006E638 06006010 */  beqz       $v1, .L8006E654
    /* 5EE3C 8006E63C AE0322A6 */   sh        $v0, 0x3AE($s1)
    /* 5EE40 8006E640 01000224 */  addiu      $v0, $zero, 0x1
    /* 5EE44 8006E644 0B006210 */  beq        $v1, $v0, .L8006E674
    /* 5EE48 8006E648 00000000 */   nop
    /* 5EE4C 8006E64C FABA0108 */  j          .L8006EBE8
    /* 5EE50 8006E650 00000000 */   nop
  .L8006E654:
    /* 5EE54 8006E654 21202002 */  addu       $a0, $s1, $zero
    /* 5EE58 8006E658 90032692 */  lbu        $a2, 0x390($s1)
    /* 5EE5C 8006E65C 9E6E010C */  jal        func_8005BA78
    /* 5EE60 8006E660 26000524 */   addiu     $a1, $zero, 0x26
    /* 5EE64 8006E664 97032292 */  lbu        $v0, 0x397($s1)
    /* 5EE68 8006E668 040020A6 */  sh         $zero, 0x4($s1)
    /* 5EE6C 8006E66C 01004224 */  addiu      $v0, $v0, 0x1
    /* 5EE70 8006E670 970322A2 */  sb         $v0, 0x397($s1)
  .L8006E674:
    /* 5EE74 8006E674 476F010C */  jal        func_8005BD1C
    /* 5EE78 8006E678 21202002 */   addu      $a0, $s1, $zero
    /* 5EE7C 8006E67C B2032392 */  lbu        $v1, 0x3B2($s1)
    /* 5EE80 8006E680 01000224 */  addiu      $v0, $zero, 0x1
    /* 5EE84 8006E684 6D006214 */  bne        $v1, $v0, .L8006E83C
    /* 5EE88 8006E688 00000000 */   nop
    /* 5EE8C 8006E68C 99032592 */  lbu        $a1, 0x399($s1)
    /* 5EE90 8006E690 00000000 */  nop
    /* 5EE94 8006E694 0100A238 */  xori       $v0, $a1, 0x1
    /* 5EE98 8006E698 40100200 */  sll        $v0, $v0, 1
    /* 5EE9C 8006E69C 2110A202 */  addu       $v0, $s5, $v0
    /* 5EEA0 8006E6A0 1E034390 */  lbu        $v1, (0x1F80031E & 0xFFFF)($v0)
    /* 5EEA4 8006E6A4 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 5EEA8 8006E6A8 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 5EEAC 8006E6AC 19006200 */  multu      $v1, $v0
    /* 5EEB0 8006E6B0 10400000 */  mfhi       $t0
    /* 5EEB4 8006E6B4 02210800 */  srl        $a0, $t0, 4
    /* 5EEB8 8006E6B8 40100400 */  sll        $v0, $a0, 1
    /* 5EEBC 8006E6BC 21104400 */  addu       $v0, $v0, $a0
    /* 5EEC0 8006E6C0 C0100200 */  sll        $v0, $v0, 3
    /* 5EEC4 8006E6C4 23186200 */  subu       $v1, $v1, $v0
    /* 5EEC8 8006E6C8 FF006330 */  andi       $v1, $v1, 0xFF
    /* 5EECC 8006E6CC 40110300 */  sll        $v0, $v1, 5
    /* 5EED0 8006E6D0 23104300 */  subu       $v0, $v0, $v1
    /* 5EED4 8006E6D4 80100200 */  sll        $v0, $v0, 2
    /* 5EED8 8006E6D8 21104300 */  addu       $v0, $v0, $v1
    /* 5EEDC 8006E6DC C0100200 */  sll        $v0, $v0, 3
    /* 5EEE0 8006E6E0 21900202 */  addu       $s2, $s0, $v0
    /* 5EEE4 8006E6E4 02004486 */  lh         $a0, 0x2($s2)
    /* 5EEE8 8006E6E8 06004286 */  lh         $v0, 0x6($s2)
    /* 5EEEC 8006E6EC 0200A014 */  bnez       $a1, .L8006E6F8
    /* 5EEF0 8006E6F0 A0330624 */   addiu     $a2, $zero, 0x33A0
    /* 5EEF4 8006E6F4 60CC0624 */  addiu      $a2, $zero, -0x33A0
  .L8006E6F8:
    /* 5EEF8 8006E6F8 21284000 */  addu       $a1, $v0, $zero
    /* 5EEFC 8006E6FC DB6C010C */  jal        func_8005B36C
    /* 5EF00 8006E700 21380000 */   addu      $a3, $zero, $zero
    /* 5EF04 8006E704 02004486 */  lh         $a0, 0x2($s2)
    /* 5EF08 8006E708 06004586 */  lh         $a1, 0x6($s2)
    /* 5EF0C 8006E70C 02002686 */  lh         $a2, 0x2($s1)
    /* 5EF10 8006E710 06002786 */  lh         $a3, 0x6($s1)
    /* 5EF14 8006E714 DB6C010C */  jal        func_8005B36C
    /* 5EF18 8006E718 21984000 */   addu      $s3, $v0, $zero
    /* 5EF1C 8006E71C 23105300 */  subu       $v0, $v0, $s3
    /* 5EF20 8006E720 FF004230 */  andi       $v0, $v0, 0xFF
    /* 5EF24 8006E724 8100422C */  sltiu      $v0, $v0, 0x81
    /* 5EF28 8006E728 09004014 */  bnez       $v0, .L8006E750
    /* 5EF2C 8006E72C 00000000 */   nop
    /* 5EF30 8006E730 02004486 */  lh         $a0, 0x2($s2)
    /* 5EF34 8006E734 06004586 */  lh         $a1, 0x6($s2)
    /* 5EF38 8006E738 02002686 */  lh         $a2, 0x2($s1)
    /* 5EF3C 8006E73C 06002786 */  lh         $a3, 0x6($s1)
    /* 5EF40 8006E740 DB6C010C */  jal        func_8005B36C
    /* 5EF44 8006E744 00000000 */   nop
    /* 5EF48 8006E748 DBB90108 */  j          .L8006E76C
    /* 5EF4C 8006E74C 23806202 */   subu      $s0, $s3, $v0
  .L8006E750:
    /* 5EF50 8006E750 02004486 */  lh         $a0, 0x2($s2)
    /* 5EF54 8006E754 06004586 */  lh         $a1, 0x6($s2)
    /* 5EF58 8006E758 02002686 */  lh         $a2, 0x2($s1)
    /* 5EF5C 8006E75C 06002786 */  lh         $a3, 0x6($s1)
    /* 5EF60 8006E760 DB6C010C */  jal        func_8005B36C
    /* 5EF64 8006E764 00000000 */   nop
    /* 5EF68 8006E768 23805300 */  subu       $s0, $v0, $s3
  .L8006E76C:
    /* 5EF6C 8006E76C 02002386 */  lh         $v1, 0x2($s1)
    /* 5EF70 8006E770 02004486 */  lh         $a0, 0x2($s2)
    /* 5EF74 8006E774 0800428E */  lw         $v0, 0x8($s2)
    /* 5EF78 8006E778 23186400 */  subu       $v1, $v1, $a0
    /* 5EF7C 8006E77C 80100200 */  sll        $v0, $v0, 2
    /* 5EF80 8006E780 21186200 */  addu       $v1, $v1, $v0
    /* 5EF84 8006E784 18006300 */  mult       $v1, $v1
    /* 5EF88 8006E788 06002386 */  lh         $v1, 0x6($s1)
    /* 5EF8C 8006E78C 06004486 */  lh         $a0, 0x6($s2)
    /* 5EF90 8006E790 1000428E */  lw         $v0, 0x10($s2)
    /* 5EF94 8006E794 23186400 */  subu       $v1, $v1, $a0
    /* 5EF98 8006E798 12280000 */  mflo       $a1
    /* 5EF9C 8006E79C 80100200 */  sll        $v0, $v0, 2
    /* 5EFA0 8006E7A0 21186200 */  addu       $v1, $v1, $v0
    /* 5EFA4 8006E7A4 18006300 */  mult       $v1, $v1
    /* 5EFA8 8006E7A8 12180000 */  mflo       $v1
    /* 5EFAC 8006E7AC 4AC4020C */  jal        func_800B1128
    /* 5EFB0 8006E7B0 2120A300 */   addu      $a0, $a1, $v1
    /* 5EFB4 8006E7B4 21A04000 */  addu       $s4, $v0, $zero
    /* 5EFB8 8006E7B8 FF000232 */  andi       $v0, $s0, 0xFF
    /* 5EFBC 8006E7BC 0500422C */  sltiu      $v0, $v0, 0x5
    /* 5EFC0 8006E7C0 03004014 */  bnez       $v0, .L8006E7D0
    /* 5EFC4 8006E7C4 FF000232 */   andi      $v0, $s0, 0xFF
    /* 5EFC8 8006E7C8 05001024 */  addiu      $s0, $zero, 0x5
    /* 5EFCC 8006E7CC FF000232 */  andi       $v0, $s0, 0xFF
  .L8006E7D0:
    /* 5EFD0 8006E7D0 04004224 */  addiu      $v0, $v0, 0x4
    /* 5EFD4 8006E7D4 18008202 */  mult       $s4, $v0
    /* 5EFD8 8006E7D8 12180000 */  mflo       $v1
    /* 5EFDC 8006E7DC CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* 5EFE0 8006E7E0 CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* 5EFE4 8006E7E4 19006200 */  multu      $v1, $v0
    /* 5EFE8 8006E7E8 FF007032 */  andi       $s0, $s3, 0xFF
    /* 5EFEC 8006E7EC 21200002 */  addu       $a0, $s0, $zero
    /* 5EFF0 8006E7F0 10400000 */  mfhi       $t0
    /* 5EFF4 8006E7F4 C2A00800 */  srl        $s4, $t0, 3
    /* 5EFF8 8006E7F8 A579000C */  jal        func_8001E694
    /* 5EFFC 8006E7FC 21288002 */   addu      $a1, $s4, $zero
    /* 5F000 8006E800 21200002 */  addu       $a0, $s0, $zero
    /* 5F004 8006E804 21288002 */  addu       $a1, $s4, $zero
    /* 5F008 8006E808 0800468E */  lw         $a2, 0x8($s2)
    /* 5F00C 8006E80C 02004396 */  lhu        $v1, 0x2($s2)
    /* 5F010 8006E810 80300600 */  sll        $a2, $a2, 2
    /* 5F014 8006E814 21186600 */  addu       $v1, $v1, $a2
    /* 5F018 8006E818 21186200 */  addu       $v1, $v1, $v0
    /* 5F01C 8006E81C 6979000C */  jal        func_8001E5A4
    /* 5F020 8006E820 F800A3A6 */   sh        $v1, (0x1F8000F8 & 0xFFFF)($s5)
    /* 5F024 8006E824 1000448E */  lw         $a0, 0x10($s2)
    /* 5F028 8006E828 06004396 */  lhu        $v1, 0x6($s2)
    /* 5F02C 8006E82C 80200400 */  sll        $a0, $a0, 2
    /* 5F030 8006E830 21186400 */  addu       $v1, $v1, $a0
    /* 5F034 8006E834 21186200 */  addu       $v1, $v1, $v0
    /* 5F038 8006E838 FC00A3A6 */  sh         $v1, (0x1F8000FC & 0xFFFF)($s5)
  .L8006E83C:
    /* 5F03C 8006E83C F800A296 */  lhu        $v0, (0x1F8000F8 & 0xFFFF)($s5)
    /* 5F040 8006E840 00000000 */  nop
    /* 5F044 8006E844 00140200 */  sll        $v0, $v0, 16
    /* 5F048 8006E848 031C0200 */  sra        $v1, $v0, 16
    /* 5F04C 8006E84C 00336228 */  slti       $v0, $v1, 0x3300
    /* 5F050 8006E850 03004014 */  bnez       $v0, .L8006E860
    /* 5F054 8006E854 01CD6228 */   slti      $v0, $v1, -0x32FF
    /* 5F058 8006E858 1ABA0108 */  j          .L8006E868
    /* 5F05C 8006E85C 00330224 */   addiu     $v0, $zero, 0x3300
  .L8006E860:
    /* 5F060 8006E860 02004010 */  beqz       $v0, .L8006E86C
    /* 5F064 8006E864 00CD0224 */   addiu     $v0, $zero, -0x3300
  .L8006E868:
    /* 5F068 8006E868 F800A2A6 */  sh         $v0, (0x1F8000F8 & 0xFFFF)($s5)
  .L8006E86C:
    /* 5F06C 8006E86C F800A396 */  lhu        $v1, (0x1F8000F8 & 0xFFFF)($s5)
    /* 5F070 8006E870 02002286 */  lh         $v0, 0x2($s1)
    /* 5F074 8006E874 001C0300 */  sll        $v1, $v1, 16
    /* 5F078 8006E878 031C0300 */  sra        $v1, $v1, 16
    /* 5F07C 8006E87C 23104300 */  subu       $v0, $v0, $v1
    /* 5F080 8006E880 18004200 */  mult       $v0, $v0
    /* 5F084 8006E884 FC00A396 */  lhu        $v1, (0x1F8000FC & 0xFFFF)($s5)
    /* 5F088 8006E888 06002286 */  lh         $v0, 0x6($s1)
    /* 5F08C 8006E88C 001C0300 */  sll        $v1, $v1, 16
    /* 5F090 8006E890 12280000 */  mflo       $a1
    /* 5F094 8006E894 031C0300 */  sra        $v1, $v1, 16
    /* 5F098 8006E898 23104300 */  subu       $v0, $v0, $v1
    /* 5F09C 8006E89C 18004200 */  mult       $v0, $v0
    /* 5F0A0 8006E8A0 21202002 */  addu       $a0, $s1, $zero
    /* 5F0A4 8006E8A4 12180000 */  mflo       $v1
    /* 5F0A8 8006E8A8 3025010C */  jal        func_800494C0
    /* 5F0AC 8006E8AC 21A0A300 */   addu      $s4, $a1, $v1
    /* 5F0B0 8006E8B0 BE032386 */  lh         $v1, 0x3BE($s1)
    /* 5F0B4 8006E8B4 00000000 */  nop
    /* 5F0B8 8006E8B8 73006014 */  bnez       $v1, .L8006EA88
    /* 5F0BC 8006E8BC 21804000 */   addu      $s0, $v0, $zero
    /* 5F0C0 8006E8C0 5E00A296 */  lhu        $v0, (0x1F80005E & 0xFFFF)($s5)
    /* 5F0C4 8006E8C4 00000000 */  nop
    /* 5F0C8 8006E8C8 00140200 */  sll        $v0, $v0, 16
    /* 5F0CC 8006E8CC 03140200 */  sra        $v0, $v0, 16
    /* 5F0D0 8006E8D0 A0FE4228 */  slti       $v0, $v0, -0x160
    /* 5F0D4 8006E8D4 14004010 */  beqz       $v0, .L8006E928
    /* 5F0D8 8006E8D8 00000000 */   nop
    /* 5F0DC 8006E8DC F402A48E */  lw         $a0, (0x1F8002F4 & 0xFFFF)($s5)
    /* 5F0E0 8006E8E0 02002286 */  lh         $v0, 0x2($s1)
    /* 5F0E4 8006E8E4 02008384 */  lh         $v1, 0x2($a0)
    /* 5F0E8 8006E8E8 00000000 */  nop
    /* 5F0EC 8006E8EC 23104300 */  subu       $v0, $v0, $v1
    /* 5F0F0 8006E8F0 18004200 */  mult       $v0, $v0
    /* 5F0F4 8006E8F4 06002286 */  lh         $v0, 0x6($s1)
    /* 5F0F8 8006E8F8 06008384 */  lh         $v1, 0x6($a0)
    /* 5F0FC 8006E8FC 12280000 */  mflo       $a1
    /* 5F100 8006E900 23104300 */  subu       $v0, $v0, $v1
    /* 5F104 8006E904 00000000 */  nop
    /* 5F108 8006E908 18004200 */  mult       $v0, $v0
    /* 5F10C 8006E90C 3F00023C */  lui        $v0, (0x3FFFFF >> 16)
    /* 5F110 8006E910 FFFF4234 */  ori        $v0, $v0, (0x3FFFFF & 0xFFFF)
    /* 5F114 8006E914 12180000 */  mflo       $v1
    /* 5F118 8006E918 2118A300 */  addu       $v1, $a1, $v1
    /* 5F11C 8006E91C 2A104300 */  slt        $v0, $v0, $v1
    /* 5F120 8006E920 56004010 */  beqz       $v0, .L8006EA7C
    /* 5F124 8006E924 24000224 */   addiu     $v0, $zero, 0x24
  .L8006E928:
    /* 5F128 8006E928 A902A292 */  lbu        $v0, (0x1F8002A9 & 0xFFFF)($s5)
    /* 5F12C 8006E92C 00000000 */  nop
    /* 5F130 8006E930 3A004010 */  beqz       $v0, .L8006EA1C
    /* 5F134 8006E934 0200023C */   lui       $v0, (0x23FFF >> 16)
    /* 5F138 8006E938 98032292 */  lbu        $v0, 0x398($s1)
    /* 5F13C 8006E93C 00000000 */  nop
    /* 5F140 8006E940 2110A202 */  addu       $v0, $s5, $v0
    /* 5F144 8006E944 CF024390 */  lbu        $v1, (0x1F8002CF & 0xFFFF)($v0)
    /* 5F148 8006E948 01000224 */  addiu      $v0, $zero, 0x1
    /* 5F14C 8006E94C 33006214 */  bne        $v1, $v0, .L8006EA1C
    /* 5F150 8006E950 0200023C */   lui       $v0, (0x23FFF >> 16)
    /* 5F154 8006E954 0800023C */  lui        $v0, (0x8FFFF >> 16)
    /* 5F158 8006E958 FFFF4234 */  ori        $v0, $v0, (0x8FFFF & 0xFFFF)
    /* 5F15C 8006E95C 2B105400 */  sltu       $v0, $v0, $s4
    /* 5F160 8006E960 2E004014 */  bnez       $v0, .L8006EA1C
    /* 5F164 8006E964 0200023C */   lui       $v0, (0x23FFF >> 16)
    /* 5F168 8006E968 02002486 */  lh         $a0, 0x2($s1)
    /* 5F16C 8006E96C F402A28E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s5)
    /* 5F170 8006E970 06002586 */  lh         $a1, 0x6($s1)
    /* 5F174 8006E974 02004684 */  lh         $a2, 0x2($v0)
    /* 5F178 8006E978 06004784 */  lh         $a3, 0x6($v0)
    /* 5F17C 8006E97C DB6C010C */  jal        func_8005B36C
    /* 5F180 8006E980 00000000 */   nop
    /* 5F184 8006E984 AA032392 */  lbu        $v1, 0x3AA($s1)
    /* 5F188 8006E988 00000000 */  nop
    /* 5F18C 8006E98C 23186200 */  subu       $v1, $v1, $v0
    /* 5F190 8006E990 FF006330 */  andi       $v1, $v1, 0xFF
    /* 5F194 8006E994 8100632C */  sltiu      $v1, $v1, 0x81
    /* 5F198 8006E998 11006014 */  bnez       $v1, .L8006E9E0
    /* 5F19C 8006E99C 00000000 */   nop
    /* 5F1A0 8006E9A0 02002486 */  lh         $a0, 0x2($s1)
    /* 5F1A4 8006E9A4 F402A28E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s5)
    /* 5F1A8 8006E9A8 06002586 */  lh         $a1, 0x6($s1)
    /* 5F1AC 8006E9AC 02004684 */  lh         $a2, 0x2($v0)
    /* 5F1B0 8006E9B0 06004784 */  lh         $a3, 0x6($v0)
    /* 5F1B4 8006E9B4 DB6C010C */  jal        func_8005B36C
    /* 5F1B8 8006E9B8 00000000 */   nop
    /* 5F1BC 8006E9BC AA032392 */  lbu        $v1, 0x3AA($s1)
    /* 5F1C0 8006E9C0 00000000 */  nop
    /* 5F1C4 8006E9C4 23104300 */  subu       $v0, $v0, $v1
    /* 5F1C8 8006E9C8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 5F1CC 8006E9CC 28004228 */  slti       $v0, $v0, 0x28
    /* 5F1D0 8006E9D0 2A004014 */  bnez       $v0, .L8006EA7C
    /* 5F1D4 8006E9D4 0D000224 */   addiu     $v0, $zero, 0xD
    /* 5F1D8 8006E9D8 87BA0108 */  j          .L8006EA1C
    /* 5F1DC 8006E9DC 0200023C */   lui       $v0, (0x23FFF >> 16)
  .L8006E9E0:
    /* 5F1E0 8006E9E0 02002486 */  lh         $a0, 0x2($s1)
    /* 5F1E4 8006E9E4 F402A28E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s5)
    /* 5F1E8 8006E9E8 06002586 */  lh         $a1, 0x6($s1)
    /* 5F1EC 8006E9EC 02004684 */  lh         $a2, 0x2($v0)
    /* 5F1F0 8006E9F0 06004784 */  lh         $a3, 0x6($v0)
    /* 5F1F4 8006E9F4 DB6C010C */  jal        func_8005B36C
    /* 5F1F8 8006E9F8 00000000 */   nop
    /* 5F1FC 8006E9FC AA032392 */  lbu        $v1, 0x3AA($s1)
    /* 5F200 8006EA00 00000000 */  nop
    /* 5F204 8006EA04 23186200 */  subu       $v1, $v1, $v0
    /* 5F208 8006EA08 FF006330 */  andi       $v1, $v1, 0xFF
    /* 5F20C 8006EA0C 28006328 */  slti       $v1, $v1, 0x28
    /* 5F210 8006EA10 1A006014 */  bnez       $v1, .L8006EA7C
    /* 5F214 8006EA14 0D000224 */   addiu     $v0, $zero, 0xD
    /* 5F218 8006EA18 0200023C */  lui        $v0, (0x23FFF >> 16)
  .L8006EA1C:
    /* 5F21C 8006EA1C FF3F4234 */  ori        $v0, $v0, (0x23FFF & 0xFFFF)
    /* 5F220 8006EA20 2B105400 */  sltu       $v0, $v0, $s4
    /* 5F224 8006EA24 18004014 */  bnez       $v0, .L8006EA88
    /* 5F228 8006EA28 00000000 */   nop
    /* 5F22C 8006EA2C 4E00A296 */  lhu        $v0, (0x1F80004E & 0xFFFF)($s5)
    /* 5F230 8006EA30 00000000 */  nop
    /* 5F234 8006EA34 00140200 */  sll        $v0, $v0, 16
    /* 5F238 8006EA38 03140200 */  sra        $v0, $v0, 16
    /* 5F23C 8006EA3C 81FF4228 */  slti       $v0, $v0, -0x7F
    /* 5F240 8006EA40 11004014 */  bnez       $v0, .L8006EA88
    /* 5F244 8006EA44 00000000 */   nop
    /* 5F248 8006EA48 F402A28E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s5)
    /* 5F24C 8006EA4C 00000000 */  nop
    /* 5F250 8006EA50 0C00428C */  lw         $v0, 0xC($v0)
    /* 5F254 8006EA54 00000000 */  nop
    /* 5F258 8006EA58 02004104 */  bgez       $v0, .L8006EA64
    /* 5F25C 8006EA5C 00000000 */   nop
    /* 5F260 8006EA60 23100200 */  negu       $v0, $v0
  .L8006EA64:
    /* 5F264 8006EA64 00174228 */  slti       $v0, $v0, 0x1700
    /* 5F268 8006EA68 07004010 */  beqz       $v0, .L8006EA88
    /* 5F26C 8006EA6C 0400023C */   lui       $v0, (0x40000 >> 16)
    /* 5F270 8006EA70 2B105000 */  sltu       $v0, $v0, $s0
    /* 5F274 8006EA74 04004010 */  beqz       $v0, .L8006EA88
    /* 5F278 8006EA78 0A000224 */   addiu     $v0, $zero, 0xA
  .L8006EA7C:
    /* 5F27C 8006EA7C 960322A2 */  sb         $v0, 0x396($s1)
    /* 5F280 8006EA80 FABA0108 */  j          .L8006EBE8
    /* 5F284 8006EA84 970320A2 */   sb        $zero, 0x397($s1)
  .L8006EA88:
    /* 5F288 8006EA88 A902A292 */  lbu        $v0, (0x1F8002A9 & 0xFFFF)($s5)
    /* 5F28C 8006EA8C 00000000 */  nop
    /* 5F290 8006EA90 0D004010 */  beqz       $v0, .L8006EAC8
    /* 5F294 8006EA94 00000000 */   nop
    /* 5F298 8006EA98 AC02A392 */  lbu        $v1, (0x1F8002AC & 0xFFFF)($s5)
    /* 5F29C 8006EA9C 8D032292 */  lbu        $v0, 0x38D($s1)
    /* 5F2A0 8006EAA0 00000000 */  nop
    /* 5F2A4 8006EAA4 4D006214 */  bne        $v1, $v0, .L8006EBDC
    /* 5F2A8 8006EAA8 21202002 */   addu      $a0, $s1, $zero
    /* 5F2AC 8006EAAC 0400023C */  lui        $v0, (0x40000 >> 16)
    /* 5F2B0 8006EAB0 21108202 */  addu       $v0, $s4, $v0
    /* 5F2B4 8006EAB4 2B105000 */  sltu       $v0, $v0, $s0
    /* 5F2B8 8006EAB8 48004010 */  beqz       $v0, .L8006EBDC
    /* 5F2BC 8006EABC 21280000 */   addu      $a1, $zero, $zero
    /* 5F2C0 8006EAC0 F8BA0108 */  j          .L8006EBE0
    /* 5F2C4 8006EAC4 00000000 */   nop
  .L8006EAC8:
    /* 5F2C8 8006EAC8 02002486 */  lh         $a0, 0x2($s1)
    /* 5F2CC 8006EACC 3600A696 */  lhu        $a2, (0x1F800036 & 0xFFFF)($s5)
    /* 5F2D0 8006EAD0 06002586 */  lh         $a1, 0x6($s1)
    /* 5F2D4 8006EAD4 6600A796 */  lhu        $a3, (0x1F800066 & 0xFFFF)($s5)
    /* 5F2D8 8006EAD8 00340600 */  sll        $a2, $a2, 16
    /* 5F2DC 8006EADC 03340600 */  sra        $a2, $a2, 16
    /* 5F2E0 8006EAE0 003C0700 */  sll        $a3, $a3, 16
    /* 5F2E4 8006EAE4 DB6C010C */  jal        func_8005B36C
    /* 5F2E8 8006EAE8 033C0700 */   sra       $a3, $a3, 16
    /* 5F2EC 8006EAEC 21984000 */  addu       $s3, $v0, $zero
    /* 5F2F0 8006EAF0 4AC4020C */  jal        func_800B1128
    /* 5F2F4 8006EAF4 21208002 */   addu      $a0, $s4, $zero
    /* 5F2F8 8006EAF8 21A04000 */  addu       $s4, $v0, $zero
    /* 5F2FC 8006EAFC 4000822E */  sltiu      $v0, $s4, 0x40
    /* 5F300 8006EB00 14004010 */  beqz       $v0, .L8006EB54
    /* 5F304 8006EB04 21202002 */   addu      $a0, $s1, $zero
    /* 5F308 8006EB08 0E000524 */  addiu      $a1, $zero, 0xE
    /* 5F30C 8006EB0C 8C6E010C */  jal        func_8005BA30
    /* 5F310 8006EB10 0F000624 */   addiu     $a2, $zero, 0xF
    /* 5F314 8006EB14 FF006432 */  andi       $a0, $s3, 0xFF
    /* 5F318 8006EB18 AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 5F31C 8006EB1C F36D010C */  jal        func_8005B7CC
    /* 5F320 8006EB20 10000624 */   addiu     $a2, $zero, 0x10
    /* 5F324 8006EB24 A003238E */  lw         $v1, 0x3A0($s1)
    /* 5F328 8006EB28 AA0322A2 */  sb         $v0, 0x3AA($s1)
    /* 5F32C 8006EB2C 1300622C */  sltiu      $v0, $v1, 0x13
    /* 5F330 8006EB30 03004010 */  beqz       $v0, .L8006EB40
    /* 5F334 8006EB34 EEFF6224 */   addiu     $v0, $v1, -0x12
    /* 5F338 8006EB38 D1BA0108 */  j          .L8006EB44
    /* 5F33C 8006EB3C A00320AE */   sw        $zero, 0x3A0($s1)
  .L8006EB40:
    /* 5F340 8006EB40 A00322AE */  sw         $v0, 0x3A0($s1)
  .L8006EB44:
    /* 5F344 8006EB44 F402A38E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s5)
    /* 5F348 8006EB48 02000224 */  addiu      $v0, $zero, 0x2
    /* 5F34C 8006EB4C FABA0108 */  j          .L8006EBE8
    /* 5F350 8006EB50 DC0362A4 */   sh        $v0, 0x3DC($v1)
  .L8006EB54:
    /* 5F354 8006EB54 02002486 */  lh         $a0, 0x2($s1)
    /* 5F358 8006EB58 F800A696 */  lhu        $a2, (0x1F8000F8 & 0xFFFF)($s5)
    /* 5F35C 8006EB5C 06002586 */  lh         $a1, 0x6($s1)
    /* 5F360 8006EB60 FC00A796 */  lhu        $a3, (0x1F8000FC & 0xFFFF)($s5)
    /* 5F364 8006EB64 00340600 */  sll        $a2, $a2, 16
    /* 5F368 8006EB68 03340600 */  sra        $a2, $a2, 16
    /* 5F36C 8006EB6C 003C0700 */  sll        $a3, $a3, 16
    /* 5F370 8006EB70 DB6C010C */  jal        func_8005B36C
    /* 5F374 8006EB74 033C0700 */   sra       $a3, $a3, 16
    /* 5F378 8006EB78 21804000 */  addu       $s0, $v0, $zero
    /* 5F37C 8006EB7C 23181302 */  subu       $v1, $s0, $s3
    /* 5F380 8006EB80 FF006230 */  andi       $v0, $v1, 0xFF
    /* 5F384 8006EB84 8100422C */  sltiu      $v0, $v0, 0x81
    /* 5F388 8006EB88 02004014 */  bnez       $v0, .L8006EB94
    /* 5F38C 8006EB8C 0001822E */   sltiu     $v0, $s4, 0x100
    /* 5F390 8006EB90 23187002 */  subu       $v1, $s3, $s0
  .L8006EB94:
    /* 5F394 8006EB94 04004010 */  beqz       $v0, .L8006EBA8
    /* 5F398 8006EB98 FF006230 */   andi      $v0, $v1, 0xFF
    /* 5F39C 8006EB9C 3000422C */  sltiu      $v0, $v0, 0x30
    /* 5F3A0 8006EBA0 07004010 */  beqz       $v0, .L8006EBC0
    /* 5F3A4 8006EBA4 21202002 */   addu      $a0, $s1, $zero
  .L8006EBA8:
    /* 5F3A8 8006EBA8 0003822E */  sltiu      $v0, $s4, 0x300
    /* 5F3AC 8006EBAC 0A004010 */  beqz       $v0, .L8006EBD8
    /* 5F3B0 8006EBB0 FF006230 */   andi      $v0, $v1, 0xFF
    /* 5F3B4 8006EBB4 6000422C */  sltiu      $v0, $v0, 0x60
    /* 5F3B8 8006EBB8 08004014 */  bnez       $v0, .L8006EBDC
    /* 5F3BC 8006EBBC 21202002 */   addu      $a0, $s1, $zero
  .L8006EBC0:
    /* 5F3C0 8006EBC0 FF000532 */  andi       $a1, $s0, 0xFF
    /* 5F3C4 8006EBC4 FF006632 */  andi       $a2, $s3, 0xFF
    /* 5F3C8 8006EBC8 B622010C */  jal        func_80048AD8
    /* 5F3CC 8006EBCC FFFF8732 */   andi      $a3, $s4, 0xFFFF
    /* 5F3D0 8006EBD0 FABA0108 */  j          .L8006EBE8
    /* 5F3D4 8006EBD4 00000000 */   nop
  .L8006EBD8:
    /* 5F3D8 8006EBD8 21202002 */  addu       $a0, $s1, $zero
  .L8006EBDC:
    /* 5F3DC 8006EBDC 01000524 */  addiu      $a1, $zero, 0x1
  .L8006EBE0:
    /* 5F3E0 8006EBE0 6E1E010C */  jal        func_800479B8
    /* 5F3E4 8006EBE4 00000000 */   nop
  .L8006EBE8:
    /* 5F3E8 8006EBE8 98032292 */  lbu        $v0, 0x398($s1)
    /* 5F3EC 8006EBEC D4032396 */  lhu        $v1, 0x3D4($s1)
    /* 5F3F0 8006EBF0 40100200 */  sll        $v0, $v0, 1
    /* 5F3F4 8006EBF4 21105500 */  addu       $v0, $v0, $s5
    /* 5F3F8 8006EBF8 32004294 */  lhu        $v0, (0x1F800032 & 0xFFFF)($v0)
    /* 5F3FC 8006EBFC 00000000 */  nop
    /* 5F400 8006EC00 24104300 */  and        $v0, $v0, $v1
    /* 5F404 8006EC04 06004010 */  beqz       $v0, .L8006EC20
    /* 5F408 8006EC08 01000324 */   addiu     $v1, $zero, 0x1
    /* 5F40C 8006EC0C 9A02A292 */  lbu        $v0, (0x1F80029A & 0xFFFF)($s5)
    /* 5F410 8006EC10 00000000 */  nop
    /* 5F414 8006EC14 FF004230 */  andi       $v0, $v0, 0xFF
    /* 5F418 8006EC18 04004310 */  beq        $v0, $v1, .L8006EC2C
    /* 5F41C 8006EC1C 00000000 */   nop
  .L8006EC20:
    /* 5F420 8006EC20 82000224 */  addiu      $v0, $zero, 0x82
    /* 5F424 8006EC24 960322A2 */  sb         $v0, 0x396($s1)
    /* 5F428 8006EC28 970320A2 */  sb         $zero, 0x397($s1)
  .L8006EC2C:
    /* 5F42C 8006EC2C 426E010C */  jal        func_8005B908
    /* 5F430 8006EC30 21202002 */   addu      $a0, $s1, $zero
    /* 5F434 8006EC34 2800BF8F */  lw         $ra, 0x28($sp)
    /* 5F438 8006EC38 2400B58F */  lw         $s5, 0x24($sp)
    /* 5F43C 8006EC3C 2000B48F */  lw         $s4, 0x20($sp)
    /* 5F440 8006EC40 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 5F444 8006EC44 1800B28F */  lw         $s2, 0x18($sp)
    /* 5F448 8006EC48 1400B18F */  lw         $s1, 0x14($sp)
    /* 5F44C 8006EC4C 1000B08F */  lw         $s0, 0x10($sp)
    /* 5F450 8006EC50 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 5F454 8006EC54 0800E003 */  jr         $ra
    /* 5F458 8006EC58 00000000 */   nop
endlabel func_8006E5F0
