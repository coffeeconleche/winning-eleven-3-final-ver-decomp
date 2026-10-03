nonmatching func_801C6250, 0x90

glabel func_801C6250
    /* 3D2D8 801C6250 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 3D2DC 801C6254 4000A397 */  lhu        $v1, 0x40($sp)
    /* 3D2E0 801C6258 4400A893 */  lbu        $t0, 0x44($sp)
    /* 3D2E4 801C625C 4800A993 */  lbu        $t1, 0x48($sp)
    /* 3D2E8 801C6260 4C00AA93 */  lbu        $t2, 0x4C($sp)
    /* 3D2EC 801C6264 5000AB93 */  lbu        $t3, 0x50($sp)
    /* 3D2F0 801C6268 5400AC93 */  lbu        $t4, 0x54($sp)
    /* 3D2F4 801C626C 5800AD93 */  lbu        $t5, 0x58($sp)
    /* 3D2F8 801C6270 5C00AE93 */  lbu        $t6, 0x5C($sp)
    /* 3D2FC 801C6274 801F023C */  lui        $v0, (0x1F80029D >> 16)
    /* 3D300 801C6278 9D024290 */  lbu        $v0, (0x1F80029D & 0xFFFF)($v0)
    /* 3D304 801C627C 1000A4AF */  sw         $a0, 0x10($sp)
    /* 3D308 801C6280 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3D30C 801C6284 2800BFAF */  sw         $ra, 0x28($sp)
    /* 3D310 801C6288 1400A5A7 */  sh         $a1, 0x14($sp)
    /* 3D314 801C628C 1600A6A7 */  sh         $a2, 0x16($sp)
    /* 3D318 801C6290 1800A7A7 */  sh         $a3, 0x18($sp)
    /* 3D31C 801C6294 80280200 */  sll        $a1, $v0, 2
    /* 3D320 801C6298 2128A200 */  addu       $a1, $a1, $v0
    /* 3D324 801C629C 80280500 */  sll        $a1, $a1, 2
    /* 3D328 801C62A0 0F80023C */  lui        $v0, %hi(D_800F1018)
    /* 3D32C 801C62A4 18104224 */  addiu      $v0, $v0, %lo(D_800F1018)
    /* 3D330 801C62A8 2128A200 */  addu       $a1, $a1, $v0
    /* 3D334 801C62AC 2130C001 */  addu       $a2, $t6, $zero
    /* 3D338 801C62B0 1A00A3A7 */  sh         $v1, 0x1A($sp)
    /* 3D33C 801C62B4 1C00A8A3 */  sb         $t0, 0x1C($sp)
    /* 3D340 801C62B8 1D00A9A3 */  sb         $t1, 0x1D($sp)
    /* 3D344 801C62BC 1E00AAA3 */  sb         $t2, 0x1E($sp)
    /* 3D348 801C62C0 1F00ABA3 */  sb         $t3, 0x1F($sp)
    /* 3D34C 801C62C4 2000ACA3 */  sb         $t4, 0x20($sp)
    /* 3D350 801C62C8 86CD020C */  jal        func_800B3618
    /* 3D354 801C62CC 2100ADA3 */   sb        $t5, 0x21($sp)
    /* 3D358 801C62D0 2800BF8F */  lw         $ra, 0x28($sp)
    /* 3D35C 801C62D4 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 3D360 801C62D8 0800E003 */  jr         $ra
    /* 3D364 801C62DC 00000000 */   nop
endlabel func_801C6250
