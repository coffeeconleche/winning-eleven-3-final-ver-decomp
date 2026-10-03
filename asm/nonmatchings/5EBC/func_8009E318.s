nonmatching func_8009E318, 0x34C

glabel func_8009E318
    /* 8EB18 8009E318 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8EB1C 8009E31C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8EB20 8009E320 21888000 */  addu       $s1, $a0, $zero
    /* 8EB24 8009E324 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8EB28 8009E328 801F123C */  lui        $s2, (0x1F80029A >> 16)
    /* 8EB2C 8009E32C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8EB30 8009E330 1080103C */  lui        $s0, %hi(D_800FF748)
    /* 8EB34 8009E334 48F71026 */  addiu      $s0, $s0, %lo(D_800FF748)
    /* 8EB38 8009E338 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 8EB3C 8009E33C 1180133C */  lui        $s3, %hi(D_8010C1D8)
    /* 8EB40 8009E340 D8C17326 */  addiu      $s3, $s3, %lo(D_8010C1D8)
    /* 8EB44 8009E344 801F033C */  lui        $v1, (0x1F80029A >> 16)
    /* 8EB48 8009E348 9A026390 */  lbu        $v1, (0x1F80029A & 0xFFFF)($v1)
    /* 8EB4C 8009E34C 01000224 */  addiu      $v0, $zero, 0x1
    /* 8EB50 8009E350 17006214 */  bne        $v1, $v0, .L8009E3B0
    /* 8EB54 8009E354 2000BFAF */   sw        $ra, 0x20($sp)
    /* 8EB58 8009E358 801F023C */  lui        $v0, (0x1F80030B >> 16)
    /* 8EB5C 8009E35C 0B034290 */  lbu        $v0, (0x1F80030B & 0xFFFF)($v0)
    /* 8EB60 8009E360 00000000 */  nop
    /* 8EB64 8009E364 1B004010 */  beqz       $v0, .L8009E3D4
    /* 8EB68 8009E368 00000000 */   nop
    /* 8EB6C 8009E36C 99032292 */  lbu        $v0, 0x399($s1)
    /* 8EB70 8009E370 8D032492 */  lbu        $a0, 0x38D($s1)
    /* 8EB74 8009E374 40180200 */  sll        $v1, $v0, 1
    /* 8EB78 8009E378 801F013C */  lui        $at, (0x1F80031E >> 16)
    /* 8EB7C 8009E37C 21086100 */  addu       $at, $v1, $at
    /* 8EB80 8009E380 1E032290 */  lbu        $v0, (0x1F80031E & 0xFFFF)($at)
    /* 8EB84 8009E384 00000000 */  nop
    /* 8EB88 8009E388 12008210 */  beq        $a0, $v0, .L8009E3D4
    /* 8EB8C 8009E38C 00000000 */   nop
    /* 8EB90 8009E390 801F013C */  lui        $at, (0x1F80031F >> 16)
    /* 8EB94 8009E394 21086100 */  addu       $at, $v1, $at
    /* 8EB98 8009E398 1F032290 */  lbu        $v0, (0x1F80031F & 0xFFFF)($at)
    /* 8EB9C 8009E39C 00000000 */  nop
    /* 8EBA0 8009E3A0 0C008210 */  beq        $a0, $v0, .L8009E3D4
    /* 8EBA4 8009E3A4 00000000 */   nop
    /* 8EBA8 8009E3A8 F7780208 */  j          .L8009E3DC
    /* 8EBAC 8009E3AC 00000000 */   nop
  .L8009E3B0:
    /* 8EBB0 8009E3B0 99032292 */  lbu        $v0, 0x399($s1)
    /* 8EBB4 8009E3B4 8D032392 */  lbu        $v1, 0x38D($s1)
    /* 8EBB8 8009E3B8 40100200 */  sll        $v0, $v0, 1
    /* 8EBBC 8009E3BC 801F013C */  lui        $at, (0x1F80031E >> 16)
    /* 8EBC0 8009E3C0 21084100 */  addu       $at, $v0, $at
    /* 8EBC4 8009E3C4 1E032290 */  lbu        $v0, (0x1F80031E & 0xFFFF)($at)
    /* 8EBC8 8009E3C8 00000000 */  nop
    /* 8EBCC 8009E3CC 03006214 */  bne        $v1, $v0, .L8009E3DC
    /* 8EBD0 8009E3D0 00000000 */   nop
  .L8009E3D4:
    /* 8EBD4 8009E3D4 A978020C */  jal        func_8009E2A4
    /* 8EBD8 8009E3D8 21202002 */   addu      $a0, $s1, $zero
  .L8009E3DC:
    /* 8EBDC 8009E3DC 99032392 */  lbu        $v1, 0x399($s1)
    /* 8EBE0 8009E3E0 01000224 */  addiu      $v0, $zero, 0x1
    /* 8EBE4 8009E3E4 02006214 */  bne        $v1, $v0, .L8009E3F0
    /* 8EBE8 8009E3E8 0D000424 */   addiu     $a0, $zero, 0xD
    /* 8EBEC 8009E3EC 02000424 */  addiu      $a0, $zero, 0x2
  .L8009E3F0:
    /* 8EBF0 8009E3F0 E1032292 */  lbu        $v0, 0x3E1($s1)
    /* 8EBF4 8009E3F4 00000000 */  nop
    /* 8EBF8 8009E3F8 28004010 */  beqz       $v0, .L8009E49C
    /* 8EBFC 8009E3FC 00000000 */   nop
    /* 8EC00 8009E400 21280000 */  addu       $a1, $zero, $zero
    /* 8EC04 8009E404 FF008630 */  andi       $a2, $a0, 0xFF
    /* 8EC08 8009E408 AAAA083C */  lui        $t0, (0xAAAAAAAB >> 16)
    /* 8EC0C 8009E40C ABAA0835 */  ori        $t0, $t0, (0xAAAAAAAB & 0xFFFF)
    /* 8EC10 8009E410 01000724 */  addiu      $a3, $zero, 0x1
    /* 8EC14 8009E414 FF00A330 */  andi       $v1, $a1, 0xFF
  .L8009E418:
    /* 8EC18 8009E418 19006800 */  multu      $v1, $t0
    /* 8EC1C 8009E41C 10480000 */  mfhi       $t1
    /* 8EC20 8009E420 02210900 */  srl        $a0, $t1, 4
    /* 8EC24 8009E424 40100400 */  sll        $v0, $a0, 1
    /* 8EC28 8009E428 21104400 */  addu       $v0, $v0, $a0
    /* 8EC2C 8009E42C C0100200 */  sll        $v0, $v0, 3
    /* 8EC30 8009E430 23186200 */  subu       $v1, $v1, $v0
    /* 8EC34 8009E434 FF006330 */  andi       $v1, $v1, 0xFF
    /* 8EC38 8009E438 2118C300 */  addu       $v1, $a2, $v1
    /* 8EC3C 8009E43C 40110300 */  sll        $v0, $v1, 5
    /* 8EC40 8009E440 23104300 */  subu       $v0, $v0, $v1
    /* 8EC44 8009E444 80100200 */  sll        $v0, $v0, 2
    /* 8EC48 8009E448 21104300 */  addu       $v0, $v0, $v1
    /* 8EC4C 8009E44C C0100200 */  sll        $v0, $v0, 3
    /* 8EC50 8009E450 21200202 */  addu       $a0, $s0, $v0
    /* 8EC54 8009E454 00008290 */  lbu        $v0, 0x0($a0)
    /* 8EC58 8009E458 00000000 */  nop
    /* 8EC5C 8009E45C 05004010 */  beqz       $v0, .L8009E474
    /* 8EC60 8009E460 00000000 */   nop
    /* 8EC64 8009E464 E0038290 */  lbu        $v0, 0x3E0($a0)
    /* 8EC68 8009E468 00000000 */  nop
    /* 8EC6C 8009E46C 06004710 */  beq        $v0, $a3, .L8009E488
    /* 8EC70 8009E470 00000000 */   nop
  .L8009E474:
    /* 8EC74 8009E474 E1032392 */  lbu        $v1, 0x3E1($s1)
    /* 8EC78 8009E478 8D038290 */  lbu        $v0, 0x38D($a0)
    /* 8EC7C 8009E47C 00000000 */  nop
    /* 8EC80 8009E480 6D006210 */  beq        $v1, $v0, .L8009E638
    /* 8EC84 8009E484 00000000 */   nop
  .L8009E488:
    /* 8EC88 8009E488 0100A524 */  addiu      $a1, $a1, 0x1
    /* 8EC8C 8009E48C FF00A230 */  andi       $v0, $a1, 0xFF
    /* 8EC90 8009E490 0A00422C */  sltiu      $v0, $v0, 0xA
    /* 8EC94 8009E494 E0FF4014 */  bnez       $v0, .L8009E418
    /* 8EC98 8009E498 FF00A330 */   andi      $v1, $a1, 0xFF
  .L8009E49C:
    /* 8EC9C 8009E49C 99032292 */  lbu        $v0, 0x399($s1)
    /* 8ECA0 8009E4A0 8D032492 */  lbu        $a0, 0x38D($s1)
    /* 8ECA4 8009E4A4 40100200 */  sll        $v0, $v0, 1
    /* 8ECA8 8009E4A8 21184202 */  addu       $v1, $s2, $v0
    /* 8ECAC 8009E4AC 1E036290 */  lbu        $v0, (0x1F80031E & 0xFFFF)($v1)
    /* 8ECB0 8009E4B0 00000000 */  nop
    /* 8ECB4 8009E4B4 05008210 */  beq        $a0, $v0, .L8009E4CC
    /* 8ECB8 8009E4B8 00000000 */   nop
    /* 8ECBC 8009E4BC 1F036290 */  lbu        $v0, (0x1F80031F & 0xFFFF)($v1)
    /* 8ECC0 8009E4C0 00000000 */  nop
    /* 8ECC4 8009E4C4 02008214 */  bne        $a0, $v0, .L8009E4D0
    /* 8ECC8 8009E4C8 00000000 */   nop
  .L8009E4CC:
    /* 8ECCC 8009E4CC E10320A2 */  sb         $zero, 0x3E1($s1)
  .L8009E4D0:
    /* 8ECD0 8009E4D0 E1032292 */  lbu        $v0, 0x3E1($s1)
    /* 8ECD4 8009E4D4 00000000 */  nop
    /* 8ECD8 8009E4D8 58004010 */  beqz       $v0, .L8009E63C
    /* 8ECDC 8009E4DC 04000324 */   addiu     $v1, $zero, 0x4
    /* 8ECE0 8009E4E0 9A024292 */  lbu        $v0, (0x1F80029A & 0xFFFF)($s2)
    /* 8ECE4 8009E4E4 00000000 */  nop
    /* 8ECE8 8009E4E8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 8ECEC 8009E4EC 35004314 */  bne        $v0, $v1, .L8009E5C4
    /* 8ECF0 8009E4F0 21202002 */   addu      $a0, $s1, $zero
    /* 8ECF4 8009E4F4 0A006292 */  lbu        $v0, 0xA($s3)
    /* 8ECF8 8009E4F8 8D032392 */  lbu        $v1, 0x38D($s1)
    /* 8ECFC 8009E4FC 00000000 */  nop
    /* 8ED00 8009E500 05004310 */  beq        $v0, $v1, .L8009E518
    /* 8ED04 8009E504 01000224 */   addiu     $v0, $zero, 0x1
    /* 8ED08 8009E508 0B006292 */  lbu        $v0, 0xB($s3)
    /* 8ED0C 8009E50C 00000000 */  nop
    /* 8ED10 8009E510 05004314 */  bne        $v0, $v1, .L8009E528
    /* 8ED14 8009E514 01000224 */   addiu     $v0, $zero, 0x1
  .L8009E518:
    /* 8ED18 8009E518 E10320A2 */  sb         $zero, 0x3E1($s1)
    /* 8ED1C 8009E51C E20322A2 */  sb         $v0, 0x3E2($s1)
    /* 8ED20 8009E520 91790208 */  j          .L8009E644
    /* 8ED24 8009E524 E30320A2 */   sb        $zero, 0x3E3($s1)
  .L8009E528:
    /* 8ED28 8009E528 F402438E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s2)
    /* 8ED2C 8009E52C 02002686 */  lh         $a2, 0x2($s1)
    /* 8ED30 8009E530 02006484 */  lh         $a0, 0x2($v1)
    /* 8ED34 8009E534 00000000 */  nop
    /* 8ED38 8009E538 23108600 */  subu       $v0, $a0, $a2
    /* 8ED3C 8009E53C 18004200 */  mult       $v0, $v0
    /* 8ED40 8009E540 06002886 */  lh         $t0, 0x6($s1)
    /* 8ED44 8009E544 06006584 */  lh         $a1, 0x6($v1)
    /* 8ED48 8009E548 12380000 */  mflo       $a3
    /* 8ED4C 8009E54C 2310A800 */  subu       $v0, $a1, $t0
    /* 8ED50 8009E550 00000000 */  nop
    /* 8ED54 8009E554 18004200 */  mult       $v0, $v0
    /* 8ED58 8009E558 5300023C */  lui        $v0, (0x53DCA1 >> 16)
    /* 8ED5C 8009E55C A1DC4234 */  ori        $v0, $v0, (0x53DCA1 & 0xFFFF)
    /* 8ED60 8009E560 12180000 */  mflo       $v1
    /* 8ED64 8009E564 2118E300 */  addu       $v1, $a3, $v1
    /* 8ED68 8009E568 2A104300 */  slt        $v0, $v0, $v1
    /* 8ED6C 8009E56C 14004014 */  bnez       $v0, .L8009E5C0
    /* 8ED70 8009E570 00000000 */   nop
    /* 8ED74 8009E574 DB6C010C */  jal        func_8005B36C
    /* 8ED78 8009E578 21380001 */   addu      $a3, $t0, $zero
    /* 8ED7C 8009E57C FF005030 */  andi       $s0, $v0, 0xFF
    /* 8ED80 8009E580 21200002 */  addu       $a0, $s0, $zero
    /* 8ED84 8009E584 A579000C */  jal        func_8001E694
    /* 8ED88 8009E588 E8090524 */   addiu     $a1, $zero, 0x9E8
    /* 8ED8C 8009E58C F402438E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s2)
    /* 8ED90 8009E590 21200002 */  addu       $a0, $s0, $zero
    /* 8ED94 8009E594 02006394 */  lhu        $v1, 0x2($v1)
    /* 8ED98 8009E598 E8090524 */  addiu      $a1, $zero, 0x9E8
    /* 8ED9C 8009E59C 21186200 */  addu       $v1, $v1, $v0
    /* 8EDA0 8009E5A0 6979000C */  jal        func_8001E5A4
    /* 8EDA4 8009E5A4 BC0323A6 */   sh        $v1, 0x3BC($s1)
    /* 8EDA8 8009E5A8 F402438E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s2)
    /* 8EDAC 8009E5AC 00000000 */  nop
    /* 8EDB0 8009E5B0 06006394 */  lhu        $v1, 0x6($v1)
    /* 8EDB4 8009E5B4 00000000 */  nop
    /* 8EDB8 8009E5B8 21186200 */  addu       $v1, $v1, $v0
    /* 8EDBC 8009E5BC BE0323A6 */  sh         $v1, 0x3BE($s1)
  .L8009E5C0:
    /* 8EDC0 8009E5C0 21202002 */  addu       $a0, $s1, $zero
  .L8009E5C4:
    /* 8EDC4 8009E5C4 F8004536 */  ori        $a1, $s2, (0x1F8000F8 & 0xFFFF)
    /* 8EDC8 8009E5C8 E1032292 */  lbu        $v0, 0x3E1($s1)
    /* 8EDCC 8009E5CC FC004636 */  ori        $a2, $s2, (0x1F8000FC & 0xFFFF)
    /* 8EDD0 8009E5D0 176A010C */  jal        func_8005A85C
    /* 8EDD4 8009E5D4 E30322A2 */   sb        $v0, 0x3E3($s1)
    /* 8EDD8 8009E5D8 21202002 */  addu       $a0, $s1, $zero
    /* 8EDDC 8009E5DC BC032626 */  addiu      $a2, $s1, 0x3BC
    /* 8EDE0 8009E5E0 E1032592 */  lbu        $a1, 0x3E1($s1)
    /* 8EDE4 8009E5E4 CC83020C */  jal        func_800A0F30
    /* 8EDE8 8009E5E8 BE032726 */   addiu     $a3, $s1, 0x3BE
    /* 8EDEC 8009E5EC BC032586 */  lh         $a1, 0x3BC($s1)
    /* 8EDF0 8009E5F0 BE032686 */  lh         $a2, 0x3BE($s1)
    /* 8EDF4 8009E5F4 F0A3010C */  jal        func_80068FC0
    /* 8EDF8 8009E5F8 21202002 */   addu      $a0, $s1, $zero
    /* 8EDFC 8009E5FC 91032392 */  lbu        $v1, 0x391($s1)
    /* 8EE00 8009E600 00000000 */  nop
    /* 8EE04 8009E604 1A006228 */  slti       $v0, $v1, 0x1A
    /* 8EE08 8009E608 0E004010 */  beqz       $v0, .L8009E644
    /* 8EE0C 8009E60C 15006228 */   slti      $v0, $v1, 0x15
    /* 8EE10 8009E610 0C004014 */  bnez       $v0, .L8009E644
    /* 8EE14 8009E614 00000000 */   nop
    /* 8EE18 8009E618 BE032286 */  lh         $v0, 0x3BE($s1)
    /* 8EE1C 8009E61C 00000000 */  nop
    /* 8EE20 8009E620 02004104 */  bgez       $v0, .L8009E62C
    /* 8EE24 8009E624 00000000 */   nop
    /* 8EE28 8009E628 23100200 */  negu       $v0, $v0
  .L8009E62C:
    /* 8EE2C 8009E62C B7084228 */  slti       $v0, $v0, 0x8B7
    /* 8EE30 8009E630 04004014 */  bnez       $v0, .L8009E644
    /* 8EE34 8009E634 00000000 */   nop
  .L8009E638:
    /* 8EE38 8009E638 E10320A2 */  sb         $zero, 0x3E1($s1)
  .L8009E63C:
    /* 8EE3C 8009E63C A978020C */  jal        func_8009E2A4
    /* 8EE40 8009E640 21202002 */   addu      $a0, $s1, $zero
  .L8009E644:
    /* 8EE44 8009E644 2000BF8F */  lw         $ra, 0x20($sp)
    /* 8EE48 8009E648 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 8EE4C 8009E64C 1800B28F */  lw         $s2, 0x18($sp)
    /* 8EE50 8009E650 1400B18F */  lw         $s1, 0x14($sp)
    /* 8EE54 8009E654 1000B08F */  lw         $s0, 0x10($sp)
    /* 8EE58 8009E658 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 8EE5C 8009E65C 0800E003 */  jr         $ra
    /* 8EE60 8009E660 00000000 */   nop
endlabel func_8009E318
