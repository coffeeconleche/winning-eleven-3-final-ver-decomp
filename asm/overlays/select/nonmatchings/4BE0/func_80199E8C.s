nonmatching func_80199E8C, 0x150

glabel func_80199E8C
    /* 10F14 80199E8C 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 10F18 80199E90 4800B0AF */  sw         $s0, 0x48($sp)
    /* 10F1C 80199E94 21800000 */  addu       $s0, $zero, $zero
    /* 10F20 80199E98 6000B6AF */  sw         $s6, 0x60($sp)
    /* 10F24 80199E9C 00101624 */  addiu      $s6, $zero, 0x1000
    /* 10F28 80199EA0 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 10F2C 80199EA4 80001524 */  addiu      $s5, $zero, 0x80
    /* 10F30 80199EA8 6800BEAF */  sw         $fp, 0x68($sp)
    /* 10F34 80199EAC 03001E24 */  addiu      $fp, $zero, 0x3
    /* 10F38 80199EB0 6400B7AF */  sw         $s7, 0x64($sp)
    /* 10F3C 80199EB4 01001724 */  addiu      $s7, $zero, 0x1
    /* 10F40 80199EB8 5800B4AF */  sw         $s4, 0x58($sp)
    /* 10F44 80199EBC 0C001424 */  addiu      $s4, $zero, 0xC
    /* 10F48 80199EC0 5400B3AF */  sw         $s3, 0x54($sp)
    /* 10F4C 80199EC4 C8FF1324 */  addiu      $s3, $zero, -0x38
    /* 10F50 80199EC8 5000B2AF */  sw         $s2, 0x50($sp)
    /* 10F54 80199ECC FBFF1224 */  addiu      $s2, $zero, -0x5
    /* 10F58 80199ED0 6C00BFAF */  sw         $ra, 0x6C($sp)
    /* 10F5C 80199ED4 4C00B1AF */  sw         $s1, 0x4C($sp)
  .L80199ED8:
    /* 10F60 80199ED8 00FE0724 */  addiu      $a3, $zero, -0x200
    /* 10F64 80199EDC 05000426 */  addiu      $a0, $s0, 0x5
    /* 10F68 80199EE0 01001132 */  andi       $s1, $s0, 0x1
    /* 10F6C 80199EE4 02002012 */  beqz       $s1, .L80199EF0
    /* 10F70 80199EE8 0D300526 */   addiu     $a1, $s0, 0x300D
    /* 10F74 80199EEC 00020724 */  addiu      $a3, $zero, 0x200
  .L80199EF0:
    /* 10F78 80199EF0 21300000 */  addu       $a2, $zero, $zero
    /* 10F7C 80199EF4 18000324 */  addiu      $v1, $zero, 0x18
    /* 10F80 80199EF8 1000B2AF */  sw         $s2, 0x10($sp)
    /* 10F84 80199EFC 1400A3AF */  sw         $v1, 0x14($sp)
    /* 10F88 80199F00 1800A0AF */  sw         $zero, 0x18($sp)
    /* 10F8C 80199F04 1C00B6AF */  sw         $s6, 0x1C($sp)
    /* 10F90 80199F08 2000B6AF */  sw         $s6, 0x20($sp)
    /* 10F94 80199F0C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 10F98 80199F10 2800B3AF */  sw         $s3, 0x28($sp)
    /* 10F9C 80199F14 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 10FA0 80199F18 3000B5AF */  sw         $s5, 0x30($sp)
    /* 10FA4 80199F1C 3400B5AF */  sw         $s5, 0x34($sp)
    /* 10FA8 80199F20 3800A0AF */  sw         $zero, 0x38($sp)
    /* 10FAC 80199F24 3C00BEAF */  sw         $fp, 0x3C($sp)
    /* 10FB0 80199F28 ED4F060C */  jal        func_80193FB4
    /* 10FB4 80199F2C 4000B7AF */   sw        $s7, 0x40($sp)
    /* 10FB8 80199F30 02002012 */  beqz       $s1, .L80199F3C
    /* 10FBC 80199F34 00FE0724 */   addiu     $a3, $zero, -0x200
    /* 10FC0 80199F38 00020724 */  addiu      $a3, $zero, 0x200
  .L80199F3C:
    /* 10FC4 80199F3C 21208002 */  addu       $a0, $s4, $zero
    /* 10FC8 80199F40 14300524 */  addiu      $a1, $zero, 0x3014
    /* 10FCC 80199F44 0040063C */  lui        $a2, (0x40000000 >> 16)
    /* 10FD0 80199F48 18000324 */  addiu      $v1, $zero, 0x18
    /* 10FD4 80199F4C 1000B2AF */  sw         $s2, 0x10($sp)
    /* 10FD8 80199F50 1400A3AF */  sw         $v1, 0x14($sp)
    /* 10FDC 80199F54 1800A0AF */  sw         $zero, 0x18($sp)
    /* 10FE0 80199F58 1C00B6AF */  sw         $s6, 0x1C($sp)
    /* 10FE4 80199F5C 2000B6AF */  sw         $s6, 0x20($sp)
    /* 10FE8 80199F60 2400A0AF */  sw         $zero, 0x24($sp)
    /* 10FEC 80199F64 2800B3AF */  sw         $s3, 0x28($sp)
    /* 10FF0 80199F68 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 10FF4 80199F6C 3000B5AF */  sw         $s5, 0x30($sp)
    /* 10FF8 80199F70 3400B5AF */  sw         $s5, 0x34($sp)
    /* 10FFC 80199F74 3800A0AF */  sw         $zero, 0x38($sp)
    /* 11000 80199F78 3C00BEAF */  sw         $fp, 0x3C($sp)
    /* 11004 80199F7C ED4F060C */  jal        func_80193FB4
    /* 11008 80199F80 4000B7AF */   sw        $s7, 0x40($sp)
    /* 1100C 80199F84 1E80013C */  lui        $at, %hi(D_801D8A4C)
    /* 11010 80199F88 21083400 */  addu       $at, $at, $s4
    /* 11014 80199F8C 4C8A30A0 */  sb         $s0, %lo(D_801D8A4C)($at)
    /* 11018 80199F90 01009426 */  addiu      $s4, $s4, 0x1
    /* 1101C 80199F94 14007326 */  addiu      $s3, $s3, 0x14
    /* 11020 80199F98 01001026 */  addiu      $s0, $s0, 0x1
    /* 11024 80199F9C 0700022A */  slti       $v0, $s0, 0x7
    /* 11028 80199FA0 CDFF4014 */  bnez       $v0, .L80199ED8
    /* 1102C 80199FA4 14005226 */   addiu     $s2, $s2, 0x14
    /* 11030 80199FA8 6C00BF8F */  lw         $ra, 0x6C($sp)
    /* 11034 80199FAC 6800BE8F */  lw         $fp, 0x68($sp)
    /* 11038 80199FB0 6400B78F */  lw         $s7, 0x64($sp)
    /* 1103C 80199FB4 6000B68F */  lw         $s6, 0x60($sp)
    /* 11040 80199FB8 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 11044 80199FBC 5800B48F */  lw         $s4, 0x58($sp)
    /* 11048 80199FC0 5400B38F */  lw         $s3, 0x54($sp)
    /* 1104C 80199FC4 5000B28F */  lw         $s2, 0x50($sp)
    /* 11050 80199FC8 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 11054 80199FCC 4800B08F */  lw         $s0, 0x48($sp)
    /* 11058 80199FD0 7000BD27 */  addiu      $sp, $sp, 0x70
    /* 1105C 80199FD4 0800E003 */  jr         $ra
    /* 11060 80199FD8 00000000 */   nop
endlabel func_80199E8C
