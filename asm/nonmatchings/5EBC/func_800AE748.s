nonmatching func_800AE748, 0x98

glabel func_800AE748
    /* 9EF48 800AE748 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 9EF4C 800AE74C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 9EF50 800AE750 21988000 */  addu       $s3, $a0, $zero
    /* 9EF54 800AE754 0180043C */  lui        $a0, %hi(D_80014F48)
    /* 9EF58 800AE758 484F8424 */  addiu      $a0, $a0, %lo(D_80014F48)
    /* 9EF5C 800AE75C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 9EF60 800AE760 2190A000 */  addu       $s2, $a1, $zero
    /* 9EF64 800AE764 21286002 */  addu       $a1, $s3, $zero
    /* 9EF68 800AE768 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9EF6C 800AE76C 2180C000 */  addu       $s0, $a2, $zero
    /* 9EF70 800AE770 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9EF74 800AE774 2000BFAF */  sw         $ra, 0x20($sp)
    /* 9EF78 800AE778 67B9020C */  jal        func_800AE59C
    /* 9EF7C 800AE77C 2188E000 */   addu      $s1, $a3, $zero
    /* 9EF80 800AE780 21286002 */  addu       $a1, $s3, $zero
    /* 9EF84 800AE784 FF003132 */  andi       $s1, $s1, 0xFF
    /* 9EF88 800AE788 008C1100 */  sll        $s1, $s1, 16
    /* 9EF8C 800AE78C FF001032 */  andi       $s0, $s0, 0xFF
    /* 9EF90 800AE790 00821000 */  sll        $s0, $s0, 8
    /* 9EF94 800AE794 0080023C */  lui        $v0, (0x80000000 >> 16)
    /* 9EF98 800AE798 25800202 */  or         $s0, $s0, $v0
    /* 9EF9C 800AE79C 25883002 */  or         $s1, $s1, $s0
    /* 9EFA0 800AE7A0 FF005232 */  andi       $s2, $s2, 0xFF
    /* 9EFA4 800AE7A4 0D80033C */  lui        $v1, %hi(D_800CEABC)
    /* 9EFA8 800AE7A8 BCEA638C */  lw         $v1, %lo(D_800CEABC)($v1)
    /* 9EFAC 800AE7AC 08000624 */  addiu      $a2, $zero, 0x8
    /* 9EFB0 800AE7B0 0C00648C */  lw         $a0, 0xC($v1)
    /* 9EFB4 800AE7B4 0800628C */  lw         $v0, 0x8($v1)
    /* 9EFB8 800AE7B8 00000000 */  nop
    /* 9EFBC 800AE7BC 09F84000 */  jalr       $v0
    /* 9EFC0 800AE7C0 25383202 */   or        $a3, $s1, $s2
    /* 9EFC4 800AE7C4 2000BF8F */  lw         $ra, 0x20($sp)
    /* 9EFC8 800AE7C8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 9EFCC 800AE7CC 1800B28F */  lw         $s2, 0x18($sp)
    /* 9EFD0 800AE7D0 1400B18F */  lw         $s1, 0x14($sp)
    /* 9EFD4 800AE7D4 1000B08F */  lw         $s0, 0x10($sp)
    /* 9EFD8 800AE7D8 0800E003 */  jr         $ra
    /* 9EFDC 800AE7DC 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800AE748
