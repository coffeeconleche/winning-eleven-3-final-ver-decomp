nonmatching func_800ABC34, 0x128

glabel func_800ABC34
    /* 9C434 800ABC34 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 9C438 800ABC38 1000A727 */  addiu      $a3, $sp, 0x10
    /* 9C43C 800ABC3C 0180063C */  lui        $a2, %hi(D_80014B44)
    /* 9C440 800ABC40 444BC624 */  addiu      $a2, $a2, %lo(D_80014B44)
    /* 9C444 800ABC44 2510E600 */  or         $v0, $a3, $a2
    /* 9C448 800ABC48 03004230 */  andi       $v0, $v0, 0x3
    /* 9C44C 800ABC4C 17004010 */  beqz       $v0, .L800ABCAC
    /* 9C450 800ABC50 3800BFAF */   sw        $ra, 0x38($sp)
    /* 9C454 800ABC54 2000C824 */  addiu      $t0, $a2, 0x20
  .L800ABC58:
    /* 9C458 800ABC58 0300C288 */  lwl        $v0, 0x3($a2)
    /* 9C45C 800ABC5C 0000C298 */  lwr        $v0, 0x0($a2)
    /* 9C460 800ABC60 0700C388 */  lwl        $v1, 0x7($a2)
    /* 9C464 800ABC64 0400C398 */  lwr        $v1, 0x4($a2)
    /* 9C468 800ABC68 0B00C488 */  lwl        $a0, 0xB($a2)
    /* 9C46C 800ABC6C 0800C498 */  lwr        $a0, 0x8($a2)
    /* 9C470 800ABC70 0F00C588 */  lwl        $a1, 0xF($a2)
    /* 9C474 800ABC74 0C00C598 */  lwr        $a1, 0xC($a2)
    /* 9C478 800ABC78 0300E2A8 */  swl        $v0, 0x3($a3)
    /* 9C47C 800ABC7C 0000E2B8 */  swr        $v0, 0x0($a3)
    /* 9C480 800ABC80 0700E3A8 */  swl        $v1, 0x7($a3)
    /* 9C484 800ABC84 0400E3B8 */  swr        $v1, 0x4($a3)
    /* 9C488 800ABC88 0B00E4A8 */  swl        $a0, 0xB($a3)
    /* 9C48C 800ABC8C 0800E4B8 */  swr        $a0, 0x8($a3)
    /* 9C490 800ABC90 0F00E5A8 */  swl        $a1, 0xF($a3)
    /* 9C494 800ABC94 0C00E5B8 */  swr        $a1, 0xC($a3)
    /* 9C498 800ABC98 1000C624 */  addiu      $a2, $a2, 0x10
    /* 9C49C 800ABC9C EEFFC814 */  bne        $a2, $t0, .L800ABC58
    /* 9C4A0 800ABCA0 1000E724 */   addiu     $a3, $a3, 0x10
    /* 9C4A4 800ABCA4 37AF0208 */  j          .L800ABCDC
    /* 9C4A8 800ABCA8 00000000 */   nop
  .L800ABCAC:
    /* 9C4AC 800ABCAC 2000C824 */  addiu      $t0, $a2, 0x20
  .L800ABCB0:
    /* 9C4B0 800ABCB0 0000C28C */  lw         $v0, 0x0($a2)
    /* 9C4B4 800ABCB4 0400C38C */  lw         $v1, 0x4($a2)
    /* 9C4B8 800ABCB8 0800C48C */  lw         $a0, 0x8($a2)
    /* 9C4BC 800ABCBC 0C00C58C */  lw         $a1, 0xC($a2)
    /* 9C4C0 800ABCC0 0000E2AC */  sw         $v0, 0x0($a3)
    /* 9C4C4 800ABCC4 0400E3AC */  sw         $v1, 0x4($a3)
    /* 9C4C8 800ABCC8 0800E4AC */  sw         $a0, 0x8($a3)
    /* 9C4CC 800ABCCC 0C00E5AC */  sw         $a1, 0xC($a3)
    /* 9C4D0 800ABCD0 1000C624 */  addiu      $a2, $a2, 0x10
    /* 9C4D4 800ABCD4 F6FFC814 */  bne        $a2, $t0, .L800ABCB0
    /* 9C4D8 800ABCD8 1000E724 */   addiu     $a3, $a3, 0x10
  .L800ABCDC:
    /* 9C4DC 800ABCDC 0300C288 */  lwl        $v0, 0x3($a2)
    /* 9C4E0 800ABCE0 0000C298 */  lwr        $v0, 0x0($a2)
    /* 9C4E4 800ABCE4 0400C380 */  lb         $v1, 0x4($a2)
    /* 9C4E8 800ABCE8 0500C480 */  lb         $a0, 0x5($a2)
    /* 9C4EC 800ABCEC 0300E2A8 */  swl        $v0, 0x3($a3)
    /* 9C4F0 800ABCF0 0000E2B8 */  swr        $v0, 0x0($a3)
    /* 9C4F4 800ABCF4 0400E3A0 */  sb         $v1, 0x4($a3)
    /* 9C4F8 800ABCF8 0500E4A0 */  sb         $a0, 0x5($a3)
    /* 9C4FC 800ABCFC 11000434 */  ori        $a0, $zero, 0x11
    /* 9C500 800ABD00 0E80063C */  lui        $a2, %hi(D_800E6AF8)
    /* 9C504 800ABD04 F86AC624 */  addiu      $a2, $a2, %lo(D_800E6AF8)
    /* 9C508 800ABD08 0DDC020C */  jal        func_800B7034
    /* 9C50C 800ABD0C 21280000 */   addu      $a1, $zero, $zero
    /* 9C510 800ABD10 EA008297 */  lhu        $v0, %gp_rel(D_800E6B76)($gp)
    /* 9C514 800ABD14 00FE0334 */  ori        $v1, $zero, 0xFE00
    /* 9C518 800ABD18 21104300 */  addu       $v0, $v0, $v1
    /* 9C51C 800ABD1C 00140200 */  sll        $v0, $v0, 16
    /* 9C520 800ABD20 03140200 */  sra        $v0, $v0, 16
    /* 9C524 800ABD24 2110A203 */  addu       $v0, $sp, $v0
    /* 9C528 800ABD28 6C008393 */  lbu        $v1, %gp_rel(D_800E6AF8)($gp)
    /* 9C52C 800ABD2C 10004290 */  lbu        $v0, 0x10($v0)
    /* 9C530 800ABD30 00000000 */  nop
    /* 9C534 800ABD34 04006210 */  beq        $v1, $v0, .L800ABD48
    /* 9C538 800ABD38 01000234 */   ori       $v0, $zero, 0x1
    /* 9C53C 800ABD3C E20082A7 */  sh         $v0, %gp_rel(D_800E6B6E)($gp)
    /* 9C540 800ABD40 53AF0208 */  j          .L800ABD4C
    /* 9C544 800ABD44 00000000 */   nop
  .L800ABD48:
    /* 9C548 800ABD48 E20080A7 */  sh         $zero, %gp_rel(D_800E6B6E)($gp)
  .L800ABD4C:
    /* 9C54C 800ABD4C 3800BF8F */  lw         $ra, 0x38($sp)
    /* 9C550 800ABD50 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 9C554 800ABD54 0800E003 */  jr         $ra
    /* 9C558 800ABD58 00000000 */   nop
endlabel func_800ABC34
