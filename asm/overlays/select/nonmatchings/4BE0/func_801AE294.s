nonmatching func_801AE294, 0x964

glabel func_801AE294
    /* 2531C 801AE294 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 25320 801AE298 2000B0AF */  sw         $s0, 0x20($sp)
    /* 25324 801AE29C 1080103C */  lui        $s0, %hi(D_800FF748)
    /* 25328 801AE2A0 48F71026 */  addiu      $s0, $s0, %lo(D_800FF748)
    /* 2532C 801AE2A4 2400B1AF */  sw         $s1, 0x24($sp)
    /* 25330 801AE2A8 1E80033C */  lui        $v1, %hi(D_801DAD84)
    /* 25334 801AE2AC 84AD6390 */  lbu        $v1, %lo(D_801DAD84)($v1)
    /* 25338 801AE2B0 04000224 */  addiu      $v0, $zero, 0x4
    /* 2533C 801AE2B4 2800BFAF */  sw         $ra, 0x28($sp)
    /* 25340 801AE2B8 1E80013C */  lui        $at, %hi(D_801D86F2)
    /* 25344 801AE2BC F28624A0 */  sb         $a0, %lo(D_801D86F2)($at)
    /* 25348 801AE2C0 0E006214 */  bne        $v1, $v0, .L801AE2FC
    /* 2534C 801AE2C4 801F113C */   lui       $s1, (0x1F800000 >> 16)
    /* 25350 801AE2C8 1E80033C */  lui        $v1, %hi(D_801DA2F0)
    /* 25354 801AE2CC F0A26390 */  lbu        $v1, %lo(D_801DA2F0)($v1)
    /* 25358 801AE2D0 01000224 */  addiu      $v0, $zero, 0x1
    /* 2535C 801AE2D4 09006214 */  bne        $v1, $v0, .L801AE2FC
    /* 25360 801AE2D8 00000000 */   nop
    /* 25364 801AE2DC 0174000C */  jal        func_8001D004
    /* 25368 801AE2E0 AC300424 */   addiu     $a0, $zero, 0x30AC
    /* 2536C 801AE2E4 36000324 */  addiu      $v1, $zero, 0x36
    /* 25370 801AE2E8 0A0043A0 */  sb         $v1, 0xA($v0)
    /* 25374 801AE2EC 3FBF010C */  jal        func_8006FCFC
    /* 25378 801AE2F0 36000424 */   addiu     $a0, $zero, 0x36
    /* 2537C 801AE2F4 C3B80608 */  j          .L801AE30C
    /* 25380 801AE2F8 00000000 */   nop
  .L801AE2FC:
    /* 25384 801AE2FC 0174000C */  jal        func_8001D004
    /* 25388 801AE300 AC300424 */   addiu     $a0, $zero, 0x30AC
    /* 2538C 801AE304 5B000324 */  addiu      $v1, $zero, 0x5B
    /* 25390 801AE308 0A0043A0 */  sb         $v1, 0xA($v0)
  .L801AE30C:
    /* 25394 801AE30C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 25398 801AE310 21080102 */  addu       $at, $s0, $at
    /* 2539C 801AE314 D8AB2390 */  lbu        $v1, -0x5428($at)
    /* 253A0 801AE318 00000000 */  nop
    /* 253A4 801AE31C 2B00622C */  sltiu      $v0, $v1, 0x2B
    /* 253A8 801AE320 2E024010 */  beqz       $v0, .L801AEBDC
    /* 253AC 801AE324 80100300 */   sll       $v0, $v1, 2
    /* 253B0 801AE328 1980013C */  lui        $at, %hi(jtbl_8018A474)
    /* 253B4 801AE32C 21082200 */  addu       $at, $at, $v0
    /* 253B8 801AE330 74A4228C */  lw         $v0, %lo(jtbl_8018A474)($at)
    /* 253BC 801AE334 00000000 */  nop
    /* 253C0 801AE338 08004000 */  jr         $v0
    /* 253C4 801AE33C 00000000 */   nop
  jlabel .L801AE340
    /* 253C8 801AE340 1E80033C */  lui        $v1, %hi(D_801D8A8E)
    /* 253CC 801AE344 8E8A6390 */  lbu        $v1, %lo(D_801D8A8E)($v1)
    /* 253D0 801AE348 5F000224 */  addiu      $v0, $zero, 0x5F
    /* 253D4 801AE34C 1E80013C */  lui        $at, %hi(D_801D8A8A)
    /* 253D8 801AE350 8A8A22A0 */  sb         $v0, %lo(D_801D8A8A)($at)
    /* 253DC 801AE354 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 253E0 801AE358 1E80013C */  lui        $at, %hi(D_801D8A8B)
    /* 253E4 801AE35C 8B8A22A0 */  sb         $v0, %lo(D_801D8A8B)($at)
    /* 253E8 801AE360 60000224 */  addiu      $v0, $zero, 0x60
    /* 253EC 801AE364 1E80013C */  lui        $at, %hi(D_801D8A8D)
    /* 253F0 801AE368 8D8A22A0 */  sb         $v0, %lo(D_801D8A8D)($at)
    /* 253F4 801AE36C 04000224 */  addiu      $v0, $zero, 0x4
    /* 253F8 801AE370 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 253FC 801AE374 84AD22A0 */  sb         $v0, %lo(D_801DAD84)($at)
    /* 25400 801AE378 01000224 */  addiu      $v0, $zero, 0x1
    /* 25404 801AE37C 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 25408 801AE380 F0A220A0 */  sb         $zero, %lo(D_801DA2F0)($at)
    /* 2540C 801AE384 1E80013C */  lui        $at, %hi(D_801D8A82)
    /* 25410 801AE388 828A20A4 */  sh         $zero, %lo(D_801D8A82)($at)
    /* 25414 801AE38C 1E80013C */  lui        $at, %hi(D_801D8A84)
    /* 25418 801AE390 848A20A4 */  sh         $zero, %lo(D_801D8A84)($at)
    /* 2541C 801AE394 1E80013C */  lui        $at, %hi(D_801D8A86)
    /* 25420 801AE398 868A20A4 */  sh         $zero, %lo(D_801D8A86)($at)
    /* 25424 801AE39C 1E80013C */  lui        $at, %hi(D_801D8A88)
    /* 25428 801AE3A0 888A20A4 */  sh         $zero, %lo(D_801D8A88)($at)
    /* 2542C 801AE3A4 1E80013C */  lui        $at, %hi(D_801D8A8F)
    /* 25430 801AE3A8 8F8A20A0 */  sb         $zero, %lo(D_801D8A8F)($at)
    /* 25434 801AE3AC 1E80013C */  lui        $at, %hi(D_801D8A8C)
    /* 25438 801AE3B0 8C8A20A0 */  sb         $zero, %lo(D_801D8A8C)($at)
    /* 2543C 801AE3B4 1E80013C */  lui        $at, %hi(D_801D8A51)
    /* 25440 801AE3B8 518A22A0 */  sb         $v0, %lo(D_801D8A51)($at)
    /* 25444 801AE3BC 1E80013C */  lui        $at, %hi(D_801D86F0)
    /* 25448 801AE3C0 F08620A4 */  sh         $zero, %lo(D_801D86F0)($at)
    /* 2544C 801AE3C4 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 25450 801AE3C8 58A020AC */  sw         $zero, %lo(D_801DA058)($at)
    /* 25454 801AE3CC 1E80013C */  lui        $at, %hi(D_801D86F3)
    /* 25458 801AE3D0 F38620A0 */  sb         $zero, %lo(D_801D86F3)($at)
    /* 2545C 801AE3D4 61006330 */  andi       $v1, $v1, 0x61
    /* 25460 801AE3D8 21006334 */  ori        $v1, $v1, 0x21
    /* 25464 801AE3DC 1E80013C */  lui        $at, %hi(D_801D8A8E)
    /* 25468 801AE3E0 8E8A23A0 */  sb         $v1, %lo(D_801D8A8E)($at)
    /* 2546C 801AE3E4 4E39060C */  jal        func_8018E538
    /* 25470 801AE3E8 21200000 */   addu      $a0, $zero, $zero
    /* 25474 801AE3EC 41000224 */  addiu      $v0, $zero, 0x41
    /* 25478 801AE3F0 34A3060C */  jal        func_801A8CD0
    /* 2547C 801AE3F4 A20222A2 */   sb        $v0, 0x2A2($s1)
    /* 25480 801AE3F8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 25484 801AE3FC 21080102 */  addu       $at, $s0, $at
    /* 25488 801AE400 D8AB2290 */  lbu        $v0, -0x5428($at)
    /* 2548C 801AE404 2DB90608 */  j          .L801AE4B4
    /* 25490 801AE408 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801AE40C
    /* 25494 801AE40C 01000224 */  addiu      $v0, $zero, 0x1
    /* 25498 801AE410 1E80013C */  lui        $at, %hi(D_801D86EC)
    /* 2549C 801AE414 EC8622A4 */  sh         $v0, %lo(D_801D86EC)($at)
    /* 254A0 801AE418 09000224 */  addiu      $v0, $zero, 0x9
    /* 254A4 801AE41C 1E80013C */  lui        $at, %hi(D_801D86E8)
    /* 254A8 801AE420 E88620A4 */  sh         $zero, %lo(D_801D86E8)($at)
    /* 254AC 801AE424 1E80013C */  lui        $at, %hi(D_801D86EA)
    /* 254B0 801AE428 EA8620A4 */  sh         $zero, %lo(D_801D86EA)($at)
    /* 254B4 801AE42C 1E80013C */  lui        $at, %hi(D_801D86EE)
    /* 254B8 801AE430 EE8622A4 */  sh         $v0, %lo(D_801D86EE)($at)
    /* 254BC 801AE434 2DBB060C */  jal        func_801AECB4
    /* 254C0 801AE438 00000000 */   nop
    /* 254C4 801AE43C 66BC060C */  jal        func_801AF198
    /* 254C8 801AE440 00000000 */   nop
    /* 254CC 801AE444 1E80043C */  lui        $a0, %hi(D_801D86EA)
    /* 254D0 801AE448 EA868490 */  lbu        $a0, %lo(D_801D86EA)($a0)
    /* 254D4 801AE44C 20BD060C */  jal        func_801AF480
    /* 254D8 801AE450 00000000 */   nop
    /* 254DC 801AE454 B3BF060C */  jal        func_801AFECC
    /* 254E0 801AE458 00000000 */   nop
    /* 254E4 801AE45C 1E80023C */  lui        $v0, %hi(D_801D86F3)
    /* 254E8 801AE460 F3864290 */  lbu        $v0, %lo(D_801D86F3)($v0)
    /* 254EC 801AE464 00000000 */  nop
    /* 254F0 801AE468 05004014 */  bnez       $v0, .L801AE480
    /* 254F4 801AE46C 04000224 */   addiu     $v0, $zero, 0x4
    /* 254F8 801AE470 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 254FC 801AE474 84AD22A0 */  sb         $v0, %lo(D_801DAD84)($at)
    /* 25500 801AE478 1E80013C */  lui        $at, %hi(D_801D8A51)
    /* 25504 801AE47C 518A22A0 */  sb         $v0, %lo(D_801D8A51)($at)
  .L801AE480:
    /* 25508 801AE480 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2550C 801AE484 21080102 */  addu       $at, $s0, $at
    /* 25510 801AE488 D8AB2290 */  lbu        $v0, -0x5428($at)
    /* 25514 801AE48C 2DB90608 */  j          .L801AE4B4
    /* 25518 801AE490 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801AE494
    /* 2551C 801AE494 0100013C */  lui        $at, (0x10000 >> 16)
    /* 25520 801AE498 21080102 */  addu       $at, $s0, $at
    /* 25524 801AE49C D8AB2290 */  lbu        $v0, -0x5428($at)
    /* 25528 801AE4A0 300320A2 */  sb         $zero, 0x330($s1)
    /* 2552C 801AE4A4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 25530 801AE4A8 21080102 */  addu       $at, $s0, $at
    /* 25534 801AE4AC D6AB20A4 */  sh         $zero, -0x542A($at)
    /* 25538 801AE4B0 01004224 */  addiu      $v0, $v0, 0x1
  .L801AE4B4:
    /* 2553C 801AE4B4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 25540 801AE4B8 21080102 */  addu       $at, $s0, $at
    /* 25544 801AE4BC D8AB22A0 */  sb         $v0, -0x5428($at)
    /* 25548 801AE4C0 F8BA0608 */  j          .L801AEBE0
    /* 2554C 801AE4C4 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801AE4C8
    /* 25550 801AE4C8 C7BF060C */  jal        func_801AFF1C
    /* 25554 801AE4CC 00000000 */   nop
    /* 25558 801AE4D0 C2014010 */  beqz       $v0, .L801AEBDC
    /* 2555C 801AE4D4 01000324 */   addiu     $v1, $zero, 0x1
    /* 25560 801AE4D8 0A000224 */  addiu      $v0, $zero, 0xA
    /* 25564 801AE4DC 1E80013C */  lui        $at, %hi(D_801D8A8F)
    /* 25568 801AE4E0 8F8A23A0 */  sb         $v1, %lo(D_801D8A8F)($at)
    /* 2556C 801AE4E4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 25570 801AE4E8 21080102 */  addu       $at, $s0, $at
    /* 25574 801AE4EC D8AB22A0 */  sb         $v0, -0x5428($at)
    /* 25578 801AE4F0 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 2557C 801AE4F4 F0A223A0 */  sb         $v1, %lo(D_801DA2F0)($at)
    /* 25580 801AE4F8 F8BA0608 */  j          .L801AEBE0
    /* 25584 801AE4FC 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801AE500
    /* 25588 801AE500 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 2558C 801AE504 50AE20A0 */  sb         $zero, %lo(D_801DAE50)($at)
    /* 25590 801AE508 FEBA060C */  jal        func_801AEBF8
    /* 25594 801AE50C 00000000 */   nop
    /* 25598 801AE510 2DC1060C */  jal        func_801B04B4
    /* 2559C 801AE514 21200000 */   addu      $a0, $zero, $zero
    /* 255A0 801AE518 FFFF4330 */  andi       $v1, $v0, 0xFFFF
    /* 255A4 801AE51C 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 255A8 801AE520 A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 255AC 801AE524 00100224 */  addiu      $v0, $zero, 0x1000
    /* 255B0 801AE528 30006214 */  bne        $v1, $v0, .L801AE5EC
    /* 255B4 801AE52C 00400224 */   addiu     $v0, $zero, 0x4000
    /* 255B8 801AE530 88AD020C */  jal        func_800AB620
    /* 255BC 801AE534 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 255C0 801AE538 1E80033C */  lui        $v1, %hi(D_801DAD84)
    /* 255C4 801AE53C 84AD6390 */  lbu        $v1, %lo(D_801DAD84)($v1)
    /* 255C8 801AE540 00000000 */  nop
    /* 255CC 801AE544 0600622C */  sltiu      $v0, $v1, 0x6
    /* 255D0 801AE548 A4014010 */  beqz       $v0, .L801AEBDC
    /* 255D4 801AE54C 80100300 */   sll       $v0, $v1, 2
    /* 255D8 801AE550 1980013C */  lui        $at, %hi(jtbl_8018A524)
    /* 255DC 801AE554 21082200 */  addu       $at, $at, $v0
    /* 255E0 801AE558 24A5228C */  lw         $v0, %lo(jtbl_8018A524)($at)
    /* 255E4 801AE55C 00000000 */  nop
    /* 255E8 801AE560 08004000 */  jr         $v0
    /* 255EC 801AE564 00000000 */   nop
  jlabel .L801AE568
    /* 255F0 801AE568 88AD020C */  jal        func_800AB620
    /* 255F4 801AE56C 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 255F8 801AE570 1E80023C */  lui        $v0, %hi(D_801D8A82)
    /* 255FC 801AE574 828A4224 */  addiu      $v0, $v0, %lo(D_801D8A82)
    /* 25600 801AE578 1E80033C */  lui        $v1, %hi(D_801D8A84)
    /* 25604 801AE57C 848A6394 */  lhu        $v1, %lo(D_801D8A84)($v1)
    /* 25608 801AE580 00004494 */  lhu        $a0, 0x0($v0)
    /* 2560C 801AE584 C1B90608 */  j          .L801AE704
    /* 25610 801AE588 F0FF6324 */   addiu     $v1, $v1, -0x10
  jlabel .L801AE58C
    /* 25614 801AE58C 04000224 */  addiu      $v0, $zero, 0x4
    /* 25618 801AE590 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 2561C 801AE594 84AD22A0 */  sb         $v0, %lo(D_801DAD84)($at)
    /* 25620 801AE598 F8BA0608 */  j          .L801AEBE0
    /* 25624 801AE59C 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801AE5A0
    /* 25628 801AE5A0 1E80023C */  lui        $v0, %hi(D_801D86F0)
    /* 2562C 801AE5A4 F0864294 */  lhu        $v0, %lo(D_801D86F0)($v0)
    /* 25630 801AE5A8 00000000 */  nop
    /* 25634 801AE5AC 05004010 */  beqz       $v0, .L801AE5C4
    /* 25638 801AE5B0 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 2563C 801AE5B4 1E80013C */  lui        $at, %hi(D_801D86F0)
    /* 25640 801AE5B8 F08622A4 */  sh         $v0, %lo(D_801D86F0)($at)
    /* 25644 801AE5BC F8BA0608 */  j          .L801AEBE0
    /* 25648 801AE5C0 21100000 */   addu      $v0, $zero, $zero
  .L801AE5C4:
    /* 2564C 801AE5C4 1E80033C */  lui        $v1, %hi(D_801D86EA)
    /* 25650 801AE5C8 EA866324 */  addiu      $v1, $v1, %lo(D_801D86EA)
    /* 25654 801AE5CC 00006284 */  lh         $v0, 0x0($v1)
    /* 25658 801AE5D0 00000000 */  nop
    /* 2565C 801AE5D4 48014018 */  blez       $v0, .L801AEAF8
    /* 25660 801AE5D8 21204000 */   addu      $a0, $v0, $zero
    /* 25664 801AE5DC FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 25668 801AE5E0 000064A4 */  sh         $a0, 0x0($v1)
    /* 2566C 801AE5E4 8FBA0608 */  j          .L801AEA3C
    /* 25670 801AE5E8 FF008430 */   andi      $a0, $a0, 0xFF
  .L801AE5EC:
    /* 25674 801AE5EC 4A006214 */  bne        $v1, $v0, .L801AE718
    /* 25678 801AE5F0 00800234 */   ori       $v0, $zero, 0x8000
    /* 2567C 801AE5F4 88AD020C */  jal        func_800AB620
    /* 25680 801AE5F8 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 25684 801AE5FC 1E80023C */  lui        $v0, %hi(D_801D86F3)
    /* 25688 801AE600 F3864290 */  lbu        $v0, %lo(D_801D86F3)($v0)
    /* 2568C 801AE604 00000000 */  nop
    /* 25690 801AE608 38004010 */  beqz       $v0, .L801AE6EC
    /* 25694 801AE60C 00000000 */   nop
    /* 25698 801AE610 1E80033C */  lui        $v1, %hi(D_801DAD84)
    /* 2569C 801AE614 84AD6390 */  lbu        $v1, %lo(D_801DAD84)($v1)
    /* 256A0 801AE618 00000000 */  nop
    /* 256A4 801AE61C 0600622C */  sltiu      $v0, $v1, 0x6
    /* 256A8 801AE620 6E014010 */  beqz       $v0, .L801AEBDC
    /* 256AC 801AE624 80100300 */   sll       $v0, $v1, 2
    /* 256B0 801AE628 1980013C */  lui        $at, %hi(jtbl_8018A53C)
    /* 256B4 801AE62C 21082200 */  addu       $at, $at, $v0
    /* 256B8 801AE630 3CA5228C */  lw         $v0, %lo(jtbl_8018A53C)($at)
    /* 256BC 801AE634 00000000 */  nop
    /* 256C0 801AE638 08004000 */  jr         $v0
    /* 256C4 801AE63C 00000000 */   nop
  jlabel .L801AE640
    /* 256C8 801AE640 88AD020C */  jal        func_800AB620
    /* 256CC 801AE644 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 256D0 801AE648 BBB90608 */  j          .L801AE6EC
    /* 256D4 801AE64C 00000000 */   nop
  jlabel .L801AE650
    /* 256D8 801AE650 1E80023C */  lui        $v0, %hi(D_801D8A51)
    /* 256DC 801AE654 518A4290 */  lbu        $v0, %lo(D_801D8A51)($v0)
    /* 256E0 801AE658 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 256E4 801AE65C 84AD22A0 */  sb         $v0, %lo(D_801DAD84)($at)
    /* 256E8 801AE660 F8BA0608 */  j          .L801AEBE0
    /* 256EC 801AE664 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801AE668
    /* 256F0 801AE668 1E80043C */  lui        $a0, %hi(D_801D86F0)
    /* 256F4 801AE66C F0868494 */  lhu        $a0, %lo(D_801D86F0)($a0)
    /* 256F8 801AE670 00000000 */  nop
    /* 256FC 801AE674 FFFF8330 */  andi       $v1, $a0, 0xFFFF
    /* 25700 801AE678 0800622C */  sltiu      $v0, $v1, 0x8
    /* 25704 801AE67C 0C004010 */  beqz       $v0, .L801AE6B0
    /* 25708 801AE680 00000000 */   nop
    /* 2570C 801AE684 1E80023C */  lui        $v0, %hi(D_801D86F3)
    /* 25710 801AE688 F3864290 */  lbu        $v0, %lo(D_801D86F3)($v0)
    /* 25714 801AE68C 00000000 */  nop
    /* 25718 801AE690 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 2571C 801AE694 2A106200 */  slt        $v0, $v1, $v0
    /* 25720 801AE698 14004010 */  beqz       $v0, .L801AE6EC
    /* 25724 801AE69C 01008224 */   addiu     $v0, $a0, 0x1
    /* 25728 801AE6A0 1E80013C */  lui        $at, %hi(D_801D86F0)
    /* 2572C 801AE6A4 F08622A4 */  sh         $v0, %lo(D_801D86F0)($at)
    /* 25730 801AE6A8 F8BA0608 */  j          .L801AEBE0
    /* 25734 801AE6AC 21100000 */   addu      $v0, $zero, $zero
  .L801AE6B0:
    /* 25738 801AE6B0 1E80063C */  lui        $a2, %hi(D_801D86EA)
    /* 2573C 801AE6B4 EA86C624 */  addiu      $a2, $a2, %lo(D_801D86EA)
    /* 25740 801AE6B8 0000C284 */  lh         $v0, 0x0($a2)
    /* 25744 801AE6BC 1E80033C */  lui        $v1, %hi(D_801D86EE)
    /* 25748 801AE6C0 EE866384 */  lh         $v1, %lo(D_801D86EE)($v1)
    /* 2574C 801AE6C4 1E80043C */  lui        $a0, %hi(D_801D86F3)
    /* 25750 801AE6C8 F3868490 */  lbu        $a0, %lo(D_801D86F3)($a0)
    /* 25754 801AE6CC 21284000 */  addu       $a1, $v0, $zero
    /* 25758 801AE6D0 21104300 */  addu       $v0, $v0, $v1
    /* 2575C 801AE6D4 2A104400 */  slt        $v0, $v0, $a0
    /* 25760 801AE6D8 04004010 */  beqz       $v0, .L801AE6EC
    /* 25764 801AE6DC 0100A424 */   addiu     $a0, $a1, 0x1
    /* 25768 801AE6E0 0000C4A4 */  sh         $a0, 0x0($a2)
    /* 2576C 801AE6E4 8FBA0608 */  j          .L801AEA3C
    /* 25770 801AE6E8 FF008430 */   andi      $a0, $a0, 0xFF
  .L801AE6EC:
    /* 25774 801AE6EC 1E80023C */  lui        $v0, %hi(D_801D8A82)
    /* 25778 801AE6F0 828A4224 */  addiu      $v0, $v0, %lo(D_801D8A82)
    /* 2577C 801AE6F4 1E80033C */  lui        $v1, %hi(D_801D8A84)
    /* 25780 801AE6F8 848A6394 */  lhu        $v1, %lo(D_801D8A84)($v1)
    /* 25784 801AE6FC 00004494 */  lhu        $a0, 0x0($v0)
    /* 25788 801AE700 10006324 */  addiu      $v1, $v1, 0x10
  .L801AE704:
    /* 2578C 801AE704 000044A4 */  sh         $a0, 0x0($v0)
    /* 25790 801AE708 1E80013C */  lui        $at, %hi(D_801D8A84)
    /* 25794 801AE70C 848A23A4 */  sh         $v1, %lo(D_801D8A84)($at)
    /* 25798 801AE710 F8BA0608 */  j          .L801AEBE0
    /* 2579C 801AE714 21100000 */   addu      $v0, $zero, $zero
  .L801AE718:
    /* 257A0 801AE718 25006214 */  bne        $v1, $v0, .L801AE7B0
    /* 257A4 801AE71C 00200224 */   addiu     $v0, $zero, 0x2000
    /* 257A8 801AE720 88AD020C */  jal        func_800AB620
    /* 257AC 801AE724 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 257B0 801AE728 1E80023C */  lui        $v0, %hi(D_801D86F3)
    /* 257B4 801AE72C F3864290 */  lbu        $v0, %lo(D_801D86F3)($v0)
    /* 257B8 801AE730 00000000 */  nop
    /* 257BC 801AE734 2A014010 */  beqz       $v0, .L801AEBE0
    /* 257C0 801AE738 21100000 */   addu      $v0, $zero, $zero
    /* 257C4 801AE73C 1E80033C */  lui        $v1, %hi(D_801DAD84)
    /* 257C8 801AE740 84AD6390 */  lbu        $v1, %lo(D_801DAD84)($v1)
    /* 257CC 801AE744 00000000 */  nop
    /* 257D0 801AE748 0600622C */  sltiu      $v0, $v1, 0x6
    /* 257D4 801AE74C 23014010 */  beqz       $v0, .L801AEBDC
    /* 257D8 801AE750 80100300 */   sll       $v0, $v1, 2
    /* 257DC 801AE754 1980013C */  lui        $at, %hi(jtbl_8018A554)
    /* 257E0 801AE758 21082200 */  addu       $at, $at, $v0
    /* 257E4 801AE75C 54A5228C */  lw         $v0, %lo(jtbl_8018A554)($at)
    /* 257E8 801AE760 00000000 */  nop
    /* 257EC 801AE764 08004000 */  jr         $v0
    /* 257F0 801AE768 00000000 */   nop
  jlabel .L801AE76C
    /* 257F4 801AE76C 1E80023C */  lui        $v0, %hi(D_801D8A82)
    /* 257F8 801AE770 828A4224 */  addiu      $v0, $v0, %lo(D_801D8A82)
    /* 257FC 801AE774 00004394 */  lhu        $v1, 0x0($v0)
    /* 25800 801AE778 1E80043C */  lui        $a0, %hi(D_801D8A84)
    /* 25804 801AE77C 848A8494 */  lhu        $a0, %lo(D_801D8A84)($a0)
    /* 25808 801AE780 07BA0608 */  j          .L801AE81C
    /* 2580C 801AE784 F0FF6324 */   addiu     $v1, $v1, -0x10
  jlabel .L801AE788
    /* 25810 801AE788 1E80023C */  lui        $v0, %hi(D_801D8A51)
    /* 25814 801AE78C 518A4290 */  lbu        $v0, %lo(D_801D8A51)($v0)
    /* 25818 801AE790 02000324 */  addiu      $v1, $zero, 0x2
    /* 2581C 801AE794 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 25820 801AE798 84AD22A0 */  sb         $v0, %lo(D_801DAD84)($at)
    /* 25824 801AE79C FF004230 */  andi       $v0, $v0, 0xFF
    /* 25828 801AE7A0 0F014314 */  bne        $v0, $v1, .L801AEBE0
    /* 2582C 801AE7A4 21100000 */   addu      $v0, $zero, $zero
    /* 25830 801AE7A8 0DBA0608 */  j          .L801AE834
    /* 25834 801AE7AC 01000224 */   addiu     $v0, $zero, 0x1
  .L801AE7B0:
    /* 25838 801AE7B0 34006214 */  bne        $v1, $v0, .L801AE884
    /* 2583C 801AE7B4 20000224 */   addiu     $v0, $zero, 0x20
    /* 25840 801AE7B8 88AD020C */  jal        func_800AB620
    /* 25844 801AE7BC 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 25848 801AE7C0 1E80033C */  lui        $v1, %hi(D_801DAD84)
    /* 2584C 801AE7C4 84AD6390 */  lbu        $v1, %lo(D_801DAD84)($v1)
    /* 25850 801AE7C8 00000000 */  nop
    /* 25854 801AE7CC 0600622C */  sltiu      $v0, $v1, 0x6
    /* 25858 801AE7D0 02014010 */  beqz       $v0, .L801AEBDC
    /* 2585C 801AE7D4 80100300 */   sll       $v0, $v1, 2
    /* 25860 801AE7D8 1980013C */  lui        $at, %hi(jtbl_8018A56C)
    /* 25864 801AE7DC 21082200 */  addu       $at, $at, $v0
    /* 25868 801AE7E0 6CA5228C */  lw         $v0, %lo(jtbl_8018A56C)($at)
    /* 2586C 801AE7E4 00000000 */  nop
    /* 25870 801AE7E8 08004000 */  jr         $v0
    /* 25874 801AE7EC 00000000 */   nop
  jlabel .L801AE7F0
    /* 25878 801AE7F0 1E80023C */  lui        $v0, %hi(D_801D86F3)
    /* 2587C 801AE7F4 F3864290 */  lbu        $v0, %lo(D_801D86F3)($v0)
    /* 25880 801AE7F8 00000000 */  nop
    /* 25884 801AE7FC 18004014 */  bnez       $v0, .L801AE860
    /* 25888 801AE800 02000224 */   addiu     $v0, $zero, 0x2
  jlabel .L801AE804
    /* 2588C 801AE804 1E80023C */  lui        $v0, %hi(D_801D8A82)
    /* 25890 801AE808 828A4224 */  addiu      $v0, $v0, %lo(D_801D8A82)
    /* 25894 801AE80C 00004394 */  lhu        $v1, 0x0($v0)
    /* 25898 801AE810 1E80043C */  lui        $a0, %hi(D_801D8A84)
    /* 2589C 801AE814 848A8494 */  lhu        $a0, %lo(D_801D8A84)($a0)
    /* 258A0 801AE818 10006324 */  addiu      $v1, $v1, 0x10
  .L801AE81C:
    /* 258A4 801AE81C 000043A4 */  sh         $v1, 0x0($v0)
    /* 258A8 801AE820 1E80013C */  lui        $at, %hi(D_801D8A84)
    /* 258AC 801AE824 848A24A4 */  sh         $a0, %lo(D_801D8A84)($at)
    /* 258B0 801AE828 F8BA0608 */  j          .L801AEBE0
    /* 258B4 801AE82C 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801AE830
    /* 258B8 801AE830 01000224 */  addiu      $v0, $zero, 0x1
  .L801AE834:
    /* 258BC 801AE834 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 258C0 801AE838 84AD22A0 */  sb         $v0, %lo(D_801DAD84)($at)
    /* 258C4 801AE83C F8BA0608 */  j          .L801AEBE0
    /* 258C8 801AE840 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801AE844
    /* 258CC 801AE844 1E80023C */  lui        $v0, %hi(D_801D86F0)
    /* 258D0 801AE848 F0864294 */  lhu        $v0, %lo(D_801D86F0)($v0)
    /* 258D4 801AE84C 00000000 */  nop
    /* 258D8 801AE850 0500422C */  sltiu      $v0, $v0, 0x5
    /* 258DC 801AE854 07004010 */  beqz       $v0, .L801AE874
    /* 258E0 801AE858 03000224 */   addiu     $v0, $zero, 0x3
  jlabel .L801AE85C
    /* 258E4 801AE85C 02000224 */  addiu      $v0, $zero, 0x2
  .L801AE860:
    /* 258E8 801AE860 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 258EC 801AE864 84AD22A0 */  sb         $v0, %lo(D_801DAD84)($at)
    /* 258F0 801AE868 F8BA0608 */  j          .L801AEBE0
    /* 258F4 801AE86C 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801AE870
    /* 258F8 801AE870 03000224 */  addiu      $v0, $zero, 0x3
  .L801AE874:
    /* 258FC 801AE874 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 25900 801AE878 84AD22A0 */  sb         $v0, %lo(D_801DAD84)($at)
    /* 25904 801AE87C F8BA0608 */  j          .L801AEBE0
    /* 25908 801AE880 21100000 */   addu      $v0, $zero, $zero
  .L801AE884:
    /* 2590C 801AE884 80006214 */  bne        $v1, $v0, .L801AEA88
    /* 25910 801AE888 40000224 */   addiu     $v0, $zero, 0x40
    /* 25914 801AE88C 1E80033C */  lui        $v1, %hi(D_801DAD84)
    /* 25918 801AE890 84AD6390 */  lbu        $v1, %lo(D_801DAD84)($v1)
    /* 2591C 801AE894 00000000 */  nop
    /* 25920 801AE898 0600622C */  sltiu      $v0, $v1, 0x6
    /* 25924 801AE89C CF004010 */  beqz       $v0, .L801AEBDC
    /* 25928 801AE8A0 80100300 */   sll       $v0, $v1, 2
    /* 2592C 801AE8A4 1980013C */  lui        $at, %hi(jtbl_8018A584)
    /* 25930 801AE8A8 21082200 */  addu       $at, $at, $v0
    /* 25934 801AE8AC 84A5228C */  lw         $v0, %lo(jtbl_8018A584)($at)
    /* 25938 801AE8B0 00000000 */  nop
    /* 2593C 801AE8B4 08004000 */  jr         $v0
    /* 25940 801AE8B8 00000000 */   nop
  jlabel .L801AE8BC
    /* 25944 801AE8BC 88AD020C */  jal        func_800AB620
    /* 25948 801AE8C0 28050424 */   addiu     $a0, $zero, 0x528
    /* 2594C 801AE8C4 ADBA0608 */  j          .L801AEAB4
    /* 25950 801AE8C8 FFFF0424 */   addiu     $a0, $zero, -0x1
  jlabel .L801AE8CC
    /* 25954 801AE8CC 88AD020C */  jal        func_800AB620
    /* 25958 801AE8D0 28050424 */   addiu     $a0, $zero, 0x528
    /* 2595C 801AE8D4 1E80103C */  lui        $s0, %hi(D_801D86EA)
    /* 25960 801AE8D8 EA861026 */  addiu      $s0, $s0, %lo(D_801D86EA)
    /* 25964 801AE8DC 00000386 */  lh         $v1, 0x0($s0)
    /* 25968 801AE8E0 1E80023C */  lui        $v0, %hi(D_801D86F0)
    /* 2596C 801AE8E4 F0864294 */  lhu        $v0, %lo(D_801D86F0)($v0)
    /* 25970 801AE8E8 00000000 */  nop
    /* 25974 801AE8EC 21186200 */  addu       $v1, $v1, $v0
    /* 25978 801AE8F0 80100300 */  sll        $v0, $v1, 2
    /* 2597C 801AE8F4 21104300 */  addu       $v0, $v0, $v1
    /* 25980 801AE8F8 40100200 */  sll        $v0, $v0, 1
    /* 25984 801AE8FC 1E80013C */  lui        $at, %hi(D_801D8B20)
    /* 25988 801AE900 21082200 */  addu       $at, $at, $v0
    /* 2598C 801AE904 208B2490 */  lbu        $a0, %lo(D_801D8B20)($at)
    /* 25990 801AE908 EAD3060C */  jal        func_801B4FA8
    /* 25994 801AE90C 00000000 */   nop
    /* 25998 801AE910 00000586 */  lh         $a1, 0x0($s0)
    /* 2599C 801AE914 1E80033C */  lui        $v1, %hi(D_801D86F0)
    /* 259A0 801AE918 F0866394 */  lhu        $v1, %lo(D_801D86F0)($v1)
    /* 259A4 801AE91C 21200000 */  addu       $a0, $zero, $zero
    /* 259A8 801AE920 1E80013C */  lui        $at, %hi(D_801D86E0)
    /* 259AC 801AE924 E08622A0 */  sb         $v0, %lo(D_801D86E0)($at)
    /* 259B0 801AE928 2128A300 */  addu       $a1, $a1, $v1
    /* 259B4 801AE92C 80180500 */  sll        $v1, $a1, 2
    /* 259B8 801AE930 21186500 */  addu       $v1, $v1, $a1
    /* 259BC 801AE934 40180300 */  sll        $v1, $v1, 1
    /* 259C0 801AE938 1E80013C */  lui        $at, %hi(D_801D8B21)
    /* 259C4 801AE93C 21082300 */  addu       $at, $at, $v1
    /* 259C8 801AE940 218B2690 */  lbu        $a2, %lo(D_801D8B21)($at)
    /* 259CC 801AE944 1E80013C */  lui        $at, %hi(D_801D86E1)
    /* 259D0 801AE948 E18626A0 */  sb         $a2, %lo(D_801D86E1)($at)
    /* 259D4 801AE94C 2DB0060C */  jal        func_801AC0B4
    /* 259D8 801AE950 FF004530 */   andi      $a1, $v0, 0xFF
    /* 259DC 801AE954 1E80033C */  lui        $v1, %hi(D_801DAD84)
    /* 259E0 801AE958 84AD6390 */  lbu        $v1, %lo(D_801DAD84)($v1)
    /* 259E4 801AE95C C1BA0608 */  j          .L801AEB04
    /* 259E8 801AE960 05000224 */   addiu     $v0, $zero, 0x5
  jlabel .L801AE964
    /* 259EC 801AE964 88AD020C */  jal        func_800AB620
    /* 259F0 801AE968 28050424 */   addiu     $a0, $zero, 0x528
    /* 259F4 801AE96C 1E80033C */  lui        $v1, %hi(D_801D86EA)
    /* 259F8 801AE970 EA866384 */  lh         $v1, %lo(D_801D86EA)($v1)
    /* 259FC 801AE974 1E80023C */  lui        $v0, %hi(D_801D86F0)
    /* 25A00 801AE978 F0864294 */  lhu        $v0, %lo(D_801D86F0)($v0)
    /* 25A04 801AE97C 00000000 */  nop
    /* 25A08 801AE980 21186200 */  addu       $v1, $v1, $v0
    /* 25A0C 801AE984 80100300 */  sll        $v0, $v1, 2
    /* 25A10 801AE988 21104300 */  addu       $v0, $v0, $v1
    /* 25A14 801AE98C 40100200 */  sll        $v0, $v0, 1
    /* 25A18 801AE990 1E80013C */  lui        $at, %hi(D_801D8B20)
    /* 25A1C 801AE994 21082200 */  addu       $at, $at, $v0
    /* 25A20 801AE998 208B2490 */  lbu        $a0, %lo(D_801D8B20)($at)
    /* 25A24 801AE99C EAD3060C */  jal        func_801B4FA8
    /* 25A28 801AE9A0 00000000 */   nop
    /* 25A2C 801AE9A4 21200000 */  addu       $a0, $zero, $zero
    /* 25A30 801AE9A8 1E80013C */  lui        $at, %hi(D_801D86E0)
    /* 25A34 801AE9AC E08622A0 */  sb         $v0, %lo(D_801D86E0)($at)
    /* 25A38 801AE9B0 44AE060C */  jal        func_801AB910
    /* 25A3C 801AE9B4 FF004530 */   andi      $a1, $v0, 0xFF
    /* 25A40 801AE9B8 1E80033C */  lui        $v1, %hi(D_801DAD84)
    /* 25A44 801AE9BC 84AD6390 */  lbu        $v1, %lo(D_801DAD84)($v1)
    /* 25A48 801AE9C0 C1BA0608 */  j          .L801AEB04
    /* 25A4C 801AE9C4 05000224 */   addiu     $v0, $zero, 0x5
  jlabel .L801AE9C8
    /* 25A50 801AE9C8 1E80103C */  lui        $s0, %hi(D_801D86EA)
    /* 25A54 801AE9CC EA861026 */  addiu      $s0, $s0, %lo(D_801D86EA)
    /* 25A58 801AE9D0 00000286 */  lh         $v0, 0x0($s0)
    /* 25A5C 801AE9D4 00000000 */  nop
    /* 25A60 801AE9D8 80004010 */  beqz       $v0, .L801AEBDC
    /* 25A64 801AE9DC 00000000 */   nop
    /* 25A68 801AE9E0 88AD020C */  jal        func_800AB620
    /* 25A6C 801AE9E4 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 25A70 801AE9E8 00000296 */  lhu        $v0, 0x0($s0)
    /* 25A74 801AE9EC 8DBA0608 */  j          .L801AEA34
    /* 25A78 801AE9F0 FFFF4224 */   addiu     $v0, $v0, -0x1
  jlabel .L801AE9F4
    /* 25A7C 801AE9F4 1E80103C */  lui        $s0, %hi(D_801D86EA)
    /* 25A80 801AE9F8 EA861026 */  addiu      $s0, $s0, %lo(D_801D86EA)
    /* 25A84 801AE9FC 00000286 */  lh         $v0, 0x0($s0)
    /* 25A88 801AEA00 1E80033C */  lui        $v1, %hi(D_801D86EE)
    /* 25A8C 801AEA04 EE866384 */  lh         $v1, %lo(D_801D86EE)($v1)
    /* 25A90 801AEA08 1E80043C */  lui        $a0, %hi(D_801D86F3)
    /* 25A94 801AEA0C F3868490 */  lbu        $a0, %lo(D_801D86F3)($a0)
    /* 25A98 801AEA10 21104300 */  addu       $v0, $v0, $v1
    /* 25A9C 801AEA14 2A104400 */  slt        $v0, $v0, $a0
    /* 25AA0 801AEA18 71004010 */  beqz       $v0, .L801AEBE0
    /* 25AA4 801AEA1C 21100000 */   addu      $v0, $zero, $zero
    /* 25AA8 801AEA20 88AD020C */  jal        func_800AB620
    /* 25AAC 801AEA24 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 25AB0 801AEA28 00000296 */  lhu        $v0, 0x0($s0)
    /* 25AB4 801AEA2C 00000000 */  nop
    /* 25AB8 801AEA30 01004224 */  addiu      $v0, $v0, 0x1
  .L801AEA34:
    /* 25ABC 801AEA34 FF004430 */  andi       $a0, $v0, 0xFF
    /* 25AC0 801AEA38 000002A6 */  sh         $v0, 0x0($s0)
  .L801AEA3C:
    /* 25AC4 801AEA3C 20BD060C */  jal        func_801AF480
    /* 25AC8 801AEA40 00000000 */   nop
    /* 25ACC 801AEA44 4EBE060C */  jal        func_801AF938
    /* 25AD0 801AEA48 21200000 */   addu      $a0, $zero, $zero
    /* 25AD4 801AEA4C F8BA0608 */  j          .L801AEBE0
    /* 25AD8 801AEA50 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801AEA54
    /* 25ADC 801AEA54 88AD020C */  jal        func_800AB620
    /* 25AE0 801AEA58 28050424 */   addiu     $a0, $zero, 0x528
    /* 25AE4 801AEA5C 02000224 */  addiu      $v0, $zero, 0x2
    /* 25AE8 801AEA60 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 25AEC 801AEA64 50AE22A0 */  sb         $v0, %lo(D_801DAE50)($at)
    /* 25AF0 801AEA68 14000224 */  addiu      $v0, $zero, 0x14
    /* 25AF4 801AEA6C 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 25AF8 801AEA70 F0A220A0 */  sb         $zero, %lo(D_801DA2F0)($at)
    /* 25AFC 801AEA74 0100013C */  lui        $at, (0x10000 >> 16)
    /* 25B00 801AEA78 21080102 */  addu       $at, $s0, $at
    /* 25B04 801AEA7C D8AB22A0 */  sb         $v0, -0x5428($at)
    /* 25B08 801AEA80 F8BA0608 */  j          .L801AEBE0
    /* 25B0C 801AEA84 21100000 */   addu      $v0, $zero, $zero
  .L801AEA88:
    /* 25B10 801AEA88 55006214 */  bne        $v1, $v0, .L801AEBE0
    /* 25B14 801AEA8C 21100000 */   addu      $v0, $zero, $zero
    /* 25B18 801AEA90 88AD020C */  jal        func_800AB620
    /* 25B1C 801AEA94 29050424 */   addiu     $a0, $zero, 0x529
    /* 25B20 801AEA98 1E80033C */  lui        $v1, %hi(D_801DAD84)
    /* 25B24 801AEA9C 84AD6390 */  lbu        $v1, %lo(D_801DAD84)($v1)
    /* 25B28 801AEAA0 04000224 */  addiu      $v0, $zero, 0x4
    /* 25B2C 801AEAA4 0B006210 */  beq        $v1, $v0, .L801AEAD4
    /* 25B30 801AEAA8 05000224 */   addiu     $v0, $zero, 0x5
    /* 25B34 801AEAAC 12006214 */  bne        $v1, $v0, .L801AEAF8
    /* 25B38 801AEAB0 FFFF0424 */   addiu     $a0, $zero, -0x1
  .L801AEAB4:
    /* 25B3C 801AEAB4 1E80023C */  lui        $v0, %hi(D_801D8A51)
    /* 25B40 801AEAB8 518A4290 */  lbu        $v0, %lo(D_801D8A51)($v0)
    /* 25B44 801AEABC 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 25B48 801AEAC0 84AD22A0 */  sb         $v0, %lo(D_801DAD84)($at)
    /* 25B4C 801AEAC4 44AE060C */  jal        func_801AB910
    /* 25B50 801AEAC8 21280000 */   addu      $a1, $zero, $zero
    /* 25B54 801AEACC F8BA0608 */  j          .L801AEBE0
    /* 25B58 801AEAD0 21100000 */   addu      $v0, $zero, $zero
  .L801AEAD4:
    /* 25B5C 801AEAD4 01000224 */  addiu      $v0, $zero, 0x1
    /* 25B60 801AEAD8 1E80013C */  lui        $at, %hi(D_801DAE50)
    /* 25B64 801AEADC 50AE22A0 */  sb         $v0, %lo(D_801DAE50)($at)
    /* 25B68 801AEAE0 14000224 */  addiu      $v0, $zero, 0x14
    /* 25B6C 801AEAE4 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 25B70 801AEAE8 F0A220A0 */  sb         $zero, %lo(D_801DA2F0)($at)
    /* 25B74 801AEAEC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 25B78 801AEAF0 21080102 */  addu       $at, $s0, $at
    /* 25B7C 801AEAF4 D8AB22A0 */  sb         $v0, -0x5428($at)
  .L801AEAF8:
    /* 25B80 801AEAF8 1E80033C */  lui        $v1, %hi(D_801DAD84)
    /* 25B84 801AEAFC 84AD6390 */  lbu        $v1, %lo(D_801DAD84)($v1)
    /* 25B88 801AEB00 04000224 */  addiu      $v0, $zero, 0x4
  .L801AEB04:
    /* 25B8C 801AEB04 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 25B90 801AEB08 84AD22A0 */  sb         $v0, %lo(D_801DAD84)($at)
    /* 25B94 801AEB0C 1E80013C */  lui        $at, %hi(D_801D8A51)
    /* 25B98 801AEB10 518A23A0 */  sb         $v1, %lo(D_801D8A51)($at)
    /* 25B9C 801AEB14 F8BA0608 */  j          .L801AEBE0
    /* 25BA0 801AEB18 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801AEB1C
    /* 25BA4 801AEB1C 1E80013C */  lui        $at, %hi(D_801D8A8F)
    /* 25BA8 801AEB20 8F8A20A0 */  sb         $zero, %lo(D_801D8A8F)($at)
    /* 25BAC 801AEB24 045F00A2 */  sb         $zero, 0x5F04($s0)
    /* 25BB0 801AEB28 1E80033C */  lui        $v1, %hi(D_801DAE50)
    /* 25BB4 801AEB2C 50AE6390 */  lbu        $v1, %lo(D_801DAE50)($v1)
    /* 25BB8 801AEB30 02000224 */  addiu      $v0, $zero, 0x2
    /* 25BBC 801AEB34 06006214 */  bne        $v1, $v0, .L801AEB50
    /* 25BC0 801AEB38 1E000224 */   addiu     $v0, $zero, 0x1E
    /* 25BC4 801AEB3C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 25BC8 801AEB40 21080102 */  addu       $at, $s0, $at
    /* 25BCC 801AEB44 D8AB22A0 */  sb         $v0, -0x5428($at)
    /* 25BD0 801AEB48 F8BA0608 */  j          .L801AEBE0
    /* 25BD4 801AEB4C 21100000 */   addu      $v0, $zero, $zero
  .L801AEB50:
    /* 25BD8 801AEB50 1E80023C */  lui        $v0, %hi(D_801D86F2)
    /* 25BDC 801AEB54 F2864290 */  lbu        $v0, %lo(D_801D86F2)($v0)
    /* 25BE0 801AEB58 00000000 */  nop
    /* 25BE4 801AEB5C 07004014 */  bnez       $v0, .L801AEB7C
    /* 25BE8 801AEB60 29000224 */   addiu     $v0, $zero, 0x29
    /* 25BEC 801AEB64 28000224 */  addiu      $v0, $zero, 0x28
    /* 25BF0 801AEB68 0100013C */  lui        $at, (0x10000 >> 16)
    /* 25BF4 801AEB6C 21080102 */  addu       $at, $s0, $at
    /* 25BF8 801AEB70 D8AB22A0 */  sb         $v0, -0x5428($at)
    /* 25BFC 801AEB74 F8BA0608 */  j          .L801AEBE0
    /* 25C00 801AEB78 21100000 */   addu      $v0, $zero, $zero
  .L801AEB7C:
    /* 25C04 801AEB7C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 25C08 801AEB80 21080102 */  addu       $at, $s0, $at
    /* 25C0C 801AEB84 D8AB22A0 */  sb         $v0, -0x5428($at)
    /* 25C10 801AEB88 F8BA0608 */  j          .L801AEBE0
    /* 25C14 801AEB8C 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801AEB90
    /* 25C18 801AEB90 57C0060C */  jal        func_801B015C
    /* 25C1C 801AEB94 00000000 */   nop
    /* 25C20 801AEB98 11004010 */  beqz       $v0, .L801AEBE0
    /* 25C24 801AEB9C 21100000 */   addu      $v0, $zero, $zero
    /* 25C28 801AEBA0 1E80023C */  lui        $v0, %hi(D_801DAE50)
    /* 25C2C 801AEBA4 50AE4290 */  lbu        $v0, %lo(D_801DAE50)($v0)
    /* 25C30 801AEBA8 F8BA0608 */  j          .L801AEBE0
    /* 25C34 801AEBAC 00000000 */   nop
  jlabel .L801AEBB0
    /* 25C38 801AEBB0 57C0060C */  jal        func_801B015C
    /* 25C3C 801AEBB4 00000000 */   nop
    /* 25C40 801AEBB8 10000424 */  addiu      $a0, $zero, 0x10
    /* 25C44 801AEBBC 37BC010C */  jal        func_8006F0DC
    /* 25C48 801AEBC0 21280000 */   addu      $a1, $zero, $zero
    /* 25C4C 801AEBC4 05004010 */  beqz       $v0, .L801AEBDC
    /* 25C50 801AEBC8 01000224 */   addiu     $v0, $zero, 0x1
    /* 25C54 801AEBCC F8BA0608 */  j          .L801AEBE0
    /* 25C58 801AEBD0 00000000 */   nop
  jlabel .L801AEBD4
    /* 25C5C 801AEBD4 F8BA0608 */  j          .L801AEBE0
    /* 25C60 801AEBD8 04000224 */   addiu     $v0, $zero, 0x4
  jlabel .L801AEBDC
    /* 25C64 801AEBDC 21100000 */  addu       $v0, $zero, $zero
  .L801AEBE0:
    /* 25C68 801AEBE0 2800BF8F */  lw         $ra, 0x28($sp)
    /* 25C6C 801AEBE4 2400B18F */  lw         $s1, 0x24($sp)
    /* 25C70 801AEBE8 2000B08F */  lw         $s0, 0x20($sp)
    /* 25C74 801AEBEC 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 25C78 801AEBF0 0800E003 */  jr         $ra
    /* 25C7C 801AEBF4 00000000 */   nop
endlabel func_801AE294
