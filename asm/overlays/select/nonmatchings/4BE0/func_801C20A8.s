nonmatching func_801C20A8, 0x48

glabel func_801C20A8
    /* 39130 801C20A8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 39134 801C20AC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 39138 801C20B0 4E39060C */  jal        func_8018E538
    /* 3913C 801C20B4 21200000 */   addu      $a0, $zero, $zero
    /* 39140 801C20B8 31000224 */  addiu      $v0, $zero, 0x31
    /* 39144 801C20BC 801F013C */  lui        $at, (0x1F8002A2 >> 16)
    /* 39148 801C20C0 A20222A0 */  sb         $v0, (0x1F8002A2 & 0xFFFF)($at)
    /* 3914C 801C20C4 01000224 */  addiu      $v0, $zero, 0x1
    /* 39150 801C20C8 1E80013C */  lui        $at, %hi(D_801D8B17)
    /* 39154 801C20CC 178B22A0 */  sb         $v0, %lo(D_801D8B17)($at)
    /* 39158 801C20D0 3C08070C */  jal        func_801C20F0
    /* 3915C 801C20D4 00000000 */   nop
    /* 39160 801C20D8 540C070C */  jal        func_801C3150
    /* 39164 801C20DC 00000000 */   nop
    /* 39168 801C20E0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3916C 801C20E4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 39170 801C20E8 0800E003 */  jr         $ra
    /* 39174 801C20EC 00000000 */   nop
endlabel func_801C20A8
