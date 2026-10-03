nonmatching func_801A84C8, 0x78

glabel func_801A84C8
    /* 1F550 801A84C8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1F554 801A84CC 21188000 */  addu       $v1, $a0, $zero
    /* 1F558 801A84D0 2140A000 */  addu       $t0, $a1, $zero
    /* 1F55C 801A84D4 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 1F560 801A84D8 18000224 */  addiu      $v0, $zero, 0x18
    /* 1F564 801A84DC FF00C630 */  andi       $a2, $a2, 0xFF
    /* 1F568 801A84E0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1F56C 801A84E4 40100600 */  sll        $v0, $a2, 1
    /* 1F570 801A84E8 21104600 */  addu       $v0, $v0, $a2
    /* 1F574 801A84EC C0100200 */  sll        $v0, $v0, 3
    /* 1F578 801A84F0 50004224 */  addiu      $v0, $v0, 0x50
    /* 1F57C 801A84F4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1F580 801A84F8 38000224 */  addiu      $v0, $zero, 0x38
    /* 1F584 801A84FC 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1F588 801A8500 0C000224 */  addiu      $v0, $zero, 0xC
    /* 1F58C 801A8504 7D00C624 */  addiu      $a2, $a2, 0x7D
    /* 1F590 801A8508 FF00E730 */  andi       $a3, $a3, 0xFF
    /* 1F594 801A850C 21200000 */  addu       $a0, $zero, $zero
    /* 1F598 801A8510 21286000 */  addu       $a1, $v1, $zero
    /* 1F59C 801A8514 2000A6AF */  sw         $a2, 0x20($sp)
    /* 1F5A0 801A8518 21300001 */  addu       $a2, $t0, $zero
    /* 1F5A4 801A851C 2400A7AF */  sw         $a3, 0x24($sp)
    /* 1F5A8 801A8520 18000724 */  addiu      $a3, $zero, 0x18
    /* 1F5AC 801A8524 2800BFAF */  sw         $ra, 0x28($sp)
    /* 1F5B0 801A8528 DE58060C */  jal        func_80196378
    /* 1F5B4 801A852C 1C00A2AF */   sw        $v0, 0x1C($sp)
    /* 1F5B8 801A8530 2800BF8F */  lw         $ra, 0x28($sp)
    /* 1F5BC 801A8534 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 1F5C0 801A8538 0800E003 */  jr         $ra
    /* 1F5C4 801A853C 00000000 */   nop
endlabel func_801A84C8
