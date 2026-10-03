nonmatching func_800AD920, 0x64

glabel func_800AD920
    /* 9E120 800AD920 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 9E124 800AD924 21108000 */  addu       $v0, $a0, $zero
    /* 9E128 800AD928 1800B0AF */  sw         $s0, 0x18($sp)
    /* 9E12C 800AD92C 2180A000 */  addu       $s0, $a1, $zero
    /* 9E130 800AD930 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 9E134 800AD934 2188C000 */  addu       $s1, $a2, $zero
    /* 9E138 800AD938 1000A427 */  addiu      $a0, $sp, 0x10
    /* 9E13C 800AD93C 21284000 */  addu       $a1, $v0, $zero
    /* 9E140 800AD940 00010224 */  addiu      $v0, $zero, 0x100
    /* 9E144 800AD944 1400A2A7 */  sh         $v0, 0x14($sp)
    /* 9E148 800AD948 01000224 */  addiu      $v0, $zero, 0x1
    /* 9E14C 800AD94C 2000BFAF */  sw         $ra, 0x20($sp)
    /* 9E150 800AD950 1000B0A7 */  sh         $s0, 0x10($sp)
    /* 9E154 800AD954 1200B1A7 */  sh         $s1, 0x12($sp)
    /* 9E158 800AD958 F8B9020C */  jal        func_800AE7E0
    /* 9E15C 800AD95C 1600A2A7 */   sh        $v0, 0x16($sp)
    /* 9E160 800AD960 21200002 */  addu       $a0, $s0, $zero
    /* 9E164 800AD964 C5B6020C */  jal        func_800ADB14
    /* 9E168 800AD968 21282002 */   addu      $a1, $s1, $zero
    /* 9E16C 800AD96C FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 9E170 800AD970 2000BF8F */  lw         $ra, 0x20($sp)
    /* 9E174 800AD974 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 9E178 800AD978 1800B08F */  lw         $s0, 0x18($sp)
    /* 9E17C 800AD97C 0800E003 */  jr         $ra
    /* 9E180 800AD980 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800AD920
