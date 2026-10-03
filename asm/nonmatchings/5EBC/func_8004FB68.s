nonmatching func_8004FB68, 0x5C

glabel func_8004FB68
    /* 40368 8004FB68 21288000 */  addu       $a1, $a0, $zero
    /* 4036C 8004FB6C 0E80043C */  lui        $a0, %hi(D_800E7658)
    /* 40370 8004FB70 5876848C */  lw         $a0, %lo(D_800E7658)($a0)
    /* 40374 8004FB74 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 40378 8004FB78 10008228 */  slti       $v0, $a0, 0x10
    /* 4037C 8004FB7C 05004014 */  bnez       $v0, .L8004FB94
    /* 40380 8004FB80 1000BFAF */   sw        $ra, 0x10($sp)
    /* 40384 8004FB84 B03E010C */  jal        func_8004FAC0
    /* 40388 8004FB88 00000000 */   nop
    /* 4038C 8004FB8C ED3E0108 */  j          .L8004FBB4
    /* 40390 8004FB90 01000224 */   addiu     $v0, $zero, 0x1
  .L8004FB94:
    /* 40394 8004FB94 B03E010C */  jal        func_8004FAC0
    /* 40398 8004FB98 00000000 */   nop
    /* 4039C 8004FB9C 0E80033C */  lui        $v1, %hi(D_800E7658)
    /* 403A0 8004FBA0 5876638C */  lw         $v1, %lo(D_800E7658)($v1)
    /* 403A4 8004FBA4 21100000 */  addu       $v0, $zero, $zero
    /* 403A8 8004FBA8 04006324 */  addiu      $v1, $v1, 0x4
    /* 403AC 8004FBAC 0E80013C */  lui        $at, %hi(D_800E7658)
    /* 403B0 8004FBB0 587623AC */  sw         $v1, %lo(D_800E7658)($at)
  .L8004FBB4:
    /* 403B4 8004FBB4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 403B8 8004FBB8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 403BC 8004FBBC 0800E003 */  jr         $ra
    /* 403C0 8004FBC0 00000000 */   nop
endlabel func_8004FB68
