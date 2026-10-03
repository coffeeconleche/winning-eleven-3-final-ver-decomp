nonmatching func_8007CF7C, 0x66C

glabel func_8007CF7C
    /* 6D77C 8007CF7C C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 6D780 8007CF80 01000224 */  addiu      $v0, $zero, 0x1
    /* 6D784 8007CF84 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 6D788 8007CF88 3800B4AF */  sw         $s4, 0x38($sp)
    /* 6D78C 8007CF8C 3400B3AF */  sw         $s3, 0x34($sp)
    /* 6D790 8007CF90 3000B2AF */  sw         $s2, 0x30($sp)
    /* 6D794 8007CF94 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 6D798 8007CF98 2800B0AF */  sw         $s0, 0x28($sp)
    /* 6D79C 8007CF9C 801F013C */  lui        $at, (0x1F8002F1 >> 16)
    /* 6D7A0 8007CFA0 F10220A0 */  sb         $zero, (0x1F8002F1 & 0xFFFF)($at)
    /* 6D7A4 8007CFA4 801F013C */  lui        $at, (0x1F8002F0 >> 16)
    /* 6D7A8 8007CFA8 F00220A0 */  sb         $zero, (0x1F8002F0 & 0xFFFF)($at)
    /* 6D7AC 8007CFAC 801F013C */  lui        $at, (0x1F800309 >> 16)
    /* 6D7B0 8007CFB0 090320A0 */  sb         $zero, (0x1F800309 & 0xFFFF)($at)
    /* 6D7B4 8007CFB4 801F013C */  lui        $at, (0x1F8002A1 >> 16)
    /* 6D7B8 8007CFB8 A10220A0 */  sb         $zero, (0x1F8002A1 & 0xFFFF)($at)
    /* 6D7BC 8007CFBC 801F013C */  lui        $at, (0x1F8002C2 >> 16)
    /* 6D7C0 8007CFC0 C20220A0 */  sb         $zero, (0x1F8002C2 & 0xFFFF)($at)
    /* 6D7C4 8007CFC4 801F013C */  lui        $at, (0x1F8001EC >> 16)
    /* 6D7C8 8007CFC8 EC0120A0 */  sb         $zero, (0x1F8001EC & 0xFFFF)($at)
    /* 6D7CC 8007CFCC 801F013C */  lui        $at, (0x1F8001E8 >> 16)
    /* 6D7D0 8007CFD0 E80122A0 */  sb         $v0, (0x1F8001E8 & 0xFFFF)($at)
    /* 6D7D4 8007CFD4 1080013C */  lui        $at, %hi(D_80105D54)
    /* 6D7D8 8007CFD8 545D20A0 */  sb         $zero, %lo(D_80105D54)($at)
    /* 6D7DC 8007CFDC 1080013C */  lui        $at, %hi(D_80105D2C)
    /* 6D7E0 8007CFE0 2C5D20A0 */  sb         $zero, %lo(D_80105D2C)($at)
    /* 6D7E4 8007CFE4 2771010C */  jal        func_8005C49C
    /* 6D7E8 8007CFE8 801F143C */   lui       $s4, (0x1F8002D1 >> 16)
    /* 6D7EC 8007CFEC 801F023C */  lui        $v0, (0x1F8002E0 >> 16)
    /* 6D7F0 8007CFF0 E0024290 */  lbu        $v0, (0x1F8002E0 & 0xFFFF)($v0)
    /* 6D7F4 8007CFF4 1FFF0324 */  addiu      $v1, $zero, -0xE1
    /* 6D7F8 8007CFF8 40100200 */  sll        $v0, $v0, 1
    /* 6D7FC 8007CFFC 1180013C */  lui        $at, %hi(D_8010A370)
    /* 6D800 8007D000 21082200 */  addu       $at, $at, $v0
    /* 6D804 8007D004 70A323A4 */  sh         $v1, %lo(D_8010A370)($at)
    /* 6D808 8007D008 801F023C */  lui        $v0, (0x1F8002E0 >> 16)
    /* 6D80C 8007D00C E0024290 */  lbu        $v0, (0x1F8002E0 & 0xFFFF)($v0)
    /* 6D810 8007D010 D8000324 */  addiu      $v1, $zero, 0xD8
    /* 6D814 8007D014 01004238 */  xori       $v0, $v0, 0x1
    /* 6D818 8007D018 40100200 */  sll        $v0, $v0, 1
    /* 6D81C 8007D01C 1180013C */  lui        $at, %hi(D_8010A370)
    /* 6D820 8007D020 21082200 */  addu       $at, $at, $v0
    /* 6D824 8007D024 70A323A4 */  sh         $v1, %lo(D_8010A370)($at)
    /* 6D828 8007D028 801F043C */  lui        $a0, (0x1F8002AD >> 16)
    /* 6D82C 8007D02C AD028490 */  lbu        $a0, (0x1F8002AD & 0xFFFF)($a0)
    /* 6D830 8007D030 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 6D834 8007D034 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 6D838 8007D038 19008200 */  multu      $a0, $v0
    /* 6D83C 8007D03C 1080123C */  lui        $s2, %hi(D_800FF748)
    /* 6D840 8007D040 48F75226 */  addiu      $s2, $s2, %lo(D_800FF748)
    /* 6D844 8007D044 DCFF0224 */  addiu      $v0, $zero, -0x24
    /* 6D848 8007D048 1180013C */  lui        $at, %hi(D_8010A376)
    /* 6D84C 8007D04C 76A322A4 */  sh         $v0, %lo(D_8010A376)($at)
    /* 6D850 8007D050 1180013C */  lui        $at, %hi(D_8010A374)
    /* 6D854 8007D054 74A322A4 */  sh         $v0, %lo(D_8010A374)($at)
    /* 6D858 8007D058 20020224 */  addiu      $v0, $zero, 0x220
    /* 6D85C 8007D05C 1180013C */  lui        $at, %hi(D_8010A37A)
    /* 6D860 8007D060 7AA322A4 */  sh         $v0, %lo(D_8010A37A)($at)
    /* 6D864 8007D064 1180013C */  lui        $at, %hi(D_8010A378)
    /* 6D868 8007D068 78A322A4 */  sh         $v0, %lo(D_8010A378)($at)
    /* 6D86C 8007D06C E0FF0224 */  addiu      $v0, $zero, -0x20
    /* 6D870 8007D070 1180013C */  lui        $at, %hi(D_8010A384)
    /* 6D874 8007D074 84A322A4 */  sh         $v0, %lo(D_8010A384)($at)
    /* 6D878 8007D078 1180013C */  lui        $at, %hi(D_8010A37C)
    /* 6D87C 8007D07C 7CA322A4 */  sh         $v0, %lo(D_8010A37C)($at)
    /* 6D880 8007D080 10380000 */  mfhi       $a3
    /* 6D884 8007D084 02190700 */  srl        $v1, $a3, 4
    /* 6D888 8007D088 40100300 */  sll        $v0, $v1, 1
    /* 6D88C 8007D08C 21104300 */  addu       $v0, $v0, $v1
    /* 6D890 8007D090 C0100200 */  sll        $v0, $v0, 3
    /* 6D894 8007D094 23208200 */  subu       $a0, $a0, $v0
    /* 6D898 8007D098 FF008430 */  andi       $a0, $a0, 0xFF
    /* 6D89C 8007D09C 40110400 */  sll        $v0, $a0, 5
    /* 6D8A0 8007D0A0 23104400 */  subu       $v0, $v0, $a0
    /* 6D8A4 8007D0A4 80100200 */  sll        $v0, $v0, 2
    /* 6D8A8 8007D0A8 21104400 */  addu       $v0, $v0, $a0
    /* 6D8AC 8007D0AC C0100200 */  sll        $v0, $v0, 3
    /* 6D8B0 8007D0B0 21885200 */  addu       $s1, $v0, $s2
    /* 6D8B4 8007D0B4 801F023C */  lui        $v0, (0x1F8002DF >> 16)
    /* 6D8B8 8007D0B8 DF024290 */  lbu        $v0, (0x1F8002DF & 0xFFFF)($v0)
    /* 6D8BC 8007D0BC 00000000 */  nop
    /* 6D8C0 8007D0C0 0200422C */  sltiu      $v0, $v0, 0x2
    /* 6D8C4 8007D0C4 10004010 */  beqz       $v0, .L8007D108
    /* 6D8C8 8007D0C8 00000000 */   nop
    /* 6D8CC 8007D0CC F33C010C */  jal        func_8004F3CC
    /* 6D8D0 8007D0D0 00000000 */   nop
    /* 6D8D4 8007D0D4 A291033C */  lui        $v1, (0x91A2B3C5 >> 16)
    /* 6D8D8 8007D0D8 C5B36334 */  ori        $v1, $v1, (0x91A2B3C5 & 0xFFFF)
    /* 6D8DC 8007D0DC 19004300 */  multu      $v0, $v1
    /* 6D8E0 8007D0E0 801F033C */  lui        $v1, (0x1F8002DF >> 16)
    /* 6D8E4 8007D0E4 DF026390 */  lbu        $v1, (0x1F8002DF & 0xFFFF)($v1)
    /* 6D8E8 8007D0E8 00000000 */  nop
    /* 6D8EC 8007D0EC 40100300 */  sll        $v0, $v1, 1
    /* 6D8F0 8007D0F0 21104300 */  addu       $v0, $v0, $v1
    /* 6D8F4 8007D0F4 00190200 */  sll        $v1, $v0, 4
    /* 6D8F8 8007D0F8 23186200 */  subu       $v1, $v1, $v0
    /* 6D8FC 8007D0FC 10380000 */  mfhi       $a3
    /* 6D900 8007D100 50F40108 */  j          .L8007D140
    /* 6D904 8007D104 C2120700 */   srl       $v0, $a3, 11
  .L8007D108:
    /* 6D908 8007D108 F33C010C */  jal        func_8004F3CC
    /* 6D90C 8007D10C 00000000 */   nop
    /* 6D910 8007D110 A291033C */  lui        $v1, (0x91A2B3C5 >> 16)
    /* 6D914 8007D114 C5B36334 */  ori        $v1, $v1, (0x91A2B3C5 & 0xFFFF)
    /* 6D918 8007D118 19004300 */  multu      $v0, $v1
    /* 6D91C 8007D11C 801F023C */  lui        $v0, (0x1F8002DF >> 16)
    /* 6D920 8007D120 DF024290 */  lbu        $v0, (0x1F8002DF & 0xFFFF)($v0)
    /* 6D924 8007D124 00000000 */  nop
    /* 6D928 8007D128 FEFF4224 */  addiu      $v0, $v0, -0x2
    /* 6D92C 8007D12C 00190200 */  sll        $v1, $v0, 4
    /* 6D930 8007D130 23186200 */  subu       $v1, $v1, $v0
    /* 6D934 8007D134 10380000 */  mfhi       $a3
    /* 6D938 8007D138 C2120700 */  srl        $v0, $a3, 11
    /* 6D93C 8007D13C 5A004224 */  addiu      $v0, $v0, 0x5A
  .L8007D140:
    /* 6D940 8007D140 21306200 */  addu       $a2, $v1, $v0
    /* 6D944 8007D144 98032492 */  lbu        $a0, 0x398($s1)
    /* 6D948 8007D148 00000000 */  nop
    /* 6D94C 8007D14C 21108402 */  addu       $v0, $s4, $a0
    /* 6D950 8007D150 D1024290 */  lbu        $v0, (0x1F8002D1 & 0xFFFF)($v0)
    /* 6D954 8007D154 00000000 */  nop
    /* 6D958 8007D158 40180200 */  sll        $v1, $v0, 1
    /* 6D95C 8007D15C 21186200 */  addu       $v1, $v1, $v0
    /* 6D960 8007D160 40100400 */  sll        $v0, $a0, 1
    /* 6D964 8007D164 21104400 */  addu       $v0, $v0, $a0
    /* 6D968 8007D168 40110200 */  sll        $v0, $v0, 5
    /* 6D96C 8007D16C 21186200 */  addu       $v1, $v1, $v0
    /* 6D970 8007D170 21184302 */  addu       $v1, $s2, $v1
    /* 6D974 8007D174 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 6D978 8007D178 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6D97C 8007D17C 21086100 */  addu       $at, $v1, $at
    /* 6D980 8007D180 FE8822A0 */  sb         $v0, -0x7702($at)
    /* 6D984 8007D184 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6D988 8007D188 21084102 */  addu       $at, $s2, $at
    /* 6D98C 8007D18C DBAB2290 */  lbu        $v0, -0x5425($at)
    /* 6D990 8007D190 00000000 */  nop
    /* 6D994 8007D194 57004014 */  bnez       $v0, .L8007D2F4
    /* 6D998 8007D198 00000000 */   nop
    /* 6D99C 8007D19C 98032592 */  lbu        $a1, 0x398($s1)
    /* 6D9A0 8007D1A0 00000000 */  nop
    /* 6D9A4 8007D1A4 21108502 */  addu       $v0, $s4, $a1
    /* 6D9A8 8007D1A8 D1024490 */  lbu        $a0, (0x1F8002D1 & 0xFFFF)($v0)
    /* 6D9AC 8007D1AC 00000000 */  nop
    /* 6D9B0 8007D1B0 2000822C */  sltiu      $v0, $a0, 0x20
    /* 6D9B4 8007D1B4 61004010 */  beqz       $v0, .L8007D33C
    /* 6D9B8 8007D1B8 40180400 */   sll       $v1, $a0, 1
    /* 6D9BC 8007D1BC 21186400 */  addu       $v1, $v1, $a0
    /* 6D9C0 8007D1C0 40100500 */  sll        $v0, $a1, 1
    /* 6D9C4 8007D1C4 21104500 */  addu       $v0, $v0, $a1
    /* 6D9C8 8007D1C8 40110200 */  sll        $v0, $v0, 5
    /* 6D9CC 8007D1CC 21186200 */  addu       $v1, $v1, $v0
    /* 6D9D0 8007D1D0 92032292 */  lbu        $v0, 0x392($s1)
    /* 6D9D4 8007D1D4 21184302 */  addu       $v1, $s2, $v1
    /* 6D9D8 8007D1D8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6D9DC 8007D1DC 21086100 */  addu       $at, $v1, $at
    /* 6D9E0 8007D1E0 FD8822A0 */  sb         $v0, -0x7703($at)
    /* 6D9E4 8007D1E4 98032492 */  lbu        $a0, 0x398($s1)
    /* 6D9E8 8007D1E8 00000000 */  nop
    /* 6D9EC 8007D1EC 21108402 */  addu       $v0, $s4, $a0
    /* 6D9F0 8007D1F0 D1024290 */  lbu        $v0, (0x1F8002D1 & 0xFFFF)($v0)
    /* 6D9F4 8007D1F4 00000000 */  nop
    /* 6D9F8 8007D1F8 40180200 */  sll        $v1, $v0, 1
    /* 6D9FC 8007D1FC 21186200 */  addu       $v1, $v1, $v0
    /* 6DA00 8007D200 40100400 */  sll        $v0, $a0, 1
    /* 6DA04 8007D204 21104400 */  addu       $v0, $v0, $a0
    /* 6DA08 8007D208 40110200 */  sll        $v0, $v0, 5
    /* 6DA0C 8007D20C 21186200 */  addu       $v1, $v1, $v0
    /* 6DA10 8007D210 21184302 */  addu       $v1, $s2, $v1
    /* 6DA14 8007D214 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6DA18 8007D218 21086100 */  addu       $at, $v1, $at
    /* 6DA1C 8007D21C FF8826A0 */  sb         $a2, -0x7701($at)
    /* 6DA20 8007D220 AB028292 */  lbu        $v0, (0x1F8002AB & 0xFFFF)($s4)
    /* 6DA24 8007D224 00000000 */  nop
    /* 6DA28 8007D228 FF004330 */  andi       $v1, $v0, 0xFF
    /* 6DA2C 8007D22C FF000224 */  addiu      $v0, $zero, 0xFF
    /* 6DA30 8007D230 42006210 */  beq        $v1, $v0, .L8007D33C
    /* 6DA34 8007D234 00000000 */   nop
    /* 6DA38 8007D238 8D032492 */  lbu        $a0, 0x38D($s1)
    /* 6DA3C 8007D23C 00000000 */  nop
    /* 6DA40 8007D240 3E008310 */  beq        $a0, $v1, .L8007D33C
    /* 6DA44 8007D244 00000000 */   nop
    /* 6DA48 8007D248 B249010C */  jal        func_800526C8
    /* 6DA4C 8007D24C 00000000 */   nop
    /* 6DA50 8007D250 AB028492 */  lbu        $a0, (0x1F8002AB & 0xFFFF)($s4)
    /* 6DA54 8007D254 B249010C */  jal        func_800526C8
    /* 6DA58 8007D258 21804000 */   addu      $s0, $v0, $zero
    /* 6DA5C 8007D25C FF001032 */  andi       $s0, $s0, 0xFF
    /* 6DA60 8007D260 FF004230 */  andi       $v0, $v0, 0xFF
    /* 6DA64 8007D264 35000216 */  bne        $s0, $v0, .L8007D33C
    /* 6DA68 8007D268 00000000 */   nop
    /* 6DA6C 8007D26C AB028392 */  lbu        $v1, (0x1F8002AB & 0xFFFF)($s4)
    /* 6DA70 8007D270 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 6DA74 8007D274 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 6DA78 8007D278 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6DA7C 8007D27C 19006200 */  multu      $v1, $v0
    /* 6DA80 8007D280 98032592 */  lbu        $a1, 0x398($s1)
    /* 6DA84 8007D284 10380000 */  mfhi       $a3
    /* 6DA88 8007D288 02210700 */  srl        $a0, $a3, 4
    /* 6DA8C 8007D28C 40100400 */  sll        $v0, $a0, 1
    /* 6DA90 8007D290 21104400 */  addu       $v0, $v0, $a0
    /* 6DA94 8007D294 C0100200 */  sll        $v0, $v0, 3
    /* 6DA98 8007D298 23186200 */  subu       $v1, $v1, $v0
    /* 6DA9C 8007D29C FF006330 */  andi       $v1, $v1, 0xFF
    /* 6DAA0 8007D2A0 40210300 */  sll        $a0, $v1, 5
    /* 6DAA4 8007D2A4 23208300 */  subu       $a0, $a0, $v1
    /* 6DAA8 8007D2A8 80200400 */  sll        $a0, $a0, 2
    /* 6DAAC 8007D2AC 21208300 */  addu       $a0, $a0, $v1
    /* 6DAB0 8007D2B0 C0200400 */  sll        $a0, $a0, 3
    /* 6DAB4 8007D2B4 21108502 */  addu       $v0, $s4, $a1
    /* 6DAB8 8007D2B8 D1024290 */  lbu        $v0, (0x1F8002D1 & 0xFFFF)($v0)
    /* 6DABC 8007D2BC 21204402 */  addu       $a0, $s2, $a0
    /* 6DAC0 8007D2C0 40180200 */  sll        $v1, $v0, 1
    /* 6DAC4 8007D2C4 21186200 */  addu       $v1, $v1, $v0
    /* 6DAC8 8007D2C8 40100500 */  sll        $v0, $a1, 1
    /* 6DACC 8007D2CC 21104500 */  addu       $v0, $v0, $a1
    /* 6DAD0 8007D2D0 40110200 */  sll        $v0, $v0, 5
    /* 6DAD4 8007D2D4 21186200 */  addu       $v1, $v1, $v0
    /* 6DAD8 8007D2D8 92038290 */  lbu        $v0, 0x392($a0)
    /* 6DADC 8007D2DC 21184302 */  addu       $v1, $s2, $v1
    /* 6DAE0 8007D2E0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6DAE4 8007D2E4 21086100 */  addu       $at, $v1, $at
    /* 6DAE8 8007D2E8 FE8822A0 */  sb         $v0, -0x7702($at)
    /* 6DAEC 8007D2EC CFF40108 */  j          .L8007D33C
    /* 6DAF0 8007D2F0 00000000 */   nop
  .L8007D2F4:
    /* 6DAF4 8007D2F4 98032292 */  lbu        $v0, 0x398($s1)
    /* 6DAF8 8007D2F8 00000000 */  nop
    /* 6DAFC 8007D2FC 01004538 */  xori       $a1, $v0, 0x1
    /* 6DB00 8007D300 21108502 */  addu       $v0, $s4, $a1
    /* 6DB04 8007D304 D1024490 */  lbu        $a0, (0x1F8002D1 & 0xFFFF)($v0)
    /* 6DB08 8007D308 00000000 */  nop
    /* 6DB0C 8007D30C 2000822C */  sltiu      $v0, $a0, 0x20
    /* 6DB10 8007D310 0A004010 */  beqz       $v0, .L8007D33C
    /* 6DB14 8007D314 40180400 */   sll       $v1, $a0, 1
    /* 6DB18 8007D318 21186400 */  addu       $v1, $v1, $a0
    /* 6DB1C 8007D31C 40100500 */  sll        $v0, $a1, 1
    /* 6DB20 8007D320 21104500 */  addu       $v0, $v0, $a1
    /* 6DB24 8007D324 40110200 */  sll        $v0, $v0, 5
    /* 6DB28 8007D328 21186200 */  addu       $v1, $v1, $v0
    /* 6DB2C 8007D32C 21184302 */  addu       $v1, $s2, $v1
    /* 6DB30 8007D330 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6DB34 8007D334 21086100 */  addu       $at, $v1, $at
    /* 6DB38 8007D338 FF8826A0 */  sb         $a2, -0x7701($at)
  .L8007D33C:
    /* 6DB3C 8007D33C 5B62010C */  jal        func_8005896C
    /* 6DB40 8007D340 21202002 */   addu      $a0, $s1, $zero
    /* 6DB44 8007D344 98032292 */  lbu        $v0, 0x398($s1)
    /* 6DB48 8007D348 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6DB4C 8007D34C 21084102 */  addu       $at, $s2, $at
    /* 6DB50 8007D350 DBAB2390 */  lbu        $v1, -0x5425($at)
    /* 6DB54 8007D354 00000000 */  nop
    /* 6DB58 8007D358 26104300 */  xor        $v0, $v0, $v1
    /* 6DB5C 8007D35C 21208202 */  addu       $a0, $s4, $v0
    /* 6DB60 8007D360 D1028390 */  lbu        $v1, (0x1F8002D1 & 0xFFFF)($a0)
    /* 6DB64 8007D364 00000000 */  nop
    /* 6DB68 8007D368 6300622C */  sltiu      $v0, $v1, 0x63
    /* 6DB6C 8007D36C 02004010 */  beqz       $v0, .L8007D378
    /* 6DB70 8007D370 01006224 */   addiu     $v0, $v1, 0x1
    /* 6DB74 8007D374 D10282A0 */  sb         $v0, (0x1F8002D1 & 0xFFFF)($a0)
  .L8007D378:
    /* 6DB78 8007D378 98032292 */  lbu        $v0, 0x398($s1)
    /* 6DB7C 8007D37C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6DB80 8007D380 21084102 */  addu       $at, $s2, $at
    /* 6DB84 8007D384 DBAB2390 */  lbu        $v1, -0x5425($at)
    /* 6DB88 8007D388 00000000 */  nop
    /* 6DB8C 8007D38C 26104300 */  xor        $v0, $v0, $v1
    /* 6DB90 8007D390 80100200 */  sll        $v0, $v0, 2
    /* 6DB94 8007D394 21105400 */  addu       $v0, $v0, $s4
    /* 6DB98 8007D398 DF028392 */  lbu        $v1, (0x1F8002DF & 0xFFFF)($s4)
    /* 6DB9C 8007D39C D3024224 */  addiu      $v0, $v0, %lo(D_1F8002D3)
    /* 6DBA0 8007D3A0 21186200 */  addu       $v1, $v1, $v0
    /* 6DBA4 8007D3A4 00006490 */  lbu        $a0, 0x0($v1)
    /* 6DBA8 8007D3A8 00000000 */  nop
    /* 6DBAC 8007D3AC 6300822C */  sltiu      $v0, $a0, 0x63
    /* 6DBB0 8007D3B0 02004010 */  beqz       $v0, .L8007D3BC
    /* 6DBB4 8007D3B4 01008224 */   addiu     $v0, $a0, 0x1
    /* 6DBB8 8007D3B8 000062A0 */  sb         $v0, 0x0($v1)
  .L8007D3BC:
    /* 6DBBC 8007D3BC 98032292 */  lbu        $v0, 0x398($s1)
    /* 6DBC0 8007D3C0 00000000 */  nop
    /* 6DBC4 8007D3C4 25185400 */  or         $v1, $v0, $s4
    /* 6DBC8 8007D3C8 01004238 */  xori       $v0, $v0, 0x1
    /* 6DBCC 8007D3CC 21108202 */  addu       $v0, $s4, $v0
    /* 6DBD0 8007D3D0 D1026390 */  lbu        $v1, (0x1F8002D1 & 0xFFFF)($v1)
    /* 6DBD4 8007D3D4 D1024290 */  lbu        $v0, (0x1F8002D1 & 0xFFFF)($v0)
    /* 6DBD8 8007D3D8 940280A6 */  sh         $zero, (0x1F800294 & 0xFFFF)($s4)
    /* 6DBDC 8007D3DC 23186200 */  subu       $v1, $v1, $v0
    /* 6DBE0 8007D3E0 FFFF6328 */  slti       $v1, $v1, -0x1
    /* 6DBE4 8007D3E4 0E80013C */  lui        $at, %hi(D_800E6D5A)
    /* 6DBE8 8007D3E8 5A6D23A0 */  sb         $v1, %lo(D_800E6D5A)($at)
    /* 6DBEC 8007D3EC 0F8A000C */  jal        func_8002283C
    /* 6DBF0 8007D3F0 00000000 */   nop
    /* 6DBF4 8007D3F4 B428010C */  jal        func_8004A2D0
    /* 6DBF8 8007D3F8 00000000 */   nop
    /* 6DBFC 8007D3FC 88AD020C */  jal        func_800AB620
    /* 6DC00 8007D400 21050424 */   addiu     $a0, $zero, 0x521
    /* 6DC04 8007D404 88AD020C */  jal        func_800AB620
    /* 6DC08 8007D408 22050424 */   addiu     $a0, $zero, 0x522
    /* 6DC0C 8007D40C AE79000C */  jal        func_8001E6B8
    /* 6DC10 8007D410 03000424 */   addiu     $a0, $zero, 0x3
    /* 6DC14 8007D414 2B100200 */  sltu       $v0, $zero, $v0
    /* 6DC18 8007D418 21984000 */  addu       $s3, $v0, $zero
    /* 6DC1C 8007D41C FF006232 */  andi       $v0, $s3, 0xFF
    /* 6DC20 8007D420 14004010 */  beqz       $v0, .L8007D474
    /* 6DC24 8007D424 00000000 */   nop
    /* 6DC28 8007D428 AE79000C */  jal        func_8001E6B8
    /* 6DC2C 8007D42C 03000424 */   addiu     $a0, $zero, 0x3
    /* 6DC30 8007D430 21804000 */  addu       $s0, $v0, $zero
    /* 6DC34 8007D434 FF000232 */  andi       $v0, $s0, 0xFF
    /* 6DC38 8007D438 05004014 */  bnez       $v0, .L8007D450
    /* 6DC3C 8007D43C 00000000 */   nop
    /* 6DC40 8007D440 AE79000C */  jal        func_8001E6B8
    /* 6DC44 8007D444 03000424 */   addiu     $a0, $zero, 0x3
    /* 6DC48 8007D448 17F50108 */  j          .L8007D45C
    /* 6DC4C 8007D44C 03004524 */   addiu     $a1, $v0, 0x3
  .L8007D450:
    /* 6DC50 8007D450 AE79000C */  jal        func_8001E6B8
    /* 6DC54 8007D454 06000424 */   addiu     $a0, $zero, 0x6
    /* 6DC58 8007D458 21284000 */  addu       $a1, $v0, $zero
  .L8007D45C:
    /* 6DC5C 8007D45C FF00A330 */  andi       $v1, $a1, 0xFF
    /* 6DC60 8007D460 03000224 */  addiu      $v0, $zero, 0x3
    /* 6DC64 8007D464 0F006214 */  bne        $v1, $v0, .L8007D4A4
    /* 6DC68 8007D468 00000000 */   nop
    /* 6DC6C 8007D46C 29F50108 */  j          .L8007D4A4
    /* 6DC70 8007D470 21800000 */   addu      $s0, $zero, $zero
  .L8007D474:
    /* 6DC74 8007D474 AE79000C */  jal        func_8001E6B8
    /* 6DC78 8007D478 03000424 */   addiu     $a0, $zero, 0x3
    /* 6DC7C 8007D47C 01005024 */  addiu      $s0, $v0, 0x1
    /* 6DC80 8007D480 AE79000C */  jal        func_8001E6B8
    /* 6DC84 8007D484 04000424 */   addiu     $a0, $zero, 0x4
    /* 6DC88 8007D488 21284000 */  addu       $a1, $v0, $zero
    /* 6DC8C 8007D48C FEFF4224 */  addiu      $v0, $v0, -0x2
    /* 6DC90 8007D490 FF004230 */  andi       $v0, $v0, 0xFF
    /* 6DC94 8007D494 0200422C */  sltiu      $v0, $v0, 0x2
    /* 6DC98 8007D498 02004010 */  beqz       $v0, .L8007D4A4
    /* 6DC9C 8007D49C 00000000 */   nop
    /* 6DCA0 8007D4A0 03001024 */  addiu      $s0, $zero, 0x3
  .L8007D4A4:
    /* 6DCA4 8007D4A4 0E80023C */  lui        $v0, %hi(D_800E6D5A)
    /* 6DCA8 8007D4A8 5A6D4290 */  lbu        $v0, %lo(D_800E6D5A)($v0)
    /* 6DCAC 8007D4AC 00000000 */  nop
    /* 6DCB0 8007D4B0 04004010 */  beqz       $v0, .L8007D4C4
    /* 6DCB4 8007D4B4 00000000 */   nop
    /* 6DCB8 8007D4B8 21280000 */  addu       $a1, $zero, $zero
    /* 6DCBC 8007D4BC 21800000 */  addu       $s0, $zero, $zero
    /* 6DCC0 8007D4C0 21980000 */  addu       $s3, $zero, $zero
  .L8007D4C4:
    /* 6DCC4 8007D4C4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6DCC8 8007D4C8 21084102 */  addu       $at, $s2, $at
    /* 6DCCC 8007D4CC DBAB2290 */  lbu        $v0, -0x5425($at)
    /* 6DCD0 8007D4D0 00000000 */  nop
    /* 6DCD4 8007D4D4 04004010 */  beqz       $v0, .L8007D4E8
    /* 6DCD8 8007D4D8 00000000 */   nop
    /* 6DCDC 8007D4DC 21280000 */  addu       $a1, $zero, $zero
    /* 6DCE0 8007D4E0 21800000 */  addu       $s0, $zero, $zero
    /* 6DCE4 8007D4E4 21980000 */  addu       $s3, $zero, $zero
  .L8007D4E8:
    /* 6DCE8 8007D4E8 94032296 */  lhu        $v0, 0x394($s1)
    /* 6DCEC 8007D4EC 00000000 */  nop
    /* 6DCF0 8007D4F0 0A034238 */  xori       $v0, $v0, 0x30A
    /* 6DCF4 8007D4F4 0100422C */  sltiu      $v0, $v0, 0x1
    /* 6DCF8 8007D4F8 0E80013C */  lui        $at, %hi(D_800E6D5B)
    /* 6DCFC 8007D4FC 5B6D22A0 */  sb         $v0, %lo(D_800E6D5B)($at)
    /* 6DD00 8007D500 FF004230 */  andi       $v0, $v0, 0xFF
    /* 6DD04 8007D504 05004010 */  beqz       $v0, .L8007D51C
    /* 6DD08 8007D508 C0111300 */   sll       $v0, $s3, 7
    /* 6DD0C 8007D50C 0F80013C */  lui        $at, %hi(D_800F3566)
    /* 6DD10 8007D510 663520A4 */  sh         $zero, %lo(D_800F3566)($at)
    /* 6DD14 8007D514 4EF50108 */  j          .L8007D538
    /* 6DD18 8007D518 00000000 */   nop
  .L8007D51C:
    /* 6DD1C 8007D51C FF000332 */  andi       $v1, $s0, 0xFF
    /* 6DD20 8007D520 00190300 */  sll        $v1, $v1, 4
    /* 6DD24 8007D524 21104300 */  addu       $v0, $v0, $v1
    /* 6DD28 8007D528 FF00A330 */  andi       $v1, $a1, 0xFF
    /* 6DD2C 8007D52C 21186200 */  addu       $v1, $v1, $v0
    /* 6DD30 8007D530 0F80013C */  lui        $at, %hi(D_800F3566)
    /* 6DD34 8007D534 663523A4 */  sh         $v1, %lo(D_800F3566)($at)
  .L8007D538:
    /* 6DD38 8007D538 AD028392 */  lbu        $v1, (0x1F8002AD & 0xFFFF)($s4)
    /* 6DD3C 8007D53C AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 6DD40 8007D540 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 6DD44 8007D544 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6DD48 8007D548 19006200 */  multu      $v1, $v0
    /* 6DD4C 8007D54C 10380000 */  mfhi       $a3
    /* 6DD50 8007D550 02210700 */  srl        $a0, $a3, 4
    /* 6DD54 8007D554 40100400 */  sll        $v0, $a0, 1
    /* 6DD58 8007D558 21104400 */  addu       $v0, $v0, $a0
    /* 6DD5C 8007D55C C0100200 */  sll        $v0, $v0, 3
    /* 6DD60 8007D560 23186200 */  subu       $v1, $v1, $v0
    /* 6DD64 8007D564 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6DD68 8007D568 40110300 */  sll        $v0, $v1, 5
    /* 6DD6C 8007D56C 23104300 */  subu       $v0, $v0, $v1
    /* 6DD70 8007D570 80100200 */  sll        $v0, $v0, 2
    /* 6DD74 8007D574 21104300 */  addu       $v0, $v0, $v1
    /* 6DD78 8007D578 C0100200 */  sll        $v0, $v0, 3
    /* 6DD7C 8007D57C 21884202 */  addu       $s1, $s2, $v0
    /* 6DD80 8007D580 FF006232 */  andi       $v0, $s3, 0xFF
    /* 6DD84 8007D584 0B004014 */  bnez       $v0, .L8007D5B4
    /* 6DD88 8007D588 FEFFA224 */   addiu     $v0, $a1, -0x2
    /* 6DD8C 8007D58C FF004230 */  andi       $v0, $v0, 0xFF
    /* 6DD90 8007D590 0200422C */  sltiu      $v0, $v0, 0x2
    /* 6DD94 8007D594 07004010 */  beqz       $v0, .L8007D5B4
    /* 6DD98 8007D598 00000000 */   nop
    /* 6DD9C 8007D59C 7205020C */  jal        func_800815C8
    /* 6DDA0 8007D5A0 21202002 */   addu      $a0, $s1, $zero
    /* 6DDA4 8007D5A4 0E80013C */  lui        $at, %hi(D_800E6D5C)
    /* 6DDA8 8007D5A8 5C6D22A0 */  sb         $v0, %lo(D_800E6D5C)($at)
    /* 6DDAC 8007D5AC 6FF50108 */  j          .L8007D5BC
    /* 6DDB0 8007D5B0 00000000 */   nop
  .L8007D5B4:
    /* 6DDB4 8007D5B4 0E80013C */  lui        $at, %hi(D_800E6D5C)
    /* 6DDB8 8007D5B8 5C6D20A0 */  sb         $zero, %lo(D_800E6D5C)($at)
  .L8007D5BC:
    /* 6DDBC 8007D5BC 775C000C */  jal        func_800171DC
    /* 6DDC0 8007D5C0 00000000 */   nop
    /* 6DDC4 8007D5C4 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 6DDC8 8007D5C8 3800B48F */  lw         $s4, 0x38($sp)
    /* 6DDCC 8007D5CC 3400B38F */  lw         $s3, 0x34($sp)
    /* 6DDD0 8007D5D0 3000B28F */  lw         $s2, 0x30($sp)
    /* 6DDD4 8007D5D4 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 6DDD8 8007D5D8 2800B08F */  lw         $s0, 0x28($sp)
    /* 6DDDC 8007D5DC 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 6DDE0 8007D5E0 0800E003 */  jr         $ra
    /* 6DDE4 8007D5E4 00000000 */   nop
endlabel func_8007CF7C
