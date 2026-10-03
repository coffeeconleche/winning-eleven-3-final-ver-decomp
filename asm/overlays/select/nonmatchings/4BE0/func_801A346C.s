nonmatching func_801A346C, 0x11C

glabel func_801A346C
    /* 1A4F4 801A346C 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* 1A4F8 801A3470 5000B2AF */  sw         $s2, 0x50($sp)
    /* 1A4FC 801A3474 21908000 */  addu       $s2, $a0, $zero
    /* 1A500 801A3478 5400B3AF */  sw         $s3, 0x54($sp)
    /* 1A504 801A347C 2198A000 */  addu       $s3, $a1, $zero
    /* 1A508 801A3480 21200000 */  addu       $a0, $zero, $zero
    /* 1A50C 801A3484 6000BFAF */  sw         $ra, 0x60($sp)
    /* 1A510 801A3488 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 1A514 801A348C 5800B4AF */  sw         $s4, 0x58($sp)
    /* 1A518 801A3490 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 1A51C 801A3494 A739060C */  jal        func_8018E69C
    /* 1A520 801A3498 4800B0AF */   sw        $s0, 0x48($sp)
    /* 1A524 801A349C 05000424 */  addiu      $a0, $zero, 0x5
    /* 1A528 801A34A0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1A52C 801A34A4 62304524 */  addiu      $a1, $v0, 0x3062
    /* 1A530 801A34A8 21300000 */  addu       $a2, $zero, $zero
    /* 1A534 801A34AC 21380000 */  addu       $a3, $zero, $zero
    /* 1A538 801A34B0 1A001524 */  addiu      $s5, $zero, 0x1A
    /* 1A53C 801A34B4 00101124 */  addiu      $s1, $zero, 0x1000
    /* 1A540 801A34B8 80001024 */  addiu      $s0, $zero, 0x80
    /* 1A544 801A34BC 01001424 */  addiu      $s4, $zero, 0x1
    /* 1A548 801A34C0 FF005232 */  andi       $s2, $s2, 0xFF
    /* 1A54C 801A34C4 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1A550 801A34C8 1400B5AF */  sw         $s5, 0x14($sp)
    /* 1A554 801A34CC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1A558 801A34D0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1A55C 801A34D4 2000B1AF */  sw         $s1, 0x20($sp)
    /* 1A560 801A34D8 2400A0AF */  sw         $zero, 0x24($sp)
    /* 1A564 801A34DC 2800A0AF */  sw         $zero, 0x28($sp)
    /* 1A568 801A34E0 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 1A56C 801A34E4 3000B0AF */  sw         $s0, 0x30($sp)
    /* 1A570 801A34E8 3400B0AF */  sw         $s0, 0x34($sp)
    /* 1A574 801A34EC 3800A0AF */  sw         $zero, 0x38($sp)
    /* 1A578 801A34F0 3C00B4AF */  sw         $s4, 0x3C($sp)
    /* 1A57C 801A34F4 ED4F060C */  jal        func_80193FB4
    /* 1A580 801A34F8 4000B2AF */   sw        $s2, 0x40($sp)
    /* 1A584 801A34FC A739060C */  jal        func_8018E69C
    /* 1A588 801A3500 01000424 */   addiu     $a0, $zero, 0x1
    /* 1A58C 801A3504 06000424 */  addiu      $a0, $zero, 0x6
    /* 1A590 801A3508 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1A594 801A350C 62304524 */  addiu      $a1, $v0, 0x3062
    /* 1A598 801A3510 21300000 */  addu       $a2, $zero, $zero
    /* 1A59C 801A3514 40100200 */  sll        $v0, $v0, 1
    /* 1A5A0 801A3518 1980013C */  lui        $at, %hi(D_80189FF0)
    /* 1A5A4 801A351C 21082200 */  addu       $at, $at, $v0
    /* 1A5A8 801A3520 F09F2794 */  lhu        $a3, %lo(D_80189FF0)($at)
    /* 1A5AC 801A3524 FF007332 */  andi       $s3, $s3, 0xFF
    /* 1A5B0 801A3528 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1A5B4 801A352C 1400B5AF */  sw         $s5, 0x14($sp)
    /* 1A5B8 801A3530 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1A5BC 801A3534 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1A5C0 801A3538 2000B1AF */  sw         $s1, 0x20($sp)
    /* 1A5C4 801A353C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 1A5C8 801A3540 2800A0AF */  sw         $zero, 0x28($sp)
    /* 1A5CC 801A3544 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 1A5D0 801A3548 3000B0AF */  sw         $s0, 0x30($sp)
    /* 1A5D4 801A354C 3400B0AF */  sw         $s0, 0x34($sp)
    /* 1A5D8 801A3550 3800A0AF */  sw         $zero, 0x38($sp)
    /* 1A5DC 801A3554 3C00B4AF */  sw         $s4, 0x3C($sp)
    /* 1A5E0 801A3558 ED4F060C */  jal        func_80193FB4
    /* 1A5E4 801A355C 4000B3AF */   sw        $s3, 0x40($sp)
    /* 1A5E8 801A3560 6000BF8F */  lw         $ra, 0x60($sp)
    /* 1A5EC 801A3564 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 1A5F0 801A3568 5800B48F */  lw         $s4, 0x58($sp)
    /* 1A5F4 801A356C 5400B38F */  lw         $s3, 0x54($sp)
    /* 1A5F8 801A3570 5000B28F */  lw         $s2, 0x50($sp)
    /* 1A5FC 801A3574 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 1A600 801A3578 4800B08F */  lw         $s0, 0x48($sp)
    /* 1A604 801A357C 6800BD27 */  addiu      $sp, $sp, 0x68
    /* 1A608 801A3580 0800E003 */  jr         $ra
    /* 1A60C 801A3584 00000000 */   nop
endlabel func_801A346C
