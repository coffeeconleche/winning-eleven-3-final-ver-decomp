nonmatching func_800AF198, 0x34

glabel func_800AF198
    /* 9F998 800AF198 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9F99C 800AF19C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9F9A0 800AF1A0 21808000 */  addu       $s0, $a0, $zero
    /* 9F9A4 800AF1A4 0D80053C */  lui        $a1, %hi(D_800CEB30)
    /* 9F9A8 800AF1A8 30EBA524 */  addiu      $a1, $a1, %lo(D_800CEB30)
    /* 9F9AC 800AF1AC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 9F9B0 800AF1B0 46C4020C */  jal        func_800B1118
    /* 9F9B4 800AF1B4 14000624 */   addiu     $a2, $zero, 0x14
    /* 9F9B8 800AF1B8 21100002 */  addu       $v0, $s0, $zero
    /* 9F9BC 800AF1BC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 9F9C0 800AF1C0 1000B08F */  lw         $s0, 0x10($sp)
    /* 9F9C4 800AF1C4 0800E003 */  jr         $ra
    /* 9F9C8 800AF1C8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800AF198
