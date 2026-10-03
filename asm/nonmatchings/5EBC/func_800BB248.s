nonmatching func_800BB248, 0x270

glabel func_800BB248
    /* ABA48 800BB248 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* ABA4C 800BB24C 0F80023C */  lui        $v0, %hi(D_800F1014)
    /* ABA50 800BB250 1410428C */  lw         $v0, %lo(D_800F1014)($v0)
    /* ABA54 800BB254 01000324 */  addiu      $v1, $zero, 0x1
    /* ABA58 800BB258 3400BFAF */  sw         $ra, 0x34($sp)
    /* ABA5C 800BB25C 3000BEAF */  sw         $fp, 0x30($sp)
    /* ABA60 800BB260 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* ABA64 800BB264 2800B6AF */  sw         $s6, 0x28($sp)
    /* ABA68 800BB268 2400B5AF */  sw         $s5, 0x24($sp)
    /* ABA6C 800BB26C 2000B4AF */  sw         $s4, 0x20($sp)
    /* ABA70 800BB270 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* ABA74 800BB274 1800B2AF */  sw         $s2, 0x18($sp)
    /* ABA78 800BB278 1400B1AF */  sw         $s1, 0x14($sp)
    /* ABA7C 800BB27C 82004310 */  beq        $v0, $v1, .L800BB488
    /* ABA80 800BB280 1000B0AF */   sw        $s0, 0x10($sp)
    /* ABA84 800BB284 0F80013C */  lui        $at, %hi(D_800F1014)
    /* ABA88 800BB288 141023AC */  sw         $v1, %lo(D_800F1014)($at)
    /* ABA8C 800BB28C 2AF9020C */  jal        func_800BE4A8
    /* ABA90 800BB290 21B80000 */   addu      $s7, $zero, $zero
    /* ABA94 800BB294 1180023C */  lui        $v0, %hi(D_8010CD40)
    /* ABA98 800BB298 40CD4284 */  lh         $v0, %lo(D_8010CD40)($v0)
    /* ABA9C 800BB29C 00000000 */  nop
    /* ABAA0 800BB2A0 77004018 */  blez       $v0, .L800BB480
    /* ABAA4 800BB2A4 00000000 */   nop
    /* ABAA8 800BB2A8 11801E3C */  lui        $fp, %hi(D_8010C2A8)
    /* ABAAC 800BB2AC A8C2DE27 */  addiu      $fp, $fp, %lo(D_8010C2A8)
  .L800BB2B0:
    /* ABAB0 800BB2B0 01000224 */  addiu      $v0, $zero, 0x1
    /* ABAB4 800BB2B4 1080033C */  lui        $v1, %hi(D_800FF72C)
    /* ABAB8 800BB2B8 2CF7638C */  lw         $v1, %lo(D_800FF72C)($v1)
    /* ABABC 800BB2BC 0410E202 */  sllv       $v0, $v0, $s7
    /* ABAC0 800BB2C0 24186200 */  and        $v1, $v1, $v0
    /* ABAC4 800BB2C4 68006010 */  beqz       $v1, .L800BB468
    /* ABAC8 800BB2C8 00000000 */   nop
    /* ABACC 800BB2CC 1180023C */  lui        $v0, %hi(D_8010CD48)
    /* ABAD0 800BB2D0 48CD4284 */  lh         $v0, %lo(D_8010CD48)($v0)
    /* ABAD4 800BB2D4 00000000 */  nop
    /* ABAD8 800BB2D8 63004018 */  blez       $v0, .L800BB468
    /* ABADC 800BB2DC 21B00000 */   addu      $s6, $zero, $zero
    /* ABAE0 800BB2E0 2190C003 */  addu       $s2, $fp, $zero
    /* ABAE4 800BB2E4 00AC1700 */  sll        $s5, $s7, 16
    /* ABAE8 800BB2E8 03A41500 */  sra        $s4, $s5, 16
    /* ABAEC 800BB2EC 21980000 */  addu       $s3, $zero, $zero
    /* ABAF0 800BB2F0 21800000 */  addu       $s0, $zero, $zero
  .L800BB2F4:
    /* ABAF4 800BB2F4 0000428E */  lw         $v0, 0x0($s2)
    /* ABAF8 800BB2F8 00000000 */  nop
    /* ABAFC 800BB2FC 21100202 */  addu       $v0, $s0, $v0
    /* ABB00 800BB300 9800428C */  lw         $v0, 0x98($v0)
    /* ABB04 800BB304 00000000 */  nop
    /* ABB08 800BB308 01004230 */  andi       $v0, $v0, 0x1
    /* ABB0C 800BB30C 2C004010 */  beqz       $v0, .L800BB3C0
    /* ABB10 800BB310 21208002 */   addu      $a0, $s4, $zero
    /* ABB14 800BB314 038C1300 */  sra        $s1, $s3, 16
    /* ABB18 800BB318 02EF020C */  jal        func_800BBC08
    /* ABB1C 800BB31C 21282002 */   addu      $a1, $s1, $zero
    /* ABB20 800BB320 0000428E */  lw         $v0, 0x0($s2)
    /* ABB24 800BB324 00000000 */  nop
    /* ABB28 800BB328 21100202 */  addu       $v0, $s0, $v0
    /* ABB2C 800BB32C 9800428C */  lw         $v0, 0x98($v0)
    /* ABB30 800BB330 00000000 */  nop
    /* ABB34 800BB334 10004230 */  andi       $v0, $v0, 0x10
    /* ABB38 800BB338 03004010 */  beqz       $v0, .L800BB348
    /* ABB3C 800BB33C 21208002 */   addu      $a0, $s4, $zero
    /* ABB40 800BB340 2EED020C */  jal        func_800BB4B8
    /* ABB44 800BB344 21282002 */   addu      $a1, $s1, $zero
  .L800BB348:
    /* ABB48 800BB348 0000428E */  lw         $v0, 0x0($s2)
    /* ABB4C 800BB34C 00000000 */  nop
    /* ABB50 800BB350 21100202 */  addu       $v0, $s0, $v0
    /* ABB54 800BB354 9800428C */  lw         $v0, 0x98($v0)
    /* ABB58 800BB358 00000000 */  nop
    /* ABB5C 800BB35C 20004230 */  andi       $v0, $v0, 0x20
    /* ABB60 800BB360 03004010 */  beqz       $v0, .L800BB370
    /* ABB64 800BB364 21208002 */   addu      $a0, $s4, $zero
    /* ABB68 800BB368 F2ED020C */  jal        func_800BB7C8
    /* ABB6C 800BB36C 21282002 */   addu      $a1, $s1, $zero
  .L800BB370:
    /* ABB70 800BB370 0000428E */  lw         $v0, 0x0($s2)
    /* ABB74 800BB374 00000000 */  nop
    /* ABB78 800BB378 21100202 */  addu       $v0, $s0, $v0
    /* ABB7C 800BB37C 9800428C */  lw         $v0, 0x98($v0)
    /* ABB80 800BB380 00000000 */  nop
    /* ABB84 800BB384 40004230 */  andi       $v0, $v0, 0x40
    /* ABB88 800BB388 03004010 */  beqz       $v0, .L800BB398
    /* ABB8C 800BB38C 21208002 */   addu      $a0, $s4, $zero
    /* ABB90 800BB390 42F4020C */  jal        func_800BD108
    /* ABB94 800BB394 21282002 */   addu      $a1, $s1, $zero
  .L800BB398:
    /* ABB98 800BB398 0000428E */  lw         $v0, 0x0($s2)
    /* ABB9C 800BB39C 00000000 */  nop
    /* ABBA0 800BB3A0 21100202 */  addu       $v0, $s0, $v0
    /* ABBA4 800BB3A4 9800428C */  lw         $v0, 0x98($v0)
    /* ABBA8 800BB3A8 00000000 */  nop
    /* ABBAC 800BB3AC 80004230 */  andi       $v0, $v0, 0x80
    /* ABBB0 800BB3B0 03004010 */  beqz       $v0, .L800BB3C0
    /* ABBB4 800BB3B4 21208002 */   addu      $a0, $s4, $zero
    /* ABBB8 800BB3B8 42F4020C */  jal        func_800BD108
    /* ABBBC 800BB3BC 21282002 */   addu      $a1, $s1, $zero
  .L800BB3C0:
    /* ABBC0 800BB3C0 0000428E */  lw         $v0, 0x0($s2)
    /* ABBC4 800BB3C4 00000000 */  nop
    /* ABBC8 800BB3C8 21100202 */  addu       $v0, $s0, $v0
    /* ABBCC 800BB3CC 9800428C */  lw         $v0, 0x98($v0)
    /* ABBD0 800BB3D0 00000000 */  nop
    /* ABBD4 800BB3D4 02004230 */  andi       $v0, $v0, 0x2
    /* ABBD8 800BB3D8 03004010 */  beqz       $v0, .L800BB3E8
    /* ABBDC 800BB3DC 03241500 */   sra       $a0, $s5, 16
    /* ABBE0 800BB3E0 DAEE020C */  jal        func_800BBB68
    /* ABBE4 800BB3E4 032C1300 */   sra       $a1, $s3, 16
  .L800BB3E8:
    /* ABBE8 800BB3E8 0000428E */  lw         $v0, 0x0($s2)
    /* ABBEC 800BB3EC 00000000 */  nop
    /* ABBF0 800BB3F0 21100202 */  addu       $v0, $s0, $v0
    /* ABBF4 800BB3F4 9800428C */  lw         $v0, 0x98($v0)
    /* ABBF8 800BB3F8 00000000 */  nop
    /* ABBFC 800BB3FC 08004230 */  andi       $v0, $v0, 0x8
    /* ABC00 800BB400 03004010 */  beqz       $v0, .L800BB410
    /* ABC04 800BB404 03241500 */   sra       $a0, $s5, 16
    /* ABC08 800BB408 36F1020C */  jal        func_800BC4D8
    /* ABC0C 800BB40C 032C1300 */   sra       $a1, $s3, 16
  .L800BB410:
    /* ABC10 800BB410 0000428E */  lw         $v0, 0x0($s2)
    /* ABC14 800BB414 00000000 */  nop
    /* ABC18 800BB418 21100202 */  addu       $v0, $s0, $v0
    /* ABC1C 800BB41C 9800428C */  lw         $v0, 0x98($v0)
    /* ABC20 800BB420 00000000 */  nop
    /* ABC24 800BB424 04004230 */  andi       $v0, $v0, 0x4
    /* ABC28 800BB428 07004010 */  beqz       $v0, .L800BB448
    /* ABC2C 800BB42C 03241500 */   sra       $a0, $s5, 16
    /* ABC30 800BB430 9EF2020C */  jal        func_800BCA78
    /* ABC34 800BB434 032C1300 */   sra       $a1, $s3, 16
    /* ABC38 800BB438 0000428E */  lw         $v0, 0x0($s2)
    /* ABC3C 800BB43C 00000000 */  nop
    /* ABC40 800BB440 21100202 */  addu       $v0, $s0, $v0
    /* ABC44 800BB444 980040AC */  sw         $zero, 0x98($v0)
  .L800BB448:
    /* ABC48 800BB448 0100023C */  lui        $v0, (0x10000 >> 16)
    /* ABC4C 800BB44C 21986202 */  addu       $s3, $s3, $v0
    /* ABC50 800BB450 1180023C */  lui        $v0, %hi(D_8010CD48)
    /* ABC54 800BB454 48CD4284 */  lh         $v0, %lo(D_8010CD48)($v0)
    /* ABC58 800BB458 0100D626 */  addiu      $s6, $s6, 0x1
    /* ABC5C 800BB45C 2A10C202 */  slt        $v0, $s6, $v0
    /* ABC60 800BB460 A4FF4014 */  bnez       $v0, .L800BB2F4
    /* ABC64 800BB464 B0001026 */   addiu     $s0, $s0, 0xB0
  .L800BB468:
    /* ABC68 800BB468 1180023C */  lui        $v0, %hi(D_8010CD40)
    /* ABC6C 800BB46C 40CD4284 */  lh         $v0, %lo(D_8010CD40)($v0)
    /* ABC70 800BB470 0100F726 */  addiu      $s7, $s7, 0x1
    /* ABC74 800BB474 2A10E202 */  slt        $v0, $s7, $v0
    /* ABC78 800BB478 8DFF4014 */  bnez       $v0, .L800BB2B0
    /* ABC7C 800BB47C 0400DE27 */   addiu     $fp, $fp, 0x4
  .L800BB480:
    /* ABC80 800BB480 0F80013C */  lui        $at, %hi(D_800F1014)
    /* ABC84 800BB484 141020AC */  sw         $zero, %lo(D_800F1014)($at)
  .L800BB488:
    /* ABC88 800BB488 3400BF8F */  lw         $ra, 0x34($sp)
    /* ABC8C 800BB48C 3000BE8F */  lw         $fp, 0x30($sp)
    /* ABC90 800BB490 2C00B78F */  lw         $s7, 0x2C($sp)
    /* ABC94 800BB494 2800B68F */  lw         $s6, 0x28($sp)
    /* ABC98 800BB498 2400B58F */  lw         $s5, 0x24($sp)
    /* ABC9C 800BB49C 2000B48F */  lw         $s4, 0x20($sp)
    /* ABCA0 800BB4A0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* ABCA4 800BB4A4 1800B28F */  lw         $s2, 0x18($sp)
    /* ABCA8 800BB4A8 1400B18F */  lw         $s1, 0x14($sp)
    /* ABCAC 800BB4AC 1000B08F */  lw         $s0, 0x10($sp)
    /* ABCB0 800BB4B0 0800E003 */  jr         $ra
    /* ABCB4 800BB4B4 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_800BB248
