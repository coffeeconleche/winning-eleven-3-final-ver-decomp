nonmatching func_8005D28C, 0xE10

glabel func_8005D28C
    /* 4DA8C 8005D28C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 4DA90 8005D290 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4DA94 8005D294 21888000 */  addu       $s1, $a0, $zero
    /* 4DA98 8005D298 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4DA9C 8005D29C 1080073C */  lui        $a3, %hi(D_800FF748)
    /* 4DAA0 8005D2A0 48F7E724 */  addiu      $a3, $a3, %lo(D_800FF748)
    /* 4DAA4 8005D2A4 2000BFAF */  sw         $ra, 0x20($sp)
    /* 4DAA8 8005D2A8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 4DAAC 8005D2AC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4DAB0 8005D2B0 8D032492 */  lbu        $a0, 0x38D($s1)
    /* 4DAB4 8005D2B4 801F023C */  lui        $v0, (0x1F8002A9 >> 16)
    /* 4DAB8 8005D2B8 A9024290 */  lbu        $v0, (0x1F8002A9 & 0xFFFF)($v0)
    /* 4DABC 8005D2BC 1180133C */  lui        $s3, %hi(D_8010C1D8)
    /* 4DAC0 8005D2C0 D8C17326 */  addiu      $s3, $s3, %lo(D_8010C1D8)
    /* 4DAC4 8005D2C4 6D038210 */  beq        $a0, $v0, .L8005E07C
    /* 4DAC8 8005D2C8 801F123C */   lui       $s2, (0x1F8002F4 >> 16)
    /* 4DACC 8005D2CC 2EBA023C */  lui        $v0, (0xBA2E8BA3 >> 16)
    /* 4DAD0 8005D2D0 A38B4234 */  ori        $v0, $v0, (0xBA2E8BA3 & 0xFFFF)
    /* 4DAD4 8005D2D4 19008200 */  multu      $a0, $v0
    /* 4DAD8 8005D2D8 8B2E023C */  lui        $v0, (0x2E8BA2E9 >> 16)
    /* 4DADC 8005D2DC 10180000 */  mfhi       $v1
    /* 4DAE0 8005D2E0 801F053C */  lui        $a1, (0x1F800290 >> 16)
    /* 4DAE4 8005D2E4 9002A58C */  lw         $a1, (0x1F800290 & 0xFFFF)($a1)
    /* 4DAE8 8005D2E8 E9A24234 */  ori        $v0, $v0, (0x2E8BA2E9 & 0xFFFF)
    /* 4DAEC 8005D2EC 1800A200 */  mult       $a1, $v0
    /* 4DAF0 8005D2F0 02110300 */  srl        $v0, $v1, 4
    /* 4DAF4 8005D2F4 40180200 */  sll        $v1, $v0, 1
    /* 4DAF8 8005D2F8 21186200 */  addu       $v1, $v1, $v0
    /* 4DAFC 8005D2FC 80180300 */  sll        $v1, $v1, 2
    /* 4DB00 8005D300 23186200 */  subu       $v1, $v1, $v0
    /* 4DB04 8005D304 40180300 */  sll        $v1, $v1, 1
    /* 4DB08 8005D308 23188300 */  subu       $v1, $a0, $v1
    /* 4DB0C 8005D30C FF006330 */  andi       $v1, $v1, 0xFF
    /* 4DB10 8005D310 C3170500 */  sra        $v0, $a1, 31
    /* 4DB14 8005D314 10300000 */  mfhi       $a2
    /* 4DB18 8005D318 83200600 */  sra        $a0, $a2, 2
    /* 4DB1C 8005D31C 23208200 */  subu       $a0, $a0, $v0
    /* 4DB20 8005D320 40100400 */  sll        $v0, $a0, 1
    /* 4DB24 8005D324 21104400 */  addu       $v0, $v0, $a0
    /* 4DB28 8005D328 80100200 */  sll        $v0, $v0, 2
    /* 4DB2C 8005D32C 23104400 */  subu       $v0, $v0, $a0
    /* 4DB30 8005D330 40100200 */  sll        $v0, $v0, 1
    /* 4DB34 8005D334 2328A200 */  subu       $a1, $a1, $v0
    /* 4DB38 8005D338 05006510 */  beq        $v1, $a1, .L8005D350
    /* 4DB3C 8005D33C FFFF1024 */   addiu     $s0, $zero, -0x1
    /* 4DB40 8005D340 D8032296 */  lhu        $v0, 0x3D8($s1)
    /* 4DB44 8005D344 D60320A6 */  sh         $zero, 0x3D6($s1)
    /* 4DB48 8005D348 1F780108 */  j          .L8005E07C
    /* 4DB4C 8005D34C D40322A6 */   sh        $v0, 0x3D4($s1)
  .L8005D350:
    /* 4DB50 8005D350 D4032496 */  lhu        $a0, 0x3D4($s1)
    /* 4DB54 8005D354 99032292 */  lbu        $v0, 0x399($s1)
    /* 4DB58 8005D358 00000000 */  nop
    /* 4DB5C 8005D35C 02004014 */  bnez       $v0, .L8005D368
    /* 4DB60 8005D360 D80324A6 */   sh        $a0, 0x3D8($s1)
    /* 4DB64 8005D364 01001024 */  addiu      $s0, $zero, 0x1
  .L8005D368:
    /* 4DB68 8005D368 98032292 */  lbu        $v0, 0x398($s1)
    /* 4DB6C 8005D36C 801F013C */  lui        $at, (0x1F8002CF >> 16)
    /* 4DB70 8005D370 21084100 */  addu       $at, $v0, $at
    /* 4DB74 8005D374 CF022290 */  lbu        $v0, (0x1F8002CF & 0xFFFF)($at)
    /* 4DB78 8005D378 00000000 */  nop
    /* 4DB7C 8005D37C 89014014 */  bnez       $v0, .L8005D9A4
    /* 4DB80 8005D380 02000224 */   addiu     $v0, $zero, 0x2
    /* 4DB84 8005D384 801F033C */  lui        $v1, (0x1F8002B0 >> 16)
    /* 4DB88 8005D388 B002638C */  lw         $v1, (0x1F8002B0 & 0xFFFF)($v1)
    /* 4DB8C 8005D38C 03000224 */  addiu      $v0, $zero, 0x3
    /* 4DB90 8005D390 09006214 */  bne        $v1, $v0, .L8005D3B8
    /* 4DB94 8005D394 FF7F0224 */   addiu     $v0, $zero, 0x7FFF
    /* 4DB98 8005D398 801F033C */  lui        $v1, (0x1F8002B8 >> 16)
    /* 4DB9C 8005D39C B8026384 */  lh         $v1, (0x1F8002B8 & 0xFFFF)($v1)
    /* 4DBA0 8005D3A0 00000000 */  nop
    /* 4DBA4 8005D3A4 04006210 */  beq        $v1, $v0, .L8005D3B8
    /* 4DBA8 8005D3A8 00000000 */   nop
    /* 4DBAC 8005D3AC D40324A6 */  sh         $a0, 0x3D4($s1)
    /* 4DBB0 8005D3B0 1F780108 */  j          .L8005E07C
    /* 4DBB4 8005D3B4 D60320A6 */   sh        $zero, 0x3D6($s1)
  .L8005D3B8:
    /* 4DBB8 8005D3B8 DA032292 */  lbu        $v0, 0x3DA($s1)
    /* 4DBBC 8005D3BC 00000000 */  nop
    /* 4DBC0 8005D3C0 03004230 */  andi       $v0, $v0, 0x3
    /* 4DBC4 8005D3C4 5F014014 */  bnez       $v0, .L8005D944
    /* 4DBC8 8005D3C8 02000224 */   addiu     $v0, $zero, 0x2
    /* 4DBCC 8005D3CC E2032392 */  lbu        $v1, 0x3E2($s1)
    /* 4DBD0 8005D3D0 00000000 */  nop
    /* 4DBD4 8005D3D4 0C006210 */  beq        $v1, $v0, .L8005D408
    /* 4DBD8 8005D3D8 03006228 */   slti      $v0, $v1, 0x3
    /* 4DBDC 8005D3DC 05004010 */  beqz       $v0, .L8005D3F4
    /* 4DBE0 8005D3E0 01000224 */   addiu     $v0, $zero, 0x1
    /* 4DBE4 8005D3E4 1C006210 */  beq        $v1, $v0, .L8005D458
    /* 4DBE8 8005D3E8 21202002 */   addu      $a0, $s1, $zero
    /* 4DBEC 8005D3EC 19750108 */  j          .L8005D464
    /* 4DBF0 8005D3F0 00000000 */   nop
  .L8005D3F4:
    /* 4DBF4 8005D3F4 03000224 */  addiu      $v0, $zero, 0x3
    /* 4DBF8 8005D3F8 12006210 */  beq        $v1, $v0, .L8005D444
    /* 4DBFC 8005D3FC 21202002 */   addu      $a0, $s1, $zero
    /* 4DC00 8005D400 19750108 */  j          .L8005D464
    /* 4DC04 8005D404 00000000 */   nop
  .L8005D408:
    /* 4DC08 8005D408 21202002 */  addu       $a0, $s1, $zero
    /* 4DC0C 8005D40C AE024392 */  lbu        $v1, (0x1F8002AE & 0xFFFF)($s2)
    /* 4DC10 8005D410 BC032526 */  addiu      $a1, $s1, 0x3BC
    /* 4DC14 8005D414 FF006330 */  andi       $v1, $v1, 0xFF
    /* 4DC18 8005D418 40110300 */  sll        $v0, $v1, 5
    /* 4DC1C 8005D41C 23104300 */  subu       $v0, $v0, $v1
    /* 4DC20 8005D420 80100200 */  sll        $v0, $v0, 2
    /* 4DC24 8005D424 21104300 */  addu       $v0, $v0, $v1
    /* 4DC28 8005D428 C0100200 */  sll        $v0, $v0, 3
    /* 4DC2C 8005D42C 2110E200 */  addu       $v0, $a3, $v0
    /* 4DC30 8005D430 99034790 */  lbu        $a3, 0x399($v0)
    /* 4DC34 8005D434 6096020C */  jal        func_800A5980
    /* 4DC38 8005D438 BE032626 */   addiu     $a2, $s1, 0x3BE
    /* 4DC3C 8005D43C 19750108 */  j          .L8005D464
    /* 4DC40 8005D440 00000000 */   nop
  .L8005D444:
    /* 4DC44 8005D444 BC032526 */  addiu      $a1, $s1, 0x3BC
    /* 4DC48 8005D448 B28F020C */  jal        func_800A3EC8
    /* 4DC4C 8005D44C BE032626 */   addiu     $a2, $s1, 0x3BE
    /* 4DC50 8005D450 19750108 */  j          .L8005D464
    /* 4DC54 8005D454 00000000 */   nop
  .L8005D458:
    /* 4DC58 8005D458 BC032526 */  addiu      $a1, $s1, 0x3BC
    /* 4DC5C 8005D45C 4C93020C */  jal        func_800A4D30
    /* 4DC60 8005D460 BE032626 */   addiu     $a2, $s1, 0x3BE
  .L8005D464:
    /* 4DC64 8005D464 0D80043C */  lui        $a0, %hi(D_800C8488)
    /* 4DC68 8005D468 88848424 */  addiu      $a0, $a0, %lo(D_800C8488)
    /* 4DC6C 8005D46C DA032392 */  lbu        $v1, 0x3DA($s1)
    /* 4DC70 8005D470 8D032292 */  lbu        $v0, 0x38D($s1)
    /* 4DC74 8005D474 82180300 */  srl        $v1, $v1, 2
    /* 4DC78 8005D478 07004230 */  andi       $v0, $v0, 0x7
    /* 4DC7C 8005D47C 80100200 */  sll        $v0, $v0, 2
    /* 4DC80 8005D480 21104400 */  addu       $v0, $v0, $a0
    /* 4DC84 8005D484 03006330 */  andi       $v1, $v1, 0x3
    /* 4DC88 8005D488 21104300 */  addu       $v0, $v0, $v1
    /* 4DC8C 8005D48C 00004390 */  lbu        $v1, 0x0($v0)
    /* 4DC90 8005D490 01000224 */  addiu      $v0, $zero, 0x1
    /* 4DC94 8005D494 12006210 */  beq        $v1, $v0, .L8005D4E0
    /* 4DC98 8005D498 02006228 */   slti      $v0, $v1, 0x2
    /* 4DC9C 8005D49C 05004010 */  beqz       $v0, .L8005D4B4
    /* 4DCA0 8005D4A0 00000000 */   nop
    /* 4DCA4 8005D4A4 0B006010 */  beqz       $v1, .L8005D4D4
    /* 4DCA8 8005D4A8 80020224 */   addiu     $v0, $zero, 0x280
    /* 4DCAC 8005D4AC 39750108 */  j          .L8005D4E4
    /* 4DCB0 8005D4B0 00040224 */   addiu     $v0, $zero, 0x400
  .L8005D4B4:
    /* 4DCB4 8005D4B4 02000224 */  addiu      $v0, $zero, 0x2
    /* 4DCB8 8005D4B8 05006210 */  beq        $v1, $v0, .L8005D4D0
    /* 4DCBC 8005D4BC 03000224 */   addiu     $v0, $zero, 0x3
    /* 4DCC0 8005D4C0 08006210 */  beq        $v1, $v0, .L8005D4E4
    /* 4DCC4 8005D4C4 00FC0224 */   addiu     $v0, $zero, -0x400
    /* 4DCC8 8005D4C8 39750108 */  j          .L8005D4E4
    /* 4DCCC 8005D4CC 00040224 */   addiu     $v0, $zero, 0x400
  .L8005D4D0:
    /* 4DCD0 8005D4D0 80FD0224 */  addiu      $v0, $zero, -0x280
  .L8005D4D4:
    /* 4DCD4 8005D4D4 DC0322A6 */  sh         $v0, 0x3DC($s1)
    /* 4DCD8 8005D4D8 3B750108 */  j          .L8005D4EC
    /* 4DCDC 8005D4DC DE0320A6 */   sh        $zero, 0x3DE($s1)
  .L8005D4E0:
    /* 4DCE0 8005D4E0 00040224 */  addiu      $v0, $zero, 0x400
  .L8005D4E4:
    /* 4DCE4 8005D4E4 DC0320A6 */  sh         $zero, 0x3DC($s1)
    /* 4DCE8 8005D4E8 DE0322A6 */  sh         $v0, 0x3DE($s1)
  .L8005D4EC:
    /* 4DCEC 8005D4EC 99032392 */  lbu        $v1, 0x399($s1)
    /* 4DCF0 8005D4F0 00000000 */  nop
    /* 4DCF4 8005D4F4 07006014 */  bnez       $v1, .L8005D514
    /* 4DCF8 8005D4F8 01000224 */   addiu     $v0, $zero, 0x1
    /* 4DCFC 8005D4FC F402428E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s2)
    /* 4DD00 8005D500 00000000 */  nop
    /* 4DD04 8005D504 02004284 */  lh         $v0, 0x2($v0)
    /* 4DD08 8005D508 00000000 */  nop
    /* 4DD0C 8005D50C 09004004 */  bltz       $v0, .L8005D534
    /* 4DD10 8005D510 01000224 */   addiu     $v0, $zero, 0x1
  .L8005D514:
    /* 4DD14 8005D514 0F006214 */  bne        $v1, $v0, .L8005D554
    /* 4DD18 8005D518 00000000 */   nop
    /* 4DD1C 8005D51C F402428E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s2)
    /* 4DD20 8005D520 00000000 */  nop
    /* 4DD24 8005D524 02004284 */  lh         $v0, 0x2($v0)
    /* 4DD28 8005D528 00000000 */  nop
    /* 4DD2C 8005D52C 09004018 */  blez       $v0, .L8005D554
    /* 4DD30 8005D530 00000000 */   nop
  .L8005D534:
    /* 4DD34 8005D534 DE032296 */  lhu        $v0, 0x3DE($s1)
    /* 4DD38 8005D538 00000000 */  nop
    /* 4DD3C 8005D53C 00140200 */  sll        $v0, $v0, 16
    /* 4DD40 8005D540 031C0200 */  sra        $v1, $v0, 16
    /* 4DD44 8005D544 C2170200 */  srl        $v0, $v0, 31
    /* 4DD48 8005D548 21186200 */  addu       $v1, $v1, $v0
    /* 4DD4C 8005D54C 43180300 */  sra        $v1, $v1, 1
    /* 4DD50 8005D550 DE0323A6 */  sh         $v1, 0x3DE($s1)
  .L8005D554:
    /* 4DD54 8005D554 91032292 */  lbu        $v0, 0x391($s1)
    /* 4DD58 8005D558 00000000 */  nop
    /* 4DD5C 8005D55C F2FF4324 */  addiu      $v1, $v0, -0xE
    /* 4DD60 8005D560 0C00622C */  sltiu      $v0, $v1, 0xC
    /* 4DD64 8005D564 1B004010 */  beqz       $v0, .L8005D5D4
    /* 4DD68 8005D568 80100300 */   sll       $v0, $v1, 2
    /* 4DD6C 8005D56C 0180013C */  lui        $at, %hi(jtbl_80012174)
    /* 4DD70 8005D570 21082200 */  addu       $at, $at, $v0
    /* 4DD74 8005D574 7421228C */  lw         $v0, %lo(jtbl_80012174)($at)
    /* 4DD78 8005D578 00000000 */  nop
    /* 4DD7C 8005D57C 08004000 */  jr         $v0
    /* 4DD80 8005D580 00000000 */   nop
  jlabel .L8005D584
    /* 4DD84 8005D584 99032392 */  lbu        $v1, 0x399($s1)
    /* 4DD88 8005D588 00000000 */  nop
    /* 4DD8C 8005D58C 07006014 */  bnez       $v1, .L8005D5AC
    /* 4DD90 8005D590 01000224 */   addiu     $v0, $zero, 0x1
    /* 4DD94 8005D594 F402428E */  lw         $v0, 0x2F4($s2)
    /* 4DD98 8005D598 00000000 */  nop
    /* 4DD9C 8005D59C 02004284 */  lh         $v0, 0x2($v0)
    /* 4DDA0 8005D5A0 00000000 */  nop
    /* 4DDA4 8005D5A4 09004004 */  bltz       $v0, .L8005D5CC
    /* 4DDA8 8005D5A8 01000224 */   addiu     $v0, $zero, 0x1
  .L8005D5AC:
    /* 4DDAC 8005D5AC 09006214 */  bne        $v1, $v0, .L8005D5D4
    /* 4DDB0 8005D5B0 00000000 */   nop
    /* 4DDB4 8005D5B4 F402428E */  lw         $v0, 0x2F4($s2)
    /* 4DDB8 8005D5B8 00000000 */  nop
    /* 4DDBC 8005D5BC 02004284 */  lh         $v0, 0x2($v0)
    /* 4DDC0 8005D5C0 00000000 */  nop
    /* 4DDC4 8005D5C4 03004018 */  blez       $v0, .L8005D5D4
    /* 4DDC8 8005D5C8 00000000 */   nop
  jlabel .L8005D5CC
    /* 4DDCC 8005D5CC DE0320A6 */  sh         $zero, 0x3DE($s1)
    /* 4DDD0 8005D5D0 DC0320A6 */  sh         $zero, 0x3DC($s1)
  jlabel .L8005D5D4
    /* 4DDD4 8005D5D4 E2032492 */  lbu        $a0, 0x3E2($s1)
    /* 4DDD8 8005D5D8 01000524 */  addiu      $a1, $zero, 0x1
    /* 4DDDC 8005D5DC 7B008510 */  beq        $a0, $a1, .L8005D7CC
    /* 4DDE0 8005D5E0 00000000 */   nop
    /* 4DDE4 8005D5E4 9E008010 */  beqz       $a0, .L8005D860
    /* 4DDE8 8005D5E8 04008228 */   slti      $v0, $a0, 0x4
    /* 4DDEC 8005D5EC 9C004010 */  beqz       $v0, .L8005D860
    /* 4DDF0 8005D5F0 00000000 */   nop
    /* 4DDF4 8005D5F4 98032292 */  lbu        $v0, 0x398($s1)
    /* 4DDF8 8005D5F8 00000000 */  nop
    /* 4DDFC 8005D5FC 21104202 */  addu       $v0, $s2, $v0
    /* 4DE00 8005D600 FF024390 */  lbu        $v1, (0x1F8002FF & 0xFFFF)($v0)
    /* 4DE04 8005D604 00000000 */  nop
    /* 4DE08 8005D608 07006510 */  beq        $v1, $a1, .L8005D628
    /* 4DE0C 8005D60C 02006228 */   slti      $v0, $v1, 0x2
    /* 4DE10 8005D610 61004014 */  bnez       $v0, .L8005D798
    /* 4DE14 8005D614 02000224 */   addiu     $v0, $zero, 0x2
    /* 4DE18 8005D618 28006210 */  beq        $v1, $v0, .L8005D6BC
    /* 4DE1C 8005D61C 00000000 */   nop
    /* 4DE20 8005D620 E6750108 */  j          .L8005D798
    /* 4DE24 8005D624 00000000 */   nop
  .L8005D628:
    /* 4DE28 8005D628 91032392 */  lbu        $v1, 0x391($s1)
    /* 4DE2C 8005D62C 00000000 */  nop
    /* 4DE30 8005D630 17006010 */  beqz       $v1, .L8005D690
    /* 4DE34 8005D634 06006228 */   slti      $v0, $v1, 0x6
    /* 4DE38 8005D638 0D004014 */  bnez       $v0, .L8005D670
    /* 4DE3C 8005D63C 21280000 */   addu      $a1, $zero, $zero
    /* 4DE40 8005D640 15006228 */  slti       $v0, $v1, 0x15
    /* 4DE44 8005D644 12004010 */  beqz       $v0, .L8005D690
    /* 4DE48 8005D648 13006228 */   slti      $v0, $v1, 0x13
    /* 4DE4C 8005D64C 10004014 */  bnez       $v0, .L8005D690
    /* 4DE50 8005D650 02000624 */   addiu     $a2, $zero, 0x2
    /* 4DE54 8005D654 99032292 */  lbu        $v0, 0x399($s1)
    /* 4DE58 8005D658 BC032486 */  lh         $a0, 0x3BC($s1)
    /* 4DE5C 8005D65C 40100200 */  sll        $v0, $v0, 1
    /* 4DE60 8005D660 21105200 */  addu       $v0, $v0, $s2
    /* 4DE64 8005D664 0C034584 */  lh         $a1, (0x1F80030C & 0xFFFF)($v0)
    /* 4DE68 8005D668 C1750108 */  j          .L8005D704
    /* 4DE6C 8005D66C 00000000 */   nop
  .L8005D670:
    /* 4DE70 8005D670 01000624 */  addiu      $a2, $zero, 0x1
    /* 4DE74 8005D674 00141000 */  sll        $v0, $s0, 16
    /* 4DE78 8005D678 83110200 */  sra        $v0, $v0, 6
    /* 4DE7C 8005D67C BC032396 */  lhu        $v1, 0x3BC($s1)
    /* 4DE80 8005D680 BE032486 */  lh         $a0, 0x3BE($s1)
    /* 4DE84 8005D684 21186200 */  addu       $v1, $v1, $v0
    /* 4DE88 8005D688 E3750108 */  j          .L8005D78C
    /* 4DE8C 8005D68C BC0323A6 */   sh        $v1, 0x3BC($s1)
  .L8005D690:
    /* 4DE90 8005D690 99032292 */  lbu        $v0, 0x399($s1)
    /* 4DE94 8005D694 BC032486 */  lh         $a0, 0x3BC($s1)
    /* 4DE98 8005D698 40100200 */  sll        $v0, $v0, 1
    /* 4DE9C 8005D69C 21105200 */  addu       $v0, $v0, $s2
    /* 4DEA0 8005D6A0 0C034584 */  lh         $a1, (0x1F80030C & 0xFFFF)($v0)
    /* 4DEA4 8005D6A4 DB69010C */  jal        func_8005A76C
    /* 4DEA8 8005D6A8 01000624 */   addiu     $a2, $zero, 0x1
    /* 4DEAC 8005D6AC 21280000 */  addu       $a1, $zero, $zero
    /* 4DEB0 8005D6B0 BE032486 */  lh         $a0, 0x3BE($s1)
    /* 4DEB4 8005D6B4 E2750108 */  j          .L8005D788
    /* 4DEB8 8005D6B8 01000624 */   addiu     $a2, $zero, 0x1
  .L8005D6BC:
    /* 4DEBC 8005D6BC 91032292 */  lbu        $v0, 0x391($s1)
    /* 4DEC0 8005D6C0 00000000 */  nop
    /* 4DEC4 8005D6C4 FFFF4324 */  addiu      $v1, $v0, -0x1
    /* 4DEC8 8005D6C8 1800622C */  sltiu      $v0, $v1, 0x18
    /* 4DECC 8005D6CC 24004010 */  beqz       $v0, .L8005D760
    /* 4DED0 8005D6D0 80100300 */   sll       $v0, $v1, 2
    /* 4DED4 8005D6D4 0180013C */  lui        $at, %hi(jtbl_800121A4)
    /* 4DED8 8005D6D8 21082200 */  addu       $at, $at, $v0
    /* 4DEDC 8005D6DC A421228C */  lw         $v0, %lo(jtbl_800121A4)($at)
    /* 4DEE0 8005D6E0 00000000 */  nop
    /* 4DEE4 8005D6E4 08004000 */  jr         $v0
    /* 4DEE8 8005D6E8 00000000 */   nop
  jlabel .L8005D6EC
    /* 4DEEC 8005D6EC 99032292 */  lbu        $v0, 0x399($s1)
    /* 4DEF0 8005D6F0 BC032486 */  lh         $a0, 0x3BC($s1)
    /* 4DEF4 8005D6F4 40100200 */  sll        $v0, $v0, 1
    /* 4DEF8 8005D6F8 21105200 */  addu       $v0, $v0, $s2
    /* 4DEFC 8005D6FC 0C034584 */  lh         $a1, 0x30C($v0)
    /* 4DF00 8005D700 03000624 */  addiu      $a2, $zero, 0x3
  .L8005D704:
    /* 4DF04 8005D704 DB69010C */  jal        func_8005A76C
    /* 4DF08 8005D708 00000000 */   nop
    /* 4DF0C 8005D70C E6750108 */  j          .L8005D798
    /* 4DF10 8005D710 BC0322A6 */   sh        $v0, 0x3BC($s1)
  jlabel .L8005D714
    /* 4DF14 8005D714 21280000 */  addu       $a1, $zero, $zero
    /* 4DF18 8005D718 02000624 */  addiu      $a2, $zero, 0x2
    /* 4DF1C 8005D71C 00141000 */  sll        $v0, $s0, 16
    /* 4DF20 8005D720 03140200 */  sra        $v0, $v0, 16
    /* 4DF24 8005D724 C0180200 */  sll        $v1, $v0, 3
    /* 4DF28 8005D728 23186200 */  subu       $v1, $v1, $v0
    /* 4DF2C 8005D72C 001A0300 */  sll        $v1, $v1, 8
    /* 4DF30 8005D730 BC032296 */  lhu        $v0, 0x3BC($s1)
    /* 4DF34 8005D734 BE032486 */  lh         $a0, 0x3BE($s1)
    /* 4DF38 8005D738 E2750108 */  j          .L8005D788
    /* 4DF3C 8005D73C 21104300 */   addu      $v0, $v0, $v1
  jlabel .L8005D740
    /* 4DF40 8005D740 99032292 */  lbu        $v0, 0x399($s1)
    /* 4DF44 8005D744 BC032486 */  lh         $a0, 0x3BC($s1)
    /* 4DF48 8005D748 40100200 */  sll        $v0, $v0, 1
    /* 4DF4C 8005D74C 21105200 */  addu       $v0, $v0, $s2
    /* 4DF50 8005D750 0C034584 */  lh         $a1, 0x30C($v0)
    /* 4DF54 8005D754 DB69010C */  jal        func_8005A76C
    /* 4DF58 8005D758 02000624 */   addiu     $a2, $zero, 0x2
    /* 4DF5C 8005D75C BC0322A6 */  sh         $v0, 0x3BC($s1)
  jlabel .L8005D760
    /* 4DF60 8005D760 99032292 */  lbu        $v0, 0x399($s1)
    /* 4DF64 8005D764 BC032486 */  lh         $a0, 0x3BC($s1)
    /* 4DF68 8005D768 40100200 */  sll        $v0, $v0, 1
    /* 4DF6C 8005D76C 21105200 */  addu       $v0, $v0, $s2
    /* 4DF70 8005D770 0C034584 */  lh         $a1, (0x1F80030C & 0xFFFF)($v0)
    /* 4DF74 8005D774 DB69010C */  jal        func_8005A76C
    /* 4DF78 8005D778 02000624 */   addiu     $a2, $zero, 0x2
    /* 4DF7C 8005D77C 21280000 */  addu       $a1, $zero, $zero
    /* 4DF80 8005D780 BE032486 */  lh         $a0, 0x3BE($s1)
    /* 4DF84 8005D784 02000624 */  addiu      $a2, $zero, 0x2
  .L8005D788:
    /* 4DF88 8005D788 BC0322A6 */  sh         $v0, 0x3BC($s1)
  .L8005D78C:
    /* 4DF8C 8005D78C DB69010C */  jal        func_8005A76C
    /* 4DF90 8005D790 00000000 */   nop
    /* 4DF94 8005D794 BE0322A6 */  sh         $v0, 0x3BE($s1)
  jlabel .L8005D798
    /* 4DF98 8005D798 BC032386 */  lh         $v1, 0x3BC($s1)
    /* 4DF9C 8005D79C 00000000 */  nop
    /* 4DFA0 8005D7A0 02006104 */  bgez       $v1, .L8005D7AC
    /* 4DFA4 8005D7A4 21106000 */   addu      $v0, $v1, $zero
    /* 4DFA8 8005D7A8 23100200 */  negu       $v0, $v0
  .L8005D7AC:
    /* 4DFAC 8005D7AC 45274228 */  slti       $v0, $v0, 0x2745
    /* 4DFB0 8005D7B0 2B004014 */  bnez       $v0, .L8005D860
    /* 4DFB4 8005D7B4 00000000 */   nop
    /* 4DFB8 8005D7B8 02006104 */  bgez       $v1, .L8005D7C4
    /* 4DFBC 8005D7BC 44270224 */   addiu     $v0, $zero, 0x2744
    /* 4DFC0 8005D7C0 BCD80224 */  addiu      $v0, $zero, -0x2744
  .L8005D7C4:
    /* 4DFC4 8005D7C4 18760108 */  j          .L8005D860
    /* 4DFC8 8005D7C8 BC0322A6 */   sh        $v0, 0x3BC($s1)
  .L8005D7CC:
    /* 4DFCC 8005D7CC 98032292 */  lbu        $v0, 0x398($s1)
    /* 4DFD0 8005D7D0 00000000 */  nop
    /* 4DFD4 8005D7D4 21104202 */  addu       $v0, $s2, $v0
    /* 4DFD8 8005D7D8 FF024390 */  lbu        $v1, (0x1F8002FF & 0xFFFF)($v0)
    /* 4DFDC 8005D7DC 00000000 */  nop
    /* 4DFE0 8005D7E0 07006410 */  beq        $v1, $a0, .L8005D800
    /* 4DFE4 8005D7E4 02006228 */   slti      $v0, $v1, 0x2
    /* 4DFE8 8005D7E8 1D004014 */  bnez       $v0, .L8005D860
    /* 4DFEC 8005D7EC 02000224 */   addiu     $v0, $zero, 0x2
    /* 4DFF0 8005D7F0 0E006210 */  beq        $v1, $v0, .L8005D82C
    /* 4DFF4 8005D7F4 00000000 */   nop
    /* 4DFF8 8005D7F8 18760108 */  j          .L8005D860
    /* 4DFFC 8005D7FC 00000000 */   nop
  .L8005D800:
    /* 4E000 8005D800 99032292 */  lbu        $v0, 0x399($s1)
    /* 4E004 8005D804 BC032486 */  lh         $a0, 0x3BC($s1)
    /* 4E008 8005D808 40100200 */  sll        $v0, $v0, 1
    /* 4E00C 8005D80C 21105200 */  addu       $v0, $v0, $s2
    /* 4E010 8005D810 0C034584 */  lh         $a1, (0x1F80030C & 0xFFFF)($v0)
    /* 4E014 8005D814 DB69010C */  jal        func_8005A76C
    /* 4E018 8005D818 01000624 */   addiu     $a2, $zero, 0x1
    /* 4E01C 8005D81C 21280000 */  addu       $a1, $zero, $zero
    /* 4E020 8005D820 BE032486 */  lh         $a0, 0x3BE($s1)
    /* 4E024 8005D824 15760108 */  j          .L8005D854
    /* 4E028 8005D828 01000624 */   addiu     $a2, $zero, 0x1
  .L8005D82C:
    /* 4E02C 8005D82C 99032292 */  lbu        $v0, 0x399($s1)
    /* 4E030 8005D830 BC032486 */  lh         $a0, 0x3BC($s1)
    /* 4E034 8005D834 40100200 */  sll        $v0, $v0, 1
    /* 4E038 8005D838 21105200 */  addu       $v0, $v0, $s2
    /* 4E03C 8005D83C 0C034584 */  lh         $a1, (0x1F80030C & 0xFFFF)($v0)
    /* 4E040 8005D840 DB69010C */  jal        func_8005A76C
    /* 4E044 8005D844 02000624 */   addiu     $a2, $zero, 0x2
    /* 4E048 8005D848 21280000 */  addu       $a1, $zero, $zero
    /* 4E04C 8005D84C BE032486 */  lh         $a0, 0x3BE($s1)
    /* 4E050 8005D850 02000624 */  addiu      $a2, $zero, 0x2
  .L8005D854:
    /* 4E054 8005D854 DB69010C */  jal        func_8005A76C
    /* 4E058 8005D858 BC0322A6 */   sh        $v0, 0x3BC($s1)
    /* 4E05C 8005D85C BE0322A6 */  sh         $v0, 0x3BE($s1)
  .L8005D860:
    /* 4E060 8005D860 BC032296 */  lhu        $v0, 0x3BC($s1)
    /* 4E064 8005D864 DC032396 */  lhu        $v1, 0x3DC($s1)
    /* 4E068 8005D868 00000000 */  nop
    /* 4E06C 8005D86C 21104300 */  addu       $v0, $v0, $v1
    /* 4E070 8005D870 BC0322A6 */  sh         $v0, 0x3BC($s1)
    /* 4E074 8005D874 BE032296 */  lhu        $v0, 0x3BE($s1)
    /* 4E078 8005D878 DE032396 */  lhu        $v1, 0x3DE($s1)
    /* 4E07C 8005D87C 99032492 */  lbu        $a0, 0x399($s1)
    /* 4E080 8005D880 21104300 */  addu       $v0, $v0, $v1
    /* 4E084 8005D884 07008014 */  bnez       $a0, .L8005D8A4
    /* 4E088 8005D888 BE0322A6 */   sh        $v0, 0x3BE($s1)
    /* 4E08C 8005D88C 1803438E */  lw         $v1, (0x1F800318 & 0xFFFF)($s2)
    /* 4E090 8005D890 BC032286 */  lh         $v0, 0x3BC($s1)
    /* 4E094 8005D894 00FF6324 */  addiu      $v1, $v1, -0x100
    /* 4E098 8005D898 2A106200 */  slt        $v0, $v1, $v0
    /* 4E09C 8005D89C 0B004014 */  bnez       $v0, .L8005D8CC
    /* 4E0A0 8005D8A0 00000000 */   nop
  .L8005D8A4:
    /* 4E0A4 8005D8A4 99032392 */  lbu        $v1, 0x399($s1)
    /* 4E0A8 8005D8A8 01000224 */  addiu      $v0, $zero, 0x1
    /* 4E0AC 8005D8AC 08006214 */  bne        $v1, $v0, .L8005D8D0
    /* 4E0B0 8005D8B0 00000000 */   nop
    /* 4E0B4 8005D8B4 1403438E */  lw         $v1, (0x1F800314 & 0xFFFF)($s2)
    /* 4E0B8 8005D8B8 BC032286 */  lh         $v0, 0x3BC($s1)
    /* 4E0BC 8005D8BC 00016324 */  addiu      $v1, $v1, 0x100
    /* 4E0C0 8005D8C0 2A104300 */  slt        $v0, $v0, $v1
    /* 4E0C4 8005D8C4 02004010 */  beqz       $v0, .L8005D8D0
    /* 4E0C8 8005D8C8 00000000 */   nop
  .L8005D8CC:
    /* 4E0CC 8005D8CC BC0323A6 */  sh         $v1, 0x3BC($s1)
  .L8005D8D0:
    /* 4E0D0 8005D8D0 91032292 */  lbu        $v0, 0x391($s1)
    /* 4E0D4 8005D8D4 00000000 */  nop
    /* 4E0D8 8005D8D8 0600422C */  sltiu      $v0, $v0, 0x6
    /* 4E0DC 8005D8DC 0D004014 */  bnez       $v0, .L8005D914
    /* 4E0E0 8005D8E0 00000000 */   nop
    /* 4E0E4 8005D8E4 BC032386 */  lh         $v1, 0x3BC($s1)
    /* 4E0E8 8005D8E8 00000000 */  nop
    /* 4E0EC 8005D8EC 02006104 */  bgez       $v1, .L8005D8F8
    /* 4E0F0 8005D8F0 21106000 */   addu      $v0, $v1, $zero
    /* 4E0F4 8005D8F4 23100200 */  negu       $v0, $v0
  .L8005D8F8:
    /* 4E0F8 8005D8F8 092A4228 */  slti       $v0, $v0, 0x2A09
    /* 4E0FC 8005D8FC 06004014 */  bnez       $v0, .L8005D918
    /* 4E100 8005D900 00000000 */   nop
    /* 4E104 8005D904 02006104 */  bgez       $v1, .L8005D910
    /* 4E108 8005D908 082A0224 */   addiu     $v0, $zero, 0x2A08
    /* 4E10C 8005D90C F8D50224 */  addiu      $v0, $zero, -0x2A08
  .L8005D910:
    /* 4E110 8005D910 BC0322A6 */  sh         $v0, 0x3BC($s1)
  .L8005D914:
    /* 4E114 8005D914 BC032386 */  lh         $v1, 0x3BC($s1)
  .L8005D918:
    /* 4E118 8005D918 00000000 */  nop
    /* 4E11C 8005D91C 02006104 */  bgez       $v1, .L8005D928
    /* 4E120 8005D920 21106000 */   addu      $v0, $v1, $zero
    /* 4E124 8005D924 23100200 */  negu       $v0, $v0
  .L8005D928:
    /* 4E128 8005D928 092E4228 */  slti       $v0, $v0, 0x2E09
    /* 4E12C 8005D92C 05004014 */  bnez       $v0, .L8005D944
    /* 4E130 8005D930 00000000 */   nop
    /* 4E134 8005D934 02006104 */  bgez       $v1, .L8005D940
    /* 4E138 8005D938 082E0224 */   addiu     $v0, $zero, 0x2E08
    /* 4E13C 8005D93C F8D10224 */  addiu      $v0, $zero, -0x2E08
  .L8005D940:
    /* 4E140 8005D940 BC0322A6 */  sh         $v0, 0x3BC($s1)
  .L8005D944:
    /* 4E144 8005D944 E3032292 */  lbu        $v0, 0x3E3($s1)
    /* 4E148 8005D948 00000000 */  nop
    /* 4E14C 8005D94C EF004014 */  bnez       $v0, .L8005DD0C
    /* 4E150 8005D950 00000000 */   nop
    /* 4E154 8005D954 91032392 */  lbu        $v1, 0x391($s1)
    /* 4E158 8005D958 00000000 */  nop
    /* 4E15C 8005D95C 11006228 */  slti       $v0, $v1, 0x11
    /* 4E160 8005D960 EA004014 */  bnez       $v0, .L8005DD0C
    /* 4E164 8005D964 13006228 */   slti      $v0, $v1, 0x13
    /* 4E168 8005D968 05004014 */  bnez       $v0, .L8005D980
    /* 4E16C 8005D96C 19006228 */   slti      $v0, $v1, 0x19
    /* 4E170 8005D970 E6004010 */  beqz       $v0, .L8005DD0C
    /* 4E174 8005D974 17006228 */   slti      $v0, $v1, 0x17
    /* 4E178 8005D978 E4004014 */  bnez       $v0, .L8005DD0C
    /* 4E17C 8005D97C 00000000 */   nop
  .L8005D980:
    /* 4E180 8005D980 BC032386 */  lh         $v1, 0x3BC($s1)
    /* 4E184 8005D984 00141000 */  sll        $v0, $s0, 16
    /* 4E188 8005D988 03140200 */  sra        $v0, $v0, 16
    /* 4E18C 8005D98C 18006200 */  mult       $v1, $v0
    /* 4E190 8005D990 12400000 */  mflo       $t0
    /* 4E194 8005D994 DD000019 */  blez       $t0, .L8005DD0C
    /* 4E198 8005D998 00000000 */   nop
    /* 4E19C 8005D99C 43770108 */  j          .L8005DD0C
    /* 4E1A0 8005D9A0 BC0320A6 */   sh        $zero, 0x3BC($s1)
  .L8005D9A4:
    /* 4E1A4 8005D9A4 E2032392 */  lbu        $v1, 0x3E2($s1)
    /* 4E1A8 8005D9A8 00000000 */  nop
    /* 4E1AC 8005D9AC 0C006210 */  beq        $v1, $v0, .L8005D9E0
    /* 4E1B0 8005D9B0 03006228 */   slti      $v0, $v1, 0x3
    /* 4E1B4 8005D9B4 05004010 */  beqz       $v0, .L8005D9CC
    /* 4E1B8 8005D9B8 01000224 */   addiu     $v0, $zero, 0x1
    /* 4E1BC 8005D9BC 26006210 */  beq        $v1, $v0, .L8005DA58
    /* 4E1C0 8005D9C0 21202002 */   addu      $a0, $s1, $zero
    /* 4E1C4 8005D9C4 AC760108 */  j          .L8005DAB0
    /* 4E1C8 8005D9C8 00000000 */   nop
  .L8005D9CC:
    /* 4E1CC 8005D9CC 03000224 */  addiu      $v0, $zero, 0x3
    /* 4E1D0 8005D9D0 1C006210 */  beq        $v1, $v0, .L8005DA44
    /* 4E1D4 8005D9D4 21202002 */   addu      $a0, $s1, $zero
    /* 4E1D8 8005D9D8 AC760108 */  j          .L8005DAB0
    /* 4E1DC 8005D9DC 00000000 */   nop
  .L8005D9E0:
    /* 4E1E0 8005D9E0 21202002 */  addu       $a0, $s1, $zero
    /* 4E1E4 8005D9E4 801F023C */  lui        $v0, (0x1F8002AE >> 16)
    /* 4E1E8 8005D9E8 AE024290 */  lbu        $v0, (0x1F8002AE & 0xFFFF)($v0)
    /* 4E1EC 8005D9EC BC032526 */  addiu      $a1, $s1, 0x3BC
    /* 4E1F0 8005D9F0 40190200 */  sll        $v1, $v0, 5
    /* 4E1F4 8005D9F4 23186200 */  subu       $v1, $v1, $v0
    /* 4E1F8 8005D9F8 80180300 */  sll        $v1, $v1, 2
    /* 4E1FC 8005D9FC 21186200 */  addu       $v1, $v1, $v0
    /* 4E200 8005DA00 C0180300 */  sll        $v1, $v1, 3
    /* 4E204 8005DA04 21186700 */  addu       $v1, $v1, $a3
    /* 4E208 8005DA08 99036790 */  lbu        $a3, 0x399($v1)
    /* 4E20C 8005DA0C 6096020C */  jal        func_800A5980
    /* 4E210 8005DA10 BE032626 */   addiu     $a2, $s1, 0x3BE
    /* 4E214 8005DA14 BC032386 */  lh         $v1, 0x3BC($s1)
    /* 4E218 8005DA18 00000000 */  nop
    /* 4E21C 8005DA1C 02006104 */  bgez       $v1, .L8005DA28
    /* 4E220 8005DA20 21106000 */   addu      $v0, $v1, $zero
    /* 4E224 8005DA24 23100200 */  negu       $v0, $v0
  .L8005DA28:
    /* 4E228 8005DA28 F6284228 */  slti       $v0, $v0, 0x28F6
    /* 4E22C 8005DA2C 20004014 */  bnez       $v0, .L8005DAB0
    /* 4E230 8005DA30 00000000 */   nop
    /* 4E234 8005DA34 1D006104 */  bgez       $v1, .L8005DAAC
    /* 4E238 8005DA38 F5280224 */   addiu     $v0, $zero, 0x28F5
    /* 4E23C 8005DA3C AB760108 */  j          .L8005DAAC
    /* 4E240 8005DA40 0BD70224 */   addiu     $v0, $zero, -0x28F5
  .L8005DA44:
    /* 4E244 8005DA44 BC032526 */  addiu      $a1, $s1, 0x3BC
    /* 4E248 8005DA48 B28F020C */  jal        func_800A3EC8
    /* 4E24C 8005DA4C BE032626 */   addiu     $a2, $s1, 0x3BE
    /* 4E250 8005DA50 AC760108 */  j          .L8005DAB0
    /* 4E254 8005DA54 00000000 */   nop
  .L8005DA58:
    /* 4E258 8005DA58 BC032526 */  addiu      $a1, $s1, 0x3BC
    /* 4E25C 8005DA5C 4C93020C */  jal        func_800A4D30
    /* 4E260 8005DA60 BE032626 */   addiu     $a2, $s1, 0x3BE
    /* 4E264 8005DA64 98032292 */  lbu        $v0, 0x398($s1)
    /* 4E268 8005DA68 00000000 */  nop
    /* 4E26C 8005DA6C 21105300 */  addu       $v0, $v0, $s3
    /* 4E270 8005DA70 0D004390 */  lbu        $v1, 0xD($v0)
    /* 4E274 8005DA74 06000224 */  addiu      $v0, $zero, 0x6
    /* 4E278 8005DA78 0D006214 */  bne        $v1, $v0, .L8005DAB0
    /* 4E27C 8005DA7C 00000000 */   nop
    /* 4E280 8005DA80 91032292 */  lbu        $v0, 0x391($s1)
    /* 4E284 8005DA84 00000000 */  nop
    /* 4E288 8005DA88 0900422C */  sltiu      $v0, $v0, 0x9
    /* 4E28C 8005DA8C 08004010 */  beqz       $v0, .L8005DAB0
    /* 4E290 8005DA90 00141000 */   sll       $v0, $s0, 16
    /* 4E294 8005DA94 03140200 */  sra        $v0, $v0, 16
    /* 4E298 8005DA98 80180200 */  sll        $v1, $v0, 2
    /* 4E29C 8005DA9C 21186200 */  addu       $v1, $v1, $v0
    /* 4E2A0 8005DAA0 BC032296 */  lhu        $v0, 0x3BC($s1)
    /* 4E2A4 8005DAA4 001A0300 */  sll        $v1, $v1, 8
    /* 4E2A8 8005DAA8 21104300 */  addu       $v0, $v0, $v1
  .L8005DAAC:
    /* 4E2AC 8005DAAC BC0322A6 */  sh         $v0, 0x3BC($s1)
  .L8005DAB0:
    /* 4E2B0 8005DAB0 98032292 */  lbu        $v0, 0x398($s1)
    /* 4E2B4 8005DAB4 00000000 */  nop
    /* 4E2B8 8005DAB8 21104202 */  addu       $v0, $s2, $v0
    /* 4E2BC 8005DABC FF024390 */  lbu        $v1, (0x1F8002FF & 0xFFFF)($v0)
    /* 4E2C0 8005DAC0 01000224 */  addiu      $v0, $zero, 0x1
    /* 4E2C4 8005DAC4 11006210 */  beq        $v1, $v0, .L8005DB0C
    /* 4E2C8 8005DAC8 02006228 */   slti      $v0, $v1, 0x2
    /* 4E2CC 8005DACC 05004010 */  beqz       $v0, .L8005DAE4
    /* 4E2D0 8005DAD0 00000000 */   nop
    /* 4E2D4 8005DAD4 13006010 */  beqz       $v1, .L8005DB24
    /* 4E2D8 8005DAD8 00141000 */   sll       $v0, $s0, 16
    /* 4E2DC 8005DADC D0760108 */  j          .L8005DB40
    /* 4E2E0 8005DAE0 00000000 */   nop
  .L8005DAE4:
    /* 4E2E4 8005DAE4 02000224 */  addiu      $v0, $zero, 0x2
    /* 4E2E8 8005DAE8 15006214 */  bne        $v1, $v0, .L8005DB40
    /* 4E2EC 8005DAEC 00141000 */   sll       $v0, $s0, 16
    /* 4E2F0 8005DAF0 03140200 */  sra        $v0, $v0, 16
    /* 4E2F4 8005DAF4 40180200 */  sll        $v1, $v0, 1
    /* 4E2F8 8005DAF8 21186200 */  addu       $v1, $v1, $v0
    /* 4E2FC 8005DAFC BC032296 */  lhu        $v0, 0x3BC($s1)
    /* 4E300 8005DB00 001A0300 */  sll        $v1, $v1, 8
    /* 4E304 8005DB04 CF760108 */  j          .L8005DB3C
    /* 4E308 8005DB08 21104300 */   addu      $v0, $v0, $v1
  .L8005DB0C:
    /* 4E30C 8005DB0C 00141000 */  sll        $v0, $s0, 16
    /* 4E310 8005DB10 BC032396 */  lhu        $v1, 0x3BC($s1)
    /* 4E314 8005DB14 03120200 */  sra        $v0, $v0, 8
    /* 4E318 8005DB18 23186200 */  subu       $v1, $v1, $v0
    /* 4E31C 8005DB1C D0760108 */  j          .L8005DB40
    /* 4E320 8005DB20 BC0323A6 */   sh        $v1, 0x3BC($s1)
  .L8005DB24:
    /* 4E324 8005DB24 03140200 */  sra        $v0, $v0, 16
    /* 4E328 8005DB28 80180200 */  sll        $v1, $v0, 2
    /* 4E32C 8005DB2C 21186200 */  addu       $v1, $v1, $v0
    /* 4E330 8005DB30 BC032296 */  lhu        $v0, 0x3BC($s1)
    /* 4E334 8005DB34 001A0300 */  sll        $v1, $v1, 8
    /* 4E338 8005DB38 23104300 */  subu       $v0, $v0, $v1
  .L8005DB3C:
    /* 4E33C 8005DB3C BC0322A6 */  sh         $v0, 0x3BC($s1)
  .L8005DB40:
    /* 4E340 8005DB40 91032292 */  lbu        $v0, 0x391($s1)
    /* 4E344 8005DB44 00000000 */  nop
    /* 4E348 8005DB48 FFFF4324 */  addiu      $v1, $v0, -0x1
    /* 4E34C 8005DB4C 1900622C */  sltiu      $v0, $v1, 0x19
    /* 4E350 8005DB50 45004010 */  beqz       $v0, .L8005DC68
    /* 4E354 8005DB54 80100300 */   sll       $v0, $v1, 2
    /* 4E358 8005DB58 0180013C */  lui        $at, %hi(jtbl_80012204)
    /* 4E35C 8005DB5C 21082200 */  addu       $at, $at, $v0
    /* 4E360 8005DB60 0422228C */  lw         $v0, %lo(jtbl_80012204)($at)
    /* 4E364 8005DB64 00000000 */  nop
    /* 4E368 8005DB68 08004000 */  jr         $v0
    /* 4E36C 8005DB6C 00000000 */   nop
  jlabel .L8005DB70
    /* 4E370 8005DB70 99032392 */  lbu        $v1, 0x399($s1)
    /* 4E374 8005DB74 00000000 */  nop
    /* 4E378 8005DB78 07006014 */  bnez       $v1, .L8005DB98
    /* 4E37C 8005DB7C 01000224 */   addiu     $v0, $zero, 0x1
    /* 4E380 8005DB80 F402428E */  lw         $v0, 0x2F4($s2)
    /* 4E384 8005DB84 00000000 */  nop
    /* 4E388 8005DB88 02004284 */  lh         $v0, 0x2($v0)
    /* 4E38C 8005DB8C 00000000 */  nop
    /* 4E390 8005DB90 09004004 */  bltz       $v0, .L8005DBB8
    /* 4E394 8005DB94 01000224 */   addiu     $v0, $zero, 0x1
  .L8005DB98:
    /* 4E398 8005DB98 41006214 */  bne        $v1, $v0, .L8005DCA0
    /* 4E39C 8005DB9C 00000000 */   nop
    /* 4E3A0 8005DBA0 F402428E */  lw         $v0, 0x2F4($s2)
    /* 4E3A4 8005DBA4 00000000 */  nop
    /* 4E3A8 8005DBA8 02004284 */  lh         $v0, 0x2($v0)
    /* 4E3AC 8005DBAC 00000000 */  nop
    /* 4E3B0 8005DBB0 3C004018 */  blez       $v0, .L8005DCA4
    /* 4E3B4 8005DBB4 001C1000 */   sll       $v1, $s0, 16
  jlabel .L8005DBB8
    /* 4E3B8 8005DBB8 21202002 */  addu       $a0, $s1, $zero
    /* 4E3BC 8005DBBC BC032526 */  addiu      $a1, $s1, 0x3BC
    /* 4E3C0 8005DBC0 BE032626 */  addiu      $a2, $s1, 0x3BE
    /* 4E3C4 8005DBC4 2185020C */  jal        func_800A1484
    /* 4E3C8 8005DBC8 000C0724 */   addiu     $a3, $zero, 0xC00
    /* 4E3CC 8005DBCC 29770108 */  j          .L8005DCA4
    /* 4E3D0 8005DBD0 001C1000 */   sll       $v1, $s0, 16
  jlabel .L8005DBD4
    /* 4E3D4 8005DBD4 21202002 */  addu       $a0, $s1, $zero
    /* 4E3D8 8005DBD8 BC032526 */  addiu      $a1, $s1, 0x3BC
    /* 4E3DC 8005DBDC BE032626 */  addiu      $a2, $s1, 0x3BE
    /* 4E3E0 8005DBE0 2185020C */  jal        func_800A1484
    /* 4E3E4 8005DBE4 00100724 */   addiu     $a3, $zero, 0x1000
    /* 4E3E8 8005DBE8 29770108 */  j          .L8005DCA4
    /* 4E3EC 8005DBEC 001C1000 */   sll       $v1, $s0, 16
  jlabel .L8005DBF0
    /* 4E3F0 8005DBF0 98032292 */  lbu        $v0, 0x398($s1)
    /* 4E3F4 8005DBF4 00000000 */  nop
    /* 4E3F8 8005DBF8 21104202 */  addu       $v0, $s2, $v0
    /* 4E3FC 8005DBFC FF024290 */  lbu        $v0, 0x2FF($v0)
    /* 4E400 8005DC00 00000000 */  nop
    /* 4E404 8005DC04 0200422C */  sltiu      $v0, $v0, 0x2
    /* 4E408 8005DC08 24004010 */  beqz       $v0, .L8005DC9C
    /* 4E40C 8005DC0C 21202002 */   addu      $a0, $s1, $zero
    /* 4E410 8005DC10 BC032526 */  addiu      $a1, $s1, 0x3BC
    /* 4E414 8005DC14 BE032626 */  addiu      $a2, $s1, 0x3BE
    /* 4E418 8005DC18 2185020C */  jal        func_800A1484
    /* 4E41C 8005DC1C 00120724 */   addiu     $a3, $zero, 0x1200
    /* 4E420 8005DC20 29770108 */  j          .L8005DCA4
    /* 4E424 8005DC24 001C1000 */   sll       $v1, $s0, 16
  jlabel .L8005DC28
    /* 4E428 8005DC28 98032292 */  lbu        $v0, 0x398($s1)
    /* 4E42C 8005DC2C 00000000 */  nop
    /* 4E430 8005DC30 21106202 */  addu       $v0, $s3, $v0
    /* 4E434 8005DC34 0D004390 */  lbu        $v1, 0xD($v0)
    /* 4E438 8005DC38 06000224 */  addiu      $v0, $zero, 0x6
    /* 4E43C 8005DC3C 0A006214 */  bne        $v1, $v0, .L8005DC68
    /* 4E440 8005DC40 00000000 */   nop
    /* 4E444 8005DC44 99032292 */  lbu        $v0, 0x399($s1)
    /* 4E448 8005DC48 BC032486 */  lh         $a0, 0x3BC($s1)
    /* 4E44C 8005DC4C 01004238 */  xori       $v0, $v0, 0x1
    /* 4E450 8005DC50 80100200 */  sll        $v0, $v0, 2
    /* 4E454 8005DC54 21105200 */  addu       $v0, $v0, $s2
    /* 4E458 8005DC58 1403458C */  lw         $a1, 0x314($v0)
    /* 4E45C 8005DC5C DB69010C */  jal        func_8005A76C
    /* 4E460 8005DC60 05000624 */   addiu     $a2, $zero, 0x5
    /* 4E464 8005DC64 BC0322A6 */  sh         $v0, 0x3BC($s1)
  jlabel .L8005DC68
    /* 4E468 8005DC68 98032292 */  lbu        $v0, 0x398($s1)
    /* 4E46C 8005DC6C 00000000 */  nop
    /* 4E470 8005DC70 21104202 */  addu       $v0, $s2, $v0
    /* 4E474 8005DC74 FF024290 */  lbu        $v0, (0x1F8002FF & 0xFFFF)($v0)
    /* 4E478 8005DC78 00000000 */  nop
    /* 4E47C 8005DC7C 07004014 */  bnez       $v0, .L8005DC9C
    /* 4E480 8005DC80 21202002 */   addu      $a0, $s1, $zero
    /* 4E484 8005DC84 BC032526 */  addiu      $a1, $s1, 0x3BC
    /* 4E488 8005DC88 BE032626 */  addiu      $a2, $s1, 0x3BE
    /* 4E48C 8005DC8C 2185020C */  jal        func_800A1484
    /* 4E490 8005DC90 00140724 */   addiu     $a3, $zero, 0x1400
    /* 4E494 8005DC94 29770108 */  j          .L8005DCA4
    /* 4E498 8005DC98 001C1000 */   sll       $v1, $s0, 16
  .L8005DC9C:
    /* 4E49C 8005DC9C E10320A2 */  sb         $zero, 0x3E1($s1)
  jlabel .L8005DCA0
    /* 4E4A0 8005DCA0 001C1000 */  sll        $v1, $s0, 16
  .L8005DCA4:
    /* 4E4A4 8005DCA4 BC032286 */  lh         $v0, 0x3BC($s1)
    /* 4E4A8 8005DCA8 031C0300 */  sra        $v1, $v1, 16
    /* 4E4AC 8005DCAC 18006200 */  mult       $v1, $v0
    /* 4E4B0 8005DCB0 F402448E */  lw         $a0, (0x1F8002F4 & 0xFFFF)($s2)
    /* 4E4B4 8005DCB4 12280000 */  mflo       $a1
    /* 4E4B8 8005DCB8 02008284 */  lh         $v0, 0x2($a0)
    /* 4E4BC 8005DCBC 00000000 */  nop
    /* 4E4C0 8005DCC0 18006200 */  mult       $v1, $v0
    /* 4E4C4 8005DCC4 12180000 */  mflo       $v1
    /* 4E4C8 8005DCC8 2A106500 */  slt        $v0, $v1, $a1
    /* 4E4CC 8005DCCC 0F004010 */  beqz       $v0, .L8005DD0C
    /* 4E4D0 8005DCD0 00000000 */   nop
    /* 4E4D4 8005DCD4 BE032386 */  lh         $v1, 0x3BE($s1)
    /* 4E4D8 8005DCD8 06008284 */  lh         $v0, 0x6($a0)
    /* 4E4DC 8005DCDC 00000000 */  nop
    /* 4E4E0 8005DCE0 23206200 */  subu       $a0, $v1, $v0
    /* 4E4E4 8005DCE4 02008104 */  bgez       $a0, .L8005DCF0
    /* 4E4E8 8005DCE8 21108000 */   addu      $v0, $a0, $zero
    /* 4E4EC 8005DCEC 23100200 */  negu       $v0, $v0
  .L8005DCF0:
    /* 4E4F0 8005DCF0 00084228 */  slti       $v0, $v0, 0x800
    /* 4E4F4 8005DCF4 05004010 */  beqz       $v0, .L8005DD0C
    /* 4E4F8 8005DCF8 00000000 */   nop
    /* 4E4FC 8005DCFC 02008104 */  bgez       $a0, .L8005DD08
    /* 4E500 8005DD00 00086224 */   addiu     $v0, $v1, 0x800
    /* 4E504 8005DD04 00F86224 */  addiu      $v0, $v1, -0x800
  .L8005DD08:
    /* 4E508 8005DD08 BE0322A6 */  sh         $v0, 0x3BE($s1)
  .L8005DD0C:
    /* 4E50C 8005DD0C 98032292 */  lbu        $v0, 0x398($s1)
    /* 4E510 8005DD10 00000000 */  nop
    /* 4E514 8005DD14 21104202 */  addu       $v0, $s2, $v0
    /* 4E518 8005DD18 CF024290 */  lbu        $v0, (0x1F8002CF & 0xFFFF)($v0)
    /* 4E51C 8005DD1C 00000000 */  nop
    /* 4E520 8005DD20 72004014 */  bnez       $v0, .L8005DEEC
    /* 4E524 8005DD24 02000224 */   addiu     $v0, $zero, 0x2
    /* 4E528 8005DD28 E2032392 */  lbu        $v1, 0x3E2($s1)
    /* 4E52C 8005DD2C 00000000 */  nop
    /* 4E530 8005DD30 6E006214 */  bne        $v1, $v0, .L8005DEEC
    /* 4E534 8005DD34 00000000 */   nop
    /* 4E538 8005DD38 F402438E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s2)
    /* 4E53C 8005DD3C 00000000 */  nop
    /* 4E540 8005DD40 02006284 */  lh         $v0, 0x2($v1)
    /* 4E544 8005DD44 00000000 */  nop
    /* 4E548 8005DD48 02004104 */  bgez       $v0, .L8005DD54
    /* 4E54C 8005DD4C 00000000 */   nop
    /* 4E550 8005DD50 23100200 */  negu       $v0, $v0
  .L8005DD54:
    /* 4E554 8005DD54 0B114228 */  slti       $v0, $v0, 0x110B
    /* 4E558 8005DD58 65004014 */  bnez       $v0, .L8005DEF0
    /* 4E55C 8005DD5C 00000000 */   nop
    /* 4E560 8005DD60 99032292 */  lbu        $v0, 0x399($s1)
    /* 4E564 8005DD64 A8036590 */  lbu        $a1, 0x3A8($v1)
    /* 4E568 8005DD68 C0210200 */  sll        $a0, $v0, 7
    /* 4E56C 8005DD6C 2310A400 */  subu       $v0, $a1, $a0
    /* 4E570 8005DD70 FF004330 */  andi       $v1, $v0, 0xFF
    /* 4E574 8005DD74 8100622C */  sltiu      $v0, $v1, 0x81
    /* 4E578 8005DD78 08004014 */  bnez       $v0, .L8005DD9C
    /* 4E57C 8005DD7C 20006228 */   slti      $v0, $v1, 0x20
    /* 4E580 8005DD80 23108500 */  subu       $v0, $a0, $a1
    /* 4E584 8005DD84 FF004230 */  andi       $v0, $v0, 0xFF
    /* 4E588 8005DD88 20004228 */  slti       $v0, $v0, 0x20
    /* 4E58C 8005DD8C 57004010 */  beqz       $v0, .L8005DEEC
    /* 4E590 8005DD90 00000000 */   nop
    /* 4E594 8005DD94 69770108 */  j          .L8005DDA4
    /* 4E598 8005DD98 00000000 */   nop
  .L8005DD9C:
    /* 4E59C 8005DD9C 53004010 */  beqz       $v0, .L8005DEEC
    /* 4E5A0 8005DDA0 00000000 */   nop
  .L8005DDA4:
    /* 4E5A4 8005DDA4 F402438E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s2)
    /* 4E5A8 8005DDA8 99032292 */  lbu        $v0, 0x399($s1)
    /* 4E5AC 8005DDAC 02006484 */  lh         $a0, 0x2($v1)
    /* 4E5B0 8005DDB0 06006584 */  lh         $a1, 0x6($v1)
    /* 4E5B4 8005DDB4 02004014 */  bnez       $v0, .L8005DDC0
    /* 4E5B8 8005DDB8 E0CC0624 */   addiu     $a2, $zero, -0x3320
    /* 4E5BC 8005DDBC 20330624 */  addiu      $a2, $zero, 0x3320
  .L8005DDC0:
    /* 4E5C0 8005DDC0 DB6C010C */  jal        func_8005B36C
    /* 4E5C4 8005DDC4 21380000 */   addu      $a3, $zero, $zero
    /* 4E5C8 8005DDC8 BC032686 */  lh         $a2, 0x3BC($s1)
    /* 4E5CC 8005DDCC F402438E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s2)
    /* 4E5D0 8005DDD0 BE032786 */  lh         $a3, 0x3BE($s1)
    /* 4E5D4 8005DDD4 02006484 */  lh         $a0, 0x2($v1)
    /* 4E5D8 8005DDD8 06006584 */  lh         $a1, 0x6($v1)
    /* 4E5DC 8005DDDC DB6C010C */  jal        func_8005B36C
    /* 4E5E0 8005DDE0 21804000 */   addu      $s0, $v0, $zero
    /* 4E5E4 8005DDE4 21384000 */  addu       $a3, $v0, $zero
    /* 4E5E8 8005DDE8 F402428E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s2)
    /* 4E5EC 8005DDEC 99032392 */  lbu        $v1, 0x399($s1)
    /* 4E5F0 8005DDF0 02004484 */  lh         $a0, 0x2($v0)
    /* 4E5F4 8005DDF4 02006014 */  bnez       $v1, .L8005DE00
    /* 4E5F8 8005DDF8 20338524 */   addiu     $a1, $a0, 0x3320
    /* 4E5FC 8005DDFC E0CC8524 */  addiu      $a1, $a0, -0x3320
  .L8005DE00:
    /* 4E600 8005DE00 06004284 */  lh         $v0, 0x6($v0)
    /* 4E604 8005DE04 00000000 */  nop
    /* 4E608 8005DE08 18004200 */  mult       $v0, $v0
    /* 4E60C 8005DE0C 99032392 */  lbu        $v1, 0x399($s1)
    /* 4E610 8005DE10 12300000 */  mflo       $a2
    /* 4E614 8005DE14 0C006014 */  bnez       $v1, .L8005DE48
    /* 4E618 8005DE18 20338224 */   addiu     $v0, $a0, 0x3320
    /* 4E61C 8005DE1C E0CC8224 */  addiu      $v0, $a0, -0x3320
    /* 4E620 8005DE20 1800A200 */  mult       $a1, $v0
    /* 4E624 8005DE24 3F06023C */  lui        $v0, (0x63FFFFF >> 16)
    /* 4E628 8005DE28 FFFF4234 */  ori        $v0, $v0, (0x63FFFFF & 0xFFFF)
    /* 4E62C 8005DE2C 12400000 */  mflo       $t0
    /* 4E630 8005DE30 21180601 */  addu       $v1, $t0, $a2
    /* 4E634 8005DE34 2A104300 */  slt        $v0, $v0, $v1
    /* 4E638 8005DE38 0B004010 */  beqz       $v0, .L8005DE68
    /* 4E63C 8005DE3C 2310F000 */   subu      $v0, $a3, $s0
    /* 4E640 8005DE40 BB770108 */  j          .L8005DEEC
    /* 4E644 8005DE44 00000000 */   nop
  .L8005DE48:
    /* 4E648 8005DE48 1800A200 */  mult       $a1, $v0
    /* 4E64C 8005DE4C 3F06023C */  lui        $v0, (0x63FFFFF >> 16)
    /* 4E650 8005DE50 FFFF4234 */  ori        $v0, $v0, (0x63FFFFF & 0xFFFF)
    /* 4E654 8005DE54 12400000 */  mflo       $t0
    /* 4E658 8005DE58 21180601 */  addu       $v1, $t0, $a2
    /* 4E65C 8005DE5C 2A104300 */  slt        $v0, $v0, $v1
    /* 4E660 8005DE60 22004014 */  bnez       $v0, .L8005DEEC
    /* 4E664 8005DE64 2310F000 */   subu      $v0, $a3, $s0
  .L8005DE68:
    /* 4E668 8005DE68 FF004330 */  andi       $v1, $v0, 0xFF
    /* 4E66C 8005DE6C 8100622C */  sltiu      $v0, $v1, 0x81
    /* 4E670 8005DE70 08004014 */  bnez       $v0, .L8005DE94
    /* 4E674 8005DE74 11006228 */   slti      $v0, $v1, 0x11
    /* 4E678 8005DE78 23100702 */  subu       $v0, $s0, $a3
    /* 4E67C 8005DE7C FF004230 */  andi       $v0, $v0, 0xFF
    /* 4E680 8005DE80 11004228 */  slti       $v0, $v0, 0x11
    /* 4E684 8005DE84 19004010 */  beqz       $v0, .L8005DEEC
    /* 4E688 8005DE88 00000000 */   nop
    /* 4E68C 8005DE8C A7770108 */  j          .L8005DE9C
    /* 4E690 8005DE90 00000000 */   nop
  .L8005DE94:
    /* 4E694 8005DE94 15004010 */  beqz       $v0, .L8005DEEC
    /* 4E698 8005DE98 00000000 */   nop
  .L8005DE9C:
    /* 4E69C 8005DE9C 06002286 */  lh         $v0, 0x6($s1)
    /* 4E6A0 8005DEA0 00000000 */  nop
    /* 4E6A4 8005DEA4 03004104 */  bgez       $v0, .L8005DEB4
    /* 4E6A8 8005DEA8 00000000 */   nop
    /* 4E6AC 8005DEAC AE770108 */  j          .L8005DEB8
    /* 4E6B0 8005DEB0 00FF4224 */   addiu     $v0, $v0, -0x100
  .L8005DEB4:
    /* 4E6B4 8005DEB4 00014224 */  addiu      $v0, $v0, 0x100
  .L8005DEB8:
    /* 4E6B8 8005DEB8 BE0322A6 */  sh         $v0, 0x3BE($s1)
    /* 4E6BC 8005DEBC 00140200 */  sll        $v0, $v0, 16
    /* 4E6C0 8005DEC0 031C0200 */  sra        $v1, $v0, 16
    /* 4E6C4 8005DEC4 02006104 */  bgez       $v1, .L8005DED0
    /* 4E6C8 8005DEC8 21106000 */   addu      $v0, $v1, $zero
    /* 4E6CC 8005DECC 23100200 */  negu       $v0, $v0
  .L8005DED0:
    /* 4E6D0 8005DED0 B7084228 */  slti       $v0, $v0, 0x8B7
    /* 4E6D4 8005DED4 05004014 */  bnez       $v0, .L8005DEEC
    /* 4E6D8 8005DED8 00000000 */   nop
    /* 4E6DC 8005DEDC 02006104 */  bgez       $v1, .L8005DEE8
    /* 4E6E0 8005DEE0 B6080224 */   addiu     $v0, $zero, 0x8B6
    /* 4E6E4 8005DEE4 4AF70224 */  addiu      $v0, $zero, -0x8B6
  .L8005DEE8:
    /* 4E6E8 8005DEE8 BE0322A6 */  sh         $v0, 0x3BE($s1)
  .L8005DEEC:
    /* 4E6EC 8005DEEC F402438E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s2)
  .L8005DEF0:
    /* 4E6F0 8005DEF0 BC032286 */  lh         $v0, 0x3BC($s1)
    /* 4E6F4 8005DEF4 02006484 */  lh         $a0, 0x2($v1)
    /* 4E6F8 8005DEF8 00000000 */  nop
    /* 4E6FC 8005DEFC 23108200 */  subu       $v0, $a0, $v0
    /* 4E700 8005DF00 18004200 */  mult       $v0, $v0
    /* 4E704 8005DF04 06006384 */  lh         $v1, 0x6($v1)
    /* 4E708 8005DF08 BE032286 */  lh         $v0, 0x3BE($s1)
    /* 4E70C 8005DF0C 12280000 */  mflo       $a1
    /* 4E710 8005DF10 23106200 */  subu       $v0, $v1, $v0
    /* 4E714 8005DF14 00000000 */  nop
    /* 4E718 8005DF18 18004200 */  mult       $v0, $v0
    /* 4E71C 8005DF1C 5300133C */  lui        $s3, (0x53DCA1 >> 16)
    /* 4E720 8005DF20 A1DC7336 */  ori        $s3, $s3, (0x53DCA1 & 0xFFFF)
    /* 4E724 8005DF24 12480000 */  mflo       $t1
    /* 4E728 8005DF28 2110A900 */  addu       $v0, $a1, $t1
    /* 4E72C 8005DF2C 2A106202 */  slt        $v0, $s3, $v0
    /* 4E730 8005DF30 16004014 */  bnez       $v0, .L8005DF8C
    /* 4E734 8005DF34 00000000 */   nop
    /* 4E738 8005DF38 02002686 */  lh         $a2, 0x2($s1)
    /* 4E73C 8005DF3C 06002786 */  lh         $a3, 0x6($s1)
    /* 4E740 8005DF40 DB6C010C */  jal        func_8005B36C
    /* 4E744 8005DF44 21286000 */   addu      $a1, $v1, $zero
    /* 4E748 8005DF48 FF005030 */  andi       $s0, $v0, 0xFF
    /* 4E74C 8005DF4C 21200002 */  addu       $a0, $s0, $zero
    /* 4E750 8005DF50 A579000C */  jal        func_8001E694
    /* 4E754 8005DF54 E8090524 */   addiu     $a1, $zero, 0x9E8
    /* 4E758 8005DF58 F402438E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s2)
    /* 4E75C 8005DF5C 21200002 */  addu       $a0, $s0, $zero
    /* 4E760 8005DF60 02006394 */  lhu        $v1, 0x2($v1)
    /* 4E764 8005DF64 E8090524 */  addiu      $a1, $zero, 0x9E8
    /* 4E768 8005DF68 21186200 */  addu       $v1, $v1, $v0
    /* 4E76C 8005DF6C 6979000C */  jal        func_8001E5A4
    /* 4E770 8005DF70 BC0323A6 */   sh        $v1, 0x3BC($s1)
    /* 4E774 8005DF74 F402438E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s2)
    /* 4E778 8005DF78 00000000 */  nop
    /* 4E77C 8005DF7C 06006394 */  lhu        $v1, 0x6($v1)
    /* 4E780 8005DF80 00000000 */  nop
    /* 4E784 8005DF84 21186200 */  addu       $v1, $v1, $v0
    /* 4E788 8005DF88 BE0323A6 */  sh         $v1, 0x3BE($s1)
  .L8005DF8C:
    /* 4E78C 8005DF8C F402438E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s2)
    /* 4E790 8005DF90 02002686 */  lh         $a2, 0x2($s1)
    /* 4E794 8005DF94 02006484 */  lh         $a0, 0x2($v1)
    /* 4E798 8005DF98 00000000 */  nop
    /* 4E79C 8005DF9C 23108600 */  subu       $v0, $a0, $a2
    /* 4E7A0 8005DFA0 18004200 */  mult       $v0, $v0
    /* 4E7A4 8005DFA4 06002786 */  lh         $a3, 0x6($s1)
    /* 4E7A8 8005DFA8 06006384 */  lh         $v1, 0x6($v1)
    /* 4E7AC 8005DFAC 12280000 */  mflo       $a1
    /* 4E7B0 8005DFB0 23106700 */  subu       $v0, $v1, $a3
    /* 4E7B4 8005DFB4 00000000 */  nop
    /* 4E7B8 8005DFB8 18004200 */  mult       $v0, $v0
    /* 4E7BC 8005DFBC 12480000 */  mflo       $t1
    /* 4E7C0 8005DFC0 2110A900 */  addu       $v0, $a1, $t1
    /* 4E7C4 8005DFC4 2A106202 */  slt        $v0, $s3, $v0
    /* 4E7C8 8005DFC8 14004014 */  bnez       $v0, .L8005E01C
    /* 4E7CC 8005DFCC 00000000 */   nop
    /* 4E7D0 8005DFD0 DB6C010C */  jal        func_8005B36C
    /* 4E7D4 8005DFD4 21286000 */   addu      $a1, $v1, $zero
    /* 4E7D8 8005DFD8 FF005030 */  andi       $s0, $v0, 0xFF
    /* 4E7DC 8005DFDC 21200002 */  addu       $a0, $s0, $zero
    /* 4E7E0 8005DFE0 A579000C */  jal        func_8001E694
    /* 4E7E4 8005DFE4 E8090524 */   addiu     $a1, $zero, 0x9E8
    /* 4E7E8 8005DFE8 F402438E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s2)
    /* 4E7EC 8005DFEC 21200002 */  addu       $a0, $s0, $zero
    /* 4E7F0 8005DFF0 02006394 */  lhu        $v1, 0x2($v1)
    /* 4E7F4 8005DFF4 E8090524 */  addiu      $a1, $zero, 0x9E8
    /* 4E7F8 8005DFF8 21186200 */  addu       $v1, $v1, $v0
    /* 4E7FC 8005DFFC 6979000C */  jal        func_8001E5A4
    /* 4E800 8005E000 BC0323A6 */   sh        $v1, 0x3BC($s1)
    /* 4E804 8005E004 F402438E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s2)
    /* 4E808 8005E008 00000000 */  nop
    /* 4E80C 8005E00C 06006394 */  lhu        $v1, 0x6($v1)
    /* 4E810 8005E010 00000000 */  nop
    /* 4E814 8005E014 21186200 */  addu       $v1, $v1, $v0
    /* 4E818 8005E018 BE0323A6 */  sh         $v1, 0x3BE($s1)
  .L8005E01C:
    /* 4E81C 8005E01C BC032386 */  lh         $v1, 0x3BC($s1)
    /* 4E820 8005E020 00000000 */  nop
    /* 4E824 8005E024 02006104 */  bgez       $v1, .L8005E030
    /* 4E828 8005E028 21106000 */   addu      $v0, $v1, $zero
    /* 4E82C 8005E02C 23100200 */  negu       $v0, $v0
  .L8005E030:
    /* 4E830 8005E030 F1324228 */  slti       $v0, $v0, 0x32F1
    /* 4E834 8005E034 05004014 */  bnez       $v0, .L8005E04C
    /* 4E838 8005E038 00000000 */   nop
    /* 4E83C 8005E03C 02006018 */  blez       $v1, .L8005E048
    /* 4E840 8005E040 10CD0224 */   addiu     $v0, $zero, -0x32F0
    /* 4E844 8005E044 F0320224 */  addiu      $v0, $zero, 0x32F0
  .L8005E048:
    /* 4E848 8005E048 BC0322A6 */  sh         $v0, 0x3BC($s1)
  .L8005E04C:
    /* 4E84C 8005E04C BE032386 */  lh         $v1, 0x3BE($s1)
    /* 4E850 8005E050 00000000 */  nop
    /* 4E854 8005E054 02006104 */  bgez       $v1, .L8005E060
    /* 4E858 8005E058 21106000 */   addu      $v0, $v1, $zero
    /* 4E85C 8005E05C 23100200 */  negu       $v0, $v0
  .L8005E060:
    /* 4E860 8005E060 01214228 */  slti       $v0, $v0, 0x2101
    /* 4E864 8005E064 05004014 */  bnez       $v0, .L8005E07C
    /* 4E868 8005E068 00000000 */   nop
    /* 4E86C 8005E06C 02006018 */  blez       $v1, .L8005E078
    /* 4E870 8005E070 30DF0224 */   addiu     $v0, $zero, -0x20D0
    /* 4E874 8005E074 D0200224 */  addiu      $v0, $zero, 0x20D0
  .L8005E078:
    /* 4E878 8005E078 BE0322A6 */  sh         $v0, 0x3BE($s1)
  .L8005E07C:
    /* 4E87C 8005E07C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 4E880 8005E080 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 4E884 8005E084 1800B28F */  lw         $s2, 0x18($sp)
    /* 4E888 8005E088 1400B18F */  lw         $s1, 0x14($sp)
    /* 4E88C 8005E08C 1000B08F */  lw         $s0, 0x10($sp)
    /* 4E890 8005E090 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 4E894 8005E094 0800E003 */  jr         $ra
    /* 4E898 8005E098 00000000 */   nop
endlabel func_8005D28C
