nonmatching func_800AD984, 0x64

glabel func_800AD984
    /* 9E184 800AD984 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 9E188 800AD988 21108000 */  addu       $v0, $a0, $zero
    /* 9E18C 800AD98C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 9E190 800AD990 2180A000 */  addu       $s0, $a1, $zero
    /* 9E194 800AD994 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 9E198 800AD998 2188C000 */  addu       $s1, $a2, $zero
    /* 9E19C 800AD99C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 9E1A0 800AD9A0 21284000 */  addu       $a1, $v0, $zero
    /* 9E1A4 800AD9A4 10000224 */  addiu      $v0, $zero, 0x10
    /* 9E1A8 800AD9A8 1400A2A7 */  sh         $v0, 0x14($sp)
    /* 9E1AC 800AD9AC 01000224 */  addiu      $v0, $zero, 0x1
    /* 9E1B0 800AD9B0 2000BFAF */  sw         $ra, 0x20($sp)
    /* 9E1B4 800AD9B4 1000B0A7 */  sh         $s0, 0x10($sp)
    /* 9E1B8 800AD9B8 1200B1A7 */  sh         $s1, 0x12($sp)
    /* 9E1BC 800AD9BC F8B9020C */  jal        func_800AE7E0
    /* 9E1C0 800AD9C0 1600A2A7 */   sh        $v0, 0x16($sp)
    /* 9E1C4 800AD9C4 21200002 */  addu       $a0, $s0, $zero
    /* 9E1C8 800AD9C8 C5B6020C */  jal        func_800ADB14
    /* 9E1CC 800AD9CC 21282002 */   addu      $a1, $s1, $zero
    /* 9E1D0 800AD9D0 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 9E1D4 800AD9D4 2000BF8F */  lw         $ra, 0x20($sp)
    /* 9E1D8 800AD9D8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 9E1DC 800AD9DC 1800B08F */  lw         $s0, 0x18($sp)
    /* 9E1E0 800AD9E0 0800E003 */  jr         $ra
    /* 9E1E4 800AD9E4 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800AD984
