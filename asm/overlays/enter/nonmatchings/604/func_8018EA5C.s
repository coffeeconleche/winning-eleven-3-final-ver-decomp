nonmatching func_8018EA5C, 0xA4

glabel func_8018EA5C
    /* 5AE4 8018EA5C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5AE8 8018EA60 1980043C */  lui        $a0, %hi(D_8019183C)
    /* 5AEC 8018EA64 3C188424 */  addiu      $a0, $a0, %lo(D_8019183C)
    /* 5AF0 8018EA68 01000224 */  addiu      $v0, $zero, 0x1
    /* 5AF4 8018EA6C 0F80013C */  lui        $at, %hi(D_800F3564)
    /* 5AF8 8018EA70 643522A0 */  sb         $v0, %lo(D_800F3564)($at)
    /* 5AFC 8018EA74 FF010224 */  addiu      $v0, $zero, 0x1FF
    /* 5B00 8018EA78 0E80013C */  lui        $at, %hi(D_800E7668)
    /* 5B04 8018EA7C 687622AC */  sw         $v0, %lo(D_800E7668)($at)
    /* 5B08 8018EA80 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 5B0C 8018EA84 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5B10 8018EA88 0E80013C */  lui        $at, %hi(D_800E765C)
    /* 5B14 8018EA8C 5C7620AC */  sw         $zero, %lo(D_800E765C)($at)
    /* 5B18 8018EA90 1180013C */  lui        $at, %hi(D_8010A3E8)
    /* 5B1C 8018EA94 E8A322AC */  sw         $v0, %lo(D_8010A3E8)($at)
    /* 5B20 8018EA98 5965000C */  jal        func_80019564
    /* 5B24 8018EA9C 21280000 */   addu      $a1, $zero, $zero
    /* 5B28 8018EAA0 1980033C */  lui        $v1, %hi(D_80193C88)
    /* 5B2C 8018EAA4 883C6390 */  lbu        $v1, %lo(D_80193C88)($v1)
    /* 5B30 8018EAA8 01000224 */  addiu      $v0, $zero, 0x1
    /* 5B34 8018EAAC 09006210 */  beq        $v1, $v0, .L8018EAD4
    /* 5B38 8018EAB0 02006228 */   slti      $v0, $v1, 0x2
    /* 5B3C 8018EAB4 0E004014 */  bnez       $v0, .L8018EAF0
    /* 5B40 8018EAB8 02000224 */   addiu     $v0, $zero, 0x2
    /* 5B44 8018EABC 07006210 */  beq        $v1, $v0, .L8018EADC
    /* 5B48 8018EAC0 03000224 */   addiu     $v0, $zero, 0x3
    /* 5B4C 8018EAC4 06006210 */  beq        $v1, $v0, .L8018EAE0
    /* 5B50 8018EAC8 40000424 */   addiu     $a0, $zero, 0x40
    /* 5B54 8018EACC BC3A0608 */  j          .L8018EAF0
    /* 5B58 8018EAD0 00000000 */   nop
  .L8018EAD4:
    /* 5B5C 8018EAD4 B83A0608 */  j          .L8018EAE0
    /* 5B60 8018EAD8 20000424 */   addiu     $a0, $zero, 0x20
  .L8018EADC:
    /* 5B64 8018EADC 30000424 */  addiu      $a0, $zero, 0x30
  .L8018EAE0:
    /* 5B68 8018EAE0 E8010524 */  addiu      $a1, $zero, 0x1E8
    /* 5B6C 8018EAE4 21300000 */  addu       $a2, $zero, $zero
    /* 5B70 8018EAE8 5040010C */  jal        func_80050140
    /* 5B74 8018EAEC FF010724 */   addiu     $a3, $zero, 0x1FF
  .L8018EAF0:
    /* 5B78 8018EAF0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5B7C 8018EAF4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 5B80 8018EAF8 0800E003 */  jr         $ra
    /* 5B84 8018EAFC 00000000 */   nop
endlabel func_8018EA5C
