nonmatching func_801B57A0, 0x2DC

glabel func_801B57A0
    /* 2C828 801B57A0 1180033C */  lui        $v1, %hi(D_8010A322)
    /* 2C82C 801B57A4 22A36390 */  lbu        $v1, %lo(D_8010A322)($v1)
    /* 2C830 801B57A8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2C834 801B57AC 1800B0AF */  sw         $s0, 0x18($sp)
    /* 2C838 801B57B0 1080103C */  lui        $s0, %hi(D_800FF748)
    /* 2C83C 801B57B4 48F71026 */  addiu      $s0, $s0, %lo(D_800FF748)
    /* 2C840 801B57B8 0800622C */  sltiu      $v0, $v1, 0x8
    /* 2C844 801B57BC AA004010 */  beqz       $v0, .L801B5A68
    /* 2C848 801B57C0 1C00BFAF */   sw        $ra, 0x1C($sp)
    /* 2C84C 801B57C4 80100300 */  sll        $v0, $v1, 2
    /* 2C850 801B57C8 1980013C */  lui        $at, %hi(jtbl_8018AD84)
    /* 2C854 801B57CC 21082200 */  addu       $at, $at, $v0
    /* 2C858 801B57D0 84AD228C */  lw         $v0, %lo(jtbl_8018AD84)($at)
    /* 2C85C 801B57D4 00000000 */  nop
    /* 2C860 801B57D8 08004000 */  jr         $v0
    /* 2C864 801B57DC 00000000 */   nop
  jlabel .L801B57E0
    /* 2C868 801B57E0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2C86C 801B57E4 21080102 */  addu       $at, $s0, $at
    /* 2C870 801B57E8 228F20A0 */  sb         $zero, -0x70DE($at)
    /* 2C874 801B57EC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2C878 801B57F0 21080102 */  addu       $at, $s0, $at
    /* 2C87C 801B57F4 238F20A0 */  sb         $zero, -0x70DD($at)
    /* 2C880 801B57F8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2C884 801B57FC 21080102 */  addu       $at, $s0, $at
    /* 2C888 801B5800 A8AB20A0 */  sb         $zero, -0x5458($at)
    /* 2C88C 801B5804 1E80013C */  lui        $at, %hi(D_801D8A48)
    /* 2C890 801B5808 488A20A0 */  sb         $zero, %lo(D_801D8A48)($at)
    /* 2C894 801B580C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2C898 801B5810 21080102 */  addu       $at, $s0, $at
    /* 2C89C 801B5814 DAAB2390 */  lbu        $v1, -0x5426($at)
    /* 2C8A0 801B5818 01000224 */  addiu      $v0, $zero, 0x1
    /* 2C8A4 801B581C 1E80013C */  lui        $at, %hi(D_801D8DFC)
    /* 2C8A8 801B5820 FC8D22A0 */  sb         $v0, %lo(D_801D8DFC)($at)
    /* 2C8AC 801B5824 1E80013C */  lui        $at, %hi(D_801D8DFB)
    /* 2C8B0 801B5828 FB8D20A0 */  sb         $zero, %lo(D_801D8DFB)($at)
    /* 2C8B4 801B582C 1E80013C */  lui        $at, %hi(D_801D8B18)
    /* 2C8B8 801B5830 188B20A0 */  sb         $zero, %lo(D_801D8B18)($at)
    /* 2C8BC 801B5834 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2C8C0 801B5838 21080102 */  addu       $at, $s0, $at
    /* 2C8C4 801B583C A1AB20A0 */  sb         $zero, -0x545F($at)
    /* 2C8C8 801B5840 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2C8CC 801B5844 21080102 */  addu       $at, $s0, $at
    /* 2C8D0 801B5848 A0AB20A0 */  sb         $zero, -0x5460($at)
    /* 2C8D4 801B584C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2C8D8 801B5850 21080102 */  addu       $at, $s0, $at
    /* 2C8DC 801B5854 A3AB20A0 */  sb         $zero, -0x545D($at)
    /* 2C8E0 801B5858 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2C8E4 801B585C 21080102 */  addu       $at, $s0, $at
    /* 2C8E8 801B5860 A2AB20A0 */  sb         $zero, -0x545E($at)
    /* 2C8EC 801B5864 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2C8F0 801B5868 21080102 */  addu       $at, $s0, $at
    /* 2C8F4 801B586C A6AB20A0 */  sb         $zero, -0x545A($at)
    /* 2C8F8 801B5870 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2C8FC 801B5874 21080102 */  addu       $at, $s0, $at
    /* 2C900 801B5878 A4AB20A0 */  sb         $zero, -0x545C($at)
    /* 2C904 801B587C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2C908 801B5880 21080102 */  addu       $at, $s0, $at
    /* 2C90C 801B5884 A7AB20A0 */  sb         $zero, -0x5459($at)
    /* 2C910 801B5888 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2C914 801B588C 21080102 */  addu       $at, $s0, $at
    /* 2C918 801B5890 A5AB20A0 */  sb         $zero, -0x545B($at)
    /* 2C91C 801B5894 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 2C920 801B5898 F0A220A0 */  sb         $zero, %lo(D_801DA2F0)($at)
    /* 2C924 801B589C 1E80013C */  lui        $at, %hi(D_801DADB6)
    /* 2C928 801B58A0 B6AD20A0 */  sb         $zero, %lo(D_801DADB6)($at)
    /* 2C92C 801B58A4 01006324 */  addiu      $v1, $v1, 0x1
    /* 2C930 801B58A8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2C934 801B58AC 21080102 */  addu       $at, $s0, $at
    /* 2C938 801B58B0 DAAB23A0 */  sb         $v1, -0x5426($at)
    /* 2C93C 801B58B4 9AD60608 */  j          .L801B5A68
    /* 2C940 801B58B8 00000000 */   nop
  jlabel .L801B58BC
    /* 2C944 801B58BC 36E1060C */  jal        func_801B84D8
    /* 2C948 801B58C0 01000424 */   addiu     $a0, $zero, 0x1
    /* 2C94C 801B58C4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2C950 801B58C8 21080102 */  addu       $at, $s0, $at
    /* 2C954 801B58CC DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2C958 801B58D0 8BD60608 */  j          .L801B5A2C
    /* 2C95C 801B58D4 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B58D8
    /* 2C960 801B58D8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2C964 801B58DC 21080102 */  addu       $at, $s0, $at
    /* 2C968 801B58E0 208F2390 */  lbu        $v1, -0x70E0($at)
    /* 2C96C 801B58E4 00000000 */  nop
    /* 2C970 801B58E8 15006010 */  beqz       $v1, .L801B5940
    /* 2C974 801B58EC 21200000 */   addu      $a0, $zero, $zero
    /* 2C978 801B58F0 1980073C */  lui        $a3, %hi(D_8018B1F0)
    /* 2C97C 801B58F4 F0B1E724 */  addiu      $a3, $a3, %lo(D_8018B1F0)
    /* 2C980 801B58F8 03000624 */  addiu      $a2, $zero, 0x3
    /* 2C984 801B58FC FF000524 */  addiu      $a1, $zero, 0xFF
    /* 2C988 801B5900 80190300 */  sll        $v1, $v1, 6
  .L801B5904:
    /* 2C98C 801B5904 21186700 */  addu       $v1, $v1, $a3
    /* 2C990 801B5908 80100400 */  sll        $v0, $a0, 2
    /* 2C994 801B590C 21104300 */  addu       $v0, $v0, $v1
    /* 2C998 801B5910 0000428C */  lw         $v0, 0x0($v0)
    /* 2C99C 801B5914 00000000 */  nop
    /* 2C9A0 801B5918 060046A0 */  sb         $a2, 0x6($v0)
    /* 2C9A4 801B591C 070044A0 */  sb         $a0, 0x7($v0)
    /* 2C9A8 801B5920 080045A0 */  sb         $a1, 0x8($v0)
    /* 2C9AC 801B5924 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2C9B0 801B5928 21080102 */  addu       $at, $s0, $at
    /* 2C9B4 801B592C 208F2390 */  lbu        $v1, -0x70E0($at)
    /* 2C9B8 801B5930 01008424 */  addiu      $a0, $a0, 0x1
    /* 2C9BC 801B5934 2A108300 */  slt        $v0, $a0, $v1
    /* 2C9C0 801B5938 F2FF4014 */  bnez       $v0, .L801B5904
    /* 2C9C4 801B593C 80190300 */   sll       $v1, $v1, 6
  .L801B5940:
    /* 2C9C8 801B5940 36E1060C */  jal        func_801B84D8
    /* 2C9CC 801B5944 21200000 */   addu      $a0, $zero, $zero
    /* 2C9D0 801B5948 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2C9D4 801B594C 21080102 */  addu       $at, $s0, $at
    /* 2C9D8 801B5950 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2C9DC 801B5954 8BD60608 */  j          .L801B5A2C
    /* 2C9E0 801B5958 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B595C
    /* 2C9E4 801B595C 40E4060C */  jal        func_801B9100
    /* 2C9E8 801B5960 00000000 */   nop
    /* 2C9EC 801B5964 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2C9F0 801B5968 21080102 */  addu       $at, $s0, $at
    /* 2C9F4 801B596C DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2C9F8 801B5970 8BD60608 */  j          .L801B5A2C
    /* 2C9FC 801B5974 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B5978
    /* 2CA00 801B5978 1FBC010C */  jal        func_8006F07C
    /* 2CA04 801B597C 10000424 */   addiu     $a0, $zero, 0x10
    /* 2CA08 801B5980 39004010 */  beqz       $v0, .L801B5A68
    /* 2CA0C 801B5984 00000000 */   nop
    /* 2CA10 801B5988 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CA14 801B598C 21080102 */  addu       $at, $s0, $at
    /* 2CA18 801B5990 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2CA1C 801B5994 8BD60608 */  j          .L801B5A2C
    /* 2CA20 801B5998 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B599C
    /* 2CA24 801B599C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CA28 801B59A0 21080102 */  addu       $at, $s0, $at
    /* 2CA2C 801B59A4 1F8F2290 */  lbu        $v0, -0x70E1($at)
    /* 2CA30 801B59A8 00000000 */  nop
    /* 2CA34 801B59AC 0F004230 */  andi       $v0, $v0, 0xF
    /* 2CA38 801B59B0 0A004014 */  bnez       $v0, .L801B59DC
    /* 2CA3C 801B59B4 01000424 */   addiu     $a0, $zero, 0x1
    /* 2CA40 801B59B8 BAAD060C */  jal        func_801AB6E8
    /* 2CA44 801B59BC 62000424 */   addiu     $a0, $zero, 0x62
    /* 2CA48 801B59C0 29004010 */  beqz       $v0, .L801B5A68
    /* 2CA4C 801B59C4 00000000 */   nop
    /* 2CA50 801B59C8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CA54 801B59CC 21080102 */  addu       $at, $s0, $at
    /* 2CA58 801B59D0 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2CA5C 801B59D4 8BD60608 */  j          .L801B5A2C
    /* 2CA60 801B59D8 01004224 */   addiu     $v0, $v0, 0x1
  .L801B59DC:
    /* 2CA64 801B59DC A33A060C */  jal        func_8018EA8C
    /* 2CA68 801B59E0 21280000 */   addu      $a1, $zero, $zero
    /* 2CA6C 801B59E4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CA70 801B59E8 21080102 */  addu       $at, $s0, $at
    /* 2CA74 801B59EC DAAB2390 */  lbu        $v1, -0x5426($at)
    /* 2CA78 801B59F0 00000000 */  nop
    /* 2CA7C 801B59F4 21186200 */  addu       $v1, $v1, $v0
    /* 2CA80 801B59F8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CA84 801B59FC 21080102 */  addu       $at, $s0, $at
    /* 2CA88 801B5A00 DAAB23A0 */  sb         $v1, -0x5426($at)
    /* 2CA8C 801B5A04 9AD60608 */  j          .L801B5A68
    /* 2CA90 801B5A08 00000000 */   nop
  jlabel .L801B5A0C
    /* 2CA94 801B5A0C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CA98 801B5A10 21080102 */  addu       $at, $s0, $at
    /* 2CA9C 801B5A14 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2CAA0 801B5A18 1E80013C */  lui        $at, %hi(D_801D92A3)
    /* 2CAA4 801B5A1C A39220A0 */  sb         $zero, %lo(D_801D92A3)($at)
    /* 2CAA8 801B5A20 1E80013C */  lui        $at, %hi(D_801D8FA0)
    /* 2CAAC 801B5A24 A08F20A0 */  sb         $zero, %lo(D_801D8FA0)($at)
    /* 2CAB0 801B5A28 01004224 */  addiu      $v0, $v0, 0x1
  .L801B5A2C:
    /* 2CAB4 801B5A2C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CAB8 801B5A30 21080102 */  addu       $at, $s0, $at
    /* 2CABC 801B5A34 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 2CAC0 801B5A38 9AD60608 */  j          .L801B5A68
    /* 2CAC4 801B5A3C 00000000 */   nop
  jlabel .L801B5A40
    /* 2CAC8 801B5A40 40000424 */  addiu      $a0, $zero, 0x40
    /* 2CACC 801B5A44 37BC010C */  jal        func_8006F0DC
    /* 2CAD0 801B5A48 01000524 */   addiu     $a1, $zero, 0x1
    /* 2CAD4 801B5A4C 06004010 */  beqz       $v0, .L801B5A68
    /* 2CAD8 801B5A50 00000000 */   nop
    /* 2CADC 801B5A54 7F5C000C */  jal        func_800171FC
    /* 2CAE0 801B5A58 01000424 */   addiu     $a0, $zero, 0x1
    /* 2CAE4 801B5A5C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CAE8 801B5A60 21080102 */  addu       $at, $s0, $at
    /* 2CAEC 801B5A64 DAAB20A0 */  sb         $zero, -0x5426($at)
  .L801B5A68:
    /* 2CAF0 801B5A68 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 2CAF4 801B5A6C 1800B08F */  lw         $s0, 0x18($sp)
    /* 2CAF8 801B5A70 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2CAFC 801B5A74 0800E003 */  jr         $ra
    /* 2CB00 801B5A78 00000000 */   nop
endlabel func_801B57A0
