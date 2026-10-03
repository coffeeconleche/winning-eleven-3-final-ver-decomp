nonmatching func_800BA88C, 0x28

glabel func_800BA88C
    /* AB08C 800BA88C 0D80023C */  lui        $v0, %hi(D_800D3DEE)
    /* AB090 800BA890 EE3D4294 */  lhu        $v0, %lo(D_800D3DEE)($v0)
    /* AB094 800BA894 0800E003 */  jr         $ra
    /* AB098 800BA898 00000000 */   nop
    /* AB09C 800BA89C 0D80023C */  lui        $v0, %hi(D_800D4E7C)
    /* AB0A0 800BA8A0 7C4E428C */  lw         $v0, %lo(D_800D4E7C)($v0)
    /* AB0A4 800BA8A4 00000000 */  nop
    /* AB0A8 800BA8A8 00004294 */  lhu        $v0, 0x0($v0)
    /* AB0AC 800BA8AC 0800E003 */  jr         $ra
    /* AB0B0 800BA8B0 00000000 */   nop
endlabel func_800BA88C
