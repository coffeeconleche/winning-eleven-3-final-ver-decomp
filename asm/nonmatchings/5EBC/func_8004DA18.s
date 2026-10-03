nonmatching func_8004DA18, 0x4E4

glabel func_8004DA18
    /* 3E218 8004DA18 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3E21C 8004DA1C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3E220 8004DA20 21888000 */  addu       $s1, $a0, $zero
    /* 3E224 8004DA24 801F043C */  lui        $a0, (0x1F8002A9 >> 16)
    /* 3E228 8004DA28 A9028490 */  lbu        $a0, (0x1F8002A9 & 0xFFFF)($a0)
    /* 3E22C 8004DA2C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3E230 8004DA30 1080103C */  lui        $s0, %hi(D_800FF748)
    /* 3E234 8004DA34 48F71026 */  addiu      $s0, $s0, %lo(D_800FF748)
    /* 3E238 8004DA38 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 3E23C 8004DA3C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3E240 8004DA40 8D032292 */  lbu        $v0, 0x38D($s1)
    /* 3E244 8004DA44 00000000 */  nop
    /* 3E248 8004DA48 16018210 */  beq        $a0, $v0, .L8004DEA4
    /* 3E24C 8004DA4C 801F123C */   lui       $s2, (0x1F8002F4 >> 16)
    /* 3E250 8004DA50 801F013C */  lui        $at, (0x1F800332 >> 16)
    /* 3E254 8004DA54 320320A0 */  sb         $zero, (0x1F800332 & 0xFFFF)($at)
    /* 3E258 8004DA58 AE008010 */  beqz       $a0, .L8004DD14
    /* 3E25C 8004DA5C 01000224 */   addiu     $v0, $zero, 0x1
    /* 3E260 8004DA60 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 3E264 8004DA64 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 3E268 8004DA68 19008200 */  multu      $a0, $v0
    /* 3E26C 8004DA6C 10400000 */  mfhi       $t0
    /* 3E270 8004DA70 02110800 */  srl        $v0, $t0, 4
    /* 3E274 8004DA74 40180200 */  sll        $v1, $v0, 1
    /* 3E278 8004DA78 21186200 */  addu       $v1, $v1, $v0
    /* 3E27C 8004DA7C C0180300 */  sll        $v1, $v1, 3
    /* 3E280 8004DA80 23188300 */  subu       $v1, $a0, $v1
    /* 3E284 8004DA84 FF006330 */  andi       $v1, $v1, 0xFF
    /* 3E288 8004DA88 40110300 */  sll        $v0, $v1, 5
    /* 3E28C 8004DA8C 23104300 */  subu       $v0, $v0, $v1
    /* 3E290 8004DA90 80100200 */  sll        $v0, $v0, 2
    /* 3E294 8004DA94 21104300 */  addu       $v0, $v0, $v1
    /* 3E298 8004DA98 C0100200 */  sll        $v0, $v0, 3
    /* 3E29C 8004DA9C 21805000 */  addu       $s0, $v0, $s0
    /* 3E2A0 8004DAA0 97030392 */  lbu        $v1, 0x397($s0)
    /* 3E2A4 8004DAA4 04000224 */  addiu      $v0, $zero, 0x4
    /* 3E2A8 8004DAA8 07006214 */  bne        $v1, $v0, .L8004DAC8
    /* 3E2AC 8004DAAC 00000000 */   nop
    /* 3E2B0 8004DAB0 D0030292 */  lbu        $v0, 0x3D0($s0)
    /* 3E2B4 8004DAB4 00000000 */  nop
    /* 3E2B8 8004DAB8 03004010 */  beqz       $v0, .L8004DAC8
    /* 3E2BC 8004DABC 00000000 */   nop
  .L8004DAC0:
    /* 3E2C0 8004DAC0 B8370108 */  j          .L8004DEE0
    /* 3E2C4 8004DAC4 01000224 */   addiu     $v0, $zero, 0x1
  .L8004DAC8:
    /* 3E2C8 8004DAC8 AE79000C */  jal        func_8001E6B8
    /* 3E2CC 8004DACC 08000424 */   addiu     $a0, $zero, 0x8
    /* 3E2D0 8004DAD0 F402438E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s2)
    /* 3E2D4 8004DAD4 00000000 */  nop
    /* 3E2D8 8004DAD8 A003638C */  lw         $v1, 0x3A0($v1)
    /* 3E2DC 8004DADC A003248E */  lw         $a0, 0x3A0($s1)
    /* 3E2E0 8004DAE0 021A0300 */  srl        $v1, $v1, 8
    /* 3E2E4 8004DAE4 21208300 */  addu       $a0, $a0, $v1
    /* 3E2E8 8004DAE8 21308200 */  addu       $a2, $a0, $v0
    /* 3E2EC 8004DAEC 5100C228 */  slti       $v0, $a2, 0x51
    /* 3E2F0 8004DAF0 03004014 */  bnez       $v0, .L8004DB00
    /* 3E2F4 8004DAF4 2C00C228 */   slti      $v0, $a2, 0x2C
    /* 3E2F8 8004DAF8 C3360108 */  j          .L8004DB0C
    /* 3E2FC 8004DAFC 50000624 */   addiu     $a2, $zero, 0x50
  .L8004DB00:
    /* 3E300 8004DB00 03004010 */  beqz       $v0, .L8004DB10
    /* 3E304 8004DB04 21202002 */   addu      $a0, $s1, $zero
    /* 3E308 8004DB08 2C000624 */  addiu      $a2, $zero, 0x2C
  .L8004DB0C:
    /* 3E30C 8004DB0C 21202002 */  addu       $a0, $s1, $zero
  .L8004DB10:
    /* 3E310 8004DB10 AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 3E314 8004DB14 3C2C010C */  jal        func_8004B0F0
    /* 3E318 8004DB18 01000724 */   addiu     $a3, $zero, 0x1
    /* 3E31C 8004DB1C 21200002 */  addu       $a0, $s0, $zero
    /* 3E320 8004DB20 644B010C */  jal        func_80052D90
    /* 3E324 8004DB24 1C0340A6 */   sh        $zero, (0x1F80031C & 0xFFFF)($s2)
    /* 3E328 8004DB28 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E32C 8004DB2C E5004014 */  bnez       $v0, .L8004DEC4
    /* 3E330 8004DB30 00000000 */   nop
    /* 3E334 8004DB34 D10300A2 */  sb         $zero, 0x3D1($s0)
    /* 3E338 8004DB38 02002286 */  lh         $v0, 0x2($s1)
    /* 3E33C 8004DB3C 02000686 */  lh         $a2, 0x2($s0)
    /* 3E340 8004DB40 00000000 */  nop
    /* 3E344 8004DB44 23104600 */  subu       $v0, $v0, $a2
    /* 3E348 8004DB48 18004200 */  mult       $v0, $v0
    /* 3E34C 8004DB4C 06000586 */  lh         $a1, 0x6($s0)
    /* 3E350 8004DB50 06002286 */  lh         $v0, 0x6($s1)
    /* 3E354 8004DB54 12200000 */  mflo       $a0
    /* 3E358 8004DB58 23104500 */  subu       $v0, $v0, $a1
    /* 3E35C 8004DB5C 00000000 */  nop
    /* 3E360 8004DB60 18004200 */  mult       $v0, $v0
    /* 3E364 8004DB64 F402438E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s2)
    /* 3E368 8004DB68 00000000 */  nop
    /* 3E36C 8004DB6C 04006284 */  lh         $v0, 0x4($v1)
    /* 3E370 8004DB70 00000000 */  nop
    /* 3E374 8004DB74 80FF4228 */  slti       $v0, $v0, -0x80
    /* 3E378 8004DB78 12480000 */  mflo       $t1
    /* 3E37C 8004DB7C 63004014 */  bnez       $v0, .L8004DD0C
    /* 3E380 8004DB80 21388900 */   addu      $a3, $a0, $t1
    /* 3E384 8004DB84 02006284 */  lh         $v0, 0x2($v1)
    /* 3E388 8004DB88 00000000 */  nop
    /* 3E38C 8004DB8C 2310C200 */  subu       $v0, $a2, $v0
    /* 3E390 8004DB90 18004200 */  mult       $v0, $v0
    /* 3E394 8004DB94 06006284 */  lh         $v0, 0x6($v1)
    /* 3E398 8004DB98 12200000 */  mflo       $a0
    /* 3E39C 8004DB9C 2310A200 */  subu       $v0, $a1, $v0
    /* 3E3A0 8004DBA0 00000000 */  nop
    /* 3E3A4 8004DBA4 18004200 */  mult       $v0, $v0
    /* 3E3A8 8004DBA8 FFC30234 */  ori        $v0, $zero, 0xC3FF
    /* 3E3AC 8004DBAC 12180000 */  mflo       $v1
    /* 3E3B0 8004DBB0 21188300 */  addu       $v1, $a0, $v1
    /* 3E3B4 8004DBB4 2A104300 */  slt        $v0, $v0, $v1
    /* 3E3B8 8004DBB8 04004010 */  beqz       $v0, .L8004DBCC
    /* 3E3BC 8004DBBC FFE00234 */   ori       $v0, $zero, 0xE0FF
    /* 3E3C0 8004DBC0 2A104700 */  slt        $v0, $v0, $a3
    /* 3E3C4 8004DBC4 B4004014 */  bnez       $v0, .L8004DE98
    /* 3E3C8 8004DBC8 18000224 */   addiu     $v0, $zero, 0x18
  .L8004DBCC:
    /* 3E3CC 8004DBCC 10000224 */  addiu      $v0, $zero, 0x10
    /* 3E3D0 8004DBD0 960302A2 */  sb         $v0, 0x396($s0)
    /* 3E3D4 8004DBD4 970300A2 */  sb         $zero, 0x397($s0)
    /* 3E3D8 8004DBD8 F402428E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s2)
    /* 3E3DC 8004DBDC A4032492 */  lbu        $a0, 0x3A4($s1)
    /* 3E3E0 8004DBE0 A4034590 */  lbu        $a1, 0x3A4($v0)
    /* 3E3E4 8004DBE4 00000000 */  nop
    /* 3E3E8 8004DBE8 2310A400 */  subu       $v0, $a1, $a0
    /* 3E3EC 8004DBEC FF004330 */  andi       $v1, $v0, 0xFF
    /* 3E3F0 8004DBF0 8100622C */  sltiu      $v0, $v1, 0x81
    /* 3E3F4 8004DBF4 04004014 */  bnez       $v0, .L8004DC08
    /* 3E3F8 8004DBF8 23108500 */   subu      $v0, $a0, $a1
    /* 3E3FC 8004DBFC FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E400 8004DC00 03370108 */  j          .L8004DC0C
    /* 3E404 8004DC04 28004228 */   slti      $v0, $v0, 0x28
  .L8004DC08:
    /* 3E408 8004DC08 28006228 */  slti       $v0, $v1, 0x28
  .L8004DC0C:
    /* 3E40C 8004DC0C 2A004010 */  beqz       $v0, .L8004DCB8
    /* 3E410 8004DC10 00000000 */   nop
    /* 3E414 8004DC14 02002486 */  lh         $a0, 0x2($s1)
    /* 3E418 8004DC18 06002586 */  lh         $a1, 0x6($s1)
    /* 3E41C 8004DC1C 02000686 */  lh         $a2, 0x2($s0)
    /* 3E420 8004DC20 06000786 */  lh         $a3, 0x6($s0)
    /* 3E424 8004DC24 DB6C010C */  jal        func_8005B36C
    /* 3E428 8004DC28 00000000 */   nop
    /* 3E42C 8004DC2C A4032392 */  lbu        $v1, 0x3A4($s1)
    /* 3E430 8004DC30 00000000 */  nop
    /* 3E434 8004DC34 23104300 */  subu       $v0, $v0, $v1
    /* 3E438 8004DC38 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E43C 8004DC3C 8100422C */  sltiu      $v0, $v0, 0x81
    /* 3E440 8004DC40 10004014 */  bnez       $v0, .L8004DC84
    /* 3E444 8004DC44 00000000 */   nop
    /* 3E448 8004DC48 02002486 */  lh         $a0, 0x2($s1)
    /* 3E44C 8004DC4C 06002586 */  lh         $a1, 0x6($s1)
    /* 3E450 8004DC50 02000686 */  lh         $a2, 0x2($s0)
    /* 3E454 8004DC54 06000786 */  lh         $a3, 0x6($s0)
    /* 3E458 8004DC58 DB6C010C */  jal        func_8005B36C
    /* 3E45C 8004DC5C 00000000 */   nop
    /* 3E460 8004DC60 A4032392 */  lbu        $v1, 0x3A4($s1)
    /* 3E464 8004DC64 00000000 */  nop
    /* 3E468 8004DC68 23186200 */  subu       $v1, $v1, $v0
    /* 3E46C 8004DC6C FF006330 */  andi       $v1, $v1, 0xFF
    /* 3E470 8004DC70 61006328 */  slti       $v1, $v1, 0x61
    /* 3E474 8004DC74 10006014 */  bnez       $v1, .L8004DCB8
    /* 3E478 8004DC78 01000224 */   addiu     $v0, $zero, 0x1
    /* 3E47C 8004DC7C B8370108 */  j          .L8004DEE0
    /* 3E480 8004DC80 00000000 */   nop
  .L8004DC84:
    /* 3E484 8004DC84 02002486 */  lh         $a0, 0x2($s1)
    /* 3E488 8004DC88 06002586 */  lh         $a1, 0x6($s1)
    /* 3E48C 8004DC8C 02000686 */  lh         $a2, 0x2($s0)
    /* 3E490 8004DC90 06000786 */  lh         $a3, 0x6($s0)
    /* 3E494 8004DC94 DB6C010C */  jal        func_8005B36C
    /* 3E498 8004DC98 00000000 */   nop
    /* 3E49C 8004DC9C A4032392 */  lbu        $v1, 0x3A4($s1)
    /* 3E4A0 8004DCA0 00000000 */  nop
    /* 3E4A4 8004DCA4 23104300 */  subu       $v0, $v0, $v1
    /* 3E4A8 8004DCA8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E4AC 8004DCAC 61004228 */  slti       $v0, $v0, 0x61
    /* 3E4B0 8004DCB0 8B004010 */  beqz       $v0, .L8004DEE0
    /* 3E4B4 8004DCB4 01000224 */   addiu     $v0, $zero, 0x1
  .L8004DCB8:
    /* 3E4B8 8004DCB8 02002486 */  lh         $a0, 0x2($s1)
    /* 3E4BC 8004DCBC F402428E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s2)
    /* 3E4C0 8004DCC0 06002586 */  lh         $a1, 0x6($s1)
    /* 3E4C4 8004DCC4 02004684 */  lh         $a2, 0x2($v0)
    /* 3E4C8 8004DCC8 06004784 */  lh         $a3, 0x6($v0)
    /* 3E4CC 8004DCCC DB6C010C */  jal        func_8005B36C
    /* 3E4D0 8004DCD0 00000000 */   nop
    /* 3E4D4 8004DCD4 21202002 */  addu       $a0, $s1, $zero
    /* 3E4D8 8004DCD8 19000524 */  addiu      $a1, $zero, 0x19
    /* 3E4DC 8004DCDC AA032392 */  lbu        $v1, 0x3AA($s1)
    /* 3E4E0 8004DCE0 08000624 */  addiu      $a2, $zero, 0x8
    /* 3E4E4 8004DCE4 23104300 */  subu       $v0, $v0, $v1
    /* 3E4E8 8004DCE8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E4EC 8004DCEC 8100422C */  sltiu      $v0, $v0, 0x81
    /* 3E4F0 8004DCF0 8C6E010C */  jal        func_8005BA30
    /* 3E4F4 8004DCF4 AC0322A2 */   sb        $v0, 0x3AC($s1)
    /* 3E4F8 8004DCF8 0C000224 */  addiu      $v0, $zero, 0xC
    /* 3E4FC 8004DCFC 960322A2 */  sb         $v0, 0x396($s1)
    /* 3E500 8004DD00 970320A2 */  sb         $zero, 0x397($s1)
    /* 3E504 8004DD04 B0360108 */  j          .L8004DAC0
    /* 3E508 8004DD08 CC0320A6 */   sh        $zero, 0x3CC($s1)
  .L8004DD0C:
    /* 3E50C 8004DD0C A6370108 */  j          .L8004DE98
    /* 3E510 8004DD10 18000224 */   addiu     $v0, $zero, 0x18
  .L8004DD14:
    /* 3E514 8004DD14 801F033C */  lui        $v1, (0x1F8002B0 >> 16)
    /* 3E518 8004DD18 B002638C */  lw         $v1, (0x1F8002B0 & 0xFFFF)($v1)
    /* 3E51C 8004DD1C 00000000 */  nop
    /* 3E520 8004DD20 0F006214 */  bne        $v1, $v0, .L8004DD60
    /* 3E524 8004DD24 21380000 */   addu      $a3, $zero, $zero
    /* 3E528 8004DD28 98032292 */  lbu        $v0, 0x398($s1)
    /* 3E52C 8004DD2C 801F013C */  lui        $at, (0x1F8002CF >> 16)
    /* 3E530 8004DD30 21084100 */  addu       $at, $v0, $at
    /* 3E534 8004DD34 CF022290 */  lbu        $v0, (0x1F8002CF & 0xFFFF)($at)
    /* 3E538 8004DD38 00000000 */  nop
    /* 3E53C 8004DD3C 05004014 */  bnez       $v0, .L8004DD54
    /* 3E540 8004DD40 00000000 */   nop
    /* 3E544 8004DD44 BB57010C */  jal        func_80055EEC
    /* 3E548 8004DD48 21202002 */   addu      $a0, $s1, $zero
    /* 3E54C 8004DD4C 58370108 */  j          .L8004DD60
    /* 3E550 8004DD50 21380000 */   addu      $a3, $zero, $zero
  .L8004DD54:
    /* 3E554 8004DD54 A559010C */  jal        func_80056694
    /* 3E558 8004DD58 21202002 */   addu      $a0, $s1, $zero
    /* 3E55C 8004DD5C 21380000 */  addu       $a3, $zero, $zero
  .L8004DD60:
    /* 3E560 8004DD60 F402428E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s2)
    /* 3E564 8004DD64 99032492 */  lbu        $a0, 0x399($s1)
    /* 3E568 8004DD68 02004584 */  lh         $a1, 0x2($v0)
    /* 3E56C 8004DD6C 06004684 */  lh         $a2, 0x6($v0)
    /* 3E570 8004DD70 B19D010C */  jal        func_800676C4
    /* 3E574 8004DD74 01008438 */   xori      $a0, $a0, 0x1
    /* 3E578 8004DD78 99032292 */  lbu        $v0, 0x399($s1)
    /* 3E57C 8004DD7C 00000000 */  nop
    /* 3E580 8004DD80 01004238 */  xori       $v0, $v0, 0x1
    /* 3E584 8004DD84 40100200 */  sll        $v0, $v0, 1
    /* 3E588 8004DD88 21104202 */  addu       $v0, $s2, $v0
    /* 3E58C 8004DD8C 22034390 */  lbu        $v1, (0x1F800322 & 0xFFFF)($v0)
    /* 3E590 8004DD90 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 3E594 8004DD94 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 3E598 8004DD98 19006200 */  multu      $v1, $v0
    /* 3E59C 8004DD9C 10400000 */  mfhi       $t0
    /* 3E5A0 8004DDA0 02210800 */  srl        $a0, $t0, 4
    /* 3E5A4 8004DDA4 40100400 */  sll        $v0, $a0, 1
    /* 3E5A8 8004DDA8 21104400 */  addu       $v0, $v0, $a0
    /* 3E5AC 8004DDAC C0100200 */  sll        $v0, $v0, 3
    /* 3E5B0 8004DDB0 23186200 */  subu       $v1, $v1, $v0
    /* 3E5B4 8004DDB4 FF006330 */  andi       $v1, $v1, 0xFF
    /* 3E5B8 8004DDB8 40110300 */  sll        $v0, $v1, 5
    /* 3E5BC 8004DDBC 23104300 */  subu       $v0, $v0, $v1
    /* 3E5C0 8004DDC0 80100200 */  sll        $v0, $v0, 2
    /* 3E5C4 8004DDC4 21104300 */  addu       $v0, $v0, $v1
    /* 3E5C8 8004DDC8 C0100200 */  sll        $v0, $v0, 3
    /* 3E5CC 8004DDCC 21800202 */  addu       $s0, $s0, $v0
    /* 3E5D0 8004DDD0 644B010C */  jal        func_80052D90
    /* 3E5D4 8004DDD4 21200002 */   addu      $a0, $s0, $zero
    /* 3E5D8 8004DDD8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E5DC 8004DDDC 39004014 */  bnez       $v0, .L8004DEC4
    /* 3E5E0 8004DDE0 00000000 */   nop
    /* 3E5E4 8004DDE4 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 3E5E8 8004DDE8 A4030492 */  lbu        $a0, 0x3A4($s0)
    /* 3E5EC 8004DDEC 00000000 */  nop
    /* 3E5F0 8004DDF0 2310A400 */  subu       $v0, $a1, $a0
    /* 3E5F4 8004DDF4 FF004330 */  andi       $v1, $v0, 0xFF
    /* 3E5F8 8004DDF8 8100622C */  sltiu      $v0, $v1, 0x81
    /* 3E5FC 8004DDFC 08004014 */  bnez       $v0, .L8004DE20
    /* 3E600 8004DE00 40006228 */   slti      $v0, $v1, 0x40
    /* 3E604 8004DE04 23108500 */  subu       $v0, $a0, $a1
    /* 3E608 8004DE08 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E60C 8004DE0C 40004228 */  slti       $v0, $v0, 0x40
    /* 3E610 8004DE10 05004010 */  beqz       $v0, .L8004DE28
    /* 3E614 8004DE14 00000000 */   nop
    /* 3E618 8004DE18 B1370108 */  j          .L8004DEC4
    /* 3E61C 8004DE1C 00000000 */   nop
  .L8004DE20:
    /* 3E620 8004DE20 28004014 */  bnez       $v0, .L8004DEC4
    /* 3E624 8004DE24 00000000 */   nop
  .L8004DE28:
    /* 3E628 8004DE28 F402448E */  lw         $a0, (0x1F8002F4 & 0xFFFF)($s2)
    /* 3E62C 8004DE2C 02000286 */  lh         $v0, 0x2($s0)
    /* 3E630 8004DE30 02008384 */  lh         $v1, 0x2($a0)
    /* 3E634 8004DE34 00000000 */  nop
    /* 3E638 8004DE38 23104300 */  subu       $v0, $v0, $v1
    /* 3E63C 8004DE3C 18004200 */  mult       $v0, $v0
    /* 3E640 8004DE40 06000286 */  lh         $v0, 0x6($s0)
    /* 3E644 8004DE44 06008384 */  lh         $v1, 0x6($a0)
    /* 3E648 8004DE48 12280000 */  mflo       $a1
    /* 3E64C 8004DE4C 23104300 */  subu       $v0, $v0, $v1
    /* 3E650 8004DE50 00000000 */  nop
    /* 3E654 8004DE54 18004200 */  mult       $v0, $v0
    /* 3E658 8004DE58 FFC30234 */  ori        $v0, $zero, 0xC3FF
    /* 3E65C 8004DE5C 12180000 */  mflo       $v1
    /* 3E660 8004DE60 2118A300 */  addu       $v1, $a1, $v1
    /* 3E664 8004DE64 2A104300 */  slt        $v0, $v0, $v1
    /* 3E668 8004DE68 16004014 */  bnez       $v0, .L8004DEC4
    /* 3E66C 8004DE6C 00000000 */   nop
    /* 3E670 8004DE70 04008284 */  lh         $v0, 0x4($a0)
    /* 3E674 8004DE74 00000000 */  nop
    /* 3E678 8004DE78 8CFF4228 */  slti       $v0, $v0, -0x74
    /* 3E67C 8004DE7C 11004014 */  bnez       $v0, .L8004DEC4
    /* 3E680 8004DE80 00000000 */   nop
    /* 3E684 8004DE84 AE79000C */  jal        func_8001E6B8
    /* 3E688 8004DE88 04000424 */   addiu     $a0, $zero, 0x4
    /* 3E68C 8004DE8C 0D004014 */  bnez       $v0, .L8004DEC4
    /* 3E690 8004DE90 10000224 */   addiu     $v0, $zero, 0x10
    /* 3E694 8004DE94 D10300A2 */  sb         $zero, 0x3D1($s0)
  .L8004DE98:
    /* 3E698 8004DE98 960302A2 */  sb         $v0, 0x396($s0)
    /* 3E69C 8004DE9C B1370108 */  j          .L8004DEC4
    /* 3E6A0 8004DEA0 970300A2 */   sb        $zero, 0x397($s0)
  .L8004DEA4:
    /* 3E6A4 8004DEA4 801F023C */  lui        $v0, (0x1F800332 >> 16)
    /* 3E6A8 8004DEA8 32034290 */  lbu        $v0, (0x1F800332 & 0xFFFF)($v0)
    /* 3E6AC 8004DEAC 00000000 */  nop
    /* 3E6B0 8004DEB0 01004224 */  addiu      $v0, $v0, 0x1
    /* 3E6B4 8004DEB4 801F013C */  lui        $at, (0x1F800332 >> 16)
    /* 3E6B8 8004DEB8 320322A0 */  sb         $v0, (0x1F800332 & 0xFFFF)($at)
    /* 3E6BC 8004DEBC D959010C */  jal        func_80056764
    /* 3E6C0 8004DEC0 21202002 */   addu      $a0, $s1, $zero
  .L8004DEC4:
    /* 3E6C4 8004DEC4 F402428E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s2)
    /* 3E6C8 8004DEC8 03000324 */  addiu      $v1, $zero, 0x3
    /* 3E6CC 8004DECC 960343A0 */  sb         $v1, 0x396($v0)
    /* 3E6D0 8004DED0 8D032392 */  lbu        $v1, 0x38D($s1)
    /* 3E6D4 8004DED4 21100000 */  addu       $v0, $zero, $zero
    /* 3E6D8 8004DED8 A90243A2 */  sb         $v1, (0x1F8002A9 & 0xFFFF)($s2)
    /* 3E6DC 8004DEDC A80243A2 */  sb         $v1, (0x1F8002A8 & 0xFFFF)($s2)
  .L8004DEE0:
    /* 3E6E0 8004DEE0 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 3E6E4 8004DEE4 1800B28F */  lw         $s2, 0x18($sp)
    /* 3E6E8 8004DEE8 1400B18F */  lw         $s1, 0x14($sp)
    /* 3E6EC 8004DEEC 1000B08F */  lw         $s0, 0x10($sp)
    /* 3E6F0 8004DEF0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3E6F4 8004DEF4 0800E003 */  jr         $ra
    /* 3E6F8 8004DEF8 00000000 */   nop
endlabel func_8004DA18
