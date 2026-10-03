nonmatching func_8002ECB0, 0x44C

glabel func_8002ECB0
    /* 1F4B0 8002ECB0 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 1F4B4 8002ECB4 3400B3AF */  sw         $s3, 0x34($sp)
    /* 1F4B8 8002ECB8 21988000 */  addu       $s3, $a0, $zero
    /* 1F4BC 8002ECBC 3800B4AF */  sw         $s4, 0x38($sp)
    /* 1F4C0 8002ECC0 21A0A000 */  addu       $s4, $a1, $zero
    /* 1F4C4 8002ECC4 4800BEAF */  sw         $fp, 0x48($sp)
    /* 1F4C8 8002ECC8 4C00BFAF */  sw         $ra, 0x4C($sp)
    /* 1F4CC 8002ECCC 4400B7AF */  sw         $s7, 0x44($sp)
    /* 1F4D0 8002ECD0 4000B6AF */  sw         $s6, 0x40($sp)
    /* 1F4D4 8002ECD4 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 1F4D8 8002ECD8 3000B2AF */  sw         $s2, 0x30($sp)
    /* 1F4DC 8002ECDC 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 1F4E0 8002ECE0 2800B0AF */  sw         $s0, 0x28($sp)
    /* 1F4E4 8002ECE4 99036292 */  lbu        $v0, 0x399($s3)
    /* 1F4E8 8002ECE8 02006386 */  lh         $v1, 0x2($s3)
    /* 1F4EC 8002ECEC 07004010 */  beqz       $v0, .L8002ED0C
    /* 1F4F0 8002ECF0 801F1E3C */   lui       $fp, (0x1F800322 >> 16)
    /* 1F4F4 8002ECF4 23100300 */  negu       $v0, $v1
    /* 1F4F8 8002ECF8 91194228 */  slti       $v0, $v0, 0x1991
    /* 1F4FC 8002ECFC 06004010 */  beqz       $v0, .L8002ED18
    /* 1F500 8002ED00 00000000 */   nop
    /* 1F504 8002ED04 5BBB0008 */  j          .L8002ED6C
    /* 1F508 8002ED08 2000A0AF */   sw        $zero, 0x20($sp)
  .L8002ED0C:
    /* 1F50C 8002ED0C 91196228 */  slti       $v0, $v1, 0x1991
    /* 1F510 8002ED10 15004014 */  bnez       $v0, .L8002ED68
    /* 1F514 8002ED14 00000000 */   nop
  .L8002ED18:
    /* 1F518 8002ED18 92036292 */  lbu        $v0, 0x392($s3)
    /* 1F51C 8002ED1C 98036492 */  lbu        $a0, 0x398($s3)
    /* 1F520 8002ED20 40180200 */  sll        $v1, $v0, 1
    /* 1F524 8002ED24 21186200 */  addu       $v1, $v1, $v0
    /* 1F528 8002ED28 80180300 */  sll        $v1, $v1, 2
    /* 1F52C 8002ED2C 40110400 */  sll        $v0, $a0, 5
    /* 1F530 8002ED30 21104400 */  addu       $v0, $v0, $a0
    /* 1F534 8002ED34 C0100200 */  sll        $v0, $v0, 3
    /* 1F538 8002ED38 21186200 */  addu       $v1, $v1, $v0
    /* 1F53C 8002ED3C 1180013C */  lui        $at, %hi(D_8010C328)
    /* 1F540 8002ED40 21082300 */  addu       $at, $at, $v1
    /* 1F544 8002ED44 28C3228C */  lw         $v0, %lo(D_8010C328)($at)
    /* 1F548 8002ED48 00000000 */  nop
    /* 1F54C 8002ED4C 0F004230 */  andi       $v0, $v0, 0xF
    /* 1F550 8002ED50 40100200 */  sll        $v0, $v0, 1
    /* 1F554 8002ED54 0C80013C */  lui        $at, %hi(D_800C6C98)
    /* 1F558 8002ED58 21082200 */  addu       $at, $at, $v0
    /* 1F55C 8002ED5C 986C2284 */  lh         $v0, %lo(D_800C6C98)($at)
    /* 1F560 8002ED60 5BBB0008 */  j          .L8002ED6C
    /* 1F564 8002ED64 2000A2AF */   sw        $v0, 0x20($sp)
  .L8002ED68:
    /* 1F568 8002ED68 2000A0AF */  sw         $zero, 0x20($sp)
  .L8002ED6C:
    /* 1F56C 8002ED6C 1800C600 */  mult       $a2, $a2
    /* 1F570 8002ED70 FF009032 */  andi       $s0, $s4, 0xFF
    /* 1F574 8002ED74 21380002 */  addu       $a3, $s0, $zero
    /* 1F578 8002ED78 2000A88F */  lw         $t0, 0x20($sp)
    /* 1F57C 8002ED7C 99036492 */  lbu        $a0, 0x399($s3)
    /* 1F580 8002ED80 02006586 */  lh         $a1, 0x2($s3)
    /* 1F584 8002ED84 06006686 */  lh         $a2, 0x6($s3)
    /* 1F588 8002ED88 10000225 */  addiu      $v0, $t0, 0x10
    /* 1F58C 8002ED8C FF004230 */  andi       $v0, $v0, 0xFF
    /* 1F590 8002ED90 01008438 */  xori       $a0, $a0, 0x1
    /* 1F594 8002ED94 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1F598 8002ED98 12400000 */  mflo       $t0
    /* 1F59C 8002ED9C 189E010C */  jal        func_80067860
    /* 1F5A0 8002EDA0 1400A8AF */   sw        $t0, 0x14($sp)
    /* 1F5A4 8002EDA4 99036292 */  lbu        $v0, 0x399($s3)
    /* 1F5A8 8002EDA8 00000000 */  nop
    /* 1F5AC 8002EDAC 01004238 */  xori       $v0, $v0, 0x1
    /* 1F5B0 8002EDB0 40100200 */  sll        $v0, $v0, 1
    /* 1F5B4 8002EDB4 2110C203 */  addu       $v0, $fp, $v0
    /* 1F5B8 8002EDB8 22034390 */  lbu        $v1, (0x1F800322 & 0xFFFF)($v0)
    /* 1F5BC 8002EDBC FF000224 */  addiu      $v0, $zero, 0xFF
    /* 1F5C0 8002EDC0 03006214 */  bne        $v1, $v0, .L8002EDD0
    /* 1F5C4 8002EDC4 23181400 */   negu      $v1, $s4
    /* 1F5C8 8002EDC8 32BC0008 */  j          .L8002F0C8
    /* 1F5CC 8002EDCC 21100002 */   addu      $v0, $s0, $zero
  .L8002EDD0:
    /* 1F5D0 8002EDD0 FF006230 */  andi       $v0, $v1, 0xFF
    /* 1F5D4 8002EDD4 8100422C */  sltiu      $v0, $v0, 0x81
    /* 1F5D8 8002EDD8 02004014 */  bnez       $v0, .L8002EDE4
    /* 1F5DC 8002EDDC 7F006530 */   andi      $a1, $v1, 0x7F
    /* 1F5E0 8002EDE0 7F008532 */  andi       $a1, $s4, 0x7F
  .L8002EDE4:
    /* 1F5E4 8002EDE4 99036292 */  lbu        $v0, 0x399($s3)
    /* 1F5E8 8002EDE8 02006386 */  lh         $v1, 0x2($s3)
    /* 1F5EC 8002EDEC 06004010 */  beqz       $v0, .L8002EE08
    /* 1F5F0 8002EDF0 23100300 */   negu      $v0, $v1
    /* 1F5F4 8002EDF4 1FE04228 */  slti       $v0, $v0, -0x1FE1
    /* 1F5F8 8002EDF8 06004010 */  beqz       $v0, .L8002EE14
    /* 1F5FC 8002EDFC 21B80000 */   addu      $s7, $zero, $zero
    /* 1F600 8002EE00 B5BB0008 */  j          .L8002EED4
    /* 1F604 8002EE04 00000000 */   nop
  .L8002EE08:
    /* 1F608 8002EE08 1FE06228 */  slti       $v0, $v1, -0x1FE1
    /* 1F60C 8002EE0C 31004014 */  bnez       $v0, .L8002EED4
    /* 1F610 8002EE10 21B80000 */   addu      $s7, $zero, $zero
  .L8002EE14:
    /* 1F614 8002EE14 99036292 */  lbu        $v0, 0x399($s3)
    /* 1F618 8002EE18 02006386 */  lh         $v1, 0x2($s3)
    /* 1F61C 8002EE1C 06004010 */  beqz       $v0, .L8002EE38
    /* 1F620 8002EE20 23100300 */   negu      $v0, $v1
    /* 1F624 8002EE24 E2234228 */  slti       $v0, $v0, 0x23E2
    /* 1F628 8002EE28 06004014 */  bnez       $v0, .L8002EE44
    /* 1F62C 8002EE2C 21B80000 */   addu      $s7, $zero, $zero
    /* 1F630 8002EE30 B5BB0008 */  j          .L8002EED4
    /* 1F634 8002EE34 00000000 */   nop
  .L8002EE38:
    /* 1F638 8002EE38 E2236228 */  slti       $v0, $v1, 0x23E2
    /* 1F63C 8002EE3C 25004010 */  beqz       $v0, .L8002EED4
    /* 1F640 8002EE40 21B80000 */   addu      $s7, $zero, $zero
  .L8002EE44:
    /* 1F644 8002EE44 99036392 */  lbu        $v1, 0x399($s3)
    /* 1F648 8002EE48 00000000 */  nop
    /* 1F64C 8002EE4C 07006014 */  bnez       $v1, .L8002EE6C
    /* 1F650 8002EE50 01000224 */   addiu     $v0, $zero, 0x1
    /* 1F654 8002EE54 E0FFA224 */  addiu      $v0, $a1, -0x20
    /* 1F658 8002EE58 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1F65C 8002EE5C 3100422C */  sltiu      $v0, $v0, 0x31
    /* 1F660 8002EE60 09004014 */  bnez       $v0, .L8002EE88
    /* 1F664 8002EE64 00000000 */   nop
    /* 1F668 8002EE68 01000224 */  addiu      $v0, $zero, 0x1
  .L8002EE6C:
    /* 1F66C 8002EE6C 19006214 */  bne        $v1, $v0, .L8002EED4
    /* 1F670 8002EE70 21B80000 */   addu      $s7, $zero, $zero
    /* 1F674 8002EE74 D0FFA224 */  addiu      $v0, $a1, -0x30
    /* 1F678 8002EE78 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1F67C 8002EE7C 3100422C */  sltiu      $v0, $v0, 0x31
    /* 1F680 8002EE80 15004010 */  beqz       $v0, .L8002EED8
    /* 1F684 8002EE84 21B00000 */   addu      $s6, $zero, $zero
  .L8002EE88:
    /* 1F688 8002EE88 99036292 */  lbu        $v0, 0x399($s3)
    /* 1F68C 8002EE8C 01001724 */  addiu      $s7, $zero, 0x1
    /* 1F690 8002EE90 FF008332 */  andi       $v1, $s4, 0xFF
    /* 1F694 8002EE94 C0110200 */  sll        $v0, $v0, 7
    /* 1F698 8002EE98 23204300 */  subu       $a0, $v0, $v1
    /* 1F69C 8002EE9C 00018324 */  addiu      $v1, $a0, 0x100
    /* 1F6A0 8002EEA0 02006104 */  bgez       $v1, .L8002EEAC
    /* 1F6A4 8002EEA4 21106000 */   addu      $v0, $v1, $zero
    /* 1F6A8 8002EEA8 FF018224 */  addiu      $v0, $a0, 0x1FF
  .L8002EEAC:
    /* 1F6AC 8002EEAC 03120200 */  sra        $v0, $v0, 8
    /* 1F6B0 8002EEB0 00120200 */  sll        $v0, $v0, 8
    /* 1F6B4 8002EEB4 23286200 */  subu       $a1, $v1, $v0
    /* 1F6B8 8002EEB8 FD000824 */  addiu      $t0, $zero, 0xFD
    /* 1F6BC 8002EEBC FF00A230 */  andi       $v0, $a1, 0xFF
    /* 1F6C0 8002EEC0 8100422C */  sltiu      $v0, $v0, 0x81
    /* 1F6C4 8002EEC4 03004010 */  beqz       $v0, .L8002EED4
    /* 1F6C8 8002EEC8 1800A8A3 */   sb        $t0, 0x18($sp)
    /* 1F6CC 8002EECC 03000824 */  addiu      $t0, $zero, 0x3
    /* 1F6D0 8002EED0 1800A8A3 */  sb         $t0, 0x18($sp)
  .L8002EED4:
    /* 1F6D4 8002EED4 21B00000 */  addu       $s6, $zero, $zero
  .L8002EED8:
    /* 1F6D8 8002EED8 03001524 */  addiu      $s5, $zero, 0x3
  .L8002EEDC:
    /* 1F6DC 8002EEDC 21900000 */  addu       $s2, $zero, $zero
  .L8002EEE0:
    /* 1F6E0 8002EEE0 99036292 */  lbu        $v0, 0x399($s3)
    /* 1F6E4 8002EEE4 00000000 */  nop
    /* 1F6E8 8002EEE8 01004238 */  xori       $v0, $v0, 0x1
    /* 1F6EC 8002EEEC 40100200 */  sll        $v0, $v0, 1
    /* 1F6F0 8002EEF0 21105E00 */  addu       $v0, $v0, $fp
    /* 1F6F4 8002EEF4 21105200 */  addu       $v0, $v0, $s2
    /* 1F6F8 8002EEF8 22034490 */  lbu        $a0, (0x1F800322 & 0xFFFF)($v0)
    /* 1F6FC 8002EEFC AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 1F700 8002EF00 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 1F704 8002EF04 19008200 */  multu      $a0, $v0
    /* 1F708 8002EF08 10400000 */  mfhi       $t0
    /* 1F70C 8002EF0C 02190800 */  srl        $v1, $t0, 4
    /* 1F710 8002EF10 40100300 */  sll        $v0, $v1, 1
    /* 1F714 8002EF14 21104300 */  addu       $v0, $v0, $v1
    /* 1F718 8002EF18 C0100200 */  sll        $v0, $v0, 3
    /* 1F71C 8002EF1C 23208200 */  subu       $a0, $a0, $v0
    /* 1F720 8002EF20 FF008430 */  andi       $a0, $a0, 0xFF
    /* 1F724 8002EF24 40810400 */  sll        $s0, $a0, 5
    /* 1F728 8002EF28 23800402 */  subu       $s0, $s0, $a0
    /* 1F72C 8002EF2C 80801000 */  sll        $s0, $s0, 2
    /* 1F730 8002EF30 21800402 */  addu       $s0, $s0, $a0
    /* 1F734 8002EF34 C0801000 */  sll        $s0, $s0, 3
    /* 1F738 8002EF38 1080083C */  lui        $t0, %hi(D_800FF748)
    /* 1F73C 8002EF3C 48F70825 */  addiu      $t0, $t0, %lo(D_800FF748)
    /* 1F740 8002EF40 21801001 */  addu       $s0, $t0, $s0
    /* 1F744 8002EF44 02006286 */  lh         $v0, 0x2($s3)
    /* 1F748 8002EF48 02000386 */  lh         $v1, 0x2($s0)
    /* 1F74C 8002EF4C 00000000 */  nop
    /* 1F750 8002EF50 23104300 */  subu       $v0, $v0, $v1
    /* 1F754 8002EF54 18004200 */  mult       $v0, $v0
    /* 1F758 8002EF58 06006286 */  lh         $v0, 0x6($s3)
    /* 1F75C 8002EF5C 06000386 */  lh         $v1, 0x6($s0)
    /* 1F760 8002EF60 12200000 */  mflo       $a0
    /* 1F764 8002EF64 23104300 */  subu       $v0, $v0, $v1
    /* 1F768 8002EF68 00000000 */  nop
    /* 1F76C 8002EF6C 18004200 */  mult       $v0, $v0
    /* 1F770 8002EF70 12180000 */  mflo       $v1
    /* 1F774 8002EF74 4AC4020C */  jal        func_800B1128
    /* 1F778 8002EF78 21208300 */   addu      $a0, $a0, $v1
    /* 1F77C 8002EF7C 0800038E */  lw         $v1, 0x8($s0)
    /* 1F780 8002EF80 028A0200 */  srl        $s1, $v0, 8
    /* 1F784 8002EF84 18007100 */  mult       $v1, $s1
    /* 1F788 8002EF88 12480000 */  mflo       $t1
    /* 1F78C 8002EF8C 1000028E */  lw         $v0, 0x10($s0)
    /* 1F790 8002EF90 00000000 */  nop
    /* 1F794 8002EF94 18005100 */  mult       $v0, $s1
    /* 1F798 8002EF98 02000696 */  lhu        $a2, 0x2($s0)
    /* 1F79C 8002EF9C 06000796 */  lhu        $a3, 0x6($s0)
    /* 1F7A0 8002EFA0 2130C900 */  addu       $a2, $a2, $t1
    /* 1F7A4 8002EFA4 00340600 */  sll        $a2, $a2, 16
    /* 1F7A8 8002EFA8 F402C28F */  lw         $v0, (0x1F8002F4 & 0xFFFF)($fp)
    /* 1F7AC 8002EFAC 03340600 */  sra        $a2, $a2, 16
    /* 1F7B0 8002EFB0 02004484 */  lh         $a0, 0x2($v0)
    /* 1F7B4 8002EFB4 06004584 */  lh         $a1, 0x6($v0)
    /* 1F7B8 8002EFB8 12180000 */  mflo       $v1
    /* 1F7BC 8002EFBC 2138E300 */  addu       $a3, $a3, $v1
    /* 1F7C0 8002EFC0 003C0700 */  sll        $a3, $a3, 16
    /* 1F7C4 8002EFC4 DB6C010C */  jal        func_8005B36C
    /* 1F7C8 8002EFC8 033C0700 */   sra       $a3, $a3, 16
    /* 1F7CC 8002EFCC 21284000 */  addu       $a1, $v0, $zero
    /* 1F7D0 8002EFD0 0600222E */  sltiu      $v0, $s1, 0x6
    /* 1F7D4 8002EFD4 0D004010 */  beqz       $v0, .L8002F00C
    /* 1F7D8 8002EFD8 80101100 */   sll       $v0, $s1, 2
    /* 1F7DC 8002EFDC 0180013C */  lui        $at, %hi(jtbl_80010F30)
    /* 1F7E0 8002EFE0 21082200 */  addu       $at, $at, $v0
    /* 1F7E4 8002EFE4 300F228C */  lw         $v0, %lo(jtbl_80010F30)($at)
    /* 1F7E8 8002EFE8 00000000 */  nop
    /* 1F7EC 8002EFEC 08004000 */  jr         $v0
    /* 1F7F0 8002EFF0 00000000 */   nop
  jlabel .L8002EFF4
    /* 1F7F4 8002EFF4 04BC0008 */  j          .L8002F010
    /* 1F7F8 8002EFF8 12000224 */   addiu     $v0, $zero, 0x12
  jlabel .L8002EFFC
    /* 1F7FC 8002EFFC 04BC0008 */  j          .L8002F010
    /* 1F800 8002F000 10000224 */   addiu     $v0, $zero, 0x10
  jlabel .L8002F004
    /* 1F804 8002F004 04BC0008 */  j          .L8002F010
    /* 1F808 8002F008 0E000224 */   addiu     $v0, $zero, 0xE
  .L8002F00C:
    /* 1F80C 8002F00C 0C000224 */  addiu      $v0, $zero, 0xC
  .L8002F010:
    /* 1F810 8002F010 2000A88F */  lw         $t0, 0x20($sp)
    /* 1F814 8002F014 00000000 */  nop
    /* 1F818 8002F018 21204800 */  addu       $a0, $v0, $t0
    /* 1F81C 8002F01C 2310B400 */  subu       $v0, $a1, $s4
    /* 1F820 8002F020 FF004330 */  andi       $v1, $v0, 0xFF
    /* 1F824 8002F024 8100622C */  sltiu      $v0, $v1, 0x81
    /* 1F828 8002F028 08004014 */  bnez       $v0, .L8002F04C
    /* 1F82C 8002F02C 2B106400 */   sltu      $v0, $v1, $a0
    /* 1F830 8002F030 23108502 */  subu       $v0, $s4, $a1
    /* 1F834 8002F034 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1F838 8002F038 2B104400 */  sltu       $v0, $v0, $a0
    /* 1F83C 8002F03C 05004010 */  beqz       $v0, .L8002F054
    /* 1F840 8002F040 01000224 */   addiu     $v0, $zero, 0x1
    /* 1F844 8002F044 23BC0008 */  j          .L8002F08C
    /* 1F848 8002F048 00000000 */   nop
  .L8002F04C:
    /* 1F84C 8002F04C 0F004014 */  bnez       $v0, .L8002F08C
    /* 1F850 8002F050 01000224 */   addiu     $v0, $zero, 0x1
  .L8002F054:
    /* 1F854 8002F054 1C004212 */  beq        $s2, $v0, .L8002F0C8
    /* 1F858 8002F058 FF008232 */   andi      $v0, $s4, 0xFF
    /* 1F85C 8002F05C 99036292 */  lbu        $v0, 0x399($s3)
    /* 1F860 8002F060 00000000 */  nop
    /* 1F864 8002F064 01004238 */  xori       $v0, $v0, 0x1
    /* 1F868 8002F068 40100200 */  sll        $v0, $v0, 1
    /* 1F86C 8002F06C 2110C203 */  addu       $v0, $fp, $v0
    /* 1F870 8002F070 23034390 */  lbu        $v1, (0x1F800323 & 0xFFFF)($v0)
    /* 1F874 8002F074 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 1F878 8002F078 12006210 */  beq        $v1, $v0, .L8002F0C4
    /* 1F87C 8002F07C 01005226 */   addiu     $s2, $s2, 0x1
    /* 1F880 8002F080 0200422A */  slti       $v0, $s2, 0x2
    /* 1F884 8002F084 96FF4014 */  bnez       $v0, .L8002EEE0
    /* 1F888 8002F088 00000000 */   nop
  .L8002F08C:
    /* 1F88C 8002F08C 0400E012 */  beqz       $s7, .L8002F0A0
    /* 1F890 8002F090 0100C232 */   andi      $v0, $s6, 0x1
    /* 1F894 8002F094 1800A893 */  lbu        $t0, 0x18($sp)
    /* 1F898 8002F098 2DBC0008 */  j          .L8002F0B4
    /* 1F89C 8002F09C 21A08802 */   addu      $s4, $s4, $t0
  .L8002F0A0:
    /* 1F8A0 8002F0A0 03004014 */  bnez       $v0, .L8002F0B0
    /* 1F8A4 8002F0A4 00000000 */   nop
    /* 1F8A8 8002F0A8 2DBC0008 */  j          .L8002F0B4
    /* 1F8AC 8002F0AC 21A09502 */   addu      $s4, $s4, $s5
  .L8002F0B0:
    /* 1F8B0 8002F0B0 23A09502 */  subu       $s4, $s4, $s5
  .L8002F0B4:
    /* 1F8B4 8002F0B4 0100D626 */  addiu      $s6, $s6, 0x1
    /* 1F8B8 8002F0B8 1000C22A */  slti       $v0, $s6, 0x10
    /* 1F8BC 8002F0BC 87FF4014 */  bnez       $v0, .L8002EEDC
    /* 1F8C0 8002F0C0 0300B526 */   addiu     $s5, $s5, 0x3
  .L8002F0C4:
    /* 1F8C4 8002F0C4 FF008232 */  andi       $v0, $s4, 0xFF
  .L8002F0C8:
    /* 1F8C8 8002F0C8 4C00BF8F */  lw         $ra, 0x4C($sp)
    /* 1F8CC 8002F0CC 4800BE8F */  lw         $fp, 0x48($sp)
    /* 1F8D0 8002F0D0 4400B78F */  lw         $s7, 0x44($sp)
    /* 1F8D4 8002F0D4 4000B68F */  lw         $s6, 0x40($sp)
    /* 1F8D8 8002F0D8 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 1F8DC 8002F0DC 3800B48F */  lw         $s4, 0x38($sp)
    /* 1F8E0 8002F0E0 3400B38F */  lw         $s3, 0x34($sp)
    /* 1F8E4 8002F0E4 3000B28F */  lw         $s2, 0x30($sp)
    /* 1F8E8 8002F0E8 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 1F8EC 8002F0EC 2800B08F */  lw         $s0, 0x28($sp)
    /* 1F8F0 8002F0F0 5000BD27 */  addiu      $sp, $sp, 0x50
    /* 1F8F4 8002F0F4 0800E003 */  jr         $ra
    /* 1F8F8 8002F0F8 00000000 */   nop
endlabel func_8002ECB0
