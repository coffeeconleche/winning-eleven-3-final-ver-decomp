nonmatching func_800BA738, 0x30

glabel func_800BA738
    /* AAF38 800BA738 0D80023C */  lui        $v0, %hi(D_800D4E74)
    /* AAF3C 800BA73C 744E428C */  lw         $v0, %lo(D_800D4E74)($v0)
    /* AAF40 800BA740 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AAF44 800BA744 1000BFAF */  sw         $ra, 0x10($sp)
    /* AAF48 800BA748 0C00428C */  lw         $v0, 0xC($v0)
    /* AAF4C 800BA74C 00000000 */  nop
    /* AAF50 800BA750 09F84000 */  jalr       $v0
    /* AAF54 800BA754 00000000 */   nop
    /* AAF58 800BA758 1000BF8F */  lw         $ra, 0x10($sp)
    /* AAF5C 800BA75C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* AAF60 800BA760 0800E003 */  jr         $ra
    /* AAF64 800BA764 00000000 */   nop
endlabel func_800BA738
