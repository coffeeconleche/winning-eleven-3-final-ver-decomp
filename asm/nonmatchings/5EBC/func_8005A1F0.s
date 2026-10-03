nonmatching func_8005A1F0, 0x28

glabel func_8005A1F0
    /* 4A9F0 8005A1F0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4A9F4 8005A1F4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4A9F8 8005A1F8 FFFFA530 */  andi       $a1, $a1, 0xFFFF
    /* 4A9FC 8005A1FC FF008430 */  andi       $a0, $a0, 0xFF
    /* 4AA00 8005A200 88AD020C */  jal        func_800AB620
    /* 4AA04 8005A204 2120A400 */   addu      $a0, $a1, $a0
    /* 4AA08 8005A208 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4AA0C 8005A20C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4AA10 8005A210 0800E003 */  jr         $ra
    /* 4AA14 8005A214 00000000 */   nop
endlabel func_8005A1F0
