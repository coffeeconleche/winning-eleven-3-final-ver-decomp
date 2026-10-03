nonmatching func_8007D7E0, 0x4E4

glabel func_8007D7E0
    /* 6DFE0 8007D7E0 801F033C */  lui        $v1, (0x1F8002AD >> 16)
    /* 6DFE4 8007D7E4 AD026390 */  lbu        $v1, (0x1F8002AD & 0xFFFF)($v1)
    /* 6DFE8 8007D7E8 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 6DFEC 8007D7EC ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 6DFF0 8007D7F0 19006200 */  multu      $v1, $v0
    /* 6DFF4 8007D7F4 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 6DFF8 8007D7F8 05000524 */  addiu      $a1, $zero, 0x5
    /* 6DFFC 8007D7FC 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 6E000 8007D800 1080153C */  lui        $s5, %hi(D_800FF748)
    /* 6E004 8007D804 48F7B526 */  addiu      $s5, $s5, %lo(D_800FF748)
    /* 6E008 8007D808 4000BFAF */  sw         $ra, 0x40($sp)
    /* 6E00C 8007D80C 3800B4AF */  sw         $s4, 0x38($sp)
    /* 6E010 8007D810 3400B3AF */  sw         $s3, 0x34($sp)
    /* 6E014 8007D814 3000B2AF */  sw         $s2, 0x30($sp)
    /* 6E018 8007D818 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 6E01C 8007D81C 2800B0AF */  sw         $s0, 0x28($sp)
    /* 6E020 8007D820 10400000 */  mfhi       $t0
    /* 6E024 8007D824 02210800 */  srl        $a0, $t0, 4
    /* 6E028 8007D828 40100400 */  sll        $v0, $a0, 1
    /* 6E02C 8007D82C 21104400 */  addu       $v0, $v0, $a0
    /* 6E030 8007D830 C0100200 */  sll        $v0, $v0, 3
    /* 6E034 8007D834 23186200 */  subu       $v1, $v1, $v0
    /* 6E038 8007D838 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6E03C 8007D83C 40210300 */  sll        $a0, $v1, 5
    /* 6E040 8007D840 23208300 */  subu       $a0, $a0, $v1
    /* 6E044 8007D844 80200400 */  sll        $a0, $a0, 2
    /* 6E048 8007D848 21208300 */  addu       $a0, $a0, $v1
    /* 6E04C 8007D84C C0200400 */  sll        $a0, $a0, 3
    /* 6E050 8007D850 E81D010C */  jal        func_800477A0
    /* 6E054 8007D854 21209500 */   addu      $a0, $a0, $s5
    /* 6E058 8007D858 0F8A000C */  jal        func_8002283C
    /* 6E05C 8007D85C 801F143C */   lui       $s4, (0x1F8002D1 >> 16)
    /* 6E060 8007D860 B428010C */  jal        func_8004A2D0
    /* 6E064 8007D864 00000000 */   nop
    /* 6E068 8007D868 0446010C */  jal        func_80051810
    /* 6E06C 8007D86C 00000000 */   nop
    /* 6E070 8007D870 801F033C */  lui        $v1, (0x1F8002E0 >> 16)
    /* 6E074 8007D874 E0026390 */  lbu        $v1, (0x1F8002E0 & 0xFFFF)($v1)
    /* 6E078 8007D878 28AC0434 */  ori        $a0, $zero, 0xAC28
    /* 6E07C 8007D87C 40180300 */  sll        $v1, $v1, 1
    /* 6E080 8007D880 21187500 */  addu       $v1, $v1, $s5
    /* 6E084 8007D884 21186400 */  addu       $v1, $v1, $a0
    /* 6E088 8007D888 00006294 */  lhu        $v0, 0x0($v1)
    /* 6E08C 8007D88C 00000000 */  nop
    /* 6E090 8007D890 04004224 */  addiu      $v0, $v0, 0x4
    /* 6E094 8007D894 000062A4 */  sh         $v0, 0x0($v1)
    /* 6E098 8007D898 801F023C */  lui        $v0, (0x1F8002E0 >> 16)
    /* 6E09C 8007D89C E0024290 */  lbu        $v0, (0x1F8002E0 & 0xFFFF)($v0)
    /* 6E0A0 8007D8A0 00000000 */  nop
    /* 6E0A4 8007D8A4 40100200 */  sll        $v0, $v0, 1
    /* 6E0A8 8007D8A8 21105500 */  addu       $v0, $v0, $s5
    /* 6E0AC 8007D8AC 21184400 */  addu       $v1, $v0, $a0
    /* 6E0B0 8007D8B0 00006284 */  lh         $v0, 0x0($v1)
    /* 6E0B4 8007D8B4 00000000 */  nop
    /* 6E0B8 8007D8B8 B1FF4228 */  slti       $v0, $v0, -0x4F
    /* 6E0BC 8007D8BC 02004014 */  bnez       $v0, .L8007D8C8
    /* 6E0C0 8007D8C0 B0FF0224 */   addiu     $v0, $zero, -0x50
    /* 6E0C4 8007D8C4 000062A4 */  sh         $v0, 0x0($v1)
  .L8007D8C8:
    /* 6E0C8 8007D8C8 801F023C */  lui        $v0, (0x1F8002E0 >> 16)
    /* 6E0CC 8007D8CC E0024290 */  lbu        $v0, (0x1F8002E0 & 0xFFFF)($v0)
    /* 6E0D0 8007D8D0 00000000 */  nop
    /* 6E0D4 8007D8D4 01004238 */  xori       $v0, $v0, 0x1
    /* 6E0D8 8007D8D8 40100200 */  sll        $v0, $v0, 1
    /* 6E0DC 8007D8DC 21105500 */  addu       $v0, $v0, $s5
    /* 6E0E0 8007D8E0 21104400 */  addu       $v0, $v0, $a0
    /* 6E0E4 8007D8E4 00004394 */  lhu        $v1, 0x0($v0)
    /* 6E0E8 8007D8E8 00000000 */  nop
    /* 6E0EC 8007D8EC FCFF6324 */  addiu      $v1, $v1, -0x4
    /* 6E0F0 8007D8F0 000043A4 */  sh         $v1, 0x0($v0)
    /* 6E0F4 8007D8F4 801F023C */  lui        $v0, (0x1F8002E0 >> 16)
    /* 6E0F8 8007D8F8 E0024290 */  lbu        $v0, (0x1F8002E0 & 0xFFFF)($v0)
    /* 6E0FC 8007D8FC 00000000 */  nop
    /* 6E100 8007D900 01004238 */  xori       $v0, $v0, 0x1
    /* 6E104 8007D904 40100200 */  sll        $v0, $v0, 1
    /* 6E108 8007D908 21105500 */  addu       $v0, $v0, $s5
    /* 6E10C 8007D90C 21184400 */  addu       $v1, $v0, $a0
    /* 6E110 8007D910 00006284 */  lh         $v0, 0x0($v1)
    /* 6E114 8007D914 00000000 */  nop
    /* 6E118 8007D918 50004228 */  slti       $v0, $v0, 0x50
    /* 6E11C 8007D91C 02004010 */  beqz       $v0, .L8007D928
    /* 6E120 8007D920 50000224 */   addiu     $v0, $zero, 0x50
    /* 6E124 8007D924 000062A4 */  sh         $v0, 0x0($v1)
  .L8007D928:
    /* 6E128 8007D928 1080023C */  lui        $v0, %hi(D_8010597A)
    /* 6E12C 8007D92C 7A594284 */  lh         $v0, %lo(D_8010597A)($v0)
    /* 6E130 8007D930 00000000 */  nop
    /* 6E134 8007D934 09004018 */  blez       $v0, .L8007D95C
    /* 6E138 8007D938 21184000 */   addu      $v1, $v0, $zero
    /* 6E13C 8007D93C 1080023C */  lui        $v0, %hi(D_80105952)
    /* 6E140 8007D940 52594294 */  lhu        $v0, %lo(D_80105952)($v0)
    /* 6E144 8007D944 FEFF6324 */  addiu      $v1, $v1, -0x2
    /* 6E148 8007D948 1080013C */  lui        $at, %hi(D_8010597A)
    /* 6E14C 8007D94C 7A5923A4 */  sh         $v1, %lo(D_8010597A)($at)
    /* 6E150 8007D950 FEFF4224 */  addiu      $v0, $v0, -0x2
    /* 6E154 8007D954 1080013C */  lui        $at, %hi(D_80105952)
    /* 6E158 8007D958 525922A4 */  sh         $v0, %lo(D_80105952)($at)
  .L8007D95C:
    /* 6E15C 8007D95C 801F033C */  lui        $v1, (0x1F800294 >> 16)
    /* 6E160 8007D960 94026394 */  lhu        $v1, (0x1F800294 & 0xFFFF)($v1)
    /* 6E164 8007D964 28000224 */  addiu      $v0, $zero, 0x28
    /* 6E168 8007D968 7E006214 */  bne        $v1, $v0, .L8007DB64
    /* 6E16C 8007D96C 00000000 */   nop
    /* 6E170 8007D970 801F023C */  lui        $v0, (0x1F8002E0 >> 16)
    /* 6E174 8007D974 E0024290 */  lbu        $v0, (0x1F8002E0 & 0xFFFF)($v0)
    /* 6E178 8007D978 801F013C */  lui        $at, (0x1F8002D1 >> 16)
    /* 6E17C 8007D97C 21084100 */  addu       $at, $v0, $at
    /* 6E180 8007D980 D1022590 */  lbu        $a1, (0x1F8002D1 & 0xFFFF)($at)
    /* 6E184 8007D984 00000000 */  nop
    /* 6E188 8007D988 0A00A22C */  sltiu      $v0, $a1, 0xA
    /* 6E18C 8007D98C 29004014 */  bnez       $v0, .L8007DA34
    /* 6E190 8007D990 1D000424 */   addiu     $a0, $zero, 0x1D
    /* 6E194 8007D994 CCCC133C */  lui        $s3, (0xCCCCCCCD >> 16)
    /* 6E198 8007D998 CDCC7336 */  ori        $s3, $s3, (0xCCCCCCCD & 0xFFFF)
    /* 6E19C 8007D99C 1900B300 */  multu      $a1, $s3
    /* 6E1A0 8007D9A0 21300000 */  addu       $a2, $zero, $zero
    /* 6E1A4 8007D9A4 CCFF0724 */  addiu      $a3, $zero, -0x34
    /* 6E1A8 8007D9A8 B8FF1224 */  addiu      $s2, $zero, -0x48
    /* 6E1AC 8007D9AC 06001124 */  addiu      $s1, $zero, 0x6
    /* 6E1B0 8007D9B0 01001024 */  addiu      $s0, $zero, 0x1
    /* 6E1B4 8007D9B4 1000B2AF */  sw         $s2, 0x10($sp)
    /* 6E1B8 8007D9B8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6E1BC 8007D9BC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 6E1C0 8007D9C0 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 6E1C4 8007D9C4 10400000 */  mfhi       $t0
    /* 6E1C8 8007D9C8 C2280800 */  srl        $a1, $t0, 3
    /* 6E1CC 8007D9CC FF00A530 */  andi       $a1, $a1, 0xFF
    /* 6E1D0 8007D9D0 B873000C */  jal        func_8001CEE0
    /* 6E1D4 8007D9D4 3300A524 */   addiu     $a1, $a1, 0x33
    /* 6E1D8 8007D9D8 801F023C */  lui        $v0, (0x1F8002E0 >> 16)
    /* 6E1DC 8007D9DC E0024290 */  lbu        $v0, (0x1F8002E0 & 0xFFFF)($v0)
    /* 6E1E0 8007D9E0 801F013C */  lui        $at, (0x1F8002D1 >> 16)
    /* 6E1E4 8007D9E4 21084100 */  addu       $at, $v0, $at
    /* 6E1E8 8007D9E8 D1022590 */  lbu        $a1, (0x1F8002D1 & 0xFFFF)($at)
    /* 6E1EC 8007D9EC 00000000 */  nop
    /* 6E1F0 8007D9F0 1900B300 */  multu      $a1, $s3
    /* 6E1F4 8007D9F4 1E000424 */  addiu      $a0, $zero, 0x1E
    /* 6E1F8 8007D9F8 21300000 */  addu       $a2, $zero, $zero
    /* 6E1FC 8007D9FC E4FF0724 */  addiu      $a3, $zero, -0x1C
    /* 6E200 8007DA00 1000B2AF */  sw         $s2, 0x10($sp)
    /* 6E204 8007DA04 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6E208 8007DA08 1800A0AF */  sw         $zero, 0x18($sp)
    /* 6E20C 8007DA0C 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 6E210 8007DA10 10400000 */  mfhi       $t0
    /* 6E214 8007DA14 C2180800 */  srl        $v1, $t0, 3
    /* 6E218 8007DA18 80100300 */  sll        $v0, $v1, 2
    /* 6E21C 8007DA1C 21104300 */  addu       $v0, $v0, $v1
    /* 6E220 8007DA20 40100200 */  sll        $v0, $v0, 1
    /* 6E224 8007DA24 2328A200 */  subu       $a1, $a1, $v0
    /* 6E228 8007DA28 FF00A530 */  andi       $a1, $a1, 0xFF
    /* 6E22C 8007DA2C 97F60108 */  j          .L8007DA5C
    /* 6E230 8007DA30 3300A524 */   addiu     $a1, $a1, 0x33
  .L8007DA34:
    /* 6E234 8007DA34 3300A524 */  addiu      $a1, $a1, 0x33
    /* 6E238 8007DA38 21300000 */  addu       $a2, $zero, $zero
    /* 6E23C 8007DA3C CCFF0724 */  addiu      $a3, $zero, -0x34
    /* 6E240 8007DA40 B8FF0224 */  addiu      $v0, $zero, -0x48
    /* 6E244 8007DA44 1000A2AF */  sw         $v0, 0x10($sp)
    /* 6E248 8007DA48 06000224 */  addiu      $v0, $zero, 0x6
    /* 6E24C 8007DA4C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 6E250 8007DA50 01000224 */  addiu      $v0, $zero, 0x1
    /* 6E254 8007DA54 1800A0AF */  sw         $zero, 0x18($sp)
    /* 6E258 8007DA58 1C00A2AF */  sw         $v0, 0x1C($sp)
  .L8007DA5C:
    /* 6E25C 8007DA5C B873000C */  jal        func_8001CEE0
    /* 6E260 8007DA60 00000000 */   nop
    /* 6E264 8007DA64 E0028292 */  lbu        $v0, (0x1F8002E0 & 0xFFFF)($s4)
    /* 6E268 8007DA68 00000000 */  nop
    /* 6E26C 8007DA6C 01004238 */  xori       $v0, $v0, 0x1
    /* 6E270 8007DA70 21108202 */  addu       $v0, $s4, $v0
    /* 6E274 8007DA74 D1024590 */  lbu        $a1, (0x1F8002D1 & 0xFFFF)($v0)
    /* 6E278 8007DA78 00000000 */  nop
    /* 6E27C 8007DA7C 0A00A22C */  sltiu      $v0, $a1, 0xA
    /* 6E280 8007DA80 29004014 */  bnez       $v0, .L8007DB28
    /* 6E284 8007DA84 1F000424 */   addiu     $a0, $zero, 0x1F
    /* 6E288 8007DA88 CCCC133C */  lui        $s3, (0xCCCCCCCD >> 16)
    /* 6E28C 8007DA8C CDCC7336 */  ori        $s3, $s3, (0xCCCCCCCD & 0xFFFF)
    /* 6E290 8007DA90 1900B300 */  multu      $a1, $s3
    /* 6E294 8007DA94 21300000 */  addu       $a2, $zero, $zero
    /* 6E298 8007DA98 18000724 */  addiu      $a3, $zero, 0x18
    /* 6E29C 8007DA9C B8FF1224 */  addiu      $s2, $zero, -0x48
    /* 6E2A0 8007DAA0 06001124 */  addiu      $s1, $zero, 0x6
    /* 6E2A4 8007DAA4 01001024 */  addiu      $s0, $zero, 0x1
    /* 6E2A8 8007DAA8 1000B2AF */  sw         $s2, 0x10($sp)
    /* 6E2AC 8007DAAC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6E2B0 8007DAB0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 6E2B4 8007DAB4 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 6E2B8 8007DAB8 10400000 */  mfhi       $t0
    /* 6E2BC 8007DABC C2280800 */  srl        $a1, $t0, 3
    /* 6E2C0 8007DAC0 FF00A530 */  andi       $a1, $a1, 0xFF
    /* 6E2C4 8007DAC4 B873000C */  jal        func_8001CEE0
    /* 6E2C8 8007DAC8 3300A524 */   addiu     $a1, $a1, 0x33
    /* 6E2CC 8007DACC E0028292 */  lbu        $v0, (0x1F8002E0 & 0xFFFF)($s4)
    /* 6E2D0 8007DAD0 00000000 */  nop
    /* 6E2D4 8007DAD4 01004238 */  xori       $v0, $v0, 0x1
    /* 6E2D8 8007DAD8 21108202 */  addu       $v0, $s4, $v0
    /* 6E2DC 8007DADC D1024590 */  lbu        $a1, (0x1F8002D1 & 0xFFFF)($v0)
    /* 6E2E0 8007DAE0 00000000 */  nop
    /* 6E2E4 8007DAE4 1900B300 */  multu      $a1, $s3
    /* 6E2E8 8007DAE8 20000424 */  addiu      $a0, $zero, 0x20
    /* 6E2EC 8007DAEC 21300000 */  addu       $a2, $zero, $zero
    /* 6E2F0 8007DAF0 30000724 */  addiu      $a3, $zero, 0x30
    /* 6E2F4 8007DAF4 1000B2AF */  sw         $s2, 0x10($sp)
    /* 6E2F8 8007DAF8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6E2FC 8007DAFC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 6E300 8007DB00 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 6E304 8007DB04 10400000 */  mfhi       $t0
    /* 6E308 8007DB08 C2180800 */  srl        $v1, $t0, 3
    /* 6E30C 8007DB0C 80100300 */  sll        $v0, $v1, 2
    /* 6E310 8007DB10 21104300 */  addu       $v0, $v0, $v1
    /* 6E314 8007DB14 40100200 */  sll        $v0, $v0, 1
    /* 6E318 8007DB18 2328A200 */  subu       $a1, $a1, $v0
    /* 6E31C 8007DB1C FF00A530 */  andi       $a1, $a1, 0xFF
    /* 6E320 8007DB20 D4F60108 */  j          .L8007DB50
    /* 6E324 8007DB24 3300A524 */   addiu     $a1, $a1, 0x33
  .L8007DB28:
    /* 6E328 8007DB28 3300A524 */  addiu      $a1, $a1, 0x33
    /* 6E32C 8007DB2C 21300000 */  addu       $a2, $zero, $zero
    /* 6E330 8007DB30 30000724 */  addiu      $a3, $zero, 0x30
    /* 6E334 8007DB34 B8FF0224 */  addiu      $v0, $zero, -0x48
    /* 6E338 8007DB38 1000A2AF */  sw         $v0, 0x10($sp)
    /* 6E33C 8007DB3C 06000224 */  addiu      $v0, $zero, 0x6
    /* 6E340 8007DB40 1400A2AF */  sw         $v0, 0x14($sp)
    /* 6E344 8007DB44 01000224 */  addiu      $v0, $zero, 0x1
    /* 6E348 8007DB48 1800A0AF */  sw         $zero, 0x18($sp)
    /* 6E34C 8007DB4C 1C00A2AF */  sw         $v0, 0x1C($sp)
  .L8007DB50:
    /* 6E350 8007DB50 B873000C */  jal        func_8001CEE0
    /* 6E354 8007DB54 00000000 */   nop
    /* 6E358 8007DB58 00C00224 */  addiu      $v0, $zero, -0x4000
    /* 6E35C 8007DB5C 0E80013C */  lui        $at, %hi(D_800E6D58)
    /* 6E360 8007DB60 586D22A4 */  sh         $v0, %lo(D_800E6D58)($at)
  .L8007DB64:
    /* 6E364 8007DB64 AD028392 */  lbu        $v1, (0x1F8002AD & 0xFFFF)($s4)
    /* 6E368 8007DB68 00000000 */  nop
    /* 6E36C 8007DB6C FF006330 */  andi       $v1, $v1, 0xFF
    /* 6E370 8007DB70 40110300 */  sll        $v0, $v1, 5
    /* 6E374 8007DB74 23104300 */  subu       $v0, $v0, $v1
    /* 6E378 8007DB78 80100200 */  sll        $v0, $v0, 2
    /* 6E37C 8007DB7C 21104300 */  addu       $v0, $v0, $v1
    /* 6E380 8007DB80 C0100200 */  sll        $v0, $v0, 3
    /* 6E384 8007DB84 2110A202 */  addu       $v0, $s5, $v0
    /* 6E388 8007DB88 99034390 */  lbu        $v1, 0x399($v0)
    /* 6E38C 8007DB8C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6E390 8007DB90 2108A102 */  addu       $at, $s5, $at
    /* 6E394 8007DB94 DBAB2290 */  lbu        $v0, -0x5425($at)
    /* 6E398 8007DB98 00000000 */  nop
    /* 6E39C 8007DB9C 26186200 */  xor        $v1, $v1, $v0
    /* 6E3A0 8007DBA0 80100300 */  sll        $v0, $v1, 2
    /* 6E3A4 8007DBA4 21104300 */  addu       $v0, $v0, $v1
    /* 6E3A8 8007DBA8 00110200 */  sll        $v0, $v0, 4
    /* 6E3AC 8007DBAC 48624224 */  addiu      $v0, $v0, 0x6248
    /* 6E3B0 8007DBB0 94028396 */  lhu        $v1, (0x1F800294 & 0xFFFF)($s4)
    /* 6E3B4 8007DBB4 2120A202 */  addu       $a0, $s5, $v0
    /* 6E3B8 8007DBB8 FFFF6330 */  andi       $v1, $v1, 0xFFFF
    /* 6E3BC 8007DBBC 2900622C */  sltiu      $v0, $v1, 0x29
    /* 6E3C0 8007DBC0 24004014 */  bnez       $v0, .L8007DC54
    /* 6E3C4 8007DBC4 B500622C */   sltiu     $v0, $v1, 0xB5
    /* 6E3C8 8007DBC8 07004014 */  bnez       $v0, .L8007DBE8
    /* 6E3CC 8007DBCC 00100224 */   addiu     $v0, $zero, 0x1000
    /* 6E3D0 8007DBD0 1E008384 */  lh         $v1, 0x1E($a0)
    /* 6E3D4 8007DBD4 00000000 */  nop
    /* 6E3D8 8007DBD8 03006214 */  bne        $v1, $v0, .L8007DBE8
    /* 6E3DC 8007DBDC 00100224 */   addiu     $v0, $zero, 0x1000
    /* 6E3E0 8007DBE0 13F70108 */  j          .L8007DC4C
    /* 6E3E4 8007DBE4 1E0082A4 */   sh        $v0, 0x1E($a0)
  .L8007DBE8:
    /* 6E3E8 8007DBE8 1E008294 */  lhu        $v0, 0x1E($a0)
    /* 6E3EC 8007DBEC 0E80033C */  lui        $v1, %hi(D_800E6D58)
    /* 6E3F0 8007DBF0 586D6394 */  lhu        $v1, %lo(D_800E6D58)($v1)
    /* 6E3F4 8007DBF4 00000000 */  nop
    /* 6E3F8 8007DBF8 21104300 */  addu       $v0, $v0, $v1
    /* 6E3FC 8007DBFC 1E0082A4 */  sh         $v0, 0x1E($a0)
    /* 6E400 8007DC00 00140200 */  sll        $v0, $v0, 16
    /* 6E404 8007DC04 03140200 */  sra        $v0, $v0, 16
    /* 6E408 8007DC08 01104228 */  slti       $v0, $v0, 0x1001
    /* 6E40C 8007DC0C 05004014 */  bnez       $v0, .L8007DC24
    /* 6E410 8007DC10 00100224 */   addiu     $v0, $zero, 0x1000
    /* 6E414 8007DC14 1E0082A4 */  sh         $v0, 0x1E($a0)
    /* 6E418 8007DC18 00FC0224 */  addiu      $v0, $zero, -0x400
    /* 6E41C 8007DC1C 0E80013C */  lui        $at, %hi(D_800E6D58)
    /* 6E420 8007DC20 586D22A4 */  sh         $v0, %lo(D_800E6D58)($at)
  .L8007DC24:
    /* 6E424 8007DC24 1E008284 */  lh         $v0, 0x1E($a0)
    /* 6E428 8007DC28 00000000 */  nop
    /* 6E42C 8007DC2C 00F04228 */  slti       $v0, $v0, -0x1000
    /* 6E430 8007DC30 05004010 */  beqz       $v0, .L8007DC48
    /* 6E434 8007DC34 00F00224 */   addiu     $v0, $zero, -0x1000
    /* 6E438 8007DC38 1E0082A4 */  sh         $v0, 0x1E($a0)
    /* 6E43C 8007DC3C 00040224 */  addiu      $v0, $zero, 0x400
    /* 6E440 8007DC40 0E80013C */  lui        $at, %hi(D_800E6D58)
    /* 6E444 8007DC44 586D22A4 */  sh         $v0, %lo(D_800E6D58)($at)
  .L8007DC48:
    /* 6E448 8007DC48 1E008284 */  lh         $v0, 0x1E($a0)
  .L8007DC4C:
    /* 6E44C 8007DC4C 00000000 */  nop
    /* 6E450 8007DC50 460082A4 */  sh         $v0, 0x46($a0)
  .L8007DC54:
    /* 6E454 8007DC54 94028296 */  lhu        $v0, (0x1F800294 & 0xFFFF)($s4)
    /* 6E458 8007DC58 00000000 */  nop
    /* 6E45C 8007DC5C 01004224 */  addiu      $v0, $v0, 0x1
    /* 6E460 8007DC60 6949010C */  jal        func_800525A4
    /* 6E464 8007DC64 940282A6 */   sh        $v0, (0x1F800294 & 0xFFFF)($s4)
    /* 6E468 8007DC68 05004010 */  beqz       $v0, .L8007DC80
    /* 6E46C 8007DC6C 00000000 */   nop
    /* 6E470 8007DC70 88AD020C */  jal        func_800AB620
    /* 6E474 8007DC74 11000424 */   addiu     $a0, $zero, 0x11
    /* 6E478 8007DC78 25F70108 */  j          .L8007DC94
    /* 6E47C 8007DC7C 00000000 */   nop
  .L8007DC80:
    /* 6E480 8007DC80 94028296 */  lhu        $v0, (0x1F800294 & 0xFFFF)($s4)
    /* 6E484 8007DC84 00000000 */  nop
    /* 6E488 8007DC88 D300422C */  sltiu      $v0, $v0, 0xD3
    /* 6E48C 8007DC8C 03004014 */  bnez       $v0, .L8007DC9C
    /* 6E490 8007DC90 00000000 */   nop
  .L8007DC94:
    /* 6E494 8007DC94 7F5C000C */  jal        func_800171FC
    /* 6E498 8007DC98 03000424 */   addiu     $a0, $zero, 0x3
  .L8007DC9C:
    /* 6E49C 8007DC9C 4000BF8F */  lw         $ra, 0x40($sp)
    /* 6E4A0 8007DCA0 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 6E4A4 8007DCA4 3800B48F */  lw         $s4, 0x38($sp)
    /* 6E4A8 8007DCA8 3400B38F */  lw         $s3, 0x34($sp)
    /* 6E4AC 8007DCAC 3000B28F */  lw         $s2, 0x30($sp)
    /* 6E4B0 8007DCB0 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 6E4B4 8007DCB4 2800B08F */  lw         $s0, 0x28($sp)
    /* 6E4B8 8007DCB8 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 6E4BC 8007DCBC 0800E003 */  jr         $ra
    /* 6E4C0 8007DCC0 00000000 */   nop
endlabel func_8007D7E0
