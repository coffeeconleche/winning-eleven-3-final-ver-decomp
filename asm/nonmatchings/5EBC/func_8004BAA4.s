nonmatching func_8004BAA4, 0x60C

glabel func_8004BAA4
    /* 3C2A4 8004BAA4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3C2A8 8004BAA8 801F033C */  lui        $v1, (0x1F8000B0 >> 16)
    /* 3C2AC 8004BAAC B0006390 */  lbu        $v1, (0x1F8000B0 & 0xFFFF)($v1)
    /* 3C2B0 8004BAB0 1080053C */  lui        $a1, %hi(D_800FF748)
    /* 3C2B4 8004BAB4 48F7A524 */  addiu      $a1, $a1, %lo(D_800FF748)
    /* 3C2B8 8004BAB8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3C2BC 8004BABC 801F123C */  lui        $s2, (0x1F8000B0 >> 16)
    /* 3C2C0 8004BAC0 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 3C2C4 8004BAC4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3C2C8 8004BAC8 0500622C */  sltiu      $v0, $v1, 0x5
    /* 3C2CC 8004BACC 6E014010 */  beqz       $v0, .L8004C088
    /* 3C2D0 8004BAD0 1000B0AF */   sw        $s0, 0x10($sp)
    /* 3C2D4 8004BAD4 80100300 */  sll        $v0, $v1, 2
    /* 3C2D8 8004BAD8 0180013C */  lui        $at, %hi(jtbl_80011AF0)
    /* 3C2DC 8004BADC 21082200 */  addu       $at, $at, $v0
    /* 3C2E0 8004BAE0 F01A228C */  lw         $v0, %lo(jtbl_80011AF0)($at)
    /* 3C2E4 8004BAE4 00000000 */  nop
    /* 3C2E8 8004BAE8 08004000 */  jr         $v0
    /* 3C2EC 8004BAEC 00000000 */   nop
  jlabel .L8004BAF0
    /* 3C2F0 8004BAF0 B800428E */  lw         $v0, (0x1F8000B8 & 0xFFFF)($s2)
    /* 3C2F4 8004BAF4 00000000 */  nop
    /* 3C2F8 8004BAF8 07004014 */  bnez       $v0, .L8004BB18
    /* 3C2FC 8004BAFC 01000224 */   addiu     $v0, $zero, 0x1
    /* 3C300 8004BB00 FA004296 */  lhu        $v0, (0x1F8000FA & 0xFFFF)($s2)
    /* 3C304 8004BB04 E0FF0324 */  addiu      $v1, $zero, -0x20
    /* 3C308 8004BB08 00140200 */  sll        $v0, $v0, 16
    /* 3C30C 8004BB0C 03140200 */  sra        $v0, $v0, 16
    /* 3C310 8004BB10 03004310 */  beq        $v0, $v1, .L8004BB20
    /* 3C314 8004BB14 01000224 */   addiu     $v0, $zero, 0x1
  .L8004BB18:
    /* 3C318 8004BB18 25300108 */  j          .L8004C094
    /* 3C31C 8004BB1C B00042A2 */   sb        $v0, (0x1F8000B0 & 0xFFFF)($s2)
  .L8004BB20:
    /* 3C320 8004BB20 02000224 */  addiu      $v0, $zero, 0x2
    /* 3C324 8004BB24 25300108 */  j          .L8004C094
    /* 3C328 8004BB28 B00042A2 */   sb        $v0, (0x1F8000B0 & 0xFFFF)($s2)
  jlabel .L8004BB2C
    /* 3C32C 8004BB2C B2004292 */  lbu        $v0, 0xB2($s2)
    /* 3C330 8004BB30 00000000 */  nop
    /* 3C334 8004BB34 FF004330 */  andi       $v1, $v0, 0xFF
    /* 3C338 8004BB38 1A006010 */  beqz       $v1, .L8004BBA4
    /* 3C33C 8004BB3C FFFF8230 */   andi      $v0, $a0, 0xFFFF
    /* 3C340 8004BB40 1A004300 */  div        $zero, $v0, $v1
    /* 3C344 8004BB44 02006014 */  bnez       $v1, .L8004BB50
    /* 3C348 8004BB48 00000000 */   nop
    /* 3C34C 8004BB4C 0D000700 */  break      7
  .L8004BB50:
    /* 3C350 8004BB50 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3C354 8004BB54 04006114 */  bne        $v1, $at, .L8004BB68
    /* 3C358 8004BB58 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3C35C 8004BB5C 02004114 */  bne        $v0, $at, .L8004BB68
    /* 3C360 8004BB60 00000000 */   nop
    /* 3C364 8004BB64 0D000600 */  break      6
  .L8004BB68:
    /* 3C368 8004BB68 10180000 */  mfhi       $v1
    /* 3C36C 8004BB6C 00000000 */  nop
    /* 3C370 8004BB70 0C006014 */  bnez       $v1, .L8004BBA4
    /* 3C374 8004BB74 00000000 */   nop
    /* 3C378 8004BB78 B3004292 */  lbu        $v0, 0xB3($s2)
    /* 3C37C 8004BB7C 00000000 */  nop
    /* 3C380 8004BB80 04004010 */  beqz       $v0, .L8004BB94
    /* 3C384 8004BB84 00000000 */   nop
    /* 3C388 8004BB88 B1004292 */  lbu        $v0, 0xB1($s2)
    /* 3C38C 8004BB8C E82E0108 */  j          .L8004BBA0
    /* 3C390 8004BB90 01004224 */   addiu     $v0, $v0, 0x1
  .L8004BB94:
    /* 3C394 8004BB94 B1004292 */  lbu        $v0, 0xB1($s2)
    /* 3C398 8004BB98 00000000 */  nop
    /* 3C39C 8004BB9C FFFF4224 */  addiu      $v0, $v0, -0x1
  .L8004BBA0:
    /* 3C3A0 8004BBA0 B10042A2 */  sb         $v0, 0xB1($s2)
  .L8004BBA4:
    /* 3C3A4 8004BBA4 B1004492 */  lbu        $a0, 0xB1($s2)
    /* 3C3A8 8004BBA8 B400458E */  lw         $a1, 0xB4($s2)
    /* 3C3AC 8004BBAC A579000C */  jal        func_8001E694
    /* 3C3B0 8004BBB0 00000000 */   nop
    /* 3C3B4 8004BBB4 03120200 */  sra        $v0, $v0, 8
    /* 3C3B8 8004BBB8 B1004492 */  lbu        $a0, 0xB1($s2)
    /* 3C3BC 8004BBBC F8004396 */  lhu        $v1, 0xF8($s2)
    /* 3C3C0 8004BBC0 B400458E */  lw         $a1, 0xB4($s2)
    /* 3C3C4 8004BBC4 21186200 */  addu       $v1, $v1, $v0
    /* 3C3C8 8004BBC8 B800428E */  lw         $v0, 0xB8($s2)
    /* 3C3CC 8004BBCC F80043A6 */  sh         $v1, 0xF8($s2)
    /* 3C3D0 8004BBD0 FA004396 */  lhu        $v1, 0xFA($s2)
    /* 3C3D4 8004BBD4 03120200 */  sra        $v0, $v0, 8
    /* 3C3D8 8004BBD8 21186200 */  addu       $v1, $v1, $v0
    /* 3C3DC 8004BBDC 6979000C */  jal        func_8001E5A4
    /* 3C3E0 8004BBE0 FA0043A6 */   sh        $v1, 0xFA($s2)
    /* 3C3E4 8004BBE4 03120200 */  sra        $v0, $v0, 8
    /* 3C3E8 8004BBE8 FC004496 */  lhu        $a0, 0xFC($s2)
    /* 3C3EC 8004BBEC FA004396 */  lhu        $v1, 0xFA($s2)
    /* 3C3F0 8004BBF0 21208200 */  addu       $a0, $a0, $v0
    /* 3C3F4 8004BBF4 001C0300 */  sll        $v1, $v1, 16
    /* 3C3F8 8004BBF8 031C0300 */  sra        $v1, $v1, 16
    /* 3C3FC 8004BBFC E0FF6328 */  slti       $v1, $v1, -0x20
    /* 3C400 8004BC00 95006014 */  bnez       $v1, .L8004BE58
    /* 3C404 8004BC04 FC0044A6 */   sh        $a0, 0xFC($s2)
    /* 3C408 8004BC08 B800428E */  lw         $v0, 0xB8($s2)
    /* 3C40C 8004BC0C B400458E */  lw         $a1, 0xB4($s2)
    /* 3C410 8004BC10 01004224 */  addiu      $v0, $v0, 0x1
    /* 3C414 8004BC14 02004104 */  bgez       $v0, .L8004BC20
    /* 3C418 8004BC18 00000000 */   nop
    /* 3C41C 8004BC1C 23100200 */  negu       $v0, $v0
  .L8004BC20:
    /* 3C420 8004BC20 1B00A200 */  divu       $zero, $a1, $v0
    /* 3C424 8004BC24 02004014 */  bnez       $v0, .L8004BC30
    /* 3C428 8004BC28 00000000 */   nop
    /* 3C42C 8004BC2C 0D000700 */  break      7
  .L8004BC30:
    /* 3C430 8004BC30 12180000 */  mflo       $v1
    /* 3C434 8004BC34 00000000 */  nop
    /* 3C438 8004BC38 09006228 */  slti       $v0, $v1, 0x9
    /* 3C43C 8004BC3C 02004014 */  bnez       $v0, .L8004BC48
    /* 3C440 8004BC40 00000000 */   nop
    /* 3C444 8004BC44 08000324 */  addiu      $v1, $zero, 0x8
  .L8004BC48:
    /* 3C448 8004BC48 BC004292 */  lbu        $v0, 0xBC($s2)
    /* 3C44C 8004BC4C 00000000 */  nop
    /* 3C450 8004BC50 FF004430 */  andi       $a0, $v0, 0xFF
    /* 3C454 8004BC54 01000224 */  addiu      $v0, $zero, 0x1
    /* 3C458 8004BC58 21008210 */  beq        $a0, $v0, .L8004BCE0
    /* 3C45C 8004BC5C 02008228 */   slti      $v0, $a0, 0x2
    /* 3C460 8004BC60 05004010 */  beqz       $v0, .L8004BC78
    /* 3C464 8004BC64 00000000 */   nop
    /* 3C468 8004BC68 0B008010 */  beqz       $a0, .L8004BC98
    /* 3C46C 8004BC6C 80180300 */   sll       $v1, $v1, 2
    /* 3C470 8004BC70 802F0108 */  j          .L8004BE00
    /* 3C474 8004BC74 E0FF0224 */   addiu     $v0, $zero, -0x20
  .L8004BC78:
    /* 3C478 8004BC78 02000224 */  addiu      $v0, $zero, 0x2
    /* 3C47C 8004BC7C 2C008210 */  beq        $a0, $v0, .L8004BD30
    /* 3C480 8004BC80 80300300 */   sll       $a2, $v1, 2
    /* 3C484 8004BC84 03000224 */  addiu      $v0, $zero, 0x3
    /* 3C488 8004BC88 42008210 */  beq        $a0, $v0, .L8004BD94
    /* 3C48C 8004BC8C 40000224 */   addiu     $v0, $zero, 0x40
    /* 3C490 8004BC90 802F0108 */  j          .L8004BE00
    /* 3C494 8004BC94 E0FF0224 */   addiu     $v0, $zero, -0x20
  .L8004BC98:
    /* 3C498 8004BC98 40000224 */  addiu      $v0, $zero, 0x40
    /* 3C49C 8004BC9C 23104300 */  subu       $v0, $v0, $v1
    /* 3C4A0 8004BCA0 1800A200 */  mult       $a1, $v0
    /* 3C4A4 8004BCA4 60000224 */  addiu      $v0, $zero, 0x60
    /* 3C4A8 8004BCA8 12300000 */  mflo       $a2
    /* 3C4AC 8004BCAC B800448E */  lw         $a0, 0xB8($s2)
    /* 3C4B0 8004BCB0 23104300 */  subu       $v0, $v0, $v1
    /* 3C4B4 8004BCB4 18008200 */  mult       $a0, $v0
    /* 3C4B8 8004BCB8 02120600 */  srl        $v0, $a2, 8
    /* 3C4BC 8004BCBC 2310A200 */  subu       $v0, $a1, $v0
    /* 3C4C0 8004BCC0 12180000 */  mflo       $v1
    /* 3C4C4 8004BCC4 02006104 */  bgez       $v1, .L8004BCD0
    /* 3C4C8 8004BCC8 B40042AE */   sw        $v0, 0xB4($s2)
    /* 3C4CC 8004BCCC FF006324 */  addiu      $v1, $v1, 0xFF
  .L8004BCD0:
    /* 3C4D0 8004BCD0 03120300 */  sra        $v0, $v1, 8
    /* 3C4D4 8004BCD4 23108200 */  subu       $v0, $a0, $v0
    /* 3C4D8 8004BCD8 7F2F0108 */  j          .L8004BDFC
    /* 3C4DC 8004BCDC B80042AE */   sw        $v0, 0xB8($s2)
  .L8004BCE0:
    /* 3C4E0 8004BCE0 80100300 */  sll        $v0, $v1, 2
    /* 3C4E4 8004BCE4 40000324 */  addiu      $v1, $zero, 0x40
    /* 3C4E8 8004BCE8 23186200 */  subu       $v1, $v1, $v0
    /* 3C4EC 8004BCEC 1800A300 */  mult       $a1, $v1
    /* 3C4F0 8004BCF0 12300000 */  mflo       $a2
    /* 3C4F4 8004BCF4 B800448E */  lw         $a0, 0xB8($s2)
    /* 3C4F8 8004BCF8 00000000 */  nop
    /* 3C4FC 8004BCFC 18008300 */  mult       $a0, $v1
    /* 3C500 8004BD00 12180000 */  mflo       $v1
    /* 3C504 8004BD04 8888023C */  lui        $v0, (0x88888889 >> 16)
    /* 3C508 8004BD08 89884234 */  ori        $v0, $v0, (0x88888889 & 0xFFFF)
    /* 3C50C 8004BD0C 18006200 */  mult       $v1, $v0
    /* 3C510 8004BD10 C2110600 */  srl        $v0, $a2, 7
    /* 3C514 8004BD14 2310A200 */  subu       $v0, $a1, $v0
    /* 3C518 8004BD18 B40042AE */  sw         $v0, 0xB4($s2)
    /* 3C51C 8004BD1C 10400000 */  mfhi       $t0
    /* 3C520 8004BD20 21100301 */  addu       $v0, $t0, $v1
    /* 3C524 8004BD24 C3110200 */  sra        $v0, $v0, 7
    /* 3C528 8004BD28 7C2F0108 */  j          .L8004BDF0
    /* 3C52C 8004BD2C C31F0300 */   sra       $v1, $v1, 31
  .L8004BD30:
    /* 3C530 8004BD30 40000224 */  addiu      $v0, $zero, 0x40
    /* 3C534 8004BD34 B400458E */  lw         $a1, 0xB4($s2)
    /* 3C538 8004BD38 23104600 */  subu       $v0, $v0, $a2
    /* 3C53C 8004BD3C 1800A200 */  mult       $a1, $v0
    /* 3C540 8004BD40 12180000 */  mflo       $v1
    /* 3C544 8004BD44 F0F0023C */  lui        $v0, (0xF0F0F0F1 >> 16)
    /* 3C548 8004BD48 F1F04234 */  ori        $v0, $v0, (0xF0F0F0F1 & 0xFFFF)
    /* 3C54C 8004BD4C 19006200 */  multu      $v1, $v0
    /* 3C550 8004BD50 B800448E */  lw         $a0, 0xB8($s2)
    /* 3C554 8004BD54 10380000 */  mfhi       $a3
    /* 3C558 8004BD58 60000324 */  addiu      $v1, $zero, 0x60
    /* 3C55C 8004BD5C 23186600 */  subu       $v1, $v1, $a2
    /* 3C560 8004BD60 18008300 */  mult       $a0, $v1
    /* 3C564 8004BD64 12180000 */  mflo       $v1
    /* 3C568 8004BD68 E338023C */  lui        $v0, (0x38E38E39 >> 16)
    /* 3C56C 8004BD6C 398E4234 */  ori        $v0, $v0, (0x38E38E39 & 0xFFFF)
    /* 3C570 8004BD70 18006200 */  mult       $v1, $v0
    /* 3C574 8004BD74 BC0040A2 */  sb         $zero, 0xBC($s2)
    /* 3C578 8004BD78 02120700 */  srl        $v0, $a3, 8
    /* 3C57C 8004BD7C 2328A200 */  subu       $a1, $a1, $v0
    /* 3C580 8004BD80 C31F0300 */  sra        $v1, $v1, 31
    /* 3C584 8004BD84 B40045AE */  sw         $a1, 0xB4($s2)
    /* 3C588 8004BD88 10300000 */  mfhi       $a2
    /* 3C58C 8004BD8C 7C2F0108 */  j          .L8004BDF0
    /* 3C590 8004BD90 83110600 */   sra       $v0, $a2, 6
  .L8004BD94:
    /* 3C594 8004BD94 B400458E */  lw         $a1, 0xB4($s2)
    /* 3C598 8004BD98 23104600 */  subu       $v0, $v0, $a2
    /* 3C59C 8004BD9C 1800A200 */  mult       $a1, $v0
    /* 3C5A0 8004BDA0 12180000 */  mflo       $v1
    /* 3C5A4 8004BDA4 E338023C */  lui        $v0, (0x38E38E39 >> 16)
    /* 3C5A8 8004BDA8 398E4234 */  ori        $v0, $v0, (0x38E38E39 & 0xFFFF)
    /* 3C5AC 8004BDAC 19006200 */  multu      $v1, $v0
    /* 3C5B0 8004BDB0 B800448E */  lw         $a0, 0xB8($s2)
    /* 3C5B4 8004BDB4 10380000 */  mfhi       $a3
    /* 3C5B8 8004BDB8 60000324 */  addiu      $v1, $zero, 0x60
    /* 3C5BC 8004BDBC 23186600 */  subu       $v1, $v1, $a2
    /* 3C5C0 8004BDC0 18008300 */  mult       $a0, $v1
    /* 3C5C4 8004BDC4 12180000 */  mflo       $v1
    /* 3C5C8 8004BDC8 CA6B023C */  lui        $v0, (0x6BCA1AF3 >> 16)
    /* 3C5CC 8004BDCC F31A4234 */  ori        $v0, $v0, (0x6BCA1AF3 & 0xFFFF)
    /* 3C5D0 8004BDD0 18006200 */  mult       $v1, $v0
    /* 3C5D4 8004BDD4 BC0040A2 */  sb         $zero, 0xBC($s2)
    /* 3C5D8 8004BDD8 82110700 */  srl        $v0, $a3, 6
    /* 3C5DC 8004BDDC 2328A200 */  subu       $a1, $a1, $v0
    /* 3C5E0 8004BDE0 C31F0300 */  sra        $v1, $v1, 31
    /* 3C5E4 8004BDE4 B40045AE */  sw         $a1, 0xB4($s2)
    /* 3C5E8 8004BDE8 10300000 */  mfhi       $a2
    /* 3C5EC 8004BDEC C3110600 */  sra        $v0, $a2, 7
  .L8004BDF0:
    /* 3C5F0 8004BDF0 23104300 */  subu       $v0, $v0, $v1
    /* 3C5F4 8004BDF4 23208200 */  subu       $a0, $a0, $v0
    /* 3C5F8 8004BDF8 B80044AE */  sw         $a0, 0xB8($s2)
  .L8004BDFC:
    /* 3C5FC 8004BDFC E0FF0224 */  addiu      $v0, $zero, -0x20
  .L8004BE00:
    /* 3C600 8004BE00 FA0042A6 */  sh         $v0, 0xFA($s2)
    /* 3C604 8004BE04 B800428E */  lw         $v0, 0xB8($s2)
    /* 3C608 8004BE08 B2004392 */  lbu        $v1, 0xB2($s2)
    /* 3C60C 8004BE0C 23100200 */  negu       $v0, $v0
    /* 3C610 8004BE10 03006010 */  beqz       $v1, .L8004BE20
    /* 3C614 8004BE14 B80042AE */   sw        $v0, 0xB8($s2)
    /* 3C618 8004BE18 02006224 */  addiu      $v0, $v1, 0x2
    /* 3C61C 8004BE1C B20042A2 */  sb         $v0, 0xB2($s2)
  .L8004BE20:
    /* 3C620 8004BE20 B800428E */  lw         $v0, 0xB8($s2)
    /* 3C624 8004BE24 00000000 */  nop
    /* 3C628 8004BE28 01BB4228 */  slti       $v0, $v0, -0x44FF
    /* 3C62C 8004BE2C 02004014 */  bnez       $v0, .L8004BE38
    /* 3C630 8004BE30 00000000 */   nop
    /* 3C634 8004BE34 BC0040A2 */  sb         $zero, 0xBC($s2)
  .L8004BE38:
    /* 3C638 8004BE38 B800428E */  lw         $v0, 0xB8($s2)
    /* 3C63C 8004BE3C 00000000 */  nop
    /* 3C640 8004BE40 41FA4228 */  slti       $v0, $v0, -0x5BF
    /* 3C644 8004BE44 26004014 */  bnez       $v0, .L8004BEE0
    /* 3C648 8004BE48 02000224 */   addiu     $v0, $zero, 0x2
    /* 3C64C 8004BE4C B80040AE */  sw         $zero, 0xB8($s2)
    /* 3C650 8004BE50 B82F0108 */  j          .L8004BEE0
    /* 3C654 8004BE54 B00042A2 */   sb        $v0, 0xB0($s2)
  .L8004BE58:
    /* 3C658 8004BE58 BC004292 */  lbu        $v0, 0xBC($s2)
    /* 3C65C 8004BE5C 00000000 */  nop
    /* 3C660 8004BE60 FF004330 */  andi       $v1, $v0, 0xFF
    /* 3C664 8004BE64 01000224 */  addiu      $v0, $zero, 0x1
    /* 3C668 8004BE68 13006210 */  beq        $v1, $v0, .L8004BEB8
    /* 3C66C 8004BE6C 00000000 */   nop
    /* 3C670 8004BE70 02006228 */  slti       $v0, $v1, 0x2
    /* 3C674 8004BE74 05004010 */  beqz       $v0, .L8004BE8C
    /* 3C678 8004BE78 00000000 */   nop
    /* 3C67C 8004BE7C 0B006010 */  beqz       $v1, .L8004BEAC
    /* 3C680 8004BE80 00000000 */   nop
    /* 3C684 8004BE84 B82F0108 */  j          .L8004BEE0
    /* 3C688 8004BE88 00000000 */   nop
  .L8004BE8C:
    /* 3C68C 8004BE8C 02000224 */  addiu      $v0, $zero, 0x2
    /* 3C690 8004BE90 0C006210 */  beq        $v1, $v0, .L8004BEC4
    /* 3C694 8004BE94 00000000 */   nop
    /* 3C698 8004BE98 03000224 */  addiu      $v0, $zero, 0x3
    /* 3C69C 8004BE9C 0C006210 */  beq        $v1, $v0, .L8004BED0
    /* 3C6A0 8004BEA0 00000000 */   nop
    /* 3C6A4 8004BEA4 B82F0108 */  j          .L8004BEE0
    /* 3C6A8 8004BEA8 00000000 */   nop
  .L8004BEAC:
    /* 3C6AC 8004BEAC B800428E */  lw         $v0, 0xB8($s2)
    /* 3C6B0 8004BEB0 B72F0108 */  j          .L8004BEDC
    /* 3C6B4 8004BEB4 E0024224 */   addiu     $v0, $v0, 0x2E0
  .L8004BEB8:
    /* 3C6B8 8004BEB8 B800428E */  lw         $v0, 0xB8($s2)
    /* 3C6BC 8004BEBC B72F0108 */  j          .L8004BEDC
    /* 3C6C0 8004BEC0 C0024224 */   addiu     $v0, $v0, 0x2C0
  .L8004BEC4:
    /* 3C6C4 8004BEC4 B800428E */  lw         $v0, 0xB8($s2)
    /* 3C6C8 8004BEC8 B72F0108 */  j          .L8004BEDC
    /* 3C6CC 8004BECC 20034224 */   addiu     $v0, $v0, 0x320
  .L8004BED0:
    /* 3C6D0 8004BED0 B800428E */  lw         $v0, 0xB8($s2)
    /* 3C6D4 8004BED4 00000000 */  nop
    /* 3C6D8 8004BED8 38034224 */  addiu      $v0, $v0, 0x338
  .L8004BEDC:
    /* 3C6DC 8004BEDC B80042AE */  sw         $v0, 0xB8($s2)
  .L8004BEE0:
    /* 3C6E0 8004BEE0 B400428E */  lw         $v0, 0xB4($s2)
    /* 3C6E4 8004BEE4 00000000 */  nop
    /* 3C6E8 8004BEE8 18004200 */  mult       $v0, $v0
    /* 3C6EC 8004BEEC 12180000 */  mflo       $v1
    /* 3C6F0 8004BEF0 B800428E */  lw         $v0, 0xB8($s2)
    /* 3C6F4 8004BEF4 00000000 */  nop
    /* 3C6F8 8004BEF8 18004200 */  mult       $v0, $v0
    /* 3C6FC 8004BEFC 12300000 */  mflo       $a2
    /* 3C700 8004BF00 4AC4020C */  jal        func_800B1128
    /* 3C704 8004BF04 21206600 */   addu      $a0, $v1, $a2
    /* 3C708 8004BF08 B400458E */  lw         $a1, 0xB4($s2)
    /* 3C70C 8004BF0C 00000000 */  nop
    /* 3C710 8004BF10 18004500 */  mult       $v0, $a1
    /* 3C714 8004BF14 9624043C */  lui        $a0, (0x2496DB6D >> 16)
    /* 3C718 8004BF18 12180000 */  mflo       $v1
    /* 3C71C 8004BF1C 6DDB8434 */  ori        $a0, $a0, (0x2496DB6D & 0xFFFF)
    /* 3C720 8004BF20 421D0300 */  srl        $v1, $v1, 21
    /* 3C724 8004BF24 19006400 */  multu      $v1, $a0
    /* 3C728 8004BF28 10300000 */  mfhi       $a2
    /* 3C72C 8004BF2C B800448E */  lw         $a0, 0xB8($s2)
    /* 3C730 8004BF30 00000000 */  nop
    /* 3C734 8004BF34 18004400 */  mult       $v0, $a0
    /* 3C738 8004BF38 12100000 */  mflo       $v0
    /* 3C73C 8004BF3C 4992033C */  lui        $v1, (0x92492493 >> 16)
    /* 3C740 8004BF40 93246334 */  ori        $v1, $v1, (0x92492493 & 0xFFFF)
    /* 3C744 8004BF44 18004300 */  mult       $v0, $v1
    /* 3C748 8004BF48 2328A600 */  subu       $a1, $a1, $a2
    /* 3C74C 8004BF4C B40045AE */  sw         $a1, 0xB4($s2)
    /* 3C750 8004BF50 10180000 */  mfhi       $v1
    /* 3C754 8004BF54 21186200 */  addu       $v1, $v1, $v0
    /* 3C758 8004BF58 C31D0300 */  sra        $v1, $v1, 23
    /* 3C75C 8004BF5C C3170200 */  sra        $v0, $v0, 31
    /* 3C760 8004BF60 23186200 */  subu       $v1, $v1, $v0
    /* 3C764 8004BF64 23208300 */  subu       $a0, $a0, $v1
    /* 3C768 8004BF68 25300108 */  j          .L8004C094
    /* 3C76C 8004BF6C B80044AE */   sw        $a0, 0xB8($s2)
  jlabel .L8004BF70
    /* 3C770 8004BF70 B400458E */  lw         $a1, 0xB4($s2)
    /* 3C774 8004BF74 B1004492 */  lbu        $a0, 0xB1($s2)
    /* 3C778 8004BF78 E0FF0224 */  addiu      $v0, $zero, -0x20
    /* 3C77C 8004BF7C A579000C */  jal        func_8001E694
    /* 3C780 8004BF80 FA0042A6 */   sh        $v0, 0xFA($s2)
    /* 3C784 8004BF84 03120200 */  sra        $v0, $v0, 8
    /* 3C788 8004BF88 B1004492 */  lbu        $a0, 0xB1($s2)
    /* 3C78C 8004BF8C B400458E */  lw         $a1, 0xB4($s2)
    /* 3C790 8004BF90 F8004396 */  lhu        $v1, 0xF8($s2)
    /* 3C794 8004BF94 00000000 */  nop
    /* 3C798 8004BF98 21186200 */  addu       $v1, $v1, $v0
    /* 3C79C 8004BF9C 6979000C */  jal        func_8001E5A4
    /* 3C7A0 8004BFA0 F80043A6 */   sh        $v1, 0xF8($s2)
    /* 3C7A4 8004BFA4 B400448E */  lw         $a0, 0xB4($s2)
    /* 3C7A8 8004BFA8 00000000 */  nop
    /* 3C7AC 8004BFAC 82190400 */  srl        $v1, $a0, 6
    /* 3C7B0 8004BFB0 23208300 */  subu       $a0, $a0, $v1
    /* 3C7B4 8004BFB4 18008400 */  mult       $a0, $a0
    /* 3C7B8 8004BFB8 9624053C */  lui        $a1, (0x2496DB6D >> 16)
    /* 3C7BC 8004BFBC 12400000 */  mflo       $t0
    /* 3C7C0 8004BFC0 6DDBA534 */  ori        $a1, $a1, (0x2496DB6D & 0xFFFF)
    /* 3C7C4 8004BFC4 421D0800 */  srl        $v1, $t0, 21
    /* 3C7C8 8004BFC8 19006500 */  multu      $v1, $a1
    /* 3C7CC 8004BFCC FC004396 */  lhu        $v1, 0xFC($s2)
    /* 3C7D0 8004BFD0 03120200 */  sra        $v0, $v0, 8
    /* 3C7D4 8004BFD4 B20040A2 */  sb         $zero, 0xB2($s2)
    /* 3C7D8 8004BFD8 21186200 */  addu       $v1, $v1, $v0
    /* 3C7DC 8004BFDC FC0043A6 */  sh         $v1, 0xFC($s2)
    /* 3C7E0 8004BFE0 10400000 */  mfhi       $t0
    /* 3C7E4 8004BFE4 23208800 */  subu       $a0, $a0, $t0
    /* 3C7E8 8004BFE8 B40044AE */  sw         $a0, 0xB4($s2)
    /* 3C7EC 8004BFEC 0001842C */  sltiu      $a0, $a0, 0x100
    /* 3C7F0 8004BFF0 28008010 */  beqz       $a0, .L8004C094
    /* 3C7F4 8004BFF4 00000000 */   nop
    /* 3C7F8 8004BFF8 25300108 */  j          .L8004C094
    /* 3C7FC 8004BFFC B00040A2 */   sb        $zero, 0xB0($s2)
  jlabel .L8004C000
    /* 3C800 8004C000 A9024392 */  lbu        $v1, 0x2A9($s2)
    /* 3C804 8004C004 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 3C808 8004C008 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 3C80C 8004C00C FF006330 */  andi       $v1, $v1, 0xFF
    /* 3C810 8004C010 19006200 */  multu      $v1, $v0
    /* 3C814 8004C014 10400000 */  mfhi       $t0
    /* 3C818 8004C018 02210800 */  srl        $a0, $t0, 4
    /* 3C81C 8004C01C 40100400 */  sll        $v0, $a0, 1
    /* 3C820 8004C020 21104400 */  addu       $v0, $v0, $a0
    /* 3C824 8004C024 C0100200 */  sll        $v0, $v0, 3
    /* 3C828 8004C028 23186200 */  subu       $v1, $v1, $v0
    /* 3C82C 8004C02C FF006330 */  andi       $v1, $v1, 0xFF
    /* 3C830 8004C030 40810300 */  sll        $s0, $v1, 5
    /* 3C834 8004C034 23800302 */  subu       $s0, $s0, $v1
    /* 3C838 8004C038 80801000 */  sll        $s0, $s0, 2
    /* 3C83C 8004C03C 21800302 */  addu       $s0, $s0, $v1
    /* 3C840 8004C040 C0801000 */  sll        $s0, $s0, 3
    /* 3C844 8004C044 F402428E */  lw         $v0, 0x2F4($s2)
    /* 3C848 8004C048 2180B000 */  addu       $s0, $a1, $s0
    /* 3C84C 8004C04C A4035190 */  lbu        $s1, 0x3A4($v0)
    /* 3C850 8004C050 A003058E */  lw         $a1, 0x3A0($s0)
    /* 3C854 8004C054 A579000C */  jal        func_8001E694
    /* 3C858 8004C058 21202002 */   addu      $a0, $s1, $zero
    /* 3C85C 8004C05C F8004396 */  lhu        $v1, 0xF8($s2)
    /* 3C860 8004C060 00000000 */  nop
    /* 3C864 8004C064 21186200 */  addu       $v1, $v1, $v0
    /* 3C868 8004C068 F80043A6 */  sh         $v1, 0xF8($s2)
    /* 3C86C 8004C06C A003058E */  lw         $a1, 0x3A0($s0)
    /* 3C870 8004C070 6979000C */  jal        func_8001E5A4
    /* 3C874 8004C074 21202002 */   addu      $a0, $s1, $zero
    /* 3C878 8004C078 FC004396 */  lhu        $v1, 0xFC($s2)
    /* 3C87C 8004C07C 00000000 */  nop
    /* 3C880 8004C080 21186200 */  addu       $v1, $v1, $v0
    /* 3C884 8004C084 FC0043A6 */  sh         $v1, 0xFC($s2)
  jlabel .L8004C088
    /* 3C888 8004C088 E0FF0224 */  addiu      $v0, $zero, -0x20
    /* 3C88C 8004C08C FA0042A6 */  sh         $v0, (0x1F8000FA & 0xFFFF)($s2)
    /* 3C890 8004C090 B40040AE */  sw         $zero, (0x1F8000B4 & 0xFFFF)($s2)
  .L8004C094:
    /* 3C894 8004C094 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 3C898 8004C098 1800B28F */  lw         $s2, 0x18($sp)
    /* 3C89C 8004C09C 1400B18F */  lw         $s1, 0x14($sp)
    /* 3C8A0 8004C0A0 1000B08F */  lw         $s0, 0x10($sp)
    /* 3C8A4 8004C0A4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3C8A8 8004C0A8 0800E003 */  jr         $ra
    /* 3C8AC 8004C0AC 00000000 */   nop
endlabel func_8004BAA4
