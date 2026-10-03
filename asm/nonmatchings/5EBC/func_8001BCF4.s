nonmatching func_8001BCF4, 0x84

glabel func_8001BCF4
    /* C4F4 8001BCF4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* C4F8 8001BCF8 1800B2AF */  sw         $s2, 0x18($sp)
    /* C4FC 8001BCFC 21908000 */  addu       $s2, $a0, $zero
    /* C500 8001BD00 1000B0AF */  sw         $s0, 0x10($sp)
    /* C504 8001BD04 0400D024 */  addiu      $s0, $a2, 0x4
    /* C508 8001BD08 1400B1AF */  sw         $s1, 0x14($sp)
    /* C50C 8001BD0C 2188A000 */  addu       $s1, $a1, $zero
    /* C510 8001BD10 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* C514 8001BD14 DAD4020C */  jal        func_800B5368
    /* C518 8001BD18 21200002 */   addu      $a0, $s0, $zero
    /* C51C 8001BD1C 08001026 */  addiu      $s0, $s0, 0x8
    /* C520 8001BD20 0000028E */  lw         $v0, 0x0($s0)
    /* C524 8001BD24 08001026 */  addiu      $s0, $s0, 0x8
    /* C528 8001BD28 FF003132 */  andi       $s1, $s1, 0xFF
    /* C52C 8001BD2C 80881100 */  sll        $s1, $s1, 2
    /* C530 8001BD30 21883202 */  addu       $s1, $s1, $s2
    /* C534 8001BD34 8C0022AE */  sw         $v0, 0x8C($s1)
    /* C538 8001BD38 0000028E */  lw         $v0, 0x0($s0)
    /* C53C 8001BD3C 08001026 */  addiu      $s0, $s0, 0x8
    /* C540 8001BD40 EC0022AE */  sw         $v0, 0xEC($s1)
    /* C544 8001BD44 0000028E */  lw         $v0, 0x0($s0)
    /* C548 8001BD48 00000000 */  nop
    /* C54C 8001BD4C 4C0122AE */  sw         $v0, 0x14C($s1)
    /* C550 8001BD50 0400028E */  lw         $v0, 0x4($s0)
    /* C554 8001BD54 00000000 */  nop
    /* C558 8001BD58 AC0122AE */  sw         $v0, 0x1AC($s1)
    /* C55C 8001BD5C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* C560 8001BD60 1800B28F */  lw         $s2, 0x18($sp)
    /* C564 8001BD64 1400B18F */  lw         $s1, 0x14($sp)
    /* C568 8001BD68 1000B08F */  lw         $s0, 0x10($sp)
    /* C56C 8001BD6C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* C570 8001BD70 0800E003 */  jr         $ra
    /* C574 8001BD74 00000000 */   nop
endlabel func_8001BCF4
