nonmatching func_800AD2EC, 0x68

glabel func_800AD2EC
    /* 9DAEC 800AD2EC 0D80023C */  lui        $v0, %hi(D_800CEA68)
    /* 9DAF0 800AD2F0 68EA428C */  lw         $v0, %lo(D_800CEA68)($v0)
    /* 9DAF4 800AD2F4 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 9DAF8 800AD2F8 0A0040A4 */  sh         $zero, 0xA($v0)
    /* 9DAFC 800AD2FC 0A000224 */  addiu      $v0, $zero, 0xA
    /* 9DB00 800AD300 0000A2AF */  sw         $v0, 0x0($sp)
    /* 9DB04 800AD304 0000A28F */  lw         $v0, 0x0($sp)
    /* 9DB08 800AD308 00000000 */  nop
    /* 9DB0C 800AD30C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 9DB10 800AD310 0000A2AF */  sw         $v0, 0x0($sp)
    /* 9DB14 800AD314 0000A38F */  lw         $v1, 0x0($sp)
    /* 9DB18 800AD318 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 9DB1C 800AD31C 0A006210 */  beq        $v1, $v0, .L800AD348
    /* 9DB20 800AD320 21100000 */   addu      $v0, $zero, $zero
    /* 9DB24 800AD324 FFFF0324 */  addiu      $v1, $zero, -0x1
  .L800AD328:
    /* 9DB28 800AD328 0000A28F */  lw         $v0, 0x0($sp)
    /* 9DB2C 800AD32C 00000000 */  nop
    /* 9DB30 800AD330 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 9DB34 800AD334 0000A2AF */  sw         $v0, 0x0($sp)
    /* 9DB38 800AD338 0000A28F */  lw         $v0, 0x0($sp)
    /* 9DB3C 800AD33C 00000000 */  nop
    /* 9DB40 800AD340 F9FF4314 */  bne        $v0, $v1, .L800AD328
    /* 9DB44 800AD344 21100000 */   addu      $v0, $zero, $zero
  .L800AD348:
    /* 9DB48 800AD348 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 9DB4C 800AD34C 0800E003 */  jr         $ra
    /* 9DB50 800AD350 00000000 */   nop
endlabel func_800AD2EC
