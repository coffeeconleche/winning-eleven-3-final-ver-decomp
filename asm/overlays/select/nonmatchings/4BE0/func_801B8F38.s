nonmatching func_801B8F38, 0xC0

glabel func_801B8F38
    /* 2FFC0 801B8F38 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2FFC4 801B8F3C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2FFC8 801B8F40 1080123C */  lui        $s2, %hi(D_800FF748)
    /* 2FFCC 801B8F44 48F75226 */  addiu      $s2, $s2, %lo(D_800FF748)
    /* 2FFD0 801B8F48 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2FFD4 801B8F4C 21800000 */  addu       $s0, $zero, $zero
    /* 2FFD8 801B8F50 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2FFDC 801B8F54 1E80113C */  lui        $s1, %hi(D_801D8808)
    /* 2FFE0 801B8F58 08883126 */  addiu      $s1, $s1, %lo(D_801D8808)
    /* 2FFE4 801B8F5C 1C00BFAF */  sw         $ra, 0x1C($sp)
  .L801B8F60:
    /* 2FFE8 801B8F60 1E80013C */  lui        $at, %hi(D_801D8888)
    /* 2FFEC 801B8F64 21083000 */  addu       $at, $at, $s0
    /* 2FFF0 801B8F68 888830A0 */  sb         $s0, %lo(D_801D8888)($at)
    /* 2FFF4 801B8F6C FEE3060C */  jal        func_801B8FF8
    /* 2FFF8 801B8F70 FF000432 */   andi      $a0, $s0, 0xFF
    /* 2FFFC 801B8F74 000022AE */  sw         $v0, 0x0($s1)
    /* 30000 801B8F78 01001026 */  addiu      $s0, $s0, 0x1
    /* 30004 801B8F7C 2000022A */  slti       $v0, $s0, 0x20
    /* 30008 801B8F80 F7FF4014 */  bnez       $v0, .L801B8F60
    /* 3000C 801B8F84 04003126 */   addiu     $s1, $s1, 0x4
    /* 30010 801B8F88 1E80043C */  lui        $a0, %hi(D_801D8888)
    /* 30014 801B8F8C 88888424 */  addiu      $a0, $a0, %lo(D_801D8888)
    /* 30018 801B8F90 1E80053C */  lui        $a1, %hi(D_801D8808)
    /* 3001C 801B8F94 0888A524 */  addiu      $a1, $a1, %lo(D_801D8808)
    /* 30020 801B8F98 21300000 */  addu       $a2, $zero, $zero
    /* 30024 801B8F9C FFA5060C */  jal        func_801A97FC
    /* 30028 801B8FA0 1F000724 */   addiu     $a3, $zero, 0x1F
    /* 3002C 801B8FA4 21800000 */  addu       $s0, $zero, $zero
    /* 30030 801B8FA8 50AB0434 */  ori        $a0, $zero, 0xAB50
    /* 30034 801B8FAC 21105002 */  addu       $v0, $s2, $s0
  .L801B8FB0:
    /* 30038 801B8FB0 1E80013C */  lui        $at, %hi(D_801D8888)
    /* 3003C 801B8FB4 21083000 */  addu       $at, $at, $s0
    /* 30040 801B8FB8 88882390 */  lbu        $v1, %lo(D_801D8888)($at)
    /* 30044 801B8FBC 01001026 */  addiu      $s0, $s0, 0x1
    /* 30048 801B8FC0 21104400 */  addu       $v0, $v0, $a0
    /* 3004C 801B8FC4 000043A0 */  sb         $v1, 0x0($v0)
    /* 30050 801B8FC8 2000022A */  slti       $v0, $s0, 0x20
    /* 30054 801B8FCC F8FF4014 */  bnez       $v0, .L801B8FB0
    /* 30058 801B8FD0 21105002 */   addu      $v0, $s2, $s0
    /* 3005C 801B8FD4 50AB0234 */  ori        $v0, $zero, 0xAB50
    /* 30060 801B8FD8 21104202 */  addu       $v0, $s2, $v0
    /* 30064 801B8FDC 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 30068 801B8FE0 1800B28F */  lw         $s2, 0x18($sp)
    /* 3006C 801B8FE4 1400B18F */  lw         $s1, 0x14($sp)
    /* 30070 801B8FE8 1000B08F */  lw         $s0, 0x10($sp)
    /* 30074 801B8FEC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 30078 801B8FF0 0800E003 */  jr         $ra
    /* 3007C 801B8FF4 00000000 */   nop
endlabel func_801B8F38
