nonmatching func_801CAAFC, 0x1F4

glabel func_801CAAFC
    /* 41B84 801CAAFC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 41B88 801CAB00 1400B1AF */  sw         $s1, 0x14($sp)
    /* 41B8C 801CAB04 21880000 */  addu       $s1, $zero, $zero
    /* 41B90 801CAB08 1800BFAF */  sw         $ra, 0x18($sp)
    /* 41B94 801CAB0C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 41B98 801CAB10 0C000424 */  addiu      $a0, $zero, 0xC
  .L801CAB14:
    /* 41B9C 801CAB14 FF003032 */  andi       $s0, $s1, 0xFF
    /* 41BA0 801CAB18 21280002 */  addu       $a1, $s0, $zero
    /* 41BA4 801CAB1C BDBE010C */  jal        func_8006FAF4
    /* 41BA8 801CAB20 8C000624 */   addiu     $a2, $zero, 0x8C
    /* 41BAC 801CAB24 0D000424 */  addiu      $a0, $zero, 0xD
    /* 41BB0 801CAB28 21280002 */  addu       $a1, $s0, $zero
    /* 41BB4 801CAB2C BDBE010C */  jal        func_8006FAF4
    /* 41BB8 801CAB30 8D000624 */   addiu     $a2, $zero, 0x8D
    /* 41BBC 801CAB34 0E000424 */  addiu      $a0, $zero, 0xE
    /* 41BC0 801CAB38 21280002 */  addu       $a1, $s0, $zero
    /* 41BC4 801CAB3C BDBE010C */  jal        func_8006FAF4
    /* 41BC8 801CAB40 8C000624 */   addiu     $a2, $zero, 0x8C
    /* 41BCC 801CAB44 0F000424 */  addiu      $a0, $zero, 0xF
    /* 41BD0 801CAB48 21280002 */  addu       $a1, $s0, $zero
    /* 41BD4 801CAB4C BDBE010C */  jal        func_8006FAF4
    /* 41BD8 801CAB50 8D000624 */   addiu     $a2, $zero, 0x8D
    /* 41BDC 801CAB54 01003126 */  addiu      $s1, $s1, 0x1
    /* 41BE0 801CAB58 FF002232 */  andi       $v0, $s1, 0xFF
    /* 41BE4 801CAB5C 0600422C */  sltiu      $v0, $v0, 0x6
    /* 41BE8 801CAB60 ECFF4014 */  bnez       $v0, .L801CAB14
    /* 41BEC 801CAB64 0C000424 */   addiu     $a0, $zero, 0xC
    /* 41BF0 801CAB68 01001124 */  addiu      $s1, $zero, 0x1
    /* 41BF4 801CAB6C 06000424 */  addiu      $a0, $zero, 0x6
  .L801CAB70:
    /* 41BF8 801CAB70 FF003032 */  andi       $s0, $s1, 0xFF
    /* 41BFC 801CAB74 21280002 */  addu       $a1, $s0, $zero
    /* 41C00 801CAB78 BDBE010C */  jal        func_8006FAF4
    /* 41C04 801CAB7C 8C000624 */   addiu     $a2, $zero, 0x8C
    /* 41C08 801CAB80 07000424 */  addiu      $a0, $zero, 0x7
    /* 41C0C 801CAB84 21280002 */  addu       $a1, $s0, $zero
    /* 41C10 801CAB88 BDBE010C */  jal        func_8006FAF4
    /* 41C14 801CAB8C 8D000624 */   addiu     $a2, $zero, 0x8D
    /* 41C18 801CAB90 08000424 */  addiu      $a0, $zero, 0x8
    /* 41C1C 801CAB94 21280002 */  addu       $a1, $s0, $zero
    /* 41C20 801CAB98 BDBE010C */  jal        func_8006FAF4
    /* 41C24 801CAB9C 8C000624 */   addiu     $a2, $zero, 0x8C
    /* 41C28 801CABA0 09000424 */  addiu      $a0, $zero, 0x9
    /* 41C2C 801CABA4 21280002 */  addu       $a1, $s0, $zero
    /* 41C30 801CABA8 BDBE010C */  jal        func_8006FAF4
    /* 41C34 801CABAC 8D000624 */   addiu     $a2, $zero, 0x8D
    /* 41C38 801CABB0 01003126 */  addiu      $s1, $s1, 0x1
    /* 41C3C 801CABB4 FF002232 */  andi       $v0, $s1, 0xFF
    /* 41C40 801CABB8 0800422C */  sltiu      $v0, $v0, 0x8
    /* 41C44 801CABBC ECFF4014 */  bnez       $v0, .L801CAB70
    /* 41C48 801CABC0 06000424 */   addiu     $a0, $zero, 0x6
    /* 41C4C 801CABC4 21280000 */  addu       $a1, $zero, $zero
    /* 41C50 801CABC8 BDBE010C */  jal        func_8006FAF4
    /* 41C54 801CABCC 69000624 */   addiu     $a2, $zero, 0x69
    /* 41C58 801CABD0 07000424 */  addiu      $a0, $zero, 0x7
    /* 41C5C 801CABD4 21280000 */  addu       $a1, $zero, $zero
    /* 41C60 801CABD8 BDBE010C */  jal        func_8006FAF4
    /* 41C64 801CABDC 6A000624 */   addiu     $a2, $zero, 0x6A
    /* 41C68 801CABE0 08000424 */  addiu      $a0, $zero, 0x8
    /* 41C6C 801CABE4 21280000 */  addu       $a1, $zero, $zero
    /* 41C70 801CABE8 BDBE010C */  jal        func_8006FAF4
    /* 41C74 801CABEC 69000624 */   addiu     $a2, $zero, 0x69
    /* 41C78 801CABF0 09000424 */  addiu      $a0, $zero, 0x9
    /* 41C7C 801CABF4 21280000 */  addu       $a1, $zero, $zero
    /* 41C80 801CABF8 BDBE010C */  jal        func_8006FAF4
    /* 41C84 801CABFC 6A000624 */   addiu     $a2, $zero, 0x6A
    /* 41C88 801CAC00 01001124 */  addiu      $s1, $zero, 0x1
    /* 41C8C 801CAC04 10000424 */  addiu      $a0, $zero, 0x10
  .L801CAC08:
    /* 41C90 801CAC08 FF003032 */  andi       $s0, $s1, 0xFF
    /* 41C94 801CAC0C 21280002 */  addu       $a1, $s0, $zero
    /* 41C98 801CAC10 BDBE010C */  jal        func_8006FAF4
    /* 41C9C 801CAC14 8C000624 */   addiu     $a2, $zero, 0x8C
    /* 41CA0 801CAC18 11000424 */  addiu      $a0, $zero, 0x11
    /* 41CA4 801CAC1C 21280002 */  addu       $a1, $s0, $zero
    /* 41CA8 801CAC20 BDBE010C */  jal        func_8006FAF4
    /* 41CAC 801CAC24 8D000624 */   addiu     $a2, $zero, 0x8D
    /* 41CB0 801CAC28 12000424 */  addiu      $a0, $zero, 0x12
    /* 41CB4 801CAC2C 21280002 */  addu       $a1, $s0, $zero
    /* 41CB8 801CAC30 BDBE010C */  jal        func_8006FAF4
    /* 41CBC 801CAC34 8C000624 */   addiu     $a2, $zero, 0x8C
    /* 41CC0 801CAC38 13000424 */  addiu      $a0, $zero, 0x13
    /* 41CC4 801CAC3C 21280002 */  addu       $a1, $s0, $zero
    /* 41CC8 801CAC40 BDBE010C */  jal        func_8006FAF4
    /* 41CCC 801CAC44 8D000624 */   addiu     $a2, $zero, 0x8D
    /* 41CD0 801CAC48 01003126 */  addiu      $s1, $s1, 0x1
    /* 41CD4 801CAC4C FF002232 */  andi       $v0, $s1, 0xFF
    /* 41CD8 801CAC50 0800422C */  sltiu      $v0, $v0, 0x8
    /* 41CDC 801CAC54 ECFF4014 */  bnez       $v0, .L801CAC08
    /* 41CE0 801CAC58 10000424 */   addiu     $a0, $zero, 0x10
    /* 41CE4 801CAC5C 21280000 */  addu       $a1, $zero, $zero
    /* 41CE8 801CAC60 BDBE010C */  jal        func_8006FAF4
    /* 41CEC 801CAC64 82000624 */   addiu     $a2, $zero, 0x82
    /* 41CF0 801CAC68 10000424 */  addiu      $a0, $zero, 0x10
    /* 41CF4 801CAC6C 01000524 */  addiu      $a1, $zero, 0x1
    /* 41CF8 801CAC70 BDBE010C */  jal        func_8006FAF4
    /* 41CFC 801CAC74 82000624 */   addiu     $a2, $zero, 0x82
    /* 41D00 801CAC78 11000424 */  addiu      $a0, $zero, 0x11
    /* 41D04 801CAC7C 21280000 */  addu       $a1, $zero, $zero
    /* 41D08 801CAC80 BDBE010C */  jal        func_8006FAF4
    /* 41D0C 801CAC84 83000624 */   addiu     $a2, $zero, 0x83
    /* 41D10 801CAC88 11000424 */  addiu      $a0, $zero, 0x11
    /* 41D14 801CAC8C 01000524 */  addiu      $a1, $zero, 0x1
    /* 41D18 801CAC90 BDBE010C */  jal        func_8006FAF4
    /* 41D1C 801CAC94 83000624 */   addiu     $a2, $zero, 0x83
    /* 41D20 801CAC98 12000424 */  addiu      $a0, $zero, 0x12
    /* 41D24 801CAC9C 21280000 */  addu       $a1, $zero, $zero
    /* 41D28 801CACA0 BDBE010C */  jal        func_8006FAF4
    /* 41D2C 801CACA4 82000624 */   addiu     $a2, $zero, 0x82
    /* 41D30 801CACA8 12000424 */  addiu      $a0, $zero, 0x12
    /* 41D34 801CACAC 01000524 */  addiu      $a1, $zero, 0x1
    /* 41D38 801CACB0 BDBE010C */  jal        func_8006FAF4
    /* 41D3C 801CACB4 82000624 */   addiu     $a2, $zero, 0x82
    /* 41D40 801CACB8 13000424 */  addiu      $a0, $zero, 0x13
    /* 41D44 801CACBC 21280000 */  addu       $a1, $zero, $zero
    /* 41D48 801CACC0 BDBE010C */  jal        func_8006FAF4
    /* 41D4C 801CACC4 83000624 */   addiu     $a2, $zero, 0x83
    /* 41D50 801CACC8 13000424 */  addiu      $a0, $zero, 0x13
    /* 41D54 801CACCC 01000524 */  addiu      $a1, $zero, 0x1
    /* 41D58 801CACD0 BDBE010C */  jal        func_8006FAF4
    /* 41D5C 801CACD4 83000624 */   addiu     $a2, $zero, 0x83
    /* 41D60 801CACD8 1800BF8F */  lw         $ra, 0x18($sp)
    /* 41D64 801CACDC 1400B18F */  lw         $s1, 0x14($sp)
    /* 41D68 801CACE0 1000B08F */  lw         $s0, 0x10($sp)
    /* 41D6C 801CACE4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 41D70 801CACE8 0800E003 */  jr         $ra
    /* 41D74 801CACEC 00000000 */   nop
endlabel func_801CAAFC
