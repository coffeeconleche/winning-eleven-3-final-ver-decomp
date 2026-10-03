nonmatching func_8003E204, 0x860

glabel func_8003E204
    /* 2EA04 8003E204 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2EA08 8003E208 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2EA0C 8003E20C 21888000 */  addu       $s1, $a0, $zero
    /* 2EA10 8003E210 01000324 */  addiu      $v1, $zero, 0x1
    /* 2EA14 8003E214 2000B2AF */  sw         $s2, 0x20($sp)
    /* 2EA18 8003E218 1080123C */  lui        $s2, %hi(D_800FF748)
    /* 2EA1C 8003E21C 48F75226 */  addiu      $s2, $s2, %lo(D_800FF748)
    /* 2EA20 8003E220 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 2EA24 8003E224 2800B4AF */  sw         $s4, 0x28($sp)
    /* 2EA28 8003E228 2400B3AF */  sw         $s3, 0x24($sp)
    /* 2EA2C 8003E22C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 2EA30 8003E230 AE032296 */  lhu        $v0, 0x3AE($s1)
    /* 2EA34 8003E234 A70323A2 */  sb         $v1, 0x3A7($s1)
    /* 2EA38 8003E238 97032392 */  lbu        $v1, 0x397($s1)
    /* 2EA3C 8003E23C FDFF4224 */  addiu      $v0, $v0, -0x3
    /* 2EA40 8003E240 AE0322A6 */  sh         $v0, 0x3AE($s1)
    /* 2EA44 8003E244 3100622C */  sltiu      $v0, $v1, 0x31
    /* 2EA48 8003E248 AB014010 */  beqz       $v0, .L8003E8F8
    /* 2EA4C 8003E24C 801F133C */   lui       $s3, (0x1F80031E >> 16)
    /* 2EA50 8003E250 80100300 */  sll        $v0, $v1, 2
    /* 2EA54 8003E254 0180013C */  lui        $at, %hi(jtbl_80011108)
    /* 2EA58 8003E258 21082200 */  addu       $at, $at, $v0
    /* 2EA5C 8003E25C 0811228C */  lw         $v0, %lo(jtbl_80011108)($at)
    /* 2EA60 8003E260 00000000 */  nop
    /* 2EA64 8003E264 08004000 */  jr         $v0
    /* 2EA68 8003E268 00000000 */   nop
  jlabel .L8003E26C
    /* 2EA6C 8003E26C 476F010C */  jal        func_8005BD1C
    /* 2EA70 8003E270 21202002 */   addu      $a0, $s1, $zero
    /* 2EA74 8003E274 90032292 */  lbu        $v0, 0x390($s1)
    /* 2EA78 8003E278 00000000 */  nop
    /* 2EA7C 8003E27C 19004014 */  bnez       $v0, .L8003E2E4
    /* 2EA80 8003E280 D10320A2 */   sb        $zero, 0x3D1($s1)
    /* 2EA84 8003E284 21202002 */  addu       $a0, $s1, $zero
    /* 2EA88 8003E288 26000524 */  addiu      $a1, $zero, 0x26
    /* 2EA8C 8003E28C 8C6E010C */  jal        func_8005BA30
    /* 2EA90 8003E290 0F000624 */   addiu     $a2, $zero, 0xF
    /* 2EA94 8003E294 A8026292 */  lbu        $v0, (0x1F8002A8 & 0xFFFF)($s3)
    /* 2EA98 8003E298 8D032392 */  lbu        $v1, 0x38D($s1)
    /* 2EA9C 8003E29C 00000000 */  nop
    /* 2EAA0 8003E2A0 09006210 */  beq        $v1, $v0, .L8003E2C8
    /* 2EAA4 8003E2A4 01000224 */   addiu     $v0, $zero, 0x1
    /* 2EAA8 8003E2A8 99032292 */  lbu        $v0, 0x399($s1)
    /* 2EAAC 8003E2AC 00000000 */  nop
    /* 2EAB0 8003E2B0 40100200 */  sll        $v0, $v0, 1
    /* 2EAB4 8003E2B4 21106202 */  addu       $v0, $s3, $v0
    /* 2EAB8 8003E2B8 1E034290 */  lbu        $v0, (0x1F80031E & 0xFFFF)($v0)
    /* 2EABC 8003E2BC 00000000 */  nop
    /* 2EAC0 8003E2C0 04006210 */  beq        $v1, $v0, .L8003E2D4
    /* 2EAC4 8003E2C4 01000224 */   addiu     $v0, $zero, 0x1
  .L8003E2C8:
    /* 2EAC8 8003E2C8 960322A2 */  sb         $v0, 0x396($s1)
    /* 2EACC 8003E2CC B9F80008 */  j          .L8003E2E4
    /* 2EAD0 8003E2D0 970320A2 */   sb        $zero, 0x397($s1)
  .L8003E2D4:
    /* 2EAD4 8003E2D4 1B000224 */  addiu      $v0, $zero, 0x1B
    /* 2EAD8 8003E2D8 960322A2 */  sb         $v0, 0x396($s1)
    /* 2EADC 8003E2DC 01000224 */  addiu      $v0, $zero, 0x1
    /* 2EAE0 8003E2E0 970322A2 */  sb         $v0, 0x397($s1)
  .L8003E2E4:
    /* 2EAE4 8003E2E4 A003228E */  lw         $v0, 0x3A0($s1)
    /* 2EAE8 8003E2E8 00000000 */  nop
    /* 2EAEC 8003E2EC 09004224 */  addiu      $v0, $v0, 0x9
    /* 2EAF0 8003E2F0 A00322AE */  sw         $v0, 0x3A0($s1)
    /* 2EAF4 8003E2F4 2500422C */  sltiu      $v0, $v0, 0x25
    /* 2EAF8 8003E2F8 7F014014 */  bnez       $v0, .L8003E8F8
    /* 2EAFC 8003E2FC 24000224 */   addiu     $v0, $zero, 0x24
    /* 2EB00 8003E300 3EFA0008 */  j          .L8003E8F8
    /* 2EB04 8003E304 A00322AE */   sw        $v0, 0x3A0($s1)
  jlabel .L8003E308
    /* 2EB08 8003E308 476F010C */  jal        func_8005BD1C
    /* 2EB0C 8003E30C 21202002 */   addu      $a0, $s1, $zero
    /* 2EB10 8003E310 0321010C */  jal        func_8004840C
    /* 2EB14 8003E314 21202002 */   addu      $a0, $s1, $zero
    /* 2EB18 8003E318 02002486 */  lh         $a0, 0x2($s1)
    /* 2EB1C 8003E31C F8006696 */  lhu        $a2, 0xF8($s3)
    /* 2EB20 8003E320 06002586 */  lh         $a1, 0x6($s1)
    /* 2EB24 8003E324 FC006796 */  lhu        $a3, 0xFC($s3)
    /* 2EB28 8003E328 00340600 */  sll        $a2, $a2, 16
    /* 2EB2C 8003E32C 03340600 */  sra        $a2, $a2, 16
    /* 2EB30 8003E330 003C0700 */  sll        $a3, $a3, 16
    /* 2EB34 8003E334 DB6C010C */  jal        func_8005B36C
    /* 2EB38 8003E338 033C0700 */   sra       $a3, $a3, 16
    /* 2EB3C 8003E33C AA2A033C */  lui        $v1, (0x2AAAAAAB >> 16)
    /* 2EB40 8003E340 C2032596 */  lhu        $a1, 0x3C2($s1)
    /* 2EB44 8003E344 ABAA6334 */  ori        $v1, $v1, (0x2AAAAAAB & 0xFFFF)
    /* 2EB48 8003E348 002C0500 */  sll        $a1, $a1, 16
    /* 2EB4C 8003E34C 03240500 */  sra        $a0, $a1, 16
    /* 2EB50 8003E350 18008300 */  mult       $a0, $v1
    /* 2EB54 8003E354 21804000 */  addu       $s0, $v0, $zero
    /* 2EB58 8003E358 C32F0500 */  sra        $a1, $a1, 31
    /* 2EB5C 8003E35C 10400000 */  mfhi       $t0
    /* 2EB60 8003E360 83180800 */  sra        $v1, $t0, 2
    /* 2EB64 8003E364 23186500 */  subu       $v1, $v1, $a1
    /* 2EB68 8003E368 40100300 */  sll        $v0, $v1, 1
    /* 2EB6C 8003E36C 21104300 */  addu       $v0, $v0, $v1
    /* 2EB70 8003E370 C0100200 */  sll        $v0, $v0, 3
    /* 2EB74 8003E374 23208200 */  subu       $a0, $a0, $v0
    /* 2EB78 8003E378 00240400 */  sll        $a0, $a0, 16
    /* 2EB7C 8003E37C 03240400 */  sra        $a0, $a0, 16
    /* 2EB80 8003E380 40110400 */  sll        $v0, $a0, 5
    /* 2EB84 8003E384 23104400 */  subu       $v0, $v0, $a0
    /* 2EB88 8003E388 80100200 */  sll        $v0, $v0, 2
    /* 2EB8C 8003E38C 21104400 */  addu       $v0, $v0, $a0
    /* 2EB90 8003E390 C0100200 */  sll        $v0, $v0, 3
    /* 2EB94 8003E394 A9026392 */  lbu        $v1, 0x2A9($s3)
    /* 2EB98 8003E398 00000000 */  nop
    /* 2EB9C 8003E39C 26006010 */  beqz       $v1, .L8003E438
    /* 2EBA0 8003E3A0 21904202 */   addu      $s2, $s2, $v0
    /* 2EBA4 8003E3A4 F402638E */  lw         $v1, 0x2F4($s3)
    /* 2EBA8 8003E3A8 02002286 */  lh         $v0, 0x2($s1)
    /* 2EBAC 8003E3AC 02006484 */  lh         $a0, 0x2($v1)
    /* 2EBB0 8003E3B0 00000000 */  nop
    /* 2EBB4 8003E3B4 23104400 */  subu       $v0, $v0, $a0
    /* 2EBB8 8003E3B8 18004200 */  mult       $v0, $v0
    /* 2EBBC 8003E3BC 06006384 */  lh         $v1, 0x6($v1)
    /* 2EBC0 8003E3C0 06002286 */  lh         $v0, 0x6($s1)
    /* 2EBC4 8003E3C4 12380000 */  mflo       $a3
    /* 2EBC8 8003E3C8 23104300 */  subu       $v0, $v0, $v1
    /* 2EBCC 8003E3CC 00000000 */  nop
    /* 2EBD0 8003E3D0 18004200 */  mult       $v0, $v0
    /* 2EBD4 8003E3D4 02004286 */  lh         $v0, 0x2($s2)
    /* 2EBD8 8003E3D8 12300000 */  mflo       $a2
    /* 2EBDC 8003E3DC 23104400 */  subu       $v0, $v0, $a0
    /* 2EBE0 8003E3E0 00000000 */  nop
    /* 2EBE4 8003E3E4 18004200 */  mult       $v0, $v0
    /* 2EBE8 8003E3E8 06004286 */  lh         $v0, 0x6($s2)
    /* 2EBEC 8003E3EC 12280000 */  mflo       $a1
    /* 2EBF0 8003E3F0 23104300 */  subu       $v0, $v0, $v1
    /* 2EBF4 8003E3F4 00000000 */  nop
    /* 2EBF8 8003E3F8 18004200 */  mult       $v0, $v0
    /* 2EBFC 8003E3FC 2120E600 */  addu       $a0, $a3, $a2
    /* 2EC00 8003E400 12180000 */  mflo       $v1
    /* 2EC04 8003E404 2110A300 */  addu       $v0, $a1, $v1
    /* 2EC08 8003E408 00900334 */  ori        $v1, $zero, 0x9000
    /* 2EC0C 8003E40C 21104300 */  addu       $v0, $v0, $v1
    /* 2EC10 8003E410 2A208200 */  slt        $a0, $a0, $v0
    /* 2EC14 8003E414 08008014 */  bnez       $a0, .L8003E438
    /* 2EC18 8003E418 00000000 */   nop
    /* 2EC1C 8003E41C AC032292 */  lbu        $v0, 0x3AC($s1)
    /* 2EC20 8003E420 00000000 */  nop
    /* 2EC24 8003E424 03004014 */  bnez       $v0, .L8003E434
    /* 2EC28 8003E428 FF000432 */   andi      $a0, $s0, 0xFF
    /* 2EC2C 8003E42C 0EF90008 */  j          .L8003E438
    /* 2EC30 8003E430 06009024 */   addiu     $s0, $a0, 0x6
  .L8003E434:
    /* 2EC34 8003E434 FAFF9024 */  addiu      $s0, $a0, -0x6
  .L8003E438:
    /* 2EC38 8003E438 AA032492 */  lbu        $a0, 0x3AA($s1)
    /* 2EC3C 8003E43C 00000000 */  nop
    /* 2EC40 8003E440 23100402 */  subu       $v0, $s0, $a0
    /* 2EC44 8003E444 FF004330 */  andi       $v1, $v0, 0xFF
    /* 2EC48 8003E448 8100622C */  sltiu      $v0, $v1, 0x81
    /* 2EC4C 8003E44C 08004014 */  bnez       $v0, .L8003E470
    /* 2EC50 8003E450 19006228 */   slti      $v0, $v1, 0x19
    /* 2EC54 8003E454 23109000 */  subu       $v0, $a0, $s0
    /* 2EC58 8003E458 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2EC5C 8003E45C 19004228 */  slti       $v0, $v0, 0x19
    /* 2EC60 8003E460 14004010 */  beqz       $v0, .L8003E4B4
    /* 2EC64 8003E464 00000000 */   nop
    /* 2EC68 8003E468 1EF90008 */  j          .L8003E478
    /* 2EC6C 8003E46C 00000000 */   nop
  .L8003E470:
    /* 2EC70 8003E470 10004010 */  beqz       $v0, .L8003E4B4
    /* 2EC74 8003E474 00000000 */   nop
  .L8003E478:
    /* 2EC78 8003E478 C6032386 */  lh         $v1, 0x3C6($s1)
    /* 2EC7C 8003E47C 00000000 */  nop
    /* 2EC80 8003E480 02006104 */  bgez       $v1, .L8003E48C
    /* 2EC84 8003E484 00000000 */   nop
    /* 2EC88 8003E488 03006324 */  addiu      $v1, $v1, 0x3
  .L8003E48C:
    /* 2EC8C 8003E48C 83180300 */  sra        $v1, $v1, 2
    /* 2EC90 8003E490 A003228E */  lw         $v0, 0x3A0($s1)
    /* 2EC94 8003E494 C6032486 */  lh         $a0, 0x3C6($s1)
    /* 2EC98 8003E498 21104300 */  addu       $v0, $v0, $v1
    /* 2EC9C 8003E49C A00322AE */  sw         $v0, 0x3A0($s1)
    /* 2ECA0 8003E4A0 2B108200 */  sltu       $v0, $a0, $v0
    /* 2ECA4 8003E4A4 0A004010 */  beqz       $v0, .L8003E4D0
    /* 2ECA8 8003E4A8 00000000 */   nop
    /* 2ECAC 8003E4AC 34F90008 */  j          .L8003E4D0
    /* 2ECB0 8003E4B0 A00324AE */   sw        $a0, 0x3A0($s1)
  .L8003E4B4:
    /* 2ECB4 8003E4B4 A003238E */  lw         $v1, 0x3A0($s1)
    /* 2ECB8 8003E4B8 00000000 */  nop
    /* 2ECBC 8003E4BC 3300622C */  sltiu      $v0, $v1, 0x33
    /* 2ECC0 8003E4C0 02004014 */  bnez       $v0, .L8003E4CC
    /* 2ECC4 8003E4C4 22000224 */   addiu     $v0, $zero, 0x22
    /* 2ECC8 8003E4C8 F0FF6224 */  addiu      $v0, $v1, -0x10
  .L8003E4CC:
    /* 2ECCC 8003E4CC A00322AE */  sw         $v0, 0x3A0($s1)
  .L8003E4D0:
    /* 2ECD0 8003E4D0 F402638E */  lw         $v1, 0x2F4($s3)
    /* 2ECD4 8003E4D4 02002286 */  lh         $v0, 0x2($s1)
    /* 2ECD8 8003E4D8 02006484 */  lh         $a0, 0x2($v1)
    /* 2ECDC 8003E4DC 00000000 */  nop
    /* 2ECE0 8003E4E0 23104400 */  subu       $v0, $v0, $a0
    /* 2ECE4 8003E4E4 18004200 */  mult       $v0, $v0
    /* 2ECE8 8003E4E8 06006384 */  lh         $v1, 0x6($v1)
    /* 2ECEC 8003E4EC 06002286 */  lh         $v0, 0x6($s1)
    /* 2ECF0 8003E4F0 12300000 */  mflo       $a2
    /* 2ECF4 8003E4F4 23104300 */  subu       $v0, $v0, $v1
    /* 2ECF8 8003E4F8 00000000 */  nop
    /* 2ECFC 8003E4FC 18004200 */  mult       $v0, $v0
    /* 2ED00 8003E500 02004286 */  lh         $v0, 0x2($s2)
    /* 2ED04 8003E504 12280000 */  mflo       $a1
    /* 2ED08 8003E508 23104400 */  subu       $v0, $v0, $a0
    /* 2ED0C 8003E50C 00000000 */  nop
    /* 2ED10 8003E510 18004200 */  mult       $v0, $v0
    /* 2ED14 8003E514 06004286 */  lh         $v0, 0x6($s2)
    /* 2ED18 8003E518 12200000 */  mflo       $a0
    /* 2ED1C 8003E51C 23104300 */  subu       $v0, $v0, $v1
    /* 2ED20 8003E520 00000000 */  nop
    /* 2ED24 8003E524 18004200 */  mult       $v0, $v0
    /* 2ED28 8003E528 2118C500 */  addu       $v1, $a2, $a1
    /* 2ED2C 8003E52C 12480000 */  mflo       $t1
    /* 2ED30 8003E530 21108900 */  addu       $v0, $a0, $t1
    /* 2ED34 8003E534 2A104300 */  slt        $v0, $v0, $v1
    /* 2ED38 8003E538 01005438 */  xori       $s4, $v0, 0x1
    /* 2ED3C 8003E53C 0D008012 */  beqz       $s4, .L8003E574
    /* 2ED40 8003E540 FF000432 */   andi      $a0, $s0, 0xFF
    /* 2ED44 8003E544 AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 2ED48 8003E548 F36D010C */  jal        func_8005B7CC
    /* 2ED4C 8003E54C 0C000624 */   addiu     $a2, $zero, 0xC
    /* 2ED50 8003E550 AA0322A2 */  sb         $v0, 0x3AA($s1)
    /* 2ED54 8003E554 C6032286 */  lh         $v0, 0x3C6($s1)
    /* 2ED58 8003E558 A003438E */  lw         $v1, 0x3A0($s2)
    /* 2ED5C 8003E55C 00000000 */  nop
    /* 2ED60 8003E560 2B106200 */  sltu       $v0, $v1, $v0
    /* 2ED64 8003E564 0D004014 */  bnez       $v0, .L8003E59C
    /* 2ED68 8003E568 21202002 */   addu      $a0, $s1, $zero
    /* 2ED6C 8003E56C 67F90008 */  j          .L8003E59C
    /* 2ED70 8003E570 C60323A6 */   sh        $v1, 0x3C6($s1)
  .L8003E574:
    /* 2ED74 8003E574 90032292 */  lbu        $v0, 0x390($s1)
    /* 2ED78 8003E578 00000000 */  nop
    /* 2ED7C 8003E57C 0500422C */  sltiu      $v0, $v0, 0x5
    /* 2ED80 8003E580 05004010 */  beqz       $v0, .L8003E598
    /* 2ED84 8003E584 00000000 */   nop
    /* 2ED88 8003E588 AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 2ED8C 8003E58C F36D010C */  jal        func_8005B7CC
    /* 2ED90 8003E590 02000624 */   addiu     $a2, $zero, 0x2
    /* 2ED94 8003E594 AA0322A2 */  sb         $v0, 0x3AA($s1)
  .L8003E598:
    /* 2ED98 8003E598 21202002 */  addu       $a0, $s1, $zero
  .L8003E59C:
    /* 2ED9C 8003E59C 99FA000C */  jal        func_8003EA64
    /* 2EDA0 8003E5A0 01000524 */   addiu     $a1, $zero, 0x1
    /* 2EDA4 8003E5A4 96032392 */  lbu        $v1, 0x396($s1)
    /* 2EDA8 8003E5A8 10000224 */  addiu      $v0, $zero, 0x10
    /* 2EDAC 8003E5AC D2006210 */  beq        $v1, $v0, .L8003E8F8
    /* 2EDB0 8003E5B0 00000000 */   nop
    /* 2EDB4 8003E5B4 90032292 */  lbu        $v0, 0x390($s1)
    /* 2EDB8 8003E5B8 00000000 */  nop
    /* 2EDBC 8003E5BC CE004014 */  bnez       $v0, .L8003E8F8
    /* 2EDC0 8003E5C0 21202002 */   addu      $a0, $s1, $zero
    /* 2EDC4 8003E5C4 26000524 */  addiu      $a1, $zero, 0x26
    /* 2EDC8 8003E5C8 8C6E010C */  jal        func_8005BA30
    /* 2EDCC 8003E5CC 01000624 */   addiu     $a2, $zero, 0x1
    /* 2EDD0 8003E5D0 AA026392 */  lbu        $v1, 0x2AA($s3)
    /* 2EDD4 8003E5D4 8D032292 */  lbu        $v0, 0x38D($s1)
    /* 2EDD8 8003E5D8 00000000 */  nop
    /* 2EDDC 8003E5DC 05004314 */  bne        $v0, $v1, .L8003E5F4
    /* 2EDE0 8003E5E0 1B000224 */   addiu     $v0, $zero, 0x1B
    /* 2EDE4 8003E5E4 960322A2 */  sb         $v0, 0x396($s1)
    /* 2EDE8 8003E5E8 01000224 */  addiu      $v0, $zero, 0x1
    /* 2EDEC 8003E5EC 3EFA0008 */  j          .L8003E8F8
    /* 2EDF0 8003E5F0 970322A2 */   sb        $v0, 0x397($s1)
  .L8003E5F4:
    /* 2EDF4 8003E5F4 03008012 */  beqz       $s4, .L8003E604
    /* 2EDF8 8003E5F8 0F000224 */   addiu     $v0, $zero, 0xF
    /* 2EDFC 8003E5FC 3DFA0008 */  j          .L8003E8F4
    /* 2EE00 8003E600 960322A2 */   sb        $v0, 0x396($s1)
  .L8003E604:
    /* 2EE04 8003E604 AE79000C */  jal        func_8001E6B8
    /* 2EE08 8003E608 05000424 */   addiu     $a0, $zero, 0x5
    /* 2EE0C 8003E60C 21202002 */  addu       $a0, $s1, $zero
    /* 2EE10 8003E610 01000524 */  addiu      $a1, $zero, 0x1
    /* 2EE14 8003E614 04004224 */  addiu      $v0, $v0, 0x4
    /* 2EE18 8003E618 D00322A2 */  sb         $v0, 0x3D0($s1)
    /* 2EE1C 8003E61C 02000224 */  addiu      $v0, $zero, 0x2
    /* 2EE20 8003E620 D10322A2 */  sb         $v0, 0x3D1($s1)
    /* 2EE24 8003E624 11000224 */  addiu      $v0, $zero, 0x11
    /* 2EE28 8003E628 4F59010C */  jal        func_8005653C
    /* 2EE2C 8003E62C 970322A2 */   sb        $v0, 0x397($s1)
    /* 2EE30 8003E630 3EFA0008 */  j          .L8003E8F8
    /* 2EE34 8003E634 00000000 */   nop
  jlabel .L8003E638
    /* 2EE38 8003E638 476F010C */  jal        func_8005BD1C
    /* 2EE3C 8003E63C 21202002 */   addu      $a0, $s1, $zero
    /* 2EE40 8003E640 D0032292 */  lbu        $v0, 0x3D0($s1)
    /* 2EE44 8003E644 00000000 */  nop
    /* 2EE48 8003E648 AB004014 */  bnez       $v0, .L8003E8F8
    /* 2EE4C 8003E64C 00000000 */   nop
    /* 2EE50 8003E650 9A032292 */  lbu        $v0, 0x39A($s1)
    /* 2EE54 8003E654 00000000 */  nop
    /* 2EE58 8003E658 24004010 */  beqz       $v0, .L8003E6EC
    /* 2EE5C 8003E65C 01000224 */   addiu     $v0, $zero, 0x1
    /* 2EE60 8003E660 28036292 */  lbu        $v0, 0x328($s3)
    /* 2EE64 8003E664 00000000 */  nop
    /* 2EE68 8003E668 FF004630 */  andi       $a2, $v0, 0xFF
    /* 2EE6C 8003E66C 1300C010 */  beqz       $a2, .L8003E6BC
    /* 2EE70 8003E670 00000000 */   nop
    /* 2EE74 8003E674 F402648E */  lw         $a0, 0x2F4($s3)
    /* 2EE78 8003E678 02002286 */  lh         $v0, 0x2($s1)
    /* 2EE7C 8003E67C 02008384 */  lh         $v1, 0x2($a0)
    /* 2EE80 8003E680 00000000 */  nop
    /* 2EE84 8003E684 23104300 */  subu       $v0, $v0, $v1
    /* 2EE88 8003E688 18004200 */  mult       $v0, $v0
    /* 2EE8C 8003E68C 06002286 */  lh         $v0, 0x6($s1)
    /* 2EE90 8003E690 06008384 */  lh         $v1, 0x6($a0)
    /* 2EE94 8003E694 12280000 */  mflo       $a1
    /* 2EE98 8003E698 23104300 */  subu       $v0, $v0, $v1
    /* 2EE9C 8003E69C 00000000 */  nop
    /* 2EEA0 8003E6A0 18004200 */  mult       $v0, $v0
    /* 2EEA4 8003E6A4 0100023C */  lui        $v0, (0x10000 >> 16)
    /* 2EEA8 8003E6A8 12180000 */  mflo       $v1
    /* 2EEAC 8003E6AC 2118A300 */  addu       $v1, $a1, $v1
    /* 2EEB0 8003E6B0 2A104300 */  slt        $v0, $v0, $v1
    /* 2EEB4 8003E6B4 0D004010 */  beqz       $v0, .L8003E6EC
    /* 2EEB8 8003E6B8 01000224 */   addiu     $v0, $zero, 0x1
  .L8003E6BC:
    /* 2EEBC 8003E6BC F402628E */  lw         $v0, 0x2F4($s3)
    /* 2EEC0 8003E6C0 00000000 */  nop
    /* 2EEC4 8003E6C4 A003428C */  lw         $v0, 0x3A0($v0)
    /* 2EEC8 8003E6C8 00000000 */  nop
    /* 2EECC 8003E6CC 04004010 */  beqz       $v0, .L8003E6E0
    /* 2EED0 8003E6D0 08000224 */   addiu     $v0, $zero, 0x8
    /* 2EED4 8003E6D4 0C80013C */  lui        $at, %hi(D_800C6D0C)
    /* 2EED8 8003E6D8 21082600 */  addu       $at, $at, $a2
    /* 2EEDC 8003E6DC 0C6D2290 */  lbu        $v0, %lo(D_800C6D0C)($at)
  .L8003E6E0:
    /* 2EEE0 8003E6E0 00000000 */  nop
    /* 2EEE4 8003E6E4 D00322A2 */  sb         $v0, 0x3D0($s1)
    /* 2EEE8 8003E6E8 01000224 */  addiu      $v0, $zero, 0x1
  .L8003E6EC:
    /* 2EEEC 8003E6EC 3DFA0008 */  j          .L8003E8F4
    /* 2EEF0 8003E6F0 960322A2 */   sb        $v0, 0x396($s1)
  jlabel .L8003E6F4
    /* 2EEF4 8003E6F4 476F010C */  jal        func_8005BD1C
    /* 2EEF8 8003E6F8 21202002 */   addu      $a0, $s1, $zero
    /* 2EEFC 8003E6FC 21202002 */  addu       $a0, $s1, $zero
    /* 2EF00 8003E700 99FA000C */  jal        func_8003EA64
    /* 2EF04 8003E704 02000524 */   addiu     $a1, $zero, 0x2
    /* 2EF08 8003E708 90032292 */  lbu        $v0, 0x390($s1)
    /* 2EF0C 8003E70C C6032386 */  lh         $v1, 0x3C6($s1)
    /* 2EF10 8003E710 0C80013C */  lui        $at, %hi(D_800C6CF0)
    /* 2EF14 8003E714 21082200 */  addu       $at, $at, $v0
    /* 2EF18 8003E718 F06C2290 */  lbu        $v0, %lo(D_800C6CF0)($at)
    /* 2EF1C 8003E71C 00000000 */  nop
    /* 2EF20 8003E720 18004300 */  mult       $v0, $v1
    /* 2EF24 8003E724 12100000 */  mflo       $v0
    /* 2EF28 8003E728 4992033C */  lui        $v1, (0x92492493 >> 16)
    /* 2EF2C 8003E72C 93246334 */  ori        $v1, $v1, (0x92492493 & 0xFFFF)
    /* 2EF30 8003E730 18004300 */  mult       $v0, $v1
    /* 2EF34 8003E734 90032492 */  lbu        $a0, 0x390($s1)
    /* 2EF38 8003E738 10400000 */  mfhi       $t0
    /* 2EF3C 8003E73C 21180201 */  addu       $v1, $t0, $v0
    /* 2EF40 8003E740 03190300 */  sra        $v1, $v1, 4
    /* 2EF44 8003E744 C3170200 */  sra        $v0, $v0, 31
    /* 2EF48 8003E748 23186200 */  subu       $v1, $v1, $v0
    /* 2EF4C 8003E74C 6A008014 */  bnez       $a0, .L8003E8F8
    /* 2EF50 8003E750 A00323AE */   sw        $v1, 0x3A0($s1)
    /* 2EF54 8003E754 AA026392 */  lbu        $v1, 0x2AA($s3)
    /* 2EF58 8003E758 8D032292 */  lbu        $v0, 0x38D($s1)
    /* 2EF5C 8003E75C 00000000 */  nop
    /* 2EF60 8003E760 18004314 */  bne        $v0, $v1, .L8003E7C4
    /* 2EF64 8003E764 00000000 */   nop
    /* 2EF68 8003E768 A9026292 */  lbu        $v0, 0x2A9($s3)
    /* 2EF6C 8003E76C 00000000 */  nop
    /* 2EF70 8003E770 15004014 */  bnez       $v0, .L8003E7C8
    /* 2EF74 8003E774 21202002 */   addu      $a0, $s1, $zero
    /* 2EF78 8003E778 26000524 */  addiu      $a1, $zero, 0x26
    /* 2EF7C 8003E77C 8C6E010C */  jal        func_8005BA30
    /* 2EF80 8003E780 0F000624 */   addiu     $a2, $zero, 0xF
    /* 2EF84 8003E784 99032292 */  lbu        $v0, 0x399($s1)
    /* 2EF88 8003E788 8D032392 */  lbu        $v1, 0x38D($s1)
    /* 2EF8C 8003E78C 40100200 */  sll        $v0, $v0, 1
    /* 2EF90 8003E790 21106202 */  addu       $v0, $s3, $v0
    /* 2EF94 8003E794 1E034290 */  lbu        $v0, 0x31E($v0)
    /* 2EF98 8003E798 00000000 */  nop
    /* 2EF9C 8003E79C 06006214 */  bne        $v1, $v0, .L8003E7B8
    /* 2EFA0 8003E7A0 01000224 */   addiu     $v0, $zero, 0x1
    /* 2EFA4 8003E7A4 1B000224 */  addiu      $v0, $zero, 0x1B
    /* 2EFA8 8003E7A8 960322A2 */  sb         $v0, 0x396($s1)
    /* 2EFAC 8003E7AC 01000224 */  addiu      $v0, $zero, 0x1
    /* 2EFB0 8003E7B0 0CFA0008 */  j          .L8003E830
    /* 2EFB4 8003E7B4 970322A2 */   sb        $v0, 0x397($s1)
  .L8003E7B8:
    /* 2EFB8 8003E7B8 960322A2 */  sb         $v0, 0x396($s1)
    /* 2EFBC 8003E7BC 0CFA0008 */  j          .L8003E830
    /* 2EFC0 8003E7C0 970320A2 */   sb        $zero, 0x397($s1)
  .L8003E7C4:
    /* 2EFC4 8003E7C4 21202002 */  addu       $a0, $s1, $zero
  .L8003E7C8:
    /* 2EFC8 8003E7C8 4F59010C */  jal        func_8005653C
    /* 2EFCC 8003E7CC 21280000 */   addu      $a1, $zero, $zero
    /* 2EFD0 8003E7D0 21202002 */  addu       $a0, $s1, $zero
    /* 2EFD4 8003E7D4 01000524 */  addiu      $a1, $zero, 0x1
    /* 2EFD8 8003E7D8 8C6E010C */  jal        func_8005BA30
    /* 2EFDC 8003E7DC 21300000 */   addu      $a2, $zero, $zero
    /* 2EFE0 8003E7E0 AE79000C */  jal        func_8001E6B8
    /* 2EFE4 8003E7E4 05000424 */   addiu     $a0, $zero, 0x5
    /* 2EFE8 8003E7E8 0C004224 */  addiu      $v0, $v0, 0xC
    /* 2EFEC 8003E7EC 92032392 */  lbu        $v1, 0x392($s1)
    /* 2EFF0 8003E7F0 98032592 */  lbu        $a1, 0x398($s1)
    /* 2EFF4 8003E7F4 40200300 */  sll        $a0, $v1, 1
    /* 2EFF8 8003E7F8 21208300 */  addu       $a0, $a0, $v1
    /* 2EFFC 8003E7FC 80200400 */  sll        $a0, $a0, 2
    /* 2F000 8003E800 40190500 */  sll        $v1, $a1, 5
    /* 2F004 8003E804 21186500 */  addu       $v1, $v1, $a1
    /* 2F008 8003E808 C0180300 */  sll        $v1, $v1, 3
    /* 2F00C 8003E80C 21208300 */  addu       $a0, $a0, $v1
    /* 2F010 8003E810 1180013C */  lui        $at, %hi(D_8010C328)
    /* 2F014 8003E814 21082400 */  addu       $at, $at, $a0
    /* 2F018 8003E818 28C3248C */  lw         $a0, %lo(D_8010C328)($at)
    /* 2F01C 8003E81C 30000324 */  addiu      $v1, $zero, 0x30
    /* 2F020 8003E820 970323A2 */  sb         $v1, 0x397($s1)
    /* 2F024 8003E824 02270400 */  srl        $a0, $a0, 28
    /* 2F028 8003E828 23104400 */  subu       $v0, $v0, $a0
    /* 2F02C 8003E82C D00322A2 */  sb         $v0, 0x3D0($s1)
  .L8003E830:
    /* 2F030 8003E830 3EFA0008 */  j          .L8003E8F8
    /* 2F034 8003E834 A00320AE */   sw        $zero, 0x3A0($s1)
  jlabel .L8003E838
    /* 2F038 8003E838 02002486 */  lh         $a0, 0x2($s1)
    /* 2F03C 8003E83C 3C006696 */  lhu        $a2, 0x3C($s3)
    /* 2F040 8003E840 06002586 */  lh         $a1, 0x6($s1)
    /* 2F044 8003E844 6C006796 */  lhu        $a3, 0x6C($s3)
    /* 2F048 8003E848 00340600 */  sll        $a2, $a2, 16
    /* 2F04C 8003E84C 03340600 */  sra        $a2, $a2, 16
    /* 2F050 8003E850 003C0700 */  sll        $a3, $a3, 16
    /* 2F054 8003E854 DB6C010C */  jal        func_8005B36C
    /* 2F058 8003E858 033C0700 */   sra       $a3, $a3, 16
    /* 2F05C 8003E85C FF004430 */  andi       $a0, $v0, 0xFF
    /* 2F060 8003E860 AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 2F064 8003E864 F36D010C */  jal        func_8005B7CC
    /* 2F068 8003E868 10000624 */   addiu     $a2, $zero, 0x10
    /* 2F06C 8003E86C 21202002 */  addu       $a0, $s1, $zero
    /* 2F070 8003E870 476F010C */  jal        func_8005BD1C
    /* 2F074 8003E874 AA0322A2 */   sb        $v0, 0x3AA($s1)
    /* 2F078 8003E878 A003238E */  lw         $v1, 0x3A0($s1)
    /* 2F07C 8003E87C 00000000 */  nop
    /* 2F080 8003E880 1300622C */  sltiu      $v0, $v1, 0x13
    /* 2F084 8003E884 03004010 */  beqz       $v0, .L8003E894
    /* 2F088 8003E888 EEFF6224 */   addiu     $v0, $v1, -0x12
    /* 2F08C 8003E88C 26FA0008 */  j          .L8003E898
    /* 2F090 8003E890 A00320AE */   sw        $zero, 0x3A0($s1)
  .L8003E894:
    /* 2F094 8003E894 A00322AE */  sw         $v0, 0x3A0($s1)
  .L8003E898:
    /* 2F098 8003E898 D0032292 */  lbu        $v0, 0x3D0($s1)
    /* 2F09C 8003E89C 00000000 */  nop
    /* 2F0A0 8003E8A0 15004014 */  bnez       $v0, .L8003E8F8
    /* 2F0A4 8003E8A4 00000000 */   nop
    /* 2F0A8 8003E8A8 9A032292 */  lbu        $v0, 0x39A($s1)
    /* 2F0AC 8003E8AC 00000000 */  nop
    /* 2F0B0 8003E8B0 0F004010 */  beqz       $v0, .L8003E8F0
    /* 2F0B4 8003E8B4 00000000 */   nop
    /* 2F0B8 8003E8B8 F402628E */  lw         $v0, 0x2F4($s3)
    /* 2F0BC 8003E8BC 00000000 */  nop
    /* 2F0C0 8003E8C0 A003428C */  lw         $v0, 0x3A0($v0)
    /* 2F0C4 8003E8C4 00000000 */  nop
    /* 2F0C8 8003E8C8 07004010 */  beqz       $v0, .L8003E8E8
    /* 2F0CC 8003E8CC 02000224 */   addiu     $v0, $zero, 0x2
    /* 2F0D0 8003E8D0 28036292 */  lbu        $v0, 0x328($s3)
    /* 2F0D4 8003E8D4 00000000 */  nop
    /* 2F0D8 8003E8D8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2F0DC 8003E8DC 0C80013C */  lui        $at, %hi(D_800C6D0C)
    /* 2F0E0 8003E8E0 21082200 */  addu       $at, $at, $v0
    /* 2F0E4 8003E8E4 0C6D2290 */  lbu        $v0, %lo(D_800C6D0C)($at)
  .L8003E8E8:
    /* 2F0E8 8003E8E8 00000000 */  nop
    /* 2F0EC 8003E8EC D00322A2 */  sb         $v0, 0x3D0($s1)
  .L8003E8F0:
    /* 2F0F0 8003E8F0 960320A2 */  sb         $zero, 0x396($s1)
  .L8003E8F4:
    /* 2F0F4 8003E8F4 970320A2 */  sb         $zero, 0x397($s1)
  jlabel .L8003E8F8
    /* 2F0F8 8003E8F8 A0032596 */  lhu        $a1, 0x3A0($s1)
    /* 2F0FC 8003E8FC 196E010C */  jal        func_8005B864
    /* 2F100 8003E900 21202002 */   addu      $a0, $s1, $zero
    /* 2F104 8003E904 A9026292 */  lbu        $v0, (0x1F8002A9 & 0xFFFF)($s3)
    /* 2F108 8003E908 00000000 */  nop
    /* 2F10C 8003E90C 4C004014 */  bnez       $v0, .L8003EA40
    /* 2F110 8003E910 00000000 */   nop
    /* 2F114 8003E914 CC032286 */  lh         $v0, 0x3CC($s1)
    /* 2F118 8003E918 00000000 */  nop
    /* 2F11C 8003E91C 3A004014 */  bnez       $v0, .L8003EA08
    /* 2F120 8003E920 D0FF1224 */   addiu     $s2, $zero, -0x30
    /* 2F124 8003E924 B002638E */  lw         $v1, (0x1F8002B0 & 0xFFFF)($s3)
    /* 2F128 8003E928 01000224 */  addiu      $v0, $zero, 0x1
    /* 2F12C 8003E92C 05006214 */  bne        $v1, $v0, .L8003E944
    /* 2F130 8003E930 00000000 */   nop
    /* 2F134 8003E934 0439010C */  jal        func_8004E410
    /* 2F138 8003E938 21202002 */   addu      $a0, $s1, $zero
    /* 2F13C 8003E93C 7FFA0008 */  j          .L8003E9FC
    /* 2F140 8003E940 21804000 */   addu      $s0, $v0, $zero
  .L8003E944:
    /* 2F144 8003E944 AE79000C */  jal        func_8001E6B8
    /* 2F148 8003E948 02000424 */   addiu     $a0, $zero, 0x2
    /* 2F14C 8003E94C 13004014 */  bnez       $v0, .L8003E99C
    /* 2F150 8003E950 00000000 */   nop
    /* 2F154 8003E954 F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 2F158 8003E958 AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 2F15C 8003E95C A4034490 */  lbu        $a0, 0x3A4($v0)
    /* 2F160 8003E960 00000000 */  nop
    /* 2F164 8003E964 2310A400 */  subu       $v0, $a1, $a0
    /* 2F168 8003E968 FF004330 */  andi       $v1, $v0, 0xFF
    /* 2F16C 8003E96C 8100622C */  sltiu      $v0, $v1, 0x81
    /* 2F170 8003E970 08004014 */  bnez       $v0, .L8003E994
    /* 2F174 8003E974 31006228 */   slti      $v0, $v1, 0x31
    /* 2F178 8003E978 23108500 */  subu       $v0, $a0, $a1
    /* 2F17C 8003E97C FF004230 */  andi       $v0, $v0, 0xFF
    /* 2F180 8003E980 31004228 */  slti       $v0, $v0, 0x31
    /* 2F184 8003E984 18004010 */  beqz       $v0, .L8003E9E8
    /* 2F188 8003E988 00000000 */   nop
    /* 2F18C 8003E98C 67FA0008 */  j          .L8003E99C
    /* 2F190 8003E990 00000000 */   nop
  .L8003E994:
    /* 2F194 8003E994 14004010 */  beqz       $v0, .L8003E9E8
    /* 2F198 8003E998 00000000 */   nop
  .L8003E99C:
    /* 2F19C 8003E99C AA032392 */  lbu        $v1, 0x3AA($s1)
    /* 2F1A0 8003E9A0 F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 2F1A4 8003E9A4 FF006430 */  andi       $a0, $v1, 0xFF
    /* 2F1A8 8003E9A8 A4034790 */  lbu        $a3, 0x3A4($v0)
    /* 2F1AC 8003E9AC 80006324 */  addiu      $v1, $v1, 0x80
    /* 2F1B0 8003E9B0 8000E224 */  addiu      $v0, $a3, 0x80
    /* 2F1B4 8003E9B4 FF004530 */  andi       $a1, $v0, 0xFF
    /* 2F1B8 8003E9B8 2310E300 */  subu       $v0, $a3, $v1
    /* 2F1BC 8003E9BC FF004630 */  andi       $a2, $v0, 0xFF
    /* 2F1C0 8003E9C0 8100C22C */  sltiu      $v0, $a2, 0x81
    /* 2F1C4 8003E9C4 04004014 */  bnez       $v0, .L8003E9D8
    /* 2F1C8 8003E9C8 42300600 */   srl       $a2, $a2, 1
    /* 2F1CC 8003E9CC 23106700 */  subu       $v0, $v1, $a3
    /* 2F1D0 8003E9D0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2F1D4 8003E9D4 42300200 */  srl        $a2, $v0, 1
  .L8003E9D8:
    /* 2F1D8 8003E9D8 F36D010C */  jal        func_8005B7CC
    /* 2F1DC 8003E9DC 21900000 */   addu      $s2, $zero, $zero
    /* 2F1E0 8003E9E0 80FA0008 */  j          .L8003EA00
    /* 2F1E4 8003E9E4 21804000 */   addu      $s0, $v0, $zero
  .L8003E9E8:
    /* 2F1E8 8003E9E8 F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 2F1EC 8003E9EC 00000000 */  nop
    /* 2F1F0 8003E9F0 A4034290 */  lbu        $v0, 0x3A4($v0)
    /* 2F1F4 8003E9F4 00000000 */  nop
    /* 2F1F8 8003E9F8 80FF5024 */  addiu      $s0, $v0, -0x80
  .L8003E9FC:
    /* 2F1FC 8003E9FC 21900000 */  addu       $s2, $zero, $zero
  .L8003EA00:
    /* 2F200 8003EA00 88FA0008 */  j          .L8003EA20
    /* 2F204 8003EA04 FF001032 */   andi      $s0, $s0, 0xFF
  .L8003EA08:
    /* 2F208 8003EA08 F402628E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s3)
    /* 2F20C 8003EA0C 00000000 */  nop
    /* 2F210 8003EA10 A4034290 */  lbu        $v0, 0x3A4($v0)
    /* 2F214 8003EA14 00000000 */  nop
    /* 2F218 8003EA18 80FF5024 */  addiu      $s0, $v0, -0x80
    /* 2F21C 8003EA1C FF001032 */  andi       $s0, $s0, 0xFF
  .L8003EA20:
    /* 2F220 8003EA20 6A39010C */  jal        func_8004E5A8
    /* 2F224 8003EA24 21200002 */   addu      $a0, $s0, $zero
    /* 2F228 8003EA28 1000A2AF */  sw         $v0, 0x10($sp)
    /* 2F22C 8003EA2C 21202002 */  addu       $a0, $s1, $zero
    /* 2F230 8003EA30 0C000524 */  addiu      $a1, $zero, 0xC
    /* 2F234 8003EA34 21300002 */  addu       $a2, $s0, $zero
    /* 2F238 8003EA38 8B51020C */  jal        func_8009462C
    /* 2F23C 8003EA3C 21384002 */   addu      $a3, $s2, $zero
  .L8003EA40:
    /* 2F240 8003EA40 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 2F244 8003EA44 2800B48F */  lw         $s4, 0x28($sp)
    /* 2F248 8003EA48 2400B38F */  lw         $s3, 0x24($sp)
    /* 2F24C 8003EA4C 2000B28F */  lw         $s2, 0x20($sp)
    /* 2F250 8003EA50 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2F254 8003EA54 1800B08F */  lw         $s0, 0x18($sp)
    /* 2F258 8003EA58 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 2F25C 8003EA5C 0800E003 */  jr         $ra
    /* 2F260 8003EA60 00000000 */   nop
endlabel func_8003E204
