nonmatching func_801C62E0, 0x854

glabel func_801C62E0
    /* 3D368 801C62E0 801F033C */  lui        $v1, (0x1F80029B >> 16)
    /* 3D36C 801C62E4 9B026390 */  lbu        $v1, (0x1F80029B & 0xFFFF)($v1)
    /* 3D370 801C62E8 88FFBD27 */  addiu      $sp, $sp, -0x78
    /* 3D374 801C62EC 5800B0AF */  sw         $s0, 0x58($sp)
    /* 3D378 801C62F0 801F103C */  lui        $s0, (0x1F80029B >> 16)
    /* 3D37C 801C62F4 6C00B5AF */  sw         $s5, 0x6C($sp)
    /* 3D380 801C62F8 1E80153C */  lui        $s5, %hi(D_801D8DA8)
    /* 3D384 801C62FC A88DB526 */  addiu      $s5, $s5, %lo(D_801D8DA8)
    /* 3D388 801C6300 6800B4AF */  sw         $s4, 0x68($sp)
    /* 3D38C 801C6304 02001424 */  addiu      $s4, $zero, 0x2
    /* 3D390 801C6308 7000BFAF */  sw         $ra, 0x70($sp)
    /* 3D394 801C630C 6400B3AF */  sw         $s3, 0x64($sp)
    /* 3D398 801C6310 6000B2AF */  sw         $s2, 0x60($sp)
    /* 3D39C 801C6314 E1007410 */  beq        $v1, $s4, .L801C669C
    /* 3D3A0 801C6318 5C00B1AF */   sw        $s1, 0x5C($sp)
    /* 3D3A4 801C631C 03006228 */  slti       $v0, $v1, 0x3
    /* 3D3A8 801C6320 07004010 */  beqz       $v0, .L801C6340
    /* 3D3AC 801C6324 00000000 */   nop
    /* 3D3B0 801C6328 13006010 */  beqz       $v1, .L801C6378
    /* 3D3B4 801C632C 01000224 */   addiu     $v0, $zero, 0x1
    /* 3D3B8 801C6330 D2006210 */  beq        $v1, $v0, .L801C667C
    /* 3D3BC 801C6334 00000000 */   nop
    /* 3D3C0 801C6338 C31A0708 */  j          .L801C6B0C
    /* 3D3C4 801C633C 00000000 */   nop
  .L801C6340:
    /* 3D3C8 801C6340 0A000224 */  addiu      $v0, $zero, 0xA
    /* 3D3CC 801C6344 C5016210 */  beq        $v1, $v0, .L801C6A5C
    /* 3D3D0 801C6348 0B006228 */   slti      $v0, $v1, 0xB
    /* 3D3D4 801C634C 05004010 */  beqz       $v0, .L801C6364
    /* 3D3D8 801C6350 03000224 */   addiu     $v0, $zero, 0x3
    /* 3D3DC 801C6354 7D016210 */  beq        $v1, $v0, .L801C694C
    /* 3D3E0 801C6358 00000000 */   nop
    /* 3D3E4 801C635C C31A0708 */  j          .L801C6B0C
    /* 3D3E8 801C6360 00000000 */   nop
  .L801C6364:
    /* 3D3EC 801C6364 63000224 */  addiu      $v0, $zero, 0x63
    /* 3D3F0 801C6368 DA016210 */  beq        $v1, $v0, .L801C6AD4
    /* 3D3F4 801C636C 40000424 */   addiu     $a0, $zero, 0x40
    /* 3D3F8 801C6370 C31A0708 */  j          .L801C6B0C
    /* 3D3FC 801C6374 00000000 */   nop
  .L801C6378:
    /* 3D400 801C6378 01001024 */  addiu      $s0, $zero, 0x1
    /* 3D404 801C637C 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 3D408 801C6380 38D66394 */  lhu        $v1, %lo(D_800AD638)($v1)
    /* 3D40C 801C6384 01000224 */  addiu      $v0, $zero, 0x1
    /* 3D410 801C6388 1E80013C */  lui        $at, %hi(D_801DA5D4)
    /* 3D414 801C638C D4A522A4 */  sh         $v0, %lo(D_801DA5D4)($at)
    /* 3D418 801C6390 0B000224 */  addiu      $v0, $zero, 0xB
    /* 3D41C 801C6394 1E80013C */  lui        $at, %hi(D_801DA5D6)
    /* 3D420 801C6398 D6A522A4 */  sh         $v0, %lo(D_801DA5D6)($at)
    /* 3D424 801C639C 81000224 */  addiu      $v0, $zero, 0x81
    /* 3D428 801C63A0 1E80013C */  lui        $at, %hi(D_801D8B17)
    /* 3D42C 801C63A4 178B20A0 */  sb         $zero, %lo(D_801D8B17)($at)
    /* 3D430 801C63A8 1E80013C */  lui        $at, %hi(D_801DA5C8)
    /* 3D434 801C63AC C8A530A0 */  sb         $s0, %lo(D_801DA5C8)($at)
    /* 3D438 801C63B0 1E80013C */  lui        $at, %hi(D_801DA06B)
    /* 3D43C 801C63B4 6BA020A0 */  sb         $zero, %lo(D_801DA06B)($at)
    /* 3D440 801C63B8 1E80013C */  lui        $at, %hi(D_801DA069)
    /* 3D444 801C63BC 69A020A0 */  sb         $zero, %lo(D_801DA069)($at)
    /* 3D448 801C63C0 1E80013C */  lui        $at, %hi(D_801DA06A)
    /* 3D44C 801C63C4 6AA020A0 */  sb         $zero, %lo(D_801DA06A)($at)
    /* 3D450 801C63C8 1E80013C */  lui        $at, %hi(D_801DA068)
    /* 3D454 801C63CC 68A020A0 */  sb         $zero, %lo(D_801DA068)($at)
    /* 3D458 801C63D0 1E80013C */  lui        $at, %hi(D_801DA5D0)
    /* 3D45C 801C63D4 D0A520A4 */  sh         $zero, %lo(D_801DA5D0)($at)
    /* 3D460 801C63D8 1E80013C */  lui        $at, %hi(D_801DA5D2)
    /* 3D464 801C63DC D2A520A4 */  sh         $zero, %lo(D_801DA5D2)($at)
    /* 3D468 801C63E0 801F013C */  lui        $at, (0x1F800330 >> 16)
    /* 3D46C 801C63E4 300330A0 */  sb         $s0, (0x1F800330 & 0xFFFF)($at)
    /* 3D470 801C63E8 801F013C */  lui        $at, (0x1F8002A2 >> 16)
    /* 3D474 801C63EC A20222A0 */  sb         $v0, (0x1F8002A2 & 0xFFFF)($at)
    /* 3D478 801C63F0 801F013C */  lui        $at, (0x1F8001EC >> 16)
    /* 3D47C 801C63F4 EC0120A0 */  sb         $zero, (0x1F8001EC & 0xFFFF)($at)
    /* 3D480 801C63F8 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 3D484 801C63FC 38D620A4 */  sh         $zero, %lo(D_800AD638)($at)
    /* 3D488 801C6400 1E80013C */  lui        $at, %hi(D_801D8B15)
    /* 3D48C 801C6404 158B20A0 */  sb         $zero, %lo(D_801D8B15)($at)
    /* 3D490 801C6408 1E80013C */  lui        $at, %hi(D_801DA060)
    /* 3D494 801C640C 60A020AC */  sw         $zero, %lo(D_801DA060)($at)
    /* 3D498 801C6410 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 3D49C 801C6414 58A020AC */  sw         $zero, %lo(D_801DA058)($at)
    /* 3D4A0 801C6418 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 3D4A4 801C641C A4A520A4 */  sh         $zero, %lo(D_8010A5A4)($at)
    /* 3D4A8 801C6420 1E80013C */  lui        $at, %hi(D_801DA064)
    /* 3D4AC 801C6424 64A023AC */  sw         $v1, %lo(D_801DA064)($at)
    /* 3D4B0 801C6428 3E26070C */  jal        func_801C98F8
    /* 3D4B4 801C642C 01000424 */   addiu     $a0, $zero, 0x1
    /* 3D4B8 801C6430 1458020C */  jal        func_80096050
    /* 3D4BC 801C6434 16001124 */   addiu     $s1, $zero, 0x16
    /* 3D4C0 801C6438 2771010C */  jal        func_8005C49C
    /* 3D4C4 801C643C 00101224 */   addiu     $s2, $zero, 0x1000
    /* 3D4C8 801C6440 05000424 */  addiu      $a0, $zero, 0x5
    /* 3D4CC 801C6444 01900534 */  ori        $a1, $zero, 0x9001
    /* 3D4D0 801C6448 21300000 */  addu       $a2, $zero, $zero
    /* 3D4D4 801C644C 21380000 */  addu       $a3, $zero, $zero
    /* 3D4D8 801C6450 CCFE0224 */  addiu      $v0, $zero, -0x134
    /* 3D4DC 801C6454 1180013C */  lui        $at, %hi(D_8010A370)
    /* 3D4E0 801C6458 70A322A4 */  sh         $v0, %lo(D_8010A370)($at)
    /* 3D4E4 801C645C 3CFF0224 */  addiu      $v0, $zero, -0xC4
    /* 3D4E8 801C6460 1180013C */  lui        $at, %hi(D_8010A374)
    /* 3D4EC 801C6464 74A322A4 */  sh         $v0, %lo(D_8010A374)($at)
    /* 3D4F0 801C6468 6C070224 */  addiu      $v0, $zero, 0x76C
    /* 3D4F4 801C646C 1180013C */  lui        $at, %hi(D_8010A378)
    /* 3D4F8 801C6470 78A322A4 */  sh         $v0, %lo(D_8010A378)($at)
    /* 3D4FC 801C6474 00100224 */  addiu      $v0, $zero, 0x1000
    /* 3D500 801C6478 1180013C */  lui        $at, %hi(D_8010A368)
    /* 3D504 801C647C 68A330A0 */  sb         $s0, %lo(D_8010A368)($at)
    /* 3D508 801C6480 80001024 */  addiu      $s0, $zero, 0x80
    /* 3D50C 801C6484 01001324 */  addiu      $s3, $zero, 0x1
    /* 3D510 801C6488 1180013C */  lui        $at, %hi(D_8010A380)
    /* 3D514 801C648C 80A320A4 */  sh         $zero, %lo(D_8010A380)($at)
    /* 3D518 801C6490 1180013C */  lui        $at, %hi(D_8010A37E)
    /* 3D51C 801C6494 7EA320A4 */  sh         $zero, %lo(D_8010A37E)($at)
    /* 3D520 801C6498 1180013C */  lui        $at, %hi(D_8010A37C)
    /* 3D524 801C649C 7CA320A4 */  sh         $zero, %lo(D_8010A37C)($at)
    /* 3D528 801C64A0 1180013C */  lui        $at, %hi(D_8010A38C)
    /* 3D52C 801C64A4 8CA322A4 */  sh         $v0, %lo(D_8010A38C)($at)
    /* 3D530 801C64A8 1180013C */  lui        $at, %hi(D_8010A369)
    /* 3D534 801C64AC 69A320A0 */  sb         $zero, %lo(D_8010A369)($at)
    /* 3D538 801C64B0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3D53C 801C64B4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3D540 801C64B8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3D544 801C64BC 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 3D548 801C64C0 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3D54C 801C64C4 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3D550 801C64C8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3D554 801C64CC 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 3D558 801C64D0 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3D55C 801C64D4 3400B0AF */  sw         $s0, 0x34($sp)
    /* 3D560 801C64D8 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3D564 801C64DC 3C00B4AF */  sw         $s4, 0x3C($sp)
    /* 3D568 801C64E0 ED4F060C */  jal        func_80193FB4
    /* 3D56C 801C64E4 4000B3AF */   sw        $s3, 0x40($sp)
    /* 3D570 801C64E8 06000424 */  addiu      $a0, $zero, 0x6
    /* 3D574 801C64EC 02900534 */  ori        $a1, $zero, 0x9002
    /* 3D578 801C64F0 21300000 */  addu       $a2, $zero, $zero
    /* 3D57C 801C64F4 21380000 */  addu       $a3, $zero, $zero
    /* 3D580 801C64F8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3D584 801C64FC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3D588 801C6500 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3D58C 801C6504 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 3D590 801C6508 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3D594 801C650C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3D598 801C6510 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3D59C 801C6514 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 3D5A0 801C6518 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3D5A4 801C651C 3400B0AF */  sw         $s0, 0x34($sp)
    /* 3D5A8 801C6520 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3D5AC 801C6524 3C00B4AF */  sw         $s4, 0x3C($sp)
    /* 3D5B0 801C6528 ED4F060C */  jal        func_80193FB4
    /* 3D5B4 801C652C 4000B3AF */   sw        $s3, 0x40($sp)
    /* 3D5B8 801C6530 21200000 */  addu       $a0, $zero, $zero
    /* 3D5BC 801C6534 2F22070C */  jal        func_801C88BC
    /* 3D5C0 801C6538 21280000 */   addu      $a1, $zero, $zero
    /* 3D5C4 801C653C 02000424 */  addiu      $a0, $zero, 0x2
    /* 3D5C8 801C6540 0040053C */  lui        $a1, (0x40000000 >> 16)
    /* 3D5CC 801C6544 2130A002 */  addu       $a2, $s5, $zero
    /* 3D5D0 801C6548 21380000 */  addu       $a3, $zero, $zero
    /* 3D5D4 801C654C BDFF0224 */  addiu      $v0, $zero, -0x43
    /* 3D5D8 801C6550 0000A2A6 */  sh         $v0, 0x0($s5)
    /* 3D5DC 801C6554 B9FF0224 */  addiu      $v0, $zero, -0x47
    /* 3D5E0 801C6558 1E80013C */  lui        $at, %hi(D_801D8DAA)
    /* 3D5E4 801C655C AA8D22A4 */  sh         $v0, %lo(D_801D8DAA)($at)
    /* 3D5E8 801C6560 E9000224 */  addiu      $v0, $zero, 0xE9
    /* 3D5EC 801C6564 1E80013C */  lui        $at, %hi(D_801D8DAC)
    /* 3D5F0 801C6568 AC8D22A4 */  sh         $v0, %lo(D_801D8DAC)($at)
    /* 3D5F4 801C656C 7B000224 */  addiu      $v0, $zero, 0x7B
    /* 3D5F8 801C6570 05001124 */  addiu      $s1, $zero, 0x5
    /* 3D5FC 801C6574 1E80013C */  lui        $at, %hi(D_801D8DAE)
    /* 3D600 801C6578 AE8D22A4 */  sh         $v0, %lo(D_801D8DAE)($at)
    /* 3D604 801C657C 1E80013C */  lui        $at, %hi(D_801D8DB2)
    /* 3D608 801C6580 B28D20A0 */  sb         $zero, %lo(D_801D8DB2)($at)
    /* 3D60C 801C6584 1E80013C */  lui        $at, %hi(D_801D8DB1)
    /* 3D610 801C6588 B18D20A0 */  sb         $zero, %lo(D_801D8DB1)($at)
    /* 3D614 801C658C 1E80013C */  lui        $at, %hi(D_801D8DB0)
    /* 3D618 801C6590 B08D20A0 */  sb         $zero, %lo(D_801D8DB0)($at)
    /* 3D61C 801C6594 1E80013C */  lui        $at, %hi(D_801D8DB5)
    /* 3D620 801C6598 B58D20A0 */  sb         $zero, %lo(D_801D8DB5)($at)
    /* 3D624 801C659C 1E80013C */  lui        $at, %hi(D_801D8DB4)
    /* 3D628 801C65A0 B48D20A0 */  sb         $zero, %lo(D_801D8DB4)($at)
    /* 3D62C 801C65A4 1E80013C */  lui        $at, %hi(D_801D8DB3)
    /* 3D630 801C65A8 B38D20A0 */  sb         $zero, %lo(D_801D8DB3)($at)
    /* 3D634 801C65AC 1E80013C */  lui        $at, %hi(D_801D8DB8)
    /* 3D638 801C65B0 B88D20A0 */  sb         $zero, %lo(D_801D8DB8)($at)
    /* 3D63C 801C65B4 1E80013C */  lui        $at, %hi(D_801D8DB7)
    /* 3D640 801C65B8 B78D20A0 */  sb         $zero, %lo(D_801D8DB7)($at)
    /* 3D644 801C65BC 1E80013C */  lui        $at, %hi(D_801D8DB6)
    /* 3D648 801C65C0 B68D20A0 */  sb         $zero, %lo(D_801D8DB6)($at)
    /* 3D64C 801C65C4 1E80013C */  lui        $at, %hi(D_801D8DBB)
    /* 3D650 801C65C8 BB8D20A0 */  sb         $zero, %lo(D_801D8DBB)($at)
    /* 3D654 801C65CC 1E80013C */  lui        $at, %hi(D_801D8DBA)
    /* 3D658 801C65D0 BA8D20A0 */  sb         $zero, %lo(D_801D8DBA)($at)
    /* 3D65C 801C65D4 1E80013C */  lui        $at, %hi(D_801D8DB9)
    /* 3D660 801C65D8 B98D20A0 */  sb         $zero, %lo(D_801D8DB9)($at)
    /* 3D664 801C65DC 1000B1AF */  sw         $s1, 0x10($sp)
    /* 3D668 801C65E0 3B50060C */  jal        func_801940EC
    /* 3D66C 801C65E4 1400B3AF */   sw        $s3, 0x14($sp)
    /* 3D670 801C65E8 01000424 */  addiu      $a0, $zero, 0x1
    /* 3D674 801C65EC 0040053C */  lui        $a1, (0x40000000 >> 16)
    /* 3D678 801C65F0 2130A002 */  addu       $a2, $s5, $zero
    /* 3D67C 801C65F4 21380000 */  addu       $a3, $zero, $zero
    /* 3D680 801C65F8 3D000224 */  addiu      $v0, $zero, 0x3D
    /* 3D684 801C65FC 1E80013C */  lui        $at, %hi(D_801D8DAA)
    /* 3D688 801C6600 AA8D22A4 */  sh         $v0, %lo(D_801D8DAA)($at)
    /* 3D68C 801C6604 28000224 */  addiu      $v0, $zero, 0x28
    /* 3D690 801C6608 1E80013C */  lui        $at, %hi(D_801D8DAE)
    /* 3D694 801C660C AE8D22A4 */  sh         $v0, %lo(D_801D8DAE)($at)
    /* 3D698 801C6610 1000B1AF */  sw         $s1, 0x10($sp)
    /* 3D69C 801C6614 3B50060C */  jal        func_801940EC
    /* 3D6A0 801C6618 1400B3AF */   sw        $s3, 0x14($sp)
    /* 3D6A4 801C661C 0C000424 */  addiu      $a0, $zero, 0xC
    /* 3D6A8 801C6620 04900534 */  ori        $a1, $zero, 0x9004
    /* 3D6AC 801C6624 21300000 */  addu       $a2, $zero, $zero
    /* 3D6B0 801C6628 21380000 */  addu       $a3, $zero, $zero
    /* 3D6B4 801C662C 09000224 */  addiu      $v0, $zero, 0x9
    /* 3D6B8 801C6630 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3D6BC 801C6634 06000224 */  addiu      $v0, $zero, 0x6
    /* 3D6C0 801C6638 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3D6C4 801C663C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3D6C8 801C6640 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* 3D6CC 801C6644 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3D6D0 801C6648 2400A0AF */  sw         $zero, 0x24($sp)
    /* 3D6D4 801C664C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3D6D8 801C6650 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 3D6DC 801C6654 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3D6E0 801C6658 3400B0AF */  sw         $s0, 0x34($sp)
    /* 3D6E4 801C665C 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3D6E8 801C6660 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 3D6EC 801C6664 ED4F060C */  jal        func_80193FB4
    /* 3D6F0 801C6668 4000B3AF */   sw        $s3, 0x40($sp)
    /* 3D6F4 801C666C 775C000C */  jal        func_800171DC
    /* 3D6F8 801C6670 00000000 */   nop
    /* 3D6FC 801C6674 C31A0708 */  j          .L801C6B0C
    /* 3D700 801C6678 00000000 */   nop
  .L801C667C:
    /* 3D704 801C667C 1FBC010C */  jal        func_8006F07C
    /* 3D708 801C6680 40000424 */   addiu     $a0, $zero, 0x40
    /* 3D70C 801C6684 21014010 */  beqz       $v0, .L801C6B0C
    /* 3D710 801C6688 00000000 */   nop
    /* 3D714 801C668C 775C000C */  jal        func_800171DC
    /* 3D718 801C6690 00000000 */   nop
    /* 3D71C 801C6694 C31A0708 */  j          .L801C6B0C
    /* 3D720 801C6698 00000000 */   nop
  .L801C669C:
    /* 3D724 801C669C 98BB010C */  jal        func_8006EE60
    /* 3D728 801C66A0 21200000 */   addu      $a0, $zero, $zero
    /* 3D72C 801C66A4 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 3D730 801C66A8 A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 3D734 801C66AC FFFF4330 */  andi       $v1, $v0, 0xFFFF
    /* 3D738 801C66B0 20000224 */  addiu      $v0, $zero, 0x20
    /* 3D73C 801C66B4 96006210 */  beq        $v1, $v0, .L801C6910
    /* 3D740 801C66B8 21006228 */   slti      $v0, $v1, 0x21
    /* 3D744 801C66BC 10004010 */  beqz       $v0, .L801C6700
    /* 3D748 801C66C0 00000000 */   nop
    /* 3D74C 801C66C4 24007410 */  beq        $v1, $s4, .L801C6758
    /* 3D750 801C66C8 03006228 */   slti      $v0, $v1, 0x3
    /* 3D754 801C66CC 05004010 */  beqz       $v0, .L801C66E4
    /* 3D758 801C66D0 01000224 */   addiu     $v0, $zero, 0x1
    /* 3D75C 801C66D4 1C006210 */  beq        $v1, $v0, .L801C6748
    /* 3D760 801C66D8 00000000 */   nop
    /* 3D764 801C66DC 4F1A0708 */  j          .L801C693C
    /* 3D768 801C66E0 00000000 */   nop
  .L801C66E4:
    /* 3D76C 801C66E4 04000224 */  addiu      $v0, $zero, 0x4
    /* 3D770 801C66E8 23006210 */  beq        $v1, $v0, .L801C6778
    /* 3D774 801C66EC 08000224 */   addiu     $v0, $zero, 0x8
    /* 3D778 801C66F0 1D006210 */  beq        $v1, $v0, .L801C6768
    /* 3D77C 801C66F4 00000000 */   nop
    /* 3D780 801C66F8 4F1A0708 */  j          .L801C693C
    /* 3D784 801C66FC 00000000 */   nop
  .L801C6700:
    /* 3D788 801C6700 00200224 */  addiu      $v0, $zero, 0x2000
    /* 3D78C 801C6704 61006210 */  beq        $v1, $v0, .L801C688C
    /* 3D790 801C6708 01206228 */   slti      $v0, $v1, 0x2001
    /* 3D794 801C670C 07004010 */  beqz       $v0, .L801C672C
    /* 3D798 801C6710 40000224 */   addiu     $v0, $zero, 0x40
    /* 3D79C 801C6714 84006210 */  beq        $v1, $v0, .L801C6928
    /* 3D7A0 801C6718 00100224 */   addiu     $v0, $zero, 0x1000
    /* 3D7A4 801C671C 20006210 */  beq        $v1, $v0, .L801C67A0
    /* 3D7A8 801C6720 00000000 */   nop
    /* 3D7AC 801C6724 4F1A0708 */  j          .L801C693C
    /* 3D7B0 801C6728 00000000 */   nop
  .L801C672C:
    /* 3D7B4 801C672C 00400224 */  addiu      $v0, $zero, 0x4000
    /* 3D7B8 801C6730 34006210 */  beq        $v1, $v0, .L801C6804
    /* 3D7BC 801C6734 00800234 */   ori       $v0, $zero, 0x8000
    /* 3D7C0 801C6738 66006210 */  beq        $v1, $v0, .L801C68D4
    /* 3D7C4 801C673C 00000000 */   nop
    /* 3D7C8 801C6740 4F1A0708 */  j          .L801C693C
    /* 3D7CC 801C6744 00000000 */   nop
  .L801C6748:
    /* 3D7D0 801C6748 801F023C */  lui        $v0, (0x1F80029B >> 16)
    /* 3D7D4 801C674C 9B024290 */  lbu        $v0, (0x1F80029B & 0xFFFF)($v0)
    /* 3D7D8 801C6750 E1190708 */  j          .L801C6784
    /* 3D7DC 801C6754 F6FF0324 */   addiu     $v1, $zero, -0xA
  .L801C6758:
    /* 3D7E0 801C6758 801F023C */  lui        $v0, (0x1F80029B >> 16)
    /* 3D7E4 801C675C 9B024290 */  lbu        $v0, (0x1F80029B & 0xFFFF)($v0)
    /* 3D7E8 801C6760 E1190708 */  j          .L801C6784
    /* 3D7EC 801C6764 0A000324 */   addiu     $v1, $zero, 0xA
  .L801C6768:
    /* 3D7F0 801C6768 801F023C */  lui        $v0, (0x1F80029B >> 16)
    /* 3D7F4 801C676C 9B024290 */  lbu        $v0, (0x1F80029B & 0xFFFF)($v0)
    /* 3D7F8 801C6770 E1190708 */  j          .L801C6784
    /* 3D7FC 801C6774 01000324 */   addiu     $v1, $zero, 0x1
  .L801C6778:
    /* 3D800 801C6778 801F023C */  lui        $v0, (0x1F80029B >> 16)
    /* 3D804 801C677C 9B024290 */  lbu        $v0, (0x1F80029B & 0xFFFF)($v0)
    /* 3D808 801C6780 FFFF0324 */  addiu      $v1, $zero, -0x1
  .L801C6784:
    /* 3D80C 801C6784 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 3D810 801C6788 58A023AC */  sw         $v1, %lo(D_801DA058)($at)
    /* 3D814 801C678C 01004224 */  addiu      $v0, $v0, 0x1
    /* 3D818 801C6790 801F013C */  lui        $at, (0x1F80029B >> 16)
    /* 3D81C 801C6794 9B0222A0 */  sb         $v0, (0x1F80029B & 0xFFFF)($at)
    /* 3D820 801C6798 4F1A0708 */  j          .L801C693C
    /* 3D824 801C679C 00000000 */   nop
  .L801C67A0:
    /* 3D828 801C67A0 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 3D82C 801C67A4 38D66394 */  lhu        $v1, %lo(D_800AD638)($v1)
    /* 3D830 801C67A8 00000000 */  nop
    /* 3D834 801C67AC 08006010 */  beqz       $v1, .L801C67D0
    /* 3D838 801C67B0 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 3D83C 801C67B4 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 3D840 801C67B8 1E80023C */  lui        $v0, %hi(D_801D8B15)
    /* 3D844 801C67BC 158B4290 */  lbu        $v0, %lo(D_801D8B15)($v0)
    /* 3D848 801C67C0 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 3D84C 801C67C4 38D623A4 */  sh         $v1, %lo(D_800AD638)($at)
    /* 3D850 801C67C8 1D1A0708 */  j          .L801C6874
    /* 3D854 801C67CC FFFF4224 */   addiu     $v0, $v0, -0x1
  .L801C67D0:
    /* 3D858 801C67D0 1E80053C */  lui        $a1, %hi(D_801DA5D2)
    /* 3D85C 801C67D4 D2A5A524 */  addiu      $a1, $a1, %lo(D_801DA5D2)
    /* 3D860 801C67D8 0000A284 */  lh         $v0, 0x0($a1)
    /* 3D864 801C67DC 00000000 */  nop
    /* 3D868 801C67E0 56004010 */  beqz       $v0, .L801C693C
    /* 3D86C 801C67E4 21184000 */   addu      $v1, $v0, $zero
    /* 3D870 801C67E8 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 3D874 801C67EC 1E80023C */  lui        $v0, %hi(D_801D8B15)
    /* 3D878 801C67F0 158B4290 */  lbu        $v0, %lo(D_801D8B15)($v0)
    /* 3D87C 801C67F4 0D050424 */  addiu      $a0, $zero, 0x50D
    /* 3D880 801C67F8 0000A3A4 */  sh         $v1, 0x0($a1)
    /* 3D884 801C67FC 1D1A0708 */  j          .L801C6874
    /* 3D888 801C6800 FFFF4224 */   addiu     $v0, $v0, -0x1
  .L801C6804:
    /* 3D88C 801C6804 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 3D890 801C6808 38D66394 */  lhu        $v1, %lo(D_800AD638)($v1)
    /* 3D894 801C680C 00000000 */  nop
    /* 3D898 801C6810 0A00622C */  sltiu      $v0, $v1, 0xA
    /* 3D89C 801C6814 07004010 */  beqz       $v0, .L801C6834
    /* 3D8A0 801C6818 01006324 */   addiu     $v1, $v1, 0x1
    /* 3D8A4 801C681C 1E80023C */  lui        $v0, %hi(D_801D8B15)
    /* 3D8A8 801C6820 158B4290 */  lbu        $v0, %lo(D_801D8B15)($v0)
    /* 3D8AC 801C6824 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 3D8B0 801C6828 38D623A4 */  sh         $v1, %lo(D_800AD638)($at)
    /* 3D8B4 801C682C 1C1A0708 */  j          .L801C6870
    /* 3D8B8 801C6830 0D050424 */   addiu     $a0, $zero, 0x50D
  .L801C6834:
    /* 3D8BC 801C6834 1E80063C */  lui        $a2, %hi(D_801DA5D2)
    /* 3D8C0 801C6838 D2A5C624 */  addiu      $a2, $a2, %lo(D_801DA5D2)
    /* 3D8C4 801C683C 16000324 */  addiu      $v1, $zero, 0x16
    /* 3D8C8 801C6840 0000C284 */  lh         $v0, 0x0($a2)
    /* 3D8CC 801C6844 1E80043C */  lui        $a0, %hi(D_801DA5D6)
    /* 3D8D0 801C6848 D6A58484 */  lh         $a0, %lo(D_801DA5D6)($a0)
    /* 3D8D4 801C684C 21284000 */  addu       $a1, $v0, $zero
    /* 3D8D8 801C6850 23186400 */  subu       $v1, $v1, $a0
    /* 3D8DC 801C6854 2A104300 */  slt        $v0, $v0, $v1
    /* 3D8E0 801C6858 38004010 */  beqz       $v0, .L801C693C
    /* 3D8E4 801C685C 0100A324 */   addiu     $v1, $a1, 0x1
    /* 3D8E8 801C6860 1E80023C */  lui        $v0, %hi(D_801D8B15)
    /* 3D8EC 801C6864 158B4290 */  lbu        $v0, %lo(D_801D8B15)($v0)
    /* 3D8F0 801C6868 0D050424 */  addiu      $a0, $zero, 0x50D
    /* 3D8F4 801C686C 0000C3A4 */  sh         $v1, 0x0($a2)
  .L801C6870:
    /* 3D8F8 801C6870 01004224 */  addiu      $v0, $v0, 0x1
  .L801C6874:
    /* 3D8FC 801C6874 1E80013C */  lui        $at, %hi(D_801D8B15)
    /* 3D900 801C6878 158B22A0 */  sb         $v0, %lo(D_801D8B15)($at)
    /* 3D904 801C687C 88AD020C */  jal        func_800AB620
    /* 3D908 801C6880 00000000 */   nop
    /* 3D90C 801C6884 4F1A0708 */  j          .L801C693C
    /* 3D910 801C6888 00000000 */   nop
  .L801C688C:
    /* 3D914 801C688C 1E80023C */  lui        $v0, %hi(D_801D8B15)
    /* 3D918 801C6890 158B4290 */  lbu        $v0, %lo(D_801D8B15)($v0)
    /* 3D91C 801C6894 00000000 */  nop
    /* 3D920 801C6898 0B00422C */  sltiu      $v0, $v0, 0xB
    /* 3D924 801C689C 27004010 */  beqz       $v0, .L801C693C
    /* 3D928 801C68A0 0A000224 */   addiu     $v0, $zero, 0xA
    /* 3D92C 801C68A4 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 3D930 801C68A8 38D622A4 */  sh         $v0, %lo(D_800AD638)($at)
    /* 3D934 801C68AC 15000224 */  addiu      $v0, $zero, 0x15
    /* 3D938 801C68B0 1E80013C */  lui        $at, %hi(D_801D8B15)
    /* 3D93C 801C68B4 158B22A0 */  sb         $v0, %lo(D_801D8B15)($at)
    /* 3D940 801C68B8 0B000224 */  addiu      $v0, $zero, 0xB
    /* 3D944 801C68BC 1E80013C */  lui        $at, %hi(D_801DA5D2)
    /* 3D948 801C68C0 D2A522A4 */  sh         $v0, %lo(D_801DA5D2)($at)
    /* 3D94C 801C68C4 88AD020C */  jal        func_800AB620
    /* 3D950 801C68C8 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 3D954 801C68CC 4F1A0708 */  j          .L801C693C
    /* 3D958 801C68D0 00000000 */   nop
  .L801C68D4:
    /* 3D95C 801C68D4 1E80033C */  lui        $v1, %hi(D_801DA5D2)
    /* 3D960 801C68D8 D2A56324 */  addiu      $v1, $v1, %lo(D_801DA5D2)
    /* 3D964 801C68DC 00006284 */  lh         $v0, 0x0($v1)
    /* 3D968 801C68E0 00000000 */  nop
    /* 3D96C 801C68E4 15004010 */  beqz       $v0, .L801C693C
    /* 3D970 801C68E8 00000000 */   nop
    /* 3D974 801C68EC 000060A4 */  sh         $zero, 0x0($v1)
    /* 3D978 801C68F0 1E80013C */  lui        $at, %hi(D_801D8B15)
    /* 3D97C 801C68F4 158B20A0 */  sb         $zero, %lo(D_801D8B15)($at)
    /* 3D980 801C68F8 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 3D984 801C68FC 38D620A4 */  sh         $zero, %lo(D_800AD638)($at)
    /* 3D988 801C6900 88AD020C */  jal        func_800AB620
    /* 3D98C 801C6904 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 3D990 801C6908 4F1A0708 */  j          .L801C693C
    /* 3D994 801C690C 00000000 */   nop
  .L801C6910:
    /* 3D998 801C6910 88AD020C */  jal        func_800AB620
    /* 3D99C 801C6914 28050424 */   addiu     $a0, $zero, 0x528
    /* 3D9A0 801C6918 1180013C */  lui        $at, %hi(D_8010A322)
    /* 3D9A4 801C691C 22A320A0 */  sb         $zero, %lo(D_8010A322)($at)
    /* 3D9A8 801C6920 4D1A0708 */  j          .L801C6934
    /* 3D9AC 801C6924 0A000424 */   addiu     $a0, $zero, 0xA
  .L801C6928:
    /* 3D9B0 801C6928 88AD020C */  jal        func_800AB620
    /* 3D9B4 801C692C 29050424 */   addiu     $a0, $zero, 0x529
    /* 3D9B8 801C6930 63000424 */  addiu      $a0, $zero, 0x63
  .L801C6934:
    /* 3D9BC 801C6934 7F5C000C */  jal        func_800171FC
    /* 3D9C0 801C6938 00000000 */   nop
  .L801C693C:
    /* 3D9C4 801C693C 3A21070C */  jal        func_801C84E8
    /* 3D9C8 801C6940 00000000 */   nop
    /* 3D9CC 801C6944 C31A0708 */  j          .L801C6B0C
    /* 3D9D0 801C6948 00000000 */   nop
  .L801C694C:
    /* 3D9D4 801C694C 1E80023C */  lui        $v0, %hi(D_801DA330)
    /* 3D9D8 801C6950 30A34290 */  lbu        $v0, %lo(D_801DA330)($v0)
    /* 3D9DC 801C6954 00000000 */  nop
    /* 3D9E0 801C6958 0A004014 */  bnez       $v0, .L801C6984
    /* 3D9E4 801C695C 2700422C */   sltiu     $v0, $v0, 0x27
    /* 3D9E8 801C6960 1E80023C */  lui        $v0, %hi(D_801DA058)
    /* 3D9EC 801C6964 58A0428C */  lw         $v0, %lo(D_801DA058)($v0)
    /* 3D9F0 801C6968 00000000 */  nop
    /* 3D9F4 801C696C 17004004 */  bltz       $v0, .L801C69CC
    /* 3D9F8 801C6970 27000224 */   addiu     $v0, $zero, 0x27
    /* 3D9FC 801C6974 1E80023C */  lui        $v0, %hi(D_801DA330)
    /* 3DA00 801C6978 30A34290 */  lbu        $v0, %lo(D_801DA330)($v0)
    /* 3DA04 801C697C 00000000 */  nop
    /* 3DA08 801C6980 2700422C */  sltiu      $v0, $v0, 0x27
  .L801C6984:
    /* 3DA0C 801C6984 0A004014 */  bnez       $v0, .L801C69B0
    /* 3DA10 801C6988 00000000 */   nop
    /* 3DA14 801C698C 1E80023C */  lui        $v0, %hi(D_801DA058)
    /* 3DA18 801C6990 58A0428C */  lw         $v0, %lo(D_801DA058)($v0)
    /* 3DA1C 801C6994 00000000 */  nop
    /* 3DA20 801C6998 07004018 */  blez       $v0, .L801C69B8
    /* 3DA24 801C699C 00000000 */   nop
    /* 3DA28 801C69A0 1E80013C */  lui        $at, %hi(D_801DA330)
    /* 3DA2C 801C69A4 30A320A0 */  sb         $zero, %lo(D_801DA330)($at)
    /* 3DA30 801C69A8 751A0708 */  j          .L801C69D4
    /* 3DA34 801C69AC 00000000 */   nop
  .L801C69B0:
    /* 3DA38 801C69B0 1E80023C */  lui        $v0, %hi(D_801DA058)
    /* 3DA3C 801C69B4 58A0428C */  lw         $v0, %lo(D_801DA058)($v0)
  .L801C69B8:
    /* 3DA40 801C69B8 1E80033C */  lui        $v1, %hi(D_801DA330)
    /* 3DA44 801C69BC 30A36390 */  lbu        $v1, %lo(D_801DA330)($v1)
    /* 3DA48 801C69C0 02004104 */  bgez       $v0, .L801C69CC
    /* 3DA4C 801C69C4 01006224 */   addiu     $v0, $v1, 0x1
    /* 3DA50 801C69C8 FFFF6224 */  addiu      $v0, $v1, -0x1
  .L801C69CC:
    /* 3DA54 801C69CC 1E80013C */  lui        $at, %hi(D_801DA330)
    /* 3DA58 801C69D0 30A322A0 */  sb         $v0, %lo(D_801DA330)($at)
  .L801C69D4:
    /* 3DA5C 801C69D4 1E80033C */  lui        $v1, %hi(D_801DA330)
    /* 3DA60 801C69D8 30A36390 */  lbu        $v1, %lo(D_801DA330)($v1)
    /* 3DA64 801C69DC 23000224 */  addiu      $v0, $zero, 0x23
    /* 3DA68 801C69E0 09006214 */  bne        $v1, $v0, .L801C6A08
    /* 3DA6C 801C69E4 00000000 */   nop
    /* 3DA70 801C69E8 1E80023C */  lui        $v0, %hi(D_801DA058)
    /* 3DA74 801C69EC 58A0428C */  lw         $v0, %lo(D_801DA058)($v0)
    /* 3DA78 801C69F0 00000000 */  nop
    /* 3DA7C 801C69F4 02004104 */  bgez       $v0, .L801C6A00
    /* 3DA80 801C69F8 24000324 */   addiu     $v1, $zero, 0x24
    /* 3DA84 801C69FC 22000324 */  addiu      $v1, $zero, 0x22
  .L801C6A00:
    /* 3DA88 801C6A00 1E80013C */  lui        $at, %hi(D_801DA330)
    /* 3DA8C 801C6A04 30A323A0 */  sb         $v1, %lo(D_801DA330)($at)
  .L801C6A08:
    /* 3DA90 801C6A08 3E26070C */  jal        func_801C98F8
    /* 3DA94 801C6A0C 21200000 */   addu      $a0, $zero, $zero
    /* 3DA98 801C6A10 1E80023C */  lui        $v0, %hi(D_801DA058)
    /* 3DA9C 801C6A14 58A0428C */  lw         $v0, %lo(D_801DA058)($v0)
    /* 3DAA0 801C6A18 00000000 */  nop
    /* 3DAA4 801C6A1C 0A004010 */  beqz       $v0, .L801C6A48
    /* 3DAA8 801C6A20 00000000 */   nop
    /* 3DAAC 801C6A24 03004104 */  bgez       $v0, .L801C6A34
    /* 3DAB0 801C6A28 00000000 */   nop
    /* 3DAB4 801C6A2C 8E1A0708 */  j          .L801C6A38
    /* 3DAB8 801C6A30 01004224 */   addiu     $v0, $v0, 0x1
  .L801C6A34:
    /* 3DABC 801C6A34 FFFF4224 */  addiu      $v0, $v0, -0x1
  .L801C6A38:
    /* 3DAC0 801C6A38 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 3DAC4 801C6A3C 58A022AC */  sw         $v0, %lo(D_801DA058)($at)
    /* 3DAC8 801C6A40 32004014 */  bnez       $v0, .L801C6B0C
    /* 3DACC 801C6A44 00000000 */   nop
  .L801C6A48:
    /* 3DAD0 801C6A48 9B020292 */  lbu        $v0, (0x1F80029B & 0xFFFF)($s0)
    /* 3DAD4 801C6A4C 00000000 */  nop
    /* 3DAD8 801C6A50 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 3DADC 801C6A54 C31A0708 */  j          .L801C6B0C
    /* 3DAE0 801C6A58 9B0202A2 */   sb        $v0, (0x1F80029B & 0xFFFF)($s0)
  .L801C6A5C:
    /* 3DAE4 801C6A5C CD1A070C */  jal        func_801C6B34
    /* 3DAE8 801C6A60 00000000 */   nop
    /* 3DAEC 801C6A64 FF004330 */  andi       $v1, $v0, 0xFF
    /* 3DAF0 801C6A68 01000224 */  addiu      $v0, $zero, 0x1
    /* 3DAF4 801C6A6C 0B006210 */  beq        $v1, $v0, .L801C6A9C
    /* 3DAF8 801C6A70 02006228 */   slti      $v0, $v1, 0x2
    /* 3DAFC 801C6A74 25004014 */  bnez       $v0, .L801C6B0C
    /* 3DB00 801C6A78 00000000 */   nop
    /* 3DB04 801C6A7C 23007414 */  bne        $v1, $s4, .L801C6B0C
    /* 3DB08 801C6A80 00000000 */   nop
    /* 3DB0C 801C6A84 1180023C */  lui        $v0, %hi(D_8010865C)
    /* 3DB10 801C6A88 5C864290 */  lbu        $v0, %lo(D_8010865C)($v0)
    /* 3DB14 801C6A8C 00000000 */  nop
    /* 3DB18 801C6A90 02004234 */  ori        $v0, $v0, 0x2
    /* 3DB1C 801C6A94 1180013C */  lui        $at, %hi(D_8010865C)
    /* 3DB20 801C6A98 5C8622A0 */  sb         $v0, %lo(D_8010865C)($at)
  .L801C6A9C:
    /* 3DB24 801C6A9C 21200000 */  addu       $a0, $zero, $zero
    /* 3DB28 801C6AA0 2F22070C */  jal        func_801C88BC
    /* 3DB2C 801C6AA4 21280000 */   addu      $a1, $zero, $zero
    /* 3DB30 801C6AA8 1E80013C */  lui        $at, %hi(D_801D8B17)
    /* 3DB34 801C6AAC 178B20A0 */  sb         $zero, %lo(D_801D8B17)($at)
    /* 3DB38 801C6AB0 1F000424 */  addiu      $a0, $zero, 0x1F
    /* 3DB3C 801C6AB4 0F3B060C */  jal        func_8018EC3C
    /* 3DB40 801C6AB8 21280000 */   addu      $a1, $zero, $zero
    /* 3DB44 801C6ABC 3A21070C */  jal        func_801C84E8
    /* 3DB48 801C6AC0 00000000 */   nop
    /* 3DB4C 801C6AC4 7F5C000C */  jal        func_800171FC
    /* 3DB50 801C6AC8 02000424 */   addiu     $a0, $zero, 0x2
    /* 3DB54 801C6ACC C31A0708 */  j          .L801C6B0C
    /* 3DB58 801C6AD0 00000000 */   nop
  .L801C6AD4:
    /* 3DB5C 801C6AD4 37BC010C */  jal        func_8006F0DC
    /* 3DB60 801C6AD8 01000524 */   addiu     $a1, $zero, 0x1
    /* 3DB64 801C6ADC 0B004010 */  beqz       $v0, .L801C6B0C
    /* 3DB68 801C6AE0 00000000 */   nop
    /* 3DB6C 801C6AE4 801F013C */  lui        $at, (0x1F8002A2 >> 16)
    /* 3DB70 801C6AE8 A20220A0 */  sb         $zero, (0x1F8002A2 & 0xFFFF)($at)
    /* 3DB74 801C6AEC 801F013C */  lui        $at, (0x1F800330 >> 16)
    /* 3DB78 801C6AF0 300320A0 */  sb         $zero, (0x1F800330 & 0xFFFF)($at)
    /* 3DB7C 801C6AF4 715C000C */  jal        func_800171C4
    /* 3DB80 801C6AF8 10000424 */   addiu     $a0, $zero, 0x10
    /* 3DB84 801C6AFC 7F5C000C */  jal        func_800171FC
    /* 3DB88 801C6B00 21200000 */   addu      $a0, $zero, $zero
    /* 3DB8C 801C6B04 1180013C */  lui        $at, %hi(D_8010A322)
    /* 3DB90 801C6B08 22A320A0 */  sb         $zero, %lo(D_8010A322)($at)
  .L801C6B0C:
    /* 3DB94 801C6B0C 7000BF8F */  lw         $ra, 0x70($sp)
    /* 3DB98 801C6B10 6C00B58F */  lw         $s5, 0x6C($sp)
    /* 3DB9C 801C6B14 6800B48F */  lw         $s4, 0x68($sp)
    /* 3DBA0 801C6B18 6400B38F */  lw         $s3, 0x64($sp)
    /* 3DBA4 801C6B1C 6000B28F */  lw         $s2, 0x60($sp)
    /* 3DBA8 801C6B20 5C00B18F */  lw         $s1, 0x5C($sp)
    /* 3DBAC 801C6B24 5800B08F */  lw         $s0, 0x58($sp)
    /* 3DBB0 801C6B28 7800BD27 */  addiu      $sp, $sp, 0x78
    /* 3DBB4 801C6B2C 0800E003 */  jr         $ra
    /* 3DBB8 801C6B30 00000000 */   nop
endlabel func_801C62E0
