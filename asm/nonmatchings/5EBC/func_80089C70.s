nonmatching func_80089C70, 0x3C

glabel func_80089C70
    /* 7A470 80089C70 801F023C */  lui        $v0, (0x1F80029B >> 16)
    /* 7A474 80089C74 9B024290 */  lbu        $v0, (0x1F80029B & 0xFFFF)($v0)
    /* 7A478 80089C78 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 7A47C 80089C7C 05004014 */  bnez       $v0, .L80089C94
    /* 7A480 80089C80 1000BFAF */   sw        $ra, 0x10($sp)
    /* 7A484 80089C84 CAE8010C */  jal        func_8007A328
    /* 7A488 80089C88 00000000 */   nop
    /* 7A48C 80089C8C 27270208 */  j          .L80089C9C
    /* 7A490 80089C90 00000000 */   nop
  .L80089C94:
    /* 7A494 80089C94 2B27020C */  jal        func_80089CAC
    /* 7A498 80089C98 00000000 */   nop
  .L80089C9C:
    /* 7A49C 80089C9C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 7A4A0 80089CA0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 7A4A4 80089CA4 0800E003 */  jr         $ra
    /* 7A4A8 80089CA8 00000000 */   nop
endlabel func_80089C70
