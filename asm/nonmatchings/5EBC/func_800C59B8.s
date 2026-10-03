nonmatching func_800C59B8, 0x6C

glabel func_800C59B8
    /* B61B8 800C59B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B61BC 800C59BC 1000B0AF */  sw         $s0, 0x10($sp)
    /* B61C0 800C59C0 21808000 */  addu       $s0, $a0, $zero
    /* B61C4 800C59C4 1400BFAF */  sw         $ra, 0x14($sp)
    /* B61C8 800C59C8 C2B3020C */  jal        func_800ACF08
    /* B61CC 800C59CC 21200000 */   addu      $a0, $zero, $zero
    /* B61D0 800C59D0 F6B4020C */  jal        func_800AD3D8
    /* B61D4 800C59D4 00000000 */   nop
    /* B61D8 800C59D8 25B4020C */  jal        func_800AD094
    /* B61DC 800C59DC 00000000 */   nop
    /* B61E0 800C59E0 02004014 */  bnez       $v0, .L800C59EC
    /* B61E4 800C59E4 00000000 */   nop
    /* B61E8 800C59E8 21800000 */  addu       $s0, $zero, $zero
  .L800C59EC:
    /* B61EC 800C59EC A216030C */  jal        func_800C5A88
    /* B61F0 800C59F0 21200002 */   addu      $a0, $s0, $zero
    /* B61F4 800C59F4 1517030C */  jal        func_800C5C54
    /* B61F8 800C59F8 00000000 */   nop
    /* B61FC 800C59FC D416030C */  jal        func_800C5B50
    /* B6200 800C5A00 00000000 */   nop
    /* B6204 800C5A04 F916030C */  jal        func_800C5BE4
    /* B6208 800C5A08 00000000 */   nop
    /* B620C 800C5A0C 9AB3020C */  jal        func_800ACE68
    /* B6210 800C5A10 00000000 */   nop
    /* B6214 800C5A14 1400BF8F */  lw         $ra, 0x14($sp)
    /* B6218 800C5A18 1000B08F */  lw         $s0, 0x10($sp)
    /* B621C 800C5A1C 0800E003 */  jr         $ra
    /* B6220 800C5A20 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800C59B8
