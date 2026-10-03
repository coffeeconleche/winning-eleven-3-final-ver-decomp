nonmatching func_8005C2AC, 0x1A8

glabel func_8005C2AC
    /* 4CAAC 8005C2AC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 4CAB0 8005C2B0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4CAB4 8005C2B4 21888000 */  addu       $s1, $a0, $zero
    /* 4CAB8 8005C2B8 FF00A430 */  andi       $a0, $a1, 0xFF
    /* 4CABC 8005C2BC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 4CAC0 8005C2C0 3800B393 */  lbu        $s3, 0x38($sp)
    /* 4CAC4 8005C2C4 FF00C530 */  andi       $a1, $a2, 0xFF
    /* 4CAC8 8005C2C8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4CACC 8005C2CC 2180E000 */  addu       $s0, $a3, $zero
    /* 4CAD0 8005C2D0 2000BFAF */  sw         $ra, 0x20($sp)
    /* 4CAD4 8005C2D4 B539010C */  jal        func_8004E6D4
    /* 4CAD8 8005C2D8 1800B2AF */   sw        $s2, 0x18($sp)
    /* 4CADC 8005C2DC 02002386 */  lh         $v1, 0x2($s1)
    /* 4CAE0 8005C2E0 FF001032 */  andi       $s0, $s0, 0xFF
    /* 4CAE4 8005C2E4 801F013C */  lui        $at, (0x1F80013C >> 16)
    /* 4CAE8 8005C2E8 3C0123AC */  sw         $v1, (0x1F80013C & 0xFFFF)($at)
    /* 4CAEC 8005C2EC 04002386 */  lh         $v1, 0x4($s1)
    /* 4CAF0 8005C2F0 801F123C */  lui        $s2, (0x1F8000F4 >> 16)
    /* 4CAF4 8005C2F4 801F013C */  lui        $at, (0x1F800140 >> 16)
    /* 4CAF8 8005C2F8 400123AC */  sw         $v1, (0x1F800140 & 0xFFFF)($at)
    /* 4CAFC 8005C2FC C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 4CB00 8005C300 23287000 */  subu       $a1, $v1, $s0
    /* 4CB04 8005C304 2130A000 */  addu       $a2, $a1, $zero
    /* 4CB08 8005C308 06002386 */  lh         $v1, 0x6($s1)
    /* 4CB0C 8005C30C 801F013C */  lui        $at, (0x1F800124 >> 16)
    /* 4CB10 8005C310 240120A4 */  sh         $zero, (0x1F800124 & 0xFFFF)($at)
    /* 4CB14 8005C314 801F013C */  lui        $at, (0x1F800144 >> 16)
    /* 4CB18 8005C318 440123AC */  sw         $v1, (0x1F800144 & 0xFFFF)($at)
    /* 4CB1C 8005C31C 0200A104 */  bgez       $a1, .L8005C328
    /* 4CB20 8005C320 21804000 */   addu      $s0, $v0, $zero
    /* 4CB24 8005C324 FF00A624 */  addiu      $a2, $a1, 0xFF
  .L8005C328:
    /* 4CB28 8005C328 801F043C */  lui        $a0, (0x1F800124 >> 16)
    /* 4CB2C 8005C32C 03120600 */  sra        $v0, $a2, 8
    /* 4CB30 8005C330 00120200 */  sll        $v0, $v0, 8
    /* 4CB34 8005C334 2310A200 */  subu       $v0, $a1, $v0
    /* 4CB38 8005C338 00110200 */  sll        $v0, $v0, 4
    /* 4CB3C 8005C33C 801F013C */  lui        $at, (0x1F800126 >> 16)
    /* 4CB40 8005C340 260122A4 */  sh         $v0, (0x1F800126 & 0xFFFF)($at)
    /* 4CB44 8005C344 801F013C */  lui        $at, (0x1F800128 >> 16)
    /* 4CB48 8005C348 280120A4 */  sh         $zero, (0x1F800128 & 0xFFFF)($at)
    /* 4CB4C 8005C34C 2C00228E */  lw         $v0, 0x2C($s1)
    /* 4CB50 8005C350 24018434 */  ori        $a0, $a0, (0x1F800124 & 0xFFFF)
    /* 4CB54 8005C354 801F013C */  lui        $at, (0x1F80014C >> 16)
    /* 4CB58 8005C358 4C0122AC */  sw         $v0, (0x1F80014C & 0xFFFF)($at)
    /* 4CB5C 8005C35C 3000228E */  lw         $v0, 0x30($s1)
    /* 4CB60 8005C360 801F053C */  lui        $a1, (0x1F800104 >> 16)
    /* 4CB64 8005C364 801F013C */  lui        $at, (0x1F800150 >> 16)
    /* 4CB68 8005C368 500122AC */  sw         $v0, (0x1F800150 & 0xFFFF)($at)
    /* 4CB6C 8005C36C 3400228E */  lw         $v0, 0x34($s1)
    /* 4CB70 8005C370 801F013C */  lui        $at, (0x1F800154 >> 16)
    /* 4CB74 8005C374 540122AC */  sw         $v0, (0x1F800154 & 0xFFFF)($at)
    /* 4CB78 8005C378 22C5020C */  jal        func_800B1488
    /* 4CB7C 8005C37C 0401A534 */   ori       $a1, $a1, (0x1F800104 & 0xFFFF)
    /* 4CB80 8005C380 801F043C */  lui        $a0, (0x1F800104 >> 16)
    /* 4CB84 8005C384 04018434 */  ori        $a0, $a0, (0x1F800104 & 0xFFFF)
    /* 4CB88 8005C388 801F053C */  lui        $a1, (0x1F80014C >> 16)
    /* 4CB8C 8005C38C D2C4020C */  jal        func_800B1348
    /* 4CB90 8005C390 4C01A534 */   ori       $a1, $a1, (0x1F80014C & 0xFFFF)
    /* 4CB94 8005C394 801F043C */  lui        $a0, (0x1F800104 >> 16)
    /* 4CB98 8005C398 04018434 */  ori        $a0, $a0, (0x1F800104 & 0xFFFF)
    /* 4CB9C 8005C39C 801F053C */  lui        $a1, (0x1F80013C >> 16)
    /* 4CBA0 8005C3A0 C6C4020C */  jal        func_800B1318
    /* 4CBA4 8005C3A4 3C01A534 */   ori       $a1, $a1, (0x1F80013C & 0xFFFF)
    /* 4CBA8 8005C3A8 04006016 */  bnez       $s3, .L8005C3BC
    /* 4CBAC 8005C3AC 00000000 */   nop
    /* 4CBB0 8005C3B0 00000296 */  lhu        $v0, 0x0($s0)
    /* 4CBB4 8005C3B4 F2700108 */  j          .L8005C3C8
    /* 4CBB8 8005C3B8 00000000 */   nop
  .L8005C3BC:
    /* 4CBBC 8005C3BC 00000296 */  lhu        $v0, 0x0($s0)
    /* 4CBC0 8005C3C0 00000000 */  nop
    /* 4CBC4 8005C3C4 23100200 */  negu       $v0, $v0
  .L8005C3C8:
    /* 4CBC8 8005C3C8 801F013C */  lui        $at, (0x1F800134 >> 16)
    /* 4CBCC 8005C3CC 340122A4 */  sh         $v0, (0x1F800134 & 0xFFFF)($at)
    /* 4CBD0 8005C3D0 02000296 */  lhu        $v0, 0x2($s0)
    /* 4CBD4 8005C3D4 801F013C */  lui        $at, (0x1F800136 >> 16)
    /* 4CBD8 8005C3D8 360122A4 */  sh         $v0, (0x1F800136 & 0xFFFF)($at)
    /* 4CBDC 8005C3DC 04000296 */  lhu        $v0, 0x4($s0)
    /* 4CBE0 8005C3E0 801F013C */  lui        $at, (0x1F800138 >> 16)
    /* 4CBE4 8005C3E4 380122A4 */  sh         $v0, (0x1F800138 & 0xFFFF)($at)
    /* 4CBE8 8005C3E8 04014436 */  ori        $a0, $s2, (0x1F800104 & 0xFFFF)
    /* 4CBEC 8005C3EC 34014536 */  ori        $a1, $s2, (0x1F800134 & 0xFFFF)
    /* 4CBF0 8005C3F0 B2C4020C */  jal        func_800B12C8
    /* 4CBF4 8005C3F4 3C014636 */   ori       $a2, $s2, (0x1F80013C & 0xFFFF)
    /* 4CBF8 8005C3F8 3C01438E */  lw         $v1, (0x1F80013C & 0xFFFF)($s2)
    /* 4CBFC 8005C3FC 02002296 */  lhu        $v0, 0x2($s1)
    /* 4CC00 8005C400 00000000 */  nop
    /* 4CC04 8005C404 21104300 */  addu       $v0, $v0, $v1
    /* 4CC08 8005C408 4001438E */  lw         $v1, (0x1F800140 & 0xFFFF)($s2)
    /* 4CC0C 8005C40C F00042A6 */  sh         $v0, (0x1F8000F0 & 0xFFFF)($s2)
    /* 4CC10 8005C410 04002296 */  lhu        $v0, 0x4($s1)
    /* 4CC14 8005C414 00000000 */  nop
    /* 4CC18 8005C418 21104300 */  addu       $v0, $v0, $v1
    /* 4CC1C 8005C41C 4401438E */  lw         $v1, (0x1F800144 & 0xFFFF)($s2)
    /* 4CC20 8005C420 F20042A6 */  sh         $v0, (0x1F8000F2 & 0xFFFF)($s2)
    /* 4CC24 8005C424 06002296 */  lhu        $v0, 0x6($s1)
    /* 4CC28 8005C428 00000000 */  nop
    /* 4CC2C 8005C42C 21104300 */  addu       $v0, $v0, $v1
    /* 4CC30 8005C430 F40042A6 */  sh         $v0, (0x1F8000F4 & 0xFFFF)($s2)
    /* 4CC34 8005C434 2000BF8F */  lw         $ra, 0x20($sp)
    /* 4CC38 8005C438 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 4CC3C 8005C43C 1800B28F */  lw         $s2, 0x18($sp)
    /* 4CC40 8005C440 1400B18F */  lw         $s1, 0x14($sp)
    /* 4CC44 8005C444 1000B08F */  lw         $s0, 0x10($sp)
    /* 4CC48 8005C448 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 4CC4C 8005C44C 0800E003 */  jr         $ra
    /* 4CC50 8005C450 00000000 */   nop
endlabel func_8005C2AC
