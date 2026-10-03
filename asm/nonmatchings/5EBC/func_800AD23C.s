nonmatching func_800AD23C, 0x78

glabel func_800AD23C
    /* 9DA3C 800AD23C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9DA40 800AD240 1400BFAF */  sw         $ra, 0x14($sp)
    /* 9DA44 800AD244 F6B4020C */  jal        func_800AD3D8
    /* 9DA48 800AD248 1000B0AF */   sw        $s0, 0x10($sp)
    /* 9DA4C 800AD24C 01000424 */  addiu      $a0, $zero, 0x1
    /* 9DA50 800AD250 0E80033C */  lui        $v1, %hi(D_800E700C)
    /* 9DA54 800AD254 0C706324 */  addiu      $v1, $v1, %lo(D_800E700C)
    /* 9DA58 800AD258 FCFF7024 */  addiu      $s0, $v1, -0x4
    /* 9DA5C 800AD25C 0B80023C */  lui        $v0, %hi(func_800AD2EC)
    /* 9DA60 800AD260 ECD24224 */  addiu      $v0, $v0, %lo(func_800AD2EC)
    /* 9DA64 800AD264 000062AC */  sw         $v0, 0x0($v1)
    /* 9DA68 800AD268 0B80023C */  lui        $v0, %hi(func_800AD354)
    /* 9DA6C 800AD26C 54D34224 */  addiu      $v0, $v0, %lo(func_800AD354)
    /* 9DA70 800AD270 040062AC */  sw         $v0, 0x4($v1)
    /* 9DA74 800AD274 0E80013C */  lui        $at, %hi(D_800E7008)
    /* 9DA78 800AD278 087020AC */  sw         $zero, %lo(D_800E7008)($at)
    /* 9DA7C 800AD27C 0E80013C */  lui        $at, %hi(D_800E7014)
    /* 9DA80 800AD280 147020AC */  sw         $zero, %lo(D_800E7014)($at)
    /* 9DA84 800AD284 FEB4020C */  jal        func_800AD3F8
    /* 9DA88 800AD288 21280002 */   addu      $a1, $s0, $zero
    /* 9DA8C 800AD28C 01000424 */  addiu      $a0, $zero, 0x1
    /* 9DA90 800AD290 FAB4020C */  jal        func_800AD3E8
    /* 9DA94 800AD294 21280002 */   addu      $a1, $s0, $zero
    /* 9DA98 800AD298 9AB3020C */  jal        func_800ACE68
    /* 9DA9C 800AD29C 00000000 */   nop
    /* 9DAA0 800AD2A0 01000224 */  addiu      $v0, $zero, 0x1
    /* 9DAA4 800AD2A4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 9DAA8 800AD2A8 1000B08F */  lw         $s0, 0x10($sp)
    /* 9DAAC 800AD2AC 0800E003 */  jr         $ra
    /* 9DAB0 800AD2B0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800AD23C
