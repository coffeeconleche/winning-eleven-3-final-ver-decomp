nonmatching func_8004B278, 0x68

glabel func_8004B278
    /* 3BA78 8004B278 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3BA7C 8004B27C 06000224 */  addiu      $v0, $zero, 0x6
    /* 3BA80 8004B280 801F013C */  lui        $at, (0x1F8002EE >> 16)
    /* 3BA84 8004B284 EE0222A4 */  sh         $v0, (0x1F8002EE & 0xFFFF)($at)
    /* 3BA88 8004B288 01000224 */  addiu      $v0, $zero, 0x1
    /* 3BA8C 8004B28C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3BA90 8004B290 801F013C */  lui        $at, (0x1F8002F2 >> 16)
    /* 3BA94 8004B294 F20222A0 */  sb         $v0, (0x1F8002F2 & 0xFFFF)($at)
    /* 3BA98 8004B298 B82C010C */  jal        func_8004B2E0
    /* 3BA9C 8004B29C FF000424 */   addiu     $a0, $zero, 0xFF
    /* 3BAA0 8004B2A0 801F023C */  lui        $v0, (0x1F8000F8 >> 16)
    /* 3BAA4 8004B2A4 F8004294 */  lhu        $v0, (0x1F8000F8 & 0xFFFF)($v0)
    /* 3BAA8 8004B2A8 801F033C */  lui        $v1, (0x1F8000FC >> 16)
    /* 3BAAC 8004B2AC FC006394 */  lhu        $v1, (0x1F8000FC & 0xFFFF)($v1)
    /* 3BAB0 8004B2B0 801F013C */  lui        $at, (0x1F8002B4 >> 16)
    /* 3BAB4 8004B2B4 B40222A4 */  sh         $v0, (0x1F8002B4 & 0xFFFF)($at)
    /* 3BAB8 8004B2B8 801F013C */  lui        $at, (0x1F8002B8 >> 16)
    /* 3BABC 8004B2BC B80222A4 */  sh         $v0, (0x1F8002B8 & 0xFFFF)($at)
    /* 3BAC0 8004B2C0 801F013C */  lui        $at, (0x1F8002B6 >> 16)
    /* 3BAC4 8004B2C4 B60223A4 */  sh         $v1, (0x1F8002B6 & 0xFFFF)($at)
    /* 3BAC8 8004B2C8 801F013C */  lui        $at, (0x1F8002BA >> 16)
    /* 3BACC 8004B2CC BA0223A4 */  sh         $v1, (0x1F8002BA & 0xFFFF)($at)
    /* 3BAD0 8004B2D0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3BAD4 8004B2D4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3BAD8 8004B2D8 0800E003 */  jr         $ra
    /* 3BADC 8004B2DC 00000000 */   nop
endlabel func_8004B278
