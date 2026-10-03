nonmatching func_800B58C0, 0x64

glabel func_800B58C0
    /* A60C0 800B58C0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A60C4 800B58C4 1000BFAF */  sw         $ra, 0x10($sp)
    /* A60C8 800B58C8 0F80063C */  lui        $a2, %hi(D_800F1078)
    /* A60CC 800B58CC 7810C624 */  addiu      $a2, $a2, %lo(D_800F1078)
    /* A60D0 800B58D0 0000828C */  lw         $v0, 0x0($a0)
    /* A60D4 800B58D4 0400838C */  lw         $v1, 0x4($a0)
    /* A60D8 800B58D8 0800858C */  lw         $a1, 0x8($a0)
    /* A60DC 800B58DC 0000C2AC */  sw         $v0, 0x0($a2)
    /* A60E0 800B58E0 0400C3AC */  sw         $v1, 0x4($a2)
    /* A60E4 800B58E4 0800C5AC */  sw         $a1, 0x8($a2)
    /* A60E8 800B58E8 0C00828C */  lw         $v0, 0xC($a0)
    /* A60EC 800B58EC 1000838C */  lw         $v1, 0x10($a0)
    /* A60F0 800B58F0 1400858C */  lw         $a1, 0x14($a0)
    /* A60F4 800B58F4 0C00C2AC */  sw         $v0, 0xC($a2)
    /* A60F8 800B58F8 1000C3AC */  sw         $v1, 0x10($a2)
    /* A60FC 800B58FC 1400C5AC */  sw         $a1, 0x14($a2)
    /* A6100 800B5900 1800828C */  lw         $v0, 0x18($a0)
    /* A6104 800B5904 1C00838C */  lw         $v1, 0x1C($a0)
    /* A6108 800B5908 1800C2AC */  sw         $v0, 0x18($a2)
    /* A610C 800B590C 5ED6020C */  jal        func_800B5978
    /* A6110 800B5910 1C00C3AC */   sw        $v1, 0x1C($a2)
    /* A6114 800B5914 1000BF8F */  lw         $ra, 0x10($sp)
    /* A6118 800B5918 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A611C 800B591C 0800E003 */  jr         $ra
    /* A6120 800B5920 00000000 */   nop
endlabel func_800B58C0
