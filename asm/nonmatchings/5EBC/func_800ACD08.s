nonmatching func_800ACD08, 0x108

glabel func_800ACD08
    /* 9D508 800ACD08 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9D50C 800ACD0C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9D510 800ACD10 01000434 */  ori        $a0, $zero, 0x1
    /* 9D514 800ACD14 F3DB020C */  jal        func_800B6FCC
    /* 9D518 800ACD18 21280000 */   addu      $a1, $zero, $zero
    /* 9D51C 800ACD1C 02000334 */  ori        $v1, $zero, 0x2
    /* 9D520 800ACD20 36004310 */  beq        $v0, $v1, .L800ACDFC
    /* 9D524 800ACD24 00000000 */   nop
    /* 9D528 800ACD28 74008293 */  lbu        $v0, %gp_rel(D_800E6B00)($gp)
    /* 9D52C 800ACD2C 00000000 */  nop
    /* 9D530 800ACD30 01004224 */  addiu      $v0, $v0, 0x1
    /* 9D534 800ACD34 740082A3 */  sb         $v0, %gp_rel(D_800E6B00)($gp)
    /* 9D538 800ACD38 74008293 */  lbu        $v0, %gp_rel(D_800E6B00)($gp)
    /* 9D53C 800ACD3C 00000000 */  nop
    /* 9D540 800ACD40 1500422C */  sltiu      $v0, $v0, 0x15
    /* 9D544 800ACD44 2E004014 */  bnez       $v0, .L800ACE00
    /* 9D548 800ACD48 00000000 */   nop
    /* 9D54C 800ACD4C C0008387 */  lh         $v1, %gp_rel(D_800E6B4C)($gp)
    /* 9D550 800ACD50 08000234 */  ori        $v0, $zero, 0x8
    /* 9D554 800ACD54 05006214 */  bne        $v1, $v0, .L800ACD6C
    /* 9D558 800ACD58 06000234 */   ori       $v0, $zero, 0x6
    /* 9D55C 800ACD5C 14000234 */  ori        $v0, $zero, 0x14
    /* 9D560 800ACD60 C00082A7 */  sh         $v0, %gp_rel(D_800E6B4C)($gp)
    /* 9D564 800ACD64 C0008387 */  lh         $v1, %gp_rel(D_800E6B4C)($gp)
    /* 9D568 800ACD68 06000234 */  ori        $v0, $zero, 0x6
  .L800ACD6C:
    /* 9D56C 800ACD6C 02006214 */  bne        $v1, $v0, .L800ACD78
    /* 9D570 800ACD70 07000234 */   ori       $v0, $zero, 0x7
    /* 9D574 800ACD74 C00082A7 */  sh         $v0, %gp_rel(D_800E6B4C)($gp)
  .L800ACD78:
    /* 9D578 800ACD78 C0008387 */  lh         $v1, %gp_rel(D_800E6B4C)($gp)
    /* 9D57C 800ACD7C 07000234 */  ori        $v0, $zero, 0x7
    /* 9D580 800ACD80 05006214 */  bne        $v1, $v0, .L800ACD98
    /* 9D584 800ACD84 1E000234 */   ori       $v0, $zero, 0x1E
    /* 9D588 800ACD88 1DB0020C */  jal        func_800AC074
    /* 9D58C 800ACD8C 00000000 */   nop
    /* 9D590 800ACD90 C0008387 */  lh         $v1, %gp_rel(D_800E6B4C)($gp)
    /* 9D594 800ACD94 1E000234 */  ori        $v0, $zero, 0x1E
  .L800ACD98:
    /* 9D598 800ACD98 02006214 */  bne        $v1, $v0, .L800ACDA4
    /* 9D59C 800ACD9C 28000234 */   ori       $v0, $zero, 0x28
    /* 9D5A0 800ACDA0 C00082A7 */  sh         $v0, %gp_rel(D_800E6B4C)($gp)
  .L800ACDA4:
    /* 9D5A4 800ACDA4 C0008387 */  lh         $v1, %gp_rel(D_800E6B4C)($gp)
    /* 9D5A8 800ACDA8 28000234 */  ori        $v0, $zero, 0x28
    /* 9D5AC 800ACDAC 05006214 */  bne        $v1, $v0, .L800ACDC4
    /* 9D5B0 800ACDB0 5C000234 */   ori       $v0, $zero, 0x5C
    /* 9D5B4 800ACDB4 01000234 */  ori        $v0, $zero, 0x1
    /* 9D5B8 800ACDB8 C00082A7 */  sh         $v0, %gp_rel(D_800E6B4C)($gp)
    /* 9D5BC 800ACDBC C0008387 */  lh         $v1, %gp_rel(D_800E6B4C)($gp)
    /* 9D5C0 800ACDC0 5C000234 */  ori        $v0, $zero, 0x5C
  .L800ACDC4:
    /* 9D5C4 800ACDC4 05006214 */  bne        $v1, $v0, .L800ACDDC
    /* 9D5C8 800ACDC8 01000434 */   ori       $a0, $zero, 0x1
    /* 9D5CC 800ACDCC 0E80063C */  lui        $a2, %hi(D_800E6AF0)
    /* 9D5D0 800ACDD0 F06AC624 */  addiu      $a2, $a2, %lo(D_800E6AF0)
    /* 9D5D4 800ACDD4 0DDC020C */  jal        func_800B7034
    /* 9D5D8 800ACDD8 21280000 */   addu      $a1, $zero, $zero
  .L800ACDDC:
    /* 9D5DC 800ACDDC C0008387 */  lh         $v1, %gp_rel(D_800E6B4C)($gp)
    /* 9D5E0 800ACDE0 14000234 */  ori        $v0, $zero, 0x14
    /* 9D5E4 800ACDE4 05006214 */  bne        $v1, $v0, .L800ACDFC
    /* 9D5E8 800ACDE8 01000434 */   ori       $a0, $zero, 0x1
    /* 9D5EC 800ACDEC 0E80063C */  lui        $a2, %hi(D_800E6AF0)
    /* 9D5F0 800ACDF0 F06AC624 */  addiu      $a2, $a2, %lo(D_800E6AF0)
    /* 9D5F4 800ACDF4 0DDC020C */  jal        func_800B7034
    /* 9D5F8 800ACDF8 21280000 */   addu      $a1, $zero, $zero
  .L800ACDFC:
    /* 9D5FC 800ACDFC 740080A3 */  sb         $zero, %gp_rel(D_800E6B00)($gp)
  .L800ACE00:
    /* 9D600 800ACE00 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9D604 800ACE04 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9D608 800ACE08 0800E003 */  jr         $ra
    /* 9D60C 800ACE0C 00000000 */   nop
endlabel func_800ACD08
