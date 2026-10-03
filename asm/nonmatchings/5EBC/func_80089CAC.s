nonmatching func_80089CAC, 0x54

glabel func_80089CAC
    /* 7A4AC 80089CAC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 7A4B0 80089CB0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 7A4B4 80089CB4 1458020C */  jal        func_80096050
    /* 7A4B8 80089CB8 00000000 */   nop
    /* 7A4BC 80089CBC 4A3B010C */  jal        func_8004ED28
    /* 7A4C0 80089CC0 05000424 */   addiu     $a0, $zero, 0x5
    /* 7A4C4 80089CC4 801F013C */  lui        $at, (0x1F8001EC >> 16)
    /* 7A4C8 80089CC8 EC0120A0 */  sb         $zero, (0x1F8001EC & 0xFFFF)($at)
    /* 7A4CC 80089CCC F626020C */  jal        func_80089BD8
    /* 7A4D0 80089CD0 00000000 */   nop
    /* 7A4D4 80089CD4 04000224 */  addiu      $v0, $zero, 0x4
    /* 7A4D8 80089CD8 1080013C */  lui        $at, %hi(D_80107FEC)
    /* 7A4DC 80089CDC EC7F22A0 */  sb         $v0, %lo(D_80107FEC)($at)
    /* 7A4E0 80089CE0 801F013C */  lui        $at, (0x1F800294 >> 16)
    /* 7A4E4 80089CE4 940220A4 */  sh         $zero, (0x1F800294 & 0xFFFF)($at)
    /* 7A4E8 80089CE8 715C000C */  jal        func_800171C4
    /* 7A4EC 80089CEC 02000424 */   addiu     $a0, $zero, 0x2
    /* 7A4F0 80089CF0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 7A4F4 80089CF4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 7A4F8 80089CF8 0800E003 */  jr         $ra
    /* 7A4FC 80089CFC 00000000 */   nop
endlabel func_80089CAC
