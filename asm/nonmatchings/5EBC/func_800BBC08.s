nonmatching func_800BBC08, 0x2C

glabel func_800BBC08
    /* AC408 800BBC08 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AC40C 800BBC0C 1000BFAF */  sw         $ra, 0x10($sp)
    /* AC410 800BBC10 00240400 */  sll        $a0, $a0, 16
    /* AC414 800BBC14 002C0500 */  sll        $a1, $a1, 16
    /* AC418 800BBC18 03240400 */  sra        $a0, $a0, 16
    /* AC41C 800BBC1C 0EEF020C */  jal        func_800BBC38
    /* AC420 800BBC20 032C0500 */   sra       $a1, $a1, 16
    /* AC424 800BBC24 1000BF8F */  lw         $ra, 0x10($sp)
    /* AC428 800BBC28 1800BD27 */  addiu      $sp, $sp, 0x18
    /* AC42C 800BBC2C 0800E003 */  jr         $ra
    /* AC430 800BBC30 00000000 */   nop
endlabel func_800BBC08
    /* AC434 800BBC34 00000000 */  nop
