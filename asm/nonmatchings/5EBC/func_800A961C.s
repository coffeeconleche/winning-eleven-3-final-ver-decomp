nonmatching func_800A961C, 0x24

glabel func_800A961C
    /* 99E1C 800A961C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 99E20 800A9620 1000BFAF */  sw         $ra, 0x10($sp)
    /* 99E24 800A9624 09000434 */  ori        $a0, $zero, 0x9
    /* 99E28 800A9628 5CDC020C */  jal        func_800B7170
    /* 99E2C 800A962C 21280000 */   addu      $a1, $zero, $zero
    /* 99E30 800A9630 1000BF8F */  lw         $ra, 0x10($sp)
    /* 99E34 800A9634 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 99E38 800A9638 0800E003 */  jr         $ra
    /* 99E3C 800A963C 00000000 */   nop
endlabel func_800A961C
