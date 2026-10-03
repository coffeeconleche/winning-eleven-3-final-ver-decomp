nonmatching func_801AFECC, 0x50

glabel func_801AFECC
    /* 26F54 801AFECC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 26F58 801AFED0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 26F5C 801AFED4 1080103C */  lui        $s0, %hi(D_800FF748)
    /* 26F60 801AFED8 48F71026 */  addiu      $s0, $s0, %lo(D_800FF748)
    /* 26F64 801AFEDC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 26F68 801AFEE0 4EBE060C */  jal        func_801AF938
    /* 26F6C 801AFEE4 00020424 */   addiu     $a0, $zero, 0x200
    /* 26F70 801AFEE8 08000224 */  addiu      $v0, $zero, 0x8
    /* 26F74 801AFEEC 1E80033C */  lui        $v1, %hi(D_801D8A60)
    /* 26F78 801AFEF0 608A6324 */  addiu      $v1, $v1, %lo(D_801D8A60)
  .L801AFEF4:
    /* 26F7C 801AFEF4 000062A0 */  sb         $v0, 0x0($v1)
    /* 26F80 801AFEF8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 26F84 801AFEFC FDFF4104 */  bgez       $v0, .L801AFEF4
    /* 26F88 801AFF00 FFFF6324 */   addiu     $v1, $v1, -0x1
    /* 26F8C 801AFF04 045F00A2 */  sb         $zero, 0x5F04($s0)
    /* 26F90 801AFF08 1400BF8F */  lw         $ra, 0x14($sp)
    /* 26F94 801AFF0C 1000B08F */  lw         $s0, 0x10($sp)
    /* 26F98 801AFF10 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 26F9C 801AFF14 0800E003 */  jr         $ra
    /* 26FA0 801AFF18 00000000 */   nop
endlabel func_801AFECC
