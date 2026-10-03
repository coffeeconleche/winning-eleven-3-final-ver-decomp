nonmatching func_800AAAD8, 0x9C

glabel func_800AAAD8
    /* 9B2D8 800AAAD8 1180023C */  lui        $v0, %hi(D_8010A5D6)
    /* 9B2DC 800AAADC D6A54290 */  lbu        $v0, %lo(D_8010A5D6)($v0)
    /* 9B2E0 800AAAE0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9B2E4 800AAAE4 04004014 */  bnez       $v0, .L800AAAF8
    /* 9B2E8 800AAAE8 1800BFAF */   sw        $ra, 0x18($sp)
    /* 9B2EC 800AAAEC 1BAB020C */  jal        func_800AAC6C
    /* 9B2F0 800AAAF0 00000000 */   nop
    /* 9B2F4 800AAAF4 9E0080A7 */  sh         $zero, %gp_rel(D_800E6B2A)($gp)
  .L800AAAF8:
    /* 9B2F8 800AAAF8 9E008297 */  lhu        $v0, %gp_rel(D_800E6B2A)($gp)
    /* 9B2FC 800AAAFC 14008387 */  lh         $v1, %gp_rel(D_800E6AA0)($gp)
    /* 9B300 800AAB00 32004224 */  addiu      $v0, $v0, 0x32
    /* 9B304 800AAB04 9E0082A7 */  sh         $v0, %gp_rel(D_800E6B2A)($gp)
    /* 9B308 800AAB08 00140200 */  sll        $v0, $v0, 16
    /* 9B30C 800AAB0C 40180300 */  sll        $v1, $v1, 1
    /* 9B310 800AAB10 0D80013C */  lui        $at, %hi(D_800CE758)
    /* 9B314 800AAB14 58E72124 */  addiu      $at, $at, %lo(D_800CE758)
    /* 9B318 800AAB18 21082300 */  addu       $at, $at, $v1
    /* 9B31C 800AAB1C 00002384 */  lh         $v1, 0x0($at)
    /* 9B320 800AAB20 03140200 */  sra        $v0, $v0, 16
    /* 9B324 800AAB24 21206000 */  addu       $a0, $v1, $zero
    /* 9B328 800AAB28 C0190300 */  sll        $v1, $v1, 7
    /* 9B32C 800AAB2C 2A104300 */  slt        $v0, $v0, $v1
    /* 9B330 800AAB30 04004014 */  bnez       $v0, .L800AAB44
    /* 9B334 800AAB34 C0110400 */   sll       $v0, $a0, 7
    /* 9B338 800AAB38 9E0082A7 */  sh         $v0, %gp_rel(D_800E6B2A)($gp)
    /* 9B33C 800AAB3C 0E80013C */  lui        $at, %hi(D_800E6B4C)
    /* 9B340 800AAB40 4C6B20A4 */  sh         $zero, %lo(D_800E6B4C)($at)
  .L800AAB44:
    /* 9B344 800AAB44 9E008297 */  lhu        $v0, %gp_rel(D_800E6B2A)($gp)
    /* 9B348 800AAB48 0F80043C */  lui        $a0, %hi(D_800F0F30)
    /* 9B34C 800AAB4C 300F8424 */  addiu      $a0, $a0, %lo(D_800F0F30)
    /* 9B350 800AAB50 000082A4 */  sh         $v0, 0x0($a0)
    /* 9B354 800AAB54 0F80013C */  lui        $at, %hi(D_800F0F32)
    /* 9B358 800AAB58 320F22A4 */  sh         $v0, %lo(D_800F0F32)($at)
    /* 9B35C 800AAB5C 2A11030C */  jal        func_800C44A8
    /* 9B360 800AAB60 F8FF8424 */   addiu     $a0, $a0, -0x8
    /* 9B364 800AAB64 1800BF8F */  lw         $ra, 0x18($sp)
    /* 9B368 800AAB68 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 9B36C 800AAB6C 0800E003 */  jr         $ra
    /* 9B370 800AAB70 00000000 */   nop
endlabel func_800AAAD8
