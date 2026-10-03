nonmatching func_8019C85C, 0x2F8

glabel func_8019C85C
    /* 138E4 8019C85C 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* 138E8 8019C860 5400B3AF */  sw         $s3, 0x54($sp)
    /* 138EC 8019C864 1980133C */  lui        $s3, %hi(D_80189F88)
    /* 138F0 8019C868 889F7396 */  lhu        $s3, %lo(D_80189F88)($s3)
    /* 138F4 8019C86C 1E80043C */  lui        $a0, %hi(D_801D8C64)
    /* 138F8 8019C870 648C8490 */  lbu        $a0, %lo(D_801D8C64)($a0)
    /* 138FC 8019C874 01000524 */  addiu      $a1, $zero, 0x1
    /* 13900 8019C878 6400BFAF */  sw         $ra, 0x64($sp)
    /* 13904 8019C87C 6000B6AF */  sw         $s6, 0x60($sp)
    /* 13908 8019C880 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 1390C 8019C884 5800B4AF */  sw         $s4, 0x58($sp)
    /* 13910 8019C888 5000B2AF */  sw         $s2, 0x50($sp)
    /* 13914 8019C88C 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 13918 8019C890 4800B0AF */  sw         $s0, 0x48($sp)
    /* 1391C 8019C894 1579060C */  jal        func_8019E454
    /* 13920 8019C898 42991300 */   srl       $s3, $s3, 5
    /* 13924 8019C89C 1E000424 */  addiu      $a0, $zero, 0x1E
    /* 13928 8019C8A0 FFFF4530 */  andi       $a1, $v0, 0xFFFF
    /* 1392C 8019C8A4 21300000 */  addu       $a2, $zero, $zero
    /* 13930 8019C8A8 21380000 */  addu       $a3, $zero, $zero
    /* 13934 8019C8AC 18001624 */  addiu      $s6, $zero, 0x18
    /* 13938 8019C8B0 00101024 */  addiu      $s0, $zero, 0x1000
    /* 1393C 8019C8B4 A8FF1524 */  addiu      $s5, $zero, -0x58
    /* 13940 8019C8B8 DFFF1424 */  addiu      $s4, $zero, -0x21
    /* 13944 8019C8BC 80001124 */  addiu      $s1, $zero, 0x80
    /* 13948 8019C8C0 01001224 */  addiu      $s2, $zero, 0x1
    /* 1394C 8019C8C4 1000A0AF */  sw         $zero, 0x10($sp)
    /* 13950 8019C8C8 1400B6AF */  sw         $s6, 0x14($sp)
    /* 13954 8019C8CC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 13958 8019C8D0 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 1395C 8019C8D4 2000B0AF */  sw         $s0, 0x20($sp)
    /* 13960 8019C8D8 2400B5AF */  sw         $s5, 0x24($sp)
    /* 13964 8019C8DC 2800B4AF */  sw         $s4, 0x28($sp)
    /* 13968 8019C8E0 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 1396C 8019C8E4 3000B1AF */  sw         $s1, 0x30($sp)
    /* 13970 8019C8E8 3400B1AF */  sw         $s1, 0x34($sp)
    /* 13974 8019C8EC 3800A0AF */  sw         $zero, 0x38($sp)
    /* 13978 8019C8F0 3C00B2AF */  sw         $s2, 0x3C($sp)
    /* 1397C 8019C8F4 ED4F060C */  jal        func_80193FB4
    /* 13980 8019C8F8 4000B2AF */   sw        $s2, 0x40($sp)
    /* 13984 8019C8FC 22000424 */  addiu      $a0, $zero, 0x22
    /* 13988 8019C900 22300524 */  addiu      $a1, $zero, 0x3022
    /* 1398C 8019C904 21300000 */  addu       $a2, $zero, $zero
    /* 13990 8019C908 21380000 */  addu       $a3, $zero, $zero
    /* 13994 8019C90C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 13998 8019C910 1400B6AF */  sw         $s6, 0x14($sp)
    /* 1399C 8019C914 1800A0AF */  sw         $zero, 0x18($sp)
    /* 139A0 8019C918 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 139A4 8019C91C 2000B0AF */  sw         $s0, 0x20($sp)
    /* 139A8 8019C920 2400B5AF */  sw         $s5, 0x24($sp)
    /* 139AC 8019C924 2800B4AF */  sw         $s4, 0x28($sp)
    /* 139B0 8019C928 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 139B4 8019C92C 3000B1AF */  sw         $s1, 0x30($sp)
    /* 139B8 8019C930 3400B1AF */  sw         $s1, 0x34($sp)
    /* 139BC 8019C934 3800A0AF */  sw         $zero, 0x38($sp)
    /* 139C0 8019C938 3C00B2AF */  sw         $s2, 0x3C($sp)
    /* 139C4 8019C93C ED4F060C */  jal        func_80193FB4
    /* 139C8 8019C940 4000B2AF */   sw        $s2, 0x40($sp)
    /* 139CC 8019C944 1E80043C */  lui        $a0, %hi(D_801D8C65)
    /* 139D0 8019C948 658C8490 */  lbu        $a0, %lo(D_801D8C65)($a0)
    /* 139D4 8019C94C 1579060C */  jal        func_8019E454
    /* 139D8 8019C950 21280000 */   addu      $a1, $zero, $zero
    /* 139DC 8019C954 1F000424 */  addiu      $a0, $zero, 0x1F
    /* 139E0 8019C958 FFFF4530 */  andi       $a1, $v0, 0xFFFF
    /* 139E4 8019C95C 21300000 */  addu       $a2, $zero, $zero
    /* 139E8 8019C960 21380000 */  addu       $a3, $zero, $zero
    /* 139EC 8019C964 1000A0AF */  sw         $zero, 0x10($sp)
    /* 139F0 8019C968 1400B6AF */  sw         $s6, 0x14($sp)
    /* 139F4 8019C96C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 139F8 8019C970 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 139FC 8019C974 2000B0AF */  sw         $s0, 0x20($sp)
    /* 13A00 8019C978 2400B5AF */  sw         $s5, 0x24($sp)
    /* 13A04 8019C97C 2800B4AF */  sw         $s4, 0x28($sp)
    /* 13A08 8019C980 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 13A0C 8019C984 3000B3AF */  sw         $s3, 0x30($sp)
    /* 13A10 8019C988 3400B3AF */  sw         $s3, 0x34($sp)
    /* 13A14 8019C98C 3800A0AF */  sw         $zero, 0x38($sp)
    /* 13A18 8019C990 3C00B2AF */  sw         $s2, 0x3C($sp)
    /* 13A1C 8019C994 ED4F060C */  jal        func_80193FB4
    /* 13A20 8019C998 4000B2AF */   sw        $s2, 0x40($sp)
    /* 13A24 8019C99C 23000424 */  addiu      $a0, $zero, 0x23
    /* 13A28 8019C9A0 23300524 */  addiu      $a1, $zero, 0x3023
    /* 13A2C 8019C9A4 21300000 */  addu       $a2, $zero, $zero
    /* 13A30 8019C9A8 21380000 */  addu       $a3, $zero, $zero
    /* 13A34 8019C9AC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 13A38 8019C9B0 1400B6AF */  sw         $s6, 0x14($sp)
    /* 13A3C 8019C9B4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 13A40 8019C9B8 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 13A44 8019C9BC 2000B0AF */  sw         $s0, 0x20($sp)
    /* 13A48 8019C9C0 2400B5AF */  sw         $s5, 0x24($sp)
    /* 13A4C 8019C9C4 2800B4AF */  sw         $s4, 0x28($sp)
    /* 13A50 8019C9C8 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 13A54 8019C9CC 3000B3AF */  sw         $s3, 0x30($sp)
    /* 13A58 8019C9D0 3400B3AF */  sw         $s3, 0x34($sp)
    /* 13A5C 8019C9D4 3800A0AF */  sw         $zero, 0x38($sp)
    /* 13A60 8019C9D8 3C00B2AF */  sw         $s2, 0x3C($sp)
    /* 13A64 8019C9DC ED4F060C */  jal        func_80193FB4
    /* 13A68 8019C9E0 4000B2AF */   sw        $s2, 0x40($sp)
    /* 13A6C 8019C9E4 1E80043C */  lui        $a0, %hi(D_801D8C66)
    /* 13A70 8019C9E8 668C8490 */  lbu        $a0, %lo(D_801D8C66)($a0)
    /* 13A74 8019C9EC 1579060C */  jal        func_8019E454
    /* 13A78 8019C9F0 01000524 */   addiu     $a1, $zero, 0x1
    /* 13A7C 8019C9F4 20000424 */  addiu      $a0, $zero, 0x20
    /* 13A80 8019C9F8 FFFF4530 */  andi       $a1, $v0, 0xFFFF
    /* 13A84 8019C9FC 21300000 */  addu       $a2, $zero, $zero
    /* 13A88 8019CA00 21380000 */  addu       $a3, $zero, $zero
    /* 13A8C 8019CA04 1000A0AF */  sw         $zero, 0x10($sp)
    /* 13A90 8019CA08 1400B6AF */  sw         $s6, 0x14($sp)
    /* 13A94 8019CA0C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 13A98 8019CA10 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 13A9C 8019CA14 2000B0AF */  sw         $s0, 0x20($sp)
    /* 13AA0 8019CA18 2400B5AF */  sw         $s5, 0x24($sp)
    /* 13AA4 8019CA1C 2800B4AF */  sw         $s4, 0x28($sp)
    /* 13AA8 8019CA20 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 13AAC 8019CA24 3000B1AF */  sw         $s1, 0x30($sp)
    /* 13AB0 8019CA28 3400B1AF */  sw         $s1, 0x34($sp)
    /* 13AB4 8019CA2C 3800A0AF */  sw         $zero, 0x38($sp)
    /* 13AB8 8019CA30 3C00B2AF */  sw         $s2, 0x3C($sp)
    /* 13ABC 8019CA34 ED4F060C */  jal        func_80193FB4
    /* 13AC0 8019CA38 4000A0AF */   sw        $zero, 0x40($sp)
    /* 13AC4 8019CA3C 24000424 */  addiu      $a0, $zero, 0x24
    /* 13AC8 8019CA40 22300524 */  addiu      $a1, $zero, 0x3022
    /* 13ACC 8019CA44 21300000 */  addu       $a2, $zero, $zero
    /* 13AD0 8019CA48 21380000 */  addu       $a3, $zero, $zero
    /* 13AD4 8019CA4C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 13AD8 8019CA50 1400B6AF */  sw         $s6, 0x14($sp)
    /* 13ADC 8019CA54 1800A0AF */  sw         $zero, 0x18($sp)
    /* 13AE0 8019CA58 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 13AE4 8019CA5C 2000B0AF */  sw         $s0, 0x20($sp)
    /* 13AE8 8019CA60 2400B5AF */  sw         $s5, 0x24($sp)
    /* 13AEC 8019CA64 2800B4AF */  sw         $s4, 0x28($sp)
    /* 13AF0 8019CA68 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 13AF4 8019CA6C 3000B1AF */  sw         $s1, 0x30($sp)
    /* 13AF8 8019CA70 3400B1AF */  sw         $s1, 0x34($sp)
    /* 13AFC 8019CA74 3800A0AF */  sw         $zero, 0x38($sp)
    /* 13B00 8019CA78 3C00B2AF */  sw         $s2, 0x3C($sp)
    /* 13B04 8019CA7C ED4F060C */  jal        func_80193FB4
    /* 13B08 8019CA80 4000A0AF */   sw        $zero, 0x40($sp)
    /* 13B0C 8019CA84 1E80043C */  lui        $a0, %hi(D_801D8C67)
    /* 13B10 8019CA88 678C8490 */  lbu        $a0, %lo(D_801D8C67)($a0)
    /* 13B14 8019CA8C 1579060C */  jal        func_8019E454
    /* 13B18 8019CA90 21280000 */   addu      $a1, $zero, $zero
    /* 13B1C 8019CA94 21000424 */  addiu      $a0, $zero, 0x21
    /* 13B20 8019CA98 FFFF4530 */  andi       $a1, $v0, 0xFFFF
    /* 13B24 8019CA9C 21300000 */  addu       $a2, $zero, $zero
    /* 13B28 8019CAA0 21380000 */  addu       $a3, $zero, $zero
    /* 13B2C 8019CAA4 33001124 */  addiu      $s1, $zero, 0x33
    /* 13B30 8019CAA8 1000B1AF */  sw         $s1, 0x10($sp)
    /* 13B34 8019CAAC 1400B6AF */  sw         $s6, 0x14($sp)
    /* 13B38 8019CAB0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 13B3C 8019CAB4 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 13B40 8019CAB8 2000B0AF */  sw         $s0, 0x20($sp)
    /* 13B44 8019CABC 2400B5AF */  sw         $s5, 0x24($sp)
    /* 13B48 8019CAC0 2800B4AF */  sw         $s4, 0x28($sp)
    /* 13B4C 8019CAC4 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 13B50 8019CAC8 3000B3AF */  sw         $s3, 0x30($sp)
    /* 13B54 8019CACC 3400B3AF */  sw         $s3, 0x34($sp)
    /* 13B58 8019CAD0 3800A0AF */  sw         $zero, 0x38($sp)
    /* 13B5C 8019CAD4 3C00B2AF */  sw         $s2, 0x3C($sp)
    /* 13B60 8019CAD8 ED4F060C */  jal        func_80193FB4
    /* 13B64 8019CADC 4000B2AF */   sw        $s2, 0x40($sp)
    /* 13B68 8019CAE0 25000424 */  addiu      $a0, $zero, 0x25
    /* 13B6C 8019CAE4 23300524 */  addiu      $a1, $zero, 0x3023
    /* 13B70 8019CAE8 21300000 */  addu       $a2, $zero, $zero
    /* 13B74 8019CAEC 21380000 */  addu       $a3, $zero, $zero
    /* 13B78 8019CAF0 1000B1AF */  sw         $s1, 0x10($sp)
    /* 13B7C 8019CAF4 1400B6AF */  sw         $s6, 0x14($sp)
    /* 13B80 8019CAF8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 13B84 8019CAFC 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 13B88 8019CB00 2000B0AF */  sw         $s0, 0x20($sp)
    /* 13B8C 8019CB04 2400B5AF */  sw         $s5, 0x24($sp)
    /* 13B90 8019CB08 2800B4AF */  sw         $s4, 0x28($sp)
    /* 13B94 8019CB0C 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 13B98 8019CB10 3000B3AF */  sw         $s3, 0x30($sp)
    /* 13B9C 8019CB14 3400B3AF */  sw         $s3, 0x34($sp)
    /* 13BA0 8019CB18 3800A0AF */  sw         $zero, 0x38($sp)
    /* 13BA4 8019CB1C 3C00B2AF */  sw         $s2, 0x3C($sp)
    /* 13BA8 8019CB20 ED4F060C */  jal        func_80193FB4
    /* 13BAC 8019CB24 4000B2AF */   sw        $s2, 0x40($sp)
    /* 13BB0 8019CB28 6400BF8F */  lw         $ra, 0x64($sp)
    /* 13BB4 8019CB2C 6000B68F */  lw         $s6, 0x60($sp)
    /* 13BB8 8019CB30 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 13BBC 8019CB34 5800B48F */  lw         $s4, 0x58($sp)
    /* 13BC0 8019CB38 5400B38F */  lw         $s3, 0x54($sp)
    /* 13BC4 8019CB3C 5000B28F */  lw         $s2, 0x50($sp)
    /* 13BC8 8019CB40 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 13BCC 8019CB44 4800B08F */  lw         $s0, 0x48($sp)
    /* 13BD0 8019CB48 6800BD27 */  addiu      $sp, $sp, 0x68
    /* 13BD4 8019CB4C 0800E003 */  jr         $ra
    /* 13BD8 8019CB50 00000000 */   nop
endlabel func_8019C85C
