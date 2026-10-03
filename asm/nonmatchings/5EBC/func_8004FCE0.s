nonmatching func_8004FCE0, 0x34

glabel func_8004FCE0
    /* 404E0 8004FCE0 1080043C */  lui        $a0, %hi(D_800FF748)
    /* 404E4 8004FCE4 48F78424 */  addiu      $a0, $a0, %lo(D_800FF748)
    /* 404E8 8004FCE8 D0668324 */  addiu      $v1, $a0, 0x66D0
    /* 404EC 8004FCEC 11000224 */  addiu      $v0, $zero, 0x11
  .L8004FCF0:
    /* 404F0 8004FCF0 000060A0 */  sb         $zero, 0x0($v1)
    /* 404F4 8004FCF4 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 404F8 8004FCF8 FDFF4104 */  bgez       $v0, .L8004FCF0
    /* 404FC 8004FCFC 90006324 */   addiu     $v1, $v1, 0x90
    /* 40500 8004FD00 0100013C */  lui        $at, (0x10000 >> 16)
    /* 40504 8004FD04 21088100 */  addu       $at, $a0, $at
    /* 40508 8004FD08 E1AB20A0 */  sb         $zero, -0x541F($at)
    /* 4050C 8004FD0C 0800E003 */  jr         $ra
    /* 40510 8004FD10 00000000 */   nop
endlabel func_8004FCE0
