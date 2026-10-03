nonmatching func_8004B2E0, 0x134

glabel func_8004B2E0
    /* 3BAE0 8004B2E0 801F033C */  lui        $v1, (0x1F8002F4 >> 16)
    /* 3BAE4 8004B2E4 F402638C */  lw         $v1, (0x1F8002F4 & 0xFFFF)($v1)
    /* 3BAE8 8004B2E8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 3BAEC 8004B2EC 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 3BAF0 8004B2F0 2800B4AF */  sw         $s4, 0x28($sp)
    /* 3BAF4 8004B2F4 2400B3AF */  sw         $s3, 0x24($sp)
    /* 3BAF8 8004B2F8 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3BAFC 8004B2FC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3BB00 8004B300 1800B0AF */  sw         $s0, 0x18($sp)
    /* 3BB04 8004B304 96036290 */  lbu        $v0, 0x396($v1)
    /* 3BB08 8004B308 801F013C */  lui        $at, (0x1F8000B0 >> 16)
    /* 3BB0C 8004B30C B00022A0 */  sb         $v0, (0x1F8000B0 & 0xFFFF)($at)
    /* 3BB10 8004B310 02006294 */  lhu        $v0, 0x2($v1)
    /* 3BB14 8004B314 801F013C */  lui        $at, (0x1F8000F8 >> 16)
    /* 3BB18 8004B318 F80022A4 */  sh         $v0, (0x1F8000F8 & 0xFFFF)($at)
    /* 3BB1C 8004B31C 04006294 */  lhu        $v0, 0x4($v1)
    /* 3BB20 8004B320 801F013C */  lui        $at, (0x1F8000FA >> 16)
    /* 3BB24 8004B324 FA0022A4 */  sh         $v0, (0x1F8000FA & 0xFFFF)($at)
    /* 3BB28 8004B328 06006294 */  lhu        $v0, 0x6($v1)
    /* 3BB2C 8004B32C 801F013C */  lui        $at, (0x1F8000FC >> 16)
    /* 3BB30 8004B330 FC0022A4 */  sh         $v0, (0x1F8000FC & 0xFFFF)($at)
    /* 3BB34 8004B334 A4036290 */  lbu        $v0, 0x3A4($v1)
    /* 3BB38 8004B338 801F013C */  lui        $at, (0x1F8000B1 >> 16)
    /* 3BB3C 8004B33C B10022A0 */  sb         $v0, (0x1F8000B1 & 0xFFFF)($at)
    /* 3BB40 8004B340 A003628C */  lw         $v0, 0x3A0($v1)
    /* 3BB44 8004B344 801F013C */  lui        $at, (0x1F8000B4 >> 16)
    /* 3BB48 8004B348 B40022AC */  sw         $v0, (0x1F8000B4 & 0xFFFF)($at)
    /* 3BB4C 8004B34C 0C00628C */  lw         $v0, 0xC($v1)
    /* 3BB50 8004B350 801F013C */  lui        $at, (0x1F8000B8 >> 16)
    /* 3BB54 8004B354 B80022AC */  sw         $v0, (0x1F8000B8 & 0xFFFF)($at)
    /* 3BB58 8004B358 C8036294 */  lhu        $v0, 0x3C8($v1)
    /* 3BB5C 8004B35C 21800000 */  addu       $s0, $zero, $zero
    /* 3BB60 8004B360 801F013C */  lui        $at, (0x1F8000B2 >> 16)
    /* 3BB64 8004B364 B20022A0 */  sb         $v0, (0x1F8000B2 & 0xFFFF)($at)
    /* 3BB68 8004B368 CA036294 */  lhu        $v0, 0x3CA($v1)
    /* 3BB6C 8004B36C 801F013C */  lui        $at, (0x1F8000B3 >> 16)
    /* 3BB70 8004B370 B30022A0 */  sb         $v0, (0x1F8000B3 & 0xFFFF)($at)
    /* 3BB74 8004B374 BC036294 */  lhu        $v0, 0x3BC($v1)
    /* 3BB78 8004B378 FF008430 */  andi       $a0, $a0, 0xFF
    /* 3BB7C 8004B37C 801F013C */  lui        $at, (0x1F8000BC >> 16)
    /* 3BB80 8004B380 BC0022A0 */  sb         $v0, (0x1F8000BC & 0xFFFF)($at)
    /* 3BB84 8004B384 19008018 */  blez       $a0, .L8004B3EC
    /* 3BB88 8004B388 801F123C */   lui       $s2, (0x1F8000FA >> 16)
    /* 3BB8C 8004B38C 21888000 */  addu       $s1, $a0, $zero
    /* 3BB90 8004B390 FF001424 */  addiu      $s4, $zero, 0xFF
    /* 3BB94 8004B394 E0FF1324 */  addiu      $s3, $zero, -0x20
  .L8004B398:
    /* 3BB98 8004B398 9002448E */  lw         $a0, (0x1F800290 & 0xFFFF)($s2)
    /* 3BB9C 8004B39C 00000000 */  nop
    /* 3BBA0 8004B3A0 21200402 */  addu       $a0, $s0, $a0
    /* 3BBA4 8004B3A4 A92E010C */  jal        func_8004BAA4
    /* 3BBA8 8004B3A8 FFFF8430 */   andi      $a0, $a0, 0xFFFF
    /* 3BBAC 8004B3AC 0B000012 */  beqz       $s0, .L8004B3DC
    /* 3BBB0 8004B3B0 00000000 */   nop
    /* 3BBB4 8004B3B4 09003416 */  bne        $s1, $s4, .L8004B3DC
    /* 3BBB8 8004B3B8 00000000 */   nop
    /* 3BBBC 8004B3BC FA004296 */  lhu        $v0, (0x1F8000FA & 0xFFFF)($s2)
    /* 3BBC0 8004B3C0 00000000 */  nop
    /* 3BBC4 8004B3C4 00140200 */  sll        $v0, $v0, 16
    /* 3BBC8 8004B3C8 03140200 */  sra        $v0, $v0, 16
    /* 3BBCC 8004B3CC 03005314 */  bne        $v0, $s3, .L8004B3DC
    /* 3BBD0 8004B3D0 01000226 */   addiu     $v0, $s0, 0x1
    /* 3BBD4 8004B3D4 FC2C0108 */  j          .L8004B3F0
    /* 3BBD8 8004B3D8 FF004230 */   andi      $v0, $v0, 0xFF
  .L8004B3DC:
    /* 3BBDC 8004B3DC 01001026 */  addiu      $s0, $s0, 0x1
    /* 3BBE0 8004B3E0 2A101102 */  slt        $v0, $s0, $s1
    /* 3BBE4 8004B3E4 ECFF4014 */  bnez       $v0, .L8004B398
    /* 3BBE8 8004B3E8 00000000 */   nop
  .L8004B3EC:
    /* 3BBEC 8004B3EC 21100000 */  addu       $v0, $zero, $zero
  .L8004B3F0:
    /* 3BBF0 8004B3F0 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 3BBF4 8004B3F4 2800B48F */  lw         $s4, 0x28($sp)
    /* 3BBF8 8004B3F8 2400B38F */  lw         $s3, 0x24($sp)
    /* 3BBFC 8004B3FC 2000B28F */  lw         $s2, 0x20($sp)
    /* 3BC00 8004B400 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 3BC04 8004B404 1800B08F */  lw         $s0, 0x18($sp)
    /* 3BC08 8004B408 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 3BC0C 8004B40C 0800E003 */  jr         $ra
    /* 3BC10 8004B410 00000000 */   nop
endlabel func_8004B2E0
