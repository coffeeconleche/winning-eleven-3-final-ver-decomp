nonmatching func_8018EA8C, 0x68

glabel func_8018EA8C
    /* 5B14 8018EA8C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5B18 8018EA90 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5B1C 8018EA94 21888000 */  addu       $s1, $a0, $zero
    /* 5B20 8018EA98 21200000 */  addu       $a0, $zero, $zero
    /* 5B24 8018EA9C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5B28 8018EAA0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 5B2C 8018EAA4 20BB010C */  jal        func_8006EC80
    /* 5B30 8018EAA8 2180A000 */   addu      $s0, $a1, $zero
    /* 5B34 8018EAAC 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 5B38 8018EAB0 A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 5B3C 8018EAB4 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 5B40 8018EAB8 20000324 */  addiu      $v1, $zero, 0x20
    /* 5B44 8018EABC 07004314 */  bne        $v0, $v1, .L8018EADC
    /* 5B48 8018EAC0 21100000 */   addu      $v0, $zero, $zero
    /* 5B4C 8018EAC4 FF000232 */  andi       $v0, $s0, 0xFF
    /* 5B50 8018EAC8 04004014 */  bnez       $v0, .L8018EADC
    /* 5B54 8018EACC 21102002 */   addu      $v0, $s1, $zero
    /* 5B58 8018EAD0 88AD020C */  jal        func_800AB620
    /* 5B5C 8018EAD4 28050424 */   addiu     $a0, $zero, 0x528
    /* 5B60 8018EAD8 21102002 */  addu       $v0, $s1, $zero
  .L8018EADC:
    /* 5B64 8018EADC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 5B68 8018EAE0 1400B18F */  lw         $s1, 0x14($sp)
    /* 5B6C 8018EAE4 1000B08F */  lw         $s0, 0x10($sp)
    /* 5B70 8018EAE8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 5B74 8018EAEC 0800E003 */  jr         $ra
    /* 5B78 8018EAF0 00000000 */   nop
endlabel func_8018EA8C
