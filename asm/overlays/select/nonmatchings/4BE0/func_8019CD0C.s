nonmatching func_8019CD0C, 0x530

glabel func_8019CD0C
    /* 13D94 8019CD0C 1E80043C */  lui        $a0, %hi(D_801D8C60)
    /* 13D98 8019CD10 608C8490 */  lbu        $a0, %lo(D_801D8C60)($a0)
    /* 13D9C 8019CD14 68FFBD27 */  addiu      $sp, $sp, -0x98
    /* 13DA0 8019CD18 9400BFAF */  sw         $ra, 0x94($sp)
    /* 13DA4 8019CD1C 9000BEAF */  sw         $fp, 0x90($sp)
    /* 13DA8 8019CD20 8C00B7AF */  sw         $s7, 0x8C($sp)
    /* 13DAC 8019CD24 8800B6AF */  sw         $s6, 0x88($sp)
    /* 13DB0 8019CD28 8400B5AF */  sw         $s5, 0x84($sp)
    /* 13DB4 8019CD2C 8000B4AF */  sw         $s4, 0x80($sp)
    /* 13DB8 8019CD30 7C00B3AF */  sw         $s3, 0x7C($sp)
    /* 13DBC 8019CD34 7800B2AF */  sw         $s2, 0x78($sp)
    /* 13DC0 8019CD38 7400B1AF */  sw         $s1, 0x74($sp)
    /* 13DC4 8019CD3C 7000B0AF */  sw         $s0, 0x70($sp)
    /* 13DC8 8019CD40 00160400 */  sll        $v0, $a0, 24
    /* 13DCC 8019CD44 03160200 */  sra        $v0, $v0, 24
    /* 13DD0 8019CD48 08004324 */  addiu      $v1, $v0, 0x8
    /* 13DD4 8019CD4C 1F007630 */  andi       $s6, $v1, 0x1F
    /* 13DD8 8019CD50 18004324 */  addiu      $v1, $v0, 0x18
    /* 13DDC 8019CD54 1F006330 */  andi       $v1, $v1, 0x1F
    /* 13DE0 8019CD58 10004224 */  addiu      $v0, $v0, 0x10
    /* 13DE4 8019CD5C 5000A3AF */  sw         $v1, 0x50($sp)
    /* 13DE8 8019CD60 801F033C */  lui        $v1, (0x1F8002E1 >> 16)
    /* 13DEC 8019CD64 E1026390 */  lbu        $v1, (0x1F8002E1 & 0xFFFF)($v1)
    /* 13DF0 8019CD68 1F004230 */  andi       $v0, $v0, 0x1F
    /* 13DF4 8019CD6C 4800A2AF */  sw         $v0, 0x48($sp)
    /* 13DF8 8019CD70 02000224 */  addiu      $v0, $zero, 0x2
    /* 13DFC 8019CD74 07006214 */  bne        $v1, $v0, .L8019CD94
    /* 13E00 8019CD78 1F009230 */   andi      $s2, $a0, 0x1F
    /* 13E04 8019CD7C 1180023C */  lui        $v0, %hi(D_80108667)
    /* 13E08 8019CD80 67864290 */  lbu        $v0, %lo(D_80108667)($v0)
    /* 13E0C 8019CD84 00000000 */  nop
    /* 13E10 8019CD88 0F004230 */  andi       $v0, $v0, 0xF
    /* 13E14 8019CD8C 04004010 */  beqz       $v0, .L8019CDA0
    /* 13E18 8019CD90 00000000 */   nop
  .L8019CD94:
    /* 13E1C 8019CD94 01000224 */  addiu      $v0, $zero, 0x1
    /* 13E20 8019CD98 0F006214 */  bne        $v1, $v0, .L8019CDD8
    /* 13E24 8019CD9C 01000524 */   addiu     $a1, $zero, 0x1
  .L8019CDA0:
    /* 13E28 8019CDA0 1E80023C */  lui        $v0, %hi(D_801D8C60)
    /* 13E2C 8019CDA4 608C4280 */  lb         $v0, %lo(D_801D8C60)($v0)
    /* 13E30 8019CDA8 00000000 */  nop
    /* 13E34 8019CDAC 06004104 */  bgez       $v0, .L8019CDC8
    /* 13E38 8019CDB0 00000000 */   nop
    /* 13E3C 8019CDB4 40100200 */  sll        $v0, $v0, 1
    /* 13E40 8019CDB8 18004224 */  addiu      $v0, $v0, 0x18
    /* 13E44 8019CDBC 1F004230 */  andi       $v0, $v0, 0x1F
    /* 13E48 8019CDC0 75730608 */  j          .L8019CDD4
    /* 13E4C 8019CDC4 5000A2AF */   sw        $v0, 0x50($sp)
  .L8019CDC8:
    /* 13E50 8019CDC8 40100200 */  sll        $v0, $v0, 1
    /* 13E54 8019CDCC 08004224 */  addiu      $v0, $v0, 0x8
    /* 13E58 8019CDD0 1F005630 */  andi       $s6, $v0, 0x1F
  .L8019CDD4:
    /* 13E5C 8019CDD4 01000524 */  addiu      $a1, $zero, 0x1
  .L8019CDD8:
    /* 13E60 8019CDD8 40301200 */  sll        $a2, $s2, 1
    /* 13E64 8019CDDC 40381600 */  sll        $a3, $s6, 1
    /* 13E68 8019CDE0 1E80043C */  lui        $a0, %hi(D_801D8C64)
    /* 13E6C 8019CDE4 648C8490 */  lbu        $a0, %lo(D_801D8C64)($a0)
    /* 13E70 8019CDE8 5000A88F */  lw         $t0, 0x50($sp)
    /* 13E74 8019CDEC 1980013C */  lui        $at, %hi(D_80189F78)
    /* 13E78 8019CDF0 21082600 */  addu       $at, $at, $a2
    /* 13E7C 8019CDF4 789F3194 */  lhu        $s1, %lo(D_80189F78)($at)
    /* 13E80 8019CDF8 1980013C */  lui        $at, %hi(D_80189F78)
    /* 13E84 8019CDFC 21082700 */  addu       $at, $at, $a3
    /* 13E88 8019CE00 789F3394 */  lhu        $s3, %lo(D_80189F78)($at)
    /* 13E8C 8019CE04 40100800 */  sll        $v0, $t0, 1
    /* 13E90 8019CE08 4800A88F */  lw         $t0, 0x48($sp)
    /* 13E94 8019CE0C 1980013C */  lui        $at, %hi(D_80189F78)
    /* 13E98 8019CE10 21082200 */  addu       $at, $at, $v0
    /* 13E9C 8019CE14 789F2294 */  lhu        $v0, %lo(D_80189F78)($at)
    /* 13EA0 8019CE18 40180800 */  sll        $v1, $t0, 1
    /* 13EA4 8019CE1C 1980013C */  lui        $at, %hi(D_80189F78)
    /* 13EA8 8019CE20 21082300 */  addu       $at, $at, $v1
    /* 13EAC 8019CE24 789F3794 */  lhu        $s7, %lo(D_80189F78)($at)
    /* 13EB0 8019CE28 1579060C */  jal        func_8019E454
    /* 13EB4 8019CE2C 42F10200 */   srl       $fp, $v0, 5
    /* 13EB8 8019CE30 FF005432 */  andi       $s4, $s2, 0xFF
    /* 13EBC 8019CE34 21208002 */  addu       $a0, $s4, $zero
    /* 13EC0 8019CE38 2579060C */  jal        func_8019E494
    /* 13EC4 8019CE3C FFFF5030 */   andi      $s0, $v0, 0xFFFF
    /* 13EC8 8019CE40 14000424 */  addiu      $a0, $zero, 0x14
    /* 13ECC 8019CE44 21280002 */  addu       $a1, $s0, $zero
    /* 13ED0 8019CE48 21300000 */  addu       $a2, $zero, $zero
    /* 13ED4 8019CE4C 21380000 */  addu       $a3, $zero, $zero
    /* 13ED8 8019CE50 18000824 */  addiu      $t0, $zero, 0x18
    /* 13EDC 8019CE54 1400A8AF */  sw         $t0, 0x14($sp)
    /* 13EE0 8019CE58 A8FF0824 */  addiu      $t0, $zero, -0x58
    /* 13EE4 8019CE5C 2400A8AF */  sw         $t0, 0x24($sp)
    /* 13EE8 8019CE60 DFFF0824 */  addiu      $t0, $zero, -0x21
    /* 13EEC 8019CE64 42811100 */  srl        $s0, $s1, 5
    /* 13EF0 8019CE68 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 13EF4 8019CE6C 1980013C */  lui        $at, %hi(D_80189FB8)
    /* 13EF8 8019CE70 21083200 */  addu       $at, $at, $s2
    /* 13EFC 8019CE74 B89F3280 */  lb         $s2, %lo(D_80189FB8)($at)
    /* 13F00 8019CE78 01001524 */  addiu      $s5, $zero, 0x1
    /* 13F04 8019CE7C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 13F08 8019CE80 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 13F0C 8019CE84 2000B1AF */  sw         $s1, 0x20($sp)
    /* 13F10 8019CE88 2800A8AF */  sw         $t0, 0x28($sp)
    /* 13F14 8019CE8C 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 13F18 8019CE90 3000B0AF */  sw         $s0, 0x30($sp)
    /* 13F1C 8019CE94 3400B0AF */  sw         $s0, 0x34($sp)
    /* 13F20 8019CE98 3800A0AF */  sw         $zero, 0x38($sp)
    /* 13F24 8019CE9C 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 13F28 8019CEA0 4000B5AF */  sw         $s5, 0x40($sp)
    /* 13F2C 8019CEA4 ED4F060C */  jal        func_80193FB4
    /* 13F30 8019CEA8 1000B2AF */   sw        $s2, 0x10($sp)
    /* 13F34 8019CEAC 2579060C */  jal        func_8019E494
    /* 13F38 8019CEB0 21208002 */   addu      $a0, $s4, $zero
    /* 13F3C 8019CEB4 15000424 */  addiu      $a0, $zero, 0x15
    /* 13F40 8019CEB8 22300524 */  addiu      $a1, $zero, 0x3022
    /* 13F44 8019CEBC 21300000 */  addu       $a2, $zero, $zero
    /* 13F48 8019CEC0 21380000 */  addu       $a3, $zero, $zero
    /* 13F4C 8019CEC4 18000824 */  addiu      $t0, $zero, 0x18
    /* 13F50 8019CEC8 1400A8AF */  sw         $t0, 0x14($sp)
    /* 13F54 8019CECC A8FF0824 */  addiu      $t0, $zero, -0x58
    /* 13F58 8019CED0 2400A8AF */  sw         $t0, 0x24($sp)
    /* 13F5C 8019CED4 DFFF0824 */  addiu      $t0, $zero, -0x21
    /* 13F60 8019CED8 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 13F64 8019CEDC 1000B2AF */  sw         $s2, 0x10($sp)
    /* 13F68 8019CEE0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 13F6C 8019CEE4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 13F70 8019CEE8 2000B1AF */  sw         $s1, 0x20($sp)
    /* 13F74 8019CEEC 2800A8AF */  sw         $t0, 0x28($sp)
    /* 13F78 8019CEF0 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 13F7C 8019CEF4 3000B0AF */  sw         $s0, 0x30($sp)
    /* 13F80 8019CEF8 3400B0AF */  sw         $s0, 0x34($sp)
    /* 13F84 8019CEFC 3800A0AF */  sw         $zero, 0x38($sp)
    /* 13F88 8019CF00 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 13F8C 8019CF04 ED4F060C */  jal        func_80193FB4
    /* 13F90 8019CF08 4000B5AF */   sw        $s5, 0x40($sp)
    /* 13F94 8019CF0C 1E80043C */  lui        $a0, %hi(D_801D8C65)
    /* 13F98 8019CF10 658C8490 */  lbu        $a0, %lo(D_801D8C65)($a0)
    /* 13F9C 8019CF14 1579060C */  jal        func_8019E454
    /* 13FA0 8019CF18 01000524 */   addiu     $a1, $zero, 0x1
    /* 13FA4 8019CF1C FF00D232 */  andi       $s2, $s6, 0xFF
    /* 13FA8 8019CF20 21204002 */  addu       $a0, $s2, $zero
    /* 13FAC 8019CF24 2579060C */  jal        func_8019E494
    /* 13FB0 8019CF28 FFFF5030 */   andi      $s0, $v0, 0xFFFF
    /* 13FB4 8019CF2C 16000424 */  addiu      $a0, $zero, 0x16
    /* 13FB8 8019CF30 21280002 */  addu       $a1, $s0, $zero
    /* 13FBC 8019CF34 21300000 */  addu       $a2, $zero, $zero
    /* 13FC0 8019CF38 21380000 */  addu       $a3, $zero, $zero
    /* 13FC4 8019CF3C 18000824 */  addiu      $t0, $zero, 0x18
    /* 13FC8 8019CF40 1400A8AF */  sw         $t0, 0x14($sp)
    /* 13FCC 8019CF44 A8FF0824 */  addiu      $t0, $zero, -0x58
    /* 13FD0 8019CF48 2400A8AF */  sw         $t0, 0x24($sp)
    /* 13FD4 8019CF4C DFFF0824 */  addiu      $t0, $zero, -0x21
    /* 13FD8 8019CF50 42811300 */  srl        $s0, $s3, 5
    /* 13FDC 8019CF54 1980013C */  lui        $at, %hi(D_80189FB8)
    /* 13FE0 8019CF58 21083600 */  addu       $at, $at, $s6
    /* 13FE4 8019CF5C B89F3180 */  lb         $s1, %lo(D_80189FB8)($at)
    /* 13FE8 8019CF60 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 13FEC 8019CF64 1800A0AF */  sw         $zero, 0x18($sp)
    /* 13FF0 8019CF68 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 13FF4 8019CF6C 2000B3AF */  sw         $s3, 0x20($sp)
    /* 13FF8 8019CF70 2800A8AF */  sw         $t0, 0x28($sp)
    /* 13FFC 8019CF74 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 14000 8019CF78 3000B0AF */  sw         $s0, 0x30($sp)
    /* 14004 8019CF7C 3400B0AF */  sw         $s0, 0x34($sp)
    /* 14008 8019CF80 3800A0AF */  sw         $zero, 0x38($sp)
    /* 1400C 8019CF84 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 14010 8019CF88 4000B5AF */  sw         $s5, 0x40($sp)
    /* 14014 8019CF8C ED4F060C */  jal        func_80193FB4
    /* 14018 8019CF90 1000B1AF */   sw        $s1, 0x10($sp)
    /* 1401C 8019CF94 2579060C */  jal        func_8019E494
    /* 14020 8019CF98 21204002 */   addu      $a0, $s2, $zero
    /* 14024 8019CF9C 17000424 */  addiu      $a0, $zero, 0x17
    /* 14028 8019CFA0 22300524 */  addiu      $a1, $zero, 0x3022
    /* 1402C 8019CFA4 21300000 */  addu       $a2, $zero, $zero
    /* 14030 8019CFA8 21380000 */  addu       $a3, $zero, $zero
    /* 14034 8019CFAC 18000824 */  addiu      $t0, $zero, 0x18
    /* 14038 8019CFB0 1400A8AF */  sw         $t0, 0x14($sp)
    /* 1403C 8019CFB4 A8FF0824 */  addiu      $t0, $zero, -0x58
    /* 14040 8019CFB8 2400A8AF */  sw         $t0, 0x24($sp)
    /* 14044 8019CFBC DFFF0824 */  addiu      $t0, $zero, -0x21
    /* 14048 8019CFC0 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 1404C 8019CFC4 1000B1AF */  sw         $s1, 0x10($sp)
    /* 14050 8019CFC8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 14054 8019CFCC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 14058 8019CFD0 2000B3AF */  sw         $s3, 0x20($sp)
    /* 1405C 8019CFD4 2800A8AF */  sw         $t0, 0x28($sp)
    /* 14060 8019CFD8 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 14064 8019CFDC 3000B0AF */  sw         $s0, 0x30($sp)
    /* 14068 8019CFE0 3400B0AF */  sw         $s0, 0x34($sp)
    /* 1406C 8019CFE4 3800A0AF */  sw         $zero, 0x38($sp)
    /* 14070 8019CFE8 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 14074 8019CFEC ED4F060C */  jal        func_80193FB4
    /* 14078 8019CFF0 4000B5AF */   sw        $s5, 0x40($sp)
    /* 1407C 8019CFF4 801F023C */  lui        $v0, (0x1F8002E1 >> 16)
    /* 14080 8019CFF8 E1024290 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($v0)
    /* 14084 8019CFFC 00000000 */  nop
    /* 14088 8019D000 FF004330 */  andi       $v1, $v0, 0xFF
    /* 1408C 8019D004 02000224 */  addiu      $v0, $zero, 0x2
    /* 14090 8019D008 07006214 */  bne        $v1, $v0, .L8019D028
    /* 14094 8019D00C 42911700 */   srl       $s2, $s7, 5
    /* 14098 8019D010 1180023C */  lui        $v0, %hi(D_80108667)
    /* 1409C 8019D014 67864290 */  lbu        $v0, %lo(D_80108667)($v0)
    /* 140A0 8019D018 00000000 */  nop
    /* 140A4 8019D01C 0F004230 */  andi       $v0, $v0, 0xF
    /* 140A8 8019D020 3D004010 */  beqz       $v0, .L8019D118
    /* 140AC 8019D024 00000000 */   nop
  .L8019D028:
    /* 140B0 8019D028 3B007510 */  beq        $v1, $s5, .L8019D118
    /* 140B4 8019D02C 00000000 */   nop
    /* 140B8 8019D030 1E80043C */  lui        $a0, %hi(D_801D8C66)
    /* 140BC 8019D034 668C8490 */  lbu        $a0, %lo(D_801D8C66)($a0)
    /* 140C0 8019D038 1579060C */  jal        func_8019E454
    /* 140C4 8019D03C 01000524 */   addiu     $a1, $zero, 0x1
    /* 140C8 8019D040 4800B193 */  lbu        $s1, 0x48($sp)
    /* 140CC 8019D044 FFFF5030 */  andi       $s0, $v0, 0xFFFF
    /* 140D0 8019D048 2579060C */  jal        func_8019E494
    /* 140D4 8019D04C 21202002 */   addu      $a0, $s1, $zero
    /* 140D8 8019D050 18000424 */  addiu      $a0, $zero, 0x18
    /* 140DC 8019D054 21280002 */  addu       $a1, $s0, $zero
    /* 140E0 8019D058 21300000 */  addu       $a2, $zero, $zero
    /* 140E4 8019D05C 18000824 */  addiu      $t0, $zero, 0x18
    /* 140E8 8019D060 1400A8AF */  sw         $t0, 0x14($sp)
    /* 140EC 8019D064 A8FF0824 */  addiu      $t0, $zero, -0x58
    /* 140F0 8019D068 2400A8AF */  sw         $t0, 0x24($sp)
    /* 140F4 8019D06C DFFF0824 */  addiu      $t0, $zero, -0x21
    /* 140F8 8019D070 2800A8AF */  sw         $t0, 0x28($sp)
    /* 140FC 8019D074 4800A88F */  lw         $t0, 0x48($sp)
    /* 14100 8019D078 21380000 */  addu       $a3, $zero, $zero
    /* 14104 8019D07C 1980013C */  lui        $at, %hi(D_80189FB8)
    /* 14108 8019D080 21082800 */  addu       $at, $at, $t0
    /* 1410C 8019D084 B89F3080 */  lb         $s0, %lo(D_80189FB8)($at)
    /* 14110 8019D088 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 14114 8019D08C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 14118 8019D090 1C00B7AF */  sw         $s7, 0x1C($sp)
    /* 1411C 8019D094 2000B7AF */  sw         $s7, 0x20($sp)
    /* 14120 8019D098 2C00B2AF */  sw         $s2, 0x2C($sp)
    /* 14124 8019D09C 3000B2AF */  sw         $s2, 0x30($sp)
    /* 14128 8019D0A0 3400B2AF */  sw         $s2, 0x34($sp)
    /* 1412C 8019D0A4 3800A0AF */  sw         $zero, 0x38($sp)
    /* 14130 8019D0A8 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 14134 8019D0AC 4000B5AF */  sw         $s5, 0x40($sp)
    /* 14138 8019D0B0 ED4F060C */  jal        func_80193FB4
    /* 1413C 8019D0B4 1000B0AF */   sw        $s0, 0x10($sp)
    /* 14140 8019D0B8 2579060C */  jal        func_8019E494
    /* 14144 8019D0BC 21202002 */   addu      $a0, $s1, $zero
    /* 14148 8019D0C0 19000424 */  addiu      $a0, $zero, 0x19
    /* 1414C 8019D0C4 22300524 */  addiu      $a1, $zero, 0x3022
    /* 14150 8019D0C8 21300000 */  addu       $a2, $zero, $zero
    /* 14154 8019D0CC 21380000 */  addu       $a3, $zero, $zero
    /* 14158 8019D0D0 18000824 */  addiu      $t0, $zero, 0x18
    /* 1415C 8019D0D4 1400A8AF */  sw         $t0, 0x14($sp)
    /* 14160 8019D0D8 A8FF0824 */  addiu      $t0, $zero, -0x58
    /* 14164 8019D0DC 2400A8AF */  sw         $t0, 0x24($sp)
    /* 14168 8019D0E0 DFFF0824 */  addiu      $t0, $zero, -0x21
    /* 1416C 8019D0E4 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 14170 8019D0E8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 14174 8019D0EC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 14178 8019D0F0 1C00B7AF */  sw         $s7, 0x1C($sp)
    /* 1417C 8019D0F4 2000B7AF */  sw         $s7, 0x20($sp)
    /* 14180 8019D0F8 2800A8AF */  sw         $t0, 0x28($sp)
    /* 14184 8019D0FC 2C00B2AF */  sw         $s2, 0x2C($sp)
    /* 14188 8019D100 3000B2AF */  sw         $s2, 0x30($sp)
    /* 1418C 8019D104 3400B2AF */  sw         $s2, 0x34($sp)
    /* 14190 8019D108 3800A0AF */  sw         $zero, 0x38($sp)
    /* 14194 8019D10C 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 14198 8019D110 ED4F060C */  jal        func_80193FB4
    /* 1419C 8019D114 4000B5AF */   sw        $s5, 0x40($sp)
  .L8019D118:
    /* 141A0 8019D118 1E80043C */  lui        $a0, %hi(D_801D8C67)
    /* 141A4 8019D11C 678C8490 */  lbu        $a0, %lo(D_801D8C67)($a0)
    /* 141A8 8019D120 1579060C */  jal        func_8019E454
    /* 141AC 8019D124 01000524 */   addiu     $a1, $zero, 0x1
    /* 141B0 8019D128 5000B593 */  lbu        $s5, 0x50($sp)
    /* 141B4 8019D12C FFFF5030 */  andi       $s0, $v0, 0xFFFF
    /* 141B8 8019D130 2579060C */  jal        func_8019E494
    /* 141BC 8019D134 2120A002 */   addu      $a0, $s5, $zero
    /* 141C0 8019D138 1A000424 */  addiu      $a0, $zero, 0x1A
    /* 141C4 8019D13C 21280002 */  addu       $a1, $s0, $zero
    /* 141C8 8019D140 21300000 */  addu       $a2, $zero, $zero
    /* 141CC 8019D144 21380000 */  addu       $a3, $zero, $zero
    /* 141D0 8019D148 18001324 */  addiu      $s3, $zero, 0x18
    /* 141D4 8019D14C A8FF1624 */  addiu      $s6, $zero, -0x58
    /* 141D8 8019D150 DFFF1424 */  addiu      $s4, $zero, -0x21
    /* 141DC 8019D154 5000A88F */  lw         $t0, 0x50($sp)
    /* 141E0 8019D158 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 141E4 8019D15C 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 141E8 8019D160 40100800 */  sll        $v0, $t0, 1
    /* 141EC 8019D164 1980013C */  lui        $at, %hi(D_80189FB8)
    /* 141F0 8019D168 21082800 */  addu       $at, $at, $t0
    /* 141F4 8019D16C B89F3180 */  lb         $s1, %lo(D_80189FB8)($at)
    /* 141F8 8019D170 1980013C */  lui        $at, %hi(D_80189F78)
    /* 141FC 8019D174 21082200 */  addu       $at, $at, $v0
    /* 14200 8019D178 789F3094 */  lhu        $s0, %lo(D_80189F78)($at)
    /* 14204 8019D17C 01001224 */  addiu      $s2, $zero, 0x1
    /* 14208 8019D180 1400B3AF */  sw         $s3, 0x14($sp)
    /* 1420C 8019D184 1800A0AF */  sw         $zero, 0x18($sp)
    /* 14210 8019D188 2400B6AF */  sw         $s6, 0x24($sp)
    /* 14214 8019D18C 2800B4AF */  sw         $s4, 0x28($sp)
    /* 14218 8019D190 2C00BEAF */  sw         $fp, 0x2C($sp)
    /* 1421C 8019D194 3000BEAF */  sw         $fp, 0x30($sp)
    /* 14220 8019D198 3400BEAF */  sw         $fp, 0x34($sp)
    /* 14224 8019D19C 3800A0AF */  sw         $zero, 0x38($sp)
    /* 14228 8019D1A0 4000B2AF */  sw         $s2, 0x40($sp)
    /* 1422C 8019D1A4 1000B1AF */  sw         $s1, 0x10($sp)
    /* 14230 8019D1A8 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 14234 8019D1AC ED4F060C */  jal        func_80193FB4
    /* 14238 8019D1B0 2000B0AF */   sw        $s0, 0x20($sp)
    /* 1423C 8019D1B4 2579060C */  jal        func_8019E494
    /* 14240 8019D1B8 2120A002 */   addu      $a0, $s5, $zero
    /* 14244 8019D1BC 1B000424 */  addiu      $a0, $zero, 0x1B
    /* 14248 8019D1C0 22300524 */  addiu      $a1, $zero, 0x3022
    /* 1424C 8019D1C4 21300000 */  addu       $a2, $zero, $zero
    /* 14250 8019D1C8 21380000 */  addu       $a3, $zero, $zero
    /* 14254 8019D1CC FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 14258 8019D1D0 1000B1AF */  sw         $s1, 0x10($sp)
    /* 1425C 8019D1D4 1400B3AF */  sw         $s3, 0x14($sp)
    /* 14260 8019D1D8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 14264 8019D1DC 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 14268 8019D1E0 2000B0AF */  sw         $s0, 0x20($sp)
    /* 1426C 8019D1E4 2400B6AF */  sw         $s6, 0x24($sp)
    /* 14270 8019D1E8 2800B4AF */  sw         $s4, 0x28($sp)
    /* 14274 8019D1EC 2C00BEAF */  sw         $fp, 0x2C($sp)
    /* 14278 8019D1F0 3000BEAF */  sw         $fp, 0x30($sp)
    /* 1427C 8019D1F4 3400BEAF */  sw         $fp, 0x34($sp)
    /* 14280 8019D1F8 3800A0AF */  sw         $zero, 0x38($sp)
    /* 14284 8019D1FC 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 14288 8019D200 ED4F060C */  jal        func_80193FB4
    /* 1428C 8019D204 4000B2AF */   sw        $s2, 0x40($sp)
    /* 14290 8019D208 9400BF8F */  lw         $ra, 0x94($sp)
    /* 14294 8019D20C 9000BE8F */  lw         $fp, 0x90($sp)
    /* 14298 8019D210 8C00B78F */  lw         $s7, 0x8C($sp)
    /* 1429C 8019D214 8800B68F */  lw         $s6, 0x88($sp)
    /* 142A0 8019D218 8400B58F */  lw         $s5, 0x84($sp)
    /* 142A4 8019D21C 8000B48F */  lw         $s4, 0x80($sp)
    /* 142A8 8019D220 7C00B38F */  lw         $s3, 0x7C($sp)
    /* 142AC 8019D224 7800B28F */  lw         $s2, 0x78($sp)
    /* 142B0 8019D228 7400B18F */  lw         $s1, 0x74($sp)
    /* 142B4 8019D22C 7000B08F */  lw         $s0, 0x70($sp)
    /* 142B8 8019D230 9800BD27 */  addiu      $sp, $sp, 0x98
    /* 142BC 8019D234 0800E003 */  jr         $ra
    /* 142C0 8019D238 00000000 */   nop
endlabel func_8019CD0C
