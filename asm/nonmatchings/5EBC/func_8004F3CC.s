nonmatching func_8004F3CC, 0x1C0

glabel func_8004F3CC
    /* 3FBCC 8004F3CC 1180043C */  lui        $a0, %hi(D_8010A5A8)
    /* 3FBD0 8004F3D0 A8A58490 */  lbu        $a0, %lo(D_8010A5A8)($a0)
    /* 3FBD4 8004F3D4 00000000 */  nop
    /* 3FBD8 8004F3D8 0600822C */  sltiu      $v0, $a0, 0x6
    /* 3FBDC 8004F3DC 69004010 */  beqz       $v0, .L8004F584
    /* 3FBE0 8004F3E0 801F053C */   lui       $a1, (0x1F8002C4 >> 16)
    /* 3FBE4 8004F3E4 80100400 */  sll        $v0, $a0, 2
    /* 3FBE8 8004F3E8 0180013C */  lui        $at, %hi(jtbl_80011CE4)
    /* 3FBEC 8004F3EC 21082200 */  addu       $at, $at, $v0
    /* 3FBF0 8004F3F0 E41C228C */  lw         $v0, %lo(jtbl_80011CE4)($at)
    /* 3FBF4 8004F3F4 00000000 */  nop
    /* 3FBF8 8004F3F8 08004000 */  jr         $v0
    /* 3FBFC 8004F3FC 00000000 */   nop
  jlabel .L8004F400
    /* 3FC00 8004F400 DF02A290 */  lbu        $v0, (0x1F8002DF & 0xFFFF)($a1)
    /* 3FC04 8004F404 00000000 */  nop
    /* 3FC08 8004F408 0200422C */  sltiu      $v0, $v0, 0x2
    /* 3FC0C 8004F40C 06004010 */  beqz       $v0, .L8004F428
    /* 3FC10 8004F410 00000000 */   nop
    /* 3FC14 8004F414 C402A28C */  lw         $v0, (0x1F8002C4 & 0xFFFF)($a1)
    /* 3FC18 8004F418 28230324 */  addiu      $v1, $zero, 0x2328
    /* 3FC1C 8004F41C 23186200 */  subu       $v1, $v1, $v0
    /* 3FC20 8004F420 2A3D0108 */  j          .L8004F4A8
    /* 3FC24 8004F424 C0100300 */   sll       $v0, $v1, 3
  .L8004F428:
    /* 3FC28 8004F428 C402A28C */  lw         $v0, (0x1F8002C4 & 0xFFFF)($a1)
    /* 3FC2C 8004F42C B80B0324 */  addiu      $v1, $zero, 0xBB8
    /* 3FC30 8004F430 23186200 */  subu       $v1, $v1, $v0
    /* 3FC34 8004F434 2A3D0108 */  j          .L8004F4A8
    /* 3FC38 8004F438 C0100300 */   sll       $v0, $v1, 3
  jlabel .L8004F43C
    /* 3FC3C 8004F43C DF02A290 */  lbu        $v0, 0x2DF($a1)
    /* 3FC40 8004F440 00000000 */  nop
    /* 3FC44 8004F444 0200422C */  sltiu      $v0, $v0, 0x2
    /* 3FC48 8004F448 06004010 */  beqz       $v0, .L8004F464
    /* 3FC4C 8004F44C 50460324 */   addiu     $v1, $zero, 0x4650
    /* 3FC50 8004F450 C402A28C */  lw         $v0, 0x2C4($a1)
    /* 3FC54 8004F454 00000000 */  nop
    /* 3FC58 8004F458 23186200 */  subu       $v1, $v1, $v0
    /* 3FC5C 8004F45C 603D0108 */  j          .L8004F580
    /* 3FC60 8004F460 C0100300 */   sll       $v0, $v1, 3
  .L8004F464:
    /* 3FC64 8004F464 C402A28C */  lw         $v0, 0x2C4($a1)
    /* 3FC68 8004F468 70170324 */  addiu      $v1, $zero, 0x1770
    /* 3FC6C 8004F46C 23186200 */  subu       $v1, $v1, $v0
    /* 3FC70 8004F470 603D0108 */  j          .L8004F580
    /* 3FC74 8004F474 C0100300 */   sll       $v0, $v1, 3
  jlabel .L8004F478
    /* 3FC78 8004F478 DF02A290 */  lbu        $v0, 0x2DF($a1)
    /* 3FC7C 8004F47C 00000000 */  nop
    /* 3FC80 8004F480 0200422C */  sltiu      $v0, $v0, 0x2
    /* 3FC84 8004F484 04004010 */  beqz       $v0, .L8004F498
    /* 3FC88 8004F488 00000000 */   nop
    /* 3FC8C 8004F48C C402A28C */  lw         $v0, 0x2C4($a1)
    /* 3FC90 8004F490 283D0108 */  j          .L8004F4A0
    /* 3FC94 8004F494 78690324 */   addiu     $v1, $zero, 0x6978
  .L8004F498:
    /* 3FC98 8004F498 C402A28C */  lw         $v0, 0x2C4($a1)
    /* 3FC9C 8004F49C 28230324 */  addiu      $v1, $zero, 0x2328
  .L8004F4A0:
    /* 3FCA0 8004F4A0 23186200 */  subu       $v1, $v1, $v0
    /* 3FCA4 8004F4A4 40100300 */  sll        $v0, $v1, 1
  .L8004F4A8:
    /* 3FCA8 8004F4A8 21104300 */  addu       $v0, $v0, $v1
    /* 3FCAC 8004F4AC 613D0108 */  j          .L8004F584
    /* 3FCB0 8004F4B0 40180200 */   sll       $v1, $v0, 1
  jlabel .L8004F4B4
    /* 3FCB4 8004F4B4 DF02A290 */  lbu        $v0, 0x2DF($a1)
    /* 3FCB8 8004F4B8 00000000 */  nop
    /* 3FCBC 8004F4BC 0200422C */  sltiu      $v0, $v0, 0x2
    /* 3FCC0 8004F4C0 04004010 */  beqz       $v0, .L8004F4D4
    /* 3FCC4 8004F4C4 00000000 */   nop
    /* 3FCC8 8004F4C8 C402A28C */  lw         $v0, 0x2C4($a1)
    /* 3FCCC 8004F4CC 373D0108 */  j          .L8004F4DC
    /* 3FCD0 8004F4D0 A08C0334 */   ori       $v1, $zero, 0x8CA0
  .L8004F4D4:
    /* 3FCD4 8004F4D4 C402A28C */  lw         $v0, 0x2C4($a1)
    /* 3FCD8 8004F4D8 E02E0324 */  addiu      $v1, $zero, 0x2EE0
  .L8004F4DC:
    /* 3FCDC 8004F4DC 23186200 */  subu       $v1, $v1, $v0
    /* 3FCE0 8004F4E0 C0100300 */  sll        $v0, $v1, 3
    /* 3FCE4 8004F4E4 21104300 */  addu       $v0, $v0, $v1
    /* 3FCE8 8004F4E8 C21F0200 */  srl        $v1, $v0, 31
    /* 3FCEC 8004F4EC 21104300 */  addu       $v0, $v0, $v1
    /* 3FCF0 8004F4F0 613D0108 */  j          .L8004F584
    /* 3FCF4 8004F4F4 43180200 */   sra       $v1, $v0, 1
  jlabel .L8004F4F8
    /* 3FCF8 8004F4F8 DF02A290 */  lbu        $v0, 0x2DF($a1)
    /* 3FCFC 8004F4FC 00000000 */  nop
    /* 3FD00 8004F500 0200422C */  sltiu      $v0, $v0, 0x2
    /* 3FD04 8004F504 05004010 */  beqz       $v0, .L8004F51C
    /* 3FD08 8004F508 6666043C */   lui       $a0, (0x66666667 >> 16)
    /* 3FD0C 8004F50C 67668434 */  ori        $a0, $a0, (0x66666667 & 0xFFFF)
    /* 3FD10 8004F510 C402A28C */  lw         $v0, 0x2C4($a1)
    /* 3FD14 8004F514 4A3D0108 */  j          .L8004F528
    /* 3FD18 8004F518 C8AF0334 */   ori       $v1, $zero, 0xAFC8
  .L8004F51C:
    /* 3FD1C 8004F51C 67668434 */  ori        $a0, $a0, (0x66666667 & 0xFFFF)
    /* 3FD20 8004F520 C402A28C */  lw         $v0, 0x2C4($a1)
    /* 3FD24 8004F524 983A0324 */  addiu      $v1, $zero, 0x3A98
  .L8004F528:
    /* 3FD28 8004F528 23186200 */  subu       $v1, $v1, $v0
    /* 3FD2C 8004F52C C0100300 */  sll        $v0, $v1, 3
    /* 3FD30 8004F530 21104300 */  addu       $v0, $v0, $v1
    /* 3FD34 8004F534 40100200 */  sll        $v0, $v0, 1
    /* 3FD38 8004F538 18004400 */  mult       $v0, $a0
    /* 3FD3C 8004F53C C3170200 */  sra        $v0, $v0, 31
    /* 3FD40 8004F540 10300000 */  mfhi       $a2
    /* 3FD44 8004F544 43180600 */  sra        $v1, $a2, 1
    /* 3FD48 8004F548 613D0108 */  j          .L8004F584
    /* 3FD4C 8004F54C 23186200 */   subu      $v1, $v1, $v0
  jlabel .L8004F550
    /* 3FD50 8004F550 DF02A290 */  lbu        $v0, 0x2DF($a1)
    /* 3FD54 8004F554 00000000 */  nop
    /* 3FD58 8004F558 0200422C */  sltiu      $v0, $v0, 0x2
    /* 3FD5C 8004F55C 04004010 */  beqz       $v0, .L8004F570
    /* 3FD60 8004F560 F0D20334 */   ori       $v1, $zero, 0xD2F0
    /* 3FD64 8004F564 C402A28C */  lw         $v0, 0x2C4($a1)
    /* 3FD68 8004F568 5F3D0108 */  j          .L8004F57C
    /* 3FD6C 8004F56C 23186200 */   subu      $v1, $v1, $v0
  .L8004F570:
    /* 3FD70 8004F570 C402A28C */  lw         $v0, 0x2C4($a1)
    /* 3FD74 8004F574 50460324 */  addiu      $v1, $zero, 0x4650
    /* 3FD78 8004F578 23186200 */  subu       $v1, $v1, $v0
  .L8004F57C:
    /* 3FD7C 8004F57C 40100300 */  sll        $v0, $v1, 1
  .L8004F580:
    /* 3FD80 8004F580 21184300 */  addu       $v1, $v0, $v1
  .L8004F584:
    /* 3FD84 8004F584 0800E003 */  jr         $ra
    /* 3FD88 8004F588 21106000 */   addu      $v0, $v1, $zero
endlabel func_8004F3CC
