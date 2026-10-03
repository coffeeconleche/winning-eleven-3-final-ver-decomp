nonmatching func_8018E8D0, 0x134

glabel func_8018E8D0
    /* 5958 8018E8D0 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 595C 8018E8D4 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 5960 8018E8D8 21B88000 */  addu       $s7, $a0, $zero
    /* 5964 8018E8DC 2000B4AF */  sw         $s4, 0x20($sp)
    /* 5968 8018E8E0 21A00000 */  addu       $s4, $zero, $zero
    /* 596C 8018E8E4 3000BEAF */  sw         $fp, 0x30($sp)
    /* 5970 8018E8E8 80001E24 */  addiu      $fp, $zero, 0x80
    /* 5974 8018E8EC 2800B6AF */  sw         $s6, 0x28($sp)
    /* 5978 8018E8F0 1980163C */  lui        $s6, %hi(D_80193C48)
    /* 597C 8018E8F4 483CD626 */  addiu      $s6, $s6, %lo(D_80193C48)
    /* 5980 8018E8F8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 5984 8018E8FC 1800D326 */  addiu      $s3, $s6, 0x18
    /* 5988 8018E900 1800B2AF */  sw         $s2, 0x18($sp)
    /* 598C 8018E904 2190C002 */  addu       $s2, $s6, $zero
    /* 5990 8018E908 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5994 8018E90C 2188E002 */  addu       $s1, $s7, $zero
    /* 5998 8018E910 2400B5AF */  sw         $s5, 0x24($sp)
    /* 599C 8018E914 00051524 */  addiu      $s5, $zero, 0x500
    /* 59A0 8018E918 3400BFAF */  sw         $ra, 0x34($sp)
    /* 59A4 8018E91C 1000B0AF */  sw         $s0, 0x10($sp)
  .L8018E920:
    /* 59A8 8018E920 2180F502 */  addu       $s0, $s7, $s5
    /* 59AC 8018E924 56B7020C */  jal        func_800ADD58
    /* 59B0 8018E928 21200002 */   addu      $a0, $s0, $zero
    /* 59B4 8018E92C 21200002 */  addu       $a0, $s0, $zero
    /* 59B8 8018E930 38B7020C */  jal        func_800ADCE0
    /* 59BC 8018E934 01000524 */   addiu     $a1, $zero, 0x1
    /* 59C0 8018E938 21200002 */  addu       $a0, $s0, $zero
    /* 59C4 8018E93C 2EB7020C */  jal        func_800ADCB8
    /* 59C8 8018E940 01000524 */   addiu     $a1, $zero, 0x1
    /* 59CC 8018E944 04053EA2 */  sb         $fp, 0x504($s1)
    /* 59D0 8018E948 05053EA2 */  sb         $fp, 0x505($s1)
    /* 59D4 8018E94C 06053EA2 */  sb         $fp, 0x506($s1)
    /* 59D8 8018E950 A8FD0624 */  addiu      $a2, $zero, -0x258
    /* 59DC 8018E954 000046A6 */  sh         $a2, 0x0($s2)
    /* 59E0 8018E958 89FE0624 */  addiu      $a2, $zero, -0x177
    /* 59E4 8018E95C 40191400 */  sll        $v1, $s4, 5
    /* 59E8 8018E960 0800C226 */  addiu      $v0, $s6, 0x8
    /* 59EC 8018E964 21106200 */  addu       $v0, $v1, $v0
    /* 59F0 8018E968 020040A6 */  sh         $zero, 0x2($s2)
    /* 59F4 8018E96C 040046A6 */  sh         $a2, 0x4($s2)
    /* 59F8 8018E970 58020624 */  addiu      $a2, $zero, 0x258
    /* 59FC 8018E974 000046A4 */  sh         $a2, 0x0($v0)
    /* 5A00 8018E978 89FE0624 */  addiu      $a2, $zero, -0x177
    /* 5A04 8018E97C 020040A4 */  sh         $zero, 0x2($v0)
    /* 5A08 8018E980 040046A4 */  sh         $a2, 0x4($v0)
    /* 5A0C 8018E984 1000C226 */  addiu      $v0, $s6, 0x10
    /* 5A10 8018E988 21186200 */  addu       $v1, $v1, $v0
    /* 5A14 8018E98C A8FD0624 */  addiu      $a2, $zero, -0x258
    /* 5A18 8018E990 000066A4 */  sh         $a2, 0x0($v1)
    /* 5A1C 8018E994 77010624 */  addiu      $a2, $zero, 0x177
    /* 5A20 8018E998 020060A4 */  sh         $zero, 0x2($v1)
    /* 5A24 8018E99C 040066A4 */  sh         $a2, 0x4($v1)
    /* 5A28 8018E9A0 58020624 */  addiu      $a2, $zero, 0x258
    /* 5A2C 8018E9A4 000066A6 */  sh         $a2, 0x0($s3)
    /* 5A30 8018E9A8 77010624 */  addiu      $a2, $zero, 0x177
    /* 5A34 8018E9AC 020060A6 */  sh         $zero, 0x2($s3)
    /* 5A38 8018E9B0 040066A6 */  sh         $a2, 0x4($s3)
    /* 5A3C 8018E9B4 20007326 */  addiu      $s3, $s3, 0x20
    /* 5A40 8018E9B8 20005226 */  addiu      $s2, $s2, 0x20
    /* 5A44 8018E9BC 18003126 */  addiu      $s1, $s1, 0x18
    /* 5A48 8018E9C0 01009426 */  addiu      $s4, $s4, 0x1
    /* 5A4C 8018E9C4 0200822A */  slti       $v0, $s4, 0x2
    /* 5A50 8018E9C8 D5FF4014 */  bnez       $v0, .L8018E920
    /* 5A54 8018E9CC 1800B526 */   addiu     $s5, $s5, 0x18
    /* 5A58 8018E9D0 3400BF8F */  lw         $ra, 0x34($sp)
    /* 5A5C 8018E9D4 3000BE8F */  lw         $fp, 0x30($sp)
    /* 5A60 8018E9D8 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 5A64 8018E9DC 2800B68F */  lw         $s6, 0x28($sp)
    /* 5A68 8018E9E0 2400B58F */  lw         $s5, 0x24($sp)
    /* 5A6C 8018E9E4 2000B48F */  lw         $s4, 0x20($sp)
    /* 5A70 8018E9E8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 5A74 8018E9EC 1800B28F */  lw         $s2, 0x18($sp)
    /* 5A78 8018E9F0 1400B18F */  lw         $s1, 0x14($sp)
    /* 5A7C 8018E9F4 1000B08F */  lw         $s0, 0x10($sp)
    /* 5A80 8018E9F8 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 5A84 8018E9FC 0800E003 */  jr         $ra
    /* 5A88 8018EA00 00000000 */   nop
endlabel func_8018E8D0
