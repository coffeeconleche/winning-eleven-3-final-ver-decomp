/* Handwritten function */
nonmatching func_800AD588, 0x68

glabel func_800AD588
    /* 9DD88 800AD588 0E80013C */  lui        $at, %hi(D_800E7038)
    /* 9DD8C 800AD58C 38703FAC */  sw         $ra, %lo(D_800E7038)($at)
    /* 9DD90 800AD590 F6B4020C */  jal        func_800AD3D8
    /* 9DD94 800AD594 00000000 */   nop
    /* 9DD98 800AD598 57000924 */  addiu      $t1, $zero, 0x57
    /* 9DD9C 800AD59C B0000A24 */  addiu      $t2, $zero, 0xB0
    /* 9DDA0 800AD5A0 09F84001 */  jalr       $t2
    /* 9DDA4 800AD5A4 00000000 */   nop
    /* 9DDA8 800AD5A8 09000A24 */  addiu      $t2, $zero, 0x9
    /* 9DDAC 800AD5AC 6C01428C */  lw         $v0, 0x16C($v0)
    /* 9DDB0 800AD5B0 00000000 */  nop
    /* 9DDB4 800AD5B4 2C064320 */  addi       $v1, $v0, 0x62C /* handwritten instruction */
  .L800AD5B8:
    /* 9DDB8 800AD5B8 000060AC */  sw         $zero, 0x0($v1)
    /* 9DDBC 800AD5BC 04006324 */  addiu      $v1, $v1, 0x4
    /* 9DDC0 800AD5C0 FFFF4A25 */  addiu      $t2, $t2, -0x1
    /* 9DDC4 800AD5C4 FCFF4015 */  bnez       $t2, .L800AD5B8
    /* 9DDC8 800AD5C8 00000000 */   nop
    /* 9DDCC 800AD5CC 2AB5020C */  jal        func_800AD4A8
    /* 9DDD0 800AD5D0 00000000 */   nop
    /* 9DDD4 800AD5D4 9AB3020C */  jal        func_800ACE68
    /* 9DDD8 800AD5D8 00000000 */   nop
    /* 9DDDC 800AD5DC 0E801F3C */  lui        $ra, %hi(D_800E7038)
    /* 9DDE0 800AD5E0 3870FF8F */  lw         $ra, %lo(D_800E7038)($ra)
    /* 9DDE4 800AD5E4 00000000 */  nop
    /* 9DDE8 800AD5E8 0800E003 */  jr         $ra
    /* 9DDEC 800AD5EC 00000000 */   nop
endlabel func_800AD588
    /* 9DDF0 800AD5F0 00000000 */  nop
    /* 9DDF4 800AD5F4 00000000 */  nop
