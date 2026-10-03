nonmatching func_800AF1CC, 0x30

glabel func_800AF1CC
    /* 9F9CC 800AF1CC 0D80023C */  lui        $v0, %hi(D_800CEABC)
    /* 9F9D0 800AF1D0 BCEA428C */  lw         $v0, %lo(D_800CEABC)($v0)
    /* 9F9D4 800AF1D4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9F9D8 800AF1D8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9F9DC 800AF1DC 3800428C */  lw         $v0, 0x38($v0)
    /* 9F9E0 800AF1E0 00000000 */  nop
    /* 9F9E4 800AF1E4 09F84000 */  jalr       $v0
    /* 9F9E8 800AF1E8 00000000 */   nop
    /* 9F9EC 800AF1EC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9F9F0 800AF1F0 C2170200 */  srl        $v0, $v0, 31
    /* 9F9F4 800AF1F4 0800E003 */  jr         $ra
    /* 9F9F8 800AF1F8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800AF1CC
