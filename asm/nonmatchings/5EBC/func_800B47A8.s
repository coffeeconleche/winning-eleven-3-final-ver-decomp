/* Handwritten function */
nonmatching func_800B47A8, 0x18

glabel func_800B47A8
    /* A4FA8 800B47A8 00240400 */  sll        $a0, $a0, 16
    /* A4FAC 800B47AC 002C0500 */  sll        $a1, $a1, 16
    /* A4FB0 800B47B0 00C0C448 */  ctc2       $a0, $24 /* handwritten instruction */
    /* A4FB4 800B47B4 00C8C548 */  ctc2       $a1, $25 /* handwritten instruction */
    /* A4FB8 800B47B8 0800E003 */  jr         $ra
    /* A4FBC 800B47BC 00000000 */   nop
endlabel func_800B47A8
    /* A4FC0 800B47C0 00000000 */  nop
    /* A4FC4 800B47C4 00000000 */  nop
