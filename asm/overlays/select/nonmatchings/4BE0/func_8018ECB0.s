nonmatching func_8018ECB0, 0x4D8

glabel func_8018ECB0
    /* 5D38 8018ECB0 60FFBD27 */  addiu      $sp, $sp, -0xA0
    /* 5D3C 8018ECB4 8000B2AF */  sw         $s2, 0x80($sp)
    /* 5D40 8018ECB8 21908000 */  addu       $s2, $a0, $zero
    /* 5D44 8018ECBC 7800B0AF */  sw         $s0, 0x78($sp)
    /* 5D48 8018ECC0 FF005032 */  andi       $s0, $s2, 0xFF
    /* 5D4C 8018ECC4 40281000 */  sll        $a1, $s0, 1
    /* 5D50 8018ECC8 9C00BFAF */  sw         $ra, 0x9C($sp)
    /* 5D54 8018ECCC 9800BEAF */  sw         $fp, 0x98($sp)
    /* 5D58 8018ECD0 9400B7AF */  sw         $s7, 0x94($sp)
    /* 5D5C 8018ECD4 9000B6AF */  sw         $s6, 0x90($sp)
    /* 5D60 8018ECD8 8C00B5AF */  sw         $s5, 0x8C($sp)
    /* 5D64 8018ECDC 8800B4AF */  sw         $s4, 0x88($sp)
    /* 5D68 8018ECE0 8400B3AF */  sw         $s3, 0x84($sp)
    /* 5D6C 8018ECE4 7C00B1AF */  sw         $s1, 0x7C($sp)
    /* 5D70 8018ECE8 1D80013C */  lui        $at, %hi(D_801D1AAC)
    /* 5D74 8018ECEC 21083000 */  addu       $at, $at, $s0
    /* 5D78 8018ECF0 AC1A2390 */  lbu        $v1, %lo(D_801D1AAC)($at)
    /* 5D7C 8018ECF4 1D80013C */  lui        $at, %hi(D_801D1ABC)
    /* 5D80 8018ECF8 21083000 */  addu       $at, $at, $s0
    /* 5D84 8018ECFC BC1A2290 */  lbu        $v0, %lo(D_801D1ABC)($at)
    /* 5D88 8018ED00 001E0300 */  sll        $v1, $v1, 24
    /* 5D8C 8018ED04 031E0300 */  sra        $v1, $v1, 24
    /* 5D90 8018ED08 00160200 */  sll        $v0, $v0, 24
    /* 5D94 8018ED0C 03160200 */  sra        $v0, $v0, 24
    /* 5D98 8018ED10 5000A3A7 */  sh         $v1, 0x50($sp)
    /* 5D9C 8018ED14 C0181000 */  sll        $v1, $s0, 3
    /* 5DA0 8018ED18 6800A2A7 */  sh         $v0, 0x68($sp)
    /* 5DA4 8018ED1C 1D80013C */  lui        $at, %hi(D_801D1A6E)
    /* 5DA8 8018ED20 21082300 */  addu       $at, $at, $v1
    /* 5DAC 8018ED24 6E1A3184 */  lh         $s1, %lo(D_801D1A6E)($at)
    /* 5DB0 8018ED28 1D80013C */  lui        $at, %hi(D_801D1A6A)
    /* 5DB4 8018ED2C 21082300 */  addu       $at, $at, $v1
    /* 5DB8 8018ED30 6A1A3384 */  lh         $s3, %lo(D_801D1A6A)($at)
    /* 5DBC 8018ED34 42101100 */  srl        $v0, $s1, 1
    /* 5DC0 8018ED38 21106202 */  addu       $v0, $s3, $v0
    /* 5DC4 8018ED3C 4800A2AF */  sw         $v0, 0x48($sp)
    /* 5DC8 8018ED40 1D80013C */  lui        $at, %hi(D_801D1A98)
    /* 5DCC 8018ED44 21082500 */  addu       $at, $at, $a1
    /* 5DD0 8018ED48 981A2890 */  lbu        $t0, %lo(D_801D1A98)($at)
    /* 5DD4 8018ED4C 1D80013C */  lui        $at, %hi(D_801D1A68)
    /* 5DD8 8018ED50 21082300 */  addu       $at, $at, $v1
    /* 5DDC 8018ED54 681A3584 */  lh         $s5, %lo(D_801D1A68)($at)
    /* 5DE0 8018ED58 1D80013C */  lui        $at, %hi(D_801D1A6C)
    /* 5DE4 8018ED5C 21082300 */  addu       $at, $at, $v1
    /* 5DE8 8018ED60 6C1A3684 */  lh         $s6, %lo(D_801D1A6C)($at)
    /* 5DEC 8018ED64 1D80013C */  lui        $at, %hi(D_801D1AA4)
    /* 5DF0 8018ED68 21083000 */  addu       $at, $at, $s0
    /* 5DF4 8018ED6C A41A3790 */  lbu        $s7, %lo(D_801D1AA4)($at)
    /* 5DF8 8018ED70 5800A8A3 */  sb         $t0, 0x58($sp)
    /* 5DFC 8018ED74 1D80013C */  lui        $at, %hi(D_801D1A99)
    /* 5E00 8018ED78 21082500 */  addu       $at, $at, $a1
    /* 5E04 8018ED7C 991A2590 */  lbu        $a1, %lo(D_801D1A99)($at)
    /* 5E08 8018ED80 18001E24 */  addiu      $fp, $zero, 0x18
    /* 5E0C 8018ED84 6000A5A3 */  sb         $a1, 0x60($sp)
    /* 5E10 8018ED88 1D80013C */  lui        $at, %hi(D_801D1AC4)
    /* 5E14 8018ED8C 21083000 */  addu       $at, $at, $s0
    /* 5E18 8018ED90 C41A2890 */  lbu        $t0, %lo(D_801D1AC4)($at)
    /* 5E1C 8018ED94 36000424 */  addiu      $a0, $zero, 0x36
    /* 5E20 8018ED98 3FBF010C */  jal        func_8006FCFC
    /* 5E24 8018ED9C 7000A8A3 */   sb        $t0, 0x70($sp)
    /* 5E28 8018EDA0 1080143C */  lui        $s4, %hi(D_800FF748)
    /* 5E2C 8018EDA4 48F79426 */  addiu      $s4, $s4, %lo(D_800FF748)
    /* 5E30 8018EDA8 05000224 */  addiu      $v0, $zero, 0x5
    /* 5E34 8018EDAC 02000216 */  bne        $s0, $v0, .L8018EDB8
    /* 5E38 8018EDB0 00000000 */   nop
    /* 5E3C 8018EDB4 16001E24 */  addiu      $fp, $zero, 0x16
  .L8018EDB8:
    /* 5E40 8018EDB8 1180033C */  lui        $v1, %hi(D_8010A320)
    /* 5E44 8018EDBC 20A36390 */  lbu        $v1, %lo(D_8010A320)($v1)
    /* 5E48 8018EDC0 00000000 */  nop
    /* 5E4C 8018EDC4 FF006430 */  andi       $a0, $v1, 0xFF
    /* 5E50 8018EDC8 0B00822C */  sltiu      $v0, $a0, 0xB
    /* 5E54 8018EDCC E0004010 */  beqz       $v0, .L8018F150
    /* 5E58 8018EDD0 80100400 */   sll       $v0, $a0, 2
    /* 5E5C 8018EDD4 1980013C */  lui        $at, %hi(jtbl_80188FAC)
    /* 5E60 8018EDD8 21082200 */  addu       $at, $at, $v0
    /* 5E64 8018EDDC AC8F228C */  lw         $v0, %lo(jtbl_80188FAC)($at)
    /* 5E68 8018EDE0 00000000 */  nop
    /* 5E6C 8018EDE4 08004000 */  jr         $v0
    /* 5E70 8018EDE8 00000000 */   nop
  jlabel .L8018EDEC
    /* 5E74 8018EDEC 02111100 */  srl        $v0, $s1, 4
    /* 5E78 8018EDF0 01006324 */  addiu      $v1, $v1, 0x1
    /* 5E7C 8018EDF4 18004300 */  mult       $v0, $v1
    /* 5E80 8018EDF8 02000424 */  addiu      $a0, $zero, 0x2
    /* 5E84 8018EDFC 21280000 */  addu       $a1, $zero, $zero
    /* 5E88 8018EE00 12380000 */  mflo       $a3
    /* 5E8C 8018EE04 C2101100 */  srl        $v0, $s1, 3
    /* 5E90 8018EE08 4800A88F */  lw         $t0, 0x48($sp)
    /* 5E94 8018EE0C 18004300 */  mult       $v0, $v1
    /* 5E98 8018EE10 2130A002 */  addu       $a2, $s5, $zero
    /* 5E9C 8018EE14 1000B6AF */  sw         $s6, 0x10($sp)
    /* 5EA0 8018EE18 1800A0AF */  sw         $zero, 0x18($sp)
    /* 5EA4 8018EE1C 30000224 */  addiu      $v0, $zero, 0x30
    /* 5EA8 8018EE20 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 5EAC 8018EE24 80000224 */  addiu      $v0, $zero, 0x80
    /* 5EB0 8018EE28 2000A2AF */  sw         $v0, 0x20($sp)
    /* 5EB4 8018EE2C 01000224 */  addiu      $v0, $zero, 0x1
    /* 5EB8 8018EE30 23380701 */  subu       $a3, $t0, $a3
    /* 5EBC 8018EE34 2400A2AF */  sw         $v0, 0x24($sp)
    /* 5EC0 8018EE38 2800A2AF */  sw         $v0, 0x28($sp)
    /* 5EC4 8018EE3C 12180000 */  mflo       $v1
    /* 5EC8 8018EE40 3B50060C */  jal        func_801940EC
    /* 5ECC 8018EE44 1400A3AF */   sw        $v1, 0x14($sp)
    /* 5ED0 8018EE48 0100013C */  lui        $at, (0x10000 >> 16)
    /* 5ED4 8018EE4C 21088102 */  addu       $at, $s4, $at
    /* 5ED8 8018EE50 D8AB2290 */  lbu        $v0, -0x5428($at)
    /* 5EDC 8018EE54 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 5EE0 8018EE58 38D620A4 */  sh         $zero, %lo(D_800AD638)($at)
    /* 5EE4 8018EE5C 1C3C0608 */  j          .L8018F070
    /* 5EE8 8018EE60 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L8018EE64
    /* 5EEC 8018EE64 02000424 */  addiu      $a0, $zero, 0x2
    /* 5EF0 8018EE68 21280000 */  addu       $a1, $zero, $zero
    /* 5EF4 8018EE6C 2130A002 */  addu       $a2, $s5, $zero
    /* 5EF8 8018EE70 21386002 */  addu       $a3, $s3, $zero
    /* 5EFC 8018EE74 30000224 */  addiu      $v0, $zero, 0x30
    /* 5F00 8018EE78 80001024 */  addiu      $s0, $zero, 0x80
    /* 5F04 8018EE7C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5F08 8018EE80 01001124 */  addiu      $s1, $zero, 0x1
    /* 5F0C 8018EE84 1000B6AF */  sw         $s6, 0x10($sp)
    /* 5F10 8018EE88 1800A0AF */  sw         $zero, 0x18($sp)
    /* 5F14 8018EE8C 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 5F18 8018EE90 2000B0AF */  sw         $s0, 0x20($sp)
    /* 5F1C 8018EE94 2400A0AF */  sw         $zero, 0x24($sp)
    /* 5F20 8018EE98 3B50060C */  jal        func_801940EC
    /* 5F24 8018EE9C 2800B1AF */   sw        $s1, 0x28($sp)
    /* 5F28 8018EEA0 21200000 */  addu       $a0, $zero, $zero
    /* 5F2C 8018EEA4 FF004232 */  andi       $v0, $s2, 0xFF
    /* 5F30 8018EEA8 6800A897 */  lhu        $t0, 0x68($sp)
    /* 5F34 8018EEAC 1D80013C */  lui        $at, %hi(D_801D1AB4)
    /* 5F38 8018EEB0 21082200 */  addu       $at, $at, $v0
    /* 5F3C 8018EEB4 B41A2680 */  lb         $a2, %lo(D_801D1AB4)($at)
    /* 5F40 8018EEB8 003C0800 */  sll        $a3, $t0, 16
    /* 5F44 8018EEBC 6000A893 */  lbu        $t0, 0x60($sp)
    /* 5F48 8018EEC0 B4000224 */  addiu      $v0, $zero, 0xB4
    /* 5F4C 8018EEC4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 5F50 8018EEC8 2400A8AF */  sw         $t0, 0x24($sp)
    /* 5F54 8018EECC 5800A893 */  lbu        $t0, 0x58($sp)
    /* 5F58 8018EED0 03000224 */  addiu      $v0, $zero, 0x3
    /* 5F5C 8018EED4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 5F60 8018EED8 1800B1AF */  sw         $s1, 0x18($sp)
    /* 5F64 8018EEDC 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 5F68 8018EEE0 2000A0AF */  sw         $zero, 0x20($sp)
    /* 5F6C 8018EEE4 2800A0AF */  sw         $zero, 0x28($sp)
    /* 5F70 8018EEE8 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 5F74 8018EEEC 80100800 */  sll        $v0, $t0, 2
    /* 5F78 8018EEF0 1280013C */  lui        $at, %hi(D_8011D5F4)
    /* 5F7C 8018EEF4 21082200 */  addu       $at, $at, $v0
    /* 5F80 8018EEF8 F4D5258C */  lw         $a1, %lo(D_8011D5F4)($at)
    /* 5F84 8018EEFC B850060C */  jal        func_801942E0
    /* 5F88 8018EF00 033C0700 */   sra       $a3, $a3, 16
    /* 5F8C 8018EF04 03000424 */  addiu      $a0, $zero, 0x3
    /* 5F90 8018EF08 76300524 */  addiu      $a1, $zero, 0x3076
    /* 5F94 8018EF0C 21300000 */  addu       $a2, $zero, $zero
    /* 5F98 8018EF10 21380000 */  addu       $a3, $zero, $zero
    /* 5F9C 8018EF14 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 5FA0 8018EF18 38D66394 */  lhu        $v1, %lo(D_800AD638)($v1)
    /* 5FA4 8018EF1C 5000A897 */  lhu        $t0, 0x50($sp)
    /* 5FA8 8018EF20 18000224 */  addiu      $v0, $zero, 0x18
    /* 5FAC 8018EF24 1400A2AF */  sw         $v0, 0x14($sp)
    /* 5FB0 8018EF28 00100224 */  addiu      $v0, $zero, 0x1000
    /* 5FB4 8018EF2C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 5FB8 8018EF30 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 5FBC 8018EF34 1800C303 */  mult       $fp, $v1
    /* 5FC0 8018EF38 2000A2AF */  sw         $v0, 0x20($sp)
    /* 5FC4 8018EF3C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 5FC8 8018EF40 2800A0AF */  sw         $zero, 0x28($sp)
    /* 5FCC 8018EF44 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 5FD0 8018EF48 3000B0AF */  sw         $s0, 0x30($sp)
    /* 5FD4 8018EF4C 3400B0AF */  sw         $s0, 0x34($sp)
    /* 5FD8 8018EF50 3800A0AF */  sw         $zero, 0x38($sp)
    /* 5FDC 8018EF54 3C00A0AF */  sw         $zero, 0x3C($sp)
    /* 5FE0 8018EF58 4000B1AF */  sw         $s1, 0x40($sp)
    /* 5FE4 8018EF5C 00140800 */  sll        $v0, $t0, 16
    /* 5FE8 8018EF60 03140200 */  sra        $v0, $v0, 16
    /* 5FEC 8018EF64 12400000 */  mflo       $t0
    /* 5FF0 8018EF68 21104800 */  addu       $v0, $v0, $t0
    /* 5FF4 8018EF6C ED4F060C */  jal        func_80193FB4
    /* 5FF8 8018EF70 1000A2AF */   sw        $v0, 0x10($sp)
    /* 5FFC 8018EF74 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6000 8018EF78 21088102 */  addu       $at, $s4, $at
    /* 6004 8018EF7C D8AB2290 */  lbu        $v0, -0x5428($at)
    /* 6008 8018EF80 1C3C0608 */  j          .L8018F070
    /* 600C 8018EF84 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L8018EF88
    /* 6010 8018EF88 20BB010C */  jal        func_8006EC80
    /* 6014 8018EF8C 21200000 */   addu      $a0, $zero, $zero
    /* 6018 8018EF90 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 601C 8018EF94 A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 6020 8018EF98 FFFF4330 */  andi       $v1, $v0, 0xFFFF
    /* 6024 8018EF9C 00101024 */  addiu      $s0, $zero, 0x1000
    /* 6028 8018EFA0 03007010 */  beq        $v1, $s0, .L8018EFB0
    /* 602C 8018EFA4 00400224 */   addiu     $v0, $zero, 0x4000
    /* 6030 8018EFA8 16006214 */  bne        $v1, $v0, .L8018F004
    /* 6034 8018EFAC 00000000 */   nop
  .L8018EFB0:
    /* 6038 8018EFB0 88AD020C */  jal        func_800AB620
    /* 603C 8018EFB4 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 6040 8018EFB8 1180043C */  lui        $a0, %hi(D_8010A5A4)
    /* 6044 8018EFBC A4A58494 */  lhu        $a0, %lo(D_8010A5A4)($a0)
    /* 6048 8018EFC0 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 604C 8018EFC4 38D66394 */  lhu        $v1, %lo(D_800AD638)($v1)
    /* 6050 8018EFC8 08009010 */  beq        $a0, $s0, .L8018EFEC
    /* 6054 8018EFCC FFFFE526 */   addiu     $a1, $s7, -0x1
    /* 6058 8018EFD0 00400224 */  addiu      $v0, $zero, 0x4000
    /* 605C 8018EFD4 09008214 */  bne        $a0, $v0, .L8018EFFC
    /* 6060 8018EFD8 00000000 */   nop
    /* 6064 8018EFDC 06006510 */  beq        $v1, $a1, .L8018EFF8
    /* 6068 8018EFE0 21100000 */   addu      $v0, $zero, $zero
    /* 606C 8018EFE4 FE3B0608 */  j          .L8018EFF8
    /* 6070 8018EFE8 01006224 */   addiu     $v0, $v1, 0x1
  .L8018EFEC:
    /* 6074 8018EFEC 02006014 */  bnez       $v1, .L8018EFF8
    /* 6078 8018EFF0 FFFF6224 */   addiu     $v0, $v1, -0x1
    /* 607C 8018EFF4 2110A000 */  addu       $v0, $a1, $zero
  .L8018EFF8:
    /* 6080 8018EFF8 21184000 */  addu       $v1, $v0, $zero
  .L8018EFFC:
    /* 6084 8018EFFC 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 6088 8018F000 38D623A4 */  sh         $v1, %lo(D_800AD638)($at)
  .L8018F004:
    /* 608C 8018F004 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 6090 8018F008 A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 6094 8018F00C 20000224 */  addiu      $v0, $zero, 0x20
    /* 6098 8018F010 08006214 */  bne        $v1, $v0, .L8018F034
    /* 609C 8018F014 40000224 */   addiu     $v0, $zero, 0x40
    /* 60A0 8018F018 88AD020C */  jal        func_800AB620
    /* 60A4 8018F01C 28050424 */   addiu     $a0, $zero, 0x528
    /* 60A8 8018F020 0100013C */  lui        $at, (0x10000 >> 16)
    /* 60AC 8018F024 21088102 */  addu       $at, $s4, $at
    /* 60B0 8018F028 D8AB2290 */  lbu        $v0, -0x5428($at)
    /* 60B4 8018F02C 193C0608 */  j          .L8018F064
    /* 60B8 8018F030 02000324 */   addiu     $v1, $zero, 0x2
  .L8018F034:
    /* 60BC 8018F034 13006214 */  bne        $v1, $v0, .L8018F084
    /* 60C0 8018F038 03000424 */   addiu     $a0, $zero, 0x3
    /* 60C4 8018F03C 7000A893 */  lbu        $t0, 0x70($sp)
    /* 60C8 8018F040 00000000 */  nop
    /* 60CC 8018F044 43000015 */  bnez       $t0, .L8018F154
    /* 60D0 8018F048 21100000 */   addu      $v0, $zero, $zero
    /* 60D4 8018F04C 88AD020C */  jal        func_800AB620
    /* 60D8 8018F050 29050424 */   addiu     $a0, $zero, 0x529
    /* 60DC 8018F054 0100013C */  lui        $at, (0x10000 >> 16)
    /* 60E0 8018F058 21088102 */  addu       $at, $s4, $at
    /* 60E4 8018F05C D8AB2290 */  lbu        $v0, -0x5428($at)
    /* 60E8 8018F060 01000324 */  addiu      $v1, $zero, 0x1
  .L8018F064:
    /* 60EC 8018F064 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 60F0 8018F068 50AE23A0 */  sb         $v1, %lo(D_801DAE50)($at)
    /* 60F4 8018F06C 01004224 */  addiu      $v0, $v0, 0x1
  .L8018F070:
    /* 60F8 8018F070 0100013C */  lui        $at, (0x10000 >> 16)
    /* 60FC 8018F074 21088102 */  addu       $at, $s4, $at
    /* 6100 8018F078 D8AB22A0 */  sb         $v0, -0x5428($at)
    /* 6104 8018F07C 553C0608 */  j          .L8018F154
    /* 6108 8018F080 21100000 */   addu      $v0, $zero, $zero
  .L8018F084:
    /* 610C 8018F084 76300524 */  addiu      $a1, $zero, 0x3076
    /* 6110 8018F088 21300000 */  addu       $a2, $zero, $zero
    /* 6114 8018F08C 21380000 */  addu       $a3, $zero, $zero
    /* 6118 8018F090 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 611C 8018F094 38D66394 */  lhu        $v1, %lo(D_800AD638)($v1)
    /* 6120 8018F098 5000A897 */  lhu        $t0, 0x50($sp)
    /* 6124 8018F09C 18000224 */  addiu      $v0, $zero, 0x18
    /* 6128 8018F0A0 1400A2AF */  sw         $v0, 0x14($sp)
    /* 612C 8018F0A4 00100224 */  addiu      $v0, $zero, 0x1000
    /* 6130 8018F0A8 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 6134 8018F0AC 2000A2AF */  sw         $v0, 0x20($sp)
    /* 6138 8018F0B0 80000224 */  addiu      $v0, $zero, 0x80
    /* 613C 8018F0B4 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 6140 8018F0B8 1800C303 */  mult       $fp, $v1
    /* 6144 8018F0BC 3000A2AF */  sw         $v0, 0x30($sp)
    /* 6148 8018F0C0 3400A2AF */  sw         $v0, 0x34($sp)
    /* 614C 8018F0C4 01000224 */  addiu      $v0, $zero, 0x1
    /* 6150 8018F0C8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 6154 8018F0CC 2400A0AF */  sw         $zero, 0x24($sp)
    /* 6158 8018F0D0 2800A0AF */  sw         $zero, 0x28($sp)
    /* 615C 8018F0D4 3800A0AF */  sw         $zero, 0x38($sp)
    /* 6160 8018F0D8 3C00A0AF */  sw         $zero, 0x3C($sp)
    /* 6164 8018F0DC 4000A2AF */  sw         $v0, 0x40($sp)
    /* 6168 8018F0E0 00140800 */  sll        $v0, $t0, 16
    /* 616C 8018F0E4 03140200 */  sra        $v0, $v0, 16
    /* 6170 8018F0E8 12400000 */  mflo       $t0
    /* 6174 8018F0EC 21104800 */  addu       $v0, $v0, $t0
    /* 6178 8018F0F0 ED4F060C */  jal        func_80193FB4
    /* 617C 8018F0F4 1000A2AF */   sw        $v0, 0x10($sp)
    /* 6180 8018F0F8 553C0608 */  j          .L8018F154
    /* 6184 8018F0FC 21100000 */   addu      $v0, $zero, $zero
  jlabel .L8018F100
    /* 6188 8018F100 FF004232 */  andi       $v0, $s2, 0xFF
    /* 618C 8018F104 0200422C */  sltiu      $v0, $v0, 0x2
    /* 6190 8018F108 0A004014 */  bnez       $v0, .L8018F134
    /* 6194 8018F10C 3C5E80A2 */   sb        $zero, 0x5E3C($s4)
    /* 6198 8018F110 FDFF4226 */  addiu      $v0, $s2, -0x3
    /* 619C 8018F114 FF004230 */  andi       $v0, $v0, 0xFF
    /* 61A0 8018F118 0200422C */  sltiu      $v0, $v0, 0x2
    /* 61A4 8018F11C 05004014 */  bnez       $v0, .L8018F134
    /* 61A8 8018F120 00000000 */   nop
    /* 61AC 8018F124 1E80013C */  lui        $at, %hi(D_801D92DB)
    /* 61B0 8018F128 DB9220A0 */  sb         $zero, %lo(D_801D92DB)($at)
    /* 61B4 8018F12C 1E80013C */  lui        $at, %hi(D_801D8FA0)
    /* 61B8 8018F130 A08F20A0 */  sb         $zero, %lo(D_801D8FA0)($at)
  .L8018F134:
    /* 61BC 8018F134 1E80023C */  lui        $v0, %hi(D_801DAE50)
    /* 61C0 8018F138 50AE4290 */  lbu        $v0, %lo(D_801DAE50)($v0)
    /* 61C4 8018F13C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 61C8 8018F140 21088102 */  addu       $at, $s4, $at
    /* 61CC 8018F144 D8AB20A0 */  sb         $zero, -0x5428($at)
    /* 61D0 8018F148 553C0608 */  j          .L8018F154
    /* 61D4 8018F14C 00000000 */   nop
  .L8018F150:
    /* 61D8 8018F150 21100000 */  addu       $v0, $zero, $zero
  .L8018F154:
    /* 61DC 8018F154 9C00BF8F */  lw         $ra, 0x9C($sp)
    /* 61E0 8018F158 9800BE8F */  lw         $fp, 0x98($sp)
    /* 61E4 8018F15C 9400B78F */  lw         $s7, 0x94($sp)
    /* 61E8 8018F160 9000B68F */  lw         $s6, 0x90($sp)
    /* 61EC 8018F164 8C00B58F */  lw         $s5, 0x8C($sp)
    /* 61F0 8018F168 8800B48F */  lw         $s4, 0x88($sp)
    /* 61F4 8018F16C 8400B38F */  lw         $s3, 0x84($sp)
    /* 61F8 8018F170 8000B28F */  lw         $s2, 0x80($sp)
    /* 61FC 8018F174 7C00B18F */  lw         $s1, 0x7C($sp)
    /* 6200 8018F178 7800B08F */  lw         $s0, 0x78($sp)
    /* 6204 8018F17C A000BD27 */  addiu      $sp, $sp, 0xA0
    /* 6208 8018F180 0800E003 */  jr         $ra
    /* 620C 8018F184 00000000 */   nop
endlabel func_8018ECB0
