nonmatching func_801C4DE8, 0x1F8

glabel func_801C4DE8
    /* 3BE70 801C4DE8 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 3BE74 801C4DEC 21200000 */  addu       $a0, $zero, $zero
    /* 3BE78 801C4DF0 5C00BFAF */  sw         $ra, 0x5C($sp)
    /* 3BE7C 801C4DF4 5800B4AF */  sw         $s4, 0x58($sp)
    /* 3BE80 801C4DF8 5400B3AF */  sw         $s3, 0x54($sp)
    /* 3BE84 801C4DFC 5000B2AF */  sw         $s2, 0x50($sp)
    /* 3BE88 801C4E00 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 3BE8C 801C4E04 4E39060C */  jal        func_8018E538
    /* 3BE90 801C4E08 4800B0AF */   sw        $s0, 0x48($sp)
    /* 3BE94 801C4E0C 01000424 */  addiu      $a0, $zero, 0x1
    /* 3BE98 801C4E10 04300524 */  addiu      $a1, $zero, 0x3004
    /* 3BE9C 801C4E14 21300000 */  addu       $a2, $zero, $zero
    /* 3BEA0 801C4E18 21380000 */  addu       $a3, $zero, $zero
    /* 3BEA4 801C4E1C 18001424 */  addiu      $s4, $zero, 0x18
    /* 3BEA8 801C4E20 00101224 */  addiu      $s2, $zero, 0x1000
    /* 3BEAC 801C4E24 A8FF1124 */  addiu      $s1, $zero, -0x58
    /* 3BEB0 801C4E28 80001024 */  addiu      $s0, $zero, 0x80
    /* 3BEB4 801C4E2C 01001324 */  addiu      $s3, $zero, 0x1
    /* 3BEB8 801C4E30 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3BEBC 801C4E34 1400B4AF */  sw         $s4, 0x14($sp)
    /* 3BEC0 801C4E38 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3BEC4 801C4E3C 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 3BEC8 801C4E40 2000A0AF */  sw         $zero, 0x20($sp)
    /* 3BECC 801C4E44 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3BED0 801C4E48 2800B1AF */  sw         $s1, 0x28($sp)
    /* 3BED4 801C4E4C 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 3BED8 801C4E50 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3BEDC 801C4E54 3400B0AF */  sw         $s0, 0x34($sp)
    /* 3BEE0 801C4E58 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3BEE4 801C4E5C 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 3BEE8 801C4E60 ED4F060C */  jal        func_80193FB4
    /* 3BEEC 801C4E64 4000B3AF */   sw        $s3, 0x40($sp)
    /* 3BEF0 801C4E68 02000424 */  addiu      $a0, $zero, 0x2
    /* 3BEF4 801C4E6C 0C300524 */  addiu      $a1, $zero, 0x300C
    /* 3BEF8 801C4E70 21300000 */  addu       $a2, $zero, $zero
    /* 3BEFC 801C4E74 21380000 */  addu       $a3, $zero, $zero
    /* 3BF00 801C4E78 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3BF04 801C4E7C 1400B4AF */  sw         $s4, 0x14($sp)
    /* 3BF08 801C4E80 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3BF0C 801C4E84 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 3BF10 801C4E88 2000A0AF */  sw         $zero, 0x20($sp)
    /* 3BF14 801C4E8C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3BF18 801C4E90 2800B1AF */  sw         $s1, 0x28($sp)
    /* 3BF1C 801C4E94 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 3BF20 801C4E98 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3BF24 801C4E9C 3400B0AF */  sw         $s0, 0x34($sp)
    /* 3BF28 801C4EA0 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3BF2C 801C4EA4 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 3BF30 801C4EA8 ED4F060C */  jal        func_80193FB4
    /* 3BF34 801C4EAC 4000B3AF */   sw        $s3, 0x40($sp)
    /* 3BF38 801C4EB0 21200000 */  addu       $a0, $zero, $zero
    /* 3BF3C 801C4EB4 C839060C */  jal        func_8018E720
    /* 3BF40 801C4EB8 21280000 */   addu      $a1, $zero, $zero
    /* 3BF44 801C4EBC 37000424 */  addiu      $a0, $zero, 0x37
    /* 3BF48 801C4EC0 00300524 */  addiu      $a1, $zero, 0x3000
    /* 3BF4C 801C4EC4 0001063C */  lui        $a2, (0x1000000 >> 16)
    /* 3BF50 801C4EC8 21380000 */  addu       $a3, $zero, $zero
    /* 3BF54 801C4ECC 0D000224 */  addiu      $v0, $zero, 0xD
    /* 3BF58 801C4ED0 1180113C */  lui        $s1, %hi(D_8010A5B1)
    /* 3BF5C 801C4ED4 B1A53192 */  lbu        $s1, %lo(D_8010A5B1)($s1)
    /* 3BF60 801C4ED8 06001424 */  addiu      $s4, $zero, 0x6
    /* 3BF64 801C4EDC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3BF68 801C4EE0 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3BF6C 801C4EE4 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 3BF70 801C4EE8 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3BF74 801C4EEC 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3BF78 801C4EF0 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3BF7C 801C4EF4 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 3BF80 801C4EF8 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3BF84 801C4EFC 3400B0AF */  sw         $s0, 0x34($sp)
    /* 3BF88 801C4F00 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3BF8C 801C4F04 3C00B4AF */  sw         $s4, 0x3C($sp)
    /* 3BF90 801C4F08 4000B3AF */  sw         $s3, 0x40($sp)
    /* 3BF94 801C4F0C 82881100 */  srl        $s1, $s1, 2
    /* 3BF98 801C4F10 FC003136 */  ori        $s1, $s1, 0xFC
    /* 3BF9C 801C4F14 ED4F060C */  jal        func_80193FB4
    /* 3BFA0 801C4F18 1800B1AF */   sw        $s1, 0x18($sp)
    /* 3BFA4 801C4F1C 38000424 */  addiu      $a0, $zero, 0x38
    /* 3BFA8 801C4F20 01300524 */  addiu      $a1, $zero, 0x3001
    /* 3BFAC 801C4F24 0001063C */  lui        $a2, (0x1000000 >> 16)
    /* 3BFB0 801C4F28 21380000 */  addu       $a3, $zero, $zero
    /* 3BFB4 801C4F2C 0E000224 */  addiu      $v0, $zero, 0xE
    /* 3BFB8 801C4F30 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3BFBC 801C4F34 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3BFC0 801C4F38 1800B1AF */  sw         $s1, 0x18($sp)
    /* 3BFC4 801C4F3C 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 3BFC8 801C4F40 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3BFCC 801C4F44 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3BFD0 801C4F48 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3BFD4 801C4F4C 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 3BFD8 801C4F50 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3BFDC 801C4F54 3400B0AF */  sw         $s0, 0x34($sp)
    /* 3BFE0 801C4F58 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3BFE4 801C4F5C 3C00B4AF */  sw         $s4, 0x3C($sp)
    /* 3BFE8 801C4F60 ED4F060C */  jal        func_80193FB4
    /* 3BFEC 801C4F64 4000B3AF */   sw        $s3, 0x40($sp)
    /* 3BFF0 801C4F68 39000424 */  addiu      $a0, $zero, 0x39
    /* 3BFF4 801C4F6C 02300524 */  addiu      $a1, $zero, 0x3002
    /* 3BFF8 801C4F70 0001063C */  lui        $a2, (0x1000000 >> 16)
    /* 3BFFC 801C4F74 21380000 */  addu       $a3, $zero, $zero
    /* 3C000 801C4F78 0F000224 */  addiu      $v0, $zero, 0xF
    /* 3C004 801C4F7C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3C008 801C4F80 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3C00C 801C4F84 1800B1AF */  sw         $s1, 0x18($sp)
    /* 3C010 801C4F88 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 3C014 801C4F8C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3C018 801C4F90 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3C01C 801C4F94 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3C020 801C4F98 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 3C024 801C4F9C 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3C028 801C4FA0 3400B0AF */  sw         $s0, 0x34($sp)
    /* 3C02C 801C4FA4 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3C030 801C4FA8 3C00B4AF */  sw         $s4, 0x3C($sp)
    /* 3C034 801C4FAC ED4F060C */  jal        func_80193FB4
    /* 3C038 801C4FB0 4000B3AF */   sw        $s3, 0x40($sp)
    /* 3C03C 801C4FB4 801F013C */  lui        $at, (0x1F800294 >> 16)
    /* 3C040 801C4FB8 940220A4 */  sh         $zero, (0x1F800294 & 0xFFFF)($at)
    /* 3C044 801C4FBC 5C00BF8F */  lw         $ra, 0x5C($sp)
    /* 3C048 801C4FC0 5800B48F */  lw         $s4, 0x58($sp)
    /* 3C04C 801C4FC4 5400B38F */  lw         $s3, 0x54($sp)
    /* 3C050 801C4FC8 5000B28F */  lw         $s2, 0x50($sp)
    /* 3C054 801C4FCC 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 3C058 801C4FD0 4800B08F */  lw         $s0, 0x48($sp)
    /* 3C05C 801C4FD4 6000BD27 */  addiu      $sp, $sp, 0x60
    /* 3C060 801C4FD8 0800E003 */  jr         $ra
    /* 3C064 801C4FDC 00000000 */   nop
endlabel func_801C4DE8
