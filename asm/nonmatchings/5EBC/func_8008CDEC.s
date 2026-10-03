nonmatching func_8008CDEC, 0x56C

glabel func_8008CDEC
    /* 7D5EC 8008CDEC D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 7D5F0 8008CDF0 2000B2AF */  sw         $s2, 0x20($sp)
    /* 7D5F4 8008CDF4 21908000 */  addu       $s2, $a0, $zero
    /* 7D5F8 8008CDF8 2400B3AF */  sw         $s3, 0x24($sp)
    /* 7D5FC 8008CDFC 2800BFAF */  sw         $ra, 0x28($sp)
    /* 7D600 8008CE00 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 7D604 8008CE04 1800B0AF */  sw         $s0, 0x18($sp)
    /* 7D608 8008CE08 97034392 */  lbu        $v1, 0x397($s2)
    /* 7D60C 8008CE0C 01001024 */  addiu      $s0, $zero, 0x1
    /* 7D610 8008CE10 73007010 */  beq        $v1, $s0, .L8008CFE0
    /* 7D614 8008CE14 801F133C */   lui       $s3, (0x1F80004E >> 16)
    /* 7D618 8008CE18 02006228 */  slti       $v0, $v1, 0x2
    /* 7D61C 8008CE1C 05004010 */  beqz       $v0, .L8008CE34
    /* 7D620 8008CE20 00000000 */   nop
    /* 7D624 8008CE24 0A006010 */  beqz       $v1, .L8008CE50
    /* 7D628 8008CE28 0BB6053C */   lui       $a1, (0xB60B60B7 >> 16)
    /* 7D62C 8008CE2C 93340208 */  j          .L8008D24C
    /* 7D630 8008CE30 00000000 */   nop
  .L8008CE34:
    /* 7D634 8008CE34 02000224 */  addiu      $v0, $zero, 0x2
    /* 7D638 8008CE38 A8006210 */  beq        $v1, $v0, .L8008D0DC
    /* 7D63C 8008CE3C 10000224 */   addiu     $v0, $zero, 0x10
    /* 7D640 8008CE40 D1006210 */  beq        $v1, $v0, .L8008D188
    /* 7D644 8008CE44 0BB6053C */   lui       $a1, (0xB60B60B7 >> 16)
    /* 7D648 8008CE48 93340208 */  j          .L8008D24C
    /* 7D64C 8008CE4C 00000000 */   nop
  .L8008CE50:
    /* 7D650 8008CE50 B9034392 */  lbu        $v1, 0x3B9($s2)
    /* 7D654 8008CE54 CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* 7D658 8008CE58 CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* 7D65C 8008CE5C 19006200 */  multu      $v1, $v0
    /* 7D660 8008CE60 0E000224 */  addiu      $v0, $zero, 0xE
    /* 7D664 8008CE64 801F033C */  lui        $v1, (0x1F80031C >> 16)
    /* 7D668 8008CE68 1C036384 */  lh         $v1, (0x1F80031C & 0xFFFF)($v1)
    /* 7D66C 8008CE6C 10480000 */  mfhi       $t1
    /* 7D670 8008CE70 C2200900 */  srl        $a0, $t1, 3
    /* 7D674 8008CE74 FF008430 */  andi       $a0, $a0, 0xFF
    /* 7D678 8008CE78 23104400 */  subu       $v0, $v0, $a0
    /* 7D67C 8008CE7C 2A186200 */  slt        $v1, $v1, $v0
    /* 7D680 8008CE80 0B006010 */  beqz       $v1, .L8008CEB0
    /* 7D684 8008CE84 00000000 */   nop
    /* 7D688 8008CE88 8D034392 */  lbu        $v1, 0x38D($s2)
    /* 7D68C 8008CE8C 801F023C */  lui        $v0, (0x1F8002AC >> 16)
    /* 7D690 8008CE90 AC024290 */  lbu        $v0, (0x1F8002AC & 0xFFFF)($v0)
    /* 7D694 8008CE94 00000000 */  nop
    /* 7D698 8008CE98 06006210 */  beq        $v1, $v0, .L8008CEB4
    /* 7D69C 8008CE9C 21204002 */   addu      $a0, $s2, $zero
    /* 7D6A0 8008CEA0 17BB010C */  jal        func_8006EC5C
    /* 7D6A4 8008CEA4 21204002 */   addu      $a0, $s2, $zero
    /* 7D6A8 8008CEA8 93340208 */  j          .L8008D24C
    /* 7D6AC 8008CEAC 0BB6053C */   lui       $a1, (0xB60B60B7 >> 16)
  .L8008CEB0:
    /* 7D6B0 8008CEB0 21204002 */  addu       $a0, $s2, $zero
  .L8008CEB4:
    /* 7D6B4 8008CEB4 74000524 */  addiu      $a1, $zero, 0x74
    /* 7D6B8 8008CEB8 8C6E010C */  jal        func_8005BA30
    /* 7D6BC 8008CEBC 21300000 */   addu      $a2, $zero, $zero
    /* 7D6C0 8008CEC0 AB034492 */  lbu        $a0, 0x3AB($s2)
    /* 7D6C4 8008CEC4 AA034592 */  lbu        $a1, 0x3AA($s2)
    /* 7D6C8 8008CEC8 F36D010C */  jal        func_8005B7CC
    /* 7D6CC 8008CECC 0C000624 */   addiu     $a2, $zero, 0xC
    /* 7D6D0 8008CED0 FF004430 */  andi       $a0, $v0, 0xFF
    /* 7D6D4 8008CED4 C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 7D6D8 8008CED8 23186400 */  subu       $v1, $v1, $a0
    /* 7D6DC 8008CEDC 21406000 */  addu       $t0, $v1, $zero
    /* 7D6E0 8008CEE0 02006104 */  bgez       $v1, .L8008CEEC
    /* 7D6E4 8008CEE4 AA0342A2 */   sb        $v0, 0x3AA($s2)
    /* 7D6E8 8008CEE8 FF006824 */  addiu      $t0, $v1, 0xFF
  .L8008CEEC:
    /* 7D6EC 8008CEEC 03120800 */  sra        $v0, $t0, 8
    /* 7D6F0 8008CEF0 00120200 */  sll        $v0, $v0, 8
    /* 7D6F4 8008CEF4 23106200 */  subu       $v0, $v1, $v0
    /* 7D6F8 8008CEF8 02004486 */  lh         $a0, 0x2($s2)
    /* 7D6FC 8008CEFC 06004586 */  lh         $a1, 0x6($s2)
    /* 7D700 8008CF00 C2034686 */  lh         $a2, 0x3C2($s2)
    /* 7D704 8008CF04 C6034786 */  lh         $a3, 0x3C6($s2)
    /* 7D708 8008CF08 00110200 */  sll        $v0, $v0, 4
    /* 7D70C 8008CF0C DB6C010C */  jal        func_8005B36C
    /* 7D710 8008CF10 260042A6 */   sh        $v0, 0x26($s2)
    /* 7D714 8008CF14 02004386 */  lh         $v1, 0x2($s2)
    /* 7D718 8008CF18 C2034486 */  lh         $a0, 0x3C2($s2)
    /* 7D71C 8008CF1C 00000000 */  nop
    /* 7D720 8008CF20 23186400 */  subu       $v1, $v1, $a0
    /* 7D724 8008CF24 18006300 */  mult       $v1, $v1
    /* 7D728 8008CF28 06004386 */  lh         $v1, 0x6($s2)
    /* 7D72C 8008CF2C C6034486 */  lh         $a0, 0x3C6($s2)
    /* 7D730 8008CF30 12280000 */  mflo       $a1
    /* 7D734 8008CF34 23186400 */  subu       $v1, $v1, $a0
    /* 7D738 8008CF38 00000000 */  nop
    /* 7D73C 8008CF3C 18006300 */  mult       $v1, $v1
    /* 7D740 8008CF40 21804000 */  addu       $s0, $v0, $zero
    /* 7D744 8008CF44 12180000 */  mflo       $v1
    /* 7D748 8008CF48 4AC4020C */  jal        func_800B1128
    /* 7D74C 8008CF4C 2120A300 */   addu      $a0, $a1, $v1
    /* 7D750 8008CF50 21884000 */  addu       $s1, $v0, $zero
    /* 7D754 8008CF54 4000222E */  sltiu      $v0, $s1, 0x40
    /* 7D758 8008CF58 1C004014 */  bnez       $v0, .L8008CFCC
    /* 7D75C 8008CF5C C0FF3126 */   addiu     $s1, $s1, -0x40
    /* 7D760 8008CF60 CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* 7D764 8008CF64 CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* 7D768 8008CF68 19002202 */  multu      $s1, $v0
    /* 7D76C 8008CF6C 10480000 */  mfhi       $t1
    /* 7D770 8008CF70 82880900 */  srl        $s1, $t1, 2
    /* 7D774 8008CF74 2000222E */  sltiu      $v0, $s1, 0x20
    /* 7D778 8008CF78 02004014 */  bnez       $v0, .L8008CF84
    /* 7D77C 8008CF7C 00000000 */   nop
    /* 7D780 8008CF80 20001124 */  addiu      $s1, $zero, 0x20
  .L8008CF84:
    /* 7D784 8008CF84 FF001032 */  andi       $s0, $s0, 0xFF
    /* 7D788 8008CF88 21200002 */  addu       $a0, $s0, $zero
    /* 7D78C 8008CF8C A579000C */  jal        func_8001E694
    /* 7D790 8008CF90 21282002 */   addu      $a1, $s1, $zero
    /* 7D794 8008CF94 21200002 */  addu       $a0, $s0, $zero
    /* 7D798 8008CF98 21282002 */  addu       $a1, $s1, $zero
    /* 7D79C 8008CF9C 6979000C */  jal        func_8001E5A4
    /* 7D7A0 8008CFA0 080042AE */   sw        $v0, 0x8($s2)
    /* 7D7A4 8008CFA4 0800448E */  lw         $a0, 0x8($s2)
    /* 7D7A8 8008CFA8 100042AE */  sw         $v0, 0x10($s2)
    /* 7D7AC 8008CFAC 02004296 */  lhu        $v0, 0x2($s2)
    /* 7D7B0 8008CFB0 1000458E */  lw         $a1, 0x10($s2)
    /* 7D7B4 8008CFB4 06004396 */  lhu        $v1, 0x6($s2)
    /* 7D7B8 8008CFB8 21104400 */  addu       $v0, $v0, $a0
    /* 7D7BC 8008CFBC 21186500 */  addu       $v1, $v1, $a1
    /* 7D7C0 8008CFC0 020042A6 */  sh         $v0, 0x2($s2)
    /* 7D7C4 8008CFC4 F5330208 */  j          .L8008CFD4
    /* 7D7C8 8008CFC8 060043A6 */   sh        $v1, 0x6($s2)
  .L8008CFCC:
    /* 7D7CC 8008CFCC 080040AE */  sw         $zero, 0x8($s2)
    /* 7D7D0 8008CFD0 100040AE */  sw         $zero, 0x10($s2)
  .L8008CFD4:
    /* 7D7D4 8008CFD4 97034292 */  lbu        $v0, 0x397($s2)
    /* 7D7D8 8008CFD8 35340208 */  j          .L8008D0D4
    /* 7D7DC 8008CFDC 01004224 */   addiu     $v0, $v0, 0x1
  .L8008CFE0:
    /* 7D7E0 8008CFE0 476F010C */  jal        func_8005BD1C
    /* 7D7E4 8008CFE4 21204002 */   addu      $a0, $s2, $zero
    /* 7D7E8 8008CFE8 AB034492 */  lbu        $a0, 0x3AB($s2)
    /* 7D7EC 8008CFEC AA034592 */  lbu        $a1, 0x3AA($s2)
    /* 7D7F0 8008CFF0 F36D010C */  jal        func_8005B7CC
    /* 7D7F4 8008CFF4 0C000624 */   addiu     $a2, $zero, 0xC
    /* 7D7F8 8008CFF8 FF004430 */  andi       $a0, $v0, 0xFF
    /* 7D7FC 8008CFFC C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 7D800 8008D000 23186400 */  subu       $v1, $v1, $a0
    /* 7D804 8008D004 21206000 */  addu       $a0, $v1, $zero
    /* 7D808 8008D008 02006104 */  bgez       $v1, .L8008D014
    /* 7D80C 8008D00C AA0342A2 */   sb        $v0, 0x3AA($s2)
    /* 7D810 8008D010 FF006424 */  addiu      $a0, $v1, 0xFF
  .L8008D014:
    /* 7D814 8008D014 03120400 */  sra        $v0, $a0, 8
    /* 7D818 8008D018 00120200 */  sll        $v0, $v0, 8
    /* 7D81C 8008D01C 23106200 */  subu       $v0, $v1, $v0
    /* 7D820 8008D020 0800448E */  lw         $a0, 0x8($s2)
    /* 7D824 8008D024 02004396 */  lhu        $v1, 0x2($s2)
    /* 7D828 8008D028 00110200 */  sll        $v0, $v0, 4
    /* 7D82C 8008D02C 260042A6 */  sh         $v0, 0x26($s2)
    /* 7D830 8008D030 06004296 */  lhu        $v0, 0x6($s2)
    /* 7D834 8008D034 21186400 */  addu       $v1, $v1, $a0
    /* 7D838 8008D038 1000448E */  lw         $a0, 0x10($s2)
    /* 7D83C 8008D03C 020043A6 */  sh         $v1, 0x2($s2)
    /* 7D840 8008D040 90034392 */  lbu        $v1, 0x390($s2)
    /* 7D844 8008D044 21104400 */  addu       $v0, $v0, $a0
    /* 7D848 8008D048 0500632C */  sltiu      $v1, $v1, 0x5
    /* 7D84C 8008D04C 15006014 */  bnez       $v1, .L8008D0A4
    /* 7D850 8008D050 060042A6 */   sh        $v0, 0x6($s2)
    /* 7D854 8008D054 6666053C */  lui        $a1, (0x66666667 >> 16)
    /* 7D858 8008D058 0800428E */  lw         $v0, 0x8($s2)
    /* 7D85C 8008D05C 6766A534 */  ori        $a1, $a1, (0x66666667 & 0xFFFF)
    /* 7D860 8008D060 C0180200 */  sll        $v1, $v0, 3
    /* 7D864 8008D064 21186200 */  addu       $v1, $v1, $v0
    /* 7D868 8008D068 18006500 */  mult       $v1, $a1
    /* 7D86C 8008D06C 1000428E */  lw         $v0, 0x10($s2)
    /* 7D870 8008D070 10400000 */  mfhi       $t0
    /* 7D874 8008D074 C0200200 */  sll        $a0, $v0, 3
    /* 7D878 8008D078 21208200 */  addu       $a0, $a0, $v0
    /* 7D87C 8008D07C 18008500 */  mult       $a0, $a1
    /* 7D880 8008D080 C31F0300 */  sra        $v1, $v1, 31
    /* 7D884 8008D084 83100800 */  sra        $v0, $t0, 2
    /* 7D888 8008D088 23104300 */  subu       $v0, $v0, $v1
    /* 7D88C 8008D08C C3270400 */  sra        $a0, $a0, 31
    /* 7D890 8008D090 080042AE */  sw         $v0, 0x8($s2)
    /* 7D894 8008D094 10280000 */  mfhi       $a1
    /* 7D898 8008D098 83100500 */  sra        $v0, $a1, 2
    /* 7D89C 8008D09C 23104400 */  subu       $v0, $v0, $a0
    /* 7D8A0 8008D0A0 100042AE */  sw         $v0, 0x10($s2)
  .L8008D0A4:
    /* 7D8A4 8008D0A4 90034292 */  lbu        $v0, 0x390($s2)
    /* 7D8A8 8008D0A8 00000000 */  nop
    /* 7D8AC 8008D0AC 67004014 */  bnez       $v0, .L8008D24C
    /* 7D8B0 8008D0B0 0BB6053C */   lui       $a1, (0xB60B60B7 >> 16)
    /* 7D8B4 8008D0B4 21204002 */  addu       $a0, $s2, $zero
    /* 7D8B8 8008D0B8 2C000524 */  addiu      $a1, $zero, 0x2C
    /* 7D8BC 8008D0BC 8C6E010C */  jal        func_8005BA30
    /* 7D8C0 8008D0C0 1A000624 */   addiu     $a2, $zero, 0x1A
    /* 7D8C4 8008D0C4 97034292 */  lbu        $v0, 0x397($s2)
    /* 7D8C8 8008D0C8 B00340A2 */  sb         $zero, 0x3B0($s2)
    /* 7D8CC 8008D0CC A00340AE */  sw         $zero, 0x3A0($s2)
    /* 7D8D0 8008D0D0 01004224 */  addiu      $v0, $v0, 0x1
  .L8008D0D4:
    /* 7D8D4 8008D0D4 92340208 */  j          .L8008D248
    /* 7D8D8 8008D0D8 970342A2 */   sb        $v0, 0x397($s2)
  .L8008D0DC:
    /* 7D8DC 8008D0DC 476F010C */  jal        func_8005BD1C
    /* 7D8E0 8008D0E0 21204002 */   addu      $a0, $s2, $zero
    /* 7D8E4 8008D0E4 801F023C */  lui        $v0, (0x1F80029A >> 16)
    /* 7D8E8 8008D0E8 9A024290 */  lbu        $v0, (0x1F80029A & 0xFFFF)($v0)
    /* 7D8EC 8008D0EC 00000000 */  nop
    /* 7D8F0 8008D0F0 19005014 */  bne        $v0, $s0, .L8008D158
    /* 7D8F4 8008D0F4 00000000 */   nop
    /* 7D8F8 8008D0F8 02004486 */  lh         $a0, 0x2($s2)
    /* 7D8FC 8008D0FC 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 7D900 8008D100 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 7D904 8008D104 06004586 */  lh         $a1, 0x6($s2)
    /* 7D908 8008D108 02004684 */  lh         $a2, 0x2($v0)
    /* 7D90C 8008D10C 06004784 */  lh         $a3, 0x6($v0)
    /* 7D910 8008D110 DB6C010C */  jal        func_8005B36C
    /* 7D914 8008D114 00000000 */   nop
    /* 7D918 8008D118 FF004430 */  andi       $a0, $v0, 0xFF
    /* 7D91C 8008D11C AA034592 */  lbu        $a1, 0x3AA($s2)
    /* 7D920 8008D120 F36D010C */  jal        func_8005B7CC
    /* 7D924 8008D124 0C000624 */   addiu     $a2, $zero, 0xC
    /* 7D928 8008D128 FF004430 */  andi       $a0, $v0, 0xFF
    /* 7D92C 8008D12C C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 7D930 8008D130 23186400 */  subu       $v1, $v1, $a0
    /* 7D934 8008D134 21206000 */  addu       $a0, $v1, $zero
    /* 7D938 8008D138 02006104 */  bgez       $v1, .L8008D144
    /* 7D93C 8008D13C AA0342A2 */   sb        $v0, 0x3AA($s2)
    /* 7D940 8008D140 FF006424 */  addiu      $a0, $v1, 0xFF
  .L8008D144:
    /* 7D944 8008D144 03120400 */  sra        $v0, $a0, 8
    /* 7D948 8008D148 00120200 */  sll        $v0, $v0, 8
    /* 7D94C 8008D14C 23106200 */  subu       $v0, $v1, $v0
    /* 7D950 8008D150 00110200 */  sll        $v0, $v0, 4
    /* 7D954 8008D154 260042A6 */  sh         $v0, 0x26($s2)
  .L8008D158:
    /* 7D958 8008D158 90034392 */  lbu        $v1, 0x390($s2)
    /* 7D95C 8008D15C 2E000224 */  addiu      $v0, $zero, 0x2E
    /* 7D960 8008D160 3A006214 */  bne        $v1, $v0, .L8008D24C
    /* 7D964 8008D164 0BB6053C */   lui       $a1, (0xB60B60B7 >> 16)
    /* 7D968 8008D168 21204002 */  addu       $a0, $s2, $zero
    /* 7D96C 8008D16C 01000524 */  addiu      $a1, $zero, 0x1
    /* 7D970 8008D170 8C6E010C */  jal        func_8005BA30
    /* 7D974 8008D174 21300000 */   addu      $a2, $zero, $zero
    /* 7D978 8008D178 82000224 */  addiu      $v0, $zero, 0x82
    /* 7D97C 8008D17C 960342A2 */  sb         $v0, 0x396($s2)
    /* 7D980 8008D180 92340208 */  j          .L8008D248
    /* 7D984 8008D184 970340A2 */   sb        $zero, 0x397($s2)
  .L8008D188:
    /* 7D988 8008D188 02004486 */  lh         $a0, 0x2($s2)
    /* 7D98C 8008D18C 06004586 */  lh         $a1, 0x6($s2)
    /* 7D990 8008D190 801F063C */  lui        $a2, (0x1F800044 >> 16)
    /* 7D994 8008D194 4400C684 */  lh         $a2, (0x1F800044 & 0xFFFF)($a2)
    /* 7D998 8008D198 801F073C */  lui        $a3, (0x1F800074 >> 16)
    /* 7D99C 8008D19C 7400E784 */  lh         $a3, (0x1F800074 & 0xFFFF)($a3)
    /* 7D9A0 8008D1A0 DB6C010C */  jal        func_8005B36C
    /* 7D9A4 8008D1A4 00000000 */   nop
    /* 7D9A8 8008D1A8 801F033C */  lui        $v1, (0x1F8002F4 >> 16)
    /* 7D9AC 8008D1AC F402638C */  lw         $v1, (0x1F8002F4 & 0xFFFF)($v1)
    /* 7D9B0 8008D1B0 00000000 */  nop
    /* 7D9B4 8008D1B4 A4036490 */  lbu        $a0, 0x3A4($v1)
    /* 7D9B8 8008D1B8 21804000 */  addu       $s0, $v0, $zero
    /* 7D9BC 8008D1BC 23100402 */  subu       $v0, $s0, $a0
    /* 7D9C0 8008D1C0 FF004330 */  andi       $v1, $v0, 0xFF
    /* 7D9C4 8008D1C4 8100622C */  sltiu      $v0, $v1, 0x81
    /* 7D9C8 8008D1C8 08004014 */  bnez       $v0, .L8008D1EC
    /* 7D9CC 8008D1CC 40006228 */   slti      $v0, $v1, 0x40
    /* 7D9D0 8008D1D0 23109000 */  subu       $v0, $a0, $s0
    /* 7D9D4 8008D1D4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 7D9D8 8008D1D8 40004228 */  slti       $v0, $v0, 0x40
    /* 7D9DC 8008D1DC 56004010 */  beqz       $v0, .L8008D338
    /* 7D9E0 8008D1E0 00000000 */   nop
    /* 7D9E4 8008D1E4 7D340208 */  j          .L8008D1F4
    /* 7D9E8 8008D1E8 00000000 */   nop
  .L8008D1EC:
    /* 7D9EC 8008D1EC 52004010 */  beqz       $v0, .L8008D338
    /* 7D9F0 8008D1F0 00000000 */   nop
  .L8008D1F4:
    /* 7D9F4 8008D1F4 02004686 */  lh         $a2, 0x2($s2)
    /* 7D9F8 8008D1F8 F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 7D9FC 8008D1FC 06004786 */  lh         $a3, 0x6($s2)
    /* 7DA00 8008D200 02004484 */  lh         $a0, 0x2($v0)
    /* 7DA04 8008D204 06004584 */  lh         $a1, 0x6($v0)
    /* 7DA08 8008D208 DB6C010C */  jal        func_8005B36C
    /* 7DA0C 8008D20C 00000000 */   nop
    /* 7DA10 8008D210 23105000 */  subu       $v0, $v0, $s0
    /* 7DA14 8008D214 FF004230 */  andi       $v0, $v0, 0xFF
    /* 7DA18 8008D218 8100422C */  sltiu      $v0, $v0, 0x81
    /* 7DA1C 8008D21C AC0342A2 */  sb         $v0, 0x3AC($s2)
    /* 7DA20 8008D220 40006296 */  lhu        $v0, (0x1F800040 & 0xFFFF)($s3)
    /* 7DA24 8008D224 00000000 */  nop
    /* 7DA28 8008D228 C20342A6 */  sh         $v0, 0x3C2($s2)
    /* 7DA2C 8008D22C 58006296 */  lhu        $v0, (0x1F800058 & 0xFFFF)($s3)
    /* 7DA30 8008D230 00000000 */  nop
    /* 7DA34 8008D234 C40342A6 */  sh         $v0, 0x3C4($s2)
    /* 7DA38 8008D238 70006296 */  lhu        $v0, (0x1F800070 & 0xFFFF)($s3)
    /* 7DA3C 8008D23C 970340A2 */  sb         $zero, 0x397($s2)
    /* 7DA40 8008D240 CE340208 */  j          .L8008D338
    /* 7DA44 8008D244 C60342A6 */   sh        $v0, 0x3C6($s2)
  .L8008D248:
    /* 7DA48 8008D248 0BB6053C */  lui        $a1, (0xB60B60B7 >> 16)
  .L8008D24C:
    /* 7DA4C 8008D24C 92034292 */  lbu        $v0, 0x392($s2)
    /* 7DA50 8008D250 98034492 */  lbu        $a0, 0x398($s2)
    /* 7DA54 8008D254 40180200 */  sll        $v1, $v0, 1
    /* 7DA58 8008D258 21186200 */  addu       $v1, $v1, $v0
    /* 7DA5C 8008D25C 80180300 */  sll        $v1, $v1, 2
    /* 7DA60 8008D260 40110400 */  sll        $v0, $a0, 5
    /* 7DA64 8008D264 21104400 */  addu       $v0, $v0, $a0
    /* 7DA68 8008D268 C0100200 */  sll        $v0, $v0, 3
    /* 7DA6C 8008D26C 21186200 */  addu       $v1, $v1, $v0
    /* 7DA70 8008D270 1180013C */  lui        $at, %hi(D_8010C330)
    /* 7DA74 8008D274 21082300 */  addu       $at, $at, $v1
    /* 7DA78 8008D278 30C3228C */  lw         $v0, %lo(D_8010C330)($at)
    /* 7DA7C 8008D27C B760A534 */  ori        $a1, $a1, (0xB60B60B7 & 0xFFFF)
    /* 7DA80 8008D280 C2120200 */  srl        $v0, $v0, 11
    /* 7DA84 8008D284 7F004230 */  andi       $v0, $v0, 0x7F
    /* 7DA88 8008D288 64004224 */  addiu      $v0, $v0, 0x64
    /* 7DA8C 8008D28C 80180200 */  sll        $v1, $v0, 2
    /* 7DA90 8008D290 21186200 */  addu       $v1, $v1, $v0
    /* 7DA94 8008D294 40190300 */  sll        $v1, $v1, 5
    /* 7DA98 8008D298 23180300 */  negu       $v1, $v1
    /* 7DA9C 8008D29C 18006500 */  mult       $v1, $a1
    /* 7DAA0 8008D2A0 4E006496 */  lhu        $a0, (0x1F80004E & 0xFFFF)($s3)
    /* 7DAA4 8008D2A4 00000000 */  nop
    /* 7DAA8 8008D2A8 00240400 */  sll        $a0, $a0, 16
    /* 7DAAC 8008D2AC 03240400 */  sra        $a0, $a0, 16
    /* 7DAB0 8008D2B0 10480000 */  mfhi       $t1
    /* 7DAB4 8008D2B4 21102301 */  addu       $v0, $t1, $v1
    /* 7DAB8 8008D2B8 C3110200 */  sra        $v0, $v0, 7
    /* 7DABC 8008D2BC C31F0300 */  sra        $v1, $v1, 31
    /* 7DAC0 8008D2C0 23104300 */  subu       $v0, $v0, $v1
    /* 7DAC4 8008D2C4 2A208200 */  slt        $a0, $a0, $v0
    /* 7DAC8 8008D2C8 02008010 */  beqz       $a0, .L8008D2D4
    /* 7DACC 8008D2CC 58001024 */   addiu     $s0, $zero, 0x58
    /* 7DAD0 8008D2D0 30001024 */  addiu      $s0, $zero, 0x30
  .L8008D2D4:
    /* 7DAD4 8008D2D4 FF000632 */  andi       $a2, $s0, 0xFF
    /* 7DAD8 8008D2D8 AA034292 */  lbu        $v0, 0x3AA($s2)
    /* 7DADC 8008D2DC AC034392 */  lbu        $v1, 0x3AC($s2)
    /* 7DAE0 8008D2E0 00000000 */  nop
    /* 7DAE4 8008D2E4 03006010 */  beqz       $v1, .L8008D2F4
    /* 7DAE8 8008D2E8 80004224 */   addiu     $v0, $v0, 0x80
    /* 7DAEC 8008D2EC BE340208 */  j          .L8008D2F8
    /* 7DAF0 8008D2F0 23804600 */   subu      $s0, $v0, $a2
  .L8008D2F4:
    /* 7DAF4 8008D2F4 21804600 */  addu       $s0, $v0, $a2
  .L8008D2F8:
    /* 7DAF8 8008D2F8 AE79000C */  jal        func_8001E6B8
    /* 7DAFC 8008D2FC 08000424 */   addiu     $a0, $zero, 0x8
    /* 7DB00 8008D300 10004224 */  addiu      $v0, $v0, 0x10
    /* 7DB04 8008D304 1000A2AF */  sw         $v0, 0x10($sp)
    /* 7DB08 8008D308 21204002 */  addu       $a0, $s2, $zero
    /* 7DB0C 8008D30C 0C000524 */  addiu      $a1, $zero, 0xC
    /* 7DB10 8008D310 FF000632 */  andi       $a2, $s0, 0xFF
    /* 7DB14 8008D314 8B51020C */  jal        func_8009462C
    /* 7DB18 8008D318 21380000 */   addu      $a3, $zero, $zero
    /* 7DB1C 8008D31C FF004230 */  andi       $v0, $v0, 0xFF
    /* 7DB20 8008D320 03004010 */  beqz       $v0, .L8008D330
    /* 7DB24 8008D324 00000000 */   nop
    /* 7DB28 8008D328 855E010C */  jal        func_80057A14
    /* 7DB2C 8008D32C 21204002 */   addu      $a0, $s2, $zero
  .L8008D330:
    /* 7DB30 8008D330 3A55020C */  jal        func_800954E8
    /* 7DB34 8008D334 21204002 */   addu      $a0, $s2, $zero
  .L8008D338:
    /* 7DB38 8008D338 2800BF8F */  lw         $ra, 0x28($sp)
    /* 7DB3C 8008D33C 2400B38F */  lw         $s3, 0x24($sp)
    /* 7DB40 8008D340 2000B28F */  lw         $s2, 0x20($sp)
    /* 7DB44 8008D344 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 7DB48 8008D348 1800B08F */  lw         $s0, 0x18($sp)
    /* 7DB4C 8008D34C 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 7DB50 8008D350 0800E003 */  jr         $ra
    /* 7DB54 8008D354 00000000 */   nop
endlabel func_8008CDEC
