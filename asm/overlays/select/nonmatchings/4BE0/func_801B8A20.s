nonmatching func_801B8A20, 0x98

glabel func_801B8A20
    /* 2FAA8 801B8A20 1180023C */  lui        $v0, %hi(D_80108668)
    /* 2FAAC 801B8A24 68864290 */  lbu        $v0, %lo(D_80108668)($v0)
    /* 2FAB0 801B8A28 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2FAB4 801B8A2C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2FAB8 801B8A30 21800000 */  addu       $s0, $zero, $zero
    /* 2FABC 801B8A34 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2FAC0 801B8A38 1080113C */  lui        $s1, %hi(D_800FF748)
    /* 2FAC4 801B8A3C 48F73126 */  addiu      $s1, $s1, %lo(D_800FF748)
    /* 2FAC8 801B8A40 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 2FACC 801B8A44 15004010 */  beqz       $v0, .L801B8A9C
    /* 2FAD0 801B8A48 1800B2AF */   sw        $s2, 0x18($sp)
    /* 2FAD4 801B8A4C 1980123C */  lui        $s2, %hi(D_8018B1F0)
    /* 2FAD8 801B8A50 F0B15226 */  addiu      $s2, $s2, %lo(D_8018B1F0)
    /* 2FADC 801B8A54 FF000232 */  andi       $v0, $s0, 0xFF
    /* 2FAE0 801B8A58 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2FAE4 801B8A5C 21082102 */  addu       $at, $s1, $at
    /* 2FAE8 801B8A60 208F2390 */  lbu        $v1, -0x70E0($at)
  .L801B8A64:
    /* 2FAEC 801B8A64 80100200 */  sll        $v0, $v0, 2
    /* 2FAF0 801B8A68 80190300 */  sll        $v1, $v1, 6
    /* 2FAF4 801B8A6C 21187200 */  addu       $v1, $v1, $s2
    /* 2FAF8 801B8A70 21104300 */  addu       $v0, $v0, $v1
    /* 2FAFC 801B8A74 0000448C */  lw         $a0, 0x0($v0)
    /* 2FB00 801B8A78 AEE2060C */  jal        func_801B8AB8
    /* 2FB04 801B8A7C 01001026 */   addiu     $s0, $s0, 0x1
    /* 2FB08 801B8A80 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2FB0C 801B8A84 21082102 */  addu       $at, $s1, $at
    /* 2FB10 801B8A88 208F2390 */  lbu        $v1, -0x70E0($at)
    /* 2FB14 801B8A8C FF000232 */  andi       $v0, $s0, 0xFF
    /* 2FB18 801B8A90 2B104300 */  sltu       $v0, $v0, $v1
    /* 2FB1C 801B8A94 F3FF4014 */  bnez       $v0, .L801B8A64
    /* 2FB20 801B8A98 FF000232 */   andi      $v0, $s0, 0xFF
  .L801B8A9C:
    /* 2FB24 801B8A9C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 2FB28 801B8AA0 1800B28F */  lw         $s2, 0x18($sp)
    /* 2FB2C 801B8AA4 1400B18F */  lw         $s1, 0x14($sp)
    /* 2FB30 801B8AA8 1000B08F */  lw         $s0, 0x10($sp)
    /* 2FB34 801B8AAC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2FB38 801B8AB0 0800E003 */  jr         $ra
    /* 2FB3C 801B8AB4 00000000 */   nop
endlabel func_801B8A20
