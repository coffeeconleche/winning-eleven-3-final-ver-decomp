/* Handwritten function */
nonmatching func_800B3F08, 0x20

glabel func_800B3F08
    /* A4708 800B3F08 1400888C */  lw         $t0, 0x14($a0)
    /* A470C 800B3F0C 1800898C */  lw         $t1, 0x18($a0)
    /* A4710 800B3F10 1C008A8C */  lw         $t2, 0x1C($a0)
    /* A4714 800B3F14 0028C848 */  ctc2       $t0, $5 /* handwritten instruction */
    /* A4718 800B3F18 0030C948 */  ctc2       $t1, $6 /* handwritten instruction */
    /* A471C 800B3F1C 0038CA48 */  ctc2       $t2, $7 /* handwritten instruction */
    /* A4720 800B3F20 0800E003 */  jr         $ra
    /* A4724 800B3F24 00000000 */   nop
endlabel func_800B3F08
