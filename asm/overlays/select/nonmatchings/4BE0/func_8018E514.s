nonmatching func_8018E514, 0x24

glabel func_8018E514
    /* 559C 8018E514 1E80033C */  lui        $v1, %hi(D_801D92A0)
    /* 55A0 8018E518 A0926324 */  addiu      $v1, $v1, %lo(D_801D92A0)
    /* 55A4 8018E51C 13000224 */  addiu      $v0, $zero, 0x13
  .L8018E520:
    /* 55A8 8018E520 030060A0 */  sb         $zero, 0x3($v1)
    /* 55AC 8018E524 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 55B0 8018E528 FDFF4104 */  bgez       $v0, .L8018E520
    /* 55B4 8018E52C 1C006324 */   addiu     $v1, $v1, 0x1C
    /* 55B8 8018E530 0800E003 */  jr         $ra
    /* 55BC 8018E534 00000000 */   nop
endlabel func_8018E514
