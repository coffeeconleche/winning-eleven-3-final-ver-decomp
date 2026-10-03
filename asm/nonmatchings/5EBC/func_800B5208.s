/* Handwritten function */
nonmatching func_800B5208, 0x30

glabel func_800B5208
    /* A5A08 800B5208 0000888C */  lw         $t0, 0x0($a0)
    /* A5A0C 800B520C 0400898C */  lw         $t1, 0x4($a0)
    /* A5A10 800B5210 08008A8C */  lw         $t2, 0x8($a0)
    /* A5A14 800B5214 0C008B8C */  lw         $t3, 0xC($a0)
    /* A5A18 800B5218 10008C8C */  lw         $t4, 0x10($a0)
    /* A5A1C 800B521C 0040C848 */  ctc2       $t0, $8 /* handwritten instruction */
    /* A5A20 800B5220 0048C948 */  ctc2       $t1, $9 /* handwritten instruction */
    /* A5A24 800B5224 0050CA48 */  ctc2       $t2, $10 /* handwritten instruction */
    /* A5A28 800B5228 0058CB48 */  ctc2       $t3, $11 /* handwritten instruction */
    /* A5A2C 800B522C 0060CC48 */  ctc2       $t4, $12 /* handwritten instruction */
    /* A5A30 800B5230 0800E003 */  jr         $ra
    /* A5A34 800B5234 00000000 */   nop
endlabel func_800B5208
