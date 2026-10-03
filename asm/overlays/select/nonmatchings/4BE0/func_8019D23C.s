nonmatching func_8019D23C, 0x520

glabel func_8019D23C
    /* 142C4 8019D23C 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 142C8 8019D240 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 142CC 8019D244 21A88000 */  addu       $s5, $a0, $zero
    /* 142D0 8019D248 26000424 */  addiu      $a0, $zero, 0x26
    /* 142D4 8019D24C 31000524 */  addiu      $a1, $zero, 0x31
    /* 142D8 8019D250 21300000 */  addu       $a2, $zero, $zero
    /* 142DC 8019D254 6800BFAF */  sw         $ra, 0x68($sp)
    /* 142E0 8019D258 6400B7AF */  sw         $s7, 0x64($sp)
    /* 142E4 8019D25C 6000B6AF */  sw         $s6, 0x60($sp)
    /* 142E8 8019D260 5800B4AF */  sw         $s4, 0x58($sp)
    /* 142EC 8019D264 5400B3AF */  sw         $s3, 0x54($sp)
    /* 142F0 8019D268 5000B2AF */  sw         $s2, 0x50($sp)
    /* 142F4 8019D26C 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 142F8 8019D270 2B39060C */  jal        func_8018E4AC
    /* 142FC 8019D274 4800B0AF */   sw        $s0, 0x48($sp)
    /* 14300 8019D278 801F023C */  lui        $v0, (0x1F8002E1 >> 16)
    /* 14304 8019D27C E1024290 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($v0)
    /* 14308 8019D280 01001424 */  addiu      $s4, $zero, 0x1
    /* 1430C 8019D284 1E005414 */  bne        $v0, $s4, .L8019D300
    /* 14310 8019D288 26000424 */   addiu     $a0, $zero, 0x26
    /* 14314 8019D28C 21300000 */  addu       $a2, $zero, $zero
    /* 14318 8019D290 4F000724 */  addiu      $a3, $zero, 0x4F
    /* 1431C 8019D294 18001324 */  addiu      $s3, $zero, 0x18
    /* 14320 8019D298 00101124 */  addiu      $s1, $zero, 0x1000
    /* 14324 8019D29C 80001024 */  addiu      $s0, $zero, 0x80
    /* 14328 8019D2A0 801F053C */  lui        $a1, (0x1F8002E2 >> 16)
    /* 1432C 8019D2A4 E202A590 */  lbu        $a1, (0x1F8002E2 & 0xFFFF)($a1)
    /* 14330 8019D2A8 02001224 */  addiu      $s2, $zero, 0x2
    /* 14334 8019D2AC 1000B4AF */  sw         $s4, 0x10($sp)
    /* 14338 8019D2B0 1400B3AF */  sw         $s3, 0x14($sp)
    /* 1433C 8019D2B4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 14340 8019D2B8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 14344 8019D2BC 2000B1AF */  sw         $s1, 0x20($sp)
    /* 14348 8019D2C0 2400A0AF */  sw         $zero, 0x24($sp)
    /* 1434C 8019D2C4 2800A0AF */  sw         $zero, 0x28($sp)
    /* 14350 8019D2C8 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 14354 8019D2CC 3000B0AF */  sw         $s0, 0x30($sp)
    /* 14358 8019D2D0 3400B0AF */  sw         $s0, 0x34($sp)
    /* 1435C 8019D2D4 3800A0AF */  sw         $zero, 0x38($sp)
    /* 14360 8019D2D8 3C00B2AF */  sw         $s2, 0x3C($sp)
    /* 14364 8019D2DC 4000B4AF */  sw         $s4, 0x40($sp)
    /* 14368 8019D2E0 ED4F060C */  jal        func_80193FB4
    /* 1436C 8019D2E4 1830A524 */   addiu     $a1, $a1, 0x3018
    /* 14370 8019D2E8 27000424 */  addiu      $a0, $zero, 0x27
    /* 14374 8019D2EC 1D300524 */  addiu      $a1, $zero, 0x301D
    /* 14378 8019D2F0 21300000 */  addu       $a2, $zero, $zero
    /* 1437C 8019D2F4 4F000724 */  addiu      $a3, $zero, 0x4F
    /* 14380 8019D2F8 E6740608 */  j          .L8019D398
    /* 14384 8019D2FC 1000B4AF */   sw        $s4, 0x10($sp)
  .L8019D300:
    /* 14388 8019D300 1E80103C */  lui        $s0, %hi(D_801DA2F4)
    /* 1438C 8019D304 F4A21092 */  lbu        $s0, %lo(D_801DA2F4)($s0)
    /* 14390 8019D308 00000000 */  nop
    /* 14394 8019D30C 38301026 */  addiu      $s0, $s0, 0x3038
    /* 14398 8019D310 0174000C */  jal        func_8001D004
    /* 1439C 8019D314 21200002 */   addu      $a0, $s0, $zero
    /* 143A0 8019D318 26000424 */  addiu      $a0, $zero, 0x26
    /* 143A4 8019D31C 21280002 */  addu       $a1, $s0, $zero
    /* 143A8 8019D320 21300000 */  addu       $a2, $zero, $zero
    /* 143AC 8019D324 1B001324 */  addiu      $s3, $zero, 0x1B
    /* 143B0 8019D328 00101124 */  addiu      $s1, $zero, 0x1000
    /* 143B4 8019D32C 80001024 */  addiu      $s0, $zero, 0x80
    /* 143B8 8019D330 02001224 */  addiu      $s2, $zero, 0x2
    /* 143BC 8019D334 01004290 */  lbu        $v0, 0x1($v0)
    /* 143C0 8019D338 98000724 */  addiu      $a3, $zero, 0x98
    /* 143C4 8019D33C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 143C8 8019D340 1400B3AF */  sw         $s3, 0x14($sp)
    /* 143CC 8019D344 1800A0AF */  sw         $zero, 0x18($sp)
    /* 143D0 8019D348 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 143D4 8019D34C 2000B1AF */  sw         $s1, 0x20($sp)
    /* 143D8 8019D350 2400A0AF */  sw         $zero, 0x24($sp)
    /* 143DC 8019D354 2800A0AF */  sw         $zero, 0x28($sp)
    /* 143E0 8019D358 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 143E4 8019D35C 3000B0AF */  sw         $s0, 0x30($sp)
    /* 143E8 8019D360 3400B0AF */  sw         $s0, 0x34($sp)
    /* 143EC 8019D364 3800A0AF */  sw         $zero, 0x38($sp)
    /* 143F0 8019D368 3C00B2AF */  sw         $s2, 0x3C($sp)
    /* 143F4 8019D36C 4000B4AF */  sw         $s4, 0x40($sp)
    /* 143F8 8019D370 2338E200 */  subu       $a3, $a3, $v0
    /* 143FC 8019D374 C2170700 */  srl        $v0, $a3, 31
    /* 14400 8019D378 2138E200 */  addu       $a3, $a3, $v0
    /* 14404 8019D37C ED4F060C */  jal        func_80193FB4
    /* 14408 8019D380 43380700 */   sra       $a3, $a3, 1
    /* 1440C 8019D384 27000424 */  addiu      $a0, $zero, 0x27
    /* 14410 8019D388 3F300524 */  addiu      $a1, $zero, 0x303F
    /* 14414 8019D38C 21300000 */  addu       $a2, $zero, $zero
    /* 14418 8019D390 21380000 */  addu       $a3, $zero, $zero
    /* 1441C 8019D394 1000A0AF */  sw         $zero, 0x10($sp)
  .L8019D398:
    /* 14420 8019D398 1400B3AF */  sw         $s3, 0x14($sp)
    /* 14424 8019D39C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 14428 8019D3A0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1442C 8019D3A4 2000B1AF */  sw         $s1, 0x20($sp)
    /* 14430 8019D3A8 2400A0AF */  sw         $zero, 0x24($sp)
    /* 14434 8019D3AC 2800A0AF */  sw         $zero, 0x28($sp)
    /* 14438 8019D3B0 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 1443C 8019D3B4 3000B0AF */  sw         $s0, 0x30($sp)
    /* 14440 8019D3B8 3400B0AF */  sw         $s0, 0x34($sp)
    /* 14444 8019D3BC 3800A0AF */  sw         $zero, 0x38($sp)
    /* 14448 8019D3C0 3C00B2AF */  sw         $s2, 0x3C($sp)
    /* 1444C 8019D3C4 ED4F060C */  jal        func_80193FB4
    /* 14450 8019D3C8 4000B4AF */   sw        $s4, 0x40($sp)
    /* 14454 8019D3CC FF00A432 */  andi       $a0, $s5, 0xFF
    /* 14458 8019D3D0 02001424 */  addiu      $s4, $zero, 0x2
    /* 1445C 8019D3D4 54009410 */  beq        $a0, $s4, .L8019D528
    /* 14460 8019D3D8 04001324 */   addiu     $s3, $zero, 0x4
    /* 14464 8019D3DC 03008228 */  slti       $v0, $a0, 0x3
    /* 14468 8019D3E0 05004010 */  beqz       $v0, .L8019D3F8
    /* 1446C 8019D3E4 01000224 */   addiu     $v0, $zero, 0x1
    /* 14470 8019D3E8 0C008210 */  beq        $a0, $v0, .L8019D41C
    /* 14474 8019D3EC 21800000 */   addu      $s0, $zero, $zero
    /* 14478 8019D3F0 CB750608 */  j          .L8019D72C
    /* 1447C 8019D3F4 00000000 */   nop
  .L8019D3F8:
    /* 14480 8019D3F8 0B000224 */  addiu      $v0, $zero, 0xB
    /* 14484 8019D3FC 05008210 */  beq        $a0, $v0, .L8019D414
    /* 14488 8019D400 0D000224 */   addiu     $v0, $zero, 0xD
    /* 1448C 8019D404 8C008210 */  beq        $a0, $v0, .L8019D638
    /* 14490 8019D408 28000424 */   addiu     $a0, $zero, 0x28
    /* 14494 8019D40C CB750608 */  j          .L8019D72C
    /* 14498 8019D410 00000000 */   nop
  .L8019D414:
    /* 1449C 8019D414 08001324 */  addiu      $s3, $zero, 0x8
    /* 144A0 8019D418 21800000 */  addu       $s0, $zero, $zero
  .L8019D41C:
    /* 144A4 8019D41C 00101224 */  addiu      $s2, $zero, 0x1000
    /* 144A8 8019D420 80001124 */  addiu      $s1, $zero, 0x80
    /* 144AC 8019D424 01001524 */  addiu      $s5, $zero, 0x1
    /* 144B0 8019D428 19001724 */  addiu      $s7, $zero, 0x19
    /* 144B4 8019D42C 02001624 */  addiu      $s6, $zero, 0x2
    /* 144B8 8019D430 E8FF1424 */  addiu      $s4, $zero, -0x18
  .L8019D434:
    /* 144BC 8019D434 28000426 */  addiu      $a0, $s0, 0x28
    /* 144C0 8019D438 47300526 */  addiu      $a1, $s0, 0x3047
    /* 144C4 8019D43C 21300000 */  addu       $a2, $zero, $zero
    /* 144C8 8019D440 21386002 */  addu       $a3, $s3, $zero
    /* 144CC 8019D444 18000224 */  addiu      $v0, $zero, 0x18
    /* 144D0 8019D448 1000A0AF */  sw         $zero, 0x10($sp)
    /* 144D4 8019D44C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 144D8 8019D450 1800A0AF */  sw         $zero, 0x18($sp)
    /* 144DC 8019D454 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 144E0 8019D458 2000B2AF */  sw         $s2, 0x20($sp)
    /* 144E4 8019D45C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 144E8 8019D460 2800A0AF */  sw         $zero, 0x28($sp)
    /* 144EC 8019D464 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 144F0 8019D468 3000B1AF */  sw         $s1, 0x30($sp)
    /* 144F4 8019D46C 3400B1AF */  sw         $s1, 0x34($sp)
    /* 144F8 8019D470 3800A0AF */  sw         $zero, 0x38($sp)
    /* 144FC 8019D474 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 14500 8019D478 ED4F060C */  jal        func_80193FB4
    /* 14504 8019D47C 4000B5AF */   sw        $s5, 0x40($sp)
    /* 14508 8019D480 2B000426 */  addiu      $a0, $s0, 0x2B
    /* 1450C 8019D484 41300526 */  addiu      $a1, $s0, 0x3041
    /* 14510 8019D488 21300000 */  addu       $a2, $zero, $zero
    /* 14514 8019D48C 21386002 */  addu       $a3, $s3, $zero
    /* 14518 8019D490 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1451C 8019D494 1400B7AF */  sw         $s7, 0x14($sp)
    /* 14520 8019D498 1800A0AF */  sw         $zero, 0x18($sp)
    /* 14524 8019D49C 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 14528 8019D4A0 2000B2AF */  sw         $s2, 0x20($sp)
    /* 1452C 8019D4A4 2400A0AF */  sw         $zero, 0x24($sp)
    /* 14530 8019D4A8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 14534 8019D4AC 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 14538 8019D4B0 3000B1AF */  sw         $s1, 0x30($sp)
    /* 1453C 8019D4B4 3400B1AF */  sw         $s1, 0x34($sp)
    /* 14540 8019D4B8 3800A0AF */  sw         $zero, 0x38($sp)
    /* 14544 8019D4BC 3C00B6AF */  sw         $s6, 0x3C($sp)
    /* 14548 8019D4C0 ED4F060C */  jal        func_80193FB4
    /* 1454C 8019D4C4 4000B5AF */   sw        $s5, 0x40($sp)
    /* 14550 8019D4C8 2E000426 */  addiu      $a0, $s0, 0x2E
    /* 14554 8019D4CC 40300524 */  addiu      $a1, $zero, 0x3040
    /* 14558 8019D4D0 21300000 */  addu       $a2, $zero, $zero
    /* 1455C 8019D4D4 21386002 */  addu       $a3, $s3, $zero
    /* 14560 8019D4D8 1000B4AF */  sw         $s4, 0x10($sp)
    /* 14564 8019D4DC 1400B7AF */  sw         $s7, 0x14($sp)
    /* 14568 8019D4E0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1456C 8019D4E4 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 14570 8019D4E8 2000B2AF */  sw         $s2, 0x20($sp)
    /* 14574 8019D4EC 2400A0AF */  sw         $zero, 0x24($sp)
    /* 14578 8019D4F0 2800A0AF */  sw         $zero, 0x28($sp)
    /* 1457C 8019D4F4 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 14580 8019D4F8 3000B1AF */  sw         $s1, 0x30($sp)
    /* 14584 8019D4FC 3400B1AF */  sw         $s1, 0x34($sp)
    /* 14588 8019D500 3800A0AF */  sw         $zero, 0x38($sp)
    /* 1458C 8019D504 3C00B6AF */  sw         $s6, 0x3C($sp)
    /* 14590 8019D508 ED4F060C */  jal        func_80193FB4
    /* 14594 8019D50C 4000B5AF */   sw        $s5, 0x40($sp)
    /* 14598 8019D510 01001026 */  addiu      $s0, $s0, 0x1
    /* 1459C 8019D514 0200022A */  slti       $v0, $s0, 0x2
    /* 145A0 8019D518 C6FF4014 */  bnez       $v0, .L8019D434
    /* 145A4 8019D51C 2C009426 */   addiu     $s4, $s4, 0x2C
    /* 145A8 8019D520 CB750608 */  j          .L8019D72C
    /* 145AC 8019D524 00000000 */   nop
  .L8019D528:
    /* 145B0 8019D528 21800000 */  addu       $s0, $zero, $zero
    /* 145B4 8019D52C 00101224 */  addiu      $s2, $zero, 0x1000
    /* 145B8 8019D530 80001124 */  addiu      $s1, $zero, 0x80
    /* 145BC 8019D534 01001524 */  addiu      $s5, $zero, 0x1
    /* 145C0 8019D538 19001724 */  addiu      $s7, $zero, 0x19
    /* 145C4 8019D53C 02001624 */  addiu      $s6, $zero, 0x2
    /* 145C8 8019D540 D8FF1424 */  addiu      $s4, $zero, -0x28
  .L8019D544:
    /* 145CC 8019D544 28000426 */  addiu      $a0, $s0, 0x28
    /* 145D0 8019D548 49300526 */  addiu      $a1, $s0, 0x3049
    /* 145D4 8019D54C 21300000 */  addu       $a2, $zero, $zero
    /* 145D8 8019D550 21386002 */  addu       $a3, $s3, $zero
    /* 145DC 8019D554 18000224 */  addiu      $v0, $zero, 0x18
    /* 145E0 8019D558 1000A0AF */  sw         $zero, 0x10($sp)
    /* 145E4 8019D55C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 145E8 8019D560 1800A0AF */  sw         $zero, 0x18($sp)
    /* 145EC 8019D564 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 145F0 8019D568 2000B2AF */  sw         $s2, 0x20($sp)
    /* 145F4 8019D56C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 145F8 8019D570 2800A0AF */  sw         $zero, 0x28($sp)
    /* 145FC 8019D574 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 14600 8019D578 3000B1AF */  sw         $s1, 0x30($sp)
    /* 14604 8019D57C 3400B1AF */  sw         $s1, 0x34($sp)
    /* 14608 8019D580 3800A0AF */  sw         $zero, 0x38($sp)
    /* 1460C 8019D584 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 14610 8019D588 ED4F060C */  jal        func_80193FB4
    /* 14614 8019D58C 4000B5AF */   sw        $s5, 0x40($sp)
    /* 14618 8019D590 2B000426 */  addiu      $a0, $s0, 0x2B
    /* 1461C 8019D594 43300526 */  addiu      $a1, $s0, 0x3043
    /* 14620 8019D598 21300000 */  addu       $a2, $zero, $zero
    /* 14624 8019D59C 21386002 */  addu       $a3, $s3, $zero
    /* 14628 8019D5A0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1462C 8019D5A4 1400B7AF */  sw         $s7, 0x14($sp)
    /* 14630 8019D5A8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 14634 8019D5AC 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 14638 8019D5B0 2000B2AF */  sw         $s2, 0x20($sp)
    /* 1463C 8019D5B4 2400A0AF */  sw         $zero, 0x24($sp)
    /* 14640 8019D5B8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 14644 8019D5BC 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 14648 8019D5C0 3000B1AF */  sw         $s1, 0x30($sp)
    /* 1464C 8019D5C4 3400B1AF */  sw         $s1, 0x34($sp)
    /* 14650 8019D5C8 3800A0AF */  sw         $zero, 0x38($sp)
    /* 14654 8019D5CC 3C00B6AF */  sw         $s6, 0x3C($sp)
    /* 14658 8019D5D0 ED4F060C */  jal        func_80193FB4
    /* 1465C 8019D5D4 4000B5AF */   sw        $s5, 0x40($sp)
    /* 14660 8019D5D8 2E000426 */  addiu      $a0, $s0, 0x2E
    /* 14664 8019D5DC 40300524 */  addiu      $a1, $zero, 0x3040
    /* 14668 8019D5E0 21300000 */  addu       $a2, $zero, $zero
    /* 1466C 8019D5E4 21386002 */  addu       $a3, $s3, $zero
    /* 14670 8019D5E8 1000B4AF */  sw         $s4, 0x10($sp)
    /* 14674 8019D5EC 1400B7AF */  sw         $s7, 0x14($sp)
    /* 14678 8019D5F0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1467C 8019D5F4 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 14680 8019D5F8 2000B2AF */  sw         $s2, 0x20($sp)
    /* 14684 8019D5FC 2400A0AF */  sw         $zero, 0x24($sp)
    /* 14688 8019D600 2800A0AF */  sw         $zero, 0x28($sp)
    /* 1468C 8019D604 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 14690 8019D608 3000B1AF */  sw         $s1, 0x30($sp)
    /* 14694 8019D60C 3400B1AF */  sw         $s1, 0x34($sp)
    /* 14698 8019D610 3800A0AF */  sw         $zero, 0x38($sp)
    /* 1469C 8019D614 3C00B6AF */  sw         $s6, 0x3C($sp)
    /* 146A0 8019D618 ED4F060C */  jal        func_80193FB4
    /* 146A4 8019D61C 4000B5AF */   sw        $s5, 0x40($sp)
    /* 146A8 8019D620 01001026 */  addiu      $s0, $s0, 0x1
    /* 146AC 8019D624 0300022A */  slti       $v0, $s0, 0x3
    /* 146B0 8019D628 C6FF4014 */  bnez       $v0, .L8019D544
    /* 146B4 8019D62C 22009426 */   addiu     $s4, $s4, 0x22
    /* 146B8 8019D630 CB750608 */  j          .L8019D72C
    /* 146BC 8019D634 00000000 */   nop
  .L8019D638:
    /* 146C0 8019D638 4C300524 */  addiu      $a1, $zero, 0x304C
    /* 146C4 8019D63C 21300000 */  addu       $a2, $zero, $zero
    /* 146C8 8019D640 08000724 */  addiu      $a3, $zero, 0x8
    /* 146CC 8019D644 CCFF0224 */  addiu      $v0, $zero, -0x34
    /* 146D0 8019D648 1000A2AF */  sw         $v0, 0x10($sp)
    /* 146D4 8019D64C 18000224 */  addiu      $v0, $zero, 0x18
    /* 146D8 8019D650 00101124 */  addiu      $s1, $zero, 0x1000
    /* 146DC 8019D654 80001024 */  addiu      $s0, $zero, 0x80
    /* 146E0 8019D658 01001224 */  addiu      $s2, $zero, 0x1
    /* 146E4 8019D65C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 146E8 8019D660 1800A0AF */  sw         $zero, 0x18($sp)
    /* 146EC 8019D664 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 146F0 8019D668 2000B1AF */  sw         $s1, 0x20($sp)
    /* 146F4 8019D66C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 146F8 8019D670 2800A0AF */  sw         $zero, 0x28($sp)
    /* 146FC 8019D674 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 14700 8019D678 3000B0AF */  sw         $s0, 0x30($sp)
    /* 14704 8019D67C 3400B0AF */  sw         $s0, 0x34($sp)
    /* 14708 8019D680 3800A0AF */  sw         $zero, 0x38($sp)
    /* 1470C 8019D684 3C00B2AF */  sw         $s2, 0x3C($sp)
    /* 14710 8019D688 ED4F060C */  jal        func_80193FB4
    /* 14714 8019D68C 4000B2AF */   sw        $s2, 0x40($sp)
    /* 14718 8019D690 2B000424 */  addiu      $a0, $zero, 0x2B
    /* 1471C 8019D694 46300524 */  addiu      $a1, $zero, 0x3046
    /* 14720 8019D698 21300000 */  addu       $a2, $zero, $zero
    /* 14724 8019D69C 04000724 */  addiu      $a3, $zero, 0x4
    /* 14728 8019D6A0 19001324 */  addiu      $s3, $zero, 0x19
    /* 1472C 8019D6A4 A0000224 */  addiu      $v0, $zero, 0xA0
    /* 14730 8019D6A8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 14734 8019D6AC 1400B3AF */  sw         $s3, 0x14($sp)
    /* 14738 8019D6B0 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1473C 8019D6B4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 14740 8019D6B8 2000B1AF */  sw         $s1, 0x20($sp)
    /* 14744 8019D6BC 2400A0AF */  sw         $zero, 0x24($sp)
    /* 14748 8019D6C0 2800A0AF */  sw         $zero, 0x28($sp)
    /* 1474C 8019D6C4 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 14750 8019D6C8 3000B0AF */  sw         $s0, 0x30($sp)
    /* 14754 8019D6CC 3400B0AF */  sw         $s0, 0x34($sp)
    /* 14758 8019D6D0 3800A0AF */  sw         $zero, 0x38($sp)
    /* 1475C 8019D6D4 3C00B4AF */  sw         $s4, 0x3C($sp)
    /* 14760 8019D6D8 ED4F060C */  jal        func_80193FB4
    /* 14764 8019D6DC 4000B2AF */   sw        $s2, 0x40($sp)
    /* 14768 8019D6E0 2E000424 */  addiu      $a0, $zero, 0x2E
    /* 1476C 8019D6E4 40300524 */  addiu      $a1, $zero, 0x3040
    /* 14770 8019D6E8 21300000 */  addu       $a2, $zero, $zero
    /* 14774 8019D6EC 08000724 */  addiu      $a3, $zero, 0x8
    /* 14778 8019D6F0 E8FF0224 */  addiu      $v0, $zero, -0x18
    /* 1477C 8019D6F4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 14780 8019D6F8 1400B3AF */  sw         $s3, 0x14($sp)
    /* 14784 8019D6FC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 14788 8019D700 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1478C 8019D704 2000B1AF */  sw         $s1, 0x20($sp)
    /* 14790 8019D708 2400A0AF */  sw         $zero, 0x24($sp)
    /* 14794 8019D70C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 14798 8019D710 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 1479C 8019D714 3000B0AF */  sw         $s0, 0x30($sp)
    /* 147A0 8019D718 3400B0AF */  sw         $s0, 0x34($sp)
    /* 147A4 8019D71C 3800A0AF */  sw         $zero, 0x38($sp)
    /* 147A8 8019D720 3C00B4AF */  sw         $s4, 0x3C($sp)
    /* 147AC 8019D724 ED4F060C */  jal        func_80193FB4
    /* 147B0 8019D728 4000B2AF */   sw        $s2, 0x40($sp)
  .L8019D72C:
    /* 147B4 8019D72C 6800BF8F */  lw         $ra, 0x68($sp)
    /* 147B8 8019D730 6400B78F */  lw         $s7, 0x64($sp)
    /* 147BC 8019D734 6000B68F */  lw         $s6, 0x60($sp)
    /* 147C0 8019D738 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 147C4 8019D73C 5800B48F */  lw         $s4, 0x58($sp)
    /* 147C8 8019D740 5400B38F */  lw         $s3, 0x54($sp)
    /* 147CC 8019D744 5000B28F */  lw         $s2, 0x50($sp)
    /* 147D0 8019D748 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 147D4 8019D74C 4800B08F */  lw         $s0, 0x48($sp)
    /* 147D8 8019D750 7000BD27 */  addiu      $sp, $sp, 0x70
    /* 147DC 8019D754 0800E003 */  jr         $ra
    /* 147E0 8019D758 00000000 */   nop
endlabel func_8019D23C
