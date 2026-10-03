nonmatching func_801D0BB0, 0xD0

glabel func_801D0BB0
    /* 47C38 801D0BB0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 47C3C 801D0BB4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 47C40 801D0BB8 2180A000 */  addu       $s0, $a1, $zero
    /* 47C44 801D0BBC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 47C48 801D0BC0 1080113C */  lui        $s1, %hi(D_800FF748)
    /* 47C4C 801D0BC4 48F73126 */  addiu      $s1, $s1, %lo(D_800FF748)
    /* 47C50 801D0BC8 1A008014 */  bnez       $a0, .L801D0C34
    /* 47C54 801D0BCC 1800BFAF */   sw        $ra, 0x18($sp)
    /* 47C58 801D0BD0 6549060C */  jal        func_80192594
    /* 47C5C 801D0BD4 21200000 */   addu      $a0, $zero, $zero
  .L801D0BD8:
    /* 47C60 801D0BD8 C849060C */  jal        func_80192720
    /* 47C64 801D0BDC 21200000 */   addu      $a0, $zero, $zero
    /* 47C68 801D0BE0 21184000 */  addu       $v1, $v0, $zero
    /* 47C6C 801D0BE4 FCFF6010 */  beqz       $v1, .L801D0BD8
    /* 47C70 801D0BE8 FEFF0224 */   addiu     $v0, $zero, -0x2
    /* 47C74 801D0BEC 0C006210 */  beq        $v1, $v0, .L801D0C20
    /* 47C78 801D0BF0 FFFF6228 */   slti      $v0, $v1, -0x1
    /* 47C7C 801D0BF4 05004010 */  beqz       $v0, .L801D0C0C
    /* 47C80 801D0BF8 FDFF0224 */   addiu     $v0, $zero, -0x3
    /* 47C84 801D0BFC 0B006210 */  beq        $v1, $v0, .L801D0C2C
    /* 47C88 801D0C00 FF000232 */   andi      $v0, $s0, 0xFF
    /* 47C8C 801D0C04 0E430708 */  j          .L801D0C38
    /* 47C90 801D0C08 00000000 */   nop
  .L801D0C0C:
    /* 47C94 801D0C0C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 47C98 801D0C10 06006210 */  beq        $v1, $v0, .L801D0C2C
    /* 47C9C 801D0C14 FF000232 */   andi      $v0, $s0, 0xFF
    /* 47CA0 801D0C18 0E430708 */  j          .L801D0C38
    /* 47CA4 801D0C1C 00000000 */   nop
  .L801D0C20:
    /* 47CA8 801D0C20 0100013C */  lui        $at, (0x10000 >> 16)
    /* 47CAC 801D0C24 21082102 */  addu       $at, $s1, $at
    /* 47CB0 801D0C28 1E8F20A0 */  sb         $zero, -0x70E2($at)
  .L801D0C2C:
    /* 47CB4 801D0C2C 1A430708 */  j          .L801D0C68
    /* 47CB8 801D0C30 21106000 */   addu      $v0, $v1, $zero
  .L801D0C34:
    /* 47CBC 801D0C34 FF000232 */  andi       $v0, $s0, 0xFF
  .L801D0C38:
    /* 47CC0 801D0C38 80100200 */  sll        $v0, $v0, 2
    /* 47CC4 801D0C3C 1D80013C */  lui        $at, %hi(D_801D5A9C)
    /* 47CC8 801D0C40 21082200 */  addu       $at, $at, $v0
    /* 47CCC 801D0C44 9C5A248C */  lw         $a0, %lo(D_801D5A9C)($at)
    /* 47CD0 801D0C48 1E80053C */  lui        $a1, %hi(D_801DA2C8)
    /* 47CD4 801D0C4C C8A2A524 */  addiu      $a1, $a1, %lo(D_801DA2C8)
    /* 47CD8 801D0C50 B2B3020C */  jal        func_800ACEC8
    /* 47CDC 801D0C54 00000000 */   nop
    /* 47CE0 801D0C58 21184000 */  addu       $v1, $v0, $zero
    /* 47CE4 801D0C5C 02006014 */  bnez       $v1, .L801D0C68
    /* 47CE8 801D0C60 11000224 */   addiu     $v0, $zero, 0x11
    /* 47CEC 801D0C64 01000224 */  addiu      $v0, $zero, 0x1
  .L801D0C68:
    /* 47CF0 801D0C68 1800BF8F */  lw         $ra, 0x18($sp)
    /* 47CF4 801D0C6C 1400B18F */  lw         $s1, 0x14($sp)
    /* 47CF8 801D0C70 1000B08F */  lw         $s0, 0x10($sp)
    /* 47CFC 801D0C74 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 47D00 801D0C78 0800E003 */  jr         $ra
    /* 47D04 801D0C7C 00000000 */   nop
endlabel func_801D0BB0
