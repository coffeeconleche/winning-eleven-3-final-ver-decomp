nonmatching func_801B8CD4, 0x9C

glabel func_801B8CD4
    /* 2FD5C 801B8CD4 1180023C */  lui        $v0, %hi(D_80108668)
    /* 2FD60 801B8CD8 68864290 */  lbu        $v0, %lo(D_80108668)($v0)
    /* 2FD64 801B8CDC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2FD68 801B8CE0 1800B0AF */  sw         $s0, 0x18($sp)
    /* 2FD6C 801B8CE4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2FD70 801B8CE8 1080113C */  lui        $s1, %hi(D_800FF748)
    /* 2FD74 801B8CEC 48F73126 */  addiu      $s1, $s1, %lo(D_800FF748)
    /* 2FD78 801B8CF0 2400BFAF */  sw         $ra, 0x24($sp)
    /* 2FD7C 801B8CF4 2000B2AF */  sw         $s2, 0x20($sp)
    /* 2FD80 801B8CF8 1E80013C */  lui        $at, %hi(D_801DA618)
    /* 2FD84 801B8CFC 18A620A0 */  sb         $zero, %lo(D_801DA618)($at)
    /* 2FD88 801B8D00 14004018 */  blez       $v0, .L801B8D54
    /* 2FD8C 801B8D04 21800000 */   addu      $s0, $zero, $zero
    /* 2FD90 801B8D08 1980123C */  lui        $s2, %hi(D_8018B1F0)
    /* 2FD94 801B8D0C F0B15226 */  addiu      $s2, $s2, %lo(D_8018B1F0)
  .L801B8D10:
    /* 2FD98 801B8D10 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2FD9C 801B8D14 21082102 */  addu       $at, $s1, $at
    /* 2FDA0 801B8D18 208F2290 */  lbu        $v0, -0x70E0($at)
    /* 2FDA4 801B8D1C 80181000 */  sll        $v1, $s0, 2
    /* 2FDA8 801B8D20 80110200 */  sll        $v0, $v0, 6
    /* 2FDAC 801B8D24 21105200 */  addu       $v0, $v0, $s2
    /* 2FDB0 801B8D28 21186200 */  addu       $v1, $v1, $v0
    /* 2FDB4 801B8D2C 0000648C */  lw         $a0, 0x0($v1)
    /* 2FDB8 801B8D30 5CE3060C */  jal        func_801B8D70
    /* 2FDBC 801B8D34 01001026 */   addiu     $s0, $s0, 0x1
    /* 2FDC0 801B8D38 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2FDC4 801B8D3C 21082102 */  addu       $at, $s1, $at
    /* 2FDC8 801B8D40 208F2290 */  lbu        $v0, -0x70E0($at)
    /* 2FDCC 801B8D44 00000000 */  nop
    /* 2FDD0 801B8D48 2A100202 */  slt        $v0, $s0, $v0
    /* 2FDD4 801B8D4C F0FF4014 */  bnez       $v0, .L801B8D10
    /* 2FDD8 801B8D50 00000000 */   nop
  .L801B8D54:
    /* 2FDDC 801B8D54 2400BF8F */  lw         $ra, 0x24($sp)
    /* 2FDE0 801B8D58 2000B28F */  lw         $s2, 0x20($sp)
    /* 2FDE4 801B8D5C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2FDE8 801B8D60 1800B08F */  lw         $s0, 0x18($sp)
    /* 2FDEC 801B8D64 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2FDF0 801B8D68 0800E003 */  jr         $ra
    /* 2FDF4 801B8D6C 00000000 */   nop
endlabel func_801B8CD4
