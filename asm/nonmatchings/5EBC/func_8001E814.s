nonmatching func_8001E814, 0x2FC

glabel func_8001E814
    /* F014 8001E814 801F023C */  lui        $v0, (0x1F80029A >> 16)
    /* F018 8001E818 9A024290 */  lbu        $v0, (0x1F80029A & 0xFFFF)($v0)
    /* F01C 8001E81C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* F020 8001E820 1800B2AF */  sw         $s2, 0x18($sp)
    /* F024 8001E824 1180123C */  lui        $s2, %hi(D_8010A5A8)
    /* F028 8001E828 A8A55226 */  addiu      $s2, $s2, %lo(D_8010A5A8)
    /* F02C 8001E82C 1400B1AF */  sw         $s1, 0x14($sp)
    /* F030 8001E830 1080113C */  lui        $s1, %hi(D_800FF748)
    /* F034 8001E834 48F73126 */  addiu      $s1, $s1, %lo(D_800FF748)
    /* F038 8001E838 1000B0AF */  sw         $s0, 0x10($sp)
    /* F03C 8001E83C 801F103C */  lui        $s0, (0x1F800333 >> 16)
    /* F040 8001E840 0200422C */  sltiu      $v0, $v0, 0x2
    /* F044 8001E844 03004014 */  bnez       $v0, .L8001E854
    /* F048 8001E848 1C00BFAF */   sw        $ra, 0x1C($sp)
    /* F04C 8001E84C 306B020C */  jal        func_8009ACC0
    /* F050 8001E850 00000000 */   nop
  .L8001E854:
    /* F054 8001E854 801F033C */  lui        $v1, (0x1F80029A >> 16)
    /* F058 8001E858 9A026390 */  lbu        $v1, (0x1F80029A & 0xFFFF)($v1)
    /* F05C 8001E85C 00000000 */  nop
    /* F060 8001E860 0600622C */  sltiu      $v0, $v1, 0x6
    /* F064 8001E864 A3004010 */  beqz       $v0, .L8001EAF4
    /* F068 8001E868 80100300 */   sll       $v0, $v1, 2
    /* F06C 8001E86C 0180013C */  lui        $at, %hi(jtbl_8001061C)
    /* F070 8001E870 21082200 */  addu       $at, $at, $v0
    /* F074 8001E874 1C06228C */  lw         $v0, %lo(jtbl_8001061C)($at)
    /* F078 8001E878 00000000 */  nop
    /* F07C 8001E87C 08004000 */  jr         $v0
    /* F080 8001E880 00000000 */   nop
  jlabel .L8001E884
    /* F084 8001E884 E1020292 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($s0)
    /* F088 8001E888 05000324 */  addiu      $v1, $zero, 0x5
    /* F08C 8001E88C FF004230 */  andi       $v0, $v0, 0xFF
    /* F090 8001E890 0A004310 */  beq        $v0, $v1, .L8001E8BC
    /* F094 8001E894 03000324 */   addiu     $v1, $zero, 0x3
    /* F098 8001E898 98020292 */  lbu        $v0, (0x1F800298 & 0xFFFF)($s0)
    /* F09C 8001E89C 00000000 */  nop
    /* F0A0 8001E8A0 FF004230 */  andi       $v0, $v0, 0xFF
    /* F0A4 8001E8A4 06004310 */  beq        $v0, $v1, .L8001E8C0
    /* F0A8 8001E8A8 0C000424 */   addiu     $a0, $zero, 0xC
    /* F0AC 8001E8AC 05004292 */  lbu        $v0, 0x5($s2)
    /* F0B0 8001E8B0 00000000 */  nop
    /* F0B4 8001E8B4 02004014 */  bnez       $v0, .L8001E8C0
    /* F0B8 8001E8B8 00000000 */   nop
  .L8001E8BC:
    /* F0BC 8001E8BC 0D000424 */  addiu      $a0, $zero, 0xD
  .L8001E8C0:
    /* F0C0 8001E8C0 88AD020C */  jal        func_800AB620
    /* F0C4 8001E8C4 00000000 */   nop
    /* F0C8 8001E8C8 21200000 */  addu       $a0, $zero, $zero
    /* F0CC 8001E8CC A5880634 */  ori        $a2, $zero, 0x88A5
    /* F0D0 8001E8D0 BB880534 */  ori        $a1, $zero, 0x88BB
    /* F0D4 8001E8D4 0100013C */  lui        $at, (0x10000 >> 16)
    /* F0D8 8001E8D8 21082102 */  addu       $at, $s1, $at
    /* F0DC 8001E8DC 188F20A0 */  sb         $zero, -0x70E8($at)
    /* F0E0 8001E8E0 0100013C */  lui        $at, (0x10000 >> 16)
    /* F0E4 8001E8E4 21082102 */  addu       $at, $s1, $at
    /* F0E8 8001E8E8 198F20A0 */  sb         $zero, -0x70E7($at)
    /* F0EC 8001E8EC 350300A2 */  sb         $zero, (0x1F800335 & 0xFFFF)($s0)
    /* F0F0 8001E8F0 340300A2 */  sb         $zero, (0x1F800334 & 0xFFFF)($s0)
    /* F0F4 8001E8F4 330300A2 */  sb         $zero, (0x1F800333 & 0xFFFF)($s0)
    /* F0F8 8001E8F8 1180013C */  lui        $at, %hi(D_8010C538)
    /* F0FC 8001E8FC 38C520A0 */  sb         $zero, %lo(D_8010C538)($at)
    /* F100 8001E900 21102402 */  addu       $v0, $s1, $a0
  .L8001E904:
    /* F104 8001E904 01008424 */  addiu      $a0, $a0, 0x1
    /* F108 8001E908 21184600 */  addu       $v1, $v0, $a2
    /* F10C 8001E90C 21104500 */  addu       $v0, $v0, $a1
    /* F110 8001E910 000060A0 */  sb         $zero, 0x0($v1)
    /* F114 8001E914 000040A0 */  sb         $zero, 0x0($v0)
    /* F118 8001E918 16008228 */  slti       $v0, $a0, 0x16
    /* F11C 8001E91C F9FF4014 */  bnez       $v0, .L8001E904
    /* F120 8001E920 21102402 */   addu      $v0, $s1, $a0
    /* F124 8001E924 8C3F010C */  jal        func_8004FE30
    /* F128 8001E928 00000000 */   nop
  .L8001E92C:
    /* F12C 8001E92C 685C000C */  jal        func_800171A0
    /* F130 8001E930 00000000 */   nop
    /* F134 8001E934 BD7A0008 */  j          .L8001EAF4
    /* F138 8001E938 00000000 */   nop
  jlabel .L8001E93C
    /* F13C 8001E93C BA3F010C */  jal        func_8004FEE8
    /* F140 8001E940 D0000424 */   addiu     $a0, $zero, 0xD0
    /* F144 8001E944 885E000C */  jal        func_80017A20
    /* F148 8001E948 00000000 */   nop
    /* F14C 8001E94C FF004230 */  andi       $v0, $v0, 0xFF
    /* F150 8001E950 68004010 */  beqz       $v0, .L8001EAF4
    /* F154 8001E954 00000000 */   nop
    /* F158 8001E958 5477000C */  jal        func_8001DD50
    /* F15C 8001E95C 0C000424 */   addiu     $a0, $zero, 0xC
    /* F160 8001E960 21200000 */  addu       $a0, $zero, $zero
    /* F164 8001E964 E8010524 */  addiu      $a1, $zero, 0x1E8
    /* F168 8001E968 01000624 */  addiu      $a2, $zero, 0x1
    /* F16C 8001E96C 2C40010C */  jal        func_800500B0
    /* F170 8001E970 E9010724 */   addiu     $a3, $zero, 0x1E9
    /* F174 8001E974 01000224 */  addiu      $v0, $zero, 0x1
    /* F178 8001E978 980102AE */  sw         $v0, 0x198($s0)
    /* F17C 8001E97C 02000224 */  addiu      $v0, $zero, 0x2
    /* F180 8001E980 9C0102AE */  sw         $v0, 0x19C($s0)
    /* F184 8001E984 453F010C */  jal        func_8004FD14
    /* F188 8001E988 01000424 */   addiu     $a0, $zero, 0x1
    /* F18C 8001E98C 8F5C000C */  jal        func_8001723C
    /* F190 8001E990 21200000 */   addu      $a0, $zero, $zero
    /* F194 8001E994 6E83000C */  jal        func_80020DB8
    /* F198 8001E998 00000000 */   nop
    /* F19C 8001E99C 98020292 */  lbu        $v0, 0x298($s0)
    /* F1A0 8001E9A0 00000000 */  nop
    /* F1A4 8001E9A4 FF004330 */  andi       $v1, $v0, 0xFF
    /* F1A8 8001E9A8 03000224 */  addiu      $v0, $zero, 0x3
    /* F1AC 8001E9AC 08006214 */  bne        $v1, $v0, .L8001E9D0
    /* F1B0 8001E9B0 00000000 */   nop
    /* F1B4 8001E9B4 0E80023C */  lui        $v0, %hi(D_800E7DE8)
    /* F1B8 8001E9B8 E87D4290 */  lbu        $v0, %lo(D_800E7DE8)($v0)
    /* F1BC 8001E9BC 00000000 */  nop
    /* F1C0 8001E9C0 DAFF4310 */  beq        $v0, $v1, .L8001E92C
    /* F1C4 8001E9C4 00000000 */   nop
    /* F1C8 8001E9C8 BB7A0008 */  j          .L8001EAEC
    /* F1CC 8001E9CC 00000000 */   nop
  .L8001E9D0:
    /* F1D0 8001E9D0 E1020292 */  lbu        $v0, 0x2E1($s0)
    /* F1D4 8001E9D4 04000324 */  addiu      $v1, $zero, 0x4
    /* F1D8 8001E9D8 FF004230 */  andi       $v0, $v0, 0xFF
    /* F1DC 8001E9DC 43004310 */  beq        $v0, $v1, .L8001EAEC
    /* F1E0 8001E9E0 05000324 */   addiu     $v1, $zero, 0x5
    /* F1E4 8001E9E4 E1020292 */  lbu        $v0, 0x2E1($s0)
    /* F1E8 8001E9E8 0100013C */  lui        $at, (0x10000 >> 16)
    /* F1EC 8001E9EC 21082102 */  addu       $at, $s1, $at
    /* F1F0 8001E9F0 D9AB20A0 */  sb         $zero, -0x5427($at)
    /* F1F4 8001E9F4 FF004230 */  andi       $v0, $v0, 0xFF
    /* F1F8 8001E9F8 CCFF4314 */  bne        $v0, $v1, .L8001E92C
    /* F1FC 8001E9FC 00000000 */   nop
    /* F200 8001EA00 4F7D000C */  jal        func_8001F53C
    /* F204 8001EA04 00000000 */   nop
    /* F208 8001EA08 D525060C */  jal        func_80189754
    /* F20C 8001EA0C 00000000 */   nop
    /* F210 8001EA10 00040424 */  addiu      $a0, $zero, 0x400
    /* F214 8001EA14 00E40224 */  addiu      $v0, $zero, -0x1C00
    /* F218 8001EA18 0E0002A6 */  sh         $v0, 0xE($s0)
    /* F21C 8001EA1C FF000224 */  addiu      $v0, $zero, 0xFF
    /* F220 8001EA20 F80202AE */  sw         $v0, 0x2F8($s0)
    /* F224 8001EA24 00040224 */  addiu      $v0, $zero, 0x400
    /* F228 8001EA28 310300A2 */  sb         $zero, 0x331($s0)
    /* F22C 8001EA2C F6D4020C */  jal        func_800B53D8
    /* F230 8001EA30 2C0302AE */   sw        $v0, 0x32C($s0)
    /* F234 8001EA34 685C000C */  jal        func_800171A0
    /* F238 8001EA38 00000000 */   nop
    /* F23C 8001EA3C 4B7A0008 */  j          .L8001E92C
    /* F240 8001EA40 00000000 */   nop
  jlabel .L8001EA44
    /* F244 8001EA44 5D25060C */  jal        func_80189574
    /* F248 8001EA48 00000000 */   nop
    /* F24C 8001EA4C BD7A0008 */  j          .L8001EAF4
    /* F250 8001EA50 00000000 */   nop
  jlabel .L8001EA54
    /* F254 8001EA54 0F8A000C */  jal        func_8002283C
    /* F258 8001EA58 00000000 */   nop
    /* F25C 8001EA5C DA3E010C */  jal        func_8004FB68
    /* F260 8001EA60 21200000 */   addu      $a0, $zero, $zero
    /* F264 8001EA64 23004010 */  beqz       $v0, .L8001EAF4
    /* F268 8001EA68 00000000 */   nop
    /* F26C 8001EA6C 4B7A0008 */  j          .L8001E92C
    /* F270 8001EA70 00000000 */   nop
  jlabel .L8001EA74
    /* F274 8001EA74 0F8A000C */  jal        func_8002283C
    /* F278 8001EA78 00000000 */   nop
    /* F27C 8001EA7C 02C0010C */  jal        func_80070008
    /* F280 8001EA80 00000000 */   nop
    /* F284 8001EA84 21184000 */  addu       $v1, $v0, $zero
    /* F288 8001EA88 01000224 */  addiu      $v0, $zero, 0x1
    /* F28C 8001EA8C 05006210 */  beq        $v1, $v0, .L8001EAA4
    /* F290 8001EA90 02000224 */   addiu     $v0, $zero, 0x2
    /* F294 8001EA94 0D006210 */  beq        $v1, $v0, .L8001EACC
    /* F298 8001EA98 00000000 */   nop
    /* F29C 8001EA9C BD7A0008 */  j          .L8001EAF4
    /* F2A0 8001EAA0 00000000 */   nop
  .L8001EAA4:
    /* F2A4 8001EAA4 10000424 */  addiu      $a0, $zero, 0x10
    /* F2A8 8001EAA8 B03E010C */  jal        func_8004FAC0
    /* F2AC 8001EAAC 21280000 */   addu      $a1, $zero, $zero
    /* F2B0 8001EAB0 5E5C000C */  jal        func_80017178
    /* F2B4 8001EAB4 03000424 */   addiu     $a0, $zero, 0x3
    /* F2B8 8001EAB8 10000224 */  addiu      $v0, $zero, 0x10
    /* F2BC 8001EABC 1180013C */  lui        $at, %hi(D_8010C2A2)
    /* F2C0 8001EAC0 A2C222A0 */  sb         $v0, %lo(D_8010C2A2)($at)
    /* F2C4 8001EAC4 BD7A0008 */  j          .L8001EAF4
    /* F2C8 8001EAC8 00000000 */   nop
  .L8001EACC:
    /* F2CC 8001EACC 796B010C */  jal        func_8005ADE4
    /* F2D0 8001EAD0 00000000 */   nop
    /* F2D4 8001EAD4 4B7A0008 */  j          .L8001E92C
    /* F2D8 8001EAD8 00000000 */   nop
  jlabel .L8001EADC
    /* F2DC 8001EADC F13E010C */  jal        func_8004FBC4
    /* F2E0 8001EAE0 21200000 */   addu      $a0, $zero, $zero
    /* F2E4 8001EAE4 03004010 */  beqz       $v0, .L8001EAF4
    /* F2E8 8001EAE8 00000000 */   nop
  .L8001EAEC:
    /* F2EC 8001EAEC 835C000C */  jal        func_8001720C
    /* F2F0 8001EAF0 00000000 */   nop
  .L8001EAF4:
    /* F2F4 8001EAF4 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* F2F8 8001EAF8 1800B28F */  lw         $s2, 0x18($sp)
    /* F2FC 8001EAFC 1400B18F */  lw         $s1, 0x14($sp)
    /* F300 8001EB00 1000B08F */  lw         $s0, 0x10($sp)
    /* F304 8001EB04 2000BD27 */  addiu      $sp, $sp, 0x20
    /* F308 8001EB08 0800E003 */  jr         $ra
    /* F30C 8001EB0C 00000000 */   nop
endlabel func_8001E814
