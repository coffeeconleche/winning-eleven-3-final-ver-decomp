nonmatching func_801C59C4, 0x514

glabel func_801C59C4
    /* 3CA4C 801C59C4 1D80023C */  lui        $v0, %hi(D_801D5A48)
    /* 3CA50 801C59C8 485A428C */  lw         $v0, %lo(D_801D5A48)($v0)
    /* 3CA54 801C59CC B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 3CA58 801C59D0 4800BFAF */  sw         $ra, 0x48($sp)
    /* 3CA5C 801C59D4 4400B5AF */  sw         $s5, 0x44($sp)
    /* 3CA60 801C59D8 4000B4AF */  sw         $s4, 0x40($sp)
    /* 3CA64 801C59DC 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 3CA68 801C59E0 3800B2AF */  sw         $s2, 0x38($sp)
    /* 3CA6C 801C59E4 3400B1AF */  sw         $s1, 0x34($sp)
    /* 3CA70 801C59E8 31014010 */  beqz       $v0, .L801C5EB0
    /* 3CA74 801C59EC 3000B0AF */   sw        $s0, 0x30($sp)
    /* 3CA78 801C59F0 801F033C */  lui        $v1, (0x1F8002A2 >> 16)
    /* 3CA7C 801C59F4 A2026390 */  lbu        $v1, (0x1F8002A2 & 0xFFFF)($v1)
    /* 3CA80 801C59F8 82000224 */  addiu      $v0, $zero, 0x82
    /* 3CA84 801C59FC 08006214 */  bne        $v1, $v0, .L801C5A20
    /* 3CA88 801C5A00 14000224 */   addiu     $v0, $zero, 0x14
    /* 3CA8C 801C5A04 1180033C */  lui        $v1, %hi(D_8010A322)
    /* 3CA90 801C5A08 22A36390 */  lbu        $v1, %lo(D_8010A322)($v1)
    /* 3CA94 801C5A0C 13000224 */  addiu      $v0, $zero, 0x13
    /* 3CA98 801C5A10 2A006214 */  bne        $v1, $v0, .L801C5ABC
    /* 3CA9C 801C5A14 4A010424 */   addiu     $a0, $zero, 0x14A
    /* 3CAA0 801C5A18 AF160708 */  j          .L801C5ABC
    /* 3CAA4 801C5A1C 82000424 */   addiu     $a0, $zero, 0x82
  .L801C5A20:
    /* 3CAA8 801C5A20 801F033C */  lui        $v1, (0x1F80029A >> 16)
    /* 3CAAC 801C5A24 9A026390 */  lbu        $v1, (0x1F80029A & 0xFFFF)($v1)
    /* 3CAB0 801C5A28 00000000 */  nop
    /* 3CAB4 801C5A2C 08006214 */  bne        $v1, $v0, .L801C5A50
    /* 3CAB8 801C5A30 30000224 */   addiu     $v0, $zero, 0x30
    /* 3CABC 801C5A34 1D80033C */  lui        $v1, %hi(D_801D59A8)
    /* 3CAC0 801C5A38 A8596390 */  lbu        $v1, %lo(D_801D59A8)($v1)
    /* 3CAC4 801C5A3C 01000224 */  addiu      $v0, $zero, 0x1
    /* 3CAC8 801C5A40 1E006214 */  bne        $v1, $v0, .L801C5ABC
    /* 3CACC 801C5A44 98000424 */   addiu     $a0, $zero, 0x98
    /* 3CAD0 801C5A48 AF160708 */  j          .L801C5ABC
    /* 3CAD4 801C5A4C 86000424 */   addiu     $a0, $zero, 0x86
  .L801C5A50:
    /* 3CAD8 801C5A50 08006214 */  bne        $v1, $v0, .L801C5A74
    /* 3CADC 801C5A54 18000224 */   addiu     $v0, $zero, 0x18
    /* 3CAE0 801C5A58 1E80033C */  lui        $v1, %hi(D_801DA055)
    /* 3CAE4 801C5A5C 55A06390 */  lbu        $v1, %lo(D_801DA055)($v1)
    /* 3CAE8 801C5A60 00000000 */  nop
    /* 3CAEC 801C5A64 15006214 */  bne        $v1, $v0, .L801C5ABC
    /* 3CAF0 801C5A68 70010424 */   addiu     $a0, $zero, 0x170
    /* 3CAF4 801C5A6C AF160708 */  j          .L801C5ABC
    /* 3CAF8 801C5A70 98000424 */   addiu     $a0, $zero, 0x98
  .L801C5A74:
    /* 3CAFC 801C5A74 1180033C */  lui        $v1, %hi(D_8010865C)
    /* 3CB00 801C5A78 5C866390 */  lbu        $v1, %lo(D_8010865C)($v1)
    /* 3CB04 801C5A7C 00000000 */  nop
    /* 3CB08 801C5A80 08006230 */  andi       $v0, $v1, 0x8
    /* 3CB0C 801C5A84 0D004014 */  bnez       $v0, .L801C5ABC
    /* 3CB10 801C5A88 70010424 */   addiu     $a0, $zero, 0x170
    /* 3CB14 801C5A8C FF006330 */  andi       $v1, $v1, 0xFF
    /* 3CB18 801C5A90 03000224 */  addiu      $v0, $zero, 0x3
    /* 3CB1C 801C5A94 03006214 */  bne        $v1, $v0, .L801C5AA4
    /* 3CB20 801C5A98 02000224 */   addiu     $v0, $zero, 0x2
    /* 3CB24 801C5A9C AF160708 */  j          .L801C5ABC
    /* 3CB28 801C5AA0 6C010424 */   addiu     $a0, $zero, 0x16C
  .L801C5AA4:
    /* 3CB2C 801C5AA4 03006214 */  bne        $v1, $v0, .L801C5AB4
    /* 3CB30 801C5AA8 01000224 */   addiu     $v0, $zero, 0x1
    /* 3CB34 801C5AAC AF160708 */  j          .L801C5ABC
    /* 3CB38 801C5AB0 56010424 */   addiu     $a0, $zero, 0x156
  .L801C5AB4:
    /* 3CB3C 801C5AB4 FE006214 */  bne        $v1, $v0, .L801C5EB0
    /* 3CB40 801C5AB8 FB000424 */   addiu     $a0, $zero, 0xFB
  .L801C5ABC:
    /* 3CB44 801C5ABC 801F023C */  lui        $v0, (0x1F8002A2 >> 16)
    /* 3CB48 801C5AC0 A2024290 */  lbu        $v0, (0x1F8002A2 & 0xFFFF)($v0)
    /* 3CB4C 801C5AC4 82000324 */  addiu      $v1, $zero, 0x82
    /* 3CB50 801C5AC8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3CB54 801C5ACC 77004314 */  bne        $v0, $v1, .L801C5CAC
    /* 3CB58 801C5AD0 00000000 */   nop
    /* 3CB5C 801C5AD4 1D80033C */  lui        $v1, %hi(D_801D5A48)
    /* 3CB60 801C5AD8 485A638C */  lw         $v1, %lo(D_801D5A48)($v1)
    /* 3CB64 801C5ADC 00000000 */  nop
    /* 3CB68 801C5AE0 40110300 */  sll        $v0, $v1, 5
    /* 3CB6C 801C5AE4 23104300 */  subu       $v0, $v0, $v1
    /* 3CB70 801C5AE8 40100200 */  sll        $v0, $v0, 1
    /* 3CB74 801C5AEC 1A004400 */  div        $zero, $v0, $a0
    /* 3CB78 801C5AF0 02008014 */  bnez       $a0, .L801C5AFC
    /* 3CB7C 801C5AF4 00000000 */   nop
    /* 3CB80 801C5AF8 0D000700 */  break      7
  .L801C5AFC:
    /* 3CB84 801C5AFC FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3CB88 801C5B00 04008114 */  bne        $a0, $at, .L801C5B14
    /* 3CB8C 801C5B04 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3CB90 801C5B08 02004114 */  bne        $v0, $at, .L801C5B14
    /* 3CB94 801C5B0C 00000000 */   nop
    /* 3CB98 801C5B10 0D000600 */  break      6
  .L801C5B14:
    /* 3CB9C 801C5B14 12100000 */  mflo       $v0
    /* 3CBA0 801C5B18 00000000 */  nop
    /* 3CBA4 801C5B1C 19004224 */  addiu      $v0, $v0, 0x19
    /* 3CBA8 801C5B20 21804000 */  addu       $s0, $v0, $zero
    /* 3CBAC 801C5B24 00140200 */  sll        $v0, $v0, 16
    /* 3CBB0 801C5B28 03140200 */  sra        $v0, $v0, 16
    /* 3CBB4 801C5B2C 58004228 */  slti       $v0, $v0, 0x58
    /* 3CBB8 801C5B30 02004014 */  bnez       $v0, .L801C5B3C
    /* 3CBBC 801C5B34 21200000 */   addu      $a0, $zero, $zero
    /* 3CBC0 801C5B38 57001024 */  addiu      $s0, $zero, 0x57
  .L801C5B3C:
    /* 3CBC4 801C5B3C 00841000 */  sll        $s0, $s0, 16
    /* 3CBC8 801C5B40 03841000 */  sra        $s0, $s0, 16
    /* 3CBCC 801C5B44 21280002 */  addu       $a1, $s0, $zero
    /* 3CBD0 801C5B48 11000624 */  addiu      $a2, $zero, 0x11
    /* 3CBD4 801C5B4C 57000724 */  addiu      $a3, $zero, 0x57
    /* 3CBD8 801C5B50 11001124 */  addiu      $s1, $zero, 0x11
    /* 3CBDC 801C5B54 1000B1AF */  sw         $s1, 0x10($sp)
    /* 3CBE0 801C5B58 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3CBE4 801C5B5C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3CBE8 801C5B60 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 3CBEC 801C5B64 1759060C */  jal        func_8019645C
    /* 3CBF0 801C5B68 2000A0AF */   sw        $zero, 0x20($sp)
    /* 3CBF4 801C5B6C 21200000 */  addu       $a0, $zero, $zero
    /* 3CBF8 801C5B70 21280002 */  addu       $a1, $s0, $zero
    /* 3CBFC 801C5B74 12000624 */  addiu      $a2, $zero, 0x12
    /* 3CC00 801C5B78 57000724 */  addiu      $a3, $zero, 0x57
    /* 3CC04 801C5B7C 12001424 */  addiu      $s4, $zero, 0x12
    /* 3CC08 801C5B80 1000B4AF */  sw         $s4, 0x10($sp)
    /* 3CC0C 801C5B84 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3CC10 801C5B88 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3CC14 801C5B8C 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 3CC18 801C5B90 1759060C */  jal        func_8019645C
    /* 3CC1C 801C5B94 2000A0AF */   sw        $zero, 0x20($sp)
    /* 3CC20 801C5B98 21200000 */  addu       $a0, $zero, $zero
    /* 3CC24 801C5B9C 21280002 */  addu       $a1, $s0, $zero
    /* 3CC28 801C5BA0 13000624 */  addiu      $a2, $zero, 0x13
    /* 3CC2C 801C5BA4 57000724 */  addiu      $a3, $zero, 0x57
    /* 3CC30 801C5BA8 13001524 */  addiu      $s5, $zero, 0x13
    /* 3CC34 801C5BAC 1000B5AF */  sw         $s5, 0x10($sp)
    /* 3CC38 801C5BB0 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3CC3C 801C5BB4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3CC40 801C5BB8 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 3CC44 801C5BBC 1759060C */  jal        func_8019645C
    /* 3CC48 801C5BC0 2000A0AF */   sw        $zero, 0x20($sp)
    /* 3CC4C 801C5BC4 21200000 */  addu       $a0, $zero, $zero
    /* 3CC50 801C5BC8 19000524 */  addiu      $a1, $zero, 0x19
    /* 3CC54 801C5BCC 11000624 */  addiu      $a2, $zero, 0x11
    /* 3CC58 801C5BD0 57000724 */  addiu      $a3, $zero, 0x57
    /* 3CC5C 801C5BD4 7F001324 */  addiu      $s3, $zero, 0x7F
    /* 3CC60 801C5BD8 1000B1AF */  sw         $s1, 0x10($sp)
    /* 3CC64 801C5BDC 6F001124 */  addiu      $s1, $zero, 0x6F
    /* 3CC68 801C5BE0 0F001024 */  addiu      $s0, $zero, 0xF
    /* 3CC6C 801C5BE4 2F001224 */  addiu      $s2, $zero, 0x2F
    /* 3CC70 801C5BE8 1400B3AF */  sw         $s3, 0x14($sp)
    /* 3CC74 801C5BEC 1800B1AF */  sw         $s1, 0x18($sp)
    /* 3CC78 801C5BF0 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 3CC7C 801C5BF4 2000B0AF */  sw         $s0, 0x20($sp)
    /* 3CC80 801C5BF8 2400B1AF */  sw         $s1, 0x24($sp)
    /* 3CC84 801C5BFC 2800B2AF */  sw         $s2, 0x28($sp)
    /* 3CC88 801C5C00 9418070C */  jal        func_801C6250
    /* 3CC8C 801C5C04 2C00A0AF */   sw        $zero, 0x2C($sp)
    /* 3CC90 801C5C08 21200000 */  addu       $a0, $zero, $zero
    /* 3CC94 801C5C0C 19000524 */  addiu      $a1, $zero, 0x19
    /* 3CC98 801C5C10 12000624 */  addiu      $a2, $zero, 0x12
    /* 3CC9C 801C5C14 57000724 */  addiu      $a3, $zero, 0x57
    /* 3CCA0 801C5C18 EF000224 */  addiu      $v0, $zero, 0xEF
    /* 3CCA4 801C5C1C DF000324 */  addiu      $v1, $zero, 0xDF
    /* 3CCA8 801C5C20 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3CCAC 801C5C24 3F000224 */  addiu      $v0, $zero, 0x3F
    /* 3CCB0 801C5C28 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 3CCB4 801C5C2C 2000A2AF */  sw         $v0, 0x20($sp)
    /* 3CCB8 801C5C30 9F000224 */  addiu      $v0, $zero, 0x9F
    /* 3CCBC 801C5C34 1000B4AF */  sw         $s4, 0x10($sp)
    /* 3CCC0 801C5C38 1800A3AF */  sw         $v1, 0x18($sp)
    /* 3CCC4 801C5C3C 2400A3AF */  sw         $v1, 0x24($sp)
    /* 3CCC8 801C5C40 2800A2AF */  sw         $v0, 0x28($sp)
    /* 3CCCC 801C5C44 9418070C */  jal        func_801C6250
    /* 3CCD0 801C5C48 2C00A0AF */   sw        $zero, 0x2C($sp)
    /* 3CCD4 801C5C4C 21200000 */  addu       $a0, $zero, $zero
    /* 3CCD8 801C5C50 19000524 */  addiu      $a1, $zero, 0x19
    /* 3CCDC 801C5C54 13000624 */  addiu      $a2, $zero, 0x13
    /* 3CCE0 801C5C58 57000724 */  addiu      $a3, $zero, 0x57
    /* 3CCE4 801C5C5C 1000B5AF */  sw         $s5, 0x10($sp)
    /* 3CCE8 801C5C60 1400B3AF */  sw         $s3, 0x14($sp)
    /* 3CCEC 801C5C64 1800B1AF */  sw         $s1, 0x18($sp)
    /* 3CCF0 801C5C68 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 3CCF4 801C5C6C 2000B0AF */  sw         $s0, 0x20($sp)
    /* 3CCF8 801C5C70 2400B1AF */  sw         $s1, 0x24($sp)
    /* 3CCFC 801C5C74 2800B2AF */  sw         $s2, 0x28($sp)
    /* 3CD00 801C5C78 9418070C */  jal        func_801C6250
    /* 3CD04 801C5C7C 2C00A0AF */   sw        $zero, 0x2C($sp)
    /* 3CD08 801C5C80 21200000 */  addu       $a0, $zero, $zero
    /* 3CD0C 801C5C84 18000524 */  addiu      $a1, $zero, 0x18
    /* 3CD10 801C5C88 10000624 */  addiu      $a2, $zero, 0x10
    /* 3CD14 801C5C8C 40000724 */  addiu      $a3, $zero, 0x40
    /* 3CD18 801C5C90 04000224 */  addiu      $v0, $zero, 0x4
    /* 3CD1C 801C5C94 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3CD20 801C5C98 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 3CD24 801C5C9C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3CD28 801C5CA0 1800A2AF */  sw         $v0, 0x18($sp)
    /* 3CD2C 801C5CA4 AA170708 */  j          .L801C5EA8
    /* 3CD30 801C5CA8 1C00A2AF */   sw        $v0, 0x1C($sp)
  .L801C5CAC:
    /* 3CD34 801C5CAC 1D80033C */  lui        $v1, %hi(D_801D5A48)
    /* 3CD38 801C5CB0 485A638C */  lw         $v1, %lo(D_801D5A48)($v1)
    /* 3CD3C 801C5CB4 00000000 */  nop
    /* 3CD40 801C5CB8 00110300 */  sll        $v0, $v1, 4
    /* 3CD44 801C5CBC 23104300 */  subu       $v0, $v0, $v1
    /* 3CD48 801C5CC0 C0100200 */  sll        $v0, $v0, 3
    /* 3CD4C 801C5CC4 1A004400 */  div        $zero, $v0, $a0
    /* 3CD50 801C5CC8 02008014 */  bnez       $a0, .L801C5CD4
    /* 3CD54 801C5CCC 00000000 */   nop
    /* 3CD58 801C5CD0 0D000700 */  break      7
  .L801C5CD4:
    /* 3CD5C 801C5CD4 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3CD60 801C5CD8 04008114 */  bne        $a0, $at, .L801C5CEC
    /* 3CD64 801C5CDC 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3CD68 801C5CE0 02004114 */  bne        $v0, $at, .L801C5CEC
    /* 3CD6C 801C5CE4 00000000 */   nop
    /* 3CD70 801C5CE8 0D000600 */  break      6
  .L801C5CEC:
    /* 3CD74 801C5CEC 12100000 */  mflo       $v0
    /* 3CD78 801C5CF0 00000000 */  nop
    /* 3CD7C 801C5CF4 C5FF4224 */  addiu      $v0, $v0, -0x3B
    /* 3CD80 801C5CF8 21804000 */  addu       $s0, $v0, $zero
    /* 3CD84 801C5CFC 00140200 */  sll        $v0, $v0, 16
    /* 3CD88 801C5D00 03140200 */  sra        $v0, $v0, 16
    /* 3CD8C 801C5D04 3D004228 */  slti       $v0, $v0, 0x3D
    /* 3CD90 801C5D08 02004014 */  bnez       $v0, .L801C5D14
    /* 3CD94 801C5D0C 21200000 */   addu      $a0, $zero, $zero
    /* 3CD98 801C5D10 3C001024 */  addiu      $s0, $zero, 0x3C
  .L801C5D14:
    /* 3CD9C 801C5D14 00841000 */  sll        $s0, $s0, 16
    /* 3CDA0 801C5D18 03841000 */  sra        $s0, $s0, 16
    /* 3CDA4 801C5D1C 21280002 */  addu       $a1, $s0, $zero
    /* 3CDA8 801C5D20 0E000624 */  addiu      $a2, $zero, 0xE
    /* 3CDAC 801C5D24 3C000724 */  addiu      $a3, $zero, 0x3C
    /* 3CDB0 801C5D28 0E001224 */  addiu      $s2, $zero, 0xE
    /* 3CDB4 801C5D2C 1000B2AF */  sw         $s2, 0x10($sp)
    /* 3CDB8 801C5D30 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3CDBC 801C5D34 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3CDC0 801C5D38 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 3CDC4 801C5D3C 1759060C */  jal        func_8019645C
    /* 3CDC8 801C5D40 2000A0AF */   sw        $zero, 0x20($sp)
    /* 3CDCC 801C5D44 21200000 */  addu       $a0, $zero, $zero
    /* 3CDD0 801C5D48 21280002 */  addu       $a1, $s0, $zero
    /* 3CDD4 801C5D4C 0F000624 */  addiu      $a2, $zero, 0xF
    /* 3CDD8 801C5D50 3C000724 */  addiu      $a3, $zero, 0x3C
    /* 3CDDC 801C5D54 0F001124 */  addiu      $s1, $zero, 0xF
    /* 3CDE0 801C5D58 1000B1AF */  sw         $s1, 0x10($sp)
    /* 3CDE4 801C5D5C 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3CDE8 801C5D60 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3CDEC 801C5D64 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 3CDF0 801C5D68 1759060C */  jal        func_8019645C
    /* 3CDF4 801C5D6C 2000A0AF */   sw        $zero, 0x20($sp)
    /* 3CDF8 801C5D70 21200000 */  addu       $a0, $zero, $zero
    /* 3CDFC 801C5D74 21280002 */  addu       $a1, $s0, $zero
    /* 3CE00 801C5D78 10000624 */  addiu      $a2, $zero, 0x10
    /* 3CE04 801C5D7C 3C000724 */  addiu      $a3, $zero, 0x3C
    /* 3CE08 801C5D80 10001424 */  addiu      $s4, $zero, 0x10
    /* 3CE0C 801C5D84 1000B4AF */  sw         $s4, 0x10($sp)
    /* 3CE10 801C5D88 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3CE14 801C5D8C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3CE18 801C5D90 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 3CE1C 801C5D94 1759060C */  jal        func_8019645C
    /* 3CE20 801C5D98 2000A0AF */   sw        $zero, 0x20($sp)
    /* 3CE24 801C5D9C 21200000 */  addu       $a0, $zero, $zero
    /* 3CE28 801C5DA0 C5FF0524 */  addiu      $a1, $zero, -0x3B
    /* 3CE2C 801C5DA4 0E000624 */  addiu      $a2, $zero, 0xE
    /* 3CE30 801C5DA8 3C000724 */  addiu      $a3, $zero, 0x3C
    /* 3CE34 801C5DAC 1000B2AF */  sw         $s2, 0x10($sp)
    /* 3CE38 801C5DB0 7F001224 */  addiu      $s2, $zero, 0x7F
    /* 3CE3C 801C5DB4 6F001024 */  addiu      $s0, $zero, 0x6F
    /* 3CE40 801C5DB8 2F001324 */  addiu      $s3, $zero, 0x2F
    /* 3CE44 801C5DBC 1400B2AF */  sw         $s2, 0x14($sp)
    /* 3CE48 801C5DC0 1800B0AF */  sw         $s0, 0x18($sp)
    /* 3CE4C 801C5DC4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3CE50 801C5DC8 2000B1AF */  sw         $s1, 0x20($sp)
    /* 3CE54 801C5DCC 2400B0AF */  sw         $s0, 0x24($sp)
    /* 3CE58 801C5DD0 2800B3AF */  sw         $s3, 0x28($sp)
    /* 3CE5C 801C5DD4 9418070C */  jal        func_801C6250
    /* 3CE60 801C5DD8 2C00A0AF */   sw        $zero, 0x2C($sp)
    /* 3CE64 801C5DDC 21200000 */  addu       $a0, $zero, $zero
    /* 3CE68 801C5DE0 C5FF0524 */  addiu      $a1, $zero, -0x3B
    /* 3CE6C 801C5DE4 0F000624 */  addiu      $a2, $zero, 0xF
    /* 3CE70 801C5DE8 3C000724 */  addiu      $a3, $zero, 0x3C
    /* 3CE74 801C5DEC EF000224 */  addiu      $v0, $zero, 0xEF
    /* 3CE78 801C5DF0 DF000324 */  addiu      $v1, $zero, 0xDF
    /* 3CE7C 801C5DF4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3CE80 801C5DF8 3F000224 */  addiu      $v0, $zero, 0x3F
    /* 3CE84 801C5DFC 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 3CE88 801C5E00 2000A2AF */  sw         $v0, 0x20($sp)
    /* 3CE8C 801C5E04 9F000224 */  addiu      $v0, $zero, 0x9F
    /* 3CE90 801C5E08 1000B1AF */  sw         $s1, 0x10($sp)
    /* 3CE94 801C5E0C 1800A3AF */  sw         $v1, 0x18($sp)
    /* 3CE98 801C5E10 2400A3AF */  sw         $v1, 0x24($sp)
    /* 3CE9C 801C5E14 2800A2AF */  sw         $v0, 0x28($sp)
    /* 3CEA0 801C5E18 9418070C */  jal        func_801C6250
    /* 3CEA4 801C5E1C 2C00A0AF */   sw        $zero, 0x2C($sp)
    /* 3CEA8 801C5E20 21200000 */  addu       $a0, $zero, $zero
    /* 3CEAC 801C5E24 C5FF0524 */  addiu      $a1, $zero, -0x3B
    /* 3CEB0 801C5E28 10000624 */  addiu      $a2, $zero, 0x10
    /* 3CEB4 801C5E2C 3C000724 */  addiu      $a3, $zero, 0x3C
    /* 3CEB8 801C5E30 1000B4AF */  sw         $s4, 0x10($sp)
    /* 3CEBC 801C5E34 1400B2AF */  sw         $s2, 0x14($sp)
    /* 3CEC0 801C5E38 1800B0AF */  sw         $s0, 0x18($sp)
    /* 3CEC4 801C5E3C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3CEC8 801C5E40 2000B1AF */  sw         $s1, 0x20($sp)
    /* 3CECC 801C5E44 2400B0AF */  sw         $s0, 0x24($sp)
    /* 3CED0 801C5E48 2800B3AF */  sw         $s3, 0x28($sp)
    /* 3CED4 801C5E4C 9418070C */  jal        func_801C6250
    /* 3CED8 801C5E50 2C00A0AF */   sw        $zero, 0x2C($sp)
    /* 3CEDC 801C5E54 21200000 */  addu       $a0, $zero, $zero
    /* 3CEE0 801C5E58 C3FF0524 */  addiu      $a1, $zero, -0x3D
    /* 3CEE4 801C5E5C 0C000624 */  addiu      $a2, $zero, 0xC
    /* 3CEE8 801C5E60 7B000724 */  addiu      $a3, $zero, 0x7B
    /* 3CEEC 801C5E64 06000224 */  addiu      $v0, $zero, 0x6
    /* 3CEF0 801C5E68 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3CEF4 801C5E6C FF000224 */  addiu      $v0, $zero, 0xFF
    /* 3CEF8 801C5E70 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3CEFC 801C5E74 1800A2AF */  sw         $v0, 0x18($sp)
    /* 3CF00 801C5E78 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 3CF04 801C5E7C 6759060C */  jal        func_8019659C
    /* 3CF08 801C5E80 2000A0AF */   sw        $zero, 0x20($sp)
    /* 3CF0C 801C5E84 21200000 */  addu       $a0, $zero, $zero
    /* 3CF10 801C5E88 C2FF0524 */  addiu      $a1, $zero, -0x3E
    /* 3CF14 801C5E8C 0B000624 */  addiu      $a2, $zero, 0xB
    /* 3CF18 801C5E90 7D000724 */  addiu      $a3, $zero, 0x7D
    /* 3CF1C 801C5E94 08000224 */  addiu      $v0, $zero, 0x8
    /* 3CF20 801C5E98 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3CF24 801C5E9C 1400B2AF */  sw         $s2, 0x14($sp)
    /* 3CF28 801C5EA0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3CF2C 801C5EA4 1C00B2AF */  sw         $s2, 0x1C($sp)
  .L801C5EA8:
    /* 3CF30 801C5EA8 6759060C */  jal        func_8019659C
    /* 3CF34 801C5EAC 2000A0AF */   sw        $zero, 0x20($sp)
  .L801C5EB0:
    /* 3CF38 801C5EB0 4800BF8F */  lw         $ra, 0x48($sp)
    /* 3CF3C 801C5EB4 4400B58F */  lw         $s5, 0x44($sp)
    /* 3CF40 801C5EB8 4000B48F */  lw         $s4, 0x40($sp)
    /* 3CF44 801C5EBC 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 3CF48 801C5EC0 3800B28F */  lw         $s2, 0x38($sp)
    /* 3CF4C 801C5EC4 3400B18F */  lw         $s1, 0x34($sp)
    /* 3CF50 801C5EC8 3000B08F */  lw         $s0, 0x30($sp)
    /* 3CF54 801C5ECC 5000BD27 */  addiu      $sp, $sp, 0x50
    /* 3CF58 801C5ED0 0800E003 */  jr         $ra
    /* 3CF5C 801C5ED4 00000000 */   nop
endlabel func_801C59C4
