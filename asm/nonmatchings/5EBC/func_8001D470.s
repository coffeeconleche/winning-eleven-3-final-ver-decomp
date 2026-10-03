nonmatching func_8001D470, 0xF8

glabel func_8001D470
    /* DC70 8001D470 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* DC74 8001D474 FF008830 */  andi       $t0, $a0, 0xFF
    /* DC78 8001D478 2000B4AF */  sw         $s4, 0x20($sp)
    /* DC7C 8001D47C 4400B48F */  lw         $s4, 0x44($sp)
    /* DC80 8001D480 C0100800 */  sll        $v0, $t0, 3
    /* DC84 8001D484 2400B5AF */  sw         $s5, 0x24($sp)
    /* DC88 8001D488 4800B58F */  lw         $s5, 0x48($sp)
    /* DC8C 8001D48C 21104800 */  addu       $v0, $v0, $t0
    /* DC90 8001D490 2800B6AF */  sw         $s6, 0x28($sp)
    /* DC94 8001D494 4C00B68F */  lw         $s6, 0x4C($sp)
    /* DC98 8001D498 00110200 */  sll        $v0, $v0, 4
    /* DC9C 8001D49C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* DCA0 8001D4A0 4000B393 */  lbu        $s3, 0x40($sp)
    /* DCA4 8001D4A4 5000A393 */  lbu        $v1, 0x50($sp)
    /* DCA8 8001D4A8 1080093C */  lui        $t1, %hi(D_80105E18)
    /* DCAC 8001D4AC 185E2925 */  addiu      $t1, $t1, %lo(D_80105E18)
    /* DCB0 8001D4B0 1000B0AF */  sw         $s0, 0x10($sp)
    /* DCB4 8001D4B4 21804900 */  addu       $s0, $v0, $t1
    /* DCB8 8001D4B8 1400B1AF */  sw         $s1, 0x14($sp)
    /* DCBC 8001D4BC 2188C000 */  addu       $s1, $a2, $zero
    /* DCC0 8001D4C0 1800B2AF */  sw         $s2, 0x18($sp)
    /* DCC4 8001D4C4 2190E000 */  addu       $s2, $a3, $zero
    /* DCC8 8001D4C8 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* DCCC 8001D4CC 8C0004A2 */  sb         $a0, 0x8C($s0)
    /* DCD0 8001D4D0 05000015 */  bnez       $t0, .L8001D4E8
    /* DCD4 8001D4D4 000003A2 */   sb        $v1, 0x0($s0)
    /* DCD8 8001D4D8 1D80023C */  lui        $v0, %hi(D_801C8000)
    /* DCDC 8001D4DC 0080428C */  lw         $v0, %lo(D_801C8000)($v0)
    /* DCE0 8001D4E0 41750008 */  j          .L8001D504
    /* DCE4 8001D4E4 100002AE */   sw        $v0, 0x10($s0)
  .L8001D4E8:
    /* DCE8 8001D4E8 FF00A230 */  andi       $v0, $a1, 0xFF
    /* DCEC 8001D4EC 80100200 */  sll        $v0, $v0, 2
    /* DCF0 8001D4F0 1A80013C */  lui        $at, %hi(D_801A6000)
    /* DCF4 8001D4F4 21082200 */  addu       $at, $at, $v0
    /* DCF8 8001D4F8 0060228C */  lw         $v0, %lo(D_801A6000)($at)
    /* DCFC 8001D4FC 00000000 */  nop
    /* DD00 8001D500 100002AE */  sw         $v0, 0x10($s0)
  .L8001D504:
    /* DD04 8001D504 5E6F000C */  jal        func_8001BD78
    /* DD08 8001D508 21200002 */   addu      $a0, $s0, $zero
    /* DD0C 8001D50C 21200002 */  addu       $a0, $s0, $zero
    /* DD10 8001D510 080091A4 */  sh         $s1, 0x8($a0)
    /* DD14 8001D514 0A0080A4 */  sh         $zero, 0xA($a0)
    /* DD18 8001D518 0C0092A4 */  sh         $s2, 0xC($a0)
    /* DD1C 8001D51C 140080A4 */  sh         $zero, 0x14($a0)
    /* DD20 8001D520 0E0093A0 */  sb         $s3, 0xE($a0)
    /* DD24 8001D524 180080A4 */  sh         $zero, 0x18($a0)
    /* DD28 8001D528 1C0094AC */  sw         $s4, 0x1C($a0)
    /* DD2C 8001D52C 200095AC */  sw         $s5, 0x20($a0)
    /* DD30 8001D530 240096AC */  sw         $s6, 0x24($a0)
    /* DD34 8001D534 5A75000C */  jal        func_8001D568
    /* DD38 8001D538 8D0080A0 */   sb        $zero, 0x8D($a0)
    /* DD3C 8001D53C 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* DD40 8001D540 2800B68F */  lw         $s6, 0x28($sp)
    /* DD44 8001D544 2400B58F */  lw         $s5, 0x24($sp)
    /* DD48 8001D548 2000B48F */  lw         $s4, 0x20($sp)
    /* DD4C 8001D54C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* DD50 8001D550 1800B28F */  lw         $s2, 0x18($sp)
    /* DD54 8001D554 1400B18F */  lw         $s1, 0x14($sp)
    /* DD58 8001D558 1000B08F */  lw         $s0, 0x10($sp)
    /* DD5C 8001D55C 3000BD27 */  addiu      $sp, $sp, 0x30
    /* DD60 8001D560 0800E003 */  jr         $ra
    /* DD64 8001D564 00000000 */   nop
endlabel func_8001D470
