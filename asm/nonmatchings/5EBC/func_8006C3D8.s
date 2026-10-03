nonmatching func_8006C3D8, 0x164

glabel func_8006C3D8
    /* 5CBD8 8006C3D8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5CBDC 8006C3DC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5CBE0 8006C3E0 21808000 */  addu       $s0, $a0, $zero
    /* 5CBE4 8006C3E4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5CBE8 8006C3E8 801F113C */  lui        $s1, (0x1F8002A9 >> 16)
    /* 5CBEC 8006C3EC 801F033C */  lui        $v1, (0x1F80029A >> 16)
    /* 5CBF0 8006C3F0 9A026390 */  lbu        $v1, (0x1F80029A & 0xFFFF)($v1)
    /* 5CBF4 8006C3F4 01000224 */  addiu      $v0, $zero, 0x1
    /* 5CBF8 8006C3F8 4A006214 */  bne        $v1, $v0, .L8006C524
    /* 5CBFC 8006C3FC 1800BFAF */   sw        $ra, 0x18($sp)
    /* 5CC00 8006C400 8D030392 */  lbu        $v1, 0x38D($s0)
    /* 5CC04 8006C404 801F023C */  lui        $v0, (0x1F8002A9 >> 16)
    /* 5CC08 8006C408 A9024290 */  lbu        $v0, (0x1F8002A9 & 0xFFFF)($v0)
    /* 5CC0C 8006C40C 00000000 */  nop
    /* 5CC10 8006C410 3B006210 */  beq        $v1, $v0, .L8006C500
    /* 5CC14 8006C414 00000000 */   nop
    /* 5CC18 8006C418 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 5CC1C 8006C41C F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 5CC20 8006C420 99030392 */  lbu        $v1, 0x399($s0)
    /* 5CC24 8006C424 02004284 */  lh         $v0, 0x2($v0)
    /* 5CC28 8006C428 05006010 */  beqz       $v1, .L8006C440
    /* 5CC2C 8006C42C 00000000 */   nop
    /* 5CC30 8006C430 05004004 */  bltz       $v0, .L8006C448
    /* 5CC34 8006C434 00000000 */   nop
    /* 5CC38 8006C438 1BB10108 */  j          .L8006C46C
    /* 5CC3C 8006C43C 00000000 */   nop
  .L8006C440:
    /* 5CC40 8006C440 0A004018 */  blez       $v0, .L8006C46C
    /* 5CC44 8006C444 00000000 */   nop
  .L8006C448:
    /* 5CC48 8006C448 96030392 */  lbu        $v1, 0x396($s0)
    /* 5CC4C 8006C44C 00000000 */  nop
    /* 5CC50 8006C450 03006010 */  beqz       $v1, .L8006C460
    /* 5CC54 8006C454 07000224 */   addiu     $v0, $zero, 0x7
    /* 5CC58 8006C458 32006214 */  bne        $v1, $v0, .L8006C524
    /* 5CC5C 8006C45C 00000000 */   nop
  .L8006C460:
    /* 5CC60 8006C460 82000224 */  addiu      $v0, $zero, 0x82
    /* 5CC64 8006C464 49B10108 */  j          .L8006C524
    /* 5CC68 8006C468 960302A2 */   sb        $v0, 0x396($s0)
  .L8006C46C:
    /* 5CC6C 8006C46C 2C51020C */  jal        func_800944B0
    /* 5CC70 8006C470 21200002 */   addu      $a0, $s0, $zero
    /* 5CC74 8006C474 21200002 */  addu       $a0, $s0, $zero
    /* 5CC78 8006C478 E154020C */  jal        func_80095384
    /* 5CC7C 8006C47C BE0302A6 */   sh        $v0, 0x3BE($s0)
    /* 5CC80 8006C480 FF004230 */  andi       $v0, $v0, 0xFF
    /* 5CC84 8006C484 BC0302A6 */  sh         $v0, 0x3BC($s0)
    /* 5CC88 8006C488 F402228E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s1)
    /* 5CC8C 8006C48C 00000000 */  nop
    /* 5CC90 8006C490 DC0340A4 */  sh         $zero, 0x3DC($v0)
    /* 5CC94 8006C494 9A030292 */  lbu        $v0, 0x39A($s0)
    /* 5CC98 8006C498 00000000 */  nop
    /* 5CC9C 8006C49C 03004014 */  bnez       $v0, .L8006C4AC
    /* 5CCA0 8006C4A0 00000000 */   nop
    /* 5CCA4 8006C4A4 1B50020C */  jal        func_8009406C
    /* 5CCA8 8006C4A8 21200002 */   addu      $a0, $s0, $zero
  .L8006C4AC:
    /* 5CCAC 8006C4AC 98030292 */  lbu        $v0, 0x398($s0)
    /* 5CCB0 8006C4B0 D4030396 */  lhu        $v1, 0x3D4($s0)
    /* 5CCB4 8006C4B4 40100200 */  sll        $v0, $v0, 1
    /* 5CCB8 8006C4B8 21105100 */  addu       $v0, $v0, $s1
    /* 5CCBC 8006C4BC 32004294 */  lhu        $v0, (0x1F800032 & 0xFFFF)($v0)
    /* 5CCC0 8006C4C0 00000000 */  nop
    /* 5CCC4 8006C4C4 24104300 */  and        $v0, $v0, $v1
    /* 5CCC8 8006C4C8 14004014 */  bnez       $v0, .L8006C51C
    /* 5CCCC 8006C4CC 00000000 */   nop
    /* 5CCD0 8006C4D0 A9022292 */  lbu        $v0, (0x1F8002A9 & 0xFFFF)($s1)
    /* 5CCD4 8006C4D4 00000000 */  nop
    /* 5CCD8 8006C4D8 05004010 */  beqz       $v0, .L8006C4F0
    /* 5CCDC 8006C4DC 00000000 */   nop
    /* 5CCE0 8006C4E0 AEB1010C */  jal        func_8006C6B8
    /* 5CCE4 8006C4E4 21200002 */   addu      $a0, $s0, $zero
    /* 5CCE8 8006C4E8 47B10108 */  j          .L8006C51C
    /* 5CCEC 8006C4EC 00000000 */   nop
  .L8006C4F0:
    /* 5CCF0 8006C4F0 96B2010C */  jal        func_8006CA58
    /* 5CCF4 8006C4F4 21200002 */   addu      $a0, $s0, $zero
    /* 5CCF8 8006C4F8 47B10108 */  j          .L8006C51C
    /* 5CCFC 8006C4FC 00000000 */   nop
  .L8006C500:
    /* 5CD00 8006C500 2C51020C */  jal        func_800944B0
    /* 5CD04 8006C504 21200002 */   addu      $a0, $s0, $zero
    /* 5CD08 8006C508 21200002 */  addu       $a0, $s0, $zero
    /* 5CD0C 8006C50C E154020C */  jal        func_80095384
    /* 5CD10 8006C510 BE0302A6 */   sh        $v0, 0x3BE($s0)
    /* 5CD14 8006C514 FF004230 */  andi       $v0, $v0, 0xFF
    /* 5CD18 8006C518 BC0302A6 */  sh         $v0, 0x3BC($s0)
  .L8006C51C:
    /* 5CD1C 8006C51C 4FB1010C */  jal        func_8006C53C
    /* 5CD20 8006C520 21200002 */   addu      $a0, $s0, $zero
  .L8006C524:
    /* 5CD24 8006C524 1800BF8F */  lw         $ra, 0x18($sp)
    /* 5CD28 8006C528 1400B18F */  lw         $s1, 0x14($sp)
    /* 5CD2C 8006C52C 1000B08F */  lw         $s0, 0x10($sp)
    /* 5CD30 8006C530 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 5CD34 8006C534 0800E003 */  jr         $ra
    /* 5CD38 8006C538 00000000 */   nop
endlabel func_8006C3D8
