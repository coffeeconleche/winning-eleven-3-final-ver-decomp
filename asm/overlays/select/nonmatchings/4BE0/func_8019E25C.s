nonmatching func_8019E25C, 0x190

glabel func_8019E25C
    /* 152E4 8019E25C A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 152E8 8019E260 5000B2AF */  sw         $s2, 0x50($sp)
    /* 152EC 8019E264 21908000 */  addu       $s2, $a0, $zero
    /* 152F0 8019E268 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 152F4 8019E26C 1080113C */  lui        $s1, %hi(D_800FF748)
    /* 152F8 8019E270 48F73126 */  addiu      $s1, $s1, %lo(D_800FF748)
    /* 152FC 8019E274 3E300424 */  addiu      $a0, $zero, 0x303E
    /* 15300 8019E278 5800BFAF */  sw         $ra, 0x58($sp)
    /* 15304 8019E27C 5400B3AF */  sw         $s3, 0x54($sp)
    /* 15308 8019E280 0174000C */  jal        func_8001D004
    /* 1530C 8019E284 4800B0AF */   sw        $s0, 0x48($sp)
    /* 15310 8019E288 5B000324 */  addiu      $v1, $zero, 0x5B
    /* 15314 8019E28C 17001024 */  addiu      $s0, $zero, 0x17
    /* 15318 8019E290 21204000 */  addu       $a0, $v0, $zero
    /* 1531C 8019E294 14018224 */  addiu      $v0, $a0, 0x114
  .L8019E298:
    /* 15320 8019E298 0A0043A0 */  sb         $v1, 0xA($v0)
    /* 15324 8019E29C FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 15328 8019E2A0 FDFF0106 */  bgez       $s0, .L8019E298
    /* 1532C 8019E2A4 F4FF4224 */   addiu     $v0, $v0, -0xC
    /* 15330 8019E2A8 801F023C */  lui        $v0, (0x1F8002E1 >> 16)
    /* 15334 8019E2AC E1024290 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($v0)
    /* 15338 8019E2B0 00000000 */  nop
    /* 1533C 8019E2B4 FF004330 */  andi       $v1, $v0, 0xFF
    /* 15340 8019E2B8 02000224 */  addiu      $v0, $zero, 0x2
    /* 15344 8019E2BC 05006214 */  bne        $v1, $v0, .L8019E2D4
    /* 15348 8019E2C0 01000224 */   addiu     $v0, $zero, 0x1
    /* 1534C 8019E2C4 FF004232 */  andi       $v0, $s2, 0xFF
    /* 15350 8019E2C8 0200422C */  sltiu      $v0, $v0, 0x2
    /* 15354 8019E2CC 03004014 */  bnez       $v0, .L8019E2DC
    /* 15358 8019E2D0 01000224 */   addiu     $v0, $zero, 0x1
  .L8019E2D4:
    /* 1535C 8019E2D4 14006214 */  bne        $v1, $v0, .L8019E328
    /* 15360 8019E2D8 21800000 */   addu      $s0, $zero, $zero
  .L8019E2DC:
    /* 15364 8019E2DC 01000424 */  addiu      $a0, $zero, 0x1
    /* 15368 8019E2E0 1D80053C */  lui        $a1, %hi(D_801D1F54)
    /* 1536C 8019E2E4 541FA524 */  addiu      $a1, $a1, %lo(D_801D1F54)
    /* 15370 8019E2E8 65FF0624 */  addiu      $a2, $zero, -0x9B
    /* 15374 8019E2EC 16000724 */  addiu      $a3, $zero, 0x16
    /* 15378 8019E2F0 8E000224 */  addiu      $v0, $zero, 0x8E
    /* 1537C 8019E2F4 8C5E20A2 */  sb         $zero, 0x5E8C($s1)
    /* 15380 8019E2F8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 15384 8019E2FC 01000224 */  addiu      $v0, $zero, 0x1
    /* 15388 8019E300 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1538C 8019E304 1800A0AF */  sw         $zero, 0x18($sp)
    /* 15390 8019E308 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 15394 8019E30C 2000A0AF */  sw         $zero, 0x20($sp)
    /* 15398 8019E310 2400A2AF */  sw         $v0, 0x24($sp)
    /* 1539C 8019E314 2800A2AF */  sw         $v0, 0x28($sp)
    /* 153A0 8019E318 B850060C */  jal        func_801942E0
    /* 153A4 8019E31C 2C00A2AF */   sw        $v0, 0x2C($sp)
    /* 153A8 8019E320 F3780608 */  j          .L8019E3CC
    /* 153AC 8019E324 00000000 */   nop
  .L8019E328:
    /* 153B0 8019E328 10001324 */  addiu      $s3, $zero, 0x10
    /* 153B4 8019E32C 21888000 */  addu       $s1, $a0, $zero
    /* 153B8 8019E330 FF000432 */  andi       $a0, $s0, 0xFF
  .L8019E334:
    /* 153BC 8019E334 FB78060C */  jal        func_8019E3EC
    /* 153C0 8019E338 FF004532 */   andi      $a1, $s2, 0xFF
    /* 153C4 8019E33C 06004010 */  beqz       $v0, .L8019E358
    /* 153C8 8019E340 21202002 */   addu      $a0, $s1, $zero
    /* 153CC 8019E344 010033A2 */  sb         $s3, 0x1($s1)
    /* 153D0 8019E348 0C003126 */  addiu      $s1, $s1, 0xC
    /* 153D4 8019E34C 21280002 */  addu       $a1, $s0, $zero
    /* 153D8 8019E350 7D86000C */  jal        func_800219F4
    /* 153DC 8019E354 21300000 */   addu      $a2, $zero, $zero
  .L8019E358:
    /* 153E0 8019E358 01001026 */  addiu      $s0, $s0, 0x1
    /* 153E4 8019E35C 2800022A */  slti       $v0, $s0, 0x28
    /* 153E8 8019E360 F4FF4014 */  bnez       $v0, .L8019E334
    /* 153EC 8019E364 FF000432 */   andi      $a0, $s0, 0xFF
    /* 153F0 8019E368 05000424 */  addiu      $a0, $zero, 0x5
    /* 153F4 8019E36C 3E300524 */  addiu      $a1, $zero, 0x303E
    /* 153F8 8019E370 21300000 */  addu       $a2, $zero, $zero
    /* 153FC 8019E374 21380000 */  addu       $a3, $zero, $zero
    /* 15400 8019E378 06000224 */  addiu      $v0, $zero, 0x6
    /* 15404 8019E37C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 15408 8019E380 00100224 */  addiu      $v0, $zero, 0x1000
    /* 1540C 8019E384 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 15410 8019E388 2000A2AF */  sw         $v0, 0x20($sp)
    /* 15414 8019E38C 80000224 */  addiu      $v0, $zero, 0x80
    /* 15418 8019E390 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 1541C 8019E394 3000A2AF */  sw         $v0, 0x30($sp)
    /* 15420 8019E398 3400A2AF */  sw         $v0, 0x34($sp)
    /* 15424 8019E39C 02000224 */  addiu      $v0, $zero, 0x2
    /* 15428 8019E3A0 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 1542C 8019E3A4 01000224 */  addiu      $v0, $zero, 0x1
    /* 15430 8019E3A8 1E80013C */  lui        $at, %hi(D_801D8FB8)
    /* 15434 8019E3AC B88F20A0 */  sb         $zero, %lo(D_801D8FB8)($at)
    /* 15438 8019E3B0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1543C 8019E3B4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 15440 8019E3B8 2400A0AF */  sw         $zero, 0x24($sp)
    /* 15444 8019E3BC 2800A0AF */  sw         $zero, 0x28($sp)
    /* 15448 8019E3C0 3800A0AF */  sw         $zero, 0x38($sp)
    /* 1544C 8019E3C4 ED4F060C */  jal        func_80193FB4
    /* 15450 8019E3C8 4000A2AF */   sw        $v0, 0x40($sp)
  .L8019E3CC:
    /* 15454 8019E3CC 5800BF8F */  lw         $ra, 0x58($sp)
    /* 15458 8019E3D0 5400B38F */  lw         $s3, 0x54($sp)
    /* 1545C 8019E3D4 5000B28F */  lw         $s2, 0x50($sp)
    /* 15460 8019E3D8 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 15464 8019E3DC 4800B08F */  lw         $s0, 0x48($sp)
    /* 15468 8019E3E0 6000BD27 */  addiu      $sp, $sp, 0x60
    /* 1546C 8019E3E4 0800E003 */  jr         $ra
    /* 15470 8019E3E8 00000000 */   nop
endlabel func_8019E25C
