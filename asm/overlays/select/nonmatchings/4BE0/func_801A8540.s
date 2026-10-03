nonmatching func_801A8540, 0x70

glabel func_801A8540
    /* 1F5C8 801A8540 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1F5CC 801A8544 21188000 */  addu       $v1, $a0, $zero
    /* 1F5D0 801A8548 2140A000 */  addu       $t0, $a1, $zero
    /* 1F5D4 801A854C FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 1F5D8 801A8550 10000224 */  addiu      $v0, $zero, 0x10
    /* 1F5DC 801A8554 FF00C630 */  andi       $a2, $a2, 0xFF
    /* 1F5E0 801A8558 C0300600 */  sll        $a2, $a2, 3
    /* 1F5E4 801A855C D800C624 */  addiu      $a2, $a2, 0xD8
    /* 1F5E8 801A8560 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1F5EC 801A8564 18000224 */  addiu      $v0, $zero, 0x18
    /* 1F5F0 801A8568 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1F5F4 801A856C 1D000224 */  addiu      $v0, $zero, 0x1D
    /* 1F5F8 801A8570 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 1F5FC 801A8574 91000224 */  addiu      $v0, $zero, 0x91
    /* 1F600 801A8578 FF00E730 */  andi       $a3, $a3, 0xFF
    /* 1F604 801A857C 21200000 */  addu       $a0, $zero, $zero
    /* 1F608 801A8580 21286000 */  addu       $a1, $v1, $zero
    /* 1F60C 801A8584 1400A6AF */  sw         $a2, 0x14($sp)
    /* 1F610 801A8588 21300001 */  addu       $a2, $t0, $zero
    /* 1F614 801A858C 2400A7AF */  sw         $a3, 0x24($sp)
    /* 1F618 801A8590 08000724 */  addiu      $a3, $zero, 0x8
    /* 1F61C 801A8594 2800BFAF */  sw         $ra, 0x28($sp)
    /* 1F620 801A8598 DE58060C */  jal        func_80196378
    /* 1F624 801A859C 2000A2AF */   sw        $v0, 0x20($sp)
    /* 1F628 801A85A0 2800BF8F */  lw         $ra, 0x28($sp)
    /* 1F62C 801A85A4 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 1F630 801A85A8 0800E003 */  jr         $ra
    /* 1F634 801A85AC 00000000 */   nop
endlabel func_801A8540
