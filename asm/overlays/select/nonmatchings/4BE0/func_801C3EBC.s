nonmatching func_801C3EBC, 0x1A0

glabel func_801C3EBC
    /* 3AF44 801C3EBC 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* 3AF48 801C3EC0 4800B0AF */  sw         $s0, 0x48($sp)
    /* 3AF4C 801C3EC4 FF009030 */  andi       $s0, $a0, 0xFF
    /* 3AF50 801C3EC8 0A000424 */  addiu      $a0, $zero, 0xA
    /* 3AF54 801C3ECC 02700524 */  addiu      $a1, $zero, 0x7002
    /* 3AF58 801C3ED0 21300000 */  addu       $a2, $zero, $zero
    /* 3AF5C 801C3ED4 21380000 */  addu       $a3, $zero, $zero
    /* 3AF60 801C3ED8 5800B4AF */  sw         $s4, 0x58($sp)
    /* 3AF64 801C3EDC 0C001424 */  addiu      $s4, $zero, 0xC
    /* 3AF68 801C3EE0 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 3AF6C 801C3EE4 00101124 */  addiu      $s1, $zero, 0x1000
    /* 3AF70 801C3EE8 5400B3AF */  sw         $s3, 0x54($sp)
    /* 3AF74 801C3EEC 04001324 */  addiu      $s3, $zero, 0x4
    /* 3AF78 801C3EF0 5000B2AF */  sw         $s2, 0x50($sp)
    /* 3AF7C 801C3EF4 01001224 */  addiu      $s2, $zero, 0x1
    /* 3AF80 801C3EF8 6000BFAF */  sw         $ra, 0x60($sp)
    /* 3AF84 801C3EFC 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 3AF88 801C3F00 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3AF8C 801C3F04 1400B4AF */  sw         $s4, 0x14($sp)
    /* 3AF90 801C3F08 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3AF94 801C3F0C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3AF98 801C3F10 2000B1AF */  sw         $s1, 0x20($sp)
    /* 3AF9C 801C3F14 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3AFA0 801C3F18 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3AFA4 801C3F1C 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 3AFA8 801C3F20 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3AFAC 801C3F24 3400B0AF */  sw         $s0, 0x34($sp)
    /* 3AFB0 801C3F28 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3AFB4 801C3F2C 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 3AFB8 801C3F30 ED4F060C */  jal        func_80193FB4
    /* 3AFBC 801C3F34 4000B2AF */   sw        $s2, 0x40($sp)
    /* 3AFC0 801C3F38 14000424 */  addiu      $a0, $zero, 0x14
    /* 3AFC4 801C3F3C 01700524 */  addiu      $a1, $zero, 0x7001
    /* 3AFC8 801C3F40 0040063C */  lui        $a2, (0x40000000 >> 16)
    /* 3AFCC 801C3F44 21380000 */  addu       $a3, $zero, $zero
    /* 3AFD0 801C3F48 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3AFD4 801C3F4C 1400B4AF */  sw         $s4, 0x14($sp)
    /* 3AFD8 801C3F50 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3AFDC 801C3F54 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3AFE0 801C3F58 2000B1AF */  sw         $s1, 0x20($sp)
    /* 3AFE4 801C3F5C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3AFE8 801C3F60 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3AFEC 801C3F64 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 3AFF0 801C3F68 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3AFF4 801C3F6C 3400B0AF */  sw         $s0, 0x34($sp)
    /* 3AFF8 801C3F70 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3AFFC 801C3F74 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 3B000 801C3F78 ED4F060C */  jal        func_80193FB4
    /* 3B004 801C3F7C 4000B2AF */   sw        $s2, 0x40($sp)
    /* 3B008 801C3F80 21880000 */  addu       $s1, $zero, $zero
    /* 3B00C 801C3F84 0C001524 */  addiu      $s5, $zero, 0xC
    /* 3B010 801C3F88 00101224 */  addiu      $s2, $zero, 0x1000
    /* 3B014 801C3F8C 04001424 */  addiu      $s4, $zero, 0x4
    /* 3B018 801C3F90 01001324 */  addiu      $s3, $zero, 0x1
    /* 3B01C 801C3F94 0B002426 */  addiu      $a0, $s1, 0xB
  .L801C3F98:
    /* 3B020 801C3F98 0C702526 */  addiu      $a1, $s1, 0x700C
    /* 3B024 801C3F9C 21300000 */  addu       $a2, $zero, $zero
    /* 3B028 801C3FA0 21380000 */  addu       $a3, $zero, $zero
    /* 3B02C 801C3FA4 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3B030 801C3FA8 1400B5AF */  sw         $s5, 0x14($sp)
    /* 3B034 801C3FAC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3B038 801C3FB0 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 3B03C 801C3FB4 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3B040 801C3FB8 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3B044 801C3FBC 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3B048 801C3FC0 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 3B04C 801C3FC4 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3B050 801C3FC8 3400B0AF */  sw         $s0, 0x34($sp)
    /* 3B054 801C3FCC 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3B058 801C3FD0 3C00B4AF */  sw         $s4, 0x3C($sp)
    /* 3B05C 801C3FD4 ED4F060C */  jal        func_80193FB4
    /* 3B060 801C3FD8 4000B3AF */   sw        $s3, 0x40($sp)
    /* 3B064 801C3FDC 15002426 */  addiu      $a0, $s1, 0x15
    /* 3B068 801C3FE0 04702526 */  addiu      $a1, $s1, 0x7004
    /* 3B06C 801C3FE4 0040063C */  lui        $a2, (0x40000000 >> 16)
    /* 3B070 801C3FE8 21380000 */  addu       $a3, $zero, $zero
    /* 3B074 801C3FEC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3B078 801C3FF0 1400B5AF */  sw         $s5, 0x14($sp)
    /* 3B07C 801C3FF4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3B080 801C3FF8 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 3B084 801C3FFC 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3B088 801C4000 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3B08C 801C4004 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3B090 801C4008 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 3B094 801C400C 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3B098 801C4010 3400B0AF */  sw         $s0, 0x34($sp)
    /* 3B09C 801C4014 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3B0A0 801C4018 3C00B4AF */  sw         $s4, 0x3C($sp)
    /* 3B0A4 801C401C ED4F060C */  jal        func_80193FB4
    /* 3B0A8 801C4020 4000B3AF */   sw        $s3, 0x40($sp)
    /* 3B0AC 801C4024 01003126 */  addiu      $s1, $s1, 0x1
    /* 3B0B0 801C4028 0800222A */  slti       $v0, $s1, 0x8
    /* 3B0B4 801C402C DAFF4014 */  bnez       $v0, .L801C3F98
    /* 3B0B8 801C4030 0B002426 */   addiu     $a0, $s1, 0xB
    /* 3B0BC 801C4034 6000BF8F */  lw         $ra, 0x60($sp)
    /* 3B0C0 801C4038 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 3B0C4 801C403C 5800B48F */  lw         $s4, 0x58($sp)
    /* 3B0C8 801C4040 5400B38F */  lw         $s3, 0x54($sp)
    /* 3B0CC 801C4044 5000B28F */  lw         $s2, 0x50($sp)
    /* 3B0D0 801C4048 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 3B0D4 801C404C 4800B08F */  lw         $s0, 0x48($sp)
    /* 3B0D8 801C4050 6800BD27 */  addiu      $sp, $sp, 0x68
    /* 3B0DC 801C4054 0800E003 */  jr         $ra
    /* 3B0E0 801C4058 00000000 */   nop
endlabel func_801C3EBC
