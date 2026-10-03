nonmatching func_8006FAA8, 0x4C

glabel func_8006FAA8
    /* 602A8 8006FAA8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 602AC 8006FAAC FF008430 */  andi       $a0, $a0, 0xFF
    /* 602B0 8006FAB0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 602B4 8006FAB4 80800400 */  sll        $s0, $a0, 2
    /* 602B8 8006FAB8 21800402 */  addu       $s0, $s0, $a0
    /* 602BC 8006FABC C0801000 */  sll        $s0, $s0, 3
    /* 602C0 8006FAC0 1080023C */  lui        $v0, %hi(D_80105508)
    /* 602C4 8006FAC4 08554224 */  addiu      $v0, $v0, %lo(D_80105508)
    /* 602C8 8006FAC8 21800202 */  addu       $s0, $s0, $v0
    /* 602CC 8006FACC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 602D0 8006FAD0 0174000C */  jal        func_8001D004
    /* 602D4 8006FAD4 FFFFA430 */   andi      $a0, $a1, 0xFFFF
    /* 602D8 8006FAD8 0C0002AE */  sw         $v0, 0xC($s0)
    /* 602DC 8006FADC 01000224 */  addiu      $v0, $zero, 0x1
    /* 602E0 8006FAE0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 602E4 8006FAE4 1000B08F */  lw         $s0, 0x10($sp)
    /* 602E8 8006FAE8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 602EC 8006FAEC 0800E003 */  jr         $ra
    /* 602F0 8006FAF0 00000000 */   nop
endlabel func_8006FAA8
