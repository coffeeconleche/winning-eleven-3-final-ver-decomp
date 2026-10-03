/* Handwritten function */
nonmatching func_800AD3D8, 0x10

glabel func_800AD3D8
    /* 9DBD8 800AD3D8 01000424 */  addiu      $a0, $zero, 0x1
    /* 9DBDC 800AD3DC 0C000000 */  syscall    0 /* handwritten instruction */
    /* 9DBE0 800AD3E0 0800E003 */  jr         $ra
    /* 9DBE4 800AD3E4 00000000 */   nop
endlabel func_800AD3D8
