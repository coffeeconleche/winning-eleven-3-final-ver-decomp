nonmatching func_8018E4F0, 0x24

glabel func_8018E4F0
    /* 5578 8018E4F0 1E80033C */  lui        $v1, %hi(D_801D8F90)
    /* 557C 8018E4F4 908F6324 */  addiu      $v1, $v1, %lo(D_801D8F90)
    /* 5580 8018E4F8 1F000224 */  addiu      $v0, $zero, 0x1F
  .L8018E4FC:
    /* 5584 8018E4FC 100060A0 */  sb         $zero, 0x10($v1)
    /* 5588 8018E500 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 558C 8018E504 FDFF4104 */  bgez       $v0, .L8018E4FC
    /* 5590 8018E508 18006324 */   addiu     $v1, $v1, 0x18
    /* 5594 8018E50C 0800E003 */  jr         $ra
    /* 5598 8018E510 00000000 */   nop
endlabel func_8018E4F0
