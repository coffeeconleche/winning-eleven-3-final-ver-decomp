nonmatching func_800B4878, 0x24

glabel func_800B4878
    /* A5078 800B4878 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A507C 800B487C 1000BFAF */  sw         $ra, 0x10($sp)
    /* A5080 800B4880 00F2043C */  lui        $a0, (0xF2000001 >> 16)
    /* A5084 800B4884 14B4020C */  jal        func_800AD050
    /* A5088 800B4888 01008434 */   ori       $a0, $a0, (0xF2000001 & 0xFFFF)
    /* A508C 800B488C 1000BF8F */  lw         $ra, 0x10($sp)
    /* A5090 800B4890 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A5094 800B4894 0800E003 */  jr         $ra
    /* A5098 800B4898 00000000 */   nop
endlabel func_800B4878
    /* A509C 800B489C 00000000 */  nop
    /* A50A0 800B48A0 00000000 */  nop
    /* A50A4 800B48A4 00000000 */  nop
