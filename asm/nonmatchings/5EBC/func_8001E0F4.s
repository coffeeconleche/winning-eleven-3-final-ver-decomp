nonmatching func_8001E0F4, 0x44

glabel func_8001E0F4
    /* E8F4 8001E0F4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* E8F8 8001E0F8 801F043C */  lui        $a0, (0x1F8001F0 >> 16)
    /* E8FC 8001E0FC 1000BFAF */  sw         $ra, 0x10($sp)
    /* E900 8001E100 801F013C */  lui        $at, (0x1F80020C >> 16)
    /* E904 8001E104 0C0220AC */  sw         $zero, (0x1F80020C & 0xFFFF)($at)
    /* E908 8001E108 801F013C */  lui        $at, (0x1F800208 >> 16)
    /* E90C 8001E10C 080220AC */  sw         $zero, (0x1F800208 & 0xFFFF)($at)
    /* E910 8001E110 EAD7020C */  jal        func_800B5FA8
    /* E914 8001E114 F0018434 */   ori       $a0, $a0, (0x1F8001F0 & 0xFFFF)
    /* E918 8001E118 8ED4020C */  jal        func_800B5238
    /* E91C 8001E11C 00010424 */   addiu     $a0, $zero, 0x100
    /* E920 8001E120 6AD6020C */  jal        func_800B59A8
    /* E924 8001E124 21200000 */   addu      $a0, $zero, $zero
    /* E928 8001E128 1000BF8F */  lw         $ra, 0x10($sp)
    /* E92C 8001E12C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* E930 8001E130 0800E003 */  jr         $ra
    /* E934 8001E134 00000000 */   nop
endlabel func_8001E0F4
