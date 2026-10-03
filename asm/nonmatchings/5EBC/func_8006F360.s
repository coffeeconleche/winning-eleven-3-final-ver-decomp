nonmatching func_8006F360, 0x80

glabel func_8006F360
    /* 5FB60 8006F360 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 5FB64 8006F364 0060023C */  lui        $v0, (0x60000000 >> 16)
    /* 5FB68 8006F368 1000A2AF */  sw         $v0, 0x10($sp)
    /* 5FB6C 8006F36C 40FF0224 */  addiu      $v0, $zero, -0xC0
    /* 5FB70 8006F370 1400A2A7 */  sh         $v0, 0x14($sp)
    /* 5FB74 8006F374 10FF0224 */  addiu      $v0, $zero, -0xF0
    /* 5FB78 8006F378 1600A2A7 */  sh         $v0, 0x16($sp)
    /* 5FB7C 8006F37C A0010224 */  addiu      $v0, $zero, 0x1A0
    /* 5FB80 8006F380 1800A2A7 */  sh         $v0, 0x18($sp)
    /* 5FB84 8006F384 E0010224 */  addiu      $v0, $zero, 0x1E0
    /* 5FB88 8006F388 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* 5FB8C 8006F38C 0F80023C */  lui        $v0, %hi(D_800F1018)
    /* 5FB90 8006F390 18104224 */  addiu      $v0, $v0, %lo(D_800F1018)
    /* 5FB94 8006F394 1180033C */  lui        $v1, %hi(D_8010A31E)
    /* 5FB98 8006F398 1EA36390 */  lbu        $v1, %lo(D_8010A31E)($v1)
    /* 5FB9C 8006F39C 801F043C */  lui        $a0, (0x1F80029D >> 16)
    /* 5FBA0 8006F3A0 9D028490 */  lbu        $a0, (0x1F80029D & 0xFFFF)($a0)
    /* 5FBA4 8006F3A4 21300000 */  addu       $a2, $zero, $zero
    /* 5FBA8 8006F3A8 2000BFAF */  sw         $ra, 0x20($sp)
    /* 5FBAC 8006F3AC 80280400 */  sll        $a1, $a0, 2
    /* 5FBB0 8006F3B0 2128A400 */  addu       $a1, $a1, $a0
    /* 5FBB4 8006F3B4 80280500 */  sll        $a1, $a1, 2
    /* 5FBB8 8006F3B8 1000A427 */  addiu      $a0, $sp, 0x10
    /* 5FBBC 8006F3BC 2128A200 */  addu       $a1, $a1, $v0
    /* 5FBC0 8006F3C0 1E00A3A3 */  sb         $v1, 0x1E($sp)
    /* 5FBC4 8006F3C4 1D00A3A3 */  sb         $v1, 0x1D($sp)
    /* 5FBC8 8006F3C8 CACD020C */  jal        func_800B3728
    /* 5FBCC 8006F3CC 1C00A3A3 */   sb        $v1, 0x1C($sp)
    /* 5FBD0 8006F3D0 2000BF8F */  lw         $ra, 0x20($sp)
    /* 5FBD4 8006F3D4 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 5FBD8 8006F3D8 0800E003 */  jr         $ra
    /* 5FBDC 8006F3DC 00000000 */   nop
endlabel func_8006F360
