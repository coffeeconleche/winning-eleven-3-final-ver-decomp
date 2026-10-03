/* Handwritten function */
nonmatching func_800B5C58, 0x20

glabel func_800B5C58
    /* A6458 800B5C58 00210400 */  sll        $a0, $a0, 4
    /* A645C 800B5C5C 00290500 */  sll        $a1, $a1, 4
    /* A6460 800B5C60 00310600 */  sll        $a2, $a2, 4
    /* A6464 800B5C64 00A8C448 */  ctc2       $a0, $21 /* handwritten instruction */
    /* A6468 800B5C68 00B0C548 */  ctc2       $a1, $22 /* handwritten instruction */
    /* A646C 800B5C6C 00B8C648 */  ctc2       $a2, $23 /* handwritten instruction */
    /* A6470 800B5C70 0800E003 */  jr         $ra
    /* A6474 800B5C74 00000000 */   nop
endlabel func_800B5C58
