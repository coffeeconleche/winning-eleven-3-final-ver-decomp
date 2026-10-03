nonmatching func_8006F1EC, 0x34

glabel func_8006F1EC
    /* 5F9EC 8006F1EC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5F9F0 8006F1F0 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 5F9F4 8006F1F4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5F9F8 8006F1F8 801F013C */  lui        $at, (0x1F800330 >> 16)
    /* 5F9FC 8006F1FC 300320A0 */  sb         $zero, (0x1F800330 & 0xFFFF)($at)
    /* 5FA00 8006F200 1180013C */  lui        $at, %hi(D_8010A31E)
    /* 5FA04 8006F204 1EA322A4 */  sh         $v0, %lo(D_8010A31E)($at)
    /* 5FA08 8006F208 153F010C */  jal        func_8004FC54
    /* 5FA0C 8006F20C 21200000 */   addu      $a0, $zero, $zero
    /* 5FA10 8006F210 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5FA14 8006F214 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 5FA18 8006F218 0800E003 */  jr         $ra
    /* 5FA1C 8006F21C 00000000 */   nop
endlabel func_8006F1EC
