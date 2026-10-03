nonmatching func_800BDE38, 0x16C

glabel func_800BDE38
    /* AE638 800BDE38 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AE63C 800BDE3C 1000BFAF */  sw         $ra, 0x10($sp)
    /* AE640 800BDE40 8A0B030C */  jal        func_800C2E28
    /* AE644 800BDE44 01000424 */   addiu     $a0, $zero, 0x1
    /* AE648 800BDE48 1000BF8F */  lw         $ra, 0x10($sp)
    /* AE64C 800BDE4C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* AE650 800BDE50 0800E003 */  jr         $ra
    /* AE654 800BDE54 00000000 */   nop
    /* AE658 800BDE58 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AE65C 800BDE5C FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* AE660 800BDE60 1800422C */  sltiu      $v0, $v0, 0x18
    /* AE664 800BDE64 03004014 */  bnez       $v0, .L800BDE74
    /* AE668 800BDE68 1000BFAF */   sw        $ra, 0x10($sp)
    /* AE66C 800BDE6C A1F70208 */  j          .L800BDE84
    /* AE670 800BDE70 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800BDE74:
    /* AE674 800BDE74 00240400 */  sll        $a0, $a0, 16
    /* AE678 800BDE78 6613030C */  jal        func_800C4D98
    /* AE67C 800BDE7C 03240400 */   sra       $a0, $a0, 16
    /* AE680 800BDE80 21100000 */  addu       $v0, $zero, $zero
  .L800BDE84:
    /* AE684 800BDE84 1000BF8F */  lw         $ra, 0x10($sp)
    /* AE688 800BDE88 1800BD27 */  addiu      $sp, $sp, 0x18
    /* AE68C 800BDE8C 0800E003 */  jr         $ra
    /* AE690 800BDE90 00000000 */   nop
    /* AE694 800BDE94 FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* AE698 800BDE98 1800422C */  sltiu      $v0, $v0, 0x18
    /* AE69C 800BDE9C 03004014 */  bnez       $v0, .L800BDEAC
    /* AE6A0 800BDEA0 2138A000 */   addu      $a3, $a1, $zero
    /* AE6A4 800BDEA4 BCF70208 */  j          .L800BDEF0
    /* AE6A8 800BDEA8 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800BDEAC:
    /* AE6AC 800BDEAC 001C0400 */  sll        $v1, $a0, 16
    /* AE6B0 800BDEB0 031C0300 */  sra        $v1, $v1, 16
    /* AE6B4 800BDEB4 00290300 */  sll        $a1, $v1, 4
    /* AE6B8 800BDEB8 1180013C */  lui        $at, %hi(D_8010A41A)
    /* AE6BC 800BDEBC 21082500 */  addu       $at, $at, $a1
    /* AE6C0 800BDEC0 1AA426A4 */  sh         $a2, %lo(D_8010A41A)($at)
    /* AE6C4 800BDEC4 0F80043C */  lui        $a0, %hi(D_800E81E0)
    /* AE6C8 800BDEC8 21208300 */  addu       $a0, $a0, $v1
    /* AE6CC 800BDECC E0818490 */  lbu        $a0, %lo(D_800E81E0)($a0)
    /* AE6D0 800BDED0 21100000 */  addu       $v0, $zero, $zero
    /* AE6D4 800BDED4 1180013C */  lui        $at, %hi(D_8010A418)
    /* AE6D8 800BDED8 21082500 */  addu       $at, $at, $a1
    /* AE6DC 800BDEDC 18A427A4 */  sh         $a3, %lo(D_8010A418)($at)
    /* AE6E0 800BDEE0 03008434 */  ori        $a0, $a0, 0x3
    /* AE6E4 800BDEE4 0F80013C */  lui        $at, %hi(D_800E81E0)
    /* AE6E8 800BDEE8 21082300 */  addu       $at, $at, $v1
    /* AE6EC 800BDEEC E08124A0 */  sb         $a0, %lo(D_800E81E0)($at)
  .L800BDEF0:
    /* AE6F0 800BDEF0 0800E003 */  jr         $ra
    /* AE6F4 800BDEF4 00000000 */   nop
    /* AE6F8 800BDEF8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* AE6FC 800BDEFC 1800B0AF */  sw         $s0, 0x18($sp)
    /* AE700 800BDF00 2180A000 */  addu       $s0, $a1, $zero
    /* AE704 800BDF04 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* AE708 800BDF08 2188C000 */  addu       $s1, $a2, $zero
    /* AE70C 800BDF0C FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* AE710 800BDF10 1800422C */  sltiu      $v0, $v0, 0x18
    /* AE714 800BDF14 03004014 */  bnez       $v0, .L800BDF24
    /* AE718 800BDF18 2000BFAF */   sw        $ra, 0x20($sp)
    /* AE71C 800BDF1C E4F70208 */  j          .L800BDF90
    /* AE720 800BDF20 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800BDF24:
    /* AE724 800BDF24 00240400 */  sll        $a0, $a0, 16
    /* AE728 800BDF28 03240400 */  sra        $a0, $a0, 16
    /* AE72C 800BDF2C 1000A527 */  addiu      $a1, $sp, 0x10
    /* AE730 800BDF30 6613030C */  jal        func_800C4D98
    /* AE734 800BDF34 1200A627 */   addiu     $a2, $sp, 0x12
    /* AE738 800BDF38 E00F053C */  lui        $a1, (0xFE03F81 >> 16)
    /* AE73C 800BDF3C 1000A397 */  lhu        $v1, 0x10($sp)
    /* AE740 800BDF40 813FA534 */  ori        $a1, $a1, (0xFE03F81 & 0xFFFF)
    /* AE744 800BDF44 001C0300 */  sll        $v1, $v1, 16
    /* AE748 800BDF48 03140300 */  sra        $v0, $v1, 16
    /* AE74C 800BDF4C 18004500 */  mult       $v0, $a1
    /* AE750 800BDF50 C31F0300 */  sra        $v1, $v1, 31
    /* AE754 800BDF54 10380000 */  mfhi       $a3
    /* AE758 800BDF58 C3100700 */  sra        $v0, $a3, 3
    /* AE75C 800BDF5C 23104300 */  subu       $v0, $v0, $v1
    /* AE760 800BDF60 000002A6 */  sh         $v0, 0x0($s0)
    /* AE764 800BDF64 1200A497 */  lhu        $a0, 0x12($sp)
    /* AE768 800BDF68 00000000 */  nop
    /* AE76C 800BDF6C 00240400 */  sll        $a0, $a0, 16
    /* AE770 800BDF70 03140400 */  sra        $v0, $a0, 16
    /* AE774 800BDF74 18004500 */  mult       $v0, $a1
    /* AE778 800BDF78 21100000 */  addu       $v0, $zero, $zero
    /* AE77C 800BDF7C C3270400 */  sra        $a0, $a0, 31
    /* AE780 800BDF80 10380000 */  mfhi       $a3
    /* AE784 800BDF84 C3180700 */  sra        $v1, $a3, 3
    /* AE788 800BDF88 23186400 */  subu       $v1, $v1, $a0
    /* AE78C 800BDF8C 000023A6 */  sh         $v1, 0x0($s1)
  .L800BDF90:
    /* AE790 800BDF90 2000BF8F */  lw         $ra, 0x20($sp)
    /* AE794 800BDF94 1C00B18F */  lw         $s1, 0x1C($sp)
    /* AE798 800BDF98 1800B08F */  lw         $s0, 0x18($sp)
    /* AE79C 800BDF9C 0800E003 */  jr         $ra
    /* AE7A0 800BDFA0 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800BDE38
