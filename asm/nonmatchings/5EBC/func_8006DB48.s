nonmatching func_8006DB48, 0x21C

glabel func_8006DB48
    /* 5E348 8006DB48 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5E34C 8006DB4C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5E350 8006DB50 21808000 */  addu       $s0, $a0, $zero
    /* 5E354 8006DB54 801F043C */  lui        $a0, (0x1F8002F4 >> 16)
    /* 5E358 8006DB58 F402848C */  lw         $a0, (0x1F8002F4 & 0xFFFF)($a0)
    /* 5E35C 8006DB5C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 5E360 8006DB60 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5E364 8006DB64 02000286 */  lh         $v0, 0x2($s0)
    /* 5E368 8006DB68 02008384 */  lh         $v1, 0x2($a0)
    /* 5E36C 8006DB6C 00000000 */  nop
    /* 5E370 8006DB70 23104300 */  subu       $v0, $v0, $v1
    /* 5E374 8006DB74 18004200 */  mult       $v0, $v0
    /* 5E378 8006DB78 06000286 */  lh         $v0, 0x6($s0)
    /* 5E37C 8006DB7C 06008384 */  lh         $v1, 0x6($a0)
    /* 5E380 8006DB80 12280000 */  mflo       $a1
    /* 5E384 8006DB84 23104300 */  subu       $v0, $v0, $v1
    /* 5E388 8006DB88 00000000 */  nop
    /* 5E38C 8006DB8C 18004200 */  mult       $v0, $v0
    /* 5E390 8006DB90 FF00033C */  lui        $v1, (0xFFFFFF >> 16)
    /* 5E394 8006DB94 FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
    /* 5E398 8006DB98 12380000 */  mflo       $a3
    /* 5E39C 8006DB9C 2110A700 */  addu       $v0, $a1, $a3
    /* 5E3A0 8006DBA0 2A186200 */  slt        $v1, $v1, $v0
    /* 5E3A4 8006DBA4 59006014 */  bnez       $v1, .L8006DD0C
    /* 5E3A8 8006DBA8 801F113C */   lui       $s1, (0x1F8002F4 >> 16)
    /* 5E3AC 8006DBAC BE030286 */  lh         $v0, 0x3BE($s0)
    /* 5E3B0 8006DBB0 00000000 */  nop
    /* 5E3B4 8006DBB4 49004010 */  beqz       $v0, .L8006DCDC
    /* 5E3B8 8006DBB8 00000000 */   nop
    /* 5E3BC 8006DBBC 801F033C */  lui        $v1, (0x1F8002A9 >> 16)
    /* 5E3C0 8006DBC0 A9026390 */  lbu        $v1, (0x1F8002A9 & 0xFFFF)($v1)
    /* 5E3C4 8006DBC4 00000000 */  nop
    /* 5E3C8 8006DBC8 09006010 */  beqz       $v1, .L8006DBF0
    /* 5E3CC 8006DBCC 00000000 */   nop
    /* 5E3D0 8006DBD0 8D030292 */  lbu        $v0, 0x38D($s0)
    /* 5E3D4 8006DBD4 00000000 */  nop
    /* 5E3D8 8006DBD8 05004310 */  beq        $v0, $v1, .L8006DBF0
    /* 5E3DC 8006DBDC 21200002 */   addu      $a0, $s0, $zero
    /* 5E3E0 8006DBE0 EA2A020C */  jal        func_8008ABA8
    /* 5E3E4 8006DBE4 21280000 */   addu      $a1, $zero, $zero
    /* 5E3E8 8006DBE8 33B70108 */  j          .L8006DCCC
    /* 5E3EC 8006DBEC FF004230 */   andi      $v0, $v0, 0xFF
  .L8006DBF0:
    /* 5E3F0 8006DBF0 B4022296 */  lhu        $v0, (0x1F8002B4 & 0xFFFF)($s1)
    /* 5E3F4 8006DBF4 FF7F0324 */  addiu      $v1, $zero, 0x7FFF
    /* 5E3F8 8006DBF8 00140200 */  sll        $v0, $v0, 16
    /* 5E3FC 8006DBFC 03140200 */  sra        $v0, $v0, 16
    /* 5E400 8006DC00 05004310 */  beq        $v0, $v1, .L8006DC18
    /* 5E404 8006DC04 00000000 */   nop
    /* 5E408 8006DC08 A9022292 */  lbu        $v0, (0x1F8002A9 & 0xFFFF)($s1)
    /* 5E40C 8006DC0C 00000000 */  nop
    /* 5E410 8006DC10 23004010 */  beqz       $v0, .L8006DCA0
    /* 5E414 8006DC14 00000000 */   nop
  .L8006DC18:
    /* 5E418 8006DC18 3025010C */  jal        func_800494C0
    /* 5E41C 8006DC1C 21200002 */   addu      $a0, $s0, $zero
    /* 5E420 8006DC20 3F00033C */  lui        $v1, (0x3FFFFF >> 16)
    /* 5E424 8006DC24 FFFF6334 */  ori        $v1, $v1, (0x3FFFFF & 0xFFFF)
    /* 5E428 8006DC28 2B186200 */  sltu       $v1, $v1, $v0
    /* 5E42C 8006DC2C 17006010 */  beqz       $v1, .L8006DC8C
    /* 5E430 8006DC30 21200002 */   addu      $a0, $s0, $zero
    /* 5E434 8006DC34 FE57020C */  jal        func_80095FF8
    /* 5E438 8006DC38 21200002 */   addu      $a0, $s0, $zero
    /* 5E43C 8006DC3C 13004014 */  bnez       $v0, .L8006DC8C
    /* 5E440 8006DC40 21200002 */   addu      $a0, $s0, $zero
    /* 5E444 8006DC44 F402228E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s1)
    /* 5E448 8006DC48 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 5E44C 8006DC4C A4034490 */  lbu        $a0, 0x3A4($v0)
    /* 5E450 8006DC50 00000000 */  nop
    /* 5E454 8006DC54 2310A400 */  subu       $v0, $a1, $a0
    /* 5E458 8006DC58 FF004330 */  andi       $v1, $v0, 0xFF
    /* 5E45C 8006DC5C 8100622C */  sltiu      $v0, $v1, 0x81
    /* 5E460 8006DC60 08004014 */  bnez       $v0, .L8006DC84
    /* 5E464 8006DC64 31006228 */   slti      $v0, $v1, 0x31
    /* 5E468 8006DC68 23108500 */  subu       $v0, $a0, $a1
    /* 5E46C 8006DC6C FF004230 */  andi       $v0, $v0, 0xFF
    /* 5E470 8006DC70 31004228 */  slti       $v0, $v0, 0x31
    /* 5E474 8006DC74 05004014 */  bnez       $v0, .L8006DC8C
    /* 5E478 8006DC78 21200002 */   addu      $a0, $s0, $zero
    /* 5E47C 8006DC7C 28B70108 */  j          .L8006DCA0
    /* 5E480 8006DC80 00000000 */   nop
  .L8006DC84:
    /* 5E484 8006DC84 06004010 */  beqz       $v0, .L8006DCA0
    /* 5E488 8006DC88 21200002 */   addu      $a0, $s0, $zero
  .L8006DC8C:
    /* 5E48C 8006DC8C EA2A020C */  jal        func_8008ABA8
    /* 5E490 8006DC90 21280000 */   addu      $a1, $zero, $zero
    /* 5E494 8006DC94 FF004230 */  andi       $v0, $v0, 0xFF
    /* 5E498 8006DC98 2C004014 */  bnez       $v0, .L8006DD4C
    /* 5E49C 8006DC9C 01000224 */   addiu     $v0, $zero, 0x1
  .L8006DCA0:
    /* 5E4A0 8006DCA0 E136020C */  jal        func_8008DB84
    /* 5E4A4 8006DCA4 21200002 */   addu      $a0, $s0, $zero
    /* 5E4A8 8006DCA8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 5E4AC 8006DCAC 27004014 */  bnez       $v0, .L8006DD4C
    /* 5E4B0 8006DCB0 01000224 */   addiu     $v0, $zero, 0x1
    /* 5E4B4 8006DCB4 DC40020C */  jal        func_80090370
    /* 5E4B8 8006DCB8 21200002 */   addu      $a0, $s0, $zero
    /* 5E4BC 8006DCBC 23004014 */  bnez       $v0, .L8006DD4C
    /* 5E4C0 8006DCC0 01000224 */   addiu     $v0, $zero, 0x1
    /* 5E4C4 8006DCC4 8631020C */  jal        func_8008C618
    /* 5E4C8 8006DCC8 21200002 */   addu      $a0, $s0, $zero
  .L8006DCCC:
    /* 5E4CC 8006DCCC 0F004010 */  beqz       $v0, .L8006DD0C
    /* 5E4D0 8006DCD0 01000224 */   addiu     $v0, $zero, 0x1
    /* 5E4D4 8006DCD4 53B70108 */  j          .L8006DD4C
    /* 5E4D8 8006DCD8 00000000 */   nop
  .L8006DCDC:
    /* 5E4DC 8006DCDC 9A030292 */  lbu        $v0, 0x39A($s0)
    /* 5E4E0 8006DCE0 00000000 */  nop
    /* 5E4E4 8006DCE4 09004010 */  beqz       $v0, .L8006DD0C
    /* 5E4E8 8006DCE8 00000000 */   nop
    /* 5E4EC 8006DCEC 8D030392 */  lbu        $v1, 0x38D($s0)
    /* 5E4F0 8006DCF0 801F023C */  lui        $v0, (0x1F8002A9 >> 16)
    /* 5E4F4 8006DCF4 A9024290 */  lbu        $v0, (0x1F8002A9 & 0xFFFF)($v0)
    /* 5E4F8 8006DCF8 00000000 */  nop
    /* 5E4FC 8006DCFC 03006214 */  bne        $v1, $v0, .L8006DD0C
    /* 5E500 8006DD00 01000224 */   addiu     $v0, $zero, 0x1
    /* 5E504 8006DD04 51B70108 */  j          .L8006DD44
    /* 5E508 8006DD08 0A000324 */   addiu     $v1, $zero, 0xA
  .L8006DD0C:
    /* 5E50C 8006DD0C 96030392 */  lbu        $v1, 0x396($s0)
    /* 5E510 8006DD10 9D000224 */  addiu      $v0, $zero, 0x9D
    /* 5E514 8006DD14 0D006210 */  beq        $v1, $v0, .L8006DD4C
    /* 5E518 8006DD18 21100000 */   addu      $v0, $zero, $zero
    /* 5E51C 8006DD1C 98030292 */  lbu        $v0, 0x398($s0)
    /* 5E520 8006DD20 D4030396 */  lhu        $v1, 0x3D4($s0)
    /* 5E524 8006DD24 40100200 */  sll        $v0, $v0, 1
    /* 5E528 8006DD28 21105100 */  addu       $v0, $v0, $s1
    /* 5E52C 8006DD2C 32004294 */  lhu        $v0, (0x1F800032 & 0xFFFF)($v0)
    /* 5E530 8006DD30 00000000 */  nop
    /* 5E534 8006DD34 05006214 */  bne        $v1, $v0, .L8006DD4C
    /* 5E538 8006DD38 21100000 */   addu      $v0, $zero, $zero
    /* 5E53C 8006DD3C 01000224 */  addiu      $v0, $zero, 0x1
    /* 5E540 8006DD40 9D000324 */  addiu      $v1, $zero, 0x9D
  .L8006DD44:
    /* 5E544 8006DD44 960303A2 */  sb         $v1, 0x396($s0)
    /* 5E548 8006DD48 970300A2 */  sb         $zero, 0x397($s0)
  .L8006DD4C:
    /* 5E54C 8006DD4C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 5E550 8006DD50 1400B18F */  lw         $s1, 0x14($sp)
    /* 5E554 8006DD54 1000B08F */  lw         $s0, 0x10($sp)
    /* 5E558 8006DD58 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 5E55C 8006DD5C 0800E003 */  jr         $ra
    /* 5E560 8006DD60 00000000 */   nop
endlabel func_8006DB48
