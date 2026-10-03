nonmatching func_8002B38C, 0x218

glabel func_8002B38C
    /* 1BB8C 8002B38C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1BB90 8002B390 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1BB94 8002B394 21808000 */  addu       $s0, $a0, $zero
    /* 1BB98 8002B398 1800BFAF */  sw         $ra, 0x18($sp)
    /* 1BB9C 8002B39C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1BBA0 8002B3A0 B1030292 */  lbu        $v0, 0x3B1($s0)
    /* 1BBA4 8002B3A4 00000000 */  nop
    /* 1BBA8 8002B3A8 78004014 */  bnez       $v0, .L8002B58C
    /* 1BBAC 8002B3AC 801F113C */   lui       $s1, (0x1F8002F4 >> 16)
    /* 1BBB0 8002B3B0 98030492 */  lbu        $a0, 0x398($s0)
    /* 1BBB4 8002B3B4 D4030396 */  lhu        $v1, 0x3D4($s0)
    /* 1BBB8 8002B3B8 40100400 */  sll        $v0, $a0, 1
    /* 1BBBC 8002B3BC 801F013C */  lui        $at, (0x1F800016 >> 16)
    /* 1BBC0 8002B3C0 21084100 */  addu       $at, $v0, $at
    /* 1BBC4 8002B3C4 16002294 */  lhu        $v0, (0x1F800016 & 0xFFFF)($at)
    /* 1BBC8 8002B3C8 00000000 */  nop
    /* 1BBCC 8002B3CC 24104300 */  and        $v0, $v0, $v1
    /* 1BBD0 8002B3D0 39004014 */  bnez       $v0, .L8002B4B8
    /* 1BBD4 8002B3D4 04000224 */   addiu     $v0, $zero, 0x4
    /* 1BBD8 8002B3D8 801F043C */  lui        $a0, (0x1F8002F4 >> 16)
    /* 1BBDC 8002B3DC F402848C */  lw         $a0, (0x1F8002F4 & 0xFFFF)($a0)
    /* 1BBE0 8002B3E0 00000000 */  nop
    /* 1BBE4 8002B3E4 96038390 */  lbu        $v1, 0x396($a0)
    /* 1BBE8 8002B3E8 00000000 */  nop
    /* 1BBEC 8002B3EC 67006214 */  bne        $v1, $v0, .L8002B58C
    /* 1BBF0 8002B3F0 00000000 */   nop
    /* 1BBF4 8002B3F4 801F053C */  lui        $a1, (0x1F8002B0 >> 16)
    /* 1BBF8 8002B3F8 B002A58C */  lw         $a1, (0x1F8002B0 & 0xFFFF)($a1)
    /* 1BBFC 8002B3FC 00000000 */  nop
    /* 1BC00 8002B400 6200A314 */  bne        $a1, $v1, .L8002B58C
    /* 1BC04 8002B404 00000000 */   nop
    /* 1BC08 8002B408 A4038290 */  lbu        $v0, 0x3A4($a0)
    /* 1BC0C 8002B40C AA030392 */  lbu        $v1, 0x3AA($s0)
    /* 1BC10 8002B410 00000000 */  nop
    /* 1BC14 8002B414 23104300 */  subu       $v0, $v0, $v1
    /* 1BC18 8002B418 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1BC1C 8002B41C 8100422C */  sltiu      $v0, $v0, 0x81
    /* 1BC20 8002B420 CA0382A4 */  sh         $v0, 0x3CA($a0)
    /* 1BC24 8002B424 96030392 */  lbu        $v1, 0x396($s0)
    /* 1BC28 8002B428 01000224 */  addiu      $v0, $zero, 0x1
    /* 1BC2C 8002B42C 1B006514 */  bne        $v1, $a1, .L8002B49C
    /* 1BC30 8002B430 B10302A2 */   sb        $v0, 0x3B1($s0)
    /* 1BC34 8002B434 8E030296 */  lhu        $v0, 0x38E($s0)
    /* 1BC38 8002B438 00000000 */  nop
    /* 1BC3C 8002B43C F1FF4224 */  addiu      $v0, $v0, -0xF
    /* 1BC40 8002B440 0200422C */  sltiu      $v0, $v0, 0x2
    /* 1BC44 8002B444 15004010 */  beqz       $v0, .L8002B49C
    /* 1BC48 8002B448 00000000 */   nop
    /* 1BC4C 8002B44C 801F063C */  lui        $a2, (0x1F8002F4 >> 16)
    /* 1BC50 8002B450 F402C68C */  lw         $a2, (0x1F8002F4 & 0xFFFF)($a2)
    /* 1BC54 8002B454 AA030492 */  lbu        $a0, 0x3AA($s0)
    /* 1BC58 8002B458 A403C590 */  lbu        $a1, 0x3A4($a2)
    /* 1BC5C 8002B45C 00000000 */  nop
    /* 1BC60 8002B460 23108500 */  subu       $v0, $a0, $a1
    /* 1BC64 8002B464 FF004330 */  andi       $v1, $v0, 0xFF
    /* 1BC68 8002B468 8100622C */  sltiu      $v0, $v1, 0x81
    /* 1BC6C 8002B46C 07004014 */  bnez       $v0, .L8002B48C
    /* 1BC70 8002B470 03190300 */   sra       $v1, $v1, 4
    /* 1BC74 8002B474 2310A400 */  subu       $v0, $a1, $a0
    /* 1BC78 8002B478 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1BC7C 8002B47C 03110200 */  sra        $v0, $v0, 4
    /* 1BC80 8002B480 10000324 */  addiu      $v1, $zero, 0x10
    /* 1BC84 8002B484 25AD0008 */  j          .L8002B494
    /* 1BC88 8002B488 23106200 */   subu      $v0, $v1, $v0
  .L8002B48C:
    /* 1BC8C 8002B48C 10000224 */  addiu      $v0, $zero, 0x10
    /* 1BC90 8002B490 23104300 */  subu       $v0, $v0, $v1
  .L8002B494:
    /* 1BC94 8002B494 63AD0008 */  j          .L8002B58C
    /* 1BC98 8002B498 C803C2A4 */   sh        $v0, 0x3C8($a2)
  .L8002B49C:
    /* 1BC9C 8002B49C AE79000C */  jal        func_8001E6B8
    /* 1BCA0 8002B4A0 05000424 */   addiu     $a0, $zero, 0x5
    /* 1BCA4 8002B4A4 12000324 */  addiu      $v1, $zero, 0x12
    /* 1BCA8 8002B4A8 F402248E */  lw         $a0, (0x1F8002F4 & 0xFFFF)($s1)
    /* 1BCAC 8002B4AC 23186200 */  subu       $v1, $v1, $v0
    /* 1BCB0 8002B4B0 63AD0008 */  j          .L8002B58C
    /* 1BCB4 8002B4B4 C80383A4 */   sh        $v1, 0x3C8($a0)
  .L8002B4B8:
    /* 1BCB8 8002B4B8 92030292 */  lbu        $v0, 0x392($s0)
    /* 1BCBC 8002B4BC 00000000 */  nop
    /* 1BCC0 8002B4C0 40180200 */  sll        $v1, $v0, 1
    /* 1BCC4 8002B4C4 21186200 */  addu       $v1, $v1, $v0
    /* 1BCC8 8002B4C8 80180300 */  sll        $v1, $v1, 2
    /* 1BCCC 8002B4CC 40110400 */  sll        $v0, $a0, 5
    /* 1BCD0 8002B4D0 21104400 */  addu       $v0, $v0, $a0
    /* 1BCD4 8002B4D4 C0100200 */  sll        $v0, $v0, 3
    /* 1BCD8 8002B4D8 21206200 */  addu       $a0, $v1, $v0
    /* 1BCDC 8002B4DC 1180013C */  lui        $at, %hi(D_8010C330)
    /* 1BCE0 8002B4E0 21082400 */  addu       $at, $at, $a0
    /* 1BCE4 8002B4E4 30C3228C */  lw         $v0, %lo(D_8010C330)($at)
    /* 1BCE8 8002B4E8 AC030392 */  lbu        $v1, 0x3AC($s0)
    /* 1BCEC 8002B4EC 02110200 */  srl        $v0, $v0, 4
    /* 1BCF0 8002B4F0 01004230 */  andi       $v0, $v0, 0x1
    /* 1BCF4 8002B4F4 1C006214 */  bne        $v1, $v0, .L8002B568
    /* 1BCF8 8002B4F8 00000000 */   nop
    /* 1BCFC 8002B4FC 1180013C */  lui        $at, %hi(D_8010C32C)
    /* 1BD00 8002B500 21082400 */  addu       $at, $at, $a0
    /* 1BD04 8002B504 2CC3228C */  lw         $v0, %lo(D_8010C32C)($at)
    /* 1BD08 8002B508 00000000 */  nop
    /* 1BD0C 8002B50C 02170200 */  srl        $v0, $v0, 28
    /* 1BD10 8002B510 FBFF4324 */  addiu      $v1, $v0, -0x5
    /* 1BD14 8002B514 0500622C */  sltiu      $v0, $v1, 0x5
    /* 1BD18 8002B518 10004010 */  beqz       $v0, .L8002B55C
    /* 1BD1C 8002B51C 80100300 */   sll       $v0, $v1, 2
    /* 1BD20 8002B520 0180013C */  lui        $at, %hi(jtbl_80010E0C)
    /* 1BD24 8002B524 21082200 */  addu       $at, $at, $v0
    /* 1BD28 8002B528 0C0E228C */  lw         $v0, %lo(jtbl_80010E0C)($at)
    /* 1BD2C 8002B52C 00000000 */  nop
    /* 1BD30 8002B530 08004000 */  jr         $v0
    /* 1BD34 8002B534 00000000 */   nop
  jlabel .L8002B538
    /* 1BD38 8002B538 03000224 */  addiu      $v0, $zero, 0x3
    /* 1BD3C 8002B53C 5FAD0008 */  j          .L8002B57C
    /* 1BD40 8002B540 B10302A2 */   sb        $v0, 0x3B1($s0)
  jlabel .L8002B544
    /* 1BD44 8002B544 04000224 */  addiu      $v0, $zero, 0x4
    /* 1BD48 8002B548 5FAD0008 */  j          .L8002B57C
    /* 1BD4C 8002B54C B10302A2 */   sb        $v0, 0x3B1($s0)
  jlabel .L8002B550
    /* 1BD50 8002B550 05000224 */  addiu      $v0, $zero, 0x5
    /* 1BD54 8002B554 5FAD0008 */  j          .L8002B57C
    /* 1BD58 8002B558 B10302A2 */   sb        $v0, 0x3B1($s0)
  .L8002B55C:
    /* 1BD5C 8002B55C 06000224 */  addiu      $v0, $zero, 0x6
    /* 1BD60 8002B560 5FAD0008 */  j          .L8002B57C
    /* 1BD64 8002B564 B10302A2 */   sb        $v0, 0x3B1($s0)
  .L8002B568:
    /* 1BD68 8002B568 AE79000C */  jal        func_8001E6B8
    /* 1BD6C 8002B56C 03000424 */   addiu     $a0, $zero, 0x3
    /* 1BD70 8002B570 06000324 */  addiu      $v1, $zero, 0x6
    /* 1BD74 8002B574 23186200 */  subu       $v1, $v1, $v0
    /* 1BD78 8002B578 B10303A2 */  sb         $v1, 0x3B1($s0)
  .L8002B57C:
    /* 1BD7C 8002B57C AC030292 */  lbu        $v0, 0x3AC($s0)
    /* 1BD80 8002B580 F402238E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s1)
    /* 1BD84 8002B584 01004238 */  xori       $v0, $v0, 0x1
    /* 1BD88 8002B588 CA0362A4 */  sh         $v0, 0x3CA($v1)
  .L8002B58C:
    /* 1BD8C 8002B58C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 1BD90 8002B590 1400B18F */  lw         $s1, 0x14($sp)
    /* 1BD94 8002B594 1000B08F */  lw         $s0, 0x10($sp)
    /* 1BD98 8002B598 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1BD9C 8002B59C 0800E003 */  jr         $ra
    /* 1BDA0 8002B5A0 00000000 */   nop
endlabel func_8002B38C
