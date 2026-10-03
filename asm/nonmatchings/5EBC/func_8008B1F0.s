nonmatching func_8008B1F0, 0x328

glabel func_8008B1F0
    /* 7B9F0 8008B1F0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 7B9F4 8008B1F4 1800B0AF */  sw         $s0, 0x18($sp)
    /* 7B9F8 8008B1F8 21808000 */  addu       $s0, $a0, $zero
    /* 7B9FC 8008B1FC 2400BFAF */  sw         $ra, 0x24($sp)
    /* 7BA00 8008B200 2000B2AF */  sw         $s2, 0x20($sp)
    /* 7BA04 8008B204 476F010C */  jal        func_8005BD1C
    /* 7BA08 8008B208 1C00B1AF */   sw        $s1, 0x1C($sp)
    /* 7BA0C 8008B20C 90030292 */  lbu        $v0, 0x390($s0)
    /* 7BA10 8008B210 00000000 */  nop
    /* 7BA14 8008B214 FFFF4324 */  addiu      $v1, $v0, -0x1
    /* 7BA18 8008B218 2300622C */  sltiu      $v0, $v1, 0x23
    /* 7BA1C 8008B21C 6E004010 */  beqz       $v0, .L8008B3D8
    /* 7BA20 8008B220 801F123C */   lui       $s2, (0x1F800066 >> 16)
    /* 7BA24 8008B224 80100300 */  sll        $v0, $v1, 2
    /* 7BA28 8008B228 0180013C */  lui        $at, %hi(jtbl_80013D14)
    /* 7BA2C 8008B22C 21082200 */  addu       $at, $at, $v0
    /* 7BA30 8008B230 143D228C */  lw         $v0, %lo(jtbl_80013D14)($at)
    /* 7BA34 8008B234 00000000 */  nop
    /* 7BA38 8008B238 08004000 */  jr         $v0
    /* 7BA3C 8008B23C 00000000 */   nop
  jlabel .L8008B240
    /* 7BA40 8008B240 AB030492 */  lbu        $a0, 0x3AB($s0)
    /* 7BA44 8008B244 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 7BA48 8008B248 F36D010C */  jal        func_8005B7CC
    /* 7BA4C 8008B24C 08000624 */   addiu     $a2, $zero, 0x8
    /* 7BA50 8008B250 FF004430 */  andi       $a0, $v0, 0xFF
    /* 7BA54 8008B254 C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 7BA58 8008B258 23186400 */  subu       $v1, $v1, $a0
    /* 7BA5C 8008B25C 21206000 */  addu       $a0, $v1, $zero
    /* 7BA60 8008B260 02006104 */  bgez       $v1, .L8008B26C
    /* 7BA64 8008B264 AA0302A2 */   sb        $v0, 0x3AA($s0)
    /* 7BA68 8008B268 FF006424 */  addiu      $a0, $v1, 0xFF
  .L8008B26C:
    /* 7BA6C 8008B26C 03120400 */  sra        $v0, $a0, 8
    /* 7BA70 8008B270 00120200 */  sll        $v0, $v0, 8
    /* 7BA74 8008B274 23106200 */  subu       $v0, $v1, $v0
    /* 7BA78 8008B278 0800048E */  lw         $a0, 0x8($s0)
    /* 7BA7C 8008B27C 00110200 */  sll        $v0, $v0, 4
    /* 7BA80 8008B280 260002A6 */  sh         $v0, 0x26($s0)
    /* 7BA84 8008B284 02000296 */  lhu        $v0, 0x2($s0)
    /* 7BA88 8008B288 1000058E */  lw         $a1, 0x10($s0)
    /* 7BA8C 8008B28C 06000396 */  lhu        $v1, 0x6($s0)
    /* 7BA90 8008B290 21104400 */  addu       $v0, $v0, $a0
    /* 7BA94 8008B294 21186500 */  addu       $v1, $v1, $a1
    /* 7BA98 8008B298 020002A6 */  sh         $v0, 0x2($s0)
    /* 7BA9C 8008B29C 1E2D0208 */  j          .L8008B478
    /* 7BAA0 8008B2A0 060003A6 */   sh        $v1, 0x6($s0)
  jlabel .L8008B2A4
    /* 7BAA4 8008B2A4 EB51033C */  lui        $v1, (0x51EB851F >> 16)
    /* 7BAA8 8008B2A8 0800028E */  lw         $v0, 0x8($s0)
    /* 7BAAC 8008B2AC 1F856334 */  ori        $v1, $v1, (0x51EB851F & 0xFFFF)
    /* 7BAB0 8008B2B0 40280200 */  sll        $a1, $v0, 1
    /* 7BAB4 8008B2B4 2128A200 */  addu       $a1, $a1, $v0
    /* 7BAB8 8008B2B8 C0280500 */  sll        $a1, $a1, 3
    /* 7BABC 8008B2BC 2328A200 */  subu       $a1, $a1, $v0
    /* 7BAC0 8008B2C0 80280500 */  sll        $a1, $a1, 2
    /* 7BAC4 8008B2C4 1800A300 */  mult       $a1, $v1
    /* 7BAC8 8008B2C8 0800068E */  lw         $a2, 0x8($s0)
    /* 7BACC 8008B2CC 1000028E */  lw         $v0, 0x10($s0)
    /* 7BAD0 8008B2D0 1000078E */  lw         $a3, 0x10($s0)
    /* 7BAD4 8008B2D4 40200200 */  sll        $a0, $v0, 1
    /* 7BAD8 8008B2D8 21208200 */  addu       $a0, $a0, $v0
    /* 7BADC 8008B2DC C0200400 */  sll        $a0, $a0, 3
    /* 7BAE0 8008B2E0 23208200 */  subu       $a0, $a0, $v0
    /* 7BAE4 8008B2E4 10400000 */  mfhi       $t0
    /* 7BAE8 8008B2E8 80200400 */  sll        $a0, $a0, 2
    /* 7BAEC 8008B2EC 02000296 */  lhu        $v0, 0x2($s0)
    /* 7BAF0 8008B2F0 18008300 */  mult       $a0, $v1
    /* 7BAF4 8008B2F4 C32F0500 */  sra        $a1, $a1, 31
    /* 7BAF8 8008B2F8 21104600 */  addu       $v0, $v0, $a2
    /* 7BAFC 8008B2FC 020002A6 */  sh         $v0, 0x2($s0)
    /* 7BB00 8008B300 43110800 */  sra        $v0, $t0, 5
    /* 7BB04 8008B304 23104500 */  subu       $v0, $v0, $a1
    /* 7BB08 8008B308 06000396 */  lhu        $v1, 0x6($s0)
    /* 7BB0C 8008B30C C3270400 */  sra        $a0, $a0, 31
    /* 7BB10 8008B310 080002AE */  sw         $v0, 0x8($s0)
    /* 7BB14 8008B314 21186700 */  addu       $v1, $v1, $a3
    /* 7BB18 8008B318 060003A6 */  sh         $v1, 0x6($s0)
    /* 7BB1C 8008B31C CE030386 */  lh         $v1, 0x3CE($s0)
    /* 7BB20 8008B320 10500000 */  mfhi       $t2
    /* 7BB24 8008B324 43110A00 */  sra        $v0, $t2, 5
    /* 7BB28 8008B328 23104400 */  subu       $v0, $v0, $a0
    /* 7BB2C 8008B32C 52006014 */  bnez       $v1, .L8008B478
    /* 7BB30 8008B330 100002AE */   sw        $v0, 0x10($s0)
    /* 7BB34 8008B334 21200002 */  addu       $a0, $s0, $zero
    /* 7BB38 8008B338 BB53020C */  jal        func_80094EEC
    /* 7BB3C 8008B33C C0000524 */   addiu     $a1, $zero, 0xC0
    /* 7BB40 8008B340 4D004010 */  beqz       $v0, .L8008B478
    /* 7BB44 8008B344 00000000 */   nop
    /* 7BB48 8008B348 7153020C */  jal        func_80094DC4
    /* 7BB4C 8008B34C 21200002 */   addu      $a0, $s0, $zero
    /* 7BB50 8008B350 19004010 */  beqz       $v0, .L8008B3B8
    /* 7BB54 8008B354 00000000 */   nop
    /* 7BB58 8008B358 AA024392 */  lbu        $v1, 0x2AA($s2)
    /* 7BB5C 8008B35C 8D030292 */  lbu        $v0, 0x38D($s0)
    /* 7BB60 8008B360 00000000 */  nop
    /* 7BB64 8008B364 14004310 */  beq        $v0, $v1, .L8008B3B8
    /* 7BB68 8008B368 00000000 */   nop
    /* 7BB6C 8008B36C AC030292 */  lbu        $v0, 0x3AC($s0)
    /* 7BB70 8008B370 AB030392 */  lbu        $v1, 0x3AB($s0)
    /* 7BB74 8008B374 02004014 */  bnez       $v0, .L8008B380
    /* 7BB78 8008B378 10007124 */   addiu     $s1, $v1, 0x10
    /* 7BB7C 8008B37C F0FF7124 */  addiu      $s1, $v1, -0x10
  .L8008B380:
    /* 7BB80 8008B380 D057020C */  jal        func_80095F40
    /* 7BB84 8008B384 00000000 */   nop
    /* 7BB88 8008B388 21200002 */  addu       $a0, $s0, $zero
    /* 7BB8C 8008B38C FF002532 */  andi       $a1, $s1, 0xFF
    /* 7BB90 8008B390 A003078E */  lw         $a3, 0x3A0($s0)
    /* 7BB94 8008B394 7154020C */  jal        func_800951C4
    /* 7BB98 8008B398 21304000 */   addu      $a2, $v0, $zero
    /* 7BB9C 8008B39C 2454020C */  jal        func_80095090
    /* 7BBA0 8008B3A0 21200002 */   addu      $a0, $s0, $zero
    /* 7BBA4 8008B3A4 5A5E010C */  jal        func_80057968
    /* 7BBA8 8008B3A8 21200002 */   addu      $a0, $s0, $zero
    /* 7BBAC 8008B3AC 01000224 */  addiu      $v0, $zero, 0x1
    /* 7BBB0 8008B3B0 F22C0208 */  j          .L8008B3C8
    /* 7BBB4 8008B3B4 CE0302A6 */   sh        $v0, 0x3CE($s0)
  .L8008B3B8:
    /* 7BBB8 8008B3B8 FD53020C */  jal        func_80094FF4
    /* 7BBBC 8008B3BC 21200002 */   addu      $a0, $s0, $zero
    /* 7BBC0 8008B3C0 385E010C */  jal        func_800578E0
    /* 7BBC4 8008B3C4 21200002 */   addu      $a0, $s0, $zero
  .L8008B3C8:
    /* 7BBC8 8008B3C8 462D020C */  jal        func_8008B518
    /* 7BBCC 8008B3CC 21200002 */   addu      $a0, $s0, $zero
    /* 7BBD0 8008B3D0 1E2D0208 */  j          .L8008B478
    /* 7BBD4 8008B3D4 00000000 */   nop
  jlabel .L8008B3D8
    /* 7BBD8 8008B3D8 EB51033C */  lui        $v1, (0x51EB851F >> 16)
    /* 7BBDC 8008B3DC 0800028E */  lw         $v0, 0x8($s0)
    /* 7BBE0 8008B3E0 1F856334 */  ori        $v1, $v1, (0x51EB851F & 0xFFFF)
    /* 7BBE4 8008B3E4 80280200 */  sll        $a1, $v0, 2
    /* 7BBE8 8008B3E8 2128A200 */  addu       $a1, $a1, $v0
    /* 7BBEC 8008B3EC 00110500 */  sll        $v0, $a1, 4
    /* 7BBF0 8008B3F0 2128A200 */  addu       $a1, $a1, $v0
    /* 7BBF4 8008B3F4 1800A300 */  mult       $a1, $v1
    /* 7BBF8 8008B3F8 0800068E */  lw         $a2, 0x8($s0)
    /* 7BBFC 8008B3FC 1000028E */  lw         $v0, 0x10($s0)
    /* 7BC00 8008B400 1000078E */  lw         $a3, 0x10($s0)
    /* 7BC04 8008B404 80200200 */  sll        $a0, $v0, 2
    /* 7BC08 8008B408 21208200 */  addu       $a0, $a0, $v0
    /* 7BC0C 8008B40C 10400000 */  mfhi       $t0
    /* 7BC10 8008B410 00110400 */  sll        $v0, $a0, 4
    /* 7BC14 8008B414 21208200 */  addu       $a0, $a0, $v0
    /* 7BC18 8008B418 18008300 */  mult       $a0, $v1
    /* 7BC1C 8008B41C 02000296 */  lhu        $v0, 0x2($s0)
    /* 7BC20 8008B420 C32F0500 */  sra        $a1, $a1, 31
    /* 7BC24 8008B424 21104600 */  addu       $v0, $v0, $a2
    /* 7BC28 8008B428 020002A6 */  sh         $v0, 0x2($s0)
    /* 7BC2C 8008B42C 43110800 */  sra        $v0, $t0, 5
    /* 7BC30 8008B430 23104500 */  subu       $v0, $v0, $a1
    /* 7BC34 8008B434 06000396 */  lhu        $v1, 0x6($s0)
    /* 7BC38 8008B438 C3270400 */  sra        $a0, $a0, 31
    /* 7BC3C 8008B43C 080002AE */  sw         $v0, 0x8($s0)
    /* 7BC40 8008B440 21186700 */  addu       $v1, $v1, $a3
    /* 7BC44 8008B444 060003A6 */  sh         $v1, 0x6($s0)
    /* 7BC48 8008B448 10500000 */  mfhi       $t2
    /* 7BC4C 8008B44C 43110A00 */  sra        $v0, $t2, 5
    /* 7BC50 8008B450 23104400 */  subu       $v0, $v0, $a0
    /* 7BC54 8008B454 1E2D0208 */  j          .L8008B478
    /* 7BC58 8008B458 100002AE */   sw        $v0, 0x10($s0)
  jlabel .L8008B45C
    /* 7BC5C 8008B45C 21200002 */  addu       $a0, $s0, $zero
    /* 7BC60 8008B460 5D000524 */  addiu      $a1, $zero, 0x5D
    /* 7BC64 8008B464 8C6E010C */  jal        func_8005BA30
    /* 7BC68 8008B468 04000624 */   addiu     $a2, $zero, 0x4
    /* 7BC6C 8008B46C 85000224 */  addiu      $v0, $zero, 0x85
    /* 7BC70 8008B470 960302A2 */  sb         $v0, 0x396($s0)
    /* 7BC74 8008B474 970300A2 */  sb         $zero, 0x397($s0)
  .L8008B478:
    /* 7BC78 8008B478 3A55020C */  jal        func_800954E8
    /* 7BC7C 8008B47C 21200002 */   addu      $a0, $s0, $zero
    /* 7BC80 8008B480 02000486 */  lh         $a0, 0x2($s0)
    /* 7BC84 8008B484 36004696 */  lhu        $a2, (0x1F800036 & 0xFFFF)($s2)
    /* 7BC88 8008B488 06000586 */  lh         $a1, 0x6($s0)
    /* 7BC8C 8008B48C 66004796 */  lhu        $a3, (0x1F800066 & 0xFFFF)($s2)
    /* 7BC90 8008B490 00340600 */  sll        $a2, $a2, 16
    /* 7BC94 8008B494 03340600 */  sra        $a2, $a2, 16
    /* 7BC98 8008B498 003C0700 */  sll        $a3, $a3, 16
    /* 7BC9C 8008B49C DB6C010C */  jal        func_8005B36C
    /* 7BCA0 8008B4A0 033C0700 */   sra       $a3, $a3, 16
    /* 7BCA4 8008B4A4 AB030392 */  lbu        $v1, 0x3AB($s0)
    /* 7BCA8 8008B4A8 00000000 */  nop
    /* 7BCAC 8008B4AC 23104300 */  subu       $v0, $v0, $v1
    /* 7BCB0 8008B4B0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 7BCB4 8008B4B4 8100422C */  sltiu      $v0, $v0, 0x81
    /* 7BCB8 8008B4B8 02004014 */  bnez       $v0, .L8008B4C4
    /* 7BCBC 8008B4BC F0FF7124 */   addiu     $s1, $v1, -0x10
    /* 7BCC0 8008B4C0 10007124 */  addiu      $s1, $v1, 0x10
  .L8008B4C4:
    /* 7BCC4 8008B4C4 D057020C */  jal        func_80095F40
    /* 7BCC8 8008B4C8 00000000 */   nop
    /* 7BCCC 8008B4CC 21200002 */  addu       $a0, $s0, $zero
    /* 7BCD0 8008B4D0 0C000524 */  addiu      $a1, $zero, 0xC
    /* 7BCD4 8008B4D4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 7BCD8 8008B4D8 A003078E */  lw         $a3, 0x3A0($s0)
    /* 7BCDC 8008B4DC 8B51020C */  jal        func_8009462C
    /* 7BCE0 8008B4E0 FF002632 */   andi      $a2, $s1, 0xFF
    /* 7BCE4 8008B4E4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 7BCE8 8008B4E8 04004010 */  beqz       $v0, .L8008B4FC
    /* 7BCEC 8008B4EC 01000224 */   addiu     $v0, $zero, 0x1
    /* 7BCF0 8008B4F0 CE0302A6 */  sh         $v0, 0x3CE($s0)
    /* 7BCF4 8008B4F4 462D020C */  jal        func_8008B518
    /* 7BCF8 8008B4F8 21200002 */   addu      $a0, $s0, $zero
  .L8008B4FC:
    /* 7BCFC 8008B4FC 2400BF8F */  lw         $ra, 0x24($sp)
    /* 7BD00 8008B500 2000B28F */  lw         $s2, 0x20($sp)
    /* 7BD04 8008B504 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 7BD08 8008B508 1800B08F */  lw         $s0, 0x18($sp)
    /* 7BD0C 8008B50C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 7BD10 8008B510 0800E003 */  jr         $ra
    /* 7BD14 8008B514 00000000 */   nop
endlabel func_8008B1F0
