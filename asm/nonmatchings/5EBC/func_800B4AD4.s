nonmatching func_800B4AD4, 0x30

glabel func_800B4AD4
    /* A52D4 800B4AD4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A52D8 800B4AD8 1000BFAF */  sw         $ra, 0x10($sp)
    /* A52DC 800B4ADC 21288000 */  addu       $a1, $a0, $zero
    /* A52E0 800B4AE0 0F80043C */  lui        $a0, %hi(D_800F0EC0)
    /* A52E4 800B4AE4 6EC4020C */  jal        func_800B11B8
    /* A52E8 800B4AE8 C00E8424 */   addiu     $a0, $a0, %lo(D_800F0EC0)
    /* A52EC 800B4AEC 82D4020C */  jal        func_800B5208
    /* A52F0 800B4AF0 21204000 */   addu      $a0, $v0, $zero
    /* A52F4 800B4AF4 1000BF8F */  lw         $ra, 0x10($sp)
    /* A52F8 800B4AF8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A52FC 800B4AFC 0800E003 */  jr         $ra
    /* A5300 800B4B00 00000000 */   nop
endlabel func_800B4AD4
