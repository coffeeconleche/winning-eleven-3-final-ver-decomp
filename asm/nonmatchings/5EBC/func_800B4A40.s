nonmatching func_800B4A40, 0x94

glabel func_800B4A40
    /* A5240 800B4A40 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* A5244 800B4A44 3400B1AF */  sw         $s1, 0x34($sp)
    /* A5248 800B4A48 21888000 */  addu       $s1, $a0, $zero
    /* A524C 800B4A4C 3800BFAF */  sw         $ra, 0x38($sp)
    /* A5250 800B4A50 3000B0AF */  sw         $s0, 0x30($sp)
    /* A5254 800B4A54 0F80053C */  lui        $a1, %hi(D_800F0EC0)
    /* A5258 800B4A58 C00EA524 */  addiu      $a1, $a1, %lo(D_800F0EC0)
    /* A525C 800B4A5C 0000A28C */  lw         $v0, 0x0($a1)
    /* A5260 800B4A60 0400A38C */  lw         $v1, 0x4($a1)
    /* A5264 800B4A64 0800A48C */  lw         $a0, 0x8($a1)
    /* A5268 800B4A68 1000A2AF */  sw         $v0, 0x10($sp)
    /* A526C 800B4A6C 1400A3AF */  sw         $v1, 0x14($sp)
    /* A5270 800B4A70 1800A4AF */  sw         $a0, 0x18($sp)
    /* A5274 800B4A74 0C00A28C */  lw         $v0, 0xC($a1)
    /* A5278 800B4A78 1000A38C */  lw         $v1, 0x10($a1)
    /* A527C 800B4A7C 1400A48C */  lw         $a0, 0x14($a1)
    /* A5280 800B4A80 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* A5284 800B4A84 2000A3AF */  sw         $v1, 0x20($sp)
    /* A5288 800B4A88 2400A4AF */  sw         $a0, 0x24($sp)
    /* A528C 800B4A8C 1800A28C */  lw         $v0, 0x18($a1)
    /* A5290 800B4A90 1C00A38C */  lw         $v1, 0x1C($a1)
    /* A5294 800B4A94 2800A2AF */  sw         $v0, 0x28($sp)
    /* A5298 800B4A98 EAD3020C */  jal        func_800B4FA8
    /* A529C 800B4A9C 2C00A3AF */   sw        $v1, 0x2C($sp)
    /* A52A0 800B4AA0 1000B027 */  addiu      $s0, $sp, 0x10
    /* A52A4 800B4AA4 21200002 */  addu       $a0, $s0, $zero
    /* A52A8 800B4AA8 3ED4020C */  jal        func_800B50F8
    /* A52AC 800B4AAC 21282002 */   addu      $a1, $s1, $zero
    /* A52B0 800B4AB0 13D4020C */  jal        func_800B504C
    /* A52B4 800B4AB4 00000000 */   nop
    /* A52B8 800B4AB8 82D4020C */  jal        func_800B5208
    /* A52BC 800B4ABC 21200002 */   addu      $a0, $s0, $zero
    /* A52C0 800B4AC0 3800BF8F */  lw         $ra, 0x38($sp)
    /* A52C4 800B4AC4 3400B18F */  lw         $s1, 0x34($sp)
    /* A52C8 800B4AC8 3000B08F */  lw         $s0, 0x30($sp)
    /* A52CC 800B4ACC 0800E003 */  jr         $ra
    /* A52D0 800B4AD0 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_800B4A40
