nonmatching func_800ACC80, 0x88

glabel func_800ACC80
    /* 9D480 800ACC80 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9D484 800ACC84 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9D488 800ACC88 01000434 */  ori        $a0, $zero, 0x1
    /* 9D48C 800ACC8C F3DB020C */  jal        func_800B6FCC
    /* 9D490 800ACC90 21280000 */   addu      $a1, $zero, $zero
    /* 9D494 800ACC94 02000334 */  ori        $v1, $zero, 0x2
    /* 9D498 800ACC98 16004310 */  beq        $v0, $v1, .L800ACCF4
    /* 9D49C 800ACC9C 00000000 */   nop
    /* 9D4A0 800ACCA0 74008293 */  lbu        $v0, %gp_rel(D_800E6B00)($gp)
    /* 9D4A4 800ACCA4 00000000 */  nop
    /* 9D4A8 800ACCA8 01004224 */  addiu      $v0, $v0, 0x1
    /* 9D4AC 800ACCAC 740082A3 */  sb         $v0, %gp_rel(D_800E6B00)($gp)
    /* 9D4B0 800ACCB0 74008293 */  lbu        $v0, %gp_rel(D_800E6B00)($gp)
    /* 9D4B4 800ACCB4 00000000 */  nop
    /* 9D4B8 800ACCB8 2E00422C */  sltiu      $v0, $v0, 0x2E
    /* 9D4BC 800ACCBC 0E004014 */  bnez       $v0, .L800ACCF8
    /* 9D4C0 800ACCC0 00000000 */   nop
    /* 9D4C4 800ACCC4 C0008297 */  lhu        $v0, %gp_rel(D_800E6B4C)($gp)
    /* 9D4C8 800ACCC8 00000000 */  nop
    /* 9D4CC 800ACCCC FDFF4224 */  addiu      $v0, $v0, -0x3
    /* 9D4D0 800ACCD0 0200422C */  sltiu      $v0, $v0, 0x2
    /* 9D4D4 800ACCD4 08004010 */  beqz       $v0, .L800ACCF8
    /* 9D4D8 800ACCD8 5A000334 */   ori       $v1, $zero, 0x5A
    /* 9D4DC 800ACCDC 2F008293 */  lbu        $v0, %gp_rel(D_800E6ABA + 0x1)($gp)
    /* 9D4E0 800ACCE0 C00083A7 */  sh         $v1, %gp_rel(D_800E6B4C)($gp)
    /* 9D4E4 800ACCE4 01004224 */  addiu      $v0, $v0, 0x1
    /* 9D4E8 800ACCE8 2F0082A3 */  sb         $v0, %gp_rel(D_800E6ABA + 0x1)($gp)
    /* 9D4EC 800ACCEC 3EB30208 */  j          .L800ACCF8
    /* 9D4F0 800ACCF0 00000000 */   nop
  .L800ACCF4:
    /* 9D4F4 800ACCF4 740080A3 */  sb         $zero, %gp_rel(D_800E6B00)($gp)
  .L800ACCF8:
    /* 9D4F8 800ACCF8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9D4FC 800ACCFC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9D500 800ACD00 0800E003 */  jr         $ra
    /* 9D504 800ACD04 00000000 */   nop
endlabel func_800ACC80
