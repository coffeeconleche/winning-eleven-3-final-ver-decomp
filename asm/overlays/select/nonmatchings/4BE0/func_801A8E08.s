nonmatching func_801A8E08, 0xF8

glabel func_801A8E08
    /* 1FE90 801A8E08 1180023C */  lui        $v0, %hi(D_80108667)
    /* 1FE94 801A8E0C 67864290 */  lbu        $v0, %lo(D_80108667)($v0)
    /* 1FE98 801A8E10 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 1FE9C 801A8E14 5800BFAF */  sw         $ra, 0x58($sp)
    /* 1FEA0 801A8E18 5400B3AF */  sw         $s3, 0x54($sp)
    /* 1FEA4 801A8E1C 5000B2AF */  sw         $s2, 0x50($sp)
    /* 1FEA8 801A8E20 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 1FEAC 801A8E24 0F004330 */  andi       $v1, $v0, 0xF
    /* 1FEB0 801A8E28 0600622C */  sltiu      $v0, $v1, 0x6
    /* 1FEB4 801A8E2C 03004010 */  beqz       $v0, .L801A8E3C
    /* 1FEB8 801A8E30 4800B0AF */   sw        $s0, 0x48($sp)
    /* 1FEBC 801A8E34 90A30608 */  j          .L801A8E40
    /* 1FEC0 801A8E38 E0306534 */   ori       $a1, $v1, 0x30E0
  .L801A8E3C:
    /* 1FEC4 801A8E3C 06300524 */  addiu      $a1, $zero, 0x3006
  .L801A8E40:
    /* 1FEC8 801A8E40 01000424 */  addiu      $a0, $zero, 0x1
    /* 1FECC 801A8E44 21300000 */  addu       $a2, $zero, $zero
    /* 1FED0 801A8E48 21380000 */  addu       $a3, $zero, $zero
    /* 1FED4 801A8E4C 18001324 */  addiu      $s3, $zero, 0x18
    /* 1FED8 801A8E50 3A000224 */  addiu      $v0, $zero, 0x3A
    /* 1FEDC 801A8E54 00101224 */  addiu      $s2, $zero, 0x1000
    /* 1FEE0 801A8E58 80001024 */  addiu      $s0, $zero, 0x80
    /* 1FEE4 801A8E5C 01001124 */  addiu      $s1, $zero, 0x1
    /* 1FEE8 801A8E60 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1FEEC 801A8E64 1400B3AF */  sw         $s3, 0x14($sp)
    /* 1FEF0 801A8E68 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1FEF4 801A8E6C 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 1FEF8 801A8E70 2000B2AF */  sw         $s2, 0x20($sp)
    /* 1FEFC 801A8E74 2400A0AF */  sw         $zero, 0x24($sp)
    /* 1FF00 801A8E78 2800A0AF */  sw         $zero, 0x28($sp)
    /* 1FF04 801A8E7C 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 1FF08 801A8E80 3000B0AF */  sw         $s0, 0x30($sp)
    /* 1FF0C 801A8E84 3400B0AF */  sw         $s0, 0x34($sp)
    /* 1FF10 801A8E88 3800A0AF */  sw         $zero, 0x38($sp)
    /* 1FF14 801A8E8C 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 1FF18 801A8E90 ED4F060C */  jal        func_80193FB4
    /* 1FF1C 801A8E94 4000B1AF */   sw        $s1, 0x40($sp)
    /* 1FF20 801A8E98 02000424 */  addiu      $a0, $zero, 0x2
    /* 1FF24 801A8E9C 0C300524 */  addiu      $a1, $zero, 0x300C
    /* 1FF28 801A8EA0 21300000 */  addu       $a2, $zero, $zero
    /* 1FF2C 801A8EA4 21380000 */  addu       $a3, $zero, $zero
    /* 1FF30 801A8EA8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1FF34 801A8EAC 1400B3AF */  sw         $s3, 0x14($sp)
    /* 1FF38 801A8EB0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1FF3C 801A8EB4 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 1FF40 801A8EB8 2000B2AF */  sw         $s2, 0x20($sp)
    /* 1FF44 801A8EBC 2400A0AF */  sw         $zero, 0x24($sp)
    /* 1FF48 801A8EC0 2800A0AF */  sw         $zero, 0x28($sp)
    /* 1FF4C 801A8EC4 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 1FF50 801A8EC8 3000B0AF */  sw         $s0, 0x30($sp)
    /* 1FF54 801A8ECC 3400B0AF */  sw         $s0, 0x34($sp)
    /* 1FF58 801A8ED0 3800A0AF */  sw         $zero, 0x38($sp)
    /* 1FF5C 801A8ED4 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 1FF60 801A8ED8 ED4F060C */  jal        func_80193FB4
    /* 1FF64 801A8EDC 4000B1AF */   sw        $s1, 0x40($sp)
    /* 1FF68 801A8EE0 5800BF8F */  lw         $ra, 0x58($sp)
    /* 1FF6C 801A8EE4 5400B38F */  lw         $s3, 0x54($sp)
    /* 1FF70 801A8EE8 5000B28F */  lw         $s2, 0x50($sp)
    /* 1FF74 801A8EEC 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 1FF78 801A8EF0 4800B08F */  lw         $s0, 0x48($sp)
    /* 1FF7C 801A8EF4 6000BD27 */  addiu      $sp, $sp, 0x60
    /* 1FF80 801A8EF8 0800E003 */  jr         $ra
    /* 1FF84 801A8EFC 00000000 */   nop
endlabel func_801A8E08
