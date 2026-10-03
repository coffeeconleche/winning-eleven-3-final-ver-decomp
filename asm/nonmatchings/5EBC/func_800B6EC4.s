nonmatching func_800B6EC4, 0x6C

glabel func_800B6EC4
    /* A76C4 800B6EC4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A76C8 800B6EC8 1000B0AF */  sw         $s0, 0x10($sp)
    /* A76CC 800B6ECC 21808000 */  addu       $s0, $a0, $zero
    /* A76D0 800B6ED0 02000224 */  addiu      $v0, $zero, 0x2
    /* A76D4 800B6ED4 05000216 */  bne        $s0, $v0, .L800B6EEC
    /* A76D8 800B6ED8 1400BFAF */   sw        $ra, 0x14($sp)
    /* A76DC 800B6EDC C5E1020C */  jal        func_800B8714
    /* A76E0 800B6EE0 00000000 */   nop
    /* A76E4 800B6EE4 C8DB0208 */  j          .L800B6F20
    /* A76E8 800B6EE8 01000224 */   addiu     $v0, $zero, 0x1
  .L800B6EEC:
    /* A76EC 800B6EEC D8E1020C */  jal        func_800B8760
    /* A76F0 800B6EF0 00000000 */   nop
    /* A76F4 800B6EF4 0A004014 */  bnez       $v0, .L800B6F20
    /* A76F8 800B6EF8 21100000 */   addu      $v0, $zero, $zero
    /* A76FC 800B6EFC 01000224 */  addiu      $v0, $zero, 0x1
    /* A7700 800B6F00 07000216 */  bne        $s0, $v0, .L800B6F20
    /* A7704 800B6F04 00000000 */   nop
    /* A7708 800B6F08 89E1020C */  jal        func_800B8624
    /* A770C 800B6F0C 00000000 */   nop
    /* A7710 800B6F10 21184000 */  addu       $v1, $v0, $zero
    /* A7714 800B6F14 02006014 */  bnez       $v1, .L800B6F20
    /* A7718 800B6F18 21100000 */   addu      $v0, $zero, $zero
    /* A771C 800B6F1C 01000224 */  addiu      $v0, $zero, 0x1
  .L800B6F20:
    /* A7720 800B6F20 1400BF8F */  lw         $ra, 0x14($sp)
    /* A7724 800B6F24 1000B08F */  lw         $s0, 0x10($sp)
    /* A7728 800B6F28 0800E003 */  jr         $ra
    /* A772C 800B6F2C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800B6EC4
