nonmatching func_801BA8EC, 0x2D4

glabel func_801BA8EC
    /* 31974 801BA8EC B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 31978 801BA8F0 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 3197C 801BA8F4 21888000 */  addu       $s1, $a0, $zero
    /* 31980 801BA8F8 2800B0AF */  sw         $s0, 0x28($sp)
    /* 31984 801BA8FC 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 31988 801BA900 1080153C */  lui        $s5, %hi(D_800FF748)
    /* 3198C 801BA904 48F7B526 */  addiu      $s5, $s5, %lo(D_800FF748)
    /* 31990 801BA908 FF000324 */  addiu      $v1, $zero, 0xFF
    /* 31994 801BA90C 4000BFAF */  sw         $ra, 0x40($sp)
    /* 31998 801BA910 3800B4AF */  sw         $s4, 0x38($sp)
    /* 3199C 801BA914 3400B3AF */  sw         $s3, 0x34($sp)
    /* 319A0 801BA918 3000B2AF */  sw         $s2, 0x30($sp)
    /* 319A4 801BA91C 04002292 */  lbu        $v0, 0x4($s1)
    /* 319A8 801BA920 0000338E */  lw         $s3, 0x0($s1)
    /* 319AC 801BA924 03004310 */  beq        $v0, $v1, .L801BA934
    /* 319B0 801BA928 2180A000 */   addu      $s0, $a1, $zero
    /* 319B4 801BA92C 3BEA060C */  jal        func_801BA8EC
    /* 319B8 801BA930 21206002 */   addu      $a0, $s3, $zero
  .L801BA934:
    /* 319BC 801BA934 05000012 */  beqz       $s0, .L801BA94C
    /* 319C0 801BA938 80001024 */   addiu     $s0, $zero, 0x80
    /* 319C4 801BA93C 80001224 */  addiu      $s2, $zero, 0x80
    /* 319C8 801BA940 80001424 */  addiu      $s4, $zero, 0x80
    /* 319CC 801BA944 57EA0608 */  j          .L801BA95C
    /* 319D0 801BA948 05000824 */   addiu     $t0, $zero, 0x5
  .L801BA94C:
    /* 319D4 801BA94C FF001024 */  addiu      $s0, $zero, 0xFF
    /* 319D8 801BA950 FF001224 */  addiu      $s2, $zero, 0xFF
    /* 319DC 801BA954 FF001424 */  addiu      $s4, $zero, 0xFF
    /* 319E0 801BA958 04000824 */  addiu      $t0, $zero, 0x4
  .L801BA95C:
    /* 319E4 801BA95C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 319E8 801BA960 2108A102 */  addu       $at, $s5, $at
    /* 319EC 801BA964 238F2390 */  lbu        $v1, -0x70DD($at)
    /* 319F0 801BA968 01000224 */  addiu      $v0, $zero, 0x1
    /* 319F4 801BA96C 21006210 */  beq        $v1, $v0, .L801BA9F4
    /* 319F8 801BA970 02006228 */   slti      $v0, $v1, 0x2
    /* 319FC 801BA974 05004010 */  beqz       $v0, .L801BA98C
    /* 31A00 801BA978 00000000 */   nop
    /* 31A04 801BA97C 0A006010 */  beqz       $v1, .L801BA9A8
    /* 31A08 801BA980 00000000 */   nop
    /* 31A0C 801BA984 91EA0608 */  j          .L801BAA44
    /* 31A10 801BA988 00000000 */   nop
  .L801BA98C:
    /* 31A14 801BA98C 02000224 */  addiu      $v0, $zero, 0x2
    /* 31A18 801BA990 05006210 */  beq        $v1, $v0, .L801BA9A8
    /* 31A1C 801BA994 03000224 */   addiu     $v0, $zero, 0x3
    /* 31A20 801BA998 16006210 */  beq        $v1, $v0, .L801BA9F4
    /* 31A24 801BA99C 00000000 */   nop
    /* 31A28 801BA9A0 91EA0608 */  j          .L801BAA44
    /* 31A2C 801BA9A4 00000000 */   nop
  .L801BA9A8:
    /* 31A30 801BA9A8 07002392 */  lbu        $v1, 0x7($s1)
    /* 31A34 801BA9AC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 31A38 801BA9B0 2108A102 */  addu       $at, $s5, $at
    /* 31A3C 801BA9B4 A0AB2290 */  lbu        $v0, -0x5460($at)
    /* 31A40 801BA9B8 00000000 */  nop
    /* 31A44 801BA9BC 07006210 */  beq        $v1, $v0, .L801BA9DC
    /* 31A48 801BA9C0 80000424 */   addiu     $a0, $zero, 0x80
    /* 31A4C 801BA9C4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 31A50 801BA9C8 2108A102 */  addu       $at, $s5, $at
    /* 31A54 801BA9CC A1AB2290 */  lbu        $v0, -0x545F($at)
    /* 31A58 801BA9D0 00000000 */  nop
    /* 31A5C 801BA9D4 1B006214 */  bne        $v1, $v0, .L801BAA44
    /* 31A60 801BA9D8 00000000 */   nop
  .L801BA9DC:
    /* 31A64 801BA9DC 6E39060C */  jal        func_8018E5B8
    /* 31A68 801BA9E0 03000524 */   addiu     $a1, $zero, 0x3
    /* 31A6C 801BA9E4 21804000 */  addu       $s0, $v0, $zero
    /* 31A70 801BA9E8 21A00002 */  addu       $s4, $s0, $zero
    /* 31A74 801BA9EC 90EA0608 */  j          .L801BAA40
    /* 31A78 801BA9F0 7F005224 */   addiu     $s2, $v0, 0x7F
  .L801BA9F4:
    /* 31A7C 801BA9F4 07002392 */  lbu        $v1, 0x7($s1)
    /* 31A80 801BA9F8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 31A84 801BA9FC 2108A102 */  addu       $at, $s5, $at
    /* 31A88 801BAA00 A0AB2290 */  lbu        $v0, -0x5460($at)
    /* 31A8C 801BAA04 00000000 */  nop
    /* 31A90 801BAA08 07006210 */  beq        $v1, $v0, .L801BAA28
    /* 31A94 801BAA0C 00000000 */   nop
    /* 31A98 801BAA10 0100013C */  lui        $at, (0x10000 >> 16)
    /* 31A9C 801BAA14 2108A102 */  addu       $at, $s5, $at
    /* 31AA0 801BAA18 A1AB2290 */  lbu        $v0, -0x545F($at)
    /* 31AA4 801BAA1C 00000000 */  nop
    /* 31AA8 801BAA20 08006214 */  bne        $v1, $v0, .L801BAA44
    /* 31AAC 801BAA24 00000000 */   nop
  .L801BAA28:
    /* 31AB0 801BAA28 FF001424 */  addiu      $s4, $zero, 0xFF
    /* 31AB4 801BAA2C 80000424 */  addiu      $a0, $zero, 0x80
    /* 31AB8 801BAA30 6E39060C */  jal        func_8018E5B8
    /* 31ABC 801BAA34 03000524 */   addiu     $a1, $zero, 0x3
    /* 31AC0 801BAA38 21804000 */  addu       $s0, $v0, $zero
    /* 31AC4 801BAA3C 21900002 */  addu       $s2, $s0, $zero
  .L801BAA40:
    /* 31AC8 801BAA40 02000824 */  addiu      $t0, $zero, 0x2
  .L801BAA44:
    /* 31ACC 801BAA44 801F023C */  lui        $v0, (0x1F80029B >> 16)
    /* 31AD0 801BAA48 9B024290 */  lbu        $v0, (0x1F80029B & 0xFFFF)($v0)
    /* 31AD4 801BAA4C 02000324 */  addiu      $v1, $zero, 0x2
    /* 31AD8 801BAA50 FF004230 */  andi       $v0, $v0, 0xFF
    /* 31ADC 801BAA54 1B004314 */  bne        $v0, $v1, .L801BAAC4
    /* 31AE0 801BAA58 00000000 */   nop
    /* 31AE4 801BAA5C 07002392 */  lbu        $v1, 0x7($s1)
    /* 31AE8 801BAA60 0100013C */  lui        $at, (0x10000 >> 16)
    /* 31AEC 801BAA64 2108A102 */  addu       $at, $s5, $at
    /* 31AF0 801BAA68 A8AB2290 */  lbu        $v0, -0x5458($at)
    /* 31AF4 801BAA6C 00000000 */  nop
    /* 31AF8 801BAA70 12006214 */  bne        $v1, $v0, .L801BAABC
    /* 31AFC 801BAA74 80001024 */   addiu     $s0, $zero, 0x80
    /* 31B00 801BAA78 FF001424 */  addiu      $s4, $zero, 0xFF
    /* 31B04 801BAA7C 80000424 */  addiu      $a0, $zero, 0x80
    /* 31B08 801BAA80 6E39060C */  jal        func_8018E5B8
    /* 31B0C 801BAA84 01000524 */   addiu     $a1, $zero, 0x1
    /* 31B10 801BAA88 80FF5224 */  addiu      $s2, $v0, -0x80
    /* 31B14 801BAA8C 80000424 */  addiu      $a0, $zero, 0x80
    /* 31B18 801BAA90 6E39060C */  jal        func_8018E5B8
    /* 31B1C 801BAA94 01000524 */   addiu     $a1, $zero, 0x1
    /* 31B20 801BAA98 80000424 */  addiu      $a0, $zero, 0x80
    /* 31B24 801BAA9C 01000524 */  addiu      $a1, $zero, 0x1
    /* 31B28 801BAAA0 6E39060C */  jal        func_8018E5B8
    /* 31B2C 801BAAA4 21804000 */   addu      $s0, $v0, $zero
    /* 31B30 801BAAA8 43801000 */  sra        $s0, $s0, 1
    /* 31B34 801BAAAC 83100200 */  sra        $v0, $v0, 2
    /* 31B38 801BAAB0 21800202 */  addu       $s0, $s0, $v0
    /* 31B3C 801BAAB4 B1EA0608 */  j          .L801BAAC4
    /* 31B40 801BAAB8 02000824 */   addiu     $t0, $zero, 0x2
  .L801BAABC:
    /* 31B44 801BAABC 80001224 */  addiu      $s2, $zero, 0x80
    /* 31B48 801BAAC0 80001424 */  addiu      $s4, $zero, 0x80
  .L801BAAC4:
    /* 31B4C 801BAAC4 06002392 */  lbu        $v1, 0x6($s1)
    /* 31B50 801BAAC8 03000224 */  addiu      $v0, $zero, 0x3
    /* 31B54 801BAACC 32006210 */  beq        $v1, $v0, .L801BAB98
    /* 31B58 801BAAD0 04000224 */   addiu     $v0, $zero, 0x4
    /* 31B5C 801BAAD4 30006214 */  bne        $v1, $v0, .L801BAB98
    /* 31B60 801BAAD8 21200000 */   addu      $a0, $zero, $zero
    /* 31B64 801BAADC FF009532 */  andi       $s5, $s4, 0xFF
    /* 31B68 801BAAE0 FF005432 */  andi       $s4, $s2, 0xFF
    /* 31B6C 801BAAE4 FF001032 */  andi       $s0, $s0, 0xFF
    /* 31B70 801BAAE8 0A002586 */  lh         $a1, 0xA($s1)
    /* 31B74 801BAAEC 0C002686 */  lh         $a2, 0xC($s1)
    /* 31B78 801BAAF0 0E002786 */  lh         $a3, 0xE($s1)
    /* 31B7C 801BAAF4 10002286 */  lh         $v0, 0x10($s1)
    /* 31B80 801BAAF8 FF001231 */  andi       $s2, $t0, 0xFF
    /* 31B84 801BAAFC 1400B5AF */  sw         $s5, 0x14($sp)
    /* 31B88 801BAB00 1800B4AF */  sw         $s4, 0x18($sp)
    /* 31B8C 801BAB04 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 31B90 801BAB08 2000B2AF */  sw         $s2, 0x20($sp)
    /* 31B94 801BAB0C 005A060C */  jal        func_80196800
    /* 31B98 801BAB10 1000A2AF */   sw        $v0, 0x10($sp)
    /* 31B9C 801BAB14 06006392 */  lbu        $v1, 0x6($s3)
    /* 31BA0 801BAB18 00000000 */  nop
    /* 31BA4 801BAB1C 05006228 */  slti       $v0, $v1, 0x5
    /* 31BA8 801BAB20 1D004010 */  beqz       $v0, .L801BAB98
    /* 31BAC 801BAB24 03006228 */   slti      $v0, $v1, 0x3
    /* 31BB0 801BAB28 1B004014 */  bnez       $v0, .L801BAB98
    /* 31BB4 801BAB2C 00000000 */   nop
    /* 31BB8 801BAB30 07002392 */  lbu        $v1, 0x7($s1)
    /* 31BBC 801BAB34 07006292 */  lbu        $v0, 0x7($s3)
    /* 31BC0 801BAB38 00000000 */  nop
    /* 31BC4 801BAB3C 16006214 */  bne        $v1, $v0, .L801BAB98
    /* 31BC8 801BAB40 21200000 */   addu      $a0, $zero, $zero
    /* 31BCC 801BAB44 0A006586 */  lh         $a1, 0xA($s3)
    /* 31BD0 801BAB48 0C006686 */  lh         $a2, 0xC($s3)
    /* 31BD4 801BAB4C 0E006786 */  lh         $a3, 0xE($s3)
    /* 31BD8 801BAB50 10006286 */  lh         $v0, 0x10($s3)
    /* 31BDC 801BAB54 1400B5AF */  sw         $s5, 0x14($sp)
    /* 31BE0 801BAB58 1800B4AF */  sw         $s4, 0x18($sp)
    /* 31BE4 801BAB5C 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 31BE8 801BAB60 2000B2AF */  sw         $s2, 0x20($sp)
    /* 31BEC 801BAB64 005A060C */  jal        func_80196800
    /* 31BF0 801BAB68 1000A2AF */   sw        $v0, 0x10($sp)
    /* 31BF4 801BAB6C 12002586 */  lh         $a1, 0x12($s1)
    /* 31BF8 801BAB70 14002686 */  lh         $a2, 0x14($s1)
    /* 31BFC 801BAB74 16002786 */  lh         $a3, 0x16($s1)
    /* 31C00 801BAB78 18002286 */  lh         $v0, 0x18($s1)
    /* 31C04 801BAB7C 21200000 */  addu       $a0, $zero, $zero
    /* 31C08 801BAB80 1400B5AF */  sw         $s5, 0x14($sp)
    /* 31C0C 801BAB84 1800B4AF */  sw         $s4, 0x18($sp)
    /* 31C10 801BAB88 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 31C14 801BAB8C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 31C18 801BAB90 005A060C */  jal        func_80196800
    /* 31C1C 801BAB94 1000A2AF */   sw        $v0, 0x10($sp)
  .L801BAB98:
    /* 31C20 801BAB98 4000BF8F */  lw         $ra, 0x40($sp)
    /* 31C24 801BAB9C 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 31C28 801BABA0 3800B48F */  lw         $s4, 0x38($sp)
    /* 31C2C 801BABA4 3400B38F */  lw         $s3, 0x34($sp)
    /* 31C30 801BABA8 3000B28F */  lw         $s2, 0x30($sp)
    /* 31C34 801BABAC 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 31C38 801BABB0 2800B08F */  lw         $s0, 0x28($sp)
    /* 31C3C 801BABB4 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 31C40 801BABB8 0800E003 */  jr         $ra
    /* 31C44 801BABBC 00000000 */   nop
endlabel func_801BA8EC
