nonmatching func_800B9448, 0xC8

glabel func_800B9448
    /* A9C48 800B9448 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* A9C4C 800B944C 1800B2AF */  sw         $s2, 0x18($sp)
    /* A9C50 800B9450 21908000 */  addu       $s2, $a0, $zero
    /* A9C54 800B9454 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* A9C58 800B9458 2198A000 */  addu       $s3, $a1, $zero
    /* A9C5C 800B945C 1400B1AF */  sw         $s1, 0x14($sp)
    /* A9C60 800B9460 0D80113C */  lui        $s1, %hi(D_800D3C84)
    /* A9C64 800B9464 843C3126 */  addiu      $s1, $s1, %lo(D_800D3C84)
    /* A9C68 800B9468 2000BFAF */  sw         $ra, 0x20($sp)
    /* A9C6C 800B946C 1000B0AF */  sw         $s0, 0x10($sp)
  .L800B9470:
    /* A9C70 800B9470 46E9020C */  jal        func_800BA518
    /* A9C74 800B9474 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* A9C78 800B9478 0000238E */  lw         $v1, 0x0($s1)
    /* A9C7C 800B947C 00000000 */  nop
    /* A9C80 800B9480 B0046324 */  addiu      $v1, $v1, 0x4B0
    /* A9C84 800B9484 2A186200 */  slt        $v1, $v1, $v0
    /* A9C88 800B9488 13006014 */  bnez       $v1, .L800B94D8
    /* A9C8C 800B948C FFFF1024 */   addiu     $s0, $zero, -0x1
    /* A9C90 800B9490 F8FF228E */  lw         $v0, -0x8($s1)
    /* A9C94 800B9494 00000000 */  nop
    /* A9C98 800B9498 09004004 */  bltz       $v0, .L800B94C0
    /* A9C9C 800B949C 00000000 */   nop
    /* A9CA0 800B94A0 46E9020C */  jal        func_800BA518
    /* A9CA4 800B94A4 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* A9CA8 800B94A8 FCFF238E */  lw         $v1, -0x4($s1)
    /* A9CAC 800B94AC 00000000 */  nop
    /* A9CB0 800B94B0 3C006324 */  addiu      $v1, $v1, 0x3C
    /* A9CB4 800B94B4 2A186200 */  slt        $v1, $v1, $v0
    /* A9CB8 800B94B8 06006010 */  beqz       $v1, .L800B94D4
    /* A9CBC 800B94BC 00000000 */   nop
  .L800B94C0:
    /* A9CC0 800B94C0 31E4020C */  jal        func_800B90C4
    /* A9CC4 800B94C4 01000424 */   addiu     $a0, $zero, 0x1
    /* A9CC8 800B94C8 E4FF308E */  lw         $s0, -0x1C($s1)
    /* A9CCC 800B94CC 36E50208 */  j          .L800B94D8
    /* A9CD0 800B94D0 00000000 */   nop
  .L800B94D4:
    /* A9CD4 800B94D4 F8FF308E */  lw         $s0, -0x8($s1)
  .L800B94D8:
    /* A9CD8 800B94D8 03004016 */  bnez       $s2, .L800B94E8
    /* A9CDC 800B94DC 01000424 */   addiu     $a0, $zero, 0x1
    /* A9CE0 800B94E0 E3FF001E */  bgtz       $s0, .L800B9470
    /* A9CE4 800B94E4 00000000 */   nop
  .L800B94E8:
    /* A9CE8 800B94E8 FBDB020C */  jal        func_800B6FEC
    /* A9CEC 800B94EC 21286002 */   addu      $a1, $s3, $zero
    /* A9CF0 800B94F0 21100002 */  addu       $v0, $s0, $zero
    /* A9CF4 800B94F4 2000BF8F */  lw         $ra, 0x20($sp)
    /* A9CF8 800B94F8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* A9CFC 800B94FC 1800B28F */  lw         $s2, 0x18($sp)
    /* A9D00 800B9500 1400B18F */  lw         $s1, 0x14($sp)
    /* A9D04 800B9504 1000B08F */  lw         $s0, 0x10($sp)
    /* A9D08 800B9508 0800E003 */  jr         $ra
    /* A9D0C 800B950C 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800B9448
