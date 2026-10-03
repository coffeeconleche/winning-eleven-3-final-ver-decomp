nonmatching func_8002F2B0, 0x2A4

glabel func_8002F2B0
    /* 1FAB0 8002F2B0 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 1FAB4 8002F2B4 5C00A28F */  lw         $v0, 0x5C($sp)
    /* 1FAB8 8002F2B8 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 1FABC 8002F2BC 6000B38F */  lw         $s3, 0x60($sp)
    /* 1FAC0 8002F2C0 3C00B7AF */  sw         $s7, 0x3C($sp)
    /* 1FAC4 8002F2C4 5800B78F */  lw         $s7, 0x58($sp)
    /* 1FAC8 8002F2C8 6800A38F */  lw         $v1, 0x68($sp)
    /* 1FACC 8002F2CC 4000BEAF */  sw         $fp, 0x40($sp)
    /* 1FAD0 8002F2D0 6400BE97 */  lhu        $fp, 0x64($sp)
    /* 1FAD4 8002F2D4 3400B5AF */  sw         $s5, 0x34($sp)
    /* 1FAD8 8002F2D8 21A88000 */  addu       $s5, $a0, $zero
    /* 1FADC 8002F2DC 3800B6AF */  sw         $s6, 0x38($sp)
    /* 1FAE0 8002F2E0 18007302 */  mult       $s3, $s3
    /* 1FAE4 8002F2E4 21B0C000 */  addu       $s6, $a2, $zero
    /* 1FAE8 8002F2E8 2000B0AF */  sw         $s0, 0x20($sp)
    /* 1FAEC 8002F2EC 801F103C */  lui        $s0, (0x1F800100 >> 16)
    /* 1FAF0 8002F2F0 4400BFAF */  sw         $ra, 0x44($sp)
    /* 1FAF4 8002F2F4 3000B4AF */  sw         $s4, 0x30($sp)
    /* 1FAF8 8002F2F8 2800B2AF */  sw         $s2, 0x28($sp)
    /* 1FAFC 8002F2FC 2400B1AF */  sw         $s1, 0x24($sp)
    /* 1FB00 8002F300 1800A7AF */  sw         $a3, 0x18($sp)
    /* 1FB04 8002F304 00920200 */  sll        $s2, $v0, 8
    /* 1FB08 8002F308 2B105602 */  sltu       $v0, $s2, $s6
    /* 1FB0C 8002F30C 12980000 */  mflo       $s3
    /* 1FB10 8002F310 7C004010 */  beqz       $v0, .L8002F504
    /* 1FB14 8002F314 1000A5A3 */   sb        $a1, 0x10($sp)
    /* 1FB18 8002F318 40100300 */  sll        $v0, $v1, 1
    /* 1FB1C 8002F31C 21104300 */  addu       $v0, $v0, $v1
    /* 1FB20 8002F320 C0100200 */  sll        $v0, $v0, 3
    /* 1FB24 8002F324 23104300 */  subu       $v0, $v0, $v1
    /* 1FB28 8002F328 40110200 */  sll        $v0, $v0, 5
    /* 1FB2C 8002F32C 23A00200 */  negu       $s4, $v0
  .L8002F330:
    /* 1FB30 8002F330 F402028E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s0)
    /* 1FB34 8002F334 F402038E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s0)
    /* 1FB38 8002F338 02004294 */  lhu        $v0, 0x2($v0)
    /* 1FB3C 8002F33C 00000000 */  nop
    /* 1FB40 8002F340 F80002A6 */  sh         $v0, (0x1F8000F8 & 0xFFFF)($s0)
    /* 1FB44 8002F344 04006294 */  lhu        $v0, 0x4($v1)
    /* 1FB48 8002F348 F402038E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s0)
    /* 1FB4C 8002F34C FA0002A6 */  sh         $v0, (0x1F8000FA & 0xFFFF)($s0)
    /* 1FB50 8002F350 06006294 */  lhu        $v0, 0x6($v1)
    /* 1FB54 8002F354 1000A893 */  lbu        $t0, 0x10($sp)
    /* 1FB58 8002F358 B20000A2 */  sb         $zero, (0x1F8000B2 & 0xFFFF)($s0)
    /* 1FB5C 8002F35C B40012AE */  sw         $s2, (0x1F8000B4 & 0xFFFF)($s0)
    /* 1FB60 8002F360 B80014AE */  sw         $s4, (0x1F8000B8 & 0xFFFF)($s0)
    /* 1FB64 8002F364 B10008A2 */  sb         $t0, (0x1F8000B1 & 0xFFFF)($s0)
    /* 1FB68 8002F368 03008012 */  beqz       $s4, .L8002F378
    /* 1FB6C 8002F36C FC0002A6 */   sh        $v0, (0x1F8000FC & 0xFFFF)($s0)
    /* 1FB70 8002F370 DFBC0008 */  j          .L8002F37C
    /* 1FB74 8002F374 01000224 */   addiu     $v0, $zero, 0x1
  .L8002F378:
    /* 1FB78 8002F378 02000224 */  addiu      $v0, $zero, 0x2
  .L8002F37C:
    /* 1FB7C 8002F37C B00002A2 */  sb         $v0, (0x1F8000B0 & 0xFFFF)($s0)
    /* 1FB80 8002F380 F8000396 */  lhu        $v1, (0x1F8000F8 & 0xFFFF)($s0)
    /* 1FB84 8002F384 F402048E */  lw         $a0, (0x1F8002F4 & 0xFFFF)($s0)
    /* 1FB88 8002F388 001C0300 */  sll        $v1, $v1, 16
    /* 1FB8C 8002F38C 02008284 */  lh         $v0, 0x2($a0)
    /* 1FB90 8002F390 03340300 */  sra        $a2, $v1, 16
    /* 1FB94 8002F394 23104600 */  subu       $v0, $v0, $a2
    /* 1FB98 8002F398 18004200 */  mult       $v0, $v0
    /* 1FB9C 8002F39C FC000396 */  lhu        $v1, (0x1F8000FC & 0xFFFF)($s0)
    /* 1FBA0 8002F3A0 00000000 */  nop
    /* 1FBA4 8002F3A4 001C0300 */  sll        $v1, $v1, 16
    /* 1FBA8 8002F3A8 06008284 */  lh         $v0, 0x6($a0)
    /* 1FBAC 8002F3AC 12280000 */  mflo       $a1
    /* 1FBB0 8002F3B0 031C0300 */  sra        $v1, $v1, 16
    /* 1FBB4 8002F3B4 23104300 */  subu       $v0, $v0, $v1
    /* 1FBB8 8002F3B8 18004200 */  mult       $v0, $v0
    /* 1FBBC 8002F3BC 0DBD0008 */  j          .L8002F434
    /* 1FBC0 8002F3C0 21880000 */   addu      $s1, $zero, $zero
  .L8002F3C4:
    /* 1FBC4 8002F3C4 B400028E */  lw         $v0, (0x1F8000B4 & 0xFFFF)($s0)
    /* 1FBC8 8002F3C8 00000000 */  nop
    /* 1FBCC 8002F3CC 0102422C */  sltiu      $v0, $v0, 0x201
    /* 1FBD0 8002F3D0 1D004014 */  bnez       $v0, .L8002F448
    /* 1FBD4 8002F3D4 00000000 */   nop
    /* 1FBD8 8002F3D8 0200C104 */  bgez       $a2, .L8002F3E4
    /* 1FBDC 8002F3DC 2110C000 */   addu      $v0, $a2, $zero
    /* 1FBE0 8002F3E0 23100200 */  negu       $v0, $v0
  .L8002F3E4:
    /* 1FBE4 8002F3E4 01334228 */  slti       $v0, $v0, 0x3301
    /* 1FBE8 8002F3E8 17004010 */  beqz       $v0, .L8002F448
    /* 1FBEC 8002F3EC 00000000 */   nop
    /* 1FBF0 8002F3F0 A92E010C */  jal        func_8004BAA4
    /* 1FBF4 8002F3F4 21200000 */   addu      $a0, $zero, $zero
    /* 1FBF8 8002F3F8 F8000396 */  lhu        $v1, (0x1F8000F8 & 0xFFFF)($s0)
    /* 1FBFC 8002F3FC F402048E */  lw         $a0, (0x1F8002F4 & 0xFFFF)($s0)
    /* 1FC00 8002F400 001C0300 */  sll        $v1, $v1, 16
    /* 1FC04 8002F404 02008284 */  lh         $v0, 0x2($a0)
    /* 1FC08 8002F408 03340300 */  sra        $a2, $v1, 16
    /* 1FC0C 8002F40C 23104600 */  subu       $v0, $v0, $a2
    /* 1FC10 8002F410 18004200 */  mult       $v0, $v0
    /* 1FC14 8002F414 FC000296 */  lhu        $v0, (0x1F8000FC & 0xFFFF)($s0)
    /* 1FC18 8002F418 06008384 */  lh         $v1, 0x6($a0)
    /* 1FC1C 8002F41C 00140200 */  sll        $v0, $v0, 16
    /* 1FC20 8002F420 12280000 */  mflo       $a1
    /* 1FC24 8002F424 03140200 */  sra        $v0, $v0, 16
    /* 1FC28 8002F428 23186200 */  subu       $v1, $v1, $v0
    /* 1FC2C 8002F42C 18006300 */  mult       $v1, $v1
    /* 1FC30 8002F430 01003126 */  addiu      $s1, $s1, 0x1
  .L8002F434:
    /* 1FC34 8002F434 12180000 */  mflo       $v1
    /* 1FC38 8002F438 2110A300 */  addu       $v0, $a1, $v1
    /* 1FC3C 8002F43C 2B105300 */  sltu       $v0, $v0, $s3
    /* 1FC40 8002F440 E0FF4014 */  bnez       $v0, .L8002F3C4
    /* 1FC44 8002F444 00000000 */   nop
  .L8002F448:
    /* 1FC48 8002F448 B400028E */  lw         $v0, (0x1F8000B4 & 0xFFFF)($s0)
    /* 1FC4C 8002F44C 1800A88F */  lw         $t0, 0x18($sp)
    /* 1FC50 8002F450 00000000 */  nop
    /* 1FC54 8002F454 2B104800 */  sltu       $v0, $v0, $t0
    /* 1FC58 8002F458 2A004010 */  beqz       $v0, .L8002F504
    /* 1FC5C 8002F45C 00000000 */   nop
    /* 1FC60 8002F460 F8000296 */  lhu        $v0, (0x1F8000F8 & 0xFFFF)($s0)
    /* 1FC64 8002F464 00000000 */  nop
    /* 1FC68 8002F468 00140200 */  sll        $v0, $v0, 16
    /* 1FC6C 8002F46C 031C0200 */  sra        $v1, $v0, 16
    /* 1FC70 8002F470 02006104 */  bgez       $v1, .L8002F47C
    /* 1FC74 8002F474 21106000 */   addu      $v0, $v1, $zero
    /* 1FC78 8002F478 23100200 */  negu       $v0, $v0
  .L8002F47C:
    /* 1FC7C 8002F47C 00334228 */  slti       $v0, $v0, 0x3300
    /* 1FC80 8002F480 20004010 */  beqz       $v0, .L8002F504
    /* 1FC84 8002F484 00000000 */   nop
    /* 1FC88 8002F488 0200A286 */  lh         $v0, 0x2($s5)
    /* 1FC8C 8002F48C 00000000 */  nop
    /* 1FC90 8002F490 23104300 */  subu       $v0, $v0, $v1
    /* 1FC94 8002F494 18004200 */  mult       $v0, $v0
    /* 1FC98 8002F498 FC000396 */  lhu        $v1, (0x1F8000FC & 0xFFFF)($s0)
    /* 1FC9C 8002F49C 0600A286 */  lh         $v0, 0x6($s5)
    /* 1FCA0 8002F4A0 001C0300 */  sll        $v1, $v1, 16
    /* 1FCA4 8002F4A4 12200000 */  mflo       $a0
    /* 1FCA8 8002F4A8 031C0300 */  sra        $v1, $v1, 16
    /* 1FCAC 8002F4AC 23104300 */  subu       $v0, $v0, $v1
    /* 1FCB0 8002F4B0 18004200 */  mult       $v0, $v0
    /* 1FCB4 8002F4B4 12180000 */  mflo       $v1
    /* 1FCB8 8002F4B8 4AC4020C */  jal        func_800B1128
    /* 1FCBC 8002F4BC 21208300 */   addu      $a0, $a0, $v1
    /* 1FCC0 8002F4C0 1B005700 */  divu       $zero, $v0, $s7
    /* 1FCC4 8002F4C4 0200E016 */  bnez       $s7, .L8002F4D0
    /* 1FCC8 8002F4C8 00000000 */   nop
    /* 1FCCC 8002F4CC 0D000700 */  break      7
  .L8002F4D0:
    /* 1FCD0 8002F4D0 12100000 */  mflo       $v0
    /* 1FCD4 8002F4D4 001C1E00 */  sll        $v1, $fp, 16
    /* 1FCD8 8002F4D8 031C0300 */  sra        $v1, $v1, 16
    /* 1FCDC 8002F4DC 21186200 */  addu       $v1, $v1, $v0
    /* 1FCE0 8002F4E0 10006228 */  slti       $v0, $v1, 0x10
    /* 1FCE4 8002F4E4 03004014 */  bnez       $v0, .L8002F4F4
    /* 1FCE8 8002F4E8 2A107100 */   slt       $v0, $v1, $s1
    /* 1FCEC 8002F4EC 05004010 */  beqz       $v0, .L8002F504
    /* 1FCF0 8002F4F0 00000000 */   nop
  .L8002F4F4:
    /* 1FCF4 8002F4F4 00045226 */  addiu      $s2, $s2, 0x400
    /* 1FCF8 8002F4F8 2B105602 */  sltu       $v0, $s2, $s6
    /* 1FCFC 8002F4FC 8CFF4014 */  bnez       $v0, .L8002F330
    /* 1FD00 8002F500 00000000 */   nop
  .L8002F504:
    /* 1FD04 8002F504 F8000396 */  lhu        $v1, (0x1F8000F8 & 0xFFFF)($s0)
    /* 1FD08 8002F508 FC000496 */  lhu        $a0, (0x1F8000FC & 0xFFFF)($s0)
    /* 1FD0C 8002F50C F402058E */  lw         $a1, (0x1F8002F4 & 0xFFFF)($s0)
    /* 1FD10 8002F510 02121200 */  srl        $v0, $s2, 8
    /* 1FD14 8002F514 FE0003A6 */  sh         $v1, (0x1F8000FE & 0xFFFF)($s0)
    /* 1FD18 8002F518 000104A6 */  sh         $a0, (0x1F800100 & 0xFFFF)($s0)
    /* 1FD1C 8002F51C CC03B1A4 */  sh         $s1, 0x3CC($a1)
    /* 1FD20 8002F520 4400BF8F */  lw         $ra, 0x44($sp)
    /* 1FD24 8002F524 4000BE8F */  lw         $fp, 0x40($sp)
    /* 1FD28 8002F528 3C00B78F */  lw         $s7, 0x3C($sp)
    /* 1FD2C 8002F52C 3800B68F */  lw         $s6, 0x38($sp)
    /* 1FD30 8002F530 3400B58F */  lw         $s5, 0x34($sp)
    /* 1FD34 8002F534 3000B48F */  lw         $s4, 0x30($sp)
    /* 1FD38 8002F538 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 1FD3C 8002F53C 2800B28F */  lw         $s2, 0x28($sp)
    /* 1FD40 8002F540 2400B18F */  lw         $s1, 0x24($sp)
    /* 1FD44 8002F544 2000B08F */  lw         $s0, 0x20($sp)
    /* 1FD48 8002F548 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 1FD4C 8002F54C 0800E003 */  jr         $ra
    /* 1FD50 8002F550 00000000 */   nop
endlabel func_8002F2B0
