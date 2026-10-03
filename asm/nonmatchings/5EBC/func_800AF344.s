nonmatching func_800AF344, 0x54

glabel func_800AF344
    /* 9FB44 800AF344 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9FB48 800AF348 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9FB4C 800AF34C 21808000 */  addu       $s0, $a0, $zero
    /* 9FB50 800AF350 2120A000 */  addu       $a0, $a1, $zero
    /* 9FB54 800AF354 02000224 */  addiu      $v0, $zero, 0x2
    /* 9FB58 800AF358 2128C000 */  addu       $a1, $a2, $zero
    /* 9FB5C 800AF35C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9FB60 800AF360 3000B18F */  lw         $s1, 0x30($sp)
    /* 9FB64 800AF364 FFFFE630 */  andi       $a2, $a3, 0xFFFF
    /* 9FB68 800AF368 1800BFAF */  sw         $ra, 0x18($sp)
    /* 9FB6C 800AF36C 00BE020C */  jal        func_800AF800
    /* 9FB70 800AF370 030002A2 */   sb        $v0, 0x3($s0)
    /* 9FB74 800AF374 040002AE */  sw         $v0, 0x4($s0)
    /* 9FB78 800AF378 5BBE020C */  jal        func_800AF96C
    /* 9FB7C 800AF37C 21202002 */   addu      $a0, $s1, $zero
    /* 9FB80 800AF380 080002AE */  sw         $v0, 0x8($s0)
    /* 9FB84 800AF384 1800BF8F */  lw         $ra, 0x18($sp)
    /* 9FB88 800AF388 1400B18F */  lw         $s1, 0x14($sp)
    /* 9FB8C 800AF38C 1000B08F */  lw         $s0, 0x10($sp)
    /* 9FB90 800AF390 0800E003 */  jr         $ra
    /* 9FB94 800AF394 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800AF344
