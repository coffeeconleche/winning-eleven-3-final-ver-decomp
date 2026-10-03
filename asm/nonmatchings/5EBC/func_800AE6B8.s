nonmatching func_800AE6B8, 0x90

glabel func_800AE6B8
    /* 9EEB8 800AE6B8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 9EEBC 800AE6BC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 9EEC0 800AE6C0 21988000 */  addu       $s3, $a0, $zero
    /* 9EEC4 800AE6C4 0180043C */  lui        $a0, %hi(D_80014F3C)
    /* 9EEC8 800AE6C8 3C4F8424 */  addiu      $a0, $a0, %lo(D_80014F3C)
    /* 9EECC 800AE6CC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 9EED0 800AE6D0 2190A000 */  addu       $s2, $a1, $zero
    /* 9EED4 800AE6D4 21286002 */  addu       $a1, $s3, $zero
    /* 9EED8 800AE6D8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9EEDC 800AE6DC 2188C000 */  addu       $s1, $a2, $zero
    /* 9EEE0 800AE6E0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9EEE4 800AE6E4 2000BFAF */  sw         $ra, 0x20($sp)
    /* 9EEE8 800AE6E8 67B9020C */  jal        func_800AE59C
    /* 9EEEC 800AE6EC 2180E000 */   addu      $s0, $a3, $zero
    /* 9EEF0 800AE6F0 21286002 */  addu       $a1, $s3, $zero
    /* 9EEF4 800AE6F4 FF001032 */  andi       $s0, $s0, 0xFF
    /* 9EEF8 800AE6F8 00841000 */  sll        $s0, $s0, 16
    /* 9EEFC 800AE6FC FF003132 */  andi       $s1, $s1, 0xFF
    /* 9EF00 800AE700 008A1100 */  sll        $s1, $s1, 8
    /* 9EF04 800AE704 25801102 */  or         $s0, $s0, $s1
    /* 9EF08 800AE708 FF005232 */  andi       $s2, $s2, 0xFF
    /* 9EF0C 800AE70C 0D80023C */  lui        $v0, %hi(D_800CEABC)
    /* 9EF10 800AE710 BCEA428C */  lw         $v0, %lo(D_800CEABC)($v0)
    /* 9EF14 800AE714 08000624 */  addiu      $a2, $zero, 0x8
    /* 9EF18 800AE718 0C00448C */  lw         $a0, 0xC($v0)
    /* 9EF1C 800AE71C 0800428C */  lw         $v0, 0x8($v0)
    /* 9EF20 800AE720 00000000 */  nop
    /* 9EF24 800AE724 09F84000 */  jalr       $v0
    /* 9EF28 800AE728 25381202 */   or        $a3, $s0, $s2
    /* 9EF2C 800AE72C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 9EF30 800AE730 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 9EF34 800AE734 1800B28F */  lw         $s2, 0x18($sp)
    /* 9EF38 800AE738 1400B18F */  lw         $s1, 0x14($sp)
    /* 9EF3C 800AE73C 1000B08F */  lw         $s0, 0x10($sp)
    /* 9EF40 800AE740 0800E003 */  jr         $ra
    /* 9EF44 800AE744 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800AE6B8
