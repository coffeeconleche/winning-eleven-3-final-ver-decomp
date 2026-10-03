nonmatching func_800AF398, 0x1F8

glabel func_800AF398
    /* 9FB98 800AF398 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 9FB9C 800AF39C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 9FBA0 800AF3A0 2180A000 */  addu       $s0, $a1, $zero
    /* 9FBA4 800AF3A4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 9FBA8 800AF3A8 21888000 */  addu       $s1, $a0, $zero
    /* 9FBAC 800AF3AC 2000BFAF */  sw         $ra, 0x20($sp)
    /* 9FBB0 800AF3B0 00000486 */  lh         $a0, 0x0($s0)
    /* 9FBB4 800AF3B4 02000586 */  lh         $a1, 0x2($s0)
    /* 9FBB8 800AF3B8 08BE020C */  jal        func_800AF820
    /* 9FBBC 800AF3BC 00000000 */   nop
    /* 9FBC0 800AF3C0 040022AE */  sw         $v0, 0x4($s1)
    /* 9FBC4 800AF3C4 04000496 */  lhu        $a0, 0x4($s0)
    /* 9FBC8 800AF3C8 00000296 */  lhu        $v0, 0x0($s0)
    /* 9FBCC 800AF3CC 02000596 */  lhu        $a1, 0x2($s0)
    /* 9FBD0 800AF3D0 21208200 */  addu       $a0, $a0, $v0
    /* 9FBD4 800AF3D4 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 9FBD8 800AF3D8 00240400 */  sll        $a0, $a0, 16
    /* 9FBDC 800AF3DC 06000296 */  lhu        $v0, 0x6($s0)
    /* 9FBE0 800AF3E0 03240400 */  sra        $a0, $a0, 16
    /* 9FBE4 800AF3E4 2128A200 */  addu       $a1, $a1, $v0
    /* 9FBE8 800AF3E8 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 9FBEC 800AF3EC 002C0500 */  sll        $a1, $a1, 16
    /* 9FBF0 800AF3F0 2EBE020C */  jal        func_800AF8B8
    /* 9FBF4 800AF3F4 032C0500 */   sra       $a1, $a1, 16
    /* 9FBF8 800AF3F8 080022AE */  sw         $v0, 0x8($s1)
    /* 9FBFC 800AF3FC 08000486 */  lh         $a0, 0x8($s0)
    /* 9FC00 800AF400 0A000586 */  lh         $a1, 0xA($s0)
    /* 9FC04 800AF404 54BE020C */  jal        func_800AF950
    /* 9FC08 800AF408 00000000 */   nop
    /* 9FC0C 800AF40C 0C0022AE */  sw         $v0, 0xC($s1)
    /* 9FC10 800AF410 17000492 */  lbu        $a0, 0x17($s0)
    /* 9FC14 800AF414 16000592 */  lbu        $a1, 0x16($s0)
    /* 9FC18 800AF418 14000696 */  lhu        $a2, 0x14($s0)
    /* 9FC1C 800AF41C 00BE020C */  jal        func_800AF800
    /* 9FC20 800AF420 00000000 */   nop
    /* 9FC24 800AF424 0C000426 */  addiu      $a0, $s0, 0xC
    /* 9FC28 800AF428 5BBE020C */  jal        func_800AF96C
    /* 9FC2C 800AF42C 100022AE */   sw        $v0, 0x10($s1)
    /* 9FC30 800AF430 140022AE */  sw         $v0, 0x14($s1)
    /* 9FC34 800AF434 00E6023C */  lui        $v0, (0xE6000000 >> 16)
    /* 9FC38 800AF438 180022AE */  sw         $v0, 0x18($s1)
    /* 9FC3C 800AF43C 18000292 */  lbu        $v0, 0x18($s0)
    /* 9FC40 800AF440 00000000 */  nop
    /* 9FC44 800AF444 4B004010 */  beqz       $v0, .L800AF574
    /* 9FC48 800AF448 07000824 */   addiu     $t0, $zero, 0x7
    /* 9FC4C 800AF44C 00000296 */  lhu        $v0, 0x0($s0)
    /* 9FC50 800AF450 00000000 */  nop
    /* 9FC54 800AF454 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 9FC58 800AF458 02000296 */  lhu        $v0, 0x2($s0)
    /* 9FC5C 800AF45C 00000000 */  nop
    /* 9FC60 800AF460 1200A2A7 */  sh         $v0, 0x12($sp)
    /* 9FC64 800AF464 04000496 */  lhu        $a0, 0x4($s0)
    /* 9FC68 800AF468 00000000 */  nop
    /* 9FC6C 800AF46C 1400A4A7 */  sh         $a0, 0x14($sp)
    /* 9FC70 800AF470 06000296 */  lhu        $v0, 0x6($s0)
    /* 9FC74 800AF474 00000000 */  nop
    /* 9FC78 800AF478 1600A2A7 */  sh         $v0, 0x16($sp)
    /* 9FC7C 800AF47C 00140400 */  sll        $v0, $a0, 16
    /* 9FC80 800AF480 031C0200 */  sra        $v1, $v0, 16
    /* 9FC84 800AF484 0B006004 */  bltz       $v1, .L800AF4B4
    /* 9FC88 800AF488 21100000 */   addu      $v0, $zero, $zero
    /* 9FC8C 800AF48C 0D80023C */  lui        $v0, %hi(D_800CEAC8)
    /* 9FC90 800AF490 C8EA4284 */  lh         $v0, %lo(D_800CEAC8)($v0)
    /* 9FC94 800AF494 00000000 */  nop
    /* 9FC98 800AF498 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 9FC9C 800AF49C 2A104300 */  slt        $v0, $v0, $v1
    /* 9FCA0 800AF4A0 0D80033C */  lui        $v1, %hi(D_800CEAC8)
    /* 9FCA4 800AF4A4 C8EA6394 */  lhu        $v1, %lo(D_800CEAC8)($v1)
    /* 9FCA8 800AF4A8 02004014 */  bnez       $v0, .L800AF4B4
    /* 9FCAC 800AF4AC FFFF6224 */   addiu     $v0, $v1, -0x1
    /* 9FCB0 800AF4B0 21108000 */  addu       $v0, $a0, $zero
  .L800AF4B4:
    /* 9FCB4 800AF4B4 1600A387 */  lh         $v1, 0x16($sp)
    /* 9FCB8 800AF4B8 1600A497 */  lhu        $a0, 0x16($sp)
    /* 9FCBC 800AF4BC 0C006004 */  bltz       $v1, .L800AF4F0
    /* 9FCC0 800AF4C0 1400A2A7 */   sh        $v0, 0x14($sp)
    /* 9FCC4 800AF4C4 0D80023C */  lui        $v0, %hi(D_800CEACA)
    /* 9FCC8 800AF4C8 CAEA4284 */  lh         $v0, %lo(D_800CEACA)($v0)
    /* 9FCCC 800AF4CC 00000000 */  nop
    /* 9FCD0 800AF4D0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 9FCD4 800AF4D4 2A104300 */  slt        $v0, $v0, $v1
    /* 9FCD8 800AF4D8 0D80033C */  lui        $v1, %hi(D_800CEACA)
    /* 9FCDC 800AF4DC CAEA6394 */  lhu        $v1, %lo(D_800CEACA)($v1)
    /* 9FCE0 800AF4E0 04004014 */  bnez       $v0, .L800AF4F4
    /* 9FCE4 800AF4E4 FFFF6224 */   addiu     $v0, $v1, -0x1
    /* 9FCE8 800AF4E8 3DBD0208 */  j          .L800AF4F4
    /* 9FCEC 800AF4EC 21108000 */   addu      $v0, $a0, $zero
  .L800AF4F0:
    /* 9FCF0 800AF4F0 21100000 */  addu       $v0, $zero, $zero
  .L800AF4F4:
    /* 9FCF4 800AF4F4 80300800 */  sll        $a2, $t0, 2
    /* 9FCF8 800AF4F8 01000825 */  addiu      $t0, $t0, 0x1
    /* 9FCFC 800AF4FC 80380800 */  sll        $a3, $t0, 2
    /* 9FD00 800AF500 01000825 */  addiu      $t0, $t0, 0x1
    /* 9FD04 800AF504 80280800 */  sll        $a1, $t0, 2
    /* 9FD08 800AF508 01000825 */  addiu      $t0, $t0, 0x1
    /* 9FD0C 800AF50C 1600A2A7 */  sh         $v0, 0x16($sp)
    /* 9FD10 800AF510 1000A297 */  lhu        $v0, 0x10($sp)
    /* 9FD14 800AF514 08000396 */  lhu        $v1, 0x8($s0)
    /* 9FD18 800AF518 2130D100 */  addu       $a2, $a2, $s1
    /* 9FD1C 800AF51C 23104300 */  subu       $v0, $v0, $v1
    /* 9FD20 800AF520 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 9FD24 800AF524 1200A297 */  lhu        $v0, 0x12($sp)
    /* 9FD28 800AF528 0A000396 */  lhu        $v1, 0xA($s0)
    /* 9FD2C 800AF52C 0060043C */  lui        $a0, (0x60000000 >> 16)
    /* 9FD30 800AF530 23104300 */  subu       $v0, $v0, $v1
    /* 9FD34 800AF534 1200A2A7 */  sh         $v0, 0x12($sp)
    /* 9FD38 800AF538 1B000292 */  lbu        $v0, 0x1B($s0)
    /* 9FD3C 800AF53C 1A000392 */  lbu        $v1, 0x1A($s0)
    /* 9FD40 800AF540 00140200 */  sll        $v0, $v0, 16
    /* 9FD44 800AF544 001A0300 */  sll        $v1, $v1, 8
    /* 9FD48 800AF548 25186400 */  or         $v1, $v1, $a0
    /* 9FD4C 800AF54C 19000492 */  lbu        $a0, 0x19($s0)
    /* 9FD50 800AF550 25104300 */  or         $v0, $v0, $v1
    /* 9FD54 800AF554 25104400 */  or         $v0, $v0, $a0
    /* 9FD58 800AF558 0000C2AC */  sw         $v0, 0x0($a2)
    /* 9FD5C 800AF55C 1000A28F */  lw         $v0, 0x10($sp)
    /* 9FD60 800AF560 2138F100 */  addu       $a3, $a3, $s1
    /* 9FD64 800AF564 0000E2AC */  sw         $v0, 0x0($a3)
    /* 9FD68 800AF568 1400A28F */  lw         $v0, 0x14($sp)
    /* 9FD6C 800AF56C 2128B100 */  addu       $a1, $a1, $s1
    /* 9FD70 800AF570 0000A2AC */  sw         $v0, 0x0($a1)
  .L800AF574:
    /* 9FD74 800AF574 FFFF0225 */  addiu      $v0, $t0, -0x1
    /* 9FD78 800AF578 030022A2 */  sb         $v0, 0x3($s1)
    /* 9FD7C 800AF57C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 9FD80 800AF580 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 9FD84 800AF584 1800B08F */  lw         $s0, 0x18($sp)
    /* 9FD88 800AF588 0800E003 */  jr         $ra
    /* 9FD8C 800AF58C 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800AF398
