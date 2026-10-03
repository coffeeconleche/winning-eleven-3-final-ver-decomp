/* Handwritten function */
nonmatching func_800B5978, 0x30

glabel func_800B5978
    /* A6178 800B5978 0000888C */  lw         $t0, 0x0($a0)
    /* A617C 800B597C 0400898C */  lw         $t1, 0x4($a0)
    /* A6180 800B5980 08008A8C */  lw         $t2, 0x8($a0)
    /* A6184 800B5984 0C008B8C */  lw         $t3, 0xC($a0)
    /* A6188 800B5988 10008C8C */  lw         $t4, 0x10($a0)
    /* A618C 800B598C 0080C848 */  ctc2       $t0, $16 /* handwritten instruction */
    /* A6190 800B5990 0088C948 */  ctc2       $t1, $17 /* handwritten instruction */
    /* A6194 800B5994 0090CA48 */  ctc2       $t2, $18 /* handwritten instruction */
    /* A6198 800B5998 0098CB48 */  ctc2       $t3, $19 /* handwritten instruction */
    /* A619C 800B599C 00A0CC48 */  ctc2       $t4, $20 /* handwritten instruction */
    /* A61A0 800B59A0 0800E003 */  jr         $ra
    /* A61A4 800B59A4 00000000 */   nop
endlabel func_800B5978
