nonmatching func_801B9100, 0x44

glabel func_801B9100
    /* 30188 801B9100 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3018C 801B9104 1000BFAF */  sw         $ra, 0x10($sp)
    /* 30190 801B9108 4E39060C */  jal        func_8018E538
    /* 30194 801B910C 21200000 */   addu      $a0, $zero, $zero
    /* 30198 801B9110 10000224 */  addiu      $v0, $zero, 0x10
    /* 3019C 801B9114 801F013C */  lui        $at, (0x1F8002A2 >> 16)
    /* 301A0 801B9118 A20222A0 */  sb         $v0, (0x1F8002A2 & 0xFFFF)($at)
    /* 301A4 801B911C 1E80013C */  lui        $at, %hi(D_801D8A8F)
    /* 301A8 801B9120 8F8A20A0 */  sb         $zero, %lo(D_801D8A8F)($at)
    /* 301AC 801B9124 82A3060C */  jal        func_801A8E08
    /* 301B0 801B9128 00000000 */   nop
    /* 301B4 801B912C C0A3060C */  jal        func_801A8F00
    /* 301B8 801B9130 00000000 */   nop
    /* 301BC 801B9134 1000BF8F */  lw         $ra, 0x10($sp)
    /* 301C0 801B9138 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 301C4 801B913C 0800E003 */  jr         $ra
    /* 301C8 801B9140 00000000 */   nop
endlabel func_801B9100
