nonmatching func_801BD8E8, 0x110

glabel func_801BD8E8
    /* 34970 801BD8E8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 34974 801BD8EC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 34978 801BD8F0 01001024 */  addiu      $s0, $zero, 0x1
    /* 3497C 801BD8F4 2800B6AF */  sw         $s6, 0x28($sp)
    /* 34980 801BD8F8 21B00000 */  addu       $s6, $zero, $zero
    /* 34984 801BD8FC 1E80033C */  lui        $v1, %hi(D_801D9318)
    /* 34988 801BD900 18936324 */  addiu      $v1, $v1, %lo(D_801D9318)
    /* 3498C 801BD904 2400B5AF */  sw         $s5, 0x24($sp)
    /* 34990 801BD908 E0007524 */  addiu      $s5, $v1, 0xE0
    /* 34994 801BD90C 1E80023C */  lui        $v0, %hi(D_801D8FF2)
    /* 34998 801BD910 F28F4224 */  addiu      $v0, $v0, %lo(D_801D8FF2)
    /* 3499C 801BD914 2000B4AF */  sw         $s4, 0x20($sp)
    /* 349A0 801BD918 C0005424 */  addiu      $s4, $v0, 0xC0
    /* 349A4 801BD91C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 349A8 801BD920 21986000 */  addu       $s3, $v1, $zero
    /* 349AC 801BD924 1800B2AF */  sw         $s2, 0x18($sp)
    /* 349B0 801BD928 21904000 */  addu       $s2, $v0, $zero
    /* 349B4 801BD92C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 349B8 801BD930 1E80113C */  lui        $s1, %hi(D_801D8A58)
    /* 349BC 801BD934 588A3126 */  addiu      $s1, $s1, %lo(D_801D8A58)
    /* 349C0 801BD938 2C00BFAF */  sw         $ra, 0x2C($sp)
  .L801BD93C:
    /* 349C4 801BD93C 00002292 */  lbu        $v0, 0x0($s1)
    /* 349C8 801BD940 00000000 */  nop
    /* 349CC 801BD944 04004010 */  beqz       $v0, .L801BD958
    /* 349D0 801BD948 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 349D4 801BD94C 000022A2 */  sb         $v0, 0x0($s1)
    /* 349D8 801BD950 6AF60608 */  j          .L801BD9A8
    /* 349DC 801BD954 21800000 */   addu      $s0, $zero, $zero
  .L801BD958:
    /* 349E0 801BD958 21204002 */  addu       $a0, $s2, $zero
    /* 349E4 801BD95C 6EFF0524 */  addiu      $a1, $zero, -0x92
    /* 349E8 801BD960 653A060C */  jal        func_8018E994
    /* 349EC 801BD964 20000624 */   addiu     $a2, $zero, 0x20
    /* 349F0 801BD968 24800202 */  and        $s0, $s0, $v0
    /* 349F4 801BD96C 21206002 */  addu       $a0, $s3, $zero
    /* 349F8 801BD970 5CFF0524 */  addiu      $a1, $zero, -0xA4
    /* 349FC 801BD974 653A060C */  jal        func_8018E994
    /* 34A00 801BD978 20000624 */   addiu     $a2, $zero, 0x20
    /* 34A04 801BD97C 24800202 */  and        $s0, $s0, $v0
    /* 34A08 801BD980 21208002 */  addu       $a0, $s4, $zero
    /* 34A0C 801BD984 20000524 */  addiu      $a1, $zero, 0x20
    /* 34A10 801BD988 653A060C */  jal        func_8018E994
    /* 34A14 801BD98C 20000624 */   addiu     $a2, $zero, 0x20
    /* 34A18 801BD990 24800202 */  and        $s0, $s0, $v0
    /* 34A1C 801BD994 2120A002 */  addu       $a0, $s5, $zero
    /* 34A20 801BD998 40000524 */  addiu      $a1, $zero, 0x40
    /* 34A24 801BD99C 653A060C */  jal        func_8018E994
    /* 34A28 801BD9A0 20000624 */   addiu     $a2, $zero, 0x20
    /* 34A2C 801BD9A4 24800202 */  and        $s0, $s0, $v0
  .L801BD9A8:
    /* 34A30 801BD9A8 1C00B526 */  addiu      $s5, $s5, 0x1C
    /* 34A34 801BD9AC 18009426 */  addiu      $s4, $s4, 0x18
    /* 34A38 801BD9B0 1C007326 */  addiu      $s3, $s3, 0x1C
    /* 34A3C 801BD9B4 18005226 */  addiu      $s2, $s2, 0x18
    /* 34A40 801BD9B8 0100D626 */  addiu      $s6, $s6, 0x1
    /* 34A44 801BD9BC 0800C22A */  slti       $v0, $s6, 0x8
    /* 34A48 801BD9C0 DEFF4014 */  bnez       $v0, .L801BD93C
    /* 34A4C 801BD9C4 01003126 */   addiu     $s1, $s1, 0x1
    /* 34A50 801BD9C8 21100002 */  addu       $v0, $s0, $zero
    /* 34A54 801BD9CC 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 34A58 801BD9D0 2800B68F */  lw         $s6, 0x28($sp)
    /* 34A5C 801BD9D4 2400B58F */  lw         $s5, 0x24($sp)
    /* 34A60 801BD9D8 2000B48F */  lw         $s4, 0x20($sp)
    /* 34A64 801BD9DC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 34A68 801BD9E0 1800B28F */  lw         $s2, 0x18($sp)
    /* 34A6C 801BD9E4 1400B18F */  lw         $s1, 0x14($sp)
    /* 34A70 801BD9E8 1000B08F */  lw         $s0, 0x10($sp)
    /* 34A74 801BD9EC 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 34A78 801BD9F0 0800E003 */  jr         $ra
    /* 34A7C 801BD9F4 00000000 */   nop
endlabel func_801BD8E8
