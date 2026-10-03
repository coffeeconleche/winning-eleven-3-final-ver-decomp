nonmatching func_8005BA78, 0x2A4

glabel func_8005BA78
    /* 4C278 8005BA78 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4C27C 8005BA7C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4C280 8005BA80 21808000 */  addu       $s0, $a0, $zero
    /* 4C284 8005BA84 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 4C288 8005BA88 FEFF4324 */  addiu      $v1, $v0, -0x2
    /* 4C28C 8005BA8C 3300622C */  sltiu      $v0, $v1, 0x33
    /* 4C290 8005BA90 95004010 */  beqz       $v0, .L8005BCE8
    /* 4C294 8005BA94 1400BFAF */   sw        $ra, 0x14($sp)
    /* 4C298 8005BA98 80100300 */  sll        $v0, $v1, 2
    /* 4C29C 8005BA9C 0180013C */  lui        $at, %hi(jtbl_80012008)
    /* 4C2A0 8005BAA0 21082200 */  addu       $at, $at, $v0
    /* 4C2A4 8005BAA4 0820228C */  lw         $v0, %lo(jtbl_80012008)($at)
    /* 4C2A8 8005BAA8 00000000 */  nop
    /* 4C2AC 8005BAAC 08004000 */  jr         $v0
    /* 4C2B0 8005BAB0 00000000 */   nop
  jlabel .L8005BAB4
    /* 4C2B4 8005BAB4 8E030396 */  lhu        $v1, 0x38E($s0)
    /* 4C2B8 8005BAB8 26000224 */  addiu      $v0, $zero, 0x26
    /* 4C2BC 8005BABC 06006210 */  beq        $v1, $v0, .L8005BAD8
    /* 4C2C0 8005BAC0 1B000224 */   addiu     $v0, $zero, 0x1B
    /* 4C2C4 8005BAC4 04006210 */  beq        $v1, $v0, .L8005BAD8
    /* 4C2C8 8005BAC8 34000224 */   addiu     $v0, $zero, 0x34
    /* 4C2CC 8005BACC 08006214 */  bne        $v1, $v0, .L8005BAF0
    /* 4C2D0 8005BAD0 04000224 */   addiu     $v0, $zero, 0x4
    /* 4C2D4 8005BAD4 8E030396 */  lhu        $v1, 0x38E($s0)
  .L8005BAD8:
    /* 4C2D8 8005BAD8 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 4C2DC 8005BADC 17006210 */  beq        $v1, $v0, .L8005BB3C
    /* 4C2E0 8005BAE0 21200002 */   addu      $a0, $s0, $zero
    /* 4C2E4 8005BAE4 90030692 */  lbu        $a2, 0x390($s0)
    /* 4C2E8 8005BAE8 CD6E0108 */  j          .L8005BB34
    /* 4C2EC 8005BAEC 00000000 */   nop
  .L8005BAF0:
    /* 4C2F0 8005BAF0 03006210 */  beq        $v1, $v0, .L8005BB00
    /* 4C2F4 8005BAF4 59000224 */   addiu     $v0, $zero, 0x59
    /* 4C2F8 8005BAF8 07006214 */  bne        $v1, $v0, .L8005BB18
    /* 4C2FC 8005BAFC 02000224 */   addiu     $v0, $zero, 0x2
  .L8005BB00:
    /* 4C300 8005BB00 FF00C230 */  andi       $v0, $a2, 0xFF
    /* 4C304 8005BB04 0C80013C */  lui        $at, %hi(D_800C6BB8)
    /* 4C308 8005BB08 21082200 */  addu       $at, $at, $v0
    /* 4C30C 8005BB0C B86B2690 */  lbu        $a2, %lo(D_800C6BB8)($at)
    /* 4C310 8005BB10 CD6E0108 */  j          .L8005BB34
    /* 4C314 8005BB14 21200002 */   addu      $a0, $s0, $zero
  .L8005BB18:
    /* 4C318 8005BB18 0A006214 */  bne        $v1, $v0, .L8005BB44
    /* 4C31C 8005BB1C FF00A230 */   andi      $v0, $a1, 0xFF
    /* 4C320 8005BB20 21200002 */  addu       $a0, $s0, $zero
    /* 4C324 8005BB24 FF00C230 */  andi       $v0, $a2, 0xFF
    /* 4C328 8005BB28 0C80013C */  lui        $at, %hi(D_800C6BC8)
    /* 4C32C 8005BB2C 21082200 */  addu       $at, $at, $v0
    /* 4C330 8005BB30 C86B2690 */  lbu        $a2, %lo(D_800C6BC8)($at)
  .L8005BB34:
    /* 4C334 8005BB34 8C6E010C */  jal        func_8005BA30
    /* 4C338 8005BB38 FF00A530 */   andi      $a1, $a1, 0xFF
  .L8005BB3C:
    /* 4C33C 8005BB3C 426F0108 */  j          .L8005BD08
    /* 4C340 8005BB40 AD0300A2 */   sb        $zero, 0x3AD($s0)
  .L8005BB44:
    /* 4C344 8005BB44 70006210 */  beq        $v1, $v0, .L8005BD08
    /* 4C348 8005BB48 21200002 */   addu      $a0, $s0, $zero
    /* 4C34C 8005BB4C FF00A530 */  andi       $a1, $a1, 0xFF
    /* 4C350 8005BB50 406F0108 */  j          .L8005BD00
    /* 4C354 8005BB54 0F000624 */   addiu     $a2, $zero, 0xF
  jlabel .L8005BB58
    /* 4C358 8005BB58 8E030396 */  lhu        $v1, 0x38E($s0)
    /* 4C35C 8005BB5C 26000224 */  addiu      $v0, $zero, 0x26
    /* 4C360 8005BB60 05006210 */  beq        $v1, $v0, .L8005BB78
    /* 4C364 8005BB64 1B000224 */   addiu     $v0, $zero, 0x1B
    /* 4C368 8005BB68 03006210 */  beq        $v1, $v0, .L8005BB78
    /* 4C36C 8005BB6C 34000224 */   addiu     $v0, $zero, 0x34
    /* 4C370 8005BB70 08006214 */  bne        $v1, $v0, .L8005BB94
    /* 4C374 8005BB74 02000224 */   addiu     $v0, $zero, 0x2
  .L8005BB78:
    /* 4C378 8005BB78 21200002 */  addu       $a0, $s0, $zero
    /* 4C37C 8005BB7C 0F00C230 */  andi       $v0, $a2, 0xF
    /* 4C380 8005BB80 0C80013C */  lui        $at, %hi(D_800C6B98)
    /* 4C384 8005BB84 21082200 */  addu       $at, $at, $v0
    /* 4C388 8005BB88 986B2690 */  lbu        $a2, %lo(D_800C6B98)($at)
    /* 4C38C 8005BB8C 406F0108 */  j          .L8005BD00
    /* 4C390 8005BB90 04000524 */   addiu     $a1, $zero, 0x4
  .L8005BB94:
    /* 4C394 8005BB94 12006214 */  bne        $v1, $v0, .L8005BBE0
    /* 4C398 8005BB98 04000224 */   addiu     $v0, $zero, 0x4
    /* 4C39C 8005BB9C E338023C */  lui        $v0, (0x38E38E39 >> 16)
    /* 4C3A0 8005BBA0 398E4234 */  ori        $v0, $v0, (0x38E38E39 & 0xFFFF)
    /* 4C3A4 8005BBA4 FF00C330 */  andi       $v1, $a2, 0xFF
    /* 4C3A8 8005BBA8 19006200 */  multu      $v1, $v0
    /* 4C3AC 8005BBAC 21200002 */  addu       $a0, $s0, $zero
    /* 4C3B0 8005BBB0 10380000 */  mfhi       $a3
    /* 4C3B4 8005BBB4 82280700 */  srl        $a1, $a3, 2
    /* 4C3B8 8005BBB8 C0100500 */  sll        $v0, $a1, 3
    /* 4C3BC 8005BBBC 21104500 */  addu       $v0, $v0, $a1
    /* 4C3C0 8005BBC0 40100200 */  sll        $v0, $v0, 1
    /* 4C3C4 8005BBC4 23186200 */  subu       $v1, $v1, $v0
    /* 4C3C8 8005BBC8 FF006330 */  andi       $v1, $v1, 0xFF
    /* 4C3CC 8005BBCC 0C80013C */  lui        $at, %hi(D_800C6B84)
    /* 4C3D0 8005BBD0 21082300 */  addu       $at, $at, $v1
    /* 4C3D4 8005BBD4 846B2690 */  lbu        $a2, %lo(D_800C6B84)($at)
    /* 4C3D8 8005BBD8 406F0108 */  j          .L8005BD00
    /* 4C3DC 8005BBDC 04000524 */   addiu     $a1, $zero, 0x4
  .L8005BBE0:
    /* 4C3E0 8005BBE0 49006210 */  beq        $v1, $v0, .L8005BD08
    /* 4C3E4 8005BBE4 FF00C630 */   andi      $a2, $a2, 0xFF
    /* 4C3E8 8005BBE8 42180600 */  srl        $v1, $a2, 1
    /* 4C3EC 8005BBEC 4992023C */  lui        $v0, (0x92492493 >> 16)
    /* 4C3F0 8005BBF0 93244234 */  ori        $v0, $v0, (0x92492493 & 0xFFFF)
    /* 4C3F4 8005BBF4 19006200 */  multu      $v1, $v0
    /* 4C3F8 8005BBF8 21200002 */  addu       $a0, $s0, $zero
    /* 4C3FC 8005BBFC 04000524 */  addiu      $a1, $zero, 0x4
    /* 4C400 8005BC00 10380000 */  mfhi       $a3
    /* 4C404 8005BC04 82180700 */  srl        $v1, $a3, 2
    /* 4C408 8005BC08 C0100300 */  sll        $v0, $v1, 3
    /* 4C40C 8005BC0C 23104300 */  subu       $v0, $v0, $v1
    /* 4C410 8005BC10 40100200 */  sll        $v0, $v0, 1
    /* 4C414 8005BC14 3F6F0108 */  j          .L8005BCFC
    /* 4C418 8005BC18 2330C200 */   subu      $a2, $a2, $v0
  jlabel .L8005BC1C
    /* 4C41C 8005BC1C 8E030396 */  lhu        $v1, 0x38E($s0)
    /* 4C420 8005BC20 04000224 */  addiu      $v0, $zero, 0x4
    /* 4C424 8005BC24 03006210 */  beq        $v1, $v0, .L8005BC34
    /* 4C428 8005BC28 59000224 */   addiu     $v0, $zero, 0x59
    /* 4C42C 8005BC2C 12006214 */  bne        $v1, $v0, .L8005BC78
    /* 4C430 8005BC30 26000224 */   addiu     $v0, $zero, 0x26
  .L8005BC34:
    /* 4C434 8005BC34 E338023C */  lui        $v0, (0x38E38E39 >> 16)
    /* 4C438 8005BC38 398E4234 */  ori        $v0, $v0, (0x38E38E39 & 0xFFFF)
    /* 4C43C 8005BC3C FF00C330 */  andi       $v1, $a2, 0xFF
    /* 4C440 8005BC40 19006200 */  multu      $v1, $v0
    /* 4C444 8005BC44 21200002 */  addu       $a0, $s0, $zero
    /* 4C448 8005BC48 10380000 */  mfhi       $a3
    /* 4C44C 8005BC4C 82280700 */  srl        $a1, $a3, 2
    /* 4C450 8005BC50 C0100500 */  sll        $v0, $a1, 3
    /* 4C454 8005BC54 21104500 */  addu       $v0, $v0, $a1
    /* 4C458 8005BC58 40100200 */  sll        $v0, $v0, 1
    /* 4C45C 8005BC5C 23186200 */  subu       $v1, $v1, $v0
    /* 4C460 8005BC60 FF006330 */  andi       $v1, $v1, 0xFF
    /* 4C464 8005BC64 0C80013C */  lui        $at, %hi(D_800C6BA8)
    /* 4C468 8005BC68 21082300 */  addu       $at, $at, $v1
    /* 4C46C 8005BC6C A86B2690 */  lbu        $a2, %lo(D_800C6BA8)($at)
    /* 4C470 8005BC70 406F0108 */  j          .L8005BD00
    /* 4C474 8005BC74 02000524 */   addiu     $a1, $zero, 0x2
  .L8005BC78:
    /* 4C478 8005BC78 05006210 */  beq        $v1, $v0, .L8005BC90
    /* 4C47C 8005BC7C 1B000224 */   addiu     $v0, $zero, 0x1B
    /* 4C480 8005BC80 03006210 */  beq        $v1, $v0, .L8005BC90
    /* 4C484 8005BC84 34000224 */   addiu     $v0, $zero, 0x34
    /* 4C488 8005BC88 0B006214 */  bne        $v1, $v0, .L8005BCB8
    /* 4C48C 8005BC8C E338023C */   lui       $v0, (0x38E38E39 >> 16)
  .L8005BC90:
    /* 4C490 8005BC90 90030292 */  lbu        $v0, 0x390($s0)
    /* 4C494 8005BC94 0C80013C */  lui        $at, %hi(D_800C6B98)
    /* 4C498 8005BC98 21082200 */  addu       $at, $at, $v0
    /* 4C49C 8005BC9C 986B2290 */  lbu        $v0, %lo(D_800C6B98)($at)
    /* 4C4A0 8005BCA0 21200002 */  addu       $a0, $s0, $zero
    /* 4C4A4 8005BCA4 0C80013C */  lui        $at, %hi(D_800C6BA8)
    /* 4C4A8 8005BCA8 21082200 */  addu       $at, $at, $v0
    /* 4C4AC 8005BCAC A86B2690 */  lbu        $a2, %lo(D_800C6BA8)($at)
    /* 4C4B0 8005BCB0 406F0108 */  j          .L8005BD00
    /* 4C4B4 8005BCB4 02000524 */   addiu     $a1, $zero, 0x2
  .L8005BCB8:
    /* 4C4B8 8005BCB8 398E4234 */  ori        $v0, $v0, (0x38E38E39 & 0xFFFF)
    /* 4C4BC 8005BCBC FF00C630 */  andi       $a2, $a2, 0xFF
    /* 4C4C0 8005BCC0 1900C200 */  multu      $a2, $v0
    /* 4C4C4 8005BCC4 21200002 */  addu       $a0, $s0, $zero
    /* 4C4C8 8005BCC8 02000524 */  addiu      $a1, $zero, 0x2
    /* 4C4CC 8005BCCC 10380000 */  mfhi       $a3
    /* 4C4D0 8005BCD0 82180700 */  srl        $v1, $a3, 2
    /* 4C4D4 8005BCD4 C0100300 */  sll        $v0, $v1, 3
    /* 4C4D8 8005BCD8 21104300 */  addu       $v0, $v0, $v1
    /* 4C4DC 8005BCDC 40100200 */  sll        $v0, $v0, 1
    /* 4C4E0 8005BCE0 3F6F0108 */  j          .L8005BCFC
    /* 4C4E4 8005BCE4 2330C200 */   subu      $a2, $a2, $v0
  jlabel .L8005BCE8
    /* 4C4E8 8005BCE8 8E030396 */  lhu        $v1, 0x38E($s0)
    /* 4C4EC 8005BCEC FF00A230 */  andi       $v0, $a1, 0xFF
    /* 4C4F0 8005BCF0 05006210 */  beq        $v1, $v0, .L8005BD08
    /* 4C4F4 8005BCF4 21200002 */   addu      $a0, $s0, $zero
    /* 4C4F8 8005BCF8 FF00A530 */  andi       $a1, $a1, 0xFF
  .L8005BCFC:
    /* 4C4FC 8005BCFC FF00C630 */  andi       $a2, $a2, 0xFF
  .L8005BD00:
    /* 4C500 8005BD00 8C6E010C */  jal        func_8005BA30
    /* 4C504 8005BD04 00000000 */   nop
  .L8005BD08:
    /* 4C508 8005BD08 1400BF8F */  lw         $ra, 0x14($sp)
    /* 4C50C 8005BD0C 1000B08F */  lw         $s0, 0x10($sp)
    /* 4C510 8005BD10 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4C514 8005BD14 0800E003 */  jr         $ra
    /* 4C518 8005BD18 00000000 */   nop
endlabel func_8005BA78
