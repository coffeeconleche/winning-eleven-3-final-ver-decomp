nonmatching func_800AD4A8, 0x3C

glabel func_800AD4A8
    /* 9DCA8 800AD4A8 A0000A24 */  addiu      $t2, $zero, 0xA0
    /* 9DCAC 800AD4AC 08004001 */  jr         $t2
    /* 9DCB0 800AD4B0 44000924 */   addiu     $t1, $zero, 0x44
    /* 9DCB4 800AD4B4 00000000 */  nop
    /* 9DCB8 800AD4B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9DCBC 800AD4BC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 9DCC0 800AD4C0 0E80093C */  lui        $t1, %hi(D_800E702C)
    /* 9DCC4 800AD4C4 2C70298D */  lw         $t1, %lo(D_800E702C)($t1)
    /* 9DCC8 800AD4C8 00000000 */  nop
    /* 9DCCC 800AD4CC 09F82001 */  jalr       $t1
    /* 9DCD0 800AD4D0 00000000 */   nop
    /* 9DCD4 800AD4D4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 9DCD8 800AD4D8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9DCDC 800AD4DC 0800E003 */  jr         $ra
    /* 9DCE0 800AD4E0 00000000 */   nop
endlabel func_800AD4A8
