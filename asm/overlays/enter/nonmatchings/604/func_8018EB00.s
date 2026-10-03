nonmatching func_8018EB00, 0x54

glabel func_8018EB00
    /* 5B88 8018EB00 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5B8C 8018EB04 01000224 */  addiu      $v0, $zero, 0x1
    /* 5B90 8018EB08 0F80013C */  lui        $at, %hi(D_800F3564)
    /* 5B94 8018EB0C 643522A0 */  sb         $v0, %lo(D_800F3564)($at)
    /* 5B98 8018EB10 FF010224 */  addiu      $v0, $zero, 0x1FF
    /* 5B9C 8018EB14 0E80013C */  lui        $at, %hi(D_800E7668)
    /* 5BA0 8018EB18 687622AC */  sw         $v0, %lo(D_800E7668)($at)
    /* 5BA4 8018EB1C FF000224 */  addiu      $v0, $zero, 0xFF
    /* 5BA8 8018EB20 1980043C */  lui        $a0, %hi(D_8019001C)
    /* 5BAC 8018EB24 1C008424 */  addiu      $a0, $a0, %lo(D_8019001C)
    /* 5BB0 8018EB28 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5BB4 8018EB2C 0E80013C */  lui        $at, %hi(D_800E765C)
    /* 5BB8 8018EB30 5C7620AC */  sw         $zero, %lo(D_800E765C)($at)
    /* 5BBC 8018EB34 1180013C */  lui        $at, %hi(D_8010A3E8)
    /* 5BC0 8018EB38 E8A322AC */  sw         $v0, %lo(D_8010A3E8)($at)
    /* 5BC4 8018EB3C 5965000C */  jal        func_80019564
    /* 5BC8 8018EB40 21280000 */   addu      $a1, $zero, $zero
    /* 5BCC 8018EB44 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5BD0 8018EB48 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 5BD4 8018EB4C 0800E003 */  jr         $ra
    /* 5BD8 8018EB50 00000000 */   nop
endlabel func_8018EB00
