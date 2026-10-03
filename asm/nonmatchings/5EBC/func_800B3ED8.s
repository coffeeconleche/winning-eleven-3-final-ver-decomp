/* Handwritten function */
nonmatching func_800B3ED8, 0x30

glabel func_800B3ED8
    /* A46D8 800B3ED8 0000888C */  lw         $t0, 0x0($a0)
    /* A46DC 800B3EDC 0400898C */  lw         $t1, 0x4($a0)
    /* A46E0 800B3EE0 08008A8C */  lw         $t2, 0x8($a0)
    /* A46E4 800B3EE4 0C008B8C */  lw         $t3, 0xC($a0)
    /* A46E8 800B3EE8 10008C8C */  lw         $t4, 0x10($a0)
    /* A46EC 800B3EEC 0000C848 */  ctc2       $t0, $0 /* handwritten instruction */
    /* A46F0 800B3EF0 0008C948 */  ctc2       $t1, $1 /* handwritten instruction */
    /* A46F4 800B3EF4 0010CA48 */  ctc2       $t2, $2 /* handwritten instruction */
    /* A46F8 800B3EF8 0018CB48 */  ctc2       $t3, $3 /* handwritten instruction */
    /* A46FC 800B3EFC 0020CC48 */  ctc2       $t4, $4 /* handwritten instruction */
    /* A4700 800B3F00 0800E003 */  jr         $ra
    /* A4704 800B3F04 00000000 */   nop
endlabel func_800B3ED8
