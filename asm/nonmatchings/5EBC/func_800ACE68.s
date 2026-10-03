/* Handwritten function */
nonmatching func_800ACE68, 0x10

glabel func_800ACE68
    /* 9D668 800ACE68 02000424 */  addiu      $a0, $zero, 0x2
    /* 9D66C 800ACE6C 0C000000 */  syscall    0 /* handwritten instruction */
    /* 9D670 800ACE70 0800E003 */  jr         $ra
    /* 9D674 800ACE74 00000000 */   nop
endlabel func_800ACE68
