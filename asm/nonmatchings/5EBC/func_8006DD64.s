nonmatching func_8006DD64, 0x88C

glabel func_8006DD64
    /* 5E564 8006DD64 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 5E568 8006DD68 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5E56C 8006DD6C 21908000 */  addu       $s2, $a0, $zero
    /* 5E570 8006DD70 01000224 */  addiu      $v0, $zero, 0x1
    /* 5E574 8006DD74 3000BFAF */  sw         $ra, 0x30($sp)
    /* 5E578 8006DD78 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 5E57C 8006DD7C 2800B6AF */  sw         $s6, 0x28($sp)
    /* 5E580 8006DD80 2400B5AF */  sw         $s5, 0x24($sp)
    /* 5E584 8006DD84 2000B4AF */  sw         $s4, 0x20($sp)
    /* 5E588 8006DD88 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 5E58C 8006DD8C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5E590 8006DD90 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5E594 8006DD94 A70342A2 */  sb         $v0, 0x3A7($s2)
    /* 5E598 8006DD98 476F010C */  jal        func_8005BD1C
    /* 5E59C 8006DD9C D10342A2 */   sb        $v0, 0x3D1($s2)
    /* 5E5A0 8006DDA0 02004486 */  lh         $a0, 0x2($s2)
    /* 5E5A4 8006DDA4 06004586 */  lh         $a1, 0x6($s2)
    /* 5E5A8 8006DDA8 801F063C */  lui        $a2, (0x1F800036 >> 16)
    /* 5E5AC 8006DDAC 3600C684 */  lh         $a2, (0x1F800036 & 0xFFFF)($a2)
    /* 5E5B0 8006DDB0 801F073C */  lui        $a3, (0x1F800066 >> 16)
    /* 5E5B4 8006DDB4 6600E784 */  lh         $a3, (0x1F800066 & 0xFFFF)($a3)
    /* 5E5B8 8006DDB8 DB6C010C */  jal        func_8005B36C
    /* 5E5BC 8006DDBC 801F153C */   lui       $s5, (0x1F8002A9 >> 16)
    /* 5E5C0 8006DDC0 1080103C */  lui        $s0, %hi(D_800FF748)
    /* 5E5C4 8006DDC4 48F71026 */  addiu      $s0, $s0, %lo(D_800FF748)
    /* 5E5C8 8006DDC8 21B84000 */  addu       $s7, $v0, $zero
    /* 5E5CC 8006DDCC 801F033C */  lui        $v1, (0x1F8002B0 >> 16)
    /* 5E5D0 8006DDD0 B002638C */  lw         $v1, (0x1F8002B0 & 0xFFFF)($v1)
    /* 5E5D4 8006DDD4 01000224 */  addiu      $v0, $zero, 0x1
    /* 5E5D8 8006DDD8 03006210 */  beq        $v1, $v0, .L8006DDE8
    /* 5E5DC 8006DDDC 03000224 */   addiu     $v0, $zero, 0x3
    /* 5E5E0 8006DDE0 07006214 */  bne        $v1, $v0, .L8006DE00
    /* 5E5E4 8006DDE4 00000000 */   nop
  .L8006DDE8:
    /* 5E5E8 8006DDE8 B9034392 */  lbu        $v1, 0x3B9($s2)
    /* 5E5EC 8006DDEC CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* 5E5F0 8006DDF0 CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* 5E5F4 8006DDF4 19006200 */  multu      $v1, $v0
    /* 5E5F8 8006DDF8 85B70108 */  j          .L8006DE14
    /* 5E5FC 8006DDFC 0F000324 */   addiu     $v1, $zero, 0xF
  .L8006DE00:
    /* 5E600 8006DE00 B9034392 */  lbu        $v1, 0x3B9($s2)
    /* 5E604 8006DE04 CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* 5E608 8006DE08 CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* 5E60C 8006DE0C 19006200 */  multu      $v1, $v0
    /* 5E610 8006DE10 17000324 */  addiu      $v1, $zero, 0x17
  .L8006DE14:
    /* 5E614 8006DE14 10400000 */  mfhi       $t0
    /* 5E618 8006DE18 C2100800 */  srl        $v0, $t0, 3
    /* 5E61C 8006DE1C FF004230 */  andi       $v0, $v0, 0xFF
    /* 5E620 8006DE20 23206200 */  subu       $a0, $v1, $v0
    /* 5E624 8006DE24 A802A292 */  lbu        $v0, (0x1F8002A8 & 0xFFFF)($s5)
    /* 5E628 8006DE28 8D034392 */  lbu        $v1, 0x38D($s2)
    /* 5E62C 8006DE2C 00000000 */  nop
    /* 5E630 8006DE30 05006210 */  beq        $v1, $v0, .L8006DE48
    /* 5E634 8006DE34 00000000 */   nop
    /* 5E638 8006DE38 A902A292 */  lbu        $v0, (0x1F8002A9 & 0xFFFF)($s5)
    /* 5E63C 8006DE3C 00000000 */  nop
    /* 5E640 8006DE40 05006214 */  bne        $v1, $v0, .L8006DE58
    /* 5E644 8006DE44 01000324 */   addiu     $v1, $zero, 0x1
  .L8006DE48:
    /* 5E648 8006DE48 21204002 */  addu       $a0, $s2, $zero
    /* 5E64C 8006DE4C 960340A2 */  sb         $zero, 0x396($s2)
    /* 5E650 8006DE50 6EB90108 */  j          .L8006E5B8
    /* 5E654 8006DE54 970380A0 */   sb        $zero, 0x397($a0)
  .L8006DE58:
    /* 5E658 8006DE58 9A02A292 */  lbu        $v0, (0x1F80029A & 0xFFFF)($s5)
    /* 5E65C 8006DE5C 00000000 */  nop
    /* 5E660 8006DE60 FF004230 */  andi       $v0, $v0, 0xFF
    /* 5E664 8006DE64 1F004314 */  bne        $v0, $v1, .L8006DEE4
    /* 5E668 8006DE68 00000000 */   nop
    /* 5E66C 8006DE6C 99034292 */  lbu        $v0, 0x399($s2)
    /* 5E670 8006DE70 02004386 */  lh         $v1, 0x2($s2)
    /* 5E674 8006DE74 06004010 */  beqz       $v0, .L8006DE90
    /* 5E678 8006DE78 23100300 */   negu      $v0, $v1
    /* 5E67C 8006DE7C 1EDC4228 */  slti       $v0, $v0, -0x23E2
    /* 5E680 8006DE80 29004010 */  beqz       $v0, .L8006DF28
    /* 5E684 8006DE84 00000000 */   nop
    /* 5E688 8006DE88 A7B70108 */  j          .L8006DE9C
    /* 5E68C 8006DE8C 00000000 */   nop
  .L8006DE90:
    /* 5E690 8006DE90 1EDC6228 */  slti       $v0, $v1, -0x23E2
    /* 5E694 8006DE94 24004010 */  beqz       $v0, .L8006DF28
    /* 5E698 8006DE98 00000000 */   nop
  .L8006DE9C:
    /* 5E69C 8006DE9C 98034292 */  lbu        $v0, 0x398($s2)
    /* 5E6A0 8006DEA0 00000000 */  nop
    /* 5E6A4 8006DEA4 2110A202 */  addu       $v0, $s5, $v0
    /* 5E6A8 8006DEA8 CF024390 */  lbu        $v1, (0x1F8002CF & 0xFFFF)($v0)
    /* 5E6AC 8006DEAC 01000224 */  addiu      $v0, $zero, 0x1
    /* 5E6B0 8006DEB0 1D006214 */  bne        $v1, $v0, .L8006DF28
    /* 5E6B4 8006DEB4 00000000 */   nop
    /* 5E6B8 8006DEB8 1C03A296 */  lhu        $v0, (0x1F80031C & 0xFFFF)($s5)
    /* 5E6BC 8006DEBC 00000000 */  nop
    /* 5E6C0 8006DEC0 00140200 */  sll        $v0, $v0, 16
    /* 5E6C4 8006DEC4 03140200 */  sra        $v0, $v0, 16
    /* 5E6C8 8006DEC8 2A104400 */  slt        $v0, $v0, $a0
    /* 5E6CC 8006DECC 16004010 */  beqz       $v0, .L8006DF28
    /* 5E6D0 8006DED0 00000000 */   nop
    /* 5E6D4 8006DED4 A902A292 */  lbu        $v0, (0x1F8002A9 & 0xFFFF)($s5)
    /* 5E6D8 8006DED8 00000000 */  nop
    /* 5E6DC 8006DEDC 12004014 */  bnez       $v0, .L8006DF28
    /* 5E6E0 8006DEE0 00000000 */   nop
  .L8006DEE4:
    /* 5E6E4 8006DEE4 21204002 */  addu       $a0, $s2, $zero
    /* 5E6E8 8006DEE8 0E000524 */  addiu      $a1, $zero, 0xE
    /* 5E6EC 8006DEEC 8C6E010C */  jal        func_8005BA30
    /* 5E6F0 8006DEF0 0F000624 */   addiu     $a2, $zero, 0xF
    /* 5E6F4 8006DEF4 FF00E532 */  andi       $a1, $s7, 0xFF
    /* 5E6F8 8006DEF8 AA034492 */  lbu        $a0, 0x3AA($s2)
    /* 5E6FC 8006DEFC F36D010C */  jal        func_8005B7CC
    /* 5E700 8006DF00 38000624 */   addiu     $a2, $zero, 0x38
    /* 5E704 8006DF04 FF004430 */  andi       $a0, $v0, 0xFF
    /* 5E708 8006DF08 AA034592 */  lbu        $a1, 0x3AA($s2)
    /* 5E70C 8006DF0C F36D010C */  jal        func_8005B7CC
    /* 5E710 8006DF10 10000624 */   addiu     $a2, $zero, 0x10
    /* 5E714 8006DF14 A003438E */  lw         $v1, 0x3A0($s2)
    /* 5E718 8006DF18 33B90108 */  j          .L8006E4CC
    /* 5E71C 8006DF1C AA0342A2 */   sb        $v0, 0x3AA($s2)
  .L8006DF20:
    /* 5E720 8006DF20 6DB90108 */  j          .L8006E5B4
    /* 5E724 8006DF24 A00342AE */   sw        $v0, 0x3A0($s2)
  .L8006DF28:
    /* 5E728 8006DF28 F402A28E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s5)
    /* 5E72C 8006DF2C 99034392 */  lbu        $v1, 0x399($s2)
    /* 5E730 8006DF30 02004284 */  lh         $v0, 0x2($v0)
    /* 5E734 8006DF34 05006010 */  beqz       $v1, .L8006DF4C
    /* 5E738 8006DF38 00000000 */   nop
    /* 5E73C 8006DF3C 05004004 */  bltz       $v0, .L8006DF54
    /* 5E740 8006DF40 00000000 */   nop
    /* 5E744 8006DF44 3FB80108 */  j          .L8006E0FC
    /* 5E748 8006DF48 00000000 */   nop
  .L8006DF4C:
    /* 5E74C 8006DF4C 6B004018 */  blez       $v0, .L8006E0FC
    /* 5E750 8006DF50 00000000 */   nop
  .L8006DF54:
    /* 5E754 8006DF54 99034292 */  lbu        $v0, 0x399($s2)
    /* 5E758 8006DF58 02004386 */  lh         $v1, 0x2($s2)
    /* 5E75C 8006DF5C 06004010 */  beqz       $v0, .L8006DF78
    /* 5E760 8006DF60 23100300 */   negu      $v0, $v1
    /* 5E764 8006DF64 70E64228 */  slti       $v0, $v0, -0x1990
    /* 5E768 8006DF68 64004010 */  beqz       $v0, .L8006E0FC
    /* 5E76C 8006DF6C 00000000 */   nop
    /* 5E770 8006DF70 E1B70108 */  j          .L8006DF84
    /* 5E774 8006DF74 00000000 */   nop
  .L8006DF78:
    /* 5E778 8006DF78 70E66228 */  slti       $v0, $v1, -0x1990
    /* 5E77C 8006DF7C 5F004010 */  beqz       $v0, .L8006E0FC
    /* 5E780 8006DF80 00000000 */   nop
  .L8006DF84:
    /* 5E784 8006DF84 F402A28E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s5)
    /* 5E788 8006DF88 3CA0043C */  lui        $a0, (0xA03C1689 >> 16)
    /* 5E78C 8006DF8C 02004384 */  lh         $v1, 0x2($v0)
    /* 5E790 8006DF90 89168434 */  ori        $a0, $a0, (0xA03C1689 & 0xFFFF)
    /* 5E794 8006DF94 02006104 */  bgez       $v1, .L8006DFA0
    /* 5E798 8006DF98 00000000 */   nop
    /* 5E79C 8006DF9C 23180300 */  negu       $v1, $v1
  .L8006DFA0:
    /* 5E7A0 8006DFA0 C0100300 */  sll        $v0, $v1, 3
    /* 5E7A4 8006DFA4 23104300 */  subu       $v0, $v0, $v1
    /* 5E7A8 8006DFA8 80120200 */  sll        $v0, $v0, 10
    /* 5E7AC 8006DFAC 18004400 */  mult       $v0, $a0
    /* 5E7B0 8006DFB0 10400000 */  mfhi       $t0
    /* 5E7B4 8006DFB4 21180201 */  addu       $v1, $t0, $v0
    /* 5E7B8 8006DFB8 431B0300 */  sra        $v1, $v1, 13
    /* 5E7BC 8006DFBC C3170200 */  sra        $v0, $v0, 31
    /* 5E7C0 8006DFC0 23186200 */  subu       $v1, $v1, $v0
    /* 5E7C4 8006DFC4 001C0300 */  sll        $v1, $v1, 16
    /* 5E7C8 8006DFC8 031C0300 */  sra        $v1, $v1, 16
    /* 5E7CC 8006DFCC 99034292 */  lbu        $v0, 0x399($s2)
    /* 5E7D0 8006DFD0 00000000 */  nop
    /* 5E7D4 8006DFD4 03004010 */  beqz       $v0, .L8006DFE4
    /* 5E7D8 8006DFD8 E0CC6324 */   addiu     $v1, $v1, -0x3320
    /* 5E7DC 8006DFDC FAB70108 */  j          .L8006DFE8
    /* 5E7E0 8006DFE0 23A00300 */   negu      $s4, $v1
  .L8006DFE4:
    /* 5E7E4 8006DFE4 21A06000 */  addu       $s4, $v1, $zero
  .L8006DFE8:
    /* 5E7E8 8006DFE8 00841400 */  sll        $s0, $s4, 16
    /* 5E7EC 8006DFEC 03841000 */  sra        $s0, $s0, 16
    /* 5E7F0 8006DFF0 21300002 */  addu       $a2, $s0, $zero
    /* 5E7F4 8006DFF4 02004486 */  lh         $a0, 0x2($s2)
    /* 5E7F8 8006DFF8 06004586 */  lh         $a1, 0x6($s2)
    /* 5E7FC 8006DFFC DB6C010C */  jal        func_8005B36C
    /* 5E800 8006E000 21380000 */   addu      $a3, $zero, $zero
    /* 5E804 8006E004 02004386 */  lh         $v1, 0x2($s2)
    /* 5E808 8006E008 00000000 */  nop
    /* 5E80C 8006E00C 23187000 */  subu       $v1, $v1, $s0
    /* 5E810 8006E010 18006300 */  mult       $v1, $v1
    /* 5E814 8006E014 12200000 */  mflo       $a0
    /* 5E818 8006E018 06004386 */  lh         $v1, 0x6($s2)
    /* 5E81C 8006E01C 00000000 */  nop
    /* 5E820 8006E020 18006300 */  mult       $v1, $v1
    /* 5E824 8006E024 21804000 */  addu       $s0, $v0, $zero
    /* 5E828 8006E028 12180000 */  mflo       $v1
    /* 5E82C 8006E02C 4AC4020C */  jal        func_800B1128
    /* 5E830 8006E030 21208300 */   addu      $a0, $a0, $v1
    /* 5E834 8006E034 00FC5330 */  andi       $s3, $v0, 0xFC00
    /* 5E838 8006E038 8E034396 */  lhu        $v1, 0x38E($s2)
    /* 5E83C 8006E03C 01000224 */  addiu      $v0, $zero, 0x1
    /* 5E840 8006E040 05006214 */  bne        $v1, $v0, .L8006E058
    /* 5E844 8006E044 0001622E */   sltiu     $v0, $s3, 0x100
    /* 5E848 8006E048 0004622E */  sltiu      $v0, $s3, 0x400
    /* 5E84C 8006E04C 05004014 */  bnez       $v0, .L8006E064
    /* 5E850 8006E050 01000224 */   addiu     $v0, $zero, 0x1
    /* 5E854 8006E054 0001622E */  sltiu      $v0, $s3, 0x100
  .L8006E058:
    /* 5E858 8006E058 08004010 */  beqz       $v0, .L8006E07C
    /* 5E85C 8006E05C 01000224 */   addiu     $v0, $zero, 0x1
    /* 5E860 8006E060 8E034396 */  lhu        $v1, 0x38E($s2)
  .L8006E064:
    /* 5E864 8006E064 00000000 */  nop
    /* 5E868 8006E068 11016210 */  beq        $v1, $v0, .L8006E4B0
    /* 5E86C 8006E06C 21204002 */   addu      $a0, $s2, $zero
    /* 5E870 8006E070 01000524 */  addiu      $a1, $zero, 0x1
    /* 5E874 8006E074 2AB90108 */  j          .L8006E4A8
    /* 5E878 8006E078 21300000 */   addu      $a2, $zero, $zero
  .L8006E07C:
    /* 5E87C 8006E07C 2310F002 */  subu       $v0, $s7, $s0
    /* 5E880 8006E080 FF004330 */  andi       $v1, $v0, 0xFF
    /* 5E884 8006E084 8100622C */  sltiu      $v0, $v1, 0x81
    /* 5E888 8006E088 08004014 */  bnez       $v0, .L8006E0AC
    /* 5E88C 8006E08C 10006228 */   slti      $v0, $v1, 0x10
    /* 5E890 8006E090 23101702 */  subu       $v0, $s0, $s7
    /* 5E894 8006E094 FF004230 */  andi       $v0, $v0, 0xFF
    /* 5E898 8006E098 10004228 */  slti       $v0, $v0, 0x10
    /* 5E89C 8006E09C 05004014 */  bnez       $v0, .L8006E0B4
    /* 5E8A0 8006E0A0 21204002 */   addu      $a0, $s2, $zero
    /* 5E8A4 8006E0A4 39B80108 */  j          .L8006E0E4
    /* 5E8A8 8006E0A8 00000000 */   nop
  .L8006E0AC:
    /* 5E8AC 8006E0AC 0D004010 */  beqz       $v0, .L8006E0E4
    /* 5E8B0 8006E0B0 21204002 */   addu      $a0, $s2, $zero
  .L8006E0B4:
    /* 5E8B4 8006E0B4 8E034396 */  lhu        $v1, 0x38E($s2)
    /* 5E8B8 8006E0B8 05000224 */  addiu      $v0, $zero, 0x5
    /* 5E8BC 8006E0BC 04006210 */  beq        $v1, $v0, .L8006E0D0
    /* 5E8C0 8006E0C0 21204002 */   addu      $a0, $s2, $zero
    /* 5E8C4 8006E0C4 05000524 */  addiu      $a1, $zero, 0x5
    /* 5E8C8 8006E0C8 8C6E010C */  jal        func_8005BA30
    /* 5E8CC 8006E0CC 21300000 */   addu      $a2, $zero, $zero
  .L8006E0D0:
    /* 5E8D0 8006E0D0 10000224 */  addiu      $v0, $zero, 0x10
    /* 5E8D4 8006E0D4 AA0350A2 */  sb         $s0, 0x3AA($s2)
    /* 5E8D8 8006E0D8 A40350A2 */  sb         $s0, 0x3A4($s2)
    /* 5E8DC 8006E0DC 6DB90108 */  j          .L8006E5B4
    /* 5E8E0 8006E0E0 A00342AE */   sw        $v0, 0x3A0($s2)
  .L8006E0E4:
    /* 5E8E4 8006E0E4 FF000532 */  andi       $a1, $s0, 0xFF
    /* 5E8E8 8006E0E8 FF00E632 */  andi       $a2, $s7, 0xFF
    /* 5E8EC 8006E0EC B622010C */  jal        func_80048AD8
    /* 5E8F0 8006E0F0 FFFF6732 */   andi      $a3, $s3, 0xFFFF
    /* 5E8F4 8006E0F4 6EB90108 */  j          .L8006E5B8
    /* 5E8F8 8006E0F8 21204002 */   addu      $a0, $s2, $zero
  .L8006E0FC:
    /* 5E8FC 8006E0FC B002A38E */  lw         $v1, (0x1F8002B0 & 0xFFFF)($s5)
    /* 5E900 8006E100 04000224 */  addiu      $v0, $zero, 0x4
    /* 5E904 8006E104 46006214 */  bne        $v1, $v0, .L8006E220
    /* 5E908 8006E108 00000000 */   nop
    /* 5E90C 8006E10C BC034286 */  lh         $v0, 0x3BC($s2)
    /* 5E910 8006E110 00000000 */  nop
    /* 5E914 8006E114 42004010 */  beqz       $v0, .L8006E220
    /* 5E918 8006E118 00000000 */   nop
    /* 5E91C 8006E11C F402A48E */  lw         $a0, (0x1F8002F4 & 0xFFFF)($s5)
    /* 5E920 8006E120 02004286 */  lh         $v0, 0x2($s2)
    /* 5E924 8006E124 02008384 */  lh         $v1, 0x2($a0)
    /* 5E928 8006E128 00000000 */  nop
    /* 5E92C 8006E12C 23104300 */  subu       $v0, $v0, $v1
    /* 5E930 8006E130 18004200 */  mult       $v0, $v0
    /* 5E934 8006E134 06004286 */  lh         $v0, 0x6($s2)
    /* 5E938 8006E138 06008384 */  lh         $v1, 0x6($a0)
    /* 5E93C 8006E13C 12280000 */  mflo       $a1
    /* 5E940 8006E140 23104300 */  subu       $v0, $v0, $v1
    /* 5E944 8006E144 00000000 */  nop
    /* 5E948 8006E148 18004200 */  mult       $v0, $v0
    /* 5E94C 8006E14C 3F02023C */  lui        $v0, (0x23FFFFF >> 16)
    /* 5E950 8006E150 FFFF4234 */  ori        $v0, $v0, (0x23FFFFF & 0xFFFF)
    /* 5E954 8006E154 12180000 */  mflo       $v1
    /* 5E958 8006E158 2118A300 */  addu       $v1, $a1, $v1
    /* 5E95C 8006E15C 2A104300 */  slt        $v0, $v0, $v1
    /* 5E960 8006E160 2F004014 */  bnez       $v0, .L8006E220
    /* 5E964 8006E164 0BB6053C */   lui       $a1, (0xB60B60B7 >> 16)
    /* 5E968 8006E168 92034292 */  lbu        $v0, 0x392($s2)
    /* 5E96C 8006E16C 98034392 */  lbu        $v1, 0x398($s2)
    /* 5E970 8006E170 40200200 */  sll        $a0, $v0, 1
    /* 5E974 8006E174 21208200 */  addu       $a0, $a0, $v0
    /* 5E978 8006E178 80200400 */  sll        $a0, $a0, 2
    /* 5E97C 8006E17C 40110300 */  sll        $v0, $v1, 5
    /* 5E980 8006E180 21104300 */  addu       $v0, $v0, $v1
    /* 5E984 8006E184 C0100200 */  sll        $v0, $v0, 3
    /* 5E988 8006E188 21208200 */  addu       $a0, $a0, $v0
    /* 5E98C 8006E18C 1180013C */  lui        $at, %hi(D_8010C330)
    /* 5E990 8006E190 21082400 */  addu       $at, $at, $a0
    /* 5E994 8006E194 30C3238C */  lw         $v1, %lo(D_8010C330)($at)
    /* 5E998 8006E198 B760A534 */  ori        $a1, $a1, (0xB60B60B7 & 0xFFFF)
    /* 5E99C 8006E19C C21A0300 */  srl        $v1, $v1, 11
    /* 5E9A0 8006E1A0 7F006330 */  andi       $v1, $v1, 0x7F
    /* 5E9A4 8006E1A4 64006324 */  addiu      $v1, $v1, 0x64
    /* 5E9A8 8006E1A8 40100300 */  sll        $v0, $v1, 1
    /* 5E9AC 8006E1AC 21104300 */  addu       $v0, $v0, $v1
    /* 5E9B0 8006E1B0 C0100200 */  sll        $v0, $v0, 3
    /* 5E9B4 8006E1B4 23104300 */  subu       $v0, $v0, $v1
    /* 5E9B8 8006E1B8 40110200 */  sll        $v0, $v0, 5
    /* 5E9BC 8006E1BC 23100200 */  negu       $v0, $v0
    /* 5E9C0 8006E1C0 18004500 */  mult       $v0, $a1
    /* 5E9C4 8006E1C4 1180013C */  lui        $at, %hi(D_8010C32F)
    /* 5E9C8 8006E1C8 21082400 */  addu       $at, $at, $a0
    /* 5E9CC 8006E1CC 2FC32490 */  lbu        $a0, %lo(D_8010C32F)($at)
    /* 5E9D0 8006E1D0 02000724 */  addiu      $a3, $zero, 0x2
    /* 5E9D4 8006E1D4 0F008430 */  andi       $a0, $a0, 0xF
    /* 5E9D8 8006E1D8 10400000 */  mfhi       $t0
    /* 5E9DC 8006E1DC 21180201 */  addu       $v1, $t0, $v0
    /* 5E9E0 8006E1E0 C3190300 */  sra        $v1, $v1, 7
    /* 5E9E4 8006E1E4 C3170200 */  sra        $v0, $v0, 31
    /* 5E9E8 8006E1E8 23186200 */  subu       $v1, $v1, $v0
    /* 5E9EC 8006E1EC 23186400 */  subu       $v1, $v1, $a0
    /* 5E9F0 8006E1F0 46006324 */  addiu      $v1, $v1, 0x46
    /* 5E9F4 8006E1F4 F200A3A6 */  sh         $v1, (0x1F8000F2 & 0xFFFF)($s5)
    /* 5E9F8 8006E1F8 02004486 */  lh         $a0, 0x2($s2)
    /* 5E9FC 8006E1FC B4034692 */  lbu        $a2, 0x3B4($s2)
    /* 5EA00 8006E200 06004586 */  lh         $a1, 0x6($s2)
    /* 5EA04 8006E204 FEFFC624 */  addiu      $a2, $a2, -0x2
    /* 5EA08 8006E208 3E21010C */  jal        func_800484F8
    /* 5EA0C 8006E20C FFFFC630 */   andi      $a2, $a2, 0xFFFF
    /* 5EA10 8006E210 F800B496 */  lhu        $s4, (0x1F8000F8 & 0xFFFF)($s5)
    /* 5EA14 8006E214 FC00B696 */  lhu        $s6, (0x1F8000FC & 0xFFFF)($s5)
    /* 5EA18 8006E218 11B90108 */  j          .L8006E444
    /* 5EA1C 8006E21C 008C1400 */   sll       $s1, $s4, 16
  .L8006E220:
    /* 5EA20 8006E220 99034292 */  lbu        $v0, 0x399($s2)
    /* 5EA24 8006E224 00000000 */  nop
    /* 5EA28 8006E228 02004014 */  bnez       $v0, .L8006E234
    /* 5EA2C 8006E22C 60331124 */   addiu     $s1, $zero, 0x3360
    /* 5EA30 8006E230 A0CC1124 */  addiu      $s1, $zero, -0x3360
  .L8006E234:
    /* 5EA34 8006E234 B402A296 */  lhu        $v0, (0x1F8002B4 & 0xFFFF)($s5)
    /* 5EA38 8006E238 FF7F0324 */  addiu      $v1, $zero, 0x7FFF
    /* 5EA3C 8006E23C 00140200 */  sll        $v0, $v0, 16
    /* 5EA40 8006E240 03140200 */  sra        $v0, $v0, 16
    /* 5EA44 8006E244 29004314 */  bne        $v0, $v1, .L8006E2EC
    /* 5EA48 8006E248 30FD0224 */   addiu     $v0, $zero, -0x2D0
    /* 5EA4C 8006E24C 00241100 */  sll        $a0, $s1, 16
    /* 5EA50 8006E250 03240400 */  sra        $a0, $a0, 16
    /* 5EA54 8006E254 21280000 */  addu       $a1, $zero, $zero
    /* 5EA58 8006E258 4600A696 */  lhu        $a2, (0x1F800046 & 0xFFFF)($s5)
    /* 5EA5C 8006E25C 7600A796 */  lhu        $a3, (0x1F800076 & 0xFFFF)($s5)
    /* 5EA60 8006E260 00340600 */  sll        $a2, $a2, 16
    /* 5EA64 8006E264 03340600 */  sra        $a2, $a2, 16
    /* 5EA68 8006E268 003C0700 */  sll        $a3, $a3, 16
    /* 5EA6C 8006E26C DB6C010C */  jal        func_8005B36C
    /* 5EA70 8006E270 033C0700 */   sra       $a3, $a3, 16
    /* 5EA74 8006E274 7600A396 */  lhu        $v1, (0x1F800076 & 0xFFFF)($s5)
    /* 5EA78 8006E278 21804000 */  addu       $s0, $v0, $zero
    /* 5EA7C 8006E27C 001C0300 */  sll        $v1, $v1, 16
    /* 5EA80 8006E280 031C0300 */  sra        $v1, $v1, 16
    /* 5EA84 8006E284 02006104 */  bgez       $v1, .L8006E290
    /* 5EA88 8006E288 21206000 */   addu      $a0, $v1, $zero
    /* 5EA8C 8006E28C 23200400 */  negu       $a0, $a0
  .L8006E290:
    /* 5EA90 8006E290 F5108228 */  slti       $v0, $a0, 0x10F5
    /* 5EA94 8006E294 5A004014 */  bnez       $v0, .L8006E400
    /* 5EA98 8006E298 6666033C */   lui       $v1, (0x66666667 >> 16)
    /* 5EA9C 8006E29C 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
    /* 5EAA0 8006E2A0 0CEF8224 */  addiu      $v0, $a0, -0x10F4
    /* 5EAA4 8006E2A4 18004300 */  mult       $v0, $v1
    /* 5EAA8 8006E2A8 C3170200 */  sra        $v0, $v0, 31
    /* 5EAAC 8006E2AC 10400000 */  mfhi       $t0
    /* 5EAB0 8006E2B0 43190800 */  sra        $v1, $t0, 5
    /* 5EAB4 8006E2B4 23186200 */  subu       $v1, $v1, $v0
    /* 5EAB8 8006E2B8 FF006230 */  andi       $v0, $v1, 0xFF
    /* 5EABC 8006E2BC 2000422C */  sltiu      $v0, $v0, 0x20
    /* 5EAC0 8006E2C0 02004014 */  bnez       $v0, .L8006E2CC
    /* 5EAC4 8006E2C4 00000000 */   nop
    /* 5EAC8 8006E2C8 20000324 */  addiu      $v1, $zero, 0x20
  .L8006E2CC:
    /* 5EACC 8006E2CC FF000532 */  andi       $a1, $s0, 0xFF
    /* 5EAD0 8006E2D0 99034492 */  lbu        $a0, 0x399($s2)
    /* 5EAD4 8006E2D4 FF006630 */  andi       $a2, $v1, 0xFF
    /* 5EAD8 8006E2D8 C0210400 */  sll        $a0, $a0, 7
    /* 5EADC 8006E2DC F36D010C */  jal        func_8005B7CC
    /* 5EAE0 8006E2E0 80008430 */   andi      $a0, $a0, 0x80
    /* 5EAE4 8006E2E4 00B90108 */  j          .L8006E400
    /* 5EAE8 8006E2E8 21804000 */   addu      $s0, $v0, $zero
  .L8006E2EC:
    /* 5EAEC 8006E2EC 6A22010C */  jal        func_800489A8
    /* 5EAF0 8006E2F0 F200A2A6 */   sh        $v0, (0x1F8000F2 & 0xFFFF)($s5)
    /* 5EAF4 8006E2F4 F800A396 */  lhu        $v1, (0x1F8000F8 & 0xFFFF)($s5)
    /* 5EAF8 8006E2F8 02004286 */  lh         $v0, 0x2($s2)
    /* 5EAFC 8006E2FC 001C0300 */  sll        $v1, $v1, 16
    /* 5EB00 8006E300 032C0300 */  sra        $a1, $v1, 16
    /* 5EB04 8006E304 23104500 */  subu       $v0, $v0, $a1
    /* 5EB08 8006E308 18004200 */  mult       $v0, $v0
    /* 5EB0C 8006E30C FC00A396 */  lhu        $v1, (0x1F8000FC & 0xFFFF)($s5)
    /* 5EB10 8006E310 06004286 */  lh         $v0, 0x6($s2)
    /* 5EB14 8006E314 001C0300 */  sll        $v1, $v1, 16
    /* 5EB18 8006E318 12200000 */  mflo       $a0
    /* 5EB1C 8006E31C 03340300 */  sra        $a2, $v1, 16
    /* 5EB20 8006E320 23104600 */  subu       $v0, $v0, $a2
    /* 5EB24 8006E324 18004200 */  mult       $v0, $v0
    /* 5EB28 8006E328 8F01023C */  lui        $v0, (0x18FFFFF >> 16)
    /* 5EB2C 8006E32C FFFF4234 */  ori        $v0, $v0, (0x18FFFFF & 0xFFFF)
    /* 5EB30 8006E330 12180000 */  mflo       $v1
    /* 5EB34 8006E334 21188300 */  addu       $v1, $a0, $v1
    /* 5EB38 8006E338 2A104300 */  slt        $v0, $v0, $v1
    /* 5EB3C 8006E33C 25004014 */  bnez       $v0, .L8006E3D4
    /* 5EB40 8006E340 00241100 */   sll       $a0, $s1, 16
    /* 5EB44 8006E344 A325010C */  jal        func_8004968C
    /* 5EB48 8006E348 21204002 */   addu      $a0, $s2, $zero
    /* 5EB4C 8006E34C 3F00033C */  lui        $v1, (0x3FFFFF >> 16)
    /* 5EB50 8006E350 FFFF6334 */  ori        $v1, $v1, (0x3FFFFF & 0xFFFF)
    /* 5EB54 8006E354 2B186200 */  sltu       $v1, $v1, $v0
    /* 5EB58 8006E358 1D006014 */  bnez       $v1, .L8006E3D0
    /* 5EB5C 8006E35C 00000000 */   nop
    /* 5EB60 8006E360 99034292 */  lbu        $v0, 0x399($s2)
    /* 5EB64 8006E364 00000000 */  nop
    /* 5EB68 8006E368 01004238 */  xori       $v0, $v0, 0x1
    /* 5EB6C 8006E36C 40100200 */  sll        $v0, $v0, 1
    /* 5EB70 8006E370 2110A202 */  addu       $v0, $s5, $v0
    /* 5EB74 8006E374 1E034390 */  lbu        $v1, (0x1F80031E & 0xFFFF)($v0)
    /* 5EB78 8006E378 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 5EB7C 8006E37C ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 5EB80 8006E380 19006200 */  multu      $v1, $v0
    /* 5EB84 8006E384 00241100 */  sll        $a0, $s1, 16
    /* 5EB88 8006E388 03240400 */  sra        $a0, $a0, 16
    /* 5EB8C 8006E38C 10400000 */  mfhi       $t0
    /* 5EB90 8006E390 02290800 */  srl        $a1, $t0, 4
    /* 5EB94 8006E394 40100500 */  sll        $v0, $a1, 1
    /* 5EB98 8006E398 21104500 */  addu       $v0, $v0, $a1
    /* 5EB9C 8006E39C C0100200 */  sll        $v0, $v0, 3
    /* 5EBA0 8006E3A0 23186200 */  subu       $v1, $v1, $v0
    /* 5EBA4 8006E3A4 FF006330 */  andi       $v1, $v1, 0xFF
    /* 5EBA8 8006E3A8 40110300 */  sll        $v0, $v1, 5
    /* 5EBAC 8006E3AC 23104300 */  subu       $v0, $v0, $v1
    /* 5EBB0 8006E3B0 80100200 */  sll        $v0, $v0, 2
    /* 5EBB4 8006E3B4 21104300 */  addu       $v0, $v0, $v1
    /* 5EBB8 8006E3B8 C0100200 */  sll        $v0, $v0, 3
    /* 5EBBC 8006E3BC 21100202 */  addu       $v0, $s0, $v0
    /* 5EBC0 8006E3C0 02004684 */  lh         $a2, 0x2($v0)
    /* 5EBC4 8006E3C4 06004784 */  lh         $a3, 0x6($v0)
    /* 5EBC8 8006E3C8 FDB80108 */  j          .L8006E3F4
    /* 5EBCC 8006E3CC 21280000 */   addu      $a1, $zero, $zero
  .L8006E3D0:
    /* 5EBD0 8006E3D0 00241100 */  sll        $a0, $s1, 16
  .L8006E3D4:
    /* 5EBD4 8006E3D4 03240400 */  sra        $a0, $a0, 16
    /* 5EBD8 8006E3D8 21280000 */  addu       $a1, $zero, $zero
    /* 5EBDC 8006E3DC F800A696 */  lhu        $a2, (0x1F8000F8 & 0xFFFF)($s5)
    /* 5EBE0 8006E3E0 FC00A796 */  lhu        $a3, (0x1F8000FC & 0xFFFF)($s5)
    /* 5EBE4 8006E3E4 00340600 */  sll        $a2, $a2, 16
    /* 5EBE8 8006E3E8 03340600 */  sra        $a2, $a2, 16
    /* 5EBEC 8006E3EC 003C0700 */  sll        $a3, $a3, 16
    /* 5EBF0 8006E3F0 033C0700 */  sra        $a3, $a3, 16
  .L8006E3F4:
    /* 5EBF4 8006E3F4 DB6C010C */  jal        func_8005B36C
    /* 5EBF8 8006E3F8 00000000 */   nop
    /* 5EBFC 8006E3FC 21804000 */  addu       $s0, $v0, $zero
  .L8006E400:
    /* 5EC00 8006E400 04000426 */  addiu      $a0, $s0, 0x4
    /* 5EC04 8006E404 F8008430 */  andi       $a0, $a0, 0xF8
    /* 5EC08 8006E408 99034592 */  lbu        $a1, 0x399($s2)
    /* 5EC0C 8006E40C 30000624 */  addiu      $a2, $zero, 0x30
    /* 5EC10 8006E410 C0290500 */  sll        $a1, $a1, 7
    /* 5EC14 8006E414 F36D010C */  jal        func_8005B7CC
    /* 5EC18 8006E418 8000A530 */   andi      $a1, $a1, 0x80
    /* 5EC1C 8006E41C FF005030 */  andi       $s0, $v0, 0xFF
    /* 5EC20 8006E420 21200002 */  addu       $a0, $s0, $zero
    /* 5EC24 8006E424 A579000C */  jal        func_8001E694
    /* 5EC28 8006E428 80020524 */   addiu     $a1, $zero, 0x280
    /* 5EC2C 8006E42C 21A02202 */  addu       $s4, $s1, $v0
    /* 5EC30 8006E430 21200002 */  addu       $a0, $s0, $zero
    /* 5EC34 8006E434 6979000C */  jal        func_8001E5A4
    /* 5EC38 8006E438 20040524 */   addiu     $a1, $zero, 0x420
    /* 5EC3C 8006E43C 21B04000 */  addu       $s6, $v0, $zero
    /* 5EC40 8006E440 008C1400 */  sll        $s1, $s4, 16
  .L8006E444:
    /* 5EC44 8006E444 02004286 */  lh         $v0, 0x2($s2)
    /* 5EC48 8006E448 038C1100 */  sra        $s1, $s1, 16
    /* 5EC4C 8006E44C 23105100 */  subu       $v0, $v0, $s1
    /* 5EC50 8006E450 18004200 */  mult       $v0, $v0
    /* 5EC54 8006E454 00841600 */  sll        $s0, $s6, 16
    /* 5EC58 8006E458 06004286 */  lh         $v0, 0x6($s2)
    /* 5EC5C 8006E45C 12180000 */  mflo       $v1
    /* 5EC60 8006E460 03841000 */  sra        $s0, $s0, 16
    /* 5EC64 8006E464 23105000 */  subu       $v0, $v0, $s0
    /* 5EC68 8006E468 18004200 */  mult       $v0, $v0
    /* 5EC6C 8006E46C 12480000 */  mflo       $t1
    /* 5EC70 8006E470 4AC4020C */  jal        func_800B1128
    /* 5EC74 8006E474 21206900 */   addu      $a0, $v1, $t1
    /* 5EC78 8006E478 21984000 */  addu       $s3, $v0, $zero
    /* 5EC7C 8006E47C 21302002 */  addu       $a2, $s1, $zero
    /* 5EC80 8006E480 02004486 */  lh         $a0, 0x2($s2)
    /* 5EC84 8006E484 06004586 */  lh         $a1, 0x6($s2)
    /* 5EC88 8006E488 DB6C010C */  jal        func_8005B36C
    /* 5EC8C 8006E48C 21380002 */   addu      $a3, $s0, $zero
    /* 5EC90 8006E490 21804000 */  addu       $s0, $v0, $zero
    /* 5EC94 8006E494 4000622E */  sltiu      $v0, $s3, 0x40
    /* 5EC98 8006E498 11004010 */  beqz       $v0, .L8006E4E0
    /* 5EC9C 8006E49C 21204002 */   addu      $a0, $s2, $zero
    /* 5ECA0 8006E4A0 0E000524 */  addiu      $a1, $zero, 0xE
    /* 5ECA4 8006E4A4 0F000624 */  addiu      $a2, $zero, 0xF
  .L8006E4A8:
    /* 5ECA8 8006E4A8 8C6E010C */  jal        func_8005BA30
    /* 5ECAC 8006E4AC 00000000 */   nop
  .L8006E4B0:
    /* 5ECB0 8006E4B0 FF00E432 */  andi       $a0, $s7, 0xFF
    /* 5ECB4 8006E4B4 AA034592 */  lbu        $a1, 0x3AA($s2)
    /* 5ECB8 8006E4B8 F36D010C */  jal        func_8005B7CC
    /* 5ECBC 8006E4BC 10000624 */   addiu     $a2, $zero, 0x10
    /* 5ECC0 8006E4C0 A003438E */  lw         $v1, 0x3A0($s2)
    /* 5ECC4 8006E4C4 AA0342A2 */  sb         $v0, 0x3AA($s2)
    /* 5ECC8 8006E4C8 A40342A2 */  sb         $v0, 0x3A4($s2)
  .L8006E4CC:
    /* 5ECCC 8006E4CC 1300622C */  sltiu      $v0, $v1, 0x13
    /* 5ECD0 8006E4D0 93FE4010 */  beqz       $v0, .L8006DF20
    /* 5ECD4 8006E4D4 EEFF6224 */   addiu     $v0, $v1, -0x12
    /* 5ECD8 8006E4D8 6DB90108 */  j          .L8006E5B4
    /* 5ECDC 8006E4DC A00340AE */   sw        $zero, 0x3A0($s2)
  .L8006E4E0:
    /* 5ECE0 8006E4E0 B402A296 */  lhu        $v0, (0x1F8002B4 & 0xFFFF)($s5)
    /* 5ECE4 8006E4E4 FF7F0324 */  addiu      $v1, $zero, 0x7FFF
    /* 5ECE8 8006E4E8 00140200 */  sll        $v0, $v0, 16
    /* 5ECEC 8006E4EC 03140200 */  sra        $v0, $v0, 16
    /* 5ECF0 8006E4F0 05004314 */  bne        $v0, $v1, .L8006E508
    /* 5ECF4 8006E4F4 8000622E */   sltiu     $v0, $s3, 0x80
    /* 5ECF8 8006E4F8 0001622E */  sltiu      $v0, $s3, 0x100
    /* 5ECFC 8006E4FC 04004014 */  bnez       $v0, .L8006E510
    /* 5ED00 8006E500 21204002 */   addu      $a0, $s2, $zero
    /* 5ED04 8006E504 8000622E */  sltiu      $v0, $s3, 0x80
  .L8006E508:
    /* 5ED08 8006E508 07004010 */  beqz       $v0, .L8006E528
    /* 5ED0C 8006E50C 21204002 */   addu      $a0, $s2, $zero
  .L8006E510:
    /* 5ED10 8006E510 FF000532 */  andi       $a1, $s0, 0xFF
    /* 5ED14 8006E514 FF00E632 */  andi       $a2, $s7, 0xFF
    /* 5ED18 8006E518 F123010C */  jal        func_80048FC4
    /* 5ED1C 8006E51C FFFF6732 */   andi      $a3, $s3, 0xFFFF
    /* 5ED20 8006E520 6EB90108 */  j          .L8006E5B8
    /* 5ED24 8006E524 21204002 */   addu      $a0, $s2, $zero
  .L8006E528:
    /* 5ED28 8006E528 0010622E */  sltiu      $v0, $s3, 0x1000
    /* 5ED2C 8006E52C 15004010 */  beqz       $v0, .L8006E584
    /* 5ED30 8006E530 0004622E */   sltiu     $v0, $s3, 0x400
    /* 5ED34 8006E534 A902A292 */  lbu        $v0, (0x1F8002A9 & 0xFFFF)($s5)
    /* 5ED38 8006E538 00000000 */  nop
    /* 5ED3C 8006E53C 11004010 */  beqz       $v0, .L8006E584
    /* 5ED40 8006E540 0004622E */   sltiu     $v0, $s3, 0x400
    /* 5ED44 8006E544 F402A28E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s5)
    /* 5ED48 8006E548 00000000 */  nop
    /* 5ED4C 8006E54C A8034490 */  lbu        $a0, 0x3A8($v0)
    /* 5ED50 8006E550 00000000 */  nop
    /* 5ED54 8006E554 23100402 */  subu       $v0, $s0, $a0
    /* 5ED58 8006E558 FF004330 */  andi       $v1, $v0, 0xFF
    /* 5ED5C 8006E55C 8100622C */  sltiu      $v0, $v1, 0x81
    /* 5ED60 8006E560 04004014 */  bnez       $v0, .L8006E574
    /* 5ED64 8006E564 23109000 */   subu      $v0, $a0, $s0
    /* 5ED68 8006E568 FF004230 */  andi       $v0, $v0, 0xFF
    /* 5ED6C 8006E56C 5EB90108 */  j          .L8006E578
    /* 5ED70 8006E570 21004228 */   slti      $v0, $v0, 0x21
  .L8006E574:
    /* 5ED74 8006E574 21006228 */  slti       $v0, $v1, 0x21
  .L8006E578:
    /* 5ED78 8006E578 DAFE4014 */  bnez       $v0, .L8006E0E4
    /* 5ED7C 8006E57C 21204002 */   addu      $a0, $s2, $zero
    /* 5ED80 8006E580 0004622E */  sltiu      $v0, $s3, 0x400
  .L8006E584:
    /* 5ED84 8006E584 07004014 */  bnez       $v0, .L8006E5A4
    /* 5ED88 8006E588 21204002 */   addu      $a0, $s2, $zero
    /* 5ED8C 8006E58C 01000524 */  addiu      $a1, $zero, 0x1
    /* 5ED90 8006E590 F800B4A6 */  sh         $s4, (0x1F8000F8 & 0xFFFF)($s5)
    /* 5ED94 8006E594 6E1E010C */  jal        func_800479B8
    /* 5ED98 8006E598 FC00B6A6 */   sh        $s6, (0x1F8000FC & 0xFFFF)($s5)
    /* 5ED9C 8006E59C 6EB90108 */  j          .L8006E5B8
    /* 5EDA0 8006E5A0 21204002 */   addu      $a0, $s2, $zero
  .L8006E5A4:
    /* 5EDA4 8006E5A4 FF000532 */  andi       $a1, $s0, 0xFF
    /* 5EDA8 8006E5A8 FF00E632 */  andi       $a2, $s7, 0xFF
    /* 5EDAC 8006E5AC 6523010C */  jal        func_80048D94
    /* 5EDB0 8006E5B0 FFFF6732 */   andi      $a3, $s3, 0xFFFF
  .L8006E5B4:
    /* 5EDB4 8006E5B4 21204002 */  addu       $a0, $s2, $zero
  .L8006E5B8:
    /* 5EDB8 8006E5B8 426E010C */  jal        func_8005B908
    /* 5EDBC 8006E5BC 00000000 */   nop
    /* 5EDC0 8006E5C0 3000BF8F */  lw         $ra, 0x30($sp)
    /* 5EDC4 8006E5C4 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 5EDC8 8006E5C8 2800B68F */  lw         $s6, 0x28($sp)
    /* 5EDCC 8006E5CC 2400B58F */  lw         $s5, 0x24($sp)
    /* 5EDD0 8006E5D0 2000B48F */  lw         $s4, 0x20($sp)
    /* 5EDD4 8006E5D4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 5EDD8 8006E5D8 1800B28F */  lw         $s2, 0x18($sp)
    /* 5EDDC 8006E5DC 1400B18F */  lw         $s1, 0x14($sp)
    /* 5EDE0 8006E5E0 1000B08F */  lw         $s0, 0x10($sp)
    /* 5EDE4 8006E5E4 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 5EDE8 8006E5E8 0800E003 */  jr         $ra
    /* 5EDEC 8006E5EC 00000000 */   nop
endlabel func_8006DD64
