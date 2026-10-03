nonmatching func_8004F790, 0x9C

glabel func_8004F790
    /* 3FF90 8004F790 0E80033C */  lui        $v1, %hi(D_800E6C18)
    /* 3FF94 8004F794 186C6384 */  lh         $v1, %lo(D_800E6C18)($v1)
    /* 3FF98 8004F798 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3FF9C 8004F79C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3FFA0 8004F7A0 1080103C */  lui        $s0, %hi(D_800FF748)
    /* 3FFA4 8004F7A4 48F71026 */  addiu      $s0, $s0, %lo(D_800FF748)
    /* 3FFA8 8004F7A8 10006004 */  bltz       $v1, .L8004F7EC
    /* 3FFAC 8004F7AC 1400BFAF */   sw        $ra, 0x14($sp)
    /* 3FFB0 8004F7B0 04006228 */  slti       $v0, $v1, 0x4
    /* 3FFB4 8004F7B4 05004014 */  bnez       $v0, .L8004F7CC
    /* 3FFB8 8004F7B8 09000224 */   addiu     $v0, $zero, 0x9
    /* 3FFBC 8004F7BC 09006210 */  beq        $v1, $v0, .L8004F7E4
    /* 3FFC0 8004F7C0 21200000 */   addu      $a0, $zero, $zero
    /* 3FFC4 8004F7C4 FC3D0108 */  j          .L8004F7F0
    /* 3FFC8 8004F7C8 00000000 */   nop
  .L8004F7CC:
    /* 3FFCC 8004F7CC 0B3E010C */  jal        func_8004F82C
    /* 3FFD0 8004F7D0 00000000 */   nop
    /* 3FFD4 8004F7D4 FC3D0108 */  j          .L8004F7F0
    /* 3FFD8 8004F7D8 21200000 */   addu      $a0, $zero, $zero
  .L8004F7DC:
    /* 3FFDC 8004F7DC 063E0108 */  j          .L8004F818
    /* 3FFE0 8004F7E0 01000224 */   addiu     $v0, $zero, 0x1
  .L8004F7E4:
    /* 3FFE4 8004F7E4 653E010C */  jal        func_8004F994
    /* 3FFE8 8004F7E8 10000424 */   addiu     $a0, $zero, 0x10
  .L8004F7EC:
    /* 3FFEC 8004F7EC 21200000 */  addu       $a0, $zero, $zero
  .L8004F7F0:
    /* 3FFF0 8004F7F0 10040324 */  addiu      $v1, $zero, 0x410
  .L8004F7F4:
    /* 3FFF4 8004F7F4 21100302 */  addu       $v0, $s0, $v1
    /* 3FFF8 8004F7F8 C45D4290 */  lbu        $v0, 0x5DC4($v0)
    /* 3FFFC 8004F7FC 00000000 */  nop
    /* 40000 8004F800 F6FF4014 */  bnez       $v0, .L8004F7DC
    /* 40004 8004F804 01008424 */   addiu     $a0, $a0, 0x1
    /* 40008 8004F808 0A008228 */  slti       $v0, $a0, 0xA
    /* 4000C 8004F80C F9FF4014 */  bnez       $v0, .L8004F7F4
    /* 40010 8004F810 28006324 */   addiu     $v1, $v1, 0x28
    /* 40014 8004F814 21100000 */  addu       $v0, $zero, $zero
  .L8004F818:
    /* 40018 8004F818 1400BF8F */  lw         $ra, 0x14($sp)
    /* 4001C 8004F81C 1000B08F */  lw         $s0, 0x10($sp)
    /* 40020 8004F820 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 40024 8004F824 0800E003 */  jr         $ra
    /* 40028 8004F828 00000000 */   nop
endlabel func_8004F790
