nonmatching func_8004D464, 0x370

glabel func_8004D464
    /* 3DC64 8004D464 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 3DC68 8004D468 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3DC6C 8004D46C 21808000 */  addu       $s0, $a0, $zero
    /* 3DC70 8004D470 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 3DC74 8004D474 2198A000 */  addu       $s3, $a1, $zero
    /* 3DC78 8004D478 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3DC7C 8004D47C 2188E000 */  addu       $s1, $a3, $zero
    /* 3DC80 8004D480 68000524 */  addiu      $a1, $zero, 0x68
    /* 3DC84 8004D484 2800BFAF */  sw         $ra, 0x28($sp)
    /* 3DC88 8004D488 2400B5AF */  sw         $s5, 0x24($sp)
    /* 3DC8C 8004D48C 2000B4AF */  sw         $s4, 0x20($sp)
    /* 3DC90 8004D490 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3DC94 8004D494 AA030492 */  lbu        $a0, 0x3AA($s0)
    /* 3DC98 8004D498 A579000C */  jal        func_8001E694
    /* 3DC9C 8004D49C 21A0C000 */   addu      $s4, $a2, $zero
    /* 3DCA0 8004D4A0 02000396 */  lhu        $v1, 0x2($s0)
    /* 3DCA4 8004D4A4 801F043C */  lui        $a0, (0x1F8002F4 >> 16)
    /* 3DCA8 8004D4A8 F402848C */  lw         $a0, (0x1F8002F4 & 0xFFFF)($a0)
    /* 3DCAC 8004D4AC 21186200 */  addu       $v1, $v1, $v0
    /* 3DCB0 8004D4B0 020083A4 */  sh         $v1, 0x2($a0)
    /* 3DCB4 8004D4B4 801F033C */  lui        $v1, (0x1F8002F4 >> 16)
    /* 3DCB8 8004D4B8 F402638C */  lw         $v1, (0x1F8002F4 & 0xFFFF)($v1)
    /* 3DCBC 8004D4BC 00000000 */  nop
    /* 3DCC0 8004D4C0 04006294 */  lhu        $v0, 0x4($v1)
    /* 3DCC4 8004D4C4 00000000 */  nop
    /* 3DCC8 8004D4C8 20004224 */  addiu      $v0, $v0, 0x20
    /* 3DCCC 8004D4CC 040062A4 */  sh         $v0, 0x4($v1)
    /* 3DCD0 8004D4D0 801F033C */  lui        $v1, (0x1F8002F4 >> 16)
    /* 3DCD4 8004D4D4 F402638C */  lw         $v1, (0x1F8002F4 & 0xFFFF)($v1)
    /* 3DCD8 8004D4D8 21906002 */  addu       $s2, $s3, $zero
    /* 3DCDC 8004D4DC 04006284 */  lh         $v0, 0x4($v1)
    /* 3DCE0 8004D4E0 00000000 */  nop
    /* 3DCE4 8004D4E4 E1FF4228 */  slti       $v0, $v0, -0x1F
    /* 3DCE8 8004D4E8 03004014 */  bnez       $v0, .L8004D4F8
    /* 3DCEC 8004D4EC 801F153C */   lui       $s5, (0x1F8002F4 >> 16)
    /* 3DCF0 8004D4F0 E0FF0224 */  addiu      $v0, $zero, -0x20
    /* 3DCF4 8004D4F4 040062A4 */  sh         $v0, 0x4($v1)
  .L8004D4F8:
    /* 3DCF8 8004D4F8 AA030492 */  lbu        $a0, 0x3AA($s0)
    /* 3DCFC 8004D4FC 6979000C */  jal        func_8001E5A4
    /* 3DD00 8004D500 68000524 */   addiu     $a1, $zero, 0x68
    /* 3DD04 8004D504 21200002 */  addu       $a0, $s0, $zero
    /* 3DD08 8004D508 06000396 */  lhu        $v1, 0x6($s0)
    /* 3DD0C 8004D50C 801F053C */  lui        $a1, (0x1F8002F4 >> 16)
    /* 3DD10 8004D510 F402A58C */  lw         $a1, (0x1F8002F4 & 0xFFFF)($a1)
    /* 3DD14 8004D514 21186200 */  addu       $v1, $v1, $v0
    /* 3DD18 8004D518 1B4B010C */  jal        func_80052C6C
    /* 3DD1C 8004D51C 0600A3A4 */   sh        $v1, 0x6($a1)
    /* 3DD20 8004D520 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3DD24 8004D524 37004010 */  beqz       $v0, .L8004D604
    /* 3DD28 8004D528 01000224 */   addiu     $v0, $zero, 0x1
    /* 3DD2C 8004D52C 8E030396 */  lhu        $v1, 0x38E($s0)
    /* 3DD30 8004D530 00000000 */  nop
    /* 3DD34 8004D534 03006210 */  beq        $v1, $v0, .L8004D544
    /* 3DD38 8004D538 0D000224 */   addiu     $v0, $zero, 0xD
    /* 3DD3C 8004D53C 31006214 */  bne        $v1, $v0, .L8004D604
    /* 3DD40 8004D540 00000000 */   nop
  .L8004D544:
    /* 3DD44 8004D544 92030292 */  lbu        $v0, 0x392($s0)
    /* 3DD48 8004D548 98030492 */  lbu        $a0, 0x398($s0)
    /* 3DD4C 8004D54C 40180200 */  sll        $v1, $v0, 1
    /* 3DD50 8004D550 21186200 */  addu       $v1, $v1, $v0
    /* 3DD54 8004D554 80180300 */  sll        $v1, $v1, 2
    /* 3DD58 8004D558 40110400 */  sll        $v0, $a0, 5
    /* 3DD5C 8004D55C 21104400 */  addu       $v0, $v0, $a0
    /* 3DD60 8004D560 C0100200 */  sll        $v0, $v0, 3
    /* 3DD64 8004D564 21186200 */  addu       $v1, $v1, $v0
    /* 3DD68 8004D568 1180013C */  lui        $at, %hi(D_8010C32C)
    /* 3DD6C 8004D56C 21082300 */  addu       $at, $at, $v1
    /* 3DD70 8004D570 2CC3228C */  lw         $v0, %lo(D_8010C32C)($at)
    /* 3DD74 8004D574 09000424 */  addiu      $a0, $zero, 0x9
    /* 3DD78 8004D578 02130200 */  srl        $v0, $v0, 12
    /* 3DD7C 8004D57C 0F004230 */  andi       $v0, $v0, 0xF
    /* 3DD80 8004D580 23208200 */  subu       $a0, $a0, $v0
    /* 3DD84 8004D584 AE79000C */  jal        func_8001E6B8
    /* 3DD88 8004D588 40200400 */   sll       $a0, $a0, 1
    /* 3DD8C 8004D58C 801F033C */  lui        $v1, (0x1F8002F4 >> 16)
    /* 3DD90 8004D590 F402638C */  lw         $v1, (0x1F8002F4 & 0xFFFF)($v1)
    /* 3DD94 8004D594 00000000 */  nop
    /* 3DD98 8004D598 A4036390 */  lbu        $v1, 0x3A4($v1)
    /* 3DD9C 8004D59C 04004624 */  addiu      $a2, $v0, 0x4
    /* 3DDA0 8004D5A0 23186302 */  subu       $v1, $s3, $v1
    /* 3DDA4 8004D5A4 80FF6424 */  addiu      $a0, $v1, -0x80
    /* 3DDA8 8004D5A8 FF008330 */  andi       $v1, $a0, 0xFF
    /* 3DDAC 8004D5AC 8100622C */  sltiu      $v0, $v1, 0x81
    /* 3DDB0 8004D5B0 0C004014 */  bnez       $v0, .L8004D5E4
    /* 3DDB4 8004D5B4 AA2A023C */   lui       $v0, (0x2AAAAAAB >> 16)
    /* 3DDB8 8004D5B8 AA2A033C */  lui        $v1, (0x2AAAAAAB >> 16)
    /* 3DDBC 8004D5BC ABAA6334 */  ori        $v1, $v1, (0x2AAAAAAB & 0xFFFF)
    /* 3DDC0 8004D5C0 23100400 */  negu       $v0, $a0
    /* 3DDC4 8004D5C4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3DDC8 8004D5C8 18004300 */  mult       $v0, $v1
    /* 3DDCC 8004D5CC C3170200 */  sra        $v0, $v0, 31
    /* 3DDD0 8004D5D0 10400000 */  mfhi       $t0
    /* 3DDD4 8004D5D4 43180800 */  sra        $v1, $t0, 1
    /* 3DDD8 8004D5D8 23186200 */  subu       $v1, $v1, $v0
    /* 3DDDC 8004D5DC CB350108 */  j          .L8004D72C
    /* 3DDE0 8004D5E0 2188C300 */   addu      $s1, $a2, $v1
  .L8004D5E4:
    /* 3DDE4 8004D5E4 ABAA4234 */  ori        $v0, $v0, (0x2AAAAAAB & 0xFFFF)
    /* 3DDE8 8004D5E8 18006200 */  mult       $v1, $v0
    /* 3DDEC 8004D5EC C31F0300 */  sra        $v1, $v1, 31
    /* 3DDF0 8004D5F0 10400000 */  mfhi       $t0
    /* 3DDF4 8004D5F4 43100800 */  sra        $v0, $t0, 1
    /* 3DDF8 8004D5F8 23104300 */  subu       $v0, $v0, $v1
    /* 3DDFC 8004D5FC CB350108 */  j          .L8004D72C
    /* 3DE00 8004D600 2188C200 */   addu      $s1, $a2, $v0
  .L8004D604:
    /* 3DE04 8004D604 F402A28E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s5)
    /* 3DE08 8004D608 00000000 */  nop
    /* 3DE0C 8004D60C 04004284 */  lh         $v0, 0x4($v0)
    /* 3DE10 8004D610 00000000 */  nop
    /* 3DE14 8004D614 41FF4228 */  slti       $v0, $v0, -0xBF
    /* 3DE18 8004D618 10004010 */  beqz       $v0, .L8004D65C
    /* 3DE1C 8004D61C 00000000 */   nop
    /* 3DE20 8004D620 1B4B010C */  jal        func_80052C6C
    /* 3DE24 8004D624 21200002 */   addu      $a0, $s0, $zero
    /* 3DE28 8004D628 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3DE2C 8004D62C 0B004014 */  bnez       $v0, .L8004D65C
    /* 3DE30 8004D630 21200002 */   addu      $a0, $s0, $zero
    /* 3DE34 8004D634 22000524 */  addiu      $a1, $zero, 0x22
    /* 3DE38 8004D638 8C6E010C */  jal        func_8005BA30
    /* 3DE3C 8004D63C 21300000 */   addu      $a2, $zero, $zero
    /* 3DE40 8004D640 EEFF3126 */  addiu      $s1, $s1, -0x12
    /* 3DE44 8004D644 30000224 */  addiu      $v0, $zero, 0x30
    /* 3DE48 8004D648 A00302AE */  sw         $v0, 0x3A0($s0)
    /* 3DE4C 8004D64C 0E000224 */  addiu      $v0, $zero, 0xE
    /* 3DE50 8004D650 960302A2 */  sb         $v0, 0x396($s0)
    /* 3DE54 8004D654 A4350108 */  j          .L8004D690
    /* 3DE58 8004D658 20000224 */   addiu     $v0, $zero, 0x20
  .L8004D65C:
    /* 3DE5C 8004D65C 04003126 */  addiu      $s1, $s1, 0x4
    /* 3DE60 8004D660 1B4B010C */  jal        func_80052C6C
    /* 3DE64 8004D664 21200002 */   addu      $a0, $s0, $zero
    /* 3DE68 8004D668 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3DE6C 8004D66C 09004014 */  bnez       $v0, .L8004D694
    /* 3DE70 8004D670 00000000 */   nop
    /* 3DE74 8004D674 21200002 */  addu       $a0, $s0, $zero
    /* 3DE78 8004D678 90030692 */  lbu        $a2, 0x390($s0)
    /* 3DE7C 8004D67C 9E6E010C */  jal        func_8005BA78
    /* 3DE80 8004D680 04000524 */   addiu     $a1, $zero, 0x4
    /* 3DE84 8004D684 03000224 */  addiu      $v0, $zero, 0x3
    /* 3DE88 8004D688 960302A2 */  sb         $v0, 0x396($s0)
    /* 3DE8C 8004D68C 02000224 */  addiu      $v0, $zero, 0x2
  .L8004D690:
    /* 3DE90 8004D690 970302A2 */  sb         $v0, 0x397($s0)
  .L8004D694:
    /* 3DE94 8004D694 92030292 */  lbu        $v0, 0x392($s0)
    /* 3DE98 8004D698 98030492 */  lbu        $a0, 0x398($s0)
    /* 3DE9C 8004D69C 40180200 */  sll        $v1, $v0, 1
    /* 3DEA0 8004D6A0 21186200 */  addu       $v1, $v1, $v0
    /* 3DEA4 8004D6A4 80180300 */  sll        $v1, $v1, 2
    /* 3DEA8 8004D6A8 40110400 */  sll        $v0, $a0, 5
    /* 3DEAC 8004D6AC 21104400 */  addu       $v0, $v0, $a0
    /* 3DEB0 8004D6B0 C0100200 */  sll        $v0, $v0, 3
    /* 3DEB4 8004D6B4 21186200 */  addu       $v1, $v1, $v0
    /* 3DEB8 8004D6B8 1180013C */  lui        $at, %hi(D_8010C32C)
    /* 3DEBC 8004D6BC 21082300 */  addu       $at, $at, $v1
    /* 3DEC0 8004D6C0 2CC3228C */  lw         $v0, %lo(D_8010C32C)($at)
    /* 3DEC4 8004D6C4 09000424 */  addiu      $a0, $zero, 0x9
    /* 3DEC8 8004D6C8 02130200 */  srl        $v0, $v0, 12
    /* 3DECC 8004D6CC 0F004230 */  andi       $v0, $v0, 0xF
    /* 3DED0 8004D6D0 23208200 */  subu       $a0, $a0, $v0
    /* 3DED4 8004D6D4 AE79000C */  jal        func_8001E6B8
    /* 3DED8 8004D6D8 40200400 */   sll       $a0, $a0, 1
    /* 3DEDC 8004D6DC A003038E */  lw         $v1, 0x3A0($s0)
    /* 3DEE0 8004D6E0 00000000 */  nop
    /* 3DEE4 8004D6E4 2100632C */  sltiu      $v1, $v1, 0x21
    /* 3DEE8 8004D6E8 05006010 */  beqz       $v1, .L8004D700
    /* 3DEEC 8004D6EC 21882202 */   addu      $s1, $s1, $v0
    /* 3DEF0 8004D6F0 FF008432 */  andi       $a0, $s4, 0xFF
    /* 3DEF4 8004D6F4 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 3DEF8 8004D6F8 C3350108 */  j          .L8004D70C
    /* 3DEFC 8004D6FC 28000624 */   addiu     $a2, $zero, 0x28
  .L8004D700:
    /* 3DF00 8004D700 FF008432 */  andi       $a0, $s4, 0xFF
    /* 3DF04 8004D704 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 3DF08 8004D708 10000624 */  addiu      $a2, $zero, 0x10
  .L8004D70C:
    /* 3DF0C 8004D70C F36D010C */  jal        func_8005B7CC
    /* 3DF10 8004D710 00000000 */   nop
    /* 3DF14 8004D714 21904000 */  addu       $s2, $v0, $zero
    /* 3DF18 8004D718 3B00222A */  slti       $v0, $s1, 0x3B
    /* 3DF1C 8004D71C 02004010 */  beqz       $v0, .L8004D728
    /* 3DF20 8004D720 02000224 */   addiu     $v0, $zero, 0x2
    /* 3DF24 8004D724 3A001124 */  addiu      $s1, $zero, 0x3A
  .L8004D728:
    /* 3DF28 8004D728 D10302A2 */  sb         $v0, 0x3D1($s0)
  .L8004D72C:
    /* 3DF2C 8004D72C 92030292 */  lbu        $v0, 0x392($s0)
    /* 3DF30 8004D730 98030492 */  lbu        $a0, 0x398($s0)
    /* 3DF34 8004D734 40180200 */  sll        $v1, $v0, 1
    /* 3DF38 8004D738 21186200 */  addu       $v1, $v1, $v0
    /* 3DF3C 8004D73C 80180300 */  sll        $v1, $v1, 2
    /* 3DF40 8004D740 40110400 */  sll        $v0, $a0, 5
    /* 3DF44 8004D744 21104400 */  addu       $v0, $v0, $a0
    /* 3DF48 8004D748 C0100200 */  sll        $v0, $v0, 3
    /* 3DF4C 8004D74C 21186200 */  addu       $v1, $v1, $v0
    /* 3DF50 8004D750 1180013C */  lui        $at, %hi(D_8010C32C)
    /* 3DF54 8004D754 21082300 */  addu       $at, $at, $v1
    /* 3DF58 8004D758 2CC3228C */  lw         $v0, %lo(D_8010C32C)($at)
    /* 3DF5C 8004D75C 09000424 */  addiu      $a0, $zero, 0x9
    /* 3DF60 8004D760 02130200 */  srl        $v0, $v0, 12
    /* 3DF64 8004D764 0F004230 */  andi       $v0, $v0, 0xF
    /* 3DF68 8004D768 23208200 */  subu       $a0, $a0, $v0
    /* 3DF6C 8004D76C AE79000C */  jal        func_8001E6B8
    /* 3DF70 8004D770 40200400 */   sll       $a0, $a0, 1
    /* 3DF74 8004D774 21200002 */  addu       $a0, $s0, $zero
    /* 3DF78 8004D778 FF004532 */  andi       $a1, $s2, 0xFF
    /* 3DF7C 8004D77C 21302002 */  addu       $a2, $s1, $zero
    /* 3DF80 8004D780 3C2C010C */  jal        func_8004B0F0
    /* 3DF84 8004D784 F8FF4724 */   addiu     $a3, $v0, -0x8
    /* 3DF88 8004D788 8D030292 */  lbu        $v0, 0x38D($s0)
    /* 3DF8C 8004D78C 00000000 */  nop
    /* 3DF90 8004D790 A902A2A2 */  sb         $v0, (0x1F8002A9 & 0xFFFF)($s5)
    /* 3DF94 8004D794 F402A28E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s5)
    /* 3DF98 8004D798 04000324 */  addiu      $v1, $zero, 0x4
    /* 3DF9C 8004D79C B00343A0 */  sb         $v1, 0x3B0($v0)
    /* 3DFA0 8004D7A0 F402A28E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s5)
    /* 3DFA4 8004D7A4 00000000 */  nop
    /* 3DFA8 8004D7A8 B20343A0 */  sb         $v1, 0x3B2($v0)
    /* 3DFAC 8004D7AC 2800BF8F */  lw         $ra, 0x28($sp)
    /* 3DFB0 8004D7B0 2400B58F */  lw         $s5, 0x24($sp)
    /* 3DFB4 8004D7B4 2000B48F */  lw         $s4, 0x20($sp)
    /* 3DFB8 8004D7B8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3DFBC 8004D7BC 1800B28F */  lw         $s2, 0x18($sp)
    /* 3DFC0 8004D7C0 1400B18F */  lw         $s1, 0x14($sp)
    /* 3DFC4 8004D7C4 1000B08F */  lw         $s0, 0x10($sp)
    /* 3DFC8 8004D7C8 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 3DFCC 8004D7CC 0800E003 */  jr         $ra
    /* 3DFD0 8004D7D0 00000000 */   nop
endlabel func_8004D464
