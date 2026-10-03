nonmatching func_8001E310, 0x294

glabel func_8001E310
    /* EB10 8001E310 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* EB14 8001E314 0000B0AF */  sw         $s0, 0x0($sp)
    /* EB18 8001E318 11800D3C */  lui        $t5, %hi(D_8010A5A8)
    /* EB1C 8001E31C A8A5AD25 */  addiu      $t5, $t5, %lo(D_8010A5A8)
    /* EB20 8001E320 801F0C3C */  lui        $t4, (0x1F800338 >> 16)
    /* EB24 8001E324 21380000 */  addu       $a3, $zero, $zero
    /* EB28 8001E328 20000924 */  addiu      $t1, $zero, 0x20
    /* EB2C 8001E32C 40000824 */  addiu      $t0, $zero, 0x40
    /* EB30 8001E330 1A8F0F34 */  ori        $t7, $zero, 0x8F1A
    /* EB34 8001E334 80000624 */  addiu      $a2, $zero, 0x80
    /* EB38 8001E338 10000524 */  addiu      $a1, $zero, 0x10
    /* EB3C 8001E33C 04000E24 */  addiu      $t6, $zero, 0x4
    /* EB40 8001E340 08000A24 */  addiu      $t2, $zero, 0x8
    /* EB44 8001E344 10800B3C */  lui        $t3, %hi(D_800FF748)
    /* EB48 8001E348 48F76B25 */  addiu      $t3, $t3, %lo(D_800FF748)
    /* EB4C 8001E34C 21206001 */  addu       $a0, $t3, $zero
    /* EB50 8001E350 801F033C */  lui        $v1, (0x1F800022 >> 16)
  .L8001E354:
    /* EB54 8001E354 21108F00 */  addu       $v0, $a0, $t7
    /* EB58 8001E358 02008424 */  addiu      $a0, $a0, 0x2
    /* EB5C 8001E35C 2A0069A4 */  sh         $t1, (0x1F80002A & 0xFFFF)($v1)
    /* EB60 8001E360 1A0069A4 */  sh         $t1, (0x1F80001A & 0xFFFF)($v1)
    /* EB64 8001E364 260068A4 */  sh         $t0, (0x1F800026 & 0xFFFF)($v1)
    /* EB68 8001E368 160068A4 */  sh         $t0, (0x1F800016 & 0xFFFF)($v1)
    /* EB6C 8001E36C 000046A4 */  sh         $a2, 0x0($v0)
    /* EB70 8001E370 120066A4 */  sh         $a2, (0x1F800012 & 0xFFFF)($v1)
    /* EB74 8001E374 320065A4 */  sh         $a1, (0x1F800032 & 0xFFFF)($v1)
    /* EB78 8001E378 1E0065A4 */  sh         $a1, (0x1F80001E & 0xFFFF)($v1)
    /* EB7C 8001E37C 2E006EA4 */  sh         $t6, (0x1F80002E & 0xFFFF)($v1)
    /* EB80 8001E380 22006AA4 */  sh         $t2, (0x1F800022 & 0xFFFF)($v1)
    /* EB84 8001E384 21108701 */  addu       $v0, $t4, $a3
    /* EB88 8001E388 0100E724 */  addiu      $a3, $a3, 0x1
    /* EB8C 8001E38C 070340A0 */  sb         $zero, (0x1F800307 & 0xFFFF)($v0)
    /* EB90 8001E390 0200E228 */  slti       $v0, $a3, 0x2
    /* EB94 8001E394 EFFF4014 */  bnez       $v0, .L8001E354
    /* EB98 8001E398 02006324 */   addiu     $v1, $v1, %lo(D_1F800002)
    /* EB9C 8001E39C 21380000 */  addu       $a3, $zero, $zero
    /* EBA0 8001E3A0 BD891034 */  ori        $s0, $zero, 0x89BD
    /* EBA4 8001E3A4 E8891934 */  ori        $t9, $zero, 0x89E8
    /* EBA8 8001E3A8 698A1834 */  ori        $t8, $zero, 0x8A69
    /* EBAC 8001E3AC FF000924 */  addiu      $t1, $zero, 0xFF
    /* EBB0 8001E3B0 BF8A0F34 */  ori        $t7, $zero, 0x8ABF
    /* EBB4 8001E3B4 EA8A0E34 */  ori        $t6, $zero, 0x8AEA
    /* EBB8 8001E3B8 21506001 */  addu       $t2, $t3, $zero
    /* EBBC 8001E3BC 21400000 */  addu       $t0, $zero, $zero
  .L8001E3C0:
    /* EBC0 8001E3C0 15000524 */  addiu      $a1, $zero, 0x15
    /* EBC4 8001E3C4 21104E01 */  addu       $v0, $t2, $t6
    /* EBC8 8001E3C8 15004624 */  addiu      $a2, $v0, 0x15
    /* EBCC 8001E3CC 21186701 */  addu       $v1, $t3, $a3
    /* EBD0 8001E3D0 0C80013C */  lui        $at, %hi(D_800C6AF0)
    /* EBD4 8001E3D4 21082800 */  addu       $at, $at, $t0
    /* EBD8 8001E3D8 F06A2490 */  lbu        $a0, %lo(D_800C6AF0)($at)
    /* EBDC 8001E3DC 21107000 */  addu       $v0, $v1, $s0
    /* EBE0 8001E3E0 000044A0 */  sb         $a0, 0x0($v0)
    /* EBE4 8001E3E4 0C80013C */  lui        $at, %hi(D_800C6AF1)
    /* EBE8 8001E3E8 21082800 */  addu       $at, $at, $t0
    /* EBEC 8001E3EC F16A2490 */  lbu        $a0, %lo(D_800C6AF1)($at)
    /* EBF0 8001E3F0 21107900 */  addu       $v0, $v1, $t9
    /* EBF4 8001E3F4 000044A0 */  sb         $a0, 0x0($v0)
    /* EBF8 8001E3F8 21107800 */  addu       $v0, $v1, $t8
    /* EBFC 8001E3FC 000049A0 */  sb         $t1, 0x0($v0)
    /* EC00 8001E400 21106F00 */  addu       $v0, $v1, $t7
    /* EC04 8001E404 000049A0 */  sb         $t1, 0x0($v0)
    /* EC08 8001E408 0100013C */  lui        $at, (0x10000 >> 16)
    /* EC0C 8001E40C 21086100 */  addu       $at, $v1, $at
    /* EC10 8001E410 948A29A0 */  sb         $t1, -0x756C($at)
    /* EC14 8001E414 0100013C */  lui        $at, (0x10000 >> 16)
    /* EC18 8001E418 21086100 */  addu       $at, $v1, $at
    /* EC1C 8001E41C 138A29A0 */  sb         $t1, -0x75ED($at)
    /* EC20 8001E420 0100013C */  lui        $at, (0x10000 >> 16)
    /* EC24 8001E424 21086100 */  addu       $at, $v1, $at
    /* EC28 8001E428 3E8A29A0 */  sb         $t1, -0x75C2($at)
  .L8001E42C:
    /* EC2C 8001E42C 0000C5A0 */  sb         $a1, 0x0($a2)
    /* EC30 8001E430 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* EC34 8001E434 FDFFA104 */  bgez       $a1, .L8001E42C
    /* EC38 8001E438 FFFFC624 */   addiu     $a2, $a2, -0x1
    /* EC3C 8001E43C 16004A25 */  addiu      $t2, $t2, 0x16
    /* EC40 8001E440 0100E724 */  addiu      $a3, $a3, 0x1
    /* EC44 8001E444 2B00E228 */  slti       $v0, $a3, 0x2B
    /* EC48 8001E448 DDFF4014 */  bnez       $v0, .L8001E3C0
    /* EC4C 8001E44C 02000825 */   addiu     $t0, $t0, 0x2
    /* EC50 8001E450 21380000 */  addu       $a3, $zero, $zero
    /* EC54 8001E454 3E000224 */  addiu      $v0, $zero, 0x3E
    /* EC58 8001E458 0100013C */  lui        $at, (0x10000 >> 16)
    /* EC5C 8001E45C 21086101 */  addu       $at, $t3, $at
    /* EC60 8001E460 E2AB20A0 */  sb         $zero, -0x541E($at)
    /* EC64 8001E464 0A00A2A1 */  sb         $v0, 0xA($t5)
    /* EC68 8001E468 18000224 */  addiu      $v0, $zero, 0x18
    /* EC6C 8001E46C 0200A2A1 */  sb         $v0, 0x2($t5)
    /* EC70 8001E470 0300A2A1 */  sb         $v0, 0x3($t5)
    /* EC74 8001E474 0400A2A1 */  sb         $v0, 0x4($t5)
    /* EC78 8001E478 01000224 */  addiu      $v0, $zero, 0x1
    /* EC7C 8001E47C 0600A0A1 */  sb         $zero, 0x6($t5)
    /* EC80 8001E480 0500A2A1 */  sb         $v0, 0x5($t5)
    /* EC84 8001E484 E40280A1 */  sb         $zero, (0x1F8002E4 & 0xFFFF)($t4)
    /* EC88 8001E488 E50280A1 */  sb         $zero, (0x1F8002E5 & 0xFFFF)($t4)
    /* EC8C 8001E48C 0000A2A1 */  sb         $v0, 0x0($t5)
    /* EC90 8001E490 0100A2A1 */  sb         $v0, 0x1($t5)
    /* EC94 8001E494 0100013C */  lui        $at, (0x10000 >> 16)
    /* EC98 8001E498 21086101 */  addu       $at, $t3, $at
    /* EC9C 8001E49C 158F20A0 */  sb         $zero, -0x70EB($at)
    /* ECA0 8001E4A0 E60282A1 */  sb         $v0, (0x1F8002E6 & 0xFFFF)($t4)
    /* ECA4 8001E4A4 E0010224 */  addiu      $v0, $zero, 0x1E0
    /* ECA8 8001E4A8 E30280A1 */  sb         $zero, (0x1F8002E3 & 0xFFFF)($t4)
    /* ECAC 8001E4AC 360382A5 */  sh         $v0, (0x1F800336 & 0xFFFF)($t4)
    /* ECB0 8001E4B0 21108701 */  addu       $v0, $t4, $a3
  .L8001E4B4:
    /* ECB4 8001E4B4 0100E724 */  addiu      $a3, $a3, 0x1
    /* ECB8 8001E4B8 010340A0 */  sb         $zero, (0x1F800301 & 0xFFFF)($v0)
    /* ECBC 8001E4BC 030340A0 */  sb         $zero, (0x1F800303 & 0xFFFF)($v0)
    /* ECC0 8001E4C0 0200E228 */  slti       $v0, $a3, 0x2
    /* ECC4 8001E4C4 FBFF4014 */  bnez       $v0, .L8001E4B4
    /* ECC8 8001E4C8 21108701 */   addu      $v0, $t4, $a3
    /* ECCC 8001E4CC B6000224 */  addiu      $v0, $zero, 0xB6
    /* ECD0 8001E4D0 0100013C */  lui        $at, (0x10000 >> 16)
    /* ECD4 8001E4D4 21086101 */  addu       $at, $t3, $at
    /* ECD8 8001E4D8 18AC22A4 */  sh         $v0, -0x53E8($at)
    /* ECDC 8001E4DC 78000224 */  addiu      $v0, $zero, 0x78
    /* ECE0 8001E4E0 01000324 */  addiu      $v1, $zero, 0x1
    /* ECE4 8001E4E4 0100013C */  lui        $at, (0x10000 >> 16)
    /* ECE8 8001E4E8 21086101 */  addu       $at, $t3, $at
    /* ECEC 8001E4EC 1AAC22A4 */  sh         $v0, -0x53E6($at)
    /* ECF0 8001E4F0 02000224 */  addiu      $v0, $zero, 0x2
    /* ECF4 8001E4F4 380380A1 */  sb         $zero, (0x1F800338 & 0xFFFF)($t4)
    /* ECF8 8001E4F8 0700A0A1 */  sb         $zero, 0x7($t5)
    /* ECFC 8001E4FC 0100013C */  lui        $at, (0x10000 >> 16)
    /* ED00 8001E500 21086101 */  addu       $at, $t3, $at
    /* ED04 8001E504 088F20A0 */  sb         $zero, -0x70F8($at)
    /* ED08 8001E508 0100013C */  lui        $at, (0x10000 >> 16)
    /* ED0C 8001E50C 21086101 */  addu       $at, $t3, $at
    /* ED10 8001E510 128F23A0 */  sb         $v1, -0x70EE($at)
    /* ED14 8001E514 0100013C */  lui        $at, (0x10000 >> 16)
    /* ED18 8001E518 21086101 */  addu       $at, $t3, $at
    /* ED1C 8001E51C 138F23A0 */  sb         $v1, -0x70ED($at)
    /* ED20 8001E520 0100013C */  lui        $at, (0x10000 >> 16)
    /* ED24 8001E524 21086101 */  addu       $at, $t3, $at
    /* ED28 8001E528 1CAC20A0 */  sb         $zero, -0x53E4($at)
    /* ED2C 8001E52C 0C00A2A5 */  sh         $v0, 0xC($t5)
    /* ED30 8001E530 0100013C */  lui        $at, (0x10000 >> 16)
    /* ED34 8001E534 21086101 */  addu       $at, $t3, $at
    /* ED38 8001E538 148F20A0 */  sb         $zero, -0x70EC($at)
    /* ED3C 8001E53C 0900A0A1 */  sb         $zero, 0x9($t5)
    /* ED40 8001E540 0100013C */  lui        $at, (0x10000 >> 16)
    /* ED44 8001E544 21086101 */  addu       $at, $t3, $at
    /* ED48 8001E548 1DAC23A0 */  sb         $v1, -0x53E3($at)
    /* ED4C 8001E54C 0100013C */  lui        $at, (0x10000 >> 16)
    /* ED50 8001E550 21086101 */  addu       $at, $t3, $at
    /* ED54 8001E554 1EAC23A0 */  sb         $v1, -0x53E2($at)
    /* ED58 8001E558 0100013C */  lui        $at, (0x10000 >> 16)
    /* ED5C 8001E55C 21086101 */  addu       $at, $t3, $at
    /* ED60 8001E560 1FAC20A0 */  sb         $zero, -0x53E1($at)
    /* ED64 8001E564 0100013C */  lui        $at, (0x10000 >> 16)
    /* ED68 8001E568 21086101 */  addu       $at, $t3, $at
    /* ED6C 8001E56C 118F20A0 */  sb         $zero, -0x70EF($at)
    /* ED70 8001E570 0100013C */  lui        $at, (0x10000 >> 16)
    /* ED74 8001E574 21086101 */  addu       $at, $t3, $at
    /* ED78 8001E578 E2AB20A0 */  sb         $zero, -0x541E($at)
    /* ED7C 8001E57C 0100013C */  lui        $at, (0x10000 >> 16)
    /* ED80 8001E580 21086101 */  addu       $at, $t3, $at
    /* ED84 8001E584 078F20A0 */  sb         $zero, -0x70F9($at)
    /* ED88 8001E588 0100013C */  lui        $at, (0x10000 >> 16)
    /* ED8C 8001E58C 21086101 */  addu       $at, $t3, $at
    /* ED90 8001E590 1E8F20A0 */  sb         $zero, -0x70E2($at)
    /* ED94 8001E594 0000B08F */  lw         $s0, 0x0($sp)
    /* ED98 8001E598 0800BD27 */  addiu      $sp, $sp, 0x8
    /* ED9C 8001E59C 0800E003 */  jr         $ra
    /* EDA0 8001E5A0 00000000 */   nop
endlabel func_8001E310
