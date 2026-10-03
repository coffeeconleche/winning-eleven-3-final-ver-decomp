nonmatching func_801C2064, 0x44

glabel func_801C2064
    /* 390EC 801C2064 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 390F0 801C2068 1000BFAF */  sw         $ra, 0x10($sp)
    /* 390F4 801C206C 4E39060C */  jal        func_8018E538
    /* 390F8 801C2070 21200000 */   addu      $a0, $zero, $zero
    /* 390FC 801C2074 30000224 */  addiu      $v0, $zero, 0x30
    /* 39100 801C2078 801F013C */  lui        $at, (0x1F8002A2 >> 16)
    /* 39104 801C207C A20222A0 */  sb         $v0, (0x1F8002A2 & 0xFFFF)($at)
    /* 39108 801C2080 1E80013C */  lui        $at, %hi(D_801D8B17)
    /* 3910C 801C2084 178B20A0 */  sb         $zero, %lo(D_801D8B17)($at)
    /* 39110 801C2088 3C08070C */  jal        func_801C20F0
    /* 39114 801C208C 00000000 */   nop
    /* 39118 801C2090 8F0A070C */  jal        func_801C2A3C
    /* 3911C 801C2094 00000000 */   nop
    /* 39120 801C2098 1000BF8F */  lw         $ra, 0x10($sp)
    /* 39124 801C209C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 39128 801C20A0 0800E003 */  jr         $ra
    /* 3912C 801C20A4 00000000 */   nop
endlabel func_801C2064
