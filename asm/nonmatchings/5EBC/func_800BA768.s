nonmatching func_800BA768, 0x30

glabel func_800BA768
    /* AAF68 800BA768 0D80023C */  lui        $v0, %hi(D_800D4E74)
    /* AAF6C 800BA76C 744E428C */  lw         $v0, %lo(D_800D4E74)($v0)
    /* AAF70 800BA770 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AAF74 800BA774 1000BFAF */  sw         $ra, 0x10($sp)
    /* AAF78 800BA778 0800428C */  lw         $v0, 0x8($v0)
    /* AAF7C 800BA77C 00000000 */  nop
    /* AAF80 800BA780 09F84000 */  jalr       $v0
    /* AAF84 800BA784 00000000 */   nop
    /* AAF88 800BA788 1000BF8F */  lw         $ra, 0x10($sp)
    /* AAF8C 800BA78C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* AAF90 800BA790 0800E003 */  jr         $ra
    /* AAF94 800BA794 00000000 */   nop
endlabel func_800BA768
