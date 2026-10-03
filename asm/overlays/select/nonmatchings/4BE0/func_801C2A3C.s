nonmatching func_801C2A3C, 0x114

glabel func_801C2A3C
    /* 39AC4 801C2A3C B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 39AC8 801C2A40 4000B4AF */  sw         $s4, 0x40($sp)
    /* 39ACC 801C2A44 1080143C */  lui        $s4, %hi(D_800FF748)
    /* 39AD0 801C2A48 48F79426 */  addiu      $s4, $s4, %lo(D_800FF748)
    /* 39AD4 801C2A4C 3000B0AF */  sw         $s0, 0x30($sp)
    /* 39AD8 801C2A50 21800000 */  addu       $s0, $zero, $zero
    /* 39ADC 801C2A54 3800B2AF */  sw         $s2, 0x38($sp)
    /* 39AE0 801C2A58 1E80123C */  lui        $s2, %hi(D_801DA5D2)
    /* 39AE4 801C2A5C D2A55226 */  addiu      $s2, $s2, %lo(D_801DA5D2)
    /* 39AE8 801C2A60 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 39AEC 801C2A64 03001324 */  addiu      $s3, $zero, 0x3
    /* 39AF0 801C2A68 3400B1AF */  sw         $s1, 0x34($sp)
    /* 39AF4 801C2A6C EEFF1124 */  addiu      $s1, $zero, -0x12
    /* 39AF8 801C2A70 4400BFAF */  sw         $ra, 0x44($sp)
  .L801C2A74:
    /* 39AFC 801C2A74 00004586 */  lh         $a1, 0x0($s2)
    /* 39B00 801C2A78 1707070C */  jal        func_801C1C5C
    /* 39B04 801C2A7C 21200002 */   addu      $a0, $s0, $zero
    /* 39B08 801C2A80 26004010 */  beqz       $v0, .L801C2B1C
    /* 39B0C 801C2A84 00000000 */   nop
    /* 39B10 801C2A88 00004586 */  lh         $a1, 0x0($s2)
    /* 39B14 801C2A8C 1707070C */  jal        func_801C1C5C
    /* 39B18 801C2A90 21200002 */   addu      $a0, $s0, $zero
    /* 39B1C 801C2A94 25005310 */  beq        $v0, $s3, .L801C2B2C
    /* 39B20 801C2A98 04000426 */   addiu     $a0, $s0, 0x4
    /* 39B24 801C2A9C 00004286 */  lh         $v0, 0x0($s2)
    /* 39B28 801C2AA0 00000000 */  nop
    /* 39B2C 801C2AA4 21105000 */  addu       $v0, $v0, $s0
    /* 39B30 801C2AA8 21108202 */  addu       $v0, $s4, $v0
    /* 39B34 801C2AAC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 39B38 801C2AB0 21084100 */  addu       $at, $v0, $at
    /* 39B3C 801C2AB4 80AB2390 */  lbu        $v1, -0x5480($at)
    /* 39B40 801C2AB8 84FF0624 */  addiu      $a2, $zero, -0x7C
    /* 39B44 801C2ABC C0100300 */  sll        $v0, $v1, 3
    /* 39B48 801C2AC0 21104300 */  addu       $v0, $v0, $v1
    /* 39B4C 801C2AC4 80100200 */  sll        $v0, $v0, 2
    /* 39B50 801C2AC8 21108202 */  addu       $v0, $s4, $v0
    /* 39B54 801C2ACC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 39B58 801C2AD0 21084100 */  addu       $at, $v0, $at
    /* 39B5C 801C2AD4 258F2390 */  lbu        $v1, -0x70DB($at)
    /* 39B60 801C2AD8 6D000224 */  addiu      $v0, $zero, 0x6D
    /* 39B64 801C2ADC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 39B68 801C2AE0 02000224 */  addiu      $v0, $zero, 0x2
    /* 39B6C 801C2AE4 2400A2AF */  sw         $v0, 0x24($sp)
    /* 39B70 801C2AE8 2800A2AF */  sw         $v0, 0x28($sp)
    /* 39B74 801C2AEC 01000224 */  addiu      $v0, $zero, 0x1
    /* 39B78 801C2AF0 1400B3AF */  sw         $s3, 0x14($sp)
    /* 39B7C 801C2AF4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 39B80 801C2AF8 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 39B84 801C2AFC 2000A0AF */  sw         $zero, 0x20($sp)
    /* 39B88 801C2B00 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 39B8C 801C2B04 80180300 */  sll        $v1, $v1, 2
    /* 39B90 801C2B08 1D80013C */  lui        $at, %hi(D_801D1DC8)
    /* 39B94 801C2B0C 21082300 */  addu       $at, $at, $v1
    /* 39B98 801C2B10 C81D258C */  lw         $a1, %lo(D_801D1DC8)($at)
    /* 39B9C 801C2B14 B850060C */  jal        func_801942E0
    /* 39BA0 801C2B18 21382002 */   addu      $a3, $s1, $zero
  .L801C2B1C:
    /* 39BA4 801C2B1C 01001026 */  addiu      $s0, $s0, 0x1
    /* 39BA8 801C2B20 0400022A */  slti       $v0, $s0, 0x4
    /* 39BAC 801C2B24 D3FF4014 */  bnez       $v0, .L801C2A74
    /* 39BB0 801C2B28 1E003126 */   addiu     $s1, $s1, 0x1E
  .L801C2B2C:
    /* 39BB4 801C2B2C 4400BF8F */  lw         $ra, 0x44($sp)
    /* 39BB8 801C2B30 4000B48F */  lw         $s4, 0x40($sp)
    /* 39BBC 801C2B34 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 39BC0 801C2B38 3800B28F */  lw         $s2, 0x38($sp)
    /* 39BC4 801C2B3C 3400B18F */  lw         $s1, 0x34($sp)
    /* 39BC8 801C2B40 3000B08F */  lw         $s0, 0x30($sp)
    /* 39BCC 801C2B44 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 39BD0 801C2B48 0800E003 */  jr         $ra
    /* 39BD4 801C2B4C 00000000 */   nop
endlabel func_801C2A3C
