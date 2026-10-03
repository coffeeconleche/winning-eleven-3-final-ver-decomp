nonmatching func_8007BA04, 0x434

glabel func_8007BA04
    /* 6C204 8007BA04 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 6C208 8007BA08 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 6C20C 8007BA0C 801F133C */  lui        $s3, (0x1F8002E1 >> 16)
    /* 6C210 8007BA10 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 6C214 8007BA14 21B80000 */  addu       $s7, $zero, $zero
    /* 6C218 8007BA18 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6C21C 8007BA1C FF001224 */  addiu      $s2, $zero, 0xFF
    /* 6C220 8007BA20 3000BEAF */  sw         $fp, 0x30($sp)
    /* 6C224 8007BA24 02001E24 */  addiu      $fp, $zero, 0x2
    /* 6C228 8007BA28 3400BFAF */  sw         $ra, 0x34($sp)
    /* 6C22C 8007BA2C 2800B6AF */  sw         $s6, 0x28($sp)
    /* 6C230 8007BA30 2400B5AF */  sw         $s5, 0x24($sp)
    /* 6C234 8007BA34 2000B4AF */  sw         $s4, 0x20($sp)
    /* 6C238 8007BA38 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6C23C 8007BA3C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6C240 8007BA40 8D038490 */  lbu        $a0, 0x38D($a0)
    /* 6C244 8007BA44 8573010C */  jal        func_8005CE14
    /* 6C248 8007BA48 FF001624 */   addiu     $s6, $zero, 0xFF
    /* 6C24C 8007BA4C 1080143C */  lui        $s4, %hi(D_800FF748)
    /* 6C250 8007BA50 48F79426 */  addiu      $s4, $s4, %lo(D_800FF748)
    /* 6C254 8007BA54 FF004230 */  andi       $v0, $v0, 0xFF
    /* 6C258 8007BA58 40190200 */  sll        $v1, $v0, 5
    /* 6C25C 8007BA5C 23186200 */  subu       $v1, $v1, $v0
    /* 6C260 8007BA60 80180300 */  sll        $v1, $v1, 2
    /* 6C264 8007BA64 21186200 */  addu       $v1, $v1, $v0
    /* 6C268 8007BA68 C0180300 */  sll        $v1, $v1, 3
    /* 6C26C 8007BA6C E8036324 */  addiu      $v1, $v1, 0x3E8
    /* 6C270 8007BA70 21887400 */  addu       $s1, $v1, $s4
    /* 6C274 8007BA74 98033026 */  addiu      $s0, $s1, 0x398
  .L8007BA78:
    /* 6C278 8007BA78 00002292 */  lbu        $v0, 0x0($s1)
    /* 6C27C 8007BA7C 00000000 */  nop
    /* 6C280 8007BA80 DA004010 */  beqz       $v0, .L8007BDEC
    /* 6C284 8007BA84 00000000 */   nop
    /* 6C288 8007BA88 9A026292 */  lbu        $v0, (0x1F80029A & 0xFFFF)($s3)
    /* 6C28C 8007BA8C 00000000 */  nop
    /* 6C290 8007BA90 FF004330 */  andi       $v1, $v0, 0xFF
    /* 6C294 8007BA94 4B007E10 */  beq        $v1, $fp, .L8007BBC4
    /* 6C298 8007BA98 04000224 */   addiu     $v0, $zero, 0x4
    /* 6C29C 8007BA9C 49006214 */  bne        $v1, $v0, .L8007BBC4
    /* 6C2A0 8007BAA0 05000324 */   addiu     $v1, $zero, 0x5
    /* 6C2A4 8007BAA4 E1026292 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($s3)
    /* 6C2A8 8007BAA8 00000000 */  nop
    /* 6C2AC 8007BAAC FF004230 */  andi       $v0, $v0, 0xFF
    /* 6C2B0 8007BAB0 0C004314 */  bne        $v0, $v1, .L8007BAE4
    /* 6C2B4 8007BAB4 00000000 */   nop
    /* 6C2B8 8007BAB8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6C2BC 8007BABC 21088102 */  addu       $at, $s4, $at
    /* 6C2C0 8007BAC0 DEAB2290 */  lbu        $v0, -0x5422($at)
    /* 6C2C4 8007BAC4 00000000 */  nop
    /* 6C2C8 8007BAC8 06005E14 */  bne        $v0, $fp, .L8007BAE4
    /* 6C2CC 8007BACC 00000000 */   nop
    /* 6C2D0 8007BAD0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6C2D4 8007BAD4 21088102 */  addu       $at, $s4, $at
    /* 6C2D8 8007BAD8 DFAB2290 */  lbu        $v0, -0x5421($at)
    /* 6C2DC 8007BADC C5EE0108 */  j          .L8007BB14
    /* 6C2E0 8007BAE0 42280200 */   srl       $a1, $v0, 1
  .L8007BAE4:
    /* 6C2E4 8007BAE4 BE026296 */  lhu        $v0, (0x1F8002BE & 0xFFFF)($s3)
    /* 6C2E8 8007BAE8 01000392 */  lbu        $v1, 0x1($s0)
    /* 6C2EC 8007BAEC 00140200 */  sll        $v0, $v0, 16
    /* 6C2F0 8007BAF0 05006010 */  beqz       $v1, .L8007BB08
    /* 6C2F4 8007BAF4 03140200 */   sra       $v0, $v0, 16
    /* 6C2F8 8007BAF8 0600401C */  bgtz       $v0, .L8007BB14
    /* 6C2FC 8007BAFC 21280000 */   addu      $a1, $zero, $zero
    /* 6C300 8007BB00 C5EE0108 */  j          .L8007BB14
    /* 6C304 8007BB04 01000524 */   addiu     $a1, $zero, 0x1
  .L8007BB08:
    /* 6C308 8007BB08 02004104 */  bgez       $v0, .L8007BB14
    /* 6C30C 8007BB0C 01000524 */   addiu     $a1, $zero, 0x1
    /* 6C310 8007BB10 21280000 */  addu       $a1, $zero, $zero
  .L8007BB14:
    /* 6C314 8007BB14 0C00A014 */  bnez       $a1, .L8007BB48
    /* 6C318 8007BB18 00000000 */   nop
    /* 6C31C 8007BB1C 00000292 */  lbu        $v0, 0x0($s0)
    /* 6C320 8007BB20 00000000 */  nop
    /* 6C324 8007BB24 21106202 */  addu       $v0, $s3, $v0
    /* 6C328 8007BB28 DD024290 */  lbu        $v0, (0x1F8002DD & 0xFFFF)($v0)
    /* 6C32C 8007BB2C 00000000 */  nop
    /* 6C330 8007BB30 21108202 */  addu       $v0, $s4, $v0
    /* 6C334 8007BB34 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6C338 8007BB38 21084100 */  addu       $at, $v0, $at
    /* 6C33C 8007BB3C 3E8A2590 */  lbu        $a1, -0x75C2($at)
    /* 6C340 8007BB40 DBEE0108 */  j          .L8007BB6C
    /* 6C344 8007BB44 00000000 */   nop
  .L8007BB48:
    /* 6C348 8007BB48 00000292 */  lbu        $v0, 0x0($s0)
    /* 6C34C 8007BB4C 00000000 */  nop
    /* 6C350 8007BB50 21106202 */  addu       $v0, $s3, $v0
    /* 6C354 8007BB54 DD024290 */  lbu        $v0, (0x1F8002DD & 0xFFFF)($v0)
    /* 6C358 8007BB58 00000000 */  nop
    /* 6C35C 8007BB5C 21108202 */  addu       $v0, $s4, $v0
    /* 6C360 8007BB60 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6C364 8007BB64 21084100 */  addu       $at, $v0, $at
    /* 6C368 8007BB68 138A2590 */  lbu        $a1, -0x75ED($at)
  .L8007BB6C:
    /* 6C36C 8007BB6C 1553010C */  jal        func_80054C54
    /* 6C370 8007BB70 21202002 */   addu      $a0, $s1, $zero
    /* 6C374 8007BB74 21284000 */  addu       $a1, $v0, $zero
    /* 6C378 8007BB78 8500A014 */  bnez       $a1, .L8007BD90
    /* 6C37C 8007BB7C 00000000 */   nop
    /* 6C380 8007BB80 FAFF0292 */  lbu        $v0, -0x6($s0)
    /* 6C384 8007BB84 00000492 */  lbu        $a0, 0x0($s0)
    /* 6C388 8007BB88 40180200 */  sll        $v1, $v0, 1
    /* 6C38C 8007BB8C 21186200 */  addu       $v1, $v1, $v0
    /* 6C390 8007BB90 80180300 */  sll        $v1, $v1, 2
    /* 6C394 8007BB94 40110400 */  sll        $v0, $a0, 5
    /* 6C398 8007BB98 21104400 */  addu       $v0, $v0, $a0
    /* 6C39C 8007BB9C C0100200 */  sll        $v0, $v0, 3
    /* 6C3A0 8007BBA0 21186200 */  addu       $v1, $v1, $v0
    /* 6C3A4 8007BBA4 1180013C */  lui        $at, %hi(D_8010C32E)
    /* 6C3A8 8007BBA8 21082300 */  addu       $at, $at, $v1
    /* 6C3AC 8007BBAC 2EC32294 */  lhu        $v0, %lo(D_8010C32E)($at)
    /* 6C3B0 8007BBB0 09000324 */  addiu      $v1, $zero, 0x9
    /* 6C3B4 8007BBB4 0F004230 */  andi       $v0, $v0, 0xF
    /* 6C3B8 8007BBB8 23186200 */  subu       $v1, $v1, $v0
    /* 6C3BC 8007BBBC 75EF0108 */  j          .L8007BDD4
    /* 6C3C0 8007BBC0 2A107200 */   slt       $v0, $v1, $s2
  .L8007BBC4:
    /* 6C3C4 8007BBC4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6C3C8 8007BBC8 21088102 */  addu       $at, $s4, $at
    /* 6C3CC 8007BBCC A4882390 */  lbu        $v1, -0x775C($at)
    /* 6C3D0 8007BBD0 03000224 */  addiu      $v0, $zero, 0x3
    /* 6C3D4 8007BBD4 21006214 */  bne        $v1, $v0, .L8007BC5C
    /* 6C3D8 8007BBD8 00000000 */   nop
    /* 6C3DC 8007BBDC 00000292 */  lbu        $v0, 0x0($s0)
    /* 6C3E0 8007BBE0 00000000 */  nop
    /* 6C3E4 8007BBE4 21106202 */  addu       $v0, $s3, $v0
    /* 6C3E8 8007BBE8 DD024290 */  lbu        $v0, (0x1F8002DD & 0xFFFF)($v0)
    /* 6C3EC 8007BBEC 00000000 */  nop
    /* 6C3F0 8007BBF0 21108202 */  addu       $v0, $s4, $v0
    /* 6C3F4 8007BBF4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6C3F8 8007BBF8 21084100 */  addu       $at, $v0, $at
    /* 6C3FC 8007BBFC 698A2590 */  lbu        $a1, -0x7597($at)
    /* 6C400 8007BC00 1553010C */  jal        func_80054C54
    /* 6C404 8007BC04 21202002 */   addu      $a0, $s1, $zero
    /* 6C408 8007BC08 21284000 */  addu       $a1, $v0, $zero
    /* 6C40C 8007BC0C 6000A014 */  bnez       $a1, .L8007BD90
    /* 6C410 8007BC10 00000000 */   nop
    /* 6C414 8007BC14 FAFF0292 */  lbu        $v0, -0x6($s0)
    /* 6C418 8007BC18 00000492 */  lbu        $a0, 0x0($s0)
    /* 6C41C 8007BC1C 40180200 */  sll        $v1, $v0, 1
    /* 6C420 8007BC20 21186200 */  addu       $v1, $v1, $v0
    /* 6C424 8007BC24 80180300 */  sll        $v1, $v1, 2
    /* 6C428 8007BC28 40110400 */  sll        $v0, $a0, 5
    /* 6C42C 8007BC2C 21104400 */  addu       $v0, $v0, $a0
    /* 6C430 8007BC30 C0100200 */  sll        $v0, $v0, 3
    /* 6C434 8007BC34 21186200 */  addu       $v1, $v1, $v0
    /* 6C438 8007BC38 1180013C */  lui        $at, %hi(D_8010C32C)
    /* 6C43C 8007BC3C 21082300 */  addu       $at, $at, $v1
    /* 6C440 8007BC40 2CC3228C */  lw         $v0, %lo(D_8010C32C)($at)
    /* 6C444 8007BC44 09000324 */  addiu      $v1, $zero, 0x9
    /* 6C448 8007BC48 02110200 */  srl        $v0, $v0, 4
    /* 6C44C 8007BC4C 0F004230 */  andi       $v0, $v0, 0xF
    /* 6C450 8007BC50 23186200 */  subu       $v1, $v1, $v0
    /* 6C454 8007BC54 75EF0108 */  j          .L8007BDD4
    /* 6C458 8007BC58 2A107200 */   slt       $v0, $v1, $s2
  .L8007BC5C:
    /* 6C45C 8007BC5C F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 6C460 8007BC60 01000392 */  lbu        $v1, 0x1($s0)
    /* 6C464 8007BC64 02004284 */  lh         $v0, 0x2($v0)
    /* 6C468 8007BC68 03006014 */  bnez       $v1, .L8007BC78
    /* 6C46C 8007BC6C 00000000 */   nop
    /* 6C470 8007BC70 1FEF0108 */  j          .L8007BC7C
    /* 6C474 8007BC74 E0CC4224 */   addiu     $v0, $v0, -0x3320
  .L8007BC78:
    /* 6C478 8007BC78 20334224 */  addiu      $v0, $v0, 0x3320
  .L8007BC7C:
    /* 6C47C 8007BC7C 02004104 */  bgez       $v0, .L8007BC88
    /* 6C480 8007BC80 00000000 */   nop
    /* 6C484 8007BC84 23100200 */  negu       $v0, $v0
  .L8007BC88:
    /* 6C488 8007BC88 18004200 */  mult       $v0, $v0
    /* 6C48C 8007BC8C FF03023C */  lui        $v0, (0x3FFFFFF >> 16)
    /* 6C490 8007BC90 FFFF4234 */  ori        $v0, $v0, (0x3FFFFFF & 0xFFFF)
    /* 6C494 8007BC94 12300000 */  mflo       $a2
    /* 6C498 8007BC98 2A104600 */  slt        $v0, $v0, $a2
    /* 6C49C 8007BC9C 2E004014 */  bnez       $v0, .L8007BD58
    /* 6C4A0 8007BCA0 00000000 */   nop
    /* 6C4A4 8007BCA4 F9FF0292 */  lbu        $v0, -0x7($s0)
    /* 6C4A8 8007BCA8 00000000 */  nop
    /* 6C4AC 8007BCAC 0600422C */  sltiu      $v0, $v0, 0x6
    /* 6C4B0 8007BCB0 4E004014 */  bnez       $v0, .L8007BDEC
    /* 6C4B4 8007BCB4 00000000 */   nop
    /* 6C4B8 8007BCB8 00000292 */  lbu        $v0, 0x0($s0)
    /* 6C4BC 8007BCBC 00000000 */  nop
    /* 6C4C0 8007BCC0 21106202 */  addu       $v0, $s3, $v0
    /* 6C4C4 8007BCC4 DD024390 */  lbu        $v1, (0x1F8002DD & 0xFFFF)($v0)
    /* 6C4C8 8007BCC8 00000000 */  nop
    /* 6C4CC 8007BCCC 21108302 */  addu       $v0, $s4, $v1
    /* 6C4D0 8007BCD0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6C4D4 8007BCD4 21084100 */  addu       $at, $v0, $at
    /* 6C4D8 8007BCD8 BF8A2590 */  lbu        $a1, -0x7541($at)
    /* 6C4DC 8007BCDC 00000000 */  nop
    /* 6C4E0 8007BCE0 0600B614 */  bne        $a1, $s6, .L8007BCFC
    /* 6C4E4 8007BCE4 22000224 */   addiu     $v0, $zero, 0x22
    /* 6C4E8 8007BCE8 03006210 */  beq        $v1, $v0, .L8007BCF8
    /* 6C4EC 8007BCEC 28000224 */   addiu     $v0, $zero, 0x28
    /* 6C4F0 8007BCF0 02006214 */  bne        $v1, $v0, .L8007BCFC
    /* 6C4F4 8007BCF4 00000000 */   nop
  .L8007BCF8:
    /* 6C4F8 8007BCF8 21280000 */  addu       $a1, $zero, $zero
  .L8007BCFC:
    /* 6C4FC 8007BCFC 1553010C */  jal        func_80054C54
    /* 6C500 8007BD00 21202002 */   addu      $a0, $s1, $zero
    /* 6C504 8007BD04 21284000 */  addu       $a1, $v0, $zero
    /* 6C508 8007BD08 2100A014 */  bnez       $a1, .L8007BD90
    /* 6C50C 8007BD0C 00000000 */   nop
    /* 6C510 8007BD10 FAFF0292 */  lbu        $v0, -0x6($s0)
    /* 6C514 8007BD14 00000492 */  lbu        $a0, 0x0($s0)
    /* 6C518 8007BD18 40180200 */  sll        $v1, $v0, 1
    /* 6C51C 8007BD1C 21186200 */  addu       $v1, $v1, $v0
    /* 6C520 8007BD20 80180300 */  sll        $v1, $v1, 2
    /* 6C524 8007BD24 40110400 */  sll        $v0, $a0, 5
    /* 6C528 8007BD28 21104400 */  addu       $v0, $v0, $a0
    /* 6C52C 8007BD2C C0100200 */  sll        $v0, $v0, 3
    /* 6C530 8007BD30 21186200 */  addu       $v1, $v1, $v0
    /* 6C534 8007BD34 1180013C */  lui        $at, %hi(D_8010C32C)
    /* 6C538 8007BD38 21082300 */  addu       $at, $at, $v1
    /* 6C53C 8007BD3C 2CC3228C */  lw         $v0, %lo(D_8010C32C)($at)
    /* 6C540 8007BD40 09000324 */  addiu      $v1, $zero, 0x9
    /* 6C544 8007BD44 02110200 */  srl        $v0, $v0, 4
    /* 6C548 8007BD48 0F004230 */  andi       $v0, $v0, 0xF
    /* 6C54C 8007BD4C 23186200 */  subu       $v1, $v1, $v0
    /* 6C550 8007BD50 75EF0108 */  j          .L8007BDD4
    /* 6C554 8007BD54 2A107200 */   slt       $v0, $v1, $s2
  .L8007BD58:
    /* 6C558 8007BD58 00000292 */  lbu        $v0, 0x0($s0)
    /* 6C55C 8007BD5C 00000000 */  nop
    /* 6C560 8007BD60 21106202 */  addu       $v0, $s3, $v0
    /* 6C564 8007BD64 DD024290 */  lbu        $v0, (0x1F8002DD & 0xFFFF)($v0)
    /* 6C568 8007BD68 00000000 */  nop
    /* 6C56C 8007BD6C 21108202 */  addu       $v0, $s4, $v0
    /* 6C570 8007BD70 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6C574 8007BD74 21084100 */  addu       $at, $v0, $at
    /* 6C578 8007BD78 948A2590 */  lbu        $a1, -0x756C($at)
    /* 6C57C 8007BD7C 1553010C */  jal        func_80054C54
    /* 6C580 8007BD80 21202002 */   addu      $a0, $s1, $zero
    /* 6C584 8007BD84 21284000 */  addu       $a1, $v0, $zero
    /* 6C588 8007BD88 0300A010 */  beqz       $a1, .L8007BD98
    /* 6C58C 8007BD8C 00000000 */   nop
  .L8007BD90:
    /* 6C590 8007BD90 81EF0108 */  j          .L8007BE04
    /* 6C594 8007BD94 FF00A230 */   andi      $v0, $a1, 0xFF
  .L8007BD98:
    /* 6C598 8007BD98 FAFF0292 */  lbu        $v0, -0x6($s0)
    /* 6C59C 8007BD9C 00000492 */  lbu        $a0, 0x0($s0)
    /* 6C5A0 8007BDA0 40180200 */  sll        $v1, $v0, 1
    /* 6C5A4 8007BDA4 21186200 */  addu       $v1, $v1, $v0
    /* 6C5A8 8007BDA8 80180300 */  sll        $v1, $v1, 2
    /* 6C5AC 8007BDAC 40110400 */  sll        $v0, $a0, 5
    /* 6C5B0 8007BDB0 21104400 */  addu       $v0, $v0, $a0
    /* 6C5B4 8007BDB4 C0100200 */  sll        $v0, $v0, 3
    /* 6C5B8 8007BDB8 21186200 */  addu       $v1, $v1, $v0
    /* 6C5BC 8007BDBC 1180013C */  lui        $at, %hi(D_8010C32C)
    /* 6C5C0 8007BDC0 21082300 */  addu       $at, $at, $v1
    /* 6C5C4 8007BDC4 2CC3228C */  lw         $v0, %lo(D_8010C32C)($at)
    /* 6C5C8 8007BDC8 00000000 */  nop
    /* 6C5CC 8007BDCC 0F004330 */  andi       $v1, $v0, 0xF
    /* 6C5D0 8007BDD0 2A104302 */  slt        $v0, $s2, $v1
  .L8007BDD4:
    /* 6C5D4 8007BDD4 03004014 */  bnez       $v0, .L8007BDE4
    /* 6C5D8 8007BDD8 00000000 */   nop
    /* 6C5DC 8007BDDC 03005616 */  bne        $s2, $s6, .L8007BDEC
    /* 6C5E0 8007BDE0 00000000 */   nop
  .L8007BDE4:
    /* 6C5E4 8007BDE4 21906000 */  addu       $s2, $v1, $zero
    /* 6C5E8 8007BDE8 21A82002 */  addu       $s5, $s1, $zero
  .L8007BDEC:
    /* 6C5EC 8007BDEC 0100F726 */  addiu      $s7, $s7, 0x1
    /* 6C5F0 8007BDF0 E8031026 */  addiu      $s0, $s0, 0x3E8
    /* 6C5F4 8007BDF4 0A00E22A */  slti       $v0, $s7, 0xA
    /* 6C5F8 8007BDF8 1FFF4014 */  bnez       $v0, .L8007BA78
    /* 6C5FC 8007BDFC E8033126 */   addiu     $s1, $s1, 0x3E8
    /* 6C600 8007BE00 8D03A292 */  lbu        $v0, 0x38D($s5)
  .L8007BE04:
    /* 6C604 8007BE04 3400BF8F */  lw         $ra, 0x34($sp)
    /* 6C608 8007BE08 3000BE8F */  lw         $fp, 0x30($sp)
    /* 6C60C 8007BE0C 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 6C610 8007BE10 2800B68F */  lw         $s6, 0x28($sp)
    /* 6C614 8007BE14 2400B58F */  lw         $s5, 0x24($sp)
    /* 6C618 8007BE18 2000B48F */  lw         $s4, 0x20($sp)
    /* 6C61C 8007BE1C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 6C620 8007BE20 1800B28F */  lw         $s2, 0x18($sp)
    /* 6C624 8007BE24 1400B18F */  lw         $s1, 0x14($sp)
    /* 6C628 8007BE28 1000B08F */  lw         $s0, 0x10($sp)
    /* 6C62C 8007BE2C 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 6C630 8007BE30 0800E003 */  jr         $ra
    /* 6C634 8007BE34 00000000 */   nop
endlabel func_8007BA04
