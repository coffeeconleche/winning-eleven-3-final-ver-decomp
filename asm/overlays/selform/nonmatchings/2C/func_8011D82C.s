nonmatching func_8011D82C, 0x14B8

glabel func_8011D82C
    /* 2C 8011D82C 1180033C */  lui        $v1, %hi(D_8010A321)
    /* 30 8011D830 21A36390 */  lbu        $v1, %lo(D_8010A321)($v1)
    /* 34 8011D834 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 38 8011D838 3000B4AF */  sw         $s4, 0x30($sp)
    /* 3C 8011D83C 1080143C */  lui        $s4, %hi(D_800FF748)
    /* 40 8011D840 48F79426 */  addiu      $s4, $s4, %lo(D_800FF748)
    /* 44 8011D844 3400B5AF */  sw         $s5, 0x34($sp)
    /* 48 8011D848 801F153C */  lui        $s5, (0x1F8001EC >> 16)
    /* 4C 8011D84C 2800B2AF */  sw         $s2, 0x28($sp)
    /* 50 8011D850 01001224 */  addiu      $s2, $zero, 0x1
    /* 54 8011D854 3800BFAF */  sw         $ra, 0x38($sp)
    /* 58 8011D858 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 5C 8011D85C 2400B1AF */  sw         $s1, 0x24($sp)
    /* 60 8011D860 37007210 */  beq        $v1, $s2, .L8011D940
    /* 64 8011D864 2000B0AF */   sw        $s0, 0x20($sp)
    /* 68 8011D868 02006228 */  slti       $v0, $v1, 0x2
    /* 6C 8011D86C 05004010 */  beqz       $v0, .L8011D884
    /* 70 8011D870 00000000 */   nop
    /* 74 8011D874 0A006010 */  beqz       $v1, .L8011D8A0
    /* 78 8011D878 21900000 */   addu      $s2, $zero, $zero
    /* 7C 8011D87C 2F7B0408 */  j          .L8011ECBC
    /* 80 8011D880 00000000 */   nop
  .L8011D884:
    /* 84 8011D884 02000224 */  addiu      $v0, $zero, 0x2
    /* 88 8011D888 92036210 */  beq        $v1, $v0, .L8011E6D4
    /* 8C 8011D88C 03000224 */   addiu     $v0, $zero, 0x3
    /* 90 8011D890 AD046210 */  beq        $v1, $v0, .L8011EB48
    /* 94 8011D894 00000000 */   nop
    /* 98 8011D898 2F7B0408 */  j          .L8011ECBC
    /* 9C 8011D89C 00000000 */   nop
  .L8011D8A0:
    /* A0 8011D8A0 1280053C */  lui        $a1, %hi(D_80123020)
    /* A4 8011D8A4 2030A524 */  addiu      $a1, $a1, %lo(D_80123020)
    /* A8 8011D8A8 0A000424 */  addiu      $a0, $zero, 0xA
    /* AC 8011D8AC FFFF4232 */  andi       $v0, $s2, 0xFFFF
  .L8011D8B0:
    /* B0 8011D8B0 01005226 */  addiu      $s2, $s2, 0x1
    /* B4 8011D8B4 C0180200 */  sll        $v1, $v0, 3
    /* B8 8011D8B8 21186200 */  addu       $v1, $v1, $v0
    /* BC 8011D8BC 40180300 */  sll        $v1, $v1, 1
    /* C0 8011D8C0 21186500 */  addu       $v1, $v1, $a1
    /* C4 8011D8C4 1280013C */  lui        $at, %hi(D_80123044)
    /* C8 8011D8C8 443023AC */  sw         $v1, %lo(D_80123044)($at)
    /* CC 8011D8CC 000060A4 */  sh         $zero, 0x0($v1)
    /* D0 8011D8D0 020060A4 */  sh         $zero, 0x2($v1)
    /* D4 8011D8D4 040060A4 */  sh         $zero, 0x4($v1)
    /* D8 8011D8D8 060060A4 */  sh         $zero, 0x6($v1)
    /* DC 8011D8DC 080060A4 */  sh         $zero, 0x8($v1)
    /* E0 8011D8E0 0A0060A4 */  sh         $zero, 0xA($v1)
    /* E4 8011D8E4 0C0060A4 */  sh         $zero, 0xC($v1)
    /* E8 8011D8E8 0E0064A4 */  sh         $a0, 0xE($v1)
    /* EC 8011D8EC 100060A4 */  sh         $zero, 0x10($v1)
    /* F0 8011D8F0 1280013C */  lui        $at, %hi(D_8012304A)
    /* F4 8011D8F4 21082200 */  addu       $at, $at, $v0
    /* F8 8011D8F8 4A3020A0 */  sb         $zero, %lo(D_8012304A)($at)
    /* FC 8011D8FC FFFF4232 */  andi       $v0, $s2, 0xFFFF
    /* 100 8011D900 0200422C */  sltiu      $v0, $v0, 0x2
    /* 104 8011D904 EAFF4014 */  bnez       $v0, .L8011D8B0
    /* 108 8011D908 FFFF4232 */   andi      $v0, $s2, 0xFFFF
    /* 10C 8011D90C EC01A392 */  lbu        $v1, (0x1F8001EC & 0xFFFF)($s5)
    /* 110 8011D910 0100013C */  lui        $at, (0x10000 >> 16)
    /* 114 8011D914 21088102 */  addu       $at, $s4, $at
    /* 118 8011D918 D9AB2290 */  lbu        $v0, -0x5427($at)
    /* 11C 8011D91C EC01A0A2 */  sb         $zero, (0x1F8001EC & 0xFFFF)($s5)
    /* 120 8011D920 1280013C */  lui        $at, %hi(D_80123049)
    /* 124 8011D924 493020A0 */  sb         $zero, %lo(D_80123049)($at)
    /* 128 8011D928 1280013C */  lui        $at, %hi(D_80123048)
    /* 12C 8011D92C 483020A0 */  sb         $zero, %lo(D_80123048)($at)
    /* 130 8011D930 1280013C */  lui        $at, %hi(D_80123010)
    /* 134 8011D934 103023A0 */  sb         $v1, %lo(D_80123010)($at)
    /* 138 8011D938 2C7B0408 */  j          .L8011ECB0
    /* 13C 8011D93C 01004224 */   addiu     $v0, $v0, 0x1
  .L8011D940:
    /* 140 8011D940 01000424 */  addiu      $a0, $zero, 0x1
    /* 144 8011D944 6A000524 */  addiu      $a1, $zero, 0x6A
    /* 148 8011D948 0050063C */  lui        $a2, (0x50000000 >> 16)
    /* 14C 8011D94C 21380000 */  addu       $a3, $zero, $zero
    /* 150 8011D950 09001024 */  addiu      $s0, $zero, 0x9
    /* 154 8011D954 1000A0AF */  sw         $zero, 0x10($sp)
    /* 158 8011D958 1400B0AF */  sw         $s0, 0x14($sp)
    /* 15C 8011D95C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 160 8011D960 B873000C */  jal        func_8001CEE0
    /* 164 8011D964 1C00B2AF */   sw        $s2, 0x1C($sp)
    /* 168 8011D968 02000424 */  addiu      $a0, $zero, 0x2
    /* 16C 8011D96C 6B000524 */  addiu      $a1, $zero, 0x6B
    /* 170 8011D970 0050063C */  lui        $a2, (0x50000000 >> 16)
    /* 174 8011D974 801F023C */  lui        $v0, (0x1F8002E1 >> 16)
    /* 178 8011D978 E1024290 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($v0)
    /* 17C 8011D97C 21380000 */  addu       $a3, $zero, $zero
    /* 180 8011D980 1000A0AF */  sw         $zero, 0x10($sp)
    /* 184 8011D984 1400B0AF */  sw         $s0, 0x14($sp)
    /* 188 8011D988 1800A0AF */  sw         $zero, 0x18($sp)
    /* 18C 8011D98C 05004238 */  xori       $v0, $v0, 0x5
    /* 190 8011D990 2B100200 */  sltu       $v0, $zero, $v0
    /* 194 8011D994 B873000C */  jal        func_8001CEE0
    /* 198 8011D998 1C00A2AF */   sw        $v0, 0x1C($sp)
    /* 19C 8011D99C 03000424 */  addiu      $a0, $zero, 0x3
    /* 1A0 8011D9A0 18100524 */  addiu      $a1, $zero, 0x1018
    /* 1A4 8011D9A4 21300000 */  addu       $a2, $zero, $zero
    /* 1A8 8011D9A8 21380000 */  addu       $a3, $zero, $zero
    /* 1AC 8011D9AC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1B0 8011D9B0 1400B0AF */  sw         $s0, 0x14($sp)
    /* 1B4 8011D9B4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1B8 8011D9B8 B873000C */  jal        func_8001CEE0
    /* 1BC 8011D9BC 1C00B2AF */   sw        $s2, 0x1C($sp)
    /* 1C0 8011D9C0 04000424 */  addiu      $a0, $zero, 0x4
    /* 1C4 8011D9C4 19100524 */  addiu      $a1, $zero, 0x1019
    /* 1C8 8011D9C8 21300000 */  addu       $a2, $zero, $zero
    /* 1CC 8011D9CC 21380000 */  addu       $a3, $zero, $zero
    /* 1D0 8011D9D0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1D4 8011D9D4 1400B0AF */  sw         $s0, 0x14($sp)
    /* 1D8 8011D9D8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1DC 8011D9DC B873000C */  jal        func_8001CEE0
    /* 1E0 8011D9E0 1C00B2AF */   sw        $s2, 0x1C($sp)
    /* 1E4 8011D9E4 07000424 */  addiu      $a0, $zero, 0x7
    /* 1E8 8011D9E8 1A100524 */  addiu      $a1, $zero, 0x101A
    /* 1EC 8011D9EC 21300000 */  addu       $a2, $zero, $zero
    /* 1F0 8011D9F0 21380000 */  addu       $a3, $zero, $zero
    /* 1F4 8011D9F4 0A000224 */  addiu      $v0, $zero, 0xA
    /* 1F8 8011D9F8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1FC 8011D9FC 1400A2AF */  sw         $v0, 0x14($sp)
    /* 200 8011DA00 1800A0AF */  sw         $zero, 0x18($sp)
    /* 204 8011DA04 B873000C */  jal        func_8001CEE0
    /* 208 8011DA08 1C00A0AF */   sw        $zero, 0x1C($sp)
    /* 20C 8011DA0C 08000424 */  addiu      $a0, $zero, 0x8
    /* 210 8011DA10 09100524 */  addiu      $a1, $zero, 0x1009
    /* 214 8011DA14 21300000 */  addu       $a2, $zero, $zero
    /* 218 8011DA18 21380000 */  addu       $a3, $zero, $zero
    /* 21C 8011DA1C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 220 8011DA20 1400B0AF */  sw         $s0, 0x14($sp)
    /* 224 8011DA24 1800A0AF */  sw         $zero, 0x18($sp)
    /* 228 8011DA28 B873000C */  jal        func_8001CEE0
    /* 22C 8011DA2C 1C00B2AF */   sw        $s2, 0x1C($sp)
    /* 230 8011DA30 09000424 */  addiu      $a0, $zero, 0x9
    /* 234 8011DA34 0A100524 */  addiu      $a1, $zero, 0x100A
    /* 238 8011DA38 21300000 */  addu       $a2, $zero, $zero
    /* 23C 8011DA3C 801F023C */  lui        $v0, (0x1F8002E1 >> 16)
    /* 240 8011DA40 E1024290 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($v0)
    /* 244 8011DA44 21380000 */  addu       $a3, $zero, $zero
    /* 248 8011DA48 1000A0AF */  sw         $zero, 0x10($sp)
    /* 24C 8011DA4C 1400B0AF */  sw         $s0, 0x14($sp)
    /* 250 8011DA50 1800A0AF */  sw         $zero, 0x18($sp)
    /* 254 8011DA54 05004238 */  xori       $v0, $v0, 0x5
    /* 258 8011DA58 2B100200 */  sltu       $v0, $zero, $v0
    /* 25C 8011DA5C B873000C */  jal        func_8001CEE0
    /* 260 8011DA60 1C00A2AF */   sw        $v0, 0x1C($sp)
    /* 264 8011DA64 0A000424 */  addiu      $a0, $zero, 0xA
    /* 268 8011DA68 04100524 */  addiu      $a1, $zero, 0x1004
    /* 26C 8011DA6C 21300000 */  addu       $a2, $zero, $zero
    /* 270 8011DA70 21380000 */  addu       $a3, $zero, $zero
    /* 274 8011DA74 1000A0AF */  sw         $zero, 0x10($sp)
    /* 278 8011DA78 1400B0AF */  sw         $s0, 0x14($sp)
    /* 27C 8011DA7C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 280 8011DA80 B873000C */  jal        func_8001CEE0
    /* 284 8011DA84 1C00B2AF */   sw        $s2, 0x1C($sp)
    /* 288 8011DA88 0B000424 */  addiu      $a0, $zero, 0xB
    /* 28C 8011DA8C 05100524 */  addiu      $a1, $zero, 0x1005
    /* 290 8011DA90 21300000 */  addu       $a2, $zero, $zero
    /* 294 8011DA94 21380000 */  addu       $a3, $zero, $zero
    /* 298 8011DA98 1000A0AF */  sw         $zero, 0x10($sp)
    /* 29C 8011DA9C 1400B0AF */  sw         $s0, 0x14($sp)
    /* 2A0 8011DAA0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 2A4 8011DAA4 B873000C */  jal        func_8001CEE0
    /* 2A8 8011DAA8 1C00B2AF */   sw        $s2, 0x1C($sp)
    /* 2AC 8011DAAC 0C000424 */  addiu      $a0, $zero, 0xC
    /* 2B0 8011DAB0 6E000524 */  addiu      $a1, $zero, 0x6E
    /* 2B4 8011DAB4 21300000 */  addu       $a2, $zero, $zero
    /* 2B8 8011DAB8 21380000 */  addu       $a3, $zero, $zero
    /* 2BC 8011DABC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 2C0 8011DAC0 1400B0AF */  sw         $s0, 0x14($sp)
    /* 2C4 8011DAC4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 2C8 8011DAC8 B873000C */  jal        func_8001CEE0
    /* 2CC 8011DACC 1C00B2AF */   sw        $s2, 0x1C($sp)
    /* 2D0 8011DAD0 0D000424 */  addiu      $a0, $zero, 0xD
    /* 2D4 8011DAD4 6F000524 */  addiu      $a1, $zero, 0x6F
    /* 2D8 8011DAD8 21300000 */  addu       $a2, $zero, $zero
    /* 2DC 8011DADC 801F023C */  lui        $v0, (0x1F8002E1 >> 16)
    /* 2E0 8011DAE0 E1024290 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($v0)
    /* 2E4 8011DAE4 21380000 */  addu       $a3, $zero, $zero
    /* 2E8 8011DAE8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 2EC 8011DAEC 1400B0AF */  sw         $s0, 0x14($sp)
    /* 2F0 8011DAF0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 2F4 8011DAF4 05004238 */  xori       $v0, $v0, 0x5
    /* 2F8 8011DAF8 2B100200 */  sltu       $v0, $zero, $v0
    /* 2FC 8011DAFC B873000C */  jal        func_8001CEE0
    /* 300 8011DB00 1C00A2AF */   sw        $v0, 0x1C($sp)
    /* 304 8011DB04 0E000424 */  addiu      $a0, $zero, 0xE
    /* 308 8011DB08 70000524 */  addiu      $a1, $zero, 0x70
    /* 30C 8011DB0C 21300000 */  addu       $a2, $zero, $zero
    /* 310 8011DB10 21380000 */  addu       $a3, $zero, $zero
    /* 314 8011DB14 07001124 */  addiu      $s1, $zero, 0x7
    /* 318 8011DB18 1000A0AF */  sw         $zero, 0x10($sp)
    /* 31C 8011DB1C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 320 8011DB20 1800A0AF */  sw         $zero, 0x18($sp)
    /* 324 8011DB24 B873000C */  jal        func_8001CEE0
    /* 328 8011DB28 1C00B2AF */   sw        $s2, 0x1C($sp)
    /* 32C 8011DB2C 0F000424 */  addiu      $a0, $zero, 0xF
    /* 330 8011DB30 71000524 */  addiu      $a1, $zero, 0x71
    /* 334 8011DB34 21300000 */  addu       $a2, $zero, $zero
    /* 338 8011DB38 801F023C */  lui        $v0, (0x1F8002E1 >> 16)
    /* 33C 8011DB3C E1024290 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($v0)
    /* 340 8011DB40 21380000 */  addu       $a3, $zero, $zero
    /* 344 8011DB44 1000A0AF */  sw         $zero, 0x10($sp)
    /* 348 8011DB48 1400B1AF */  sw         $s1, 0x14($sp)
    /* 34C 8011DB4C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 350 8011DB50 05004238 */  xori       $v0, $v0, 0x5
    /* 354 8011DB54 2B100200 */  sltu       $v0, $zero, $v0
    /* 358 8011DB58 B873000C */  jal        func_8001CEE0
    /* 35C 8011DB5C 1C00A2AF */   sw        $v0, 0x1C($sp)
    /* 360 8011DB60 10000424 */  addiu      $a0, $zero, 0x10
    /* 364 8011DB64 72000524 */  addiu      $a1, $zero, 0x72
    /* 368 8011DB68 21300000 */  addu       $a2, $zero, $zero
    /* 36C 8011DB6C 21380000 */  addu       $a3, $zero, $zero
    /* 370 8011DB70 1000A0AF */  sw         $zero, 0x10($sp)
    /* 374 8011DB74 1400B0AF */  sw         $s0, 0x14($sp)
    /* 378 8011DB78 1800A0AF */  sw         $zero, 0x18($sp)
    /* 37C 8011DB7C B873000C */  jal        func_8001CEE0
    /* 380 8011DB80 1C00B2AF */   sw        $s2, 0x1C($sp)
    /* 384 8011DB84 11000424 */  addiu      $a0, $zero, 0x11
    /* 388 8011DB88 72000524 */  addiu      $a1, $zero, 0x72
    /* 38C 8011DB8C 21300000 */  addu       $a2, $zero, $zero
    /* 390 8011DB90 06010724 */  addiu      $a3, $zero, 0x106
    /* 394 8011DB94 1000A0AF */  sw         $zero, 0x10($sp)
    /* 398 8011DB98 1400B0AF */  sw         $s0, 0x14($sp)
    /* 39C 8011DB9C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3A0 8011DBA0 B873000C */  jal        func_8001CEE0
    /* 3A4 8011DBA4 1C00A0AF */   sw        $zero, 0x1C($sp)
    /* 3A8 8011DBA8 12000424 */  addiu      $a0, $zero, 0x12
    /* 3AC 8011DBAC 73000524 */  addiu      $a1, $zero, 0x73
    /* 3B0 8011DBB0 21300000 */  addu       $a2, $zero, $zero
    /* 3B4 8011DBB4 21380000 */  addu       $a3, $zero, $zero
    /* 3B8 8011DBB8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3BC 8011DBBC 1400B0AF */  sw         $s0, 0x14($sp)
    /* 3C0 8011DBC0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3C4 8011DBC4 B873000C */  jal        func_8001CEE0
    /* 3C8 8011DBC8 1C00B2AF */   sw        $s2, 0x1C($sp)
    /* 3CC 8011DBCC 13000424 */  addiu      $a0, $zero, 0x13
    /* 3D0 8011DBD0 74000524 */  addiu      $a1, $zero, 0x74
    /* 3D4 8011DBD4 21300000 */  addu       $a2, $zero, $zero
    /* 3D8 8011DBD8 801F023C */  lui        $v0, (0x1F8002E1 >> 16)
    /* 3DC 8011DBDC E1024290 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($v0)
    /* 3E0 8011DBE0 21380000 */  addu       $a3, $zero, $zero
    /* 3E4 8011DBE4 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3E8 8011DBE8 1400B0AF */  sw         $s0, 0x14($sp)
    /* 3EC 8011DBEC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3F0 8011DBF0 05004238 */  xori       $v0, $v0, 0x5
    /* 3F4 8011DBF4 2B100200 */  sltu       $v0, $zero, $v0
    /* 3F8 8011DBF8 B873000C */  jal        func_8001CEE0
    /* 3FC 8011DBFC 1C00A2AF */   sw        $v0, 0x1C($sp)
    /* 400 8011DC00 14000424 */  addiu      $a0, $zero, 0x14
    /* 404 8011DC04 07100524 */  addiu      $a1, $zero, 0x1007
    /* 408 8011DC08 21300000 */  addu       $a2, $zero, $zero
    /* 40C 8011DC0C 21380000 */  addu       $a3, $zero, $zero
    /* 410 8011DC10 1000A0AF */  sw         $zero, 0x10($sp)
    /* 414 8011DC14 1400B0AF */  sw         $s0, 0x14($sp)
    /* 418 8011DC18 1800A0AF */  sw         $zero, 0x18($sp)
    /* 41C 8011DC1C B873000C */  jal        func_8001CEE0
    /* 420 8011DC20 1C00B2AF */   sw        $s2, 0x1C($sp)
    /* 424 8011DC24 15000424 */  addiu      $a0, $zero, 0x15
    /* 428 8011DC28 08100524 */  addiu      $a1, $zero, 0x1008
    /* 42C 8011DC2C 21300000 */  addu       $a2, $zero, $zero
    /* 430 8011DC30 801F023C */  lui        $v0, (0x1F8002E1 >> 16)
    /* 434 8011DC34 E1024290 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($v0)
    /* 438 8011DC38 21380000 */  addu       $a3, $zero, $zero
    /* 43C 8011DC3C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 440 8011DC40 1400B0AF */  sw         $s0, 0x14($sp)
    /* 444 8011DC44 1800A0AF */  sw         $zero, 0x18($sp)
    /* 448 8011DC48 05004238 */  xori       $v0, $v0, 0x5
    /* 44C 8011DC4C 2B100200 */  sltu       $v0, $zero, $v0
    /* 450 8011DC50 B873000C */  jal        func_8001CEE0
    /* 454 8011DC54 1C00A2AF */   sw        $v0, 0x1C($sp)
    /* 458 8011DC58 16000424 */  addiu      $a0, $zero, 0x16
    /* 45C 8011DC5C 6C000524 */  addiu      $a1, $zero, 0x6C
    /* 460 8011DC60 21300000 */  addu       $a2, $zero, $zero
    /* 464 8011DC64 21380000 */  addu       $a3, $zero, $zero
    /* 468 8011DC68 1000A0AF */  sw         $zero, 0x10($sp)
    /* 46C 8011DC6C 1400B0AF */  sw         $s0, 0x14($sp)
    /* 470 8011DC70 1800A0AF */  sw         $zero, 0x18($sp)
    /* 474 8011DC74 B873000C */  jal        func_8001CEE0
    /* 478 8011DC78 1C00B2AF */   sw        $s2, 0x1C($sp)
    /* 47C 8011DC7C 17000424 */  addiu      $a0, $zero, 0x17
    /* 480 8011DC80 6D000524 */  addiu      $a1, $zero, 0x6D
    /* 484 8011DC84 21300000 */  addu       $a2, $zero, $zero
    /* 488 8011DC88 801F023C */  lui        $v0, (0x1F8002E1 >> 16)
    /* 48C 8011DC8C E1024290 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($v0)
    /* 490 8011DC90 21380000 */  addu       $a3, $zero, $zero
    /* 494 8011DC94 1000A0AF */  sw         $zero, 0x10($sp)
    /* 498 8011DC98 1400B0AF */  sw         $s0, 0x14($sp)
    /* 49C 8011DC9C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 4A0 8011DCA0 05004238 */  xori       $v0, $v0, 0x5
    /* 4A4 8011DCA4 2B100200 */  sltu       $v0, $zero, $v0
    /* 4A8 8011DCA8 B873000C */  jal        func_8001CEE0
    /* 4AC 8011DCAC 1C00A2AF */   sw        $v0, 0x1C($sp)
    /* 4B0 8011DCB0 18000424 */  addiu      $a0, $zero, 0x18
    /* 4B4 8011DCB4 75000524 */  addiu      $a1, $zero, 0x75
    /* 4B8 8011DCB8 21300000 */  addu       $a2, $zero, $zero
    /* 4BC 8011DCBC 21380000 */  addu       $a3, $zero, $zero
    /* 4C0 8011DCC0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 4C4 8011DCC4 1400B0AF */  sw         $s0, 0x14($sp)
    /* 4C8 8011DCC8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 4CC 8011DCCC B873000C */  jal        func_8001CEE0
    /* 4D0 8011DCD0 1C00B2AF */   sw        $s2, 0x1C($sp)
    /* 4D4 8011DCD4 801F033C */  lui        $v1, (0x1F8002E1 >> 16)
    /* 4D8 8011DCD8 E1026390 */  lbu        $v1, (0x1F8002E1 & 0xFFFF)($v1)
    /* 4DC 8011DCDC 05000224 */  addiu      $v0, $zero, 0x5
    /* 4E0 8011DCE0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 4E4 8011DCE4 03006214 */  bne        $v1, $v0, .L8011DCF4
    /* 4E8 8011DCE8 1400B0AF */   sw        $s0, 0x14($sp)
    /* 4EC 8011DCEC 3E770408 */  j          .L8011DCF8
    /* 4F0 8011DCF0 5B000224 */   addiu     $v0, $zero, 0x5B
  .L8011DCF4:
    /* 4F4 8011DCF4 33000224 */  addiu      $v0, $zero, 0x33
  .L8011DCF8:
    /* 4F8 8011DCF8 1800A2AF */  sw         $v0, 0x18($sp)
    /* 4FC 8011DCFC 19000424 */  addiu      $a0, $zero, 0x19
    /* 500 8011DD00 76000524 */  addiu      $a1, $zero, 0x76
    /* 504 8011DD04 21300000 */  addu       $a2, $zero, $zero
    /* 508 8011DD08 21380000 */  addu       $a3, $zero, $zero
    /* 50C 8011DD0C 01001324 */  addiu      $s3, $zero, 0x1
    /* 510 8011DD10 B873000C */  jal        func_8001CEE0
    /* 514 8011DD14 1C00B3AF */   sw        $s3, 0x1C($sp)
    /* 518 8011DD18 DF02A292 */  lbu        $v0, (0x1F8002DF & 0xFFFF)($s5)
    /* 51C 8011DD1C 00000000 */  nop
    /* 520 8011DD20 01004230 */  andi       $v0, $v0, 0x1
    /* 524 8011DD24 02004014 */  bnez       $v0, .L8011DD30
    /* 528 8011DD28 01100524 */   addiu     $a1, $zero, 0x1001
    /* 52C 8011DD2C 00100524 */  addiu      $a1, $zero, 0x1000
  .L8011DD30:
    /* 530 8011DD30 1A000424 */  addiu      $a0, $zero, 0x1A
    /* 534 8011DD34 21300000 */  addu       $a2, $zero, $zero
    /* 538 8011DD38 21380000 */  addu       $a3, $zero, $zero
    /* 53C 8011DD3C 09001124 */  addiu      $s1, $zero, 0x9
    /* 540 8011DD40 1000A0AF */  sw         $zero, 0x10($sp)
    /* 544 8011DD44 1400B1AF */  sw         $s1, 0x14($sp)
    /* 548 8011DD48 1800A0AF */  sw         $zero, 0x18($sp)
    /* 54C 8011DD4C B873000C */  jal        func_8001CEE0
    /* 550 8011DD50 1C00B3AF */   sw        $s3, 0x1C($sp)
    /* 554 8011DD54 DF02A292 */  lbu        $v0, (0x1F8002DF & 0xFFFF)($s5)
    /* 558 8011DD58 00000000 */  nop
    /* 55C 8011DD5C 01004230 */  andi       $v0, $v0, 0x1
    /* 560 8011DD60 02004014 */  bnez       $v0, .L8011DD6C
    /* 564 8011DD64 00100524 */   addiu     $a1, $zero, 0x1000
    /* 568 8011DD68 01100524 */  addiu      $a1, $zero, 0x1001
  .L8011DD6C:
    /* 56C 8011DD6C 1B000424 */  addiu      $a0, $zero, 0x1B
    /* 570 8011DD70 21300000 */  addu       $a2, $zero, $zero
    /* 574 8011DD74 21380000 */  addu       $a3, $zero, $zero
    /* 578 8011DD78 E102A292 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($s5)
    /* 57C 8011DD7C 21900000 */  addu       $s2, $zero, $zero
    /* 580 8011DD80 1000A0AF */  sw         $zero, 0x10($sp)
    /* 584 8011DD84 1400B1AF */  sw         $s1, 0x14($sp)
    /* 588 8011DD88 1800A0AF */  sw         $zero, 0x18($sp)
    /* 58C 8011DD8C 05004238 */  xori       $v0, $v0, 0x5
    /* 590 8011DD90 2B100200 */  sltu       $v0, $zero, $v0
    /* 594 8011DD94 B873000C */  jal        func_8001CEE0
    /* 598 8011DD98 1C00A2AF */   sw        $v0, 0x1C($sp)
    /* 59C 8011DD9C 1C000424 */  addiu      $a0, $zero, 0x1C
    /* 5A0 8011DDA0 06100524 */  addiu      $a1, $zero, 0x1006
    /* 5A4 8011DDA4 21300000 */  addu       $a2, $zero, $zero
    /* 5A8 8011DDA8 21380000 */  addu       $a3, $zero, $zero
    /* 5AC 8011DDAC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 5B0 8011DDB0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5B4 8011DDB4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 5B8 8011DDB8 B873000C */  jal        func_8001CEE0
    /* 5BC 8011DDBC 1C00B3AF */   sw        $s3, 0x1C($sp)
    /* 5C0 8011DDC0 1D000424 */  addiu      $a0, $zero, 0x1D
    /* 5C4 8011DDC4 06100524 */  addiu      $a1, $zero, 0x1006
    /* 5C8 8011DDC8 21300000 */  addu       $a2, $zero, $zero
    /* 5CC 8011DDCC E102A292 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($s5)
    /* 5D0 8011DDD0 50000724 */  addiu      $a3, $zero, 0x50
    /* 5D4 8011DDD4 1000A0AF */  sw         $zero, 0x10($sp)
    /* 5D8 8011DDD8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5DC 8011DDDC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 5E0 8011DDE0 05004238 */  xori       $v0, $v0, 0x5
    /* 5E4 8011DDE4 2B100200 */  sltu       $v0, $zero, $v0
    /* 5E8 8011DDE8 B873000C */  jal        func_8001CEE0
    /* 5EC 8011DDEC 1C00A2AF */   sw        $v0, 0x1C($sp)
    /* 5F0 8011DDF0 1E000424 */  addiu      $a0, $zero, 0x1E
    /* 5F4 8011DDF4 0B100524 */  addiu      $a1, $zero, 0x100B
    /* 5F8 8011DDF8 21300000 */  addu       $a2, $zero, $zero
    /* 5FC 8011DDFC 0103A292 */  lbu        $v0, (0x1F800301 & 0xFFFF)($s5)
    /* 600 8011DE00 21380000 */  addu       $a3, $zero, $zero
    /* 604 8011DE04 1400B1AF */  sw         $s1, 0x14($sp)
    /* 608 8011DE08 1800A0AF */  sw         $zero, 0x18($sp)
    /* 60C 8011DE0C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 610 8011DE10 00110200 */  sll        $v0, $v0, 4
    /* 614 8011DE14 00FF4224 */  addiu      $v0, $v0, -0x100
    /* 618 8011DE18 B873000C */  jal        func_8001CEE0
    /* 61C 8011DE1C 1000A2AF */   sw        $v0, 0x10($sp)
    /* 620 8011DE20 1F000424 */  addiu      $a0, $zero, 0x1F
    /* 624 8011DE24 0B100524 */  addiu      $a1, $zero, 0x100B
    /* 628 8011DE28 21300000 */  addu       $a2, $zero, $zero
    /* 62C 8011DE2C 0203A292 */  lbu        $v0, (0x1F800302 & 0xFFFF)($s5)
    /* 630 8011DE30 90000724 */  addiu      $a3, $zero, 0x90
    /* 634 8011DE34 1400B1AF */  sw         $s1, 0x14($sp)
    /* 638 8011DE38 1800A0AF */  sw         $zero, 0x18($sp)
    /* 63C 8011DE3C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 640 8011DE40 00110200 */  sll        $v0, $v0, 4
    /* 644 8011DE44 00FF4224 */  addiu      $v0, $v0, -0x100
    /* 648 8011DE48 B873000C */  jal        func_8001CEE0
    /* 64C 8011DE4C 1000A2AF */   sw        $v0, 0x10($sp)
    /* 650 8011DE50 20000424 */  addiu      $a0, $zero, 0x20
    /* 654 8011DE54 0C100524 */  addiu      $a1, $zero, 0x100C
    /* 658 8011DE58 21300000 */  addu       $a2, $zero, $zero
    /* 65C 8011DE5C 0303A292 */  lbu        $v0, (0x1F800303 & 0xFFFF)($s5)
    /* 660 8011DE60 21380000 */  addu       $a3, $zero, $zero
    /* 664 8011DE64 1400B1AF */  sw         $s1, 0x14($sp)
    /* 668 8011DE68 1800A0AF */  sw         $zero, 0x18($sp)
    /* 66C 8011DE6C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 670 8011DE70 00110200 */  sll        $v0, $v0, 4
    /* 674 8011DE74 00FF4224 */  addiu      $v0, $v0, -0x100
    /* 678 8011DE78 B873000C */  jal        func_8001CEE0
    /* 67C 8011DE7C 1000A2AF */   sw        $v0, 0x10($sp)
    /* 680 8011DE80 21000424 */  addiu      $a0, $zero, 0x21
    /* 684 8011DE84 0C100524 */  addiu      $a1, $zero, 0x100C
    /* 688 8011DE88 21300000 */  addu       $a2, $zero, $zero
    /* 68C 8011DE8C 0403A292 */  lbu        $v0, (0x1F800304 & 0xFFFF)($s5)
    /* 690 8011DE90 90000724 */  addiu      $a3, $zero, 0x90
    /* 694 8011DE94 1400B1AF */  sw         $s1, 0x14($sp)
    /* 698 8011DE98 1800A0AF */  sw         $zero, 0x18($sp)
    /* 69C 8011DE9C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 6A0 8011DEA0 00110200 */  sll        $v0, $v0, 4
    /* 6A4 8011DEA4 00FF4224 */  addiu      $v0, $v0, -0x100
    /* 6A8 8011DEA8 B873000C */  jal        func_8001CEE0
    /* 6AC 8011DEAC 1000A2AF */   sw        $v0, 0x10($sp)
    /* 6B0 8011DEB0 22000424 */  addiu      $a0, $zero, 0x22
    /* 6B4 8011DEB4 0D100524 */  addiu      $a1, $zero, 0x100D
    /* 6B8 8011DEB8 21300000 */  addu       $a2, $zero, $zero
    /* 6BC 8011DEBC 21380000 */  addu       $a3, $zero, $zero
    /* 6C0 8011DEC0 00FF1024 */  addiu      $s0, $zero, -0x100
    /* 6C4 8011DEC4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6C8 8011DEC8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6CC 8011DECC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 6D0 8011DED0 B873000C */  jal        func_8001CEE0
    /* 6D4 8011DED4 1C00B3AF */   sw        $s3, 0x1C($sp)
    /* 6D8 8011DED8 23000424 */  addiu      $a0, $zero, 0x23
    /* 6DC 8011DEDC 0E100524 */  addiu      $a1, $zero, 0x100E
    /* 6E0 8011DEE0 21300000 */  addu       $a2, $zero, $zero
    /* 6E4 8011DEE4 21380000 */  addu       $a3, $zero, $zero
    /* 6E8 8011DEE8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6EC 8011DEEC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6F0 8011DEF0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 6F4 8011DEF4 B873000C */  jal        func_8001CEE0
    /* 6F8 8011DEF8 1C00B3AF */   sw        $s3, 0x1C($sp)
    /* 6FC 8011DEFC 24000424 */  addiu      $a0, $zero, 0x24
    /* 700 8011DF00 0F100524 */  addiu      $a1, $zero, 0x100F
    /* 704 8011DF04 21300000 */  addu       $a2, $zero, $zero
    /* 708 8011DF08 21380000 */  addu       $a3, $zero, $zero
    /* 70C 8011DF0C FCFF0224 */  addiu      $v0, $zero, -0x4
    /* 710 8011DF10 1000A2AF */  sw         $v0, 0x10($sp)
    /* 714 8011DF14 1400B1AF */  sw         $s1, 0x14($sp)
    /* 718 8011DF18 1800A0AF */  sw         $zero, 0x18($sp)
    /* 71C 8011DF1C B873000C */  jal        func_8001CEE0
    /* 720 8011DF20 1C00B3AF */   sw        $s3, 0x1C($sp)
    /* 724 8011DF24 0174000C */  jal        func_8001D004
    /* 728 8011DF28 0F100424 */   addiu     $a0, $zero, 0x100F
    /* 72C 8011DF2C 21384000 */  addu       $a3, $v0, $zero
    /* 730 8011DF30 A0FF0424 */  addiu      $a0, $zero, -0x60
  .L8011DF34:
    /* 734 8011DF34 FFFF4232 */  andi       $v0, $s2, 0xFFFF
    /* 738 8011DF38 40180200 */  sll        $v1, $v0, 1
    /* 73C 8011DF3C 21186200 */  addu       $v1, $v1, $v0
    /* 740 8011DF40 80180300 */  sll        $v1, $v1, 2
    /* 744 8011DF44 21186700 */  addu       $v1, $v1, $a3
    /* 748 8011DF48 01005226 */  addiu      $s2, $s2, 0x1
    /* 74C 8011DF4C FFFF4232 */  andi       $v0, $s2, 0xFFFF
    /* 750 8011DF50 0400422C */  sltiu      $v0, $v0, 0x4
    /* 754 8011DF54 F7FF4014 */  bnez       $v0, .L8011DF34
    /* 758 8011DF58 080064A4 */   sh        $a0, 0x8($v1)
    /* 75C 8011DF5C E202A292 */  lbu        $v0, (0x1F8002E2 & 0xFFFF)($s5)
    /* 760 8011DF60 00000000 */  nop
    /* 764 8011DF64 FF004330 */  andi       $v1, $v0, 0xFF
    /* 768 8011DF68 03000224 */  addiu      $v0, $zero, 0x3
    /* 76C 8011DF6C 05006210 */  beq        $v1, $v0, .L8011DF84
    /* 770 8011DF70 04000224 */   addiu     $v0, $zero, 0x4
    /* 774 8011DF74 08006210 */  beq        $v1, $v0, .L8011DF98
    /* 778 8011DF78 03001224 */   addiu     $s2, $zero, 0x3
    /* 77C 8011DF7C E3770408 */  j          .L8011DF8C
    /* 780 8011DF80 00000000 */   nop
  .L8011DF84:
    /* 784 8011DF84 E6770408 */  j          .L8011DF98
    /* 788 8011DF88 21900000 */   addu      $s2, $zero, $zero
  .L8011DF8C:
    /* 78C 8011DF8C E202A292 */  lbu        $v0, (0x1F8002E2 & 0xFFFF)($s5)
    /* 790 8011DF90 00000000 */  nop
    /* 794 8011DF94 FF005230 */  andi       $s2, $v0, 0xFF
  .L8011DF98:
    /* 798 8011DF98 25000424 */  addiu      $a0, $zero, 0x25
    /* 79C 8011DF9C 21300000 */  addu       $a2, $zero, $zero
    /* 7A0 8011DFA0 21380000 */  addu       $a3, $zero, $zero
    /* 7A4 8011DFA4 FEFF0224 */  addiu      $v0, $zero, -0x2
    /* 7A8 8011DFA8 09001024 */  addiu      $s0, $zero, 0x9
    /* 7AC 8011DFAC FFFF4332 */  andi       $v1, $s2, 0xFFFF
    /* 7B0 8011DFB0 40180300 */  sll        $v1, $v1, 1
    /* 7B4 8011DFB4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 7B8 8011DFB8 1400B0AF */  sw         $s0, 0x14($sp)
    /* 7BC 8011DFBC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 7C0 8011DFC0 DF02A592 */  lbu        $a1, (0x1F8002DF & 0xFFFF)($s5)
    /* 7C4 8011DFC4 E102A292 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($s5)
    /* 7C8 8011DFC8 0100A530 */  andi       $a1, $a1, 0x1
    /* 7CC 8011DFCC 1010A524 */  addiu      $a1, $a1, 0x1010
    /* 7D0 8011DFD0 21286500 */  addu       $a1, $v1, $a1
    /* 7D4 8011DFD4 05004238 */  xori       $v0, $v0, 0x5
    /* 7D8 8011DFD8 2B100200 */  sltu       $v0, $zero, $v0
    /* 7DC 8011DFDC B873000C */  jal        func_8001CEE0
    /* 7E0 8011DFE0 1C00A2AF */   sw        $v0, 0x1C($sp)
    /* 7E4 8011DFE4 26000424 */  addiu      $a0, $zero, 0x26
    /* 7E8 8011DFE8 03100524 */  addiu      $a1, $zero, 0x1003
    /* 7EC 8011DFEC 21300000 */  addu       $a2, $zero, $zero
    /* 7F0 8011DFF0 21380000 */  addu       $a3, $zero, $zero
    /* 7F4 8011DFF4 01001124 */  addiu      $s1, $zero, 0x1
    /* 7F8 8011DFF8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 7FC 8011DFFC 1400B0AF */  sw         $s0, 0x14($sp)
    /* 800 8011E000 1800A0AF */  sw         $zero, 0x18($sp)
    /* 804 8011E004 B873000C */  jal        func_8001CEE0
    /* 808 8011E008 1C00B1AF */   sw        $s1, 0x1C($sp)
    /* 80C 8011E00C 26000424 */  addiu      $a0, $zero, 0x26
    /* 810 8011E010 DF02A692 */  lbu        $a2, (0x1F8002DF & 0xFFFF)($s5)
    /* 814 8011E014 21280000 */  addu       $a1, $zero, $zero
    /* 818 8011E018 0100C630 */  andi       $a2, $a2, 0x1
    /* 81C 8011E01C BDBE010C */  jal        func_8006FAF4
    /* 820 8011E020 1000C634 */   ori       $a2, $a2, 0x10
    /* 824 8011E024 27000424 */  addiu      $a0, $zero, 0x27
    /* 828 8011E028 1B100524 */  addiu      $a1, $zero, 0x101B
    /* 82C 8011E02C 21300000 */  addu       $a2, $zero, $zero
    /* 830 8011E030 21380000 */  addu       $a3, $zero, $zero
    /* 834 8011E034 1000A0AF */  sw         $zero, 0x10($sp)
    /* 838 8011E038 1400B0AF */  sw         $s0, 0x14($sp)
    /* 83C 8011E03C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 840 8011E040 B873000C */  jal        func_8001CEE0
    /* 844 8011E044 1C00B1AF */   sw        $s1, 0x1C($sp)
    /* 848 8011E048 2771010C */  jal        func_8005C49C
    /* 84C 8011E04C 00000000 */   nop
    /* 850 8011E050 1CFF0224 */  addiu      $v0, $zero, -0xE4
    /* 854 8011E054 0100013C */  lui        $at, (0x10000 >> 16)
    /* 858 8011E058 21088102 */  addu       $at, $s4, $at
    /* 85C 8011E05C 28AC22A4 */  sh         $v0, -0x53D8($at)
    /* 860 8011E060 E4000224 */  addiu      $v0, $zero, 0xE4
    /* 864 8011E064 0100013C */  lui        $at, (0x10000 >> 16)
    /* 868 8011E068 21088102 */  addu       $at, $s4, $at
    /* 86C 8011E06C 2AAC22A4 */  sh         $v0, -0x53D6($at)
    /* 870 8011E070 5CFF0224 */  addiu      $v0, $zero, -0xA4
    /* 874 8011E074 0100013C */  lui        $at, (0x10000 >> 16)
    /* 878 8011E078 21088102 */  addu       $at, $s4, $at
    /* 87C 8011E07C 2EAC22A4 */  sh         $v0, -0x53D2($at)
    /* 880 8011E080 0100013C */  lui        $at, (0x10000 >> 16)
    /* 884 8011E084 21088102 */  addu       $at, $s4, $at
    /* 888 8011E088 2CAC22A4 */  sh         $v0, -0x53D4($at)
    /* 88C 8011E08C E0FF0224 */  addiu      $v0, $zero, -0x20
    /* 890 8011E090 0100013C */  lui        $at, (0x10000 >> 16)
    /* 894 8011E094 21088102 */  addu       $at, $s4, $at
    /* 898 8011E098 3CAC22A4 */  sh         $v0, -0x53C4($at)
    /* 89C 8011E09C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 8A0 8011E0A0 21088102 */  addu       $at, $s4, $at
    /* 8A4 8011E0A4 34AC22A4 */  sh         $v0, -0x53CC($at)
    /* 8A8 8011E0A8 2C03A38E */  lw         $v1, (0x1F80032C & 0xFFFF)($s5)
    /* 8AC 8011E0AC 50010224 */  addiu      $v0, $zero, 0x150
    /* 8B0 8011E0B0 19006210 */  beq        $v1, $v0, .L8011E118
    /* 8B4 8011E0B4 51016228 */   slti      $v0, $v1, 0x151
    /* 8B8 8011E0B8 07004010 */  beqz       $v0, .L8011E0D8
    /* 8BC 8011E0BC C7000224 */   addiu     $v0, $zero, 0xC7
    /* 8C0 8011E0C0 17006210 */  beq        $v1, $v0, .L8011E120
    /* 8C4 8011E0C4 D3000224 */   addiu     $v0, $zero, 0xD3
    /* 8C8 8011E0C8 16006210 */  beq        $v1, $v0, .L8011E124
    /* 8CC 8011E0CC E0000224 */   addiu     $v0, $zero, 0xE0
    /* 8D0 8011E0D0 4F780408 */  j          .L8011E13C
    /* 8D4 8011E0D4 00000000 */   nop
  .L8011E0D8:
    /* 8D8 8011E0D8 C0020224 */  addiu      $v0, $zero, 0x2C0
    /* 8DC 8011E0DC 0C006210 */  beq        $v1, $v0, .L8011E110
    /* 8E0 8011E0E0 C1026228 */   slti      $v0, $v1, 0x2C1
    /* 8E4 8011E0E4 05004010 */  beqz       $v0, .L8011E0FC
    /* 8E8 8011E0E8 00020224 */   addiu     $v0, $zero, 0x200
    /* 8EC 8011E0EC 0D006210 */  beq        $v1, $v0, .L8011E124
    /* 8F0 8011E0F0 C8020224 */   addiu     $v0, $zero, 0x2C8
    /* 8F4 8011E0F4 4F780408 */  j          .L8011E13C
    /* 8F8 8011E0F8 00000000 */   nop
  .L8011E0FC:
    /* 8FC 8011E0FC 00040224 */  addiu      $v0, $zero, 0x400
    /* 900 8011E100 0E006214 */  bne        $v1, $v0, .L8011E13C
    /* 904 8011E104 20060224 */   addiu     $v0, $zero, 0x620
    /* 908 8011E108 49780408 */  j          .L8011E124
    /* 90C 8011E10C 00000000 */   nop
  .L8011E110:
    /* 910 8011E110 49780408 */  j          .L8011E124
    /* 914 8011E114 00040224 */   addiu     $v0, $zero, 0x400
  .L8011E118:
    /* 918 8011E118 49780408 */  j          .L8011E124
    /* 91C 8011E11C A0010224 */   addiu     $v0, $zero, 0x1A0
  .L8011E120:
    /* 920 8011E120 C8000224 */  addiu      $v0, $zero, 0xC8
  .L8011E124:
    /* 924 8011E124 0100013C */  lui        $at, (0x10000 >> 16)
    /* 928 8011E128 21088102 */  addu       $at, $s4, $at
    /* 92C 8011E12C 32AC22A4 */  sh         $v0, -0x53CE($at)
    /* 930 8011E130 0100013C */  lui        $at, (0x10000 >> 16)
    /* 934 8011E134 21088102 */  addu       $at, $s4, $at
    /* 938 8011E138 30AC22A4 */  sh         $v0, -0x53D0($at)
  .L8011E13C:
    /* 93C 8011E13C E102A292 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($s5)
    /* 940 8011E140 05000324 */  addiu      $v1, $zero, 0x5
    /* 944 8011E144 FF004230 */  andi       $v0, $v0, 0xFF
    /* 948 8011E148 04004314 */  bne        $v0, $v1, .L8011E15C
    /* 94C 8011E14C 00000000 */   nop
    /* 950 8011E150 0100013C */  lui        $at, (0x10000 >> 16)
    /* 954 8011E154 21088102 */  addu       $at, $s4, $at
    /* 958 8011E158 21AC20A0 */  sb         $zero, -0x53DF($at)
  .L8011E15C:
    /* 95C 8011E15C A102A292 */  lbu        $v0, (0x1F8002A1 & 0xFFFF)($s5)
    /* 960 8011E160 00000000 */  nop
    /* 964 8011E164 FF004630 */  andi       $a2, $v0, 0xFF
    /* 968 8011E168 01000224 */  addiu      $v0, $zero, 0x1
    /* 96C 8011E16C 5D00C214 */  bne        $a2, $v0, .L8011E2E4
    /* 970 8011E170 00000000 */   nop
    /* 974 8011E174 AD02A392 */  lbu        $v1, (0x1F8002AD & 0xFFFF)($s5)
    /* 978 8011E178 00000000 */  nop
    /* 97C 8011E17C FF006530 */  andi       $a1, $v1, 0xFF
    /* 980 8011E180 5800A010 */  beqz       $a1, .L8011E2E4
    /* 984 8011E184 00000000 */   nop
    /* 988 8011E188 9A02A292 */  lbu        $v0, (0x1F80029A & 0xFFFF)($s5)
    /* 98C 8011E18C 00000000 */  nop
    /* 990 8011E190 FF004430 */  andi       $a0, $v0, 0xFF
    /* 994 8011E194 04000224 */  addiu      $v0, $zero, 0x4
    /* 998 8011E198 03008210 */  beq        $a0, $v0, .L8011E1A8
    /* 99C 8011E19C 02000224 */   addiu     $v0, $zero, 0x2
    /* 9A0 8011E1A0 50008214 */  bne        $a0, $v0, .L8011E2E4
    /* 9A4 8011E1A4 00000000 */   nop
  .L8011E1A8:
    /* 9A8 8011E1A8 0C00A22C */  sltiu      $v0, $a1, 0xC
    /* 9AC 8011E1AC 0E004014 */  bnez       $v0, .L8011E1E8
    /* 9B0 8011E1B0 00000000 */   nop
    /* 9B4 8011E1B4 DF02A292 */  lbu        $v0, (0x1F8002DF & 0xFFFF)($s5)
    /* 9B8 8011E1B8 F5FF6324 */  addiu      $v1, $v1, -0xB
    /* 9BC 8011E1BC 1280013C */  lui        $at, %hi(D_80123048)
    /* 9C0 8011E1C0 483023A0 */  sb         $v1, %lo(D_80123048)($at)
    /* 9C4 8011E1C4 01004230 */  andi       $v0, $v0, 0x1
    /* 9C8 8011E1C8 0F004014 */  bnez       $v0, .L8011E208
    /* 9CC 8011E1CC 01000224 */   addiu     $v0, $zero, 0x1
    /* 9D0 8011E1D0 80780408 */  j          .L8011E200
    /* 9D4 8011E1D4 00000000 */   nop
  .L8011E1D8:
    /* 9D8 8011E1D8 1280013C */  lui        $at, %hi(D_80123048)
    /* 9DC 8011E1DC 483022A0 */  sb         $v0, %lo(D_80123048)($at)
    /* 9E0 8011E1E0 AB780408 */  j          .L8011E2AC
    /* 9E4 8011E1E4 07000424 */   addiu     $a0, $zero, 0x7
  .L8011E1E8:
    /* 9E8 8011E1E8 DF02A292 */  lbu        $v0, (0x1F8002DF & 0xFFFF)($s5)
    /* 9EC 8011E1EC 1280013C */  lui        $at, %hi(D_80123048)
    /* 9F0 8011E1F0 483023A0 */  sb         $v1, %lo(D_80123048)($at)
    /* 9F4 8011E1F4 01004230 */  andi       $v0, $v0, 0x1
    /* 9F8 8011E1F8 03004614 */  bne        $v0, $a2, .L8011E208
    /* 9FC 8011E1FC 01000224 */   addiu     $v0, $zero, 0x1
  .L8011E200:
    /* A00 8011E200 1280013C */  lui        $at, %hi(D_80123049)
    /* A04 8011E204 493022A0 */  sb         $v0, %lo(D_80123049)($at)
  .L8011E208:
    /* A08 8011E208 AD02A392 */  lbu        $v1, (0x1F8002AD & 0xFFFF)($s5)
    /* A0C 8011E20C AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* A10 8011E210 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* A14 8011E214 FF006330 */  andi       $v1, $v1, 0xFF
    /* A18 8011E218 19006200 */  multu      $v1, $v0
    /* A1C 8011E21C 21900000 */  addu       $s2, $zero, $zero
    /* A20 8011E220 10400000 */  mfhi       $t0
    /* A24 8011E224 02210800 */  srl        $a0, $t0, 4
    /* A28 8011E228 40100400 */  sll        $v0, $a0, 1
    /* A2C 8011E22C 21104400 */  addu       $v0, $v0, $a0
    /* A30 8011E230 C0100200 */  sll        $v0, $v0, 3
    /* A34 8011E234 23186200 */  subu       $v1, $v1, $v0
    /* A38 8011E238 FF006330 */  andi       $v1, $v1, 0xFF
    /* A3C 8011E23C 40110300 */  sll        $v0, $v1, 5
    /* A40 8011E240 23104300 */  subu       $v0, $v0, $v1
    /* A44 8011E244 80100200 */  sll        $v0, $v0, 2
    /* A48 8011E248 21104300 */  addu       $v0, $v0, $v1
    /* A4C 8011E24C C0100200 */  sll        $v0, $v0, 3
    /* A50 8011E250 21108202 */  addu       $v0, $s4, $v0
    /* A54 8011E254 98034390 */  lbu        $v1, 0x398($v0)
    /* A58 8011E258 92034490 */  lbu        $a0, 0x392($v0)
    /* A5C 8011E25C 40100300 */  sll        $v0, $v1, 1
    /* A60 8011E260 21104300 */  addu       $v0, $v0, $v1
    /* A64 8011E264 80100200 */  sll        $v0, $v0, 2
    /* A68 8011E268 23104300 */  subu       $v0, $v0, $v1
    /* A6C 8011E26C 40100200 */  sll        $v0, $v0, 1
    /* A70 8011E270 21105400 */  addu       $v0, $v0, $s4
    /* A74 8011E274 9C8E0334 */  ori        $v1, $zero, 0x8E9C
    /* A78 8011E278 21184300 */  addu       $v1, $v0, $v1
    /* A7C 8011E27C FFFF4232 */  andi       $v0, $s2, 0xFFFF
  .L8011E280:
    /* A80 8011E280 21106200 */  addu       $v0, $v1, $v0
    /* A84 8011E284 00004290 */  lbu        $v0, 0x0($v0)
    /* A88 8011E288 00000000 */  nop
    /* A8C 8011E28C D2FF4410 */  beq        $v0, $a0, .L8011E1D8
    /* A90 8011E290 01004226 */   addiu     $v0, $s2, 0x1
    /* A94 8011E294 01005226 */  addiu      $s2, $s2, 0x1
    /* A98 8011E298 FFFF4232 */  andi       $v0, $s2, 0xFFFF
    /* A9C 8011E29C 0B00422C */  sltiu      $v0, $v0, 0xB
    /* AA0 8011E2A0 F7FF4014 */  bnez       $v0, .L8011E280
    /* AA4 8011E2A4 FFFF4232 */   andi      $v0, $s2, 0xFFFF
    /* AA8 8011E2A8 07000424 */  addiu      $a0, $zero, 0x7
  .L8011E2AC:
    /* AAC 8011E2AC 1280023C */  lui        $v0, %hi(D_80123049)
    /* AB0 8011E2B0 49304290 */  lbu        $v0, %lo(D_80123049)($v0)
    /* AB4 8011E2B4 00000000 */  nop
    /* AB8 8011E2B8 C0180200 */  sll        $v1, $v0, 3
    /* ABC 8011E2BC 21186200 */  addu       $v1, $v1, $v0
    /* AC0 8011E2C0 1280023C */  lui        $v0, %hi(D_80123048)
    /* AC4 8011E2C4 48304290 */  lbu        $v0, %lo(D_80123048)($v0)
    /* AC8 8011E2C8 40180300 */  sll        $v1, $v1, 1
    /* ACC 8011E2CC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* AD0 8011E2D0 1280013C */  lui        $at, %hi(D_80123020)
    /* AD4 8011E2D4 21082300 */  addu       $at, $at, $v1
    /* AD8 8011E2D8 203022A4 */  sh         $v0, %lo(D_80123020)($at)
    /* ADC 8011E2DC A1BE010C */  jal        func_8006FA84
    /* AE0 8011E2E0 01000524 */   addiu     $a1, $zero, 0x1
  .L8011E2E4:
    /* AE4 8011E2E4 A002A292 */  lbu        $v0, (0x1F8002A0 & 0xFFFF)($s5)
    /* AE8 8011E2E8 00000000 */  nop
    /* AEC 8011E2EC 06004010 */  beqz       $v0, .L8011E308
    /* AF0 8011E2F0 05000324 */   addiu     $v1, $zero, 0x5
    /* AF4 8011E2F4 E102A292 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($s5)
    /* AF8 8011E2F8 00000000 */  nop
    /* AFC 8011E2FC FF004230 */  andi       $v0, $v0, 0xFF
    /* B00 8011E300 06004314 */  bne        $v0, $v1, .L8011E31C
    /* B04 8011E304 00000000 */   nop
  .L8011E308:
    /* B08 8011E308 24000424 */  addiu      $a0, $zero, 0x24
    /* B0C 8011E30C A1BE010C */  jal        func_8006FA84
    /* B10 8011E310 21280000 */   addu      $a1, $zero, $zero
    /* B14 8011E314 CC780408 */  j          .L8011E330
    /* B18 8011E318 21900000 */   addu      $s2, $zero, $zero
  .L8011E31C:
    /* B1C 8011E31C 8B86040C */  jal        func_80121A2C
    /* B20 8011E320 21200000 */   addu      $a0, $zero, $zero
    /* B24 8011E324 8B86040C */  jal        func_80121A2C
    /* B28 8011E328 01000424 */   addiu     $a0, $zero, 0x1
    /* B2C 8011E32C 21900000 */  addu       $s2, $zero, $zero
  .L8011E330:
    /* B30 8011E330 5B001324 */  addiu      $s3, $zero, 0x5B
    /* B34 8011E334 FF005032 */  andi       $s0, $s2, 0xFF
  .L8011E338:
    /* B38 8011E338 9682040C */  jal        func_80120A58
    /* B3C 8011E33C 21200002 */   addu      $a0, $s0, $zero
    /* B40 8011E340 A681040C */  jal        func_80120698
    /* B44 8011E344 21200002 */   addu      $a0, $s0, $zero
    /* B48 8011E348 9C85040C */  jal        func_80121670
    /* B4C 8011E34C 21200002 */   addu      $a0, $s0, $zero
    /* B50 8011E350 E002A492 */  lbu        $a0, (0x1F8002E0 & 0xFFFF)($s5)
    /* B54 8011E354 21280002 */  addu       $a1, $s0, $zero
    /* B58 8011E358 26204402 */  xor        $a0, $s2, $a0
    /* B5C 8011E35C 7A84040C */  jal        func_801211E8
    /* B60 8011E360 FF008430 */   andi      $a0, $a0, 0xFF
    /* B64 8011E364 6781040C */  jal        func_8012059C
    /* B68 8011E368 21200002 */   addu      $a0, $s0, $zero
    /* B6C 8011E36C FFFF5132 */  andi       $s1, $s2, 0xFFFF
    /* B70 8011E370 C0101100 */  sll        $v0, $s1, 3
    /* B74 8011E374 21105100 */  addu       $v0, $v0, $s1
    /* B78 8011E378 40100200 */  sll        $v0, $v0, 1
    /* B7C 8011E37C 1280013C */  lui        $at, %hi(D_80123020)
    /* B80 8011E380 21082200 */  addu       $at, $at, $v0
    /* B84 8011E384 20302590 */  lbu        $a1, %lo(D_80123020)($at)
    /* B88 8011E388 6786040C */  jal        func_8012199C
    /* B8C 8011E38C 21200002 */   addu      $a0, $s0, $zero
    /* B90 8011E390 0174000C */  jal        func_8001D004
    /* B94 8011E394 6A002426 */   addiu     $a0, $s1, 0x6A
    /* B98 8011E398 21384000 */  addu       $a3, $v0, $zero
    /* B9C 8011E39C 21200002 */  addu       $a0, $s0, $zero
    /* BA0 8011E3A0 21280000 */  addu       $a1, $zero, $zero
    /* BA4 8011E3A4 5E000624 */  addiu      $a2, $zero, 0x5E
    /* BA8 8011E3A8 0A000224 */  addiu      $v0, $zero, 0xA
    /* BAC 8011E3AC 0A00F3A0 */  sb         $s3, 0xA($a3)
    /* BB0 8011E3B0 4781040C */  jal        func_8012051C
    /* BB4 8011E3B4 1600E2A0 */   sb        $v0, 0x16($a3)
    /* BB8 8011E3B8 21200002 */  addu       $a0, $s0, $zero
    /* BBC 8011E3BC 01000524 */  addiu      $a1, $zero, 0x1
    /* BC0 8011E3C0 4781040C */  jal        func_8012051C
    /* BC4 8011E3C4 5E000624 */   addiu     $a2, $zero, 0x5E
    /* BC8 8011E3C8 0174000C */  jal        func_8001D004
    /* BCC 8011E3CC 04100424 */   addiu     $a0, $zero, 0x1004
    /* BD0 8011E3D0 21384000 */  addu       $a3, $v0, $zero
    /* BD4 8011E3D4 E102A392 */  lbu        $v1, (0x1F8002E1 & 0xFFFF)($s5)
    /* BD8 8011E3D8 05000224 */  addiu      $v0, $zero, 0x5
    /* BDC 8011E3DC FF006330 */  andi       $v1, $v1, 0xFF
    /* BE0 8011E3E0 08006214 */  bne        $v1, $v0, .L8011E404
    /* BE4 8011E3E4 00000000 */   nop
    /* BE8 8011E3E8 06002012 */  beqz       $s1, .L8011E404
    /* BEC 8011E3EC 40101100 */   sll       $v0, $s1, 1
    /* BF0 8011E3F0 21105100 */  addu       $v0, $v0, $s1
    /* BF4 8011E3F4 80100200 */  sll        $v0, $v0, 2
    /* BF8 8011E3F8 21104700 */  addu       $v0, $v0, $a3
    /* BFC 8011E3FC 08790408 */  j          .L8011E420
    /* C00 8011E400 0A0053A0 */   sb        $s3, 0xA($v0)
  .L8011E404:
    /* C04 8011E404 FFFF4232 */  andi       $v0, $s2, 0xFFFF
    /* C08 8011E408 40180200 */  sll        $v1, $v0, 1
    /* C0C 8011E40C 21186200 */  addu       $v1, $v1, $v0
    /* C10 8011E410 80180300 */  sll        $v1, $v1, 2
    /* C14 8011E414 21186700 */  addu       $v1, $v1, $a3
    /* C18 8011E418 35000224 */  addiu      $v0, $zero, 0x35
    /* C1C 8011E41C 0A0062A0 */  sb         $v0, 0xA($v1)
  .L8011E420:
    /* C20 8011E420 FFFF5032 */  andi       $s0, $s2, 0xFFFF
    /* C24 8011E424 40181000 */  sll        $v1, $s0, 1
    /* C28 8011E428 21187000 */  addu       $v1, $v1, $s0
    /* C2C 8011E42C 21209002 */  addu       $a0, $s4, $s0
    /* C30 8011E430 DCAB0234 */  ori        $v0, $zero, 0xABDC
    /* C34 8011E434 21208200 */  addu       $a0, $a0, $v0
    /* C38 8011E438 00008290 */  lbu        $v0, 0x0($a0)
    /* C3C 8011E43C 80880300 */  sll        $s1, $v1, 2
    /* C40 8011E440 80100200 */  sll        $v0, $v0, 2
    /* C44 8011E444 1280013C */  lui        $at, %hi(D_80122340)
    /* C48 8011E448 21082200 */  addu       $at, $at, $v0
    /* C4C 8011E44C 40232290 */  lbu        $v0, %lo(D_80122340)($at)
    /* C50 8011E450 21282702 */  addu       $a1, $s1, $a3
    /* C54 8011E454 0100A2A0 */  sb         $v0, 0x1($a1)
    /* C58 8011E458 00008290 */  lbu        $v0, 0x0($a0)
    /* C5C 8011E45C 00000000 */  nop
    /* C60 8011E460 80100200 */  sll        $v0, $v0, 2
    /* C64 8011E464 1280013C */  lui        $at, %hi(D_80122341)
    /* C68 8011E468 21082200 */  addu       $at, $at, $v0
    /* C6C 8011E46C 41232290 */  lbu        $v0, %lo(D_80122341)($at)
    /* C70 8011E470 00000000 */  nop
    /* C74 8011E474 0300A2A0 */  sb         $v0, 0x3($a1)
    /* C78 8011E478 00008290 */  lbu        $v0, 0x0($a0)
    /* C7C 8011E47C 00000000 */  nop
    /* C80 8011E480 80100200 */  sll        $v0, $v0, 2
    /* C84 8011E484 1280013C */  lui        $at, %hi(D_80122342)
    /* C88 8011E488 21082200 */  addu       $at, $at, $v0
    /* C8C 8011E48C 42232290 */  lbu        $v0, %lo(D_80122342)($at)
    /* C90 8011E490 00000000 */  nop
    /* C94 8011E494 0400A2A0 */  sb         $v0, 0x4($a1)
    /* C98 8011E498 00008290 */  lbu        $v0, 0x0($a0)
    /* C9C 8011E49C 05100424 */  addiu      $a0, $zero, 0x1005
    /* CA0 8011E4A0 80100200 */  sll        $v0, $v0, 2
    /* CA4 8011E4A4 1280013C */  lui        $at, %hi(D_80122343)
    /* CA8 8011E4A8 21082200 */  addu       $at, $at, $v0
    /* CAC 8011E4AC 43232390 */  lbu        $v1, %lo(D_80122343)($at)
    /* CB0 8011E4B0 C0FF0234 */  ori        $v0, $zero, 0xFFC0
    /* CB4 8011E4B4 21186200 */  addu       $v1, $v1, $v0
    /* CB8 8011E4B8 80101000 */  sll        $v0, $s0, 2
    /* CBC 8011E4BC 21105000 */  addu       $v0, $v0, $s0
    /* CC0 8011E4C0 C0100200 */  sll        $v0, $v0, 3
    /* CC4 8011E4C4 23105000 */  subu       $v0, $v0, $s0
    /* CC8 8011E4C8 40100200 */  sll        $v0, $v0, 1
    /* CCC 8011E4CC 21186200 */  addu       $v1, $v1, $v0
    /* CD0 8011E4D0 0174000C */  jal        func_8001D004
    /* CD4 8011E4D4 0600A3A4 */   sh        $v1, 0x6($a1)
    /* CD8 8011E4D8 21384000 */  addu       $a3, $v0, $zero
    /* CDC 8011E4DC E102A392 */  lbu        $v1, (0x1F8002E1 & 0xFFFF)($s5)
    /* CE0 8011E4E0 05000224 */  addiu      $v0, $zero, 0x5
    /* CE4 8011E4E4 FF006330 */  andi       $v1, $v1, 0xFF
    /* CE8 8011E4E8 05006214 */  bne        $v1, $v0, .L8011E500
    /* CEC 8011E4EC 00000000 */   nop
    /* CF0 8011E4F0 03000012 */  beqz       $s0, .L8011E500
    /* CF4 8011E4F4 21102702 */   addu      $v0, $s1, $a3
    /* CF8 8011E4F8 47790408 */  j          .L8011E51C
    /* CFC 8011E4FC 0A0053A0 */   sb        $s3, 0xA($v0)
  .L8011E500:
    /* D00 8011E500 FFFF4232 */  andi       $v0, $s2, 0xFFFF
    /* D04 8011E504 40180200 */  sll        $v1, $v0, 1
    /* D08 8011E508 21186200 */  addu       $v1, $v1, $v0
    /* D0C 8011E50C 80180300 */  sll        $v1, $v1, 2
    /* D10 8011E510 21186700 */  addu       $v1, $v1, $a3
    /* D14 8011E514 35000224 */  addiu      $v0, $zero, 0x35
    /* D18 8011E518 0A0062A0 */  sb         $v0, 0xA($v1)
  .L8011E51C:
    /* D1C 8011E51C FFFF4432 */  andi       $a0, $s2, 0xFFFF
    /* D20 8011E520 2110A402 */  addu       $v0, $s5, $a0
    /* D24 8011E524 07034290 */  lbu        $v0, (0x1F800307 & 0xFFFF)($v0)
    /* D28 8011E528 00000000 */  nop
    /* D2C 8011E52C 11004010 */  beqz       $v0, .L8011E574
    /* D30 8011E530 40180400 */   sll       $v1, $a0, 1
    /* D34 8011E534 21186400 */  addu       $v1, $v1, $a0
    /* D38 8011E538 80180300 */  sll        $v1, $v1, 2
    /* D3C 8011E53C 21186700 */  addu       $v1, $v1, $a3
    /* D40 8011E540 30000224 */  addiu      $v0, $zero, 0x30
    /* D44 8011E544 010062A0 */  sb         $v0, 0x1($v1)
    /* D48 8011E548 80000224 */  addiu      $v0, $zero, 0x80
    /* D4C 8011E54C 030062A0 */  sb         $v0, 0x3($v1)
    /* D50 8011E550 20000224 */  addiu      $v0, $zero, 0x20
    /* D54 8011E554 040062A0 */  sb         $v0, 0x4($v1)
    /* D58 8011E558 80100400 */  sll        $v0, $a0, 2
    /* D5C 8011E55C 21104400 */  addu       $v0, $v0, $a0
    /* D60 8011E560 C0100200 */  sll        $v0, $v0, 3
    /* D64 8011E564 23104400 */  subu       $v0, $v0, $a0
    /* D68 8011E568 40100200 */  sll        $v0, $v0, 1
    /* D6C 8011E56C 6C790408 */  j          .L8011E5B0
    /* D70 8011E570 C4FF4224 */   addiu     $v0, $v0, -0x3C
  .L8011E574:
    /* D74 8011E574 21186400 */  addu       $v1, $v1, $a0
    /* D78 8011E578 80180300 */  sll        $v1, $v1, 2
    /* D7C 8011E57C 21186700 */  addu       $v1, $v1, $a3
    /* D80 8011E580 20000224 */  addiu      $v0, $zero, 0x20
    /* D84 8011E584 010062A0 */  sb         $v0, 0x1($v1)
    /* D88 8011E588 E0000224 */  addiu      $v0, $zero, 0xE0
    /* D8C 8011E58C 030062A0 */  sb         $v0, 0x3($v1)
    /* D90 8011E590 80000224 */  addiu      $v0, $zero, 0x80
    /* D94 8011E594 040062A0 */  sb         $v0, 0x4($v1)
    /* D98 8011E598 80100400 */  sll        $v0, $a0, 2
    /* D9C 8011E59C 21104400 */  addu       $v0, $v0, $a0
    /* DA0 8011E5A0 C0100200 */  sll        $v0, $v0, 3
    /* DA4 8011E5A4 23104400 */  subu       $v0, $v0, $a0
    /* DA8 8011E5A8 40100200 */  sll        $v0, $v0, 1
    /* DAC 8011E5AC C9FF4224 */  addiu      $v0, $v0, -0x37
  .L8011E5B0:
    /* DB0 8011E5B0 060062A4 */  sh         $v0, 0x6($v1)
    /* DB4 8011E5B4 01005226 */  addiu      $s2, $s2, 0x1
    /* DB8 8011E5B8 FFFF4232 */  andi       $v0, $s2, 0xFFFF
    /* DBC 8011E5BC 0200422C */  sltiu      $v0, $v0, 0x2
    /* DC0 8011E5C0 5DFF4014 */  bnez       $v0, .L8011E338
    /* DC4 8011E5C4 FF005032 */   andi      $s0, $s2, 0xFF
    /* DC8 8011E5C8 E202A292 */  lbu        $v0, (0x1F8002E2 & 0xFFFF)($s5)
    /* DCC 8011E5CC 00000000 */  nop
    /* DD0 8011E5D0 FF004330 */  andi       $v1, $v0, 0xFF
    /* DD4 8011E5D4 0500622C */  sltiu      $v0, $v1, 0x5
    /* DD8 8011E5D8 35004010 */  beqz       $v0, .L8011E6B0
    /* DDC 8011E5DC 00000000 */   nop
    /* DE0 8011E5E0 80100300 */  sll        $v0, $v1, 2
    /* DE4 8011E5E4 1280013C */  lui        $at, %hi(jtbl_8011D800)
    /* DE8 8011E5E8 21082200 */  addu       $at, $at, $v0
    /* DEC 8011E5EC 00D8228C */  lw         $v0, %lo(jtbl_8011D800)($at)
    /* DF0 8011E5F0 00000000 */  nop
    /* DF4 8011E5F4 08004000 */  jr         $v0
    /* DF8 8011E5F8 00000000 */   nop
  jlabel .L8011E5FC
    /* DFC 8011E5FC 4F85040C */  jal        func_8012153C
    /* E00 8011E600 01000424 */   addiu     $a0, $zero, 0x1
    /* E04 8011E604 AC790408 */  j          .L8011E6B0
    /* E08 8011E608 00000000 */   nop
  jlabel .L8011E60C
    /* E0C 8011E60C 11000424 */  addiu      $a0, $zero, 0x11
    /* E10 8011E610 A1BE010C */  jal        func_8006FA84
    /* E14 8011E614 01000524 */   addiu     $a1, $zero, 0x1
    /* E18 8011E618 1B000424 */  addiu      $a0, $zero, 0x1B
    /* E1C 8011E61C A1BE010C */  jal        func_8006FA84
    /* E20 8011E620 01000524 */   addiu     $a1, $zero, 0x1
    /* E24 8011E624 A102A292 */  lbu        $v0, 0x2A1($s5)
    /* E28 8011E628 01000324 */  addiu      $v1, $zero, 0x1
    /* E2C 8011E62C FF004230 */  andi       $v0, $v0, 0xFF
    /* E30 8011E630 1F004314 */  bne        $v0, $v1, .L8011E6B0
    /* E34 8011E634 01000324 */   addiu     $v1, $zero, 0x1
    /* E38 8011E638 1080043C */  lui        $a0, %hi(D_800FF740)
    /* E3C 8011E63C 40F78490 */  lbu        $a0, %lo(D_800FF740)($a0)
    /* E40 8011E640 00000000 */  nop
    /* E44 8011E644 0100842C */  sltiu      $a0, $a0, 0x1
    /* E48 8011E648 23100400 */  negu       $v0, $a0
    /* E4C 8011E64C 12004230 */  andi       $v0, $v0, 0x12
    /* E50 8011E650 1280013C */  lui        $at, %hi(D_80123030)
    /* E54 8011E654 21082200 */  addu       $at, $at, $v0
    /* E58 8011E658 303023A4 */  sh         $v1, %lo(D_80123030)($at)
    /* E5C 8011E65C 4F85040C */  jal        func_8012153C
    /* E60 8011E660 00000000 */   nop
    /* E64 8011E664 AC790408 */  j          .L8011E6B0
    /* E68 8011E668 00000000 */   nop
  jlabel .L8011E66C
    /* E6C 8011E66C 0174000C */  jal        func_8001D004
    /* E70 8011E670 6B000424 */   addiu     $a0, $zero, 0x6B
    /* E74 8011E674 6A000424 */  addiu      $a0, $zero, 0x6A
    /* E78 8011E678 5B001024 */  addiu      $s0, $zero, 0x5B
    /* E7C 8011E67C 0174000C */  jal        func_8001D004
    /* E80 8011E680 160050A0 */   sb        $s0, 0x16($v0)
    /* E84 8011E684 10000424 */  addiu      $a0, $zero, 0x10
    /* E88 8011E688 21280000 */  addu       $a1, $zero, $zero
    /* E8C 8011E68C A1BE010C */  jal        func_8006FA84
    /* E90 8011E690 160050A0 */   sb        $s0, 0x16($v0)
    /* E94 8011E694 1C000424 */  addiu      $a0, $zero, 0x1C
    /* E98 8011E698 A1BE010C */  jal        func_8006FA84
    /* E9C 8011E69C 21280000 */   addu      $a1, $zero, $zero
    /* EA0 8011E6A0 1D000424 */  addiu      $a0, $zero, 0x1D
    /* EA4 8011E6A4 A1BE010C */  jal        func_8006FA84
    /* EA8 8011E6A8 21280000 */   addu      $a1, $zero, $zero
    /* EAC 8011E6AC 9402A0A6 */  sh         $zero, 0x294($s5)
  .L8011E6B0:
    /* EB0 8011E6B0 0100013C */  lui        $at, (0x10000 >> 16)
    /* EB4 8011E6B4 21088102 */  addu       $at, $s4, $at
    /* EB8 8011E6B8 D9AB2290 */  lbu        $v0, -0x5427($at)
    /* EBC 8011E6BC 1280013C */  lui        $at, %hi(D_80123011)
    /* EC0 8011E6C0 113020A0 */  sb         $zero, %lo(D_80123011)($at)
    /* EC4 8011E6C4 1180013C */  lui        $at, %hi(D_8010C1D0)
    /* EC8 8011E6C8 D0C120A0 */  sb         $zero, %lo(D_8010C1D0)($at)
    /* ECC 8011E6CC 2C7B0408 */  j          .L8011ECB0
    /* ED0 8011E6D0 01004224 */   addiu     $v0, $v0, 0x1
  .L8011E6D4:
    /* ED4 8011E6D4 DA3E010C */  jal        func_8004FB68
    /* ED8 8011E6D8 21200000 */   addu      $a0, $zero, $zero
    /* EDC 8011E6DC 77014010 */  beqz       $v0, .L8011ECBC
    /* EE0 8011E6E0 00000000 */   nop
    /* EE4 8011E6E4 801F033C */  lui        $v1, (0x1F8002E2 >> 16)
    /* EE8 8011E6E8 E2026390 */  lbu        $v1, (0x1F8002E2 & 0xFFFF)($v1)
    /* EEC 8011E6EC 00000000 */  nop
    /* EF0 8011E6F0 0500622C */  sltiu      $v0, $v1, 0x5
    /* EF4 8011E6F4 A5004010 */  beqz       $v0, .L8011E98C
    /* EF8 8011E6F8 80100300 */   sll       $v0, $v1, 2
    /* EFC 8011E6FC 1280013C */  lui        $at, %hi(jtbl_8011D818)
    /* F00 8011E700 21082200 */  addu       $at, $at, $v0
    /* F04 8011E704 18D8228C */  lw         $v0, %lo(jtbl_8011D818)($at)
    /* F08 8011E708 00000000 */  nop
    /* F0C 8011E70C 08004000 */  jr         $v0
    /* F10 8011E710 00000000 */   nop
  jlabel .L8011E714
    /* F14 8011E714 21200000 */  addu       $a0, $zero, $zero
    /* F18 8011E718 21280000 */  addu       $a1, $zero, $zero
    /* F1C 8011E71C 385D000C */  jal        func_800174E0
    /* F20 8011E720 00080624 */   addiu     $a2, $zero, 0x800
    /* F24 8011E724 06004014 */  bnez       $v0, .L8011E740
    /* F28 8011E728 21200000 */   addu      $a0, $zero, $zero
    /* F2C 8011E72C 21280000 */  addu       $a1, $zero, $zero
    /* F30 8011E730 385D000C */  jal        func_800174E0
    /* F34 8011E734 20000624 */   addiu     $a2, $zero, 0x20
    /* F38 8011E738 0B004010 */  beqz       $v0, .L8011E768
    /* F3C 8011E73C 00000000 */   nop
  .L8011E740:
    /* F40 8011E740 88AD020C */  jal        func_800AB620
    /* F44 8011E744 28050424 */   addiu     $a0, $zero, 0x528
    /* F48 8011E748 0100013C */  lui        $at, (0x10000 >> 16)
    /* F4C 8011E74C 21088102 */  addu       $at, $s4, $at
    /* F50 8011E750 D9AB2290 */  lbu        $v0, -0x5427($at)
    /* F54 8011E754 00000000 */  nop
    /* F58 8011E758 01004224 */  addiu      $v0, $v0, 0x1
    /* F5C 8011E75C 0100013C */  lui        $at, (0x10000 >> 16)
    /* F60 8011E760 21088102 */  addu       $at, $s4, $at
    /* F64 8011E764 D9AB22A0 */  sb         $v0, -0x5427($at)
  .L8011E768:
    /* F68 8011E768 9402A396 */  lhu        $v1, 0x294($s5)
    /* F6C 8011E76C 00000000 */  nop
    /* F70 8011E770 C100622C */  sltiu      $v0, $v1, 0xC1
    /* F74 8011E774 08004010 */  beqz       $v0, .L8011E798
    /* F78 8011E778 01006224 */   addiu     $v0, $v1, 0x1
    /* F7C 8011E77C 637A0408 */  j          .L8011E98C
    /* F80 8011E780 9402A2A6 */   sh        $v0, 0x294($s5)
  jlabel .L8011E784
    /* F84 8011E784 397B040C */  jal        func_8011ECE4
    /* F88 8011E788 21200000 */   addu      $a0, $zero, $zero
    /* F8C 8011E78C FF004230 */  andi       $v0, $v0, 0xFF
    /* F90 8011E790 7F004010 */  beqz       $v0, .L8011E990
    /* F94 8011E794 6666023C */   lui       $v0, (0x66666667 >> 16)
  .L8011E798:
    /* F98 8011E798 0100013C */  lui        $at, (0x10000 >> 16)
    /* F9C 8011E79C 21088102 */  addu       $at, $s4, $at
    /* FA0 8011E7A0 D9AB2290 */  lbu        $v0, -0x5427($at)
    /* FA4 8011E7A4 00000000 */  nop
    /* FA8 8011E7A8 01004224 */  addiu      $v0, $v0, 0x1
    /* FAC 8011E7AC 0100013C */  lui        $at, (0x10000 >> 16)
    /* FB0 8011E7B0 21088102 */  addu       $at, $s4, $at
    /* FB4 8011E7B4 D9AB22A0 */  sb         $v0, -0x5427($at)
    /* FB8 8011E7B8 647A0408 */  j          .L8011E990
    /* FBC 8011E7BC 6666023C */   lui       $v0, (0x66666667 >> 16)
  jlabel .L8011E7C0
    /* FC0 8011E7C0 21900000 */  addu       $s2, $zero, $zero
    /* FC4 8011E7C4 01001324 */  addiu      $s3, $zero, 0x1
    /* FC8 8011E7C8 FFFF5132 */  andi       $s1, $s2, 0xFFFF
  .L8011E7CC:
    /* FCC 8011E7CC C0101100 */  sll        $v0, $s1, 3
    /* FD0 8011E7D0 21105100 */  addu       $v0, $v0, $s1
    /* FD4 8011E7D4 40100200 */  sll        $v0, $v0, 1
    /* FD8 8011E7D8 1280033C */  lui        $v1, %hi(D_80123020)
    /* FDC 8011E7DC 20306324 */  addiu      $v1, $v1, %lo(D_80123020)
    /* FE0 8011E7E0 21104300 */  addu       $v0, $v0, $v1
    /* FE4 8011E7E4 10004394 */  lhu        $v1, 0x10($v0)
    /* FE8 8011E7E8 1280013C */  lui        $at, %hi(D_80123044)
    /* FEC 8011E7EC 443022AC */  sw         $v0, %lo(D_80123044)($at)
    /* FF0 8011E7F0 2F006014 */  bnez       $v1, .L8011E8B0
    /* FF4 8011E7F4 21202002 */   addu      $a0, $s1, $zero
    /* FF8 8011E7F8 FF005032 */  andi       $s0, $s2, 0xFF
    /* FFC 8011E7FC 397B040C */  jal        func_8011ECE4
    /* 1000 8011E800 21200002 */   addu      $a0, $s0, $zero
    /* 1004 8011E804 FF004330 */  andi       $v1, $v0, 0xFF
    /* 1008 8011E808 05007310 */  beq        $v1, $s3, .L8011E820
    /* 100C 8011E80C 02000224 */   addiu     $v0, $zero, 0x2
    /* 1010 8011E810 0E006210 */  beq        $v1, $v0, .L8011E84C
    /* 1014 8011E814 0100222E */   sltiu     $v0, $s1, 0x1
    /* 1018 8011E818 5F7A0408 */  j          .L8011E97C
    /* 101C 8011E81C 01005226 */   addiu     $s2, $s2, 0x1
  .L8011E820:
    /* 1020 8011E820 0100222E */  sltiu      $v0, $s1, 0x1
    /* 1024 8011E824 23100200 */  negu       $v0, $v0
    /* 1028 8011E828 12004230 */  andi       $v0, $v0, 0x12
    /* 102C 8011E82C 1280013C */  lui        $at, %hi(D_80123030)
    /* 1030 8011E830 21082200 */  addu       $at, $at, $v0
    /* 1034 8011E834 30302294 */  lhu        $v0, %lo(D_80123030)($at)
    /* 1038 8011E838 00000000 */  nop
    /* 103C 8011E83C 15004010 */  beqz       $v0, .L8011E894
    /* 1040 8011E840 00000000 */   nop
    /* 1044 8011E844 1B7A0408 */  j          .L8011E86C
    /* 1048 8011E848 00000000 */   nop
  .L8011E84C:
    /* 104C 8011E84C 23100200 */  negu       $v0, $v0
    /* 1050 8011E850 12004230 */  andi       $v0, $v0, 0x12
    /* 1054 8011E854 1280013C */  lui        $at, %hi(D_80123030)
    /* 1058 8011E858 21082200 */  addu       $at, $at, $v0
    /* 105C 8011E85C 30302294 */  lhu        $v0, %lo(D_80123030)($at)
    /* 1060 8011E860 00000000 */  nop
    /* 1064 8011E864 0B004010 */  beqz       $v0, .L8011E894
    /* 1068 8011E868 00000000 */   nop
  .L8011E86C:
    /* 106C 8011E86C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1070 8011E870 21088102 */  addu       $at, $s4, $at
    /* 1074 8011E874 D9AB2290 */  lbu        $v0, -0x5427($at)
    /* 1078 8011E878 00000000 */  nop
    /* 107C 8011E87C 01004224 */  addiu      $v0, $v0, 0x1
    /* 1080 8011E880 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1084 8011E884 21088102 */  addu       $at, $s4, $at
    /* 1088 8011E888 D9AB22A0 */  sb         $v0, -0x5427($at)
    /* 108C 8011E88C 5F7A0408 */  j          .L8011E97C
    /* 1090 8011E890 01005226 */   addiu     $s2, $s2, 0x1
  .L8011E894:
    /* 1094 8011E894 1280023C */  lui        $v0, %hi(D_80123044)
    /* 1098 8011E898 4430428C */  lw         $v0, %lo(D_80123044)($v0)
    /* 109C 8011E89C 21200002 */  addu       $a0, $s0, $zero
    /* 10A0 8011E8A0 4F85040C */  jal        func_8012153C
    /* 10A4 8011E8A4 100053A4 */   sh        $s3, 0x10($v0)
    /* 10A8 8011E8A8 5F7A0408 */  j          .L8011E97C
    /* 10AC 8011E8AC 01005226 */   addiu     $s2, $s2, 0x1
  .L8011E8B0:
    /* 10B0 8011E8B0 21280000 */  addu       $a1, $zero, $zero
    /* 10B4 8011E8B4 385D000C */  jal        func_800174E0
    /* 10B8 8011E8B8 40000624 */   addiu     $a2, $zero, 0x40
    /* 10BC 8011E8BC 2E004010 */  beqz       $v0, .L8011E978
    /* 10C0 8011E8C0 6A002426 */   addiu     $a0, $s1, 0x6A
    /* 10C4 8011E8C4 1280023C */  lui        $v0, %hi(D_80123044)
    /* 10C8 8011E8C8 4430428C */  lw         $v0, %lo(D_80123044)($v0)
    /* 10CC 8011E8CC 0174000C */  jal        func_8001D004
    /* 10D0 8011E8D0 100040A4 */   sh        $zero, 0x10($v0)
    /* 10D4 8011E8D4 1280033C */  lui        $v1, %hi(D_80123044)
    /* 10D8 8011E8D8 4430638C */  lw         $v1, %lo(D_80123044)($v1)
    /* 10DC 8011E8DC 00000000 */  nop
    /* 10E0 8011E8E0 0C006394 */  lhu        $v1, 0xC($v1)
    /* 10E4 8011E8E4 00000000 */  nop
    /* 10E8 8011E8E8 03006010 */  beqz       $v1, .L8011E8F8
    /* 10EC 8011E8EC 21384000 */   addu      $a3, $v0, $zero
    /* 10F0 8011E8F0 0A000224 */  addiu      $v0, $zero, 0xA
    /* 10F4 8011E8F4 0A00E2A0 */  sb         $v0, 0xA($a3)
  .L8011E8F8:
    /* 10F8 8011E8F8 1280023C */  lui        $v0, %hi(D_80123044)
    /* 10FC 8011E8FC 4430428C */  lw         $v0, %lo(D_80123044)($v0)
    /* 1100 8011E900 00000000 */  nop
    /* 1104 8011E904 0E004394 */  lhu        $v1, 0xE($v0)
    /* 1108 8011E908 15000224 */  addiu      $v0, $zero, 0x15
    /* 110C 8011E90C 02006210 */  beq        $v1, $v0, .L8011E918
    /* 1110 8011E910 0A000224 */   addiu     $v0, $zero, 0xA
    /* 1114 8011E914 1600E2A0 */  sb         $v0, 0x16($a3)
  .L8011E918:
    /* 1118 8011E918 10002426 */  addiu      $a0, $s1, 0x10
    /* 111C 8011E91C A1BE010C */  jal        func_8006FA84
    /* 1120 8011E920 01000524 */   addiu     $a1, $zero, 0x1
    /* 1124 8011E924 E002A492 */  lbu        $a0, 0x2E0($s5)
    /* 1128 8011E928 01000524 */  addiu      $a1, $zero, 0x1
    /* 112C 8011E92C 26209100 */  xor        $a0, $a0, $s1
    /* 1130 8011E930 A1BE010C */  jal        func_8006FA84
    /* 1134 8011E934 1C008424 */   addiu     $a0, $a0, 0x1C
    /* 1138 8011E938 03003026 */  addiu      $s0, $s1, 0x3
    /* 113C 8011E93C 21200002 */  addu       $a0, $s0, $zero
    /* 1140 8011E940 A1BE010C */  jal        func_8006FA84
    /* 1144 8011E944 01000524 */   addiu     $a1, $zero, 0x1
    /* 1148 8011E948 0174000C */  jal        func_8001D004
    /* 114C 8011E94C 18102426 */   addiu     $a0, $s1, 0x1018
    /* 1150 8011E950 29050424 */  addiu      $a0, $zero, 0x529
    /* 1154 8011E954 80181000 */  sll        $v1, $s0, 2
    /* 1158 8011E958 21187000 */  addu       $v1, $v1, $s0
    /* 115C 8011E95C C0180300 */  sll        $v1, $v1, 3
    /* 1160 8011E960 21188302 */  addu       $v1, $s4, $v1
    /* 1164 8011E964 CC5D62AC */  sw         $v0, 0x5DCC($v1)
    /* 1168 8011E968 88AD020C */  jal        func_800AB620
    /* 116C 8011E96C D05D60A4 */   sh        $zero, 0x5DD0($v1)
    /* 1170 8011E970 647A0408 */  j          .L8011E990
    /* 1174 8011E974 6666023C */   lui       $v0, (0x66666667 >> 16)
  .L8011E978:
    /* 1178 8011E978 01005226 */  addiu      $s2, $s2, 0x1
  .L8011E97C:
    /* 117C 8011E97C FFFF4232 */  andi       $v0, $s2, 0xFFFF
    /* 1180 8011E980 0200422C */  sltiu      $v0, $v0, 0x2
    /* 1184 8011E984 91FF4014 */  bnez       $v0, .L8011E7CC
    /* 1188 8011E988 FFFF5132 */   andi      $s1, $s2, 0xFFFF
  .L8011E98C:
    /* 118C 8011E98C 6666023C */  lui        $v0, (0x66666667 >> 16)
  .L8011E990:
    /* 1190 8011E990 9002A48E */  lw         $a0, (0x1F800290 & 0xFFFF)($s5)
    /* 1194 8011E994 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
    /* 1198 8011E998 18008200 */  mult       $a0, $v0
    /* 119C 8011E99C C3170400 */  sra        $v0, $a0, 31
    /* 11A0 8011E9A0 10400000 */  mfhi       $t0
    /* 11A4 8011E9A4 43180800 */  sra        $v1, $t0, 1
    /* 11A8 8011E9A8 23186200 */  subu       $v1, $v1, $v0
    /* 11AC 8011E9AC 80100300 */  sll        $v0, $v1, 2
    /* 11B0 8011E9B0 21104300 */  addu       $v0, $v0, $v1
    /* 11B4 8011E9B4 C1008214 */  bne        $a0, $v0, .L8011ECBC
    /* 11B8 8011E9B8 00000000 */   nop
    /* 11BC 8011E9BC 1180033C */  lui        $v1, %hi(D_8010C1D0)
    /* 11C0 8011E9C0 D0C16390 */  lbu        $v1, %lo(D_8010C1D0)($v1)
    /* 11C4 8011E9C4 00000000 */  nop
    /* 11C8 8011E9C8 0B00622C */  sltiu      $v0, $v1, 0xB
    /* 11CC 8011E9CC 05004010 */  beqz       $v0, .L8011E9E4
    /* 11D0 8011E9D0 01006224 */   addiu     $v0, $v1, 0x1
    /* 11D4 8011E9D4 1180013C */  lui        $at, %hi(D_8010C1D0)
    /* 11D8 8011E9D8 D0C122A0 */  sb         $v0, %lo(D_8010C1D0)($at)
    /* 11DC 8011E9DC 7D7A0408 */  j          .L8011E9F4
    /* 11E0 8011E9E0 21900000 */   addu      $s2, $zero, $zero
  .L8011E9E4:
    /* 11E4 8011E9E4 21100000 */  addu       $v0, $zero, $zero
    /* 11E8 8011E9E8 1180013C */  lui        $at, %hi(D_8010C1D0)
    /* 11EC 8011E9EC D0C122A0 */  sb         $v0, %lo(D_8010C1D0)($at)
    /* 11F0 8011E9F0 21900000 */  addu       $s2, $zero, $zero
  .L8011E9F4:
    /* 11F4 8011E9F4 FFFF4432 */  andi       $a0, $s2, 0xFFFF
  .L8011E9F8:
    /* 11F8 8011E9F8 C0100400 */  sll        $v0, $a0, 3
    /* 11FC 8011E9FC 21104400 */  addu       $v0, $v0, $a0
    /* 1200 8011EA00 40100200 */  sll        $v0, $v0, 1
    /* 1204 8011EA04 1280033C */  lui        $v1, %hi(D_80123020)
    /* 1208 8011EA08 20306324 */  addiu      $v1, $v1, %lo(D_80123020)
    /* 120C 8011EA0C 21104300 */  addu       $v0, $v0, $v1
    /* 1210 8011EA10 0C005094 */  lhu        $s0, 0xC($v0)
    /* 1214 8011EA14 1280013C */  lui        $at, %hi(D_80123044)
    /* 1218 8011EA18 443022AC */  sw         $v0, %lo(D_80123044)($at)
    /* 121C 8011EA1C 0E004294 */  lhu        $v0, 0xE($v0)
    /* 1220 8011EA20 FFFF0732 */  andi       $a3, $s0, 0xFFFF
    /* 1224 8011EA24 2B104700 */  sltu       $v0, $v0, $a3
    /* 1228 8011EA28 16004014 */  bnez       $v0, .L8011EA84
    /* 122C 8011EA2C 00000000 */   nop
    /* 1230 8011EA30 21888000 */  addu       $s1, $a0, $zero
    /* 1234 8011EA34 16002426 */  addiu      $a0, $s1, 0x16
  .L8011EA38:
    /* 1238 8011EA38 1280023C */  lui        $v0, %hi(D_80123044)
    /* 123C 8011EA3C 4430428C */  lw         $v0, %lo(D_80123044)($v0)
    /* 1240 8011EA40 1180033C */  lui        $v1, %hi(D_8010C1D0)
    /* 1244 8011EA44 D0C16390 */  lbu        $v1, %lo(D_8010C1D0)($v1)
    /* 1248 8011EA48 0C004594 */  lhu        $a1, 0xC($v0)
    /* 124C 8011EA4C 0D80013C */  lui        $at, %hi(D_800CA300)
    /* 1250 8011EA50 21082300 */  addu       $at, $at, $v1
    /* 1254 8011EA54 00A32690 */  lbu        $a2, %lo(D_800CA300)($at)
    /* 1258 8011EA58 2328E500 */  subu       $a1, $a3, $a1
    /* 125C 8011EA5C E4BE010C */  jal        func_8006FB90
    /* 1260 8011EA60 00310600 */   sll       $a2, $a2, 4
    /* 1264 8011EA64 1280023C */  lui        $v0, %hi(D_80123044)
    /* 1268 8011EA68 4430428C */  lw         $v0, %lo(D_80123044)($v0)
    /* 126C 8011EA6C 01001026 */  addiu      $s0, $s0, 0x1
    /* 1270 8011EA70 0E004294 */  lhu        $v0, 0xE($v0)
    /* 1274 8011EA74 FFFF0732 */  andi       $a3, $s0, 0xFFFF
    /* 1278 8011EA78 2B104700 */  sltu       $v0, $v0, $a3
    /* 127C 8011EA7C EEFF4010 */  beqz       $v0, .L8011EA38
    /* 1280 8011EA80 16002426 */   addiu     $a0, $s1, 0x16
  .L8011EA84:
    /* 1284 8011EA84 01005226 */  addiu      $s2, $s2, 0x1
    /* 1288 8011EA88 FFFF4232 */  andi       $v0, $s2, 0xFFFF
    /* 128C 8011EA8C 0200422C */  sltiu      $v0, $v0, 0x2
    /* 1290 8011EA90 D9FF4014 */  bnez       $v0, .L8011E9F8
    /* 1294 8011EA94 FFFF4432 */   andi      $a0, $s2, 0xFFFF
    /* 1298 8011EA98 E202A292 */  lbu        $v0, (0x1F8002E2 & 0xFFFF)($s5)
    /* 129C 8011EA9C 04000324 */  addiu      $v1, $zero, 0x4
    /* 12A0 8011EAA0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 12A4 8011EAA4 16004310 */  beq        $v0, $v1, .L8011EB00
    /* 12A8 8011EAA8 00000000 */   nop
    /* 12AC 8011EAAC 1180023C */  lui        $v0, %hi(D_8010C1D0)
    /* 12B0 8011EAB0 D0C14290 */  lbu        $v0, %lo(D_8010C1D0)($v0)
    /* 12B4 8011EAB4 9463878E */  lw         $a3, 0x6394($s4)
    /* 12B8 8011EAB8 03004230 */  andi       $v0, $v0, 0x3
    /* 12BC 8011EABC 02004014 */  bnez       $v0, .L8011EAC8
    /* 12C0 8011EAC0 0C000324 */   addiu     $v1, $zero, 0xC
    /* 12C4 8011EAC4 5B000324 */  addiu      $v1, $zero, 0x5B
  .L8011EAC8:
    /* 12C8 8011EAC8 0A00E3A0 */  sb         $v1, 0xA($a3)
    /* 12CC 8011EACC E202A292 */  lbu        $v0, (0x1F8002E2 & 0xFFFF)($s5)
    /* 12D0 8011EAD0 01000324 */  addiu      $v1, $zero, 0x1
    /* 12D4 8011EAD4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 12D8 8011EAD8 09004314 */  bne        $v0, $v1, .L8011EB00
    /* 12DC 8011EADC 00000000 */   nop
    /* 12E0 8011EAE0 1180023C */  lui        $v0, %hi(D_8010C1D0)
    /* 12E4 8011EAE4 D0C14290 */  lbu        $v0, %lo(D_8010C1D0)($v0)
    /* 12E8 8011EAE8 00000000 */  nop
    /* 12EC 8011EAEC 03004230 */  andi       $v0, $v0, 0x3
    /* 12F0 8011EAF0 02004014 */  bnez       $v0, .L8011EAFC
    /* 12F4 8011EAF4 0C000324 */   addiu     $v1, $zero, 0xC
    /* 12F8 8011EAF8 5B000324 */  addiu      $v1, $zero, 0x5B
  .L8011EAFC:
    /* 12FC 8011EAFC 1600E3A0 */  sb         $v1, 0x16($a3)
  .L8011EB00:
    /* 1300 8011EB00 1180063C */  lui        $a2, %hi(D_8010C1D0)
    /* 1304 8011EB04 D0C1C690 */  lbu        $a2, %lo(D_8010C1D0)($a2)
    /* 1308 8011EB08 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 130C 8011EB0C ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 1310 8011EB10 1900C200 */  multu      $a2, $v0
    /* 1314 8011EB14 07000424 */  addiu      $a0, $zero, 0x7
    /* 1318 8011EB18 21280000 */  addu       $a1, $zero, $zero
    /* 131C 8011EB1C 10400000 */  mfhi       $t0
    /* 1320 8011EB20 42180800 */  srl        $v1, $t0, 1
    /* 1324 8011EB24 40100300 */  sll        $v0, $v1, 1
    /* 1328 8011EB28 21104300 */  addu       $v0, $v0, $v1
    /* 132C 8011EB2C 2330C200 */  subu       $a2, $a2, $v0
    /* 1330 8011EB30 FF00C630 */  andi       $a2, $a2, 0xFF
    /* 1334 8011EB34 00310600 */  sll        $a2, $a2, 4
    /* 1338 8011EB38 E4BE010C */  jal        func_8006FB90
    /* 133C 8011EB3C 2800C624 */   addiu     $a2, $a2, 0x28
    /* 1340 8011EB40 2F7B0408 */  j          .L8011ECBC
    /* 1344 8011EB44 00000000 */   nop
  .L8011EB48:
    /* 1348 8011EB48 F13E010C */  jal        func_8004FBC4
    /* 134C 8011EB4C 21200000 */   addu      $a0, $zero, $zero
    /* 1350 8011EB50 5A004010 */  beqz       $v0, .L8011ECBC
    /* 1354 8011EB54 00000000 */   nop
    /* 1358 8011EB58 1280023C */  lui        $v0, %hi(D_80123010)
    /* 135C 8011EB5C 10304290 */  lbu        $v0, %lo(D_80123010)($v0)
    /* 1360 8011EB60 1180013C */  lui        $at, %hi(D_8010A369)
    /* 1364 8011EB64 69A320A0 */  sb         $zero, %lo(D_8010A369)($at)
    /* 1368 8011EB68 1180013C */  lui        $at, %hi(D_8010A368)
    /* 136C 8011EB6C 68A320A0 */  sb         $zero, %lo(D_8010A368)($at)
    /* 1370 8011EB70 801F013C */  lui        $at, (0x1F8001EC >> 16)
    /* 1374 8011EB74 EC0122A0 */  sb         $v0, (0x1F8001EC & 0xFFFF)($at)
    /* 1378 8011EB78 453F010C */  jal        func_8004FD14
    /* 137C 8011EB7C 01000424 */   addiu     $a0, $zero, 0x1
    /* 1380 8011EB80 AABF010C */  jal        func_8006FEA8
    /* 1384 8011EB84 00000000 */   nop
    /* 1388 8011EB88 801F023C */  lui        $v0, (0x1F8002A1 >> 16)
    /* 138C 8011EB8C A1024290 */  lbu        $v0, (0x1F8002A1 & 0xFFFF)($v0)
    /* 1390 8011EB90 00000000 */  nop
    /* 1394 8011EB94 03005214 */  bne        $v0, $s2, .L8011EBA4
    /* 1398 8011EB98 00000000 */   nop
    /* 139C 8011EB9C D2BF010C */  jal        func_8006FF48
    /* 13A0 8011EBA0 0C000424 */   addiu     $a0, $zero, 0xC
  .L8011EBA4:
    /* 13A4 8011EBA4 1280023C */  lui        $v0, %hi(D_80123048)
    /* 13A8 8011EBA8 48304290 */  lbu        $v0, %lo(D_80123048)($v0)
    /* 13AC 8011EBAC 00000000 */  nop
    /* 13B0 8011EBB0 39004010 */  beqz       $v0, .L8011EC98
    /* 13B4 8011EBB4 00000000 */   nop
    /* 13B8 8011EBB8 73CA010C */  jal        func_800729CC
    /* 13BC 8011EBBC 21900000 */   addu      $s2, $zero, $zero
    /* 13C0 8011EBC0 801F023C */  lui        $v0, (0x1F8002AD >> 16)
    /* 13C4 8011EBC4 AD024290 */  lbu        $v0, (0x1F8002AD & 0xFFFF)($v0)
    /* 13C8 8011EBC8 00000000 */  nop
    /* 13CC 8011EBCC 21204000 */  addu       $a0, $v0, $zero
    /* 13D0 8011EBD0 8573010C */  jal        func_8005CE14
    /* 13D4 8011EBD4 FF005030 */   andi      $s0, $v0, 0xFF
    /* 13D8 8011EBD8 AA2A033C */  lui        $v1, (0x2AAAAAAB >> 16)
    /* 13DC 8011EBDC ABAA6334 */  ori        $v1, $v1, (0x2AAAAAAB & 0xFFFF)
    /* 13E0 8011EBE0 18004300 */  mult       $v0, $v1
    /* 13E4 8011EBE4 C31F0200 */  sra        $v1, $v0, 31
    /* 13E8 8011EBE8 10400000 */  mfhi       $t0
    /* 13EC 8011EBEC 83200800 */  sra        $a0, $t0, 2
    /* 13F0 8011EBF0 23208300 */  subu       $a0, $a0, $v1
    /* 13F4 8011EBF4 40180400 */  sll        $v1, $a0, 1
    /* 13F8 8011EBF8 21186400 */  addu       $v1, $v1, $a0
    /* 13FC 8011EBFC C0180300 */  sll        $v1, $v1, 3
    /* 1400 8011EC00 23104300 */  subu       $v0, $v0, $v1
    /* 1404 8011EC04 40190200 */  sll        $v1, $v0, 5
    /* 1408 8011EC08 23186200 */  subu       $v1, $v1, $v0
    /* 140C 8011EC0C 80180300 */  sll        $v1, $v1, 2
    /* 1410 8011EC10 21186200 */  addu       $v1, $v1, $v0
    /* 1414 8011EC14 C0180300 */  sll        $v1, $v1, 3
    /* 1418 8011EC18 21107400 */  addu       $v0, $v1, $s4
    /* 141C 8011EC1C 8D034524 */  addiu      $a1, $v0, 0x38D
  .L8011EC20:
    /* 1420 8011EC20 0B00A390 */  lbu        $v1, 0xB($a1)
    /* 1424 8011EC24 1280043C */  lui        $a0, %hi(D_80123048)
    /* 1428 8011EC28 48308490 */  lbu        $a0, %lo(D_80123048)($a0)
    /* 142C 8011EC2C 40100300 */  sll        $v0, $v1, 1
    /* 1430 8011EC30 21104300 */  addu       $v0, $v0, $v1
    /* 1434 8011EC34 80100200 */  sll        $v0, $v0, 2
    /* 1438 8011EC38 23104300 */  subu       $v0, $v0, $v1
    /* 143C 8011EC3C 40100200 */  sll        $v0, $v0, 1
    /* 1440 8011EC40 21105400 */  addu       $v0, $v0, $s4
    /* 1444 8011EC44 9C8E0334 */  ori        $v1, $zero, 0x8E9C
    /* 1448 8011EC48 21104300 */  addu       $v0, $v0, $v1
    /* 144C 8011EC4C 21104400 */  addu       $v0, $v0, $a0
    /* 1450 8011EC50 0500A390 */  lbu        $v1, 0x5($a1)
    /* 1454 8011EC54 FFFF4290 */  lbu        $v0, -0x1($v0)
    /* 1458 8011EC58 00000000 */  nop
    /* 145C 8011EC5C 09006214 */  bne        $v1, $v0, .L8011EC84
    /* 1460 8011EC60 00000000 */   nop
    /* 1464 8011EC64 0000A290 */  lbu        $v0, 0x0($a1)
    /* 1468 8011EC68 00000000 */  nop
    /* 146C 8011EC6C 0A005010 */  beq        $v0, $s0, .L8011EC98
    /* 1470 8011EC70 AD02A2A2 */   sb        $v0, (0x1F8002AD & 0xFFFF)($s5)
    /* 1474 8011EC74 C580040C */  jal        func_80120314
    /* 1478 8011EC78 00000000 */   nop
    /* 147C 8011EC7C 267B0408 */  j          .L8011EC98
    /* 1480 8011EC80 00000000 */   nop
  .L8011EC84:
    /* 1484 8011EC84 01005226 */  addiu      $s2, $s2, 0x1
    /* 1488 8011EC88 FFFF4232 */  andi       $v0, $s2, 0xFFFF
    /* 148C 8011EC8C 0B00422C */  sltiu      $v0, $v0, 0xB
    /* 1490 8011EC90 E3FF4014 */  bnez       $v0, .L8011EC20
    /* 1494 8011EC94 E803A524 */   addiu     $a1, $a1, 0x3E8
  .L8011EC98:
    /* 1498 8011EC98 8BCA010C */  jal        func_80072A2C
    /* 149C 8011EC9C 00000000 */   nop
    /* 14A0 8011ECA0 01000224 */  addiu      $v0, $zero, 0x1
    /* 14A4 8011ECA4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 14A8 8011ECA8 21088102 */  addu       $at, $s4, $at
    /* 14AC 8011ECAC D8AB20A0 */  sb         $zero, -0x5428($at)
  .L8011ECB0:
    /* 14B0 8011ECB0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 14B4 8011ECB4 21088102 */  addu       $at, $s4, $at
    /* 14B8 8011ECB8 D9AB22A0 */  sb         $v0, -0x5427($at)
  .L8011ECBC:
    /* 14BC 8011ECBC 3800BF8F */  lw         $ra, 0x38($sp)
    /* 14C0 8011ECC0 3400B58F */  lw         $s5, 0x34($sp)
    /* 14C4 8011ECC4 3000B48F */  lw         $s4, 0x30($sp)
    /* 14C8 8011ECC8 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 14CC 8011ECCC 2800B28F */  lw         $s2, 0x28($sp)
    /* 14D0 8011ECD0 2400B18F */  lw         $s1, 0x24($sp)
    /* 14D4 8011ECD4 2000B08F */  lw         $s0, 0x20($sp)
    /* 14D8 8011ECD8 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 14DC 8011ECDC 0800E003 */  jr         $ra
    /* 14E0 8011ECE0 00000000 */   nop
endlabel func_8011D82C
