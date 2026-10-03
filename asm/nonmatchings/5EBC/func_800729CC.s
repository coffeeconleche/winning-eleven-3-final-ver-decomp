nonmatching func_800729CC, 0x60

glabel func_800729CC
    /* 631CC 800729CC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 631D0 800729D0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 631D4 800729D4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 631D8 800729D8 CA87000C */  jal        func_80021F28
    /* 631DC 800729DC 1000B0AF */   sw        $s0, 0x10($sp)
    /* 631E0 800729E0 1080103C */  lui        $s0, %hi(D_800FFB30)
    /* 631E4 800729E4 30FB1026 */  addiu      $s0, $s0, %lo(D_800FFB30)
    /* 631E8 800729E8 21880000 */  addu       $s1, $zero, $zero
  .L800729EC:
    /* 631EC 800729EC 00000292 */  lbu        $v0, 0x0($s0)
    /* 631F0 800729F0 00000000 */  nop
    /* 631F4 800729F4 03004010 */  beqz       $v0, .L80072A04
    /* 631F8 800729F8 00000000 */   nop
    /* 631FC 800729FC 0C6F000C */  jal        func_8001BC30
    /* 63200 80072A00 21200002 */   addu      $a0, $s0, $zero
  .L80072A04:
    /* 63204 80072A04 01003126 */  addiu      $s1, $s1, 0x1
    /* 63208 80072A08 1600222A */  slti       $v0, $s1, 0x16
    /* 6320C 80072A0C F7FF4014 */  bnez       $v0, .L800729EC
    /* 63210 80072A10 E8031026 */   addiu     $s0, $s0, 0x3E8
    /* 63214 80072A14 1800BF8F */  lw         $ra, 0x18($sp)
    /* 63218 80072A18 1400B18F */  lw         $s1, 0x14($sp)
    /* 6321C 80072A1C 1000B08F */  lw         $s0, 0x10($sp)
    /* 63220 80072A20 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 63224 80072A24 0800E003 */  jr         $ra
    /* 63228 80072A28 00000000 */   nop
endlabel func_800729CC
