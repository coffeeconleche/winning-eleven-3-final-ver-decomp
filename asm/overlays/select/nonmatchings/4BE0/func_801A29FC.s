nonmatching func_801A29FC, 0x140

glabel func_801A29FC
    /* 19A84 801A29FC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 19A88 801A2A00 1000B0AF */  sw         $s0, 0x10($sp)
    /* 19A8C 801A2A04 1E80103C */  lui        $s0, %hi(D_801D9300)
    /* 19A90 801A2A08 00931026 */  addiu      $s0, $s0, %lo(D_801D9300)
    /* 19A94 801A2A0C 21200002 */  addu       $a0, $s0, $zero
    /* 19A98 801A2A10 5C010524 */  addiu      $a1, $zero, 0x15C
    /* 19A9C 801A2A14 14000624 */  addiu      $a2, $zero, 0x14
    /* 19AA0 801A2A18 FCFF0726 */  addiu      $a3, $s0, -0x4
    /* 19AA4 801A2A1C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 19AA8 801A2A20 1800B2AF */  sw         $s2, 0x18($sp)
    /* 19AAC 801A2A24 823A060C */  jal        func_8018EA08
    /* 19AB0 801A2A28 1400B1AF */   sw        $s1, 0x14($sp)
    /* 19AB4 801A2A2C 01005130 */  andi       $s1, $v0, 0x1
    /* 19AB8 801A2A30 18000426 */  addiu      $a0, $s0, 0x18
    /* 19ABC 801A2A34 52FF0524 */  addiu      $a1, $zero, -0xAE
    /* 19AC0 801A2A38 653A060C */  jal        func_8018E994
    /* 19AC4 801A2A3C 20000624 */   addiu     $a2, $zero, 0x20
    /* 19AC8 801A2A40 24882202 */  and        $s1, $s1, $v0
    /* 19ACC 801A2A44 34000426 */  addiu      $a0, $s0, 0x34
    /* 19AD0 801A2A48 01000524 */  addiu      $a1, $zero, 0x1
    /* 19AD4 801A2A4C 653A060C */  jal        func_8018E994
    /* 19AD8 801A2A50 20000624 */   addiu     $a2, $zero, 0x20
    /* 19ADC 801A2A54 24882202 */  and        $s1, $s1, $v0
    /* 19AE0 801A2A58 1080123C */  lui        $s2, %hi(D_800FF748)
    /* 19AE4 801A2A5C 48F75226 */  addiu      $s2, $s2, %lo(D_800FF748)
    /* 19AE8 801A2A60 E85E4426 */  addiu      $a0, $s2, 0x5EE8
    /* 19AEC 801A2A64 21280000 */  addu       $a1, $zero, $zero
    /* 19AF0 801A2A68 653A060C */  jal        func_8018E994
    /* 19AF4 801A2A6C 20000624 */   addiu     $a2, $zero, 0x20
    /* 19AF8 801A2A70 24882202 */  and        $s1, $s1, $v0
    /* 19AFC 801A2A74 385F4426 */  addiu      $a0, $s2, 0x5F38
    /* 19B00 801A2A78 21280000 */  addu       $a1, $zero, $zero
    /* 19B04 801A2A7C 653A060C */  jal        func_8018E994
    /* 19B08 801A2A80 20000624 */   addiu     $a2, $zero, 0x20
    /* 19B0C 801A2A84 24882202 */  and        $s1, $s1, $v0
    /* 19B10 801A2A88 B48D060C */  jal        func_801A36D0
    /* 19B14 801A2A8C 01000424 */   addiu     $a0, $zero, 0x1
    /* 19B18 801A2A90 105F4426 */  addiu      $a0, $s2, 0x5F10
    /* 19B1C 801A2A94 FF005030 */  andi       $s0, $v0, 0xFF
    /* 19B20 801A2A98 1980013C */  lui        $at, %hi(D_80189FFC)
    /* 19B24 801A2A9C 21083000 */  addu       $at, $at, $s0
    /* 19B28 801A2AA0 FC9F2590 */  lbu        $a1, %lo(D_80189FFC)($at)
    /* 19B2C 801A2AA4 653A060C */  jal        func_8018E994
    /* 19B30 801A2AA8 20000624 */   addiu     $a2, $zero, 0x20
    /* 19B34 801A2AAC 24882202 */  and        $s1, $s1, $v0
    /* 19B38 801A2AB0 605F4426 */  addiu      $a0, $s2, 0x5F60
    /* 19B3C 801A2AB4 1980013C */  lui        $at, %hi(D_8018A004)
    /* 19B40 801A2AB8 21083000 */  addu       $at, $at, $s0
    /* 19B44 801A2ABC 04A02590 */  lbu        $a1, %lo(D_8018A004)($at)
    /* 19B48 801A2AC0 653A060C */  jal        func_8018E994
    /* 19B4C 801A2AC4 20000624 */   addiu     $a2, $zero, 0x20
    /* 19B50 801A2AC8 24882202 */  and        $s1, $s1, $v0
    /* 19B54 801A2ACC 885F4426 */  addiu      $a0, $s2, 0x5F88
    /* 19B58 801A2AD0 21280000 */  addu       $a1, $zero, $zero
    /* 19B5C 801A2AD4 653A060C */  jal        func_8018E994
    /* 19B60 801A2AD8 20000624 */   addiu     $a2, $zero, 0x20
    /* 19B64 801A2ADC 801F033C */  lui        $v1, (0x1F8002E1 >> 16)
    /* 19B68 801A2AE0 E1026390 */  lbu        $v1, (0x1F8002E1 & 0xFFFF)($v1)
    /* 19B6C 801A2AE4 00000000 */  nop
    /* 19B70 801A2AE8 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 19B74 801A2AEC 0200632C */  sltiu      $v1, $v1, 0x2
    /* 19B78 801A2AF0 03006010 */  beqz       $v1, .L801A2B00
    /* 19B7C 801A2AF4 24882202 */   and       $s1, $s1, $v0
    /* 19B80 801A2AF8 C38A0608 */  j          .L801A2B0C
    /* 19B84 801A2AFC 50604426 */   addiu     $a0, $s2, 0x6050
  .L801A2B00:
    /* 19B88 801A2B00 A739060C */  jal        func_8018E69C
    /* 19B8C 801A2B04 01000424 */   addiu     $a0, $zero, 0x1
    /* 19B90 801A2B08 B05F4426 */  addiu      $a0, $s2, 0x5FB0
  .L801A2B0C:
    /* 19B94 801A2B0C 21280000 */  addu       $a1, $zero, $zero
    /* 19B98 801A2B10 653A060C */  jal        func_8018E994
    /* 19B9C 801A2B14 20000624 */   addiu     $a2, $zero, 0x20
    /* 19BA0 801A2B18 24882202 */  and        $s1, $s1, $v0
    /* 19BA4 801A2B1C 21102002 */  addu       $v0, $s1, $zero
    /* 19BA8 801A2B20 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 19BAC 801A2B24 1800B28F */  lw         $s2, 0x18($sp)
    /* 19BB0 801A2B28 1400B18F */  lw         $s1, 0x14($sp)
    /* 19BB4 801A2B2C 1000B08F */  lw         $s0, 0x10($sp)
    /* 19BB8 801A2B30 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 19BBC 801A2B34 0800E003 */  jr         $ra
    /* 19BC0 801A2B38 00000000 */   nop
endlabel func_801A29FC
