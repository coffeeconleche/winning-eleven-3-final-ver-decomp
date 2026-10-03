nonmatching func_8018DF30, 0x390

glabel func_8018DF30
    /* 4FB8 8018DF30 88FFBD27 */  addiu      $sp, $sp, -0x78
    /* 4FBC 8018DF34 6C00B7AF */  sw         $s7, 0x6C($sp)
    /* 4FC0 8018DF38 1080173C */  lui        $s7, %hi(D_800FF748)
    /* 4FC4 8018DF3C 48F7F726 */  addiu      $s7, $s7, %lo(D_800FF748)
    /* 4FC8 8018DF40 6400B5AF */  sw         $s5, 0x64($sp)
    /* 4FCC 8018DF44 801F153C */  lui        $s5, (0x1F80029B >> 16)
    /* 4FD0 8018DF48 801F033C */  lui        $v1, (0x1F8002E1 >> 16)
    /* 4FD4 8018DF4C E1026390 */  lbu        $v1, (0x1F8002E1 & 0xFFFF)($v1)
    /* 4FD8 8018DF50 01000224 */  addiu      $v0, $zero, 0x1
    /* 4FDC 8018DF54 7400BFAF */  sw         $ra, 0x74($sp)
    /* 4FE0 8018DF58 7000BEAF */  sw         $fp, 0x70($sp)
    /* 4FE4 8018DF5C 6800B6AF */  sw         $s6, 0x68($sp)
    /* 4FE8 8018DF60 6000B4AF */  sw         $s4, 0x60($sp)
    /* 4FEC 8018DF64 5C00B3AF */  sw         $s3, 0x5C($sp)
    /* 4FF0 8018DF68 5800B2AF */  sw         $s2, 0x58($sp)
    /* 4FF4 8018DF6C 5400B1AF */  sw         $s1, 0x54($sp)
    /* 4FF8 8018DF70 07006214 */  bne        $v1, $v0, .L8018DF90
    /* 4FFC 8018DF74 5000B0AF */   sw        $s0, 0x50($sp)
    /* 5000 8018DF78 FF301024 */  addiu      $s0, $zero, 0x30FF
    /* 5004 8018DF7C 64000824 */  addiu      $t0, $zero, 0x64
    /* 5008 8018DF80 4800A8A3 */  sb         $t0, 0x48($sp)
    /* 500C 8018DF84 78001E24 */  addiu      $fp, $zero, 0x78
    /* 5010 8018DF88 F5370608 */  j          .L8018DFD4
    /* 5014 8018DF8C 78001624 */   addiu     $s6, $zero, 0x78
  .L8018DF90:
    /* 5018 8018DF90 1180033C */  lui        $v1, %hi(D_80108667)
    /* 501C 8018DF94 67866390 */  lbu        $v1, %lo(D_80108667)($v1)
    /* 5020 8018DF98 00000000 */  nop
    /* 5024 8018DF9C 0F006330 */  andi       $v1, $v1, 0xF
    /* 5028 8018DFA0 40100300 */  sll        $v0, $v1, 1
    /* 502C 8018DFA4 21104300 */  addu       $v0, $v0, $v1
    /* 5030 8018DFA8 1D80013C */  lui        $at, %hi(D_801D1A54)
    /* 5034 8018DFAC 21082200 */  addu       $at, $at, $v0
    /* 5038 8018DFB0 541A2890 */  lbu        $t0, %lo(D_801D1A54)($at)
    /* 503C 8018DFB4 F9307024 */  addiu      $s0, $v1, 0x30F9
    /* 5040 8018DFB8 4800A8A3 */  sb         $t0, 0x48($sp)
    /* 5044 8018DFBC 1D80013C */  lui        $at, %hi(D_801D1A55)
    /* 5048 8018DFC0 21082200 */  addu       $at, $at, $v0
    /* 504C 8018DFC4 551A3E90 */  lbu        $fp, %lo(D_801D1A55)($at)
    /* 5050 8018DFC8 1D80013C */  lui        $at, %hi(D_801D1A56)
    /* 5054 8018DFCC 21082200 */  addu       $at, $at, $v0
    /* 5058 8018DFD0 561A3690 */  lbu        $s6, %lo(D_801D1A56)($at)
  .L8018DFD4:
    /* 505C 8018DFD4 9B02A292 */  lbu        $v0, (0x1F80029B & 0xFFFF)($s5)
    /* 5060 8018DFD8 00000000 */  nop
    /* 5064 8018DFDC FF004330 */  andi       $v1, $v0, 0xFF
    /* 5068 8018DFE0 0700622C */  sltiu      $v0, $v1, 0x7
    /* 506C 8018DFE4 A9004010 */  beqz       $v0, .L8018E28C
    /* 5070 8018DFE8 80100300 */   sll       $v0, $v1, 2
    /* 5074 8018DFEC 1980013C */  lui        $at, %hi(jtbl_80188F78)
    /* 5078 8018DFF0 21082200 */  addu       $at, $at, $v0
    /* 507C 8018DFF4 788F228C */  lw         $v0, %lo(jtbl_80188F78)($at)
    /* 5080 8018DFF8 00000000 */  nop
    /* 5084 8018DFFC 08004000 */  jr         $v0
    /* 5088 8018E000 00000000 */   nop
  jlabel .L8018E004
    /* 508C 8018E004 4E39060C */  jal        func_8018E538
    /* 5090 8018E008 21200000 */   addu      $a0, $zero, $zero
    /* 5094 8018E00C 71380608 */  j          .L8018E1C4
    /* 5098 8018E010 3003A0A2 */   sb        $zero, 0x330($s5)
  jlabel .L8018E014
    /* 509C 8018E014 D966000C */  jal        func_80019B64
    /* 50A0 8018E018 C9000424 */   addiu     $a0, $zero, 0xC9
    /* 50A4 8018E01C 9B004010 */  beqz       $v0, .L8018E28C
    /* 50A8 8018E020 01000424 */   addiu     $a0, $zero, 0x1
    /* 50AC 8018E024 21280002 */  addu       $a1, $s0, $zero
    /* 50B0 8018E028 21300000 */  addu       $a2, $zero, $zero
    /* 50B4 8018E02C 21380000 */  addu       $a3, $zero, $zero
    /* 50B8 8018E030 18000224 */  addiu      $v0, $zero, 0x18
    /* 50BC 8018E034 00101124 */  addiu      $s1, $zero, 0x1000
    /* 50C0 8018E038 80001024 */  addiu      $s0, $zero, 0x80
    /* 50C4 8018E03C 01001224 */  addiu      $s2, $zero, 0x1
    /* 50C8 8018E040 1000A0AF */  sw         $zero, 0x10($sp)
    /* 50CC 8018E044 1400A2AF */  sw         $v0, 0x14($sp)
    /* 50D0 8018E048 1800A0AF */  sw         $zero, 0x18($sp)
    /* 50D4 8018E04C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 50D8 8018E050 2000B1AF */  sw         $s1, 0x20($sp)
    /* 50DC 8018E054 2400A0AF */  sw         $zero, 0x24($sp)
    /* 50E0 8018E058 2800A0AF */  sw         $zero, 0x28($sp)
    /* 50E4 8018E05C 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 50E8 8018E060 3000B0AF */  sw         $s0, 0x30($sp)
    /* 50EC 8018E064 3400B0AF */  sw         $s0, 0x34($sp)
    /* 50F0 8018E068 3800A0AF */  sw         $zero, 0x38($sp)
    /* 50F4 8018E06C 3C00B2AF */  sw         $s2, 0x3C($sp)
    /* 50F8 8018E070 ED4F060C */  jal        func_80193FB4
    /* 50FC 8018E074 4000B2AF */   sw        $s2, 0x40($sp)
    /* 5100 8018E078 37000424 */  addiu      $a0, $zero, 0x37
    /* 5104 8018E07C EE300524 */  addiu      $a1, $zero, 0x30EE
    /* 5108 8018E080 21300000 */  addu       $a2, $zero, $zero
    /* 510C 8018E084 21380000 */  addu       $a3, $zero, $zero
    /* 5110 8018E088 0D000224 */  addiu      $v0, $zero, 0xD
    /* 5114 8018E08C D3001424 */  addiu      $s4, $zero, 0xD3
    /* 5118 8018E090 06001324 */  addiu      $s3, $zero, 0x6
    /* 511C 8018E094 1000A0AF */  sw         $zero, 0x10($sp)
    /* 5120 8018E098 1400A2AF */  sw         $v0, 0x14($sp)
    /* 5124 8018E09C 1800B4AF */  sw         $s4, 0x18($sp)
    /* 5128 8018E0A0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 512C 8018E0A4 2000B1AF */  sw         $s1, 0x20($sp)
    /* 5130 8018E0A8 2400A0AF */  sw         $zero, 0x24($sp)
    /* 5134 8018E0AC 2800A0AF */  sw         $zero, 0x28($sp)
    /* 5138 8018E0B0 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 513C 8018E0B4 3000B0AF */  sw         $s0, 0x30($sp)
    /* 5140 8018E0B8 3400B0AF */  sw         $s0, 0x34($sp)
    /* 5144 8018E0BC 3800A0AF */  sw         $zero, 0x38($sp)
    /* 5148 8018E0C0 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 514C 8018E0C4 ED4F060C */  jal        func_80193FB4
    /* 5150 8018E0C8 4000B2AF */   sw        $s2, 0x40($sp)
    /* 5154 8018E0CC 38000424 */  addiu      $a0, $zero, 0x38
    /* 5158 8018E0D0 EF300524 */  addiu      $a1, $zero, 0x30EF
    /* 515C 8018E0D4 21300000 */  addu       $a2, $zero, $zero
    /* 5160 8018E0D8 21380000 */  addu       $a3, $zero, $zero
    /* 5164 8018E0DC 0E000224 */  addiu      $v0, $zero, 0xE
    /* 5168 8018E0E0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 516C 8018E0E4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 5170 8018E0E8 1800B4AF */  sw         $s4, 0x18($sp)
    /* 5174 8018E0EC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 5178 8018E0F0 2000B1AF */  sw         $s1, 0x20($sp)
    /* 517C 8018E0F4 2400A0AF */  sw         $zero, 0x24($sp)
    /* 5180 8018E0F8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 5184 8018E0FC 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 5188 8018E100 3000B0AF */  sw         $s0, 0x30($sp)
    /* 518C 8018E104 3400B0AF */  sw         $s0, 0x34($sp)
    /* 5190 8018E108 3800A0AF */  sw         $zero, 0x38($sp)
    /* 5194 8018E10C 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 5198 8018E110 ED4F060C */  jal        func_80193FB4
    /* 519C 8018E114 4000B2AF */   sw        $s2, 0x40($sp)
    /* 51A0 8018E118 4800A893 */  lbu        $t0, 0x48($sp)
    /* 51A4 8018E11C 6F66FEA2 */  sb         $fp, 0x666F($s7)
    /* 51A8 8018E120 7066F6A2 */  sb         $s6, 0x6670($s7)
    /* 51AC 8018E124 6E66E8A2 */  sb         $t0, 0x666E($s7)
    /* 51B0 8018E128 9666E8A2 */  sb         $t0, 0x6696($s7)
    /* 51B4 8018E12C 9766FEA2 */  sb         $fp, 0x6697($s7)
    /* 51B8 8018E130 775C000C */  jal        func_800171DC
    /* 51BC 8018E134 9866F6A2 */   sb        $s6, 0x6698($s7)
    /* 51C0 8018E138 01000224 */  addiu      $v0, $zero, 0x1
    /* 51C4 8018E13C A3380608 */  j          .L8018E28C
    /* 51C8 8018E140 3003A2A2 */   sb        $v0, 0x330($s5)
  jlabel .L8018E144
    /* 51CC 8018E144 1FBC010C */  jal        func_8006F07C
    /* 51D0 8018E148 10000424 */   addiu     $a0, $zero, 0x10
    /* 51D4 8018E14C 4F004010 */  beqz       $v0, .L8018E28C
    /* 51D8 8018E150 00000000 */   nop
    /* 51DC 8018E154 775C000C */  jal        func_800171DC
    /* 51E0 8018E158 00000000 */   nop
    /* 51E4 8018E15C A3380608 */  j          .L8018E28C
    /* 51E8 8018E160 00000000 */   nop
  jlabel .L8018E164
    /* 51EC 8018E164 20BB010C */  jal        func_8006EC80
    /* 51F0 8018E168 21200000 */   addu      $a0, $zero, $zero
    /* 51F4 8018E16C 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 51F8 8018E170 A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 51FC 8018E174 FFFF4330 */  andi       $v1, $v0, 0xFFFF
    /* 5200 8018E178 20000224 */  addiu      $v0, $zero, 0x20
    /* 5204 8018E17C 03006210 */  beq        $v1, $v0, .L8018E18C
    /* 5208 8018E180 00080224 */   addiu     $v0, $zero, 0x800
    /* 520C 8018E184 41006214 */  bne        $v1, $v0, .L8018E28C
    /* 5210 8018E188 00000000 */   nop
  .L8018E18C:
    /* 5214 8018E18C 88AD020C */  jal        func_800AB620
    /* 5218 8018E190 28050424 */   addiu     $a0, $zero, 0x528
    /* 521C 8018E194 775C000C */  jal        func_800171DC
    /* 5220 8018E198 00000000 */   nop
    /* 5224 8018E19C A3380608 */  j          .L8018E28C
    /* 5228 8018E1A0 00000000 */   nop
  jlabel .L8018E1A4
    /* 522C 8018E1A4 10000424 */  addiu      $a0, $zero, 0x10
    /* 5230 8018E1A8 37BC010C */  jal        func_8006F0DC
    /* 5234 8018E1AC 21280000 */   addu      $a1, $zero, $zero
    /* 5238 8018E1B0 36004010 */  beqz       $v0, .L8018E28C
    /* 523C 8018E1B4 00000000 */   nop
    /* 5240 8018E1B8 153F010C */  jal        func_8004FC54
    /* 5244 8018E1BC 21200000 */   addu      $a0, $zero, $zero
    /* 5248 8018E1C0 3003A0A2 */  sb         $zero, 0x330($s5)
  .L8018E1C4:
    /* 524C 8018E1C4 775C000C */  jal        func_800171DC
    /* 5250 8018E1C8 9F02A0A2 */   sb        $zero, 0x29F($s5)
    /* 5254 8018E1CC A3380608 */  j          .L8018E28C
    /* 5258 8018E1D0 00000000 */   nop
  jlabel .L8018E1D4
    /* 525C 8018E1D4 D966000C */  jal        func_80019B64
    /* 5260 8018E1D8 CA000424 */   addiu     $a0, $zero, 0xCA
    /* 5264 8018E1DC 2B004010 */  beqz       $v0, .L8018E28C
    /* 5268 8018E1E0 01000224 */   addiu     $v0, $zero, 0x1
    /* 526C 8018E1E4 775C000C */  jal        func_800171DC
    /* 5270 8018E1E8 3003A2A2 */   sb        $v0, 0x330($s5)
    /* 5274 8018E1EC A3380608 */  j          .L8018E28C
    /* 5278 8018E1F0 00000000 */   nop
  jlabel .L8018E1F4
    /* 527C 8018E1F4 88AD020C */  jal        func_800AB620
    /* 5280 8018E1F8 05020424 */   addiu     $a0, $zero, 0x205
    /* 5284 8018E1FC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 5288 8018E200 2108E102 */  addu       $at, $s7, $at
    /* 528C 8018E204 1F8F2490 */  lbu        $a0, -0x70E1($at)
    /* 5290 8018E208 01000224 */  addiu      $v0, $zero, 0x1
    /* 5294 8018E20C 0F008330 */  andi       $v1, $a0, 0xF
    /* 5298 8018E210 10006210 */  beq        $v1, $v0, .L8018E254
    /* 529C 8018E214 02006228 */   slti      $v0, $v1, 0x2
    /* 52A0 8018E218 05004010 */  beqz       $v0, .L8018E230
    /* 52A4 8018E21C 00000000 */   nop
    /* 52A8 8018E220 0A006010 */  beqz       $v1, .L8018E24C
    /* 52AC 8018E224 00000000 */   nop
    /* 52B0 8018E228 9C380608 */  j          .L8018E270
    /* 52B4 8018E22C 22000424 */   addiu     $a0, $zero, 0x22
  .L8018E230:
    /* 52B8 8018E230 08006228 */  slti       $v0, $v1, 0x8
    /* 52BC 8018E234 0D004010 */  beqz       $v0, .L8018E26C
    /* 52C0 8018E238 06006228 */   slti      $v0, $v1, 0x6
    /* 52C4 8018E23C 0B004014 */  bnez       $v0, .L8018E26C
    /* 52C8 8018E240 00000000 */   nop
    /* 52CC 8018E244 9C380608 */  j          .L8018E270
    /* 52D0 8018E248 20000424 */   addiu     $a0, $zero, 0x20
  .L8018E24C:
    /* 52D4 8018E24C 9C380608 */  j          .L8018E270
    /* 52D8 8018E250 21000424 */   addiu     $a0, $zero, 0x21
  .L8018E254:
    /* 52DC 8018E254 82110400 */  srl        $v0, $a0, 6
    /* 52E0 8018E258 01004230 */  andi       $v0, $v0, 0x1
    /* 52E4 8018E25C 03004014 */  bnez       $v0, .L8018E26C
    /* 52E8 8018E260 00000000 */   nop
    /* 52EC 8018E264 9C380608 */  j          .L8018E270
    /* 52F0 8018E268 23000424 */   addiu     $a0, $zero, 0x23
  .L8018E26C:
    /* 52F4 8018E26C 22000424 */  addiu      $a0, $zero, 0x22
  .L8018E270:
    /* 52F8 8018E270 715C000C */  jal        func_800171C4
    /* 52FC 8018E274 00000000 */   nop
    /* 5300 8018E278 7F5C000C */  jal        func_800171FC
    /* 5304 8018E27C 21200000 */   addu      $a0, $zero, $zero
    /* 5308 8018E280 0100013C */  lui        $at, (0x10000 >> 16)
    /* 530C 8018E284 2108E102 */  addu       $at, $s7, $at
    /* 5310 8018E288 DAAB20A0 */  sb         $zero, -0x5426($at)
  .L8018E28C:
    /* 5314 8018E28C 7400BF8F */  lw         $ra, 0x74($sp)
    /* 5318 8018E290 7000BE8F */  lw         $fp, 0x70($sp)
    /* 531C 8018E294 6C00B78F */  lw         $s7, 0x6C($sp)
    /* 5320 8018E298 6800B68F */  lw         $s6, 0x68($sp)
    /* 5324 8018E29C 6400B58F */  lw         $s5, 0x64($sp)
    /* 5328 8018E2A0 6000B48F */  lw         $s4, 0x60($sp)
    /* 532C 8018E2A4 5C00B38F */  lw         $s3, 0x5C($sp)
    /* 5330 8018E2A8 5800B28F */  lw         $s2, 0x58($sp)
    /* 5334 8018E2AC 5400B18F */  lw         $s1, 0x54($sp)
    /* 5338 8018E2B0 5000B08F */  lw         $s0, 0x50($sp)
    /* 533C 8018E2B4 7800BD27 */  addiu      $sp, $sp, 0x78
    /* 5340 8018E2B8 0800E003 */  jr         $ra
    /* 5344 8018E2BC 00000000 */   nop
endlabel func_8018DF30
