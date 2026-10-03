nonmatching func_800C1188, 0x28

glabel func_800C1188
    /* B1988 800C1188 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B198C 800C118C 1000BFAF */  sw         $ra, 0x10($sp)
    /* B1990 800C1190 00240400 */  sll        $a0, $a0, 16
    /* B1994 800C1194 B60F030C */  jal        func_800C3ED8
    /* B1998 800C1198 03240400 */   sra       $a0, $a0, 16
    /* B199C 800C119C 00140200 */  sll        $v0, $v0, 16
    /* B19A0 800C11A0 1000BF8F */  lw         $ra, 0x10($sp)
    /* B19A4 800C11A4 03140200 */  sra        $v0, $v0, 16
    /* B19A8 800C11A8 0800E003 */  jr         $ra
    /* B19AC 800C11AC 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800C1188
    /* B19B0 800C11B0 00000000 */  nop
    /* B19B4 800C11B4 00000000 */  nop
