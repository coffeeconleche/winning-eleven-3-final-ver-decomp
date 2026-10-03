nonmatching func_801CF6A8, 0xB8

glabel func_801CF6A8
    /* 46730 801CF6A8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 46734 801CF6AC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 46738 801CF6B0 1080103C */  lui        $s0, %hi(D_800FF748)
    /* 4673C 801CF6B4 48F71026 */  addiu      $s0, $s0, %lo(D_800FF748)
    /* 46740 801CF6B8 1A008014 */  bnez       $a0, .L801CF724
    /* 46744 801CF6BC 1400BFAF */   sw        $ra, 0x14($sp)
    /* 46748 801CF6C0 6549060C */  jal        func_80192594
    /* 4674C 801CF6C4 21200000 */   addu      $a0, $zero, $zero
  .L801CF6C8:
    /* 46750 801CF6C8 C849060C */  jal        func_80192720
    /* 46754 801CF6CC 21200000 */   addu      $a0, $zero, $zero
    /* 46758 801CF6D0 21184000 */  addu       $v1, $v0, $zero
    /* 4675C 801CF6D4 FCFF6010 */  beqz       $v1, .L801CF6C8
    /* 46760 801CF6D8 FEFF0224 */   addiu     $v0, $zero, -0x2
    /* 46764 801CF6DC 0C006210 */  beq        $v1, $v0, .L801CF710
    /* 46768 801CF6E0 FFFF6228 */   slti      $v0, $v1, -0x1
    /* 4676C 801CF6E4 05004010 */  beqz       $v0, .L801CF6FC
    /* 46770 801CF6E8 FDFF0224 */   addiu     $v0, $zero, -0x3
    /* 46774 801CF6EC 0B006210 */  beq        $v1, $v0, .L801CF71C
    /* 46778 801CF6F0 00000000 */   nop
    /* 4677C 801CF6F4 C93D0708 */  j          .L801CF724
    /* 46780 801CF6F8 00000000 */   nop
  .L801CF6FC:
    /* 46784 801CF6FC FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 46788 801CF700 06006210 */  beq        $v1, $v0, .L801CF71C
    /* 4678C 801CF704 00000000 */   nop
    /* 46790 801CF708 C93D0708 */  j          .L801CF724
    /* 46794 801CF70C 00000000 */   nop
  .L801CF710:
    /* 46798 801CF710 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4679C 801CF714 21080102 */  addu       $at, $s0, $at
    /* 467A0 801CF718 1E8F20A0 */  sb         $zero, -0x70E2($at)
  .L801CF71C:
    /* 467A4 801CF71C D33D0708 */  j          .L801CF74C
    /* 467A8 801CF720 21106000 */   addu      $v0, $v1, $zero
  .L801CF724:
    /* 467AC 801CF724 1D80043C */  lui        $a0, %hi(D_801D59E8)
    /* 467B0 801CF728 E8598424 */  addiu      $a0, $a0, %lo(D_801D59E8)
    /* 467B4 801CF72C 1E80053C */  lui        $a1, %hi(D_801DA2C8)
    /* 467B8 801CF730 C8A2A524 */  addiu      $a1, $a1, %lo(D_801DA2C8)
    /* 467BC 801CF734 B2B3020C */  jal        func_800ACEC8
    /* 467C0 801CF738 00000000 */   nop
    /* 467C4 801CF73C 21184000 */  addu       $v1, $v0, $zero
    /* 467C8 801CF740 02006014 */  bnez       $v1, .L801CF74C
    /* 467CC 801CF744 11000224 */   addiu     $v0, $zero, 0x11
    /* 467D0 801CF748 01000224 */  addiu      $v0, $zero, 0x1
  .L801CF74C:
    /* 467D4 801CF74C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 467D8 801CF750 1000B08F */  lw         $s0, 0x10($sp)
    /* 467DC 801CF754 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 467E0 801CF758 0800E003 */  jr         $ra
    /* 467E4 801CF75C 00000000 */   nop
endlabel func_801CF6A8
