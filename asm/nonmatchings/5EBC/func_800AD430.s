/* Handwritten function */
nonmatching func_800AD430, 0x70

glabel func_800AD430
    /* 9DC30 800AD430 0E80013C */  lui        $at, %hi(D_800E7018)
    /* 9DC34 800AD434 18703FAC */  sw         $ra, %lo(D_800E7018)($at)
    /* 9DC38 800AD438 F6B4020C */  jal        func_800AD3D8
    /* 9DC3C 800AD43C 00000000 */   nop
    /* 9DC40 800AD440 57000924 */  addiu      $t1, $zero, 0x57
    /* 9DC44 800AD444 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* 9DC48 800AD448 09F84001 */  jalr       $t2
    /* 9DC4C 800AD44C 00000000 */   nop
    /* 9DC50 800AD450 6C01428C */  lw         $v0, 0x16C($v0)
    /* 9DC54 800AD454 0B000924 */  addiu      $t1, $zero, 0xB
    /* 9DC58 800AD458 84084320 */  addi       $v1, $v0, 0x884 /* handwritten instruction */
    /* 9DC5C 800AD45C 0E80013C */  lui        $at, %hi(jtbl_800E7020)
    /* 9DC60 800AD460 207023AC */  sw         $v1, %lo(jtbl_800E7020)($at)
    /* 9DC64 800AD464 94084320 */  addi       $v1, $v0, 0x894 /* handwritten instruction */
    /* 9DC68 800AD468 0E80013C */  lui        $at, %hi(jtbl_800E7024)
    /* 9DC6C 800AD46C 247023AC */  sw         $v1, %lo(jtbl_800E7024)($at)
  .L800AD470:
    /* 9DC70 800AD470 940540AC */  sw         $zero, 0x594($v0)
    /* 9DC74 800AD474 04004224 */  addiu      $v0, $v0, 0x4
    /* 9DC78 800AD478 FFFF2925 */  addiu      $t1, $t1, -0x1
    /* 9DC7C 800AD47C FCFF2015 */  bnez       $t1, .L800AD470
    /* 9DC80 800AD480 00000000 */   nop
    /* 9DC84 800AD484 2AB5020C */  jal        func_800AD4A8
    /* 9DC88 800AD488 00000000 */   nop
    /* 9DC8C 800AD48C 0E801F3C */  lui        $ra, %hi(D_800E7018)
    /* 9DC90 800AD490 1870FF8F */  lw         $ra, %lo(D_800E7018)($ra)
    /* 9DC94 800AD494 00000000 */  nop
    /* 9DC98 800AD498 0800E003 */  jr         $ra
    /* 9DC9C 800AD49C 00000000 */   nop
endlabel func_800AD430
    /* 9DCA0 800AD4A0 00000000 */  nop
    /* 9DCA4 800AD4A4 00000000 */  nop
