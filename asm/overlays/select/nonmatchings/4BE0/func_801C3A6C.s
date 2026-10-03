nonmatching func_801C3A6C, 0x450

glabel func_801C3A6C
    /* 3AAF4 801C3A6C 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 3AAF8 801C3A70 37000424 */  addiu      $a0, $zero, 0x37
    /* 3AAFC 801C3A74 00300524 */  addiu      $a1, $zero, 0x3000
    /* 3AB00 801C3A78 0001063C */  lui        $a2, (0x1000000 >> 16)
    /* 3AB04 801C3A7C 21380000 */  addu       $a3, $zero, $zero
    /* 3AB08 801C3A80 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 3AB0C 801C3A84 21A80000 */  addu       $s5, $zero, $zero
    /* 3AB10 801C3A88 6000B6AF */  sw         $s6, 0x60($sp)
    /* 3AB14 801C3A8C 00101624 */  addiu      $s6, $zero, 0x1000
    /* 3AB18 801C3A90 6400B7AF */  sw         $s7, 0x64($sp)
    /* 3AB1C 801C3A94 80001724 */  addiu      $s7, $zero, 0x80
    /* 3AB20 801C3A98 6800BEAF */  sw         $fp, 0x68($sp)
    /* 3AB24 801C3A9C 01001E24 */  addiu      $fp, $zero, 0x1
    /* 3AB28 801C3AA0 4800B0AF */  sw         $s0, 0x48($sp)
    /* 3AB2C 801C3AA4 1180103C */  lui        $s0, %hi(D_8010A5B1)
    /* 3AB30 801C3AA8 B1A51092 */  lbu        $s0, %lo(D_8010A5B1)($s0)
    /* 3AB34 801C3AAC 0D000224 */  addiu      $v0, $zero, 0xD
    /* 3AB38 801C3AB0 5000B2AF */  sw         $s2, 0x50($sp)
    /* 3AB3C 801C3AB4 00101224 */  addiu      $s2, $zero, 0x1000
    /* 3AB40 801C3AB8 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 3AB44 801C3ABC 50001124 */  addiu      $s1, $zero, 0x50
    /* 3AB48 801C3AC0 5800B4AF */  sw         $s4, 0x58($sp)
    /* 3AB4C 801C3AC4 06001424 */  addiu      $s4, $zero, 0x6
    /* 3AB50 801C3AC8 5400B3AF */  sw         $s3, 0x54($sp)
    /* 3AB54 801C3ACC 01001324 */  addiu      $s3, $zero, 0x1
    /* 3AB58 801C3AD0 6C00BFAF */  sw         $ra, 0x6C($sp)
    /* 3AB5C 801C3AD4 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3AB60 801C3AD8 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3AB64 801C3ADC 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 3AB68 801C3AE0 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3AB6C 801C3AE4 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3AB70 801C3AE8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3AB74 801C3AEC 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 3AB78 801C3AF0 3000B1AF */  sw         $s1, 0x30($sp)
    /* 3AB7C 801C3AF4 3400B1AF */  sw         $s1, 0x34($sp)
    /* 3AB80 801C3AF8 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3AB84 801C3AFC 3C00B4AF */  sw         $s4, 0x3C($sp)
    /* 3AB88 801C3B00 4000B3AF */  sw         $s3, 0x40($sp)
    /* 3AB8C 801C3B04 82801000 */  srl        $s0, $s0, 2
    /* 3AB90 801C3B08 FC001036 */  ori        $s0, $s0, 0xFC
    /* 3AB94 801C3B0C ED4F060C */  jal        func_80193FB4
    /* 3AB98 801C3B10 1800B0AF */   sw        $s0, 0x18($sp)
    /* 3AB9C 801C3B14 38000424 */  addiu      $a0, $zero, 0x38
    /* 3ABA0 801C3B18 01300524 */  addiu      $a1, $zero, 0x3001
    /* 3ABA4 801C3B1C 0001063C */  lui        $a2, (0x1000000 >> 16)
    /* 3ABA8 801C3B20 21380000 */  addu       $a3, $zero, $zero
    /* 3ABAC 801C3B24 0E000224 */  addiu      $v0, $zero, 0xE
    /* 3ABB0 801C3B28 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3ABB4 801C3B2C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3ABB8 801C3B30 1800B0AF */  sw         $s0, 0x18($sp)
    /* 3ABBC 801C3B34 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 3ABC0 801C3B38 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3ABC4 801C3B3C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3ABC8 801C3B40 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3ABCC 801C3B44 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 3ABD0 801C3B48 3000B1AF */  sw         $s1, 0x30($sp)
    /* 3ABD4 801C3B4C 3400B1AF */  sw         $s1, 0x34($sp)
    /* 3ABD8 801C3B50 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3ABDC 801C3B54 3C00B4AF */  sw         $s4, 0x3C($sp)
    /* 3ABE0 801C3B58 ED4F060C */  jal        func_80193FB4
    /* 3ABE4 801C3B5C 4000B3AF */   sw        $s3, 0x40($sp)
    /* 3ABE8 801C3B60 39000424 */  addiu      $a0, $zero, 0x39
    /* 3ABEC 801C3B64 02300524 */  addiu      $a1, $zero, 0x3002
    /* 3ABF0 801C3B68 0001063C */  lui        $a2, (0x1000000 >> 16)
    /* 3ABF4 801C3B6C 21380000 */  addu       $a3, $zero, $zero
    /* 3ABF8 801C3B70 0F000224 */  addiu      $v0, $zero, 0xF
    /* 3ABFC 801C3B74 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3AC00 801C3B78 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3AC04 801C3B7C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 3AC08 801C3B80 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 3AC0C 801C3B84 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3AC10 801C3B88 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3AC14 801C3B8C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3AC18 801C3B90 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 3AC1C 801C3B94 3000B1AF */  sw         $s1, 0x30($sp)
    /* 3AC20 801C3B98 3400B1AF */  sw         $s1, 0x34($sp)
    /* 3AC24 801C3B9C 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3AC28 801C3BA0 3C00B4AF */  sw         $s4, 0x3C($sp)
    /* 3AC2C 801C3BA4 ED4F060C */  jal        func_80193FB4
    /* 3AC30 801C3BA8 4000B3AF */   sw        $s3, 0x40($sp)
    /* 3AC34 801C3BAC 01000424 */  addiu      $a0, $zero, 0x1
    /* 3AC38 801C3BB0 03700524 */  addiu      $a1, $zero, 0x7003
    /* 3AC3C 801C3BB4 21300000 */  addu       $a2, $zero, $zero
    /* 3AC40 801C3BB8 21380000 */  addu       $a3, $zero, $zero
    /* 3AC44 801C3BBC 1A000224 */  addiu      $v0, $zero, 0x1A
    /* 3AC48 801C3BC0 80001024 */  addiu      $s0, $zero, 0x80
    /* 3AC4C 801C3BC4 04001124 */  addiu      $s1, $zero, 0x4
    /* 3AC50 801C3BC8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3AC54 801C3BCC 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3AC58 801C3BD0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3AC5C 801C3BD4 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 3AC60 801C3BD8 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3AC64 801C3BDC 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3AC68 801C3BE0 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3AC6C 801C3BE4 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 3AC70 801C3BE8 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3AC74 801C3BEC 3400B0AF */  sw         $s0, 0x34($sp)
    /* 3AC78 801C3BF0 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3AC7C 801C3BF4 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 3AC80 801C3BF8 ED4F060C */  jal        func_80193FB4
    /* 3AC84 801C3BFC 4000B3AF */   sw        $s3, 0x40($sp)
    /* 3AC88 801C3C00 02000424 */  addiu      $a0, $zero, 0x2
    /* 3AC8C 801C3C04 00700524 */  addiu      $a1, $zero, 0x7000
    /* 3AC90 801C3C08 21300000 */  addu       $a2, $zero, $zero
    /* 3AC94 801C3C0C 21380000 */  addu       $a3, $zero, $zero
    /* 3AC98 801C3C10 09000224 */  addiu      $v0, $zero, 0x9
    /* 3AC9C 801C3C14 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3ACA0 801C3C18 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3ACA4 801C3C1C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3ACA8 801C3C20 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 3ACAC 801C3C24 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3ACB0 801C3C28 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3ACB4 801C3C2C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3ACB8 801C3C30 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 3ACBC 801C3C34 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3ACC0 801C3C38 3400B0AF */  sw         $s0, 0x34($sp)
    /* 3ACC4 801C3C3C 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3ACC8 801C3C40 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 3ACCC 801C3C44 ED4F060C */  jal        func_80193FB4
    /* 3ACD0 801C3C48 4000B3AF */   sw        $s3, 0x40($sp)
    /* 3ACD4 801C3C4C 0A000424 */  addiu      $a0, $zero, 0xA
    /* 3ACD8 801C3C50 02700524 */  addiu      $a1, $zero, 0x7002
    /* 3ACDC 801C3C54 21300000 */  addu       $a2, $zero, $zero
    /* 3ACE0 801C3C58 21380000 */  addu       $a3, $zero, $zero
    /* 3ACE4 801C3C5C 0C001424 */  addiu      $s4, $zero, 0xC
    /* 3ACE8 801C3C60 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3ACEC 801C3C64 1400B4AF */  sw         $s4, 0x14($sp)
    /* 3ACF0 801C3C68 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3ACF4 801C3C6C 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 3ACF8 801C3C70 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3ACFC 801C3C74 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3AD00 801C3C78 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3AD04 801C3C7C 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 3AD08 801C3C80 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3AD0C 801C3C84 3400B0AF */  sw         $s0, 0x34($sp)
    /* 3AD10 801C3C88 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3AD14 801C3C8C 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 3AD18 801C3C90 ED4F060C */  jal        func_80193FB4
    /* 3AD1C 801C3C94 4000B3AF */   sw        $s3, 0x40($sp)
    /* 3AD20 801C3C98 14000424 */  addiu      $a0, $zero, 0x14
    /* 3AD24 801C3C9C 01700524 */  addiu      $a1, $zero, 0x7001
    /* 3AD28 801C3CA0 0040063C */  lui        $a2, (0x40000000 >> 16)
    /* 3AD2C 801C3CA4 21380000 */  addu       $a3, $zero, $zero
    /* 3AD30 801C3CA8 70000224 */  addiu      $v0, $zero, 0x70
    /* 3AD34 801C3CAC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3AD38 801C3CB0 1400B4AF */  sw         $s4, 0x14($sp)
    /* 3AD3C 801C3CB4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3AD40 801C3CB8 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 3AD44 801C3CBC 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3AD48 801C3CC0 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3AD4C 801C3CC4 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3AD50 801C3CC8 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 3AD54 801C3CCC 3000A2AF */  sw         $v0, 0x30($sp)
    /* 3AD58 801C3CD0 3400A2AF */  sw         $v0, 0x34($sp)
    /* 3AD5C 801C3CD4 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3AD60 801C3CD8 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 3AD64 801C3CDC ED4F060C */  jal        func_80193FB4
    /* 3AD68 801C3CE0 4000B3AF */   sw        $s3, 0x40($sp)
    /* 3AD6C 801C3CE4 FF00B032 */  andi       $s0, $s5, 0xFF
  .L801C3CE8:
    /* 3AD70 801C3CE8 0B000426 */  addiu      $a0, $s0, 0xB
    /* 3AD74 801C3CEC 0C700526 */  addiu      $a1, $s0, 0x700C
    /* 3AD78 801C3CF0 21300000 */  addu       $a2, $zero, $zero
    /* 3AD7C 801C3CF4 21380000 */  addu       $a3, $zero, $zero
    /* 3AD80 801C3CF8 0C000324 */  addiu      $v1, $zero, 0xC
    /* 3AD84 801C3CFC 1400A3AF */  sw         $v1, 0x14($sp)
    /* 3AD88 801C3D00 04000324 */  addiu      $v1, $zero, 0x4
    /* 3AD8C 801C3D04 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3AD90 801C3D08 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3AD94 801C3D0C 1C00B6AF */  sw         $s6, 0x1C($sp)
    /* 3AD98 801C3D10 2000B6AF */  sw         $s6, 0x20($sp)
    /* 3AD9C 801C3D14 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3ADA0 801C3D18 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3ADA4 801C3D1C 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 3ADA8 801C3D20 3000B7AF */  sw         $s7, 0x30($sp)
    /* 3ADAC 801C3D24 3400B7AF */  sw         $s7, 0x34($sp)
    /* 3ADB0 801C3D28 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3ADB4 801C3D2C 3C00A3AF */  sw         $v1, 0x3C($sp)
    /* 3ADB8 801C3D30 ED4F060C */  jal        func_80193FB4
    /* 3ADBC 801C3D34 4000BEAF */   sw        $fp, 0x40($sp)
    /* 3ADC0 801C3D38 15000426 */  addiu      $a0, $s0, 0x15
    /* 3ADC4 801C3D3C 04700526 */  addiu      $a1, $s0, 0x7004
    /* 3ADC8 801C3D40 0040063C */  lui        $a2, (0x40000000 >> 16)
    /* 3ADCC 801C3D44 21380000 */  addu       $a3, $zero, $zero
    /* 3ADD0 801C3D48 0C000324 */  addiu      $v1, $zero, 0xC
    /* 3ADD4 801C3D4C 70000224 */  addiu      $v0, $zero, 0x70
    /* 3ADD8 801C3D50 1400A3AF */  sw         $v1, 0x14($sp)
    /* 3ADDC 801C3D54 04000324 */  addiu      $v1, $zero, 0x4
    /* 3ADE0 801C3D58 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3ADE4 801C3D5C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3ADE8 801C3D60 1C00B6AF */  sw         $s6, 0x1C($sp)
    /* 3ADEC 801C3D64 2000B6AF */  sw         $s6, 0x20($sp)
    /* 3ADF0 801C3D68 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3ADF4 801C3D6C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3ADF8 801C3D70 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 3ADFC 801C3D74 3000A2AF */  sw         $v0, 0x30($sp)
    /* 3AE00 801C3D78 3400A2AF */  sw         $v0, 0x34($sp)
    /* 3AE04 801C3D7C 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3AE08 801C3D80 3C00A3AF */  sw         $v1, 0x3C($sp)
    /* 3AE0C 801C3D84 ED4F060C */  jal        func_80193FB4
    /* 3AE10 801C3D88 4000BEAF */   sw        $fp, 0x40($sp)
    /* 3AE14 801C3D8C 0100B526 */  addiu      $s5, $s5, 0x1
    /* 3AE18 801C3D90 FF00A232 */  andi       $v0, $s5, 0xFF
    /* 3AE1C 801C3D94 0800422C */  sltiu      $v0, $v0, 0x8
    /* 3AE20 801C3D98 D3FF4014 */  bnez       $v0, .L801C3CE8
    /* 3AE24 801C3D9C FF00B032 */   andi      $s0, $s5, 0xFF
    /* 3AE28 801C3DA0 21200000 */  addu       $a0, $zero, $zero
    /* 3AE2C 801C3DA4 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 3AE30 801C3DA8 38010224 */  addiu      $v0, $zero, 0x138
    /* 3AE34 801C3DAC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3AE38 801C3DB0 03000224 */  addiu      $v0, $zero, 0x3
    /* 3AE3C 801C3DB4 2400A2AF */  sw         $v0, 0x24($sp)
    /* 3AE40 801C3DB8 1D80023C */  lui        $v0, %hi(D_801D4298)
    /* 3AE44 801C3DBC 98424290 */  lbu        $v0, %lo(D_801D4298)($v0)
    /* 3AE48 801C3DC0 01001024 */  addiu      $s0, $zero, 0x1
    /* 3AE4C 801C3DC4 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3AE50 801C3DC8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3AE54 801C3DCC 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 3AE58 801C3DD0 2000A0AF */  sw         $zero, 0x20($sp)
    /* 3AE5C 801C3DD4 2800B0AF */  sw         $s0, 0x28($sp)
    /* 3AE60 801C3DD8 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 3AE64 801C3DDC 80100200 */  sll        $v0, $v0, 2
    /* 3AE68 801C3DE0 1D80013C */  lui        $at, %hi(D_801D5848)
    /* 3AE6C 801C3DE4 21082200 */  addu       $at, $at, $v0
    /* 3AE70 801C3DE8 4858258C */  lw         $a1, %lo(D_801D5848)($at)
    /* 3AE74 801C3DEC B850060C */  jal        func_801942E0
    /* 3AE78 801C3DF0 3E000724 */   addiu     $a3, $zero, 0x3E
    /* 3AE7C 801C3DF4 1D80043C */  lui        $a0, %hi(D_801D4298)
    /* 3AE80 801C3DF8 98428480 */  lb         $a0, %lo(D_801D4298)($a0)
    /* 3AE84 801C3DFC 220E070C */  jal        func_801C3888
    /* 3AE88 801C3E00 00000000 */   nop
    /* 3AE8C 801C3E04 21200000 */  addu       $a0, $zero, $zero
    /* 3AE90 801C3E08 21280000 */  addu       $a1, $zero, $zero
    /* 3AE94 801C3E0C 1E80063C */  lui        $a2, %hi(D_801D8D78)
    /* 3AE98 801C3E10 788DC624 */  addiu      $a2, $a2, %lo(D_801D8D78)
    /* 3AE9C 801C3E14 21380000 */  addu       $a3, $zero, $zero
    /* 3AEA0 801C3E18 4E000224 */  addiu      $v0, $zero, 0x4E
    /* 3AEA4 801C3E1C 0200C2A4 */  sh         $v0, 0x2($a2)
    /* 3AEA8 801C3E20 40010224 */  addiu      $v0, $zero, 0x140
    /* 3AEAC 801C3E24 0400C2A4 */  sh         $v0, 0x4($a2)
    /* 3AEB0 801C3E28 22000224 */  addiu      $v0, $zero, 0x22
    /* 3AEB4 801C3E2C 0600C2A4 */  sh         $v0, 0x6($a2)
    /* 3AEB8 801C3E30 20000224 */  addiu      $v0, $zero, 0x20
    /* 3AEBC 801C3E34 1100C2A0 */  sb         $v0, 0x11($a2)
    /* 3AEC0 801C3E38 0E00C2A0 */  sb         $v0, 0xE($a2)
    /* 3AEC4 801C3E3C 0B00C2A0 */  sb         $v0, 0xB($a2)
    /* 3AEC8 801C3E40 0800C2A0 */  sb         $v0, 0x8($a2)
    /* 3AECC 801C3E44 1200C2A0 */  sb         $v0, 0x12($a2)
    /* 3AED0 801C3E48 0F00C2A0 */  sb         $v0, 0xF($a2)
    /* 3AED4 801C3E4C 0C00C2A0 */  sb         $v0, 0xC($a2)
    /* 3AED8 801C3E50 0900C2A0 */  sb         $v0, 0x9($a2)
    /* 3AEDC 801C3E54 60000224 */  addiu      $v0, $zero, 0x60
    /* 3AEE0 801C3E58 1300C2A0 */  sb         $v0, 0x13($a2)
    /* 3AEE4 801C3E5C 1000C2A0 */  sb         $v0, 0x10($a2)
    /* 3AEE8 801C3E60 0D00C2A0 */  sb         $v0, 0xD($a2)
    /* 3AEEC 801C3E64 0A00C2A0 */  sb         $v0, 0xA($a2)
    /* 3AEF0 801C3E68 02000224 */  addiu      $v0, $zero, 0x2
    /* 3AEF4 801C3E6C 0000C0A4 */  sh         $zero, 0x0($a2)
    /* 3AEF8 801C3E70 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3AEFC 801C3E74 7850060C */  jal        func_801941E0
    /* 3AF00 801C3E78 1400B0AF */   sw        $s0, 0x14($sp)
    /* 3AF04 801C3E7C 80000224 */  addiu      $v0, $zero, 0x80
    /* 3AF08 801C3E80 801F013C */  lui        $at, (0x1F8002A2 >> 16)
    /* 3AF0C 801C3E84 A20222A0 */  sb         $v0, (0x1F8002A2 & 0xFFFF)($at)
    /* 3AF10 801C3E88 6C00BF8F */  lw         $ra, 0x6C($sp)
    /* 3AF14 801C3E8C 6800BE8F */  lw         $fp, 0x68($sp)
    /* 3AF18 801C3E90 6400B78F */  lw         $s7, 0x64($sp)
    /* 3AF1C 801C3E94 6000B68F */  lw         $s6, 0x60($sp)
    /* 3AF20 801C3E98 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 3AF24 801C3E9C 5800B48F */  lw         $s4, 0x58($sp)
    /* 3AF28 801C3EA0 5400B38F */  lw         $s3, 0x54($sp)
    /* 3AF2C 801C3EA4 5000B28F */  lw         $s2, 0x50($sp)
    /* 3AF30 801C3EA8 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 3AF34 801C3EAC 4800B08F */  lw         $s0, 0x48($sp)
    /* 3AF38 801C3EB0 7000BD27 */  addiu      $sp, $sp, 0x70
    /* 3AF3C 801C3EB4 0800E003 */  jr         $ra
    /* 3AF40 801C3EB8 00000000 */   nop
endlabel func_801C3A6C
