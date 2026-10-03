nonmatching func_8004FAC0, 0xA8

glabel func_8004FAC0
    /* 402C0 8004FAC0 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 402C4 8004FAC4 1080033C */  lui        $v1, %hi(D_800FF748)
    /* 402C8 8004FAC8 48F76324 */  addiu      $v1, $v1, %lo(D_800FF748)
    /* 402CC 8004FACC 0F008228 */  slti       $v0, $a0, 0xF
    /* 402D0 8004FAD0 4000BFAF */  sw         $ra, 0x40($sp)
    /* 402D4 8004FAD4 0E80013C */  lui        $at, %hi(D_800E7658)
    /* 402D8 8004FAD8 587624AC */  sw         $a0, %lo(D_800E7658)($at)
    /* 402DC 8004FADC 07004014 */  bnez       $v0, .L8004FAFC
    /* 402E0 8004FAE0 11000224 */   addiu     $v0, $zero, 0x11
    /* 402E4 8004FAE4 80100500 */  sll        $v0, $a1, 2
    /* 402E8 8004FAE8 21104500 */  addu       $v0, $v0, $a1
    /* 402EC 8004FAEC C0100200 */  sll        $v0, $v0, 3
    /* 402F0 8004FAF0 21104300 */  addu       $v0, $v0, $v1
    /* 402F4 8004FAF4 D63E0108 */  j          .L8004FB58
    /* 402F8 8004FAF8 C45D40A0 */   sb        $zero, 0x5DC4($v0)
  .L8004FAFC:
    /* 402FC 8004FAFC 23104400 */  subu       $v0, $v0, $a0
    /* 40300 8004FB00 C0100200 */  sll        $v0, $v0, 3
    /* 40304 8004FB04 06000324 */  addiu      $v1, $zero, 0x6
    /* 40308 8004FB08 1400A3AF */  sw         $v1, 0x14($sp)
    /* 4030C 8004FB0C 00700324 */  addiu      $v1, $zero, 0x7000
    /* 40310 8004FB10 FF004230 */  andi       $v0, $v0, 0xFF
    /* 40314 8004FB14 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 40318 8004FB18 3000A2AF */  sw         $v0, 0x30($sp)
    /* 4031C 8004FB1C 3400A2AF */  sw         $v0, 0x34($sp)
    /* 40320 8004FB20 01000224 */  addiu      $v0, $zero, 0x1
    /* 40324 8004FB24 FF00A430 */  andi       $a0, $a1, 0xFF
    /* 40328 8004FB28 04000524 */  addiu      $a1, $zero, 0x4
    /* 4032C 8004FB2C 0060063C */  lui        $a2, (0x60000000 >> 16)
    /* 40330 8004FB30 21380000 */  addu       $a3, $zero, $zero
    /* 40334 8004FB34 1000A0AF */  sw         $zero, 0x10($sp)
    /* 40338 8004FB38 1800A0AF */  sw         $zero, 0x18($sp)
    /* 4033C 8004FB3C 1C00A3AF */  sw         $v1, 0x1C($sp)
    /* 40340 8004FB40 2000A3AF */  sw         $v1, 0x20($sp)
    /* 40344 8004FB44 2400A0AF */  sw         $zero, 0x24($sp)
    /* 40348 8004FB48 2800A0AF */  sw         $zero, 0x28($sp)
    /* 4034C 8004FB4C 3800A0AF */  sw         $zero, 0x38($sp)
    /* 40350 8004FB50 6B73000C */  jal        func_8001CDAC
    /* 40354 8004FB54 3C00A2AF */   sw        $v0, 0x3C($sp)
  .L8004FB58:
    /* 40358 8004FB58 4000BF8F */  lw         $ra, 0x40($sp)
    /* 4035C 8004FB5C 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 40360 8004FB60 0800E003 */  jr         $ra
    /* 40364 8004FB64 00000000 */   nop
endlabel func_8004FAC0
