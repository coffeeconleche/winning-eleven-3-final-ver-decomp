/* Handwritten function */
nonmatching func_800B12C8, 0x50

glabel func_800B12C8
    /* A1AC8 800B12C8 0000888C */  lw         $t0, 0x0($a0)
    /* A1ACC 800B12CC 0400898C */  lw         $t1, 0x4($a0)
    /* A1AD0 800B12D0 08008A8C */  lw         $t2, 0x8($a0)
    /* A1AD4 800B12D4 0C008B8C */  lw         $t3, 0xC($a0)
    /* A1AD8 800B12D8 10008C8C */  lw         $t4, 0x10($a0)
    /* A1ADC 800B12DC 0000C848 */  ctc2       $t0, $0 /* handwritten instruction */
    /* A1AE0 800B12E0 0008C948 */  ctc2       $t1, $1 /* handwritten instruction */
    /* A1AE4 800B12E4 0010CA48 */  ctc2       $t2, $2 /* handwritten instruction */
    /* A1AE8 800B12E8 0018CB48 */  ctc2       $t3, $3 /* handwritten instruction */
    /* A1AEC 800B12EC 0020CC48 */  ctc2       $t4, $4 /* handwritten instruction */
    /* A1AF0 800B12F0 0000A0C8 */  lwc2       $0, 0x0($a1)
    /* A1AF4 800B12F4 0400A1C8 */  lwc2       $1, 0x4($a1)
    /* A1AF8 800B12F8 00000000 */  nop
    /* A1AFC 800B12FC 1260484A */  mvmva      1, 0, 0, 3, 0
    /* A1B00 800B1300 0000D9E8 */  swc2       $25, 0x0($a2)
    /* A1B04 800B1304 0400DAE8 */  swc2       $26, 0x4($a2) /* handwritten instruction */
    /* A1B08 800B1308 0800DBE8 */  swc2       $27, 0x8($a2) /* handwritten instruction */
    /* A1B0C 800B130C 2110C000 */  addu       $v0, $a2, $zero
    /* A1B10 800B1310 0800E003 */  jr         $ra
    /* A1B14 800B1314 00000000 */   nop
endlabel func_800B12C8
