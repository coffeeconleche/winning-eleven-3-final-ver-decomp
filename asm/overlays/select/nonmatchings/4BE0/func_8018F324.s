nonmatching func_8018F324, 0x2ACC

glabel func_8018F324
    /* 63AC 8018F324 1180033C */  lui        $v1, %hi(D_8010A322)
    /* 63B0 8018F328 22A36390 */  lbu        $v1, %lo(D_8010A322)($v1)
    /* 63B4 8018F32C 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 63B8 8018F330 5800B4AF */  sw         $s4, 0x58($sp)
    /* 63BC 8018F334 1080143C */  lui        $s4, %hi(D_800FF748)
    /* 63C0 8018F338 48F79426 */  addiu      $s4, $s4, %lo(D_800FF748)
    /* 63C4 8018F33C 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 63C8 8018F340 801F153C */  lui        $s5, (0x1F800294 >> 16)
    /* 63CC 8018F344 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 63D0 8018F348 1180113C */  lui        $s1, %hi(D_8010A5A8)
    /* 63D4 8018F34C A8A53126 */  addiu      $s1, $s1, %lo(D_8010A5A8)
    /* 63D8 8018F350 6000B6AF */  sw         $s6, 0x60($sp)
    /* 63DC 8018F354 1E80163C */  lui        $s6, %hi(D_801D8DA8)
    /* 63E0 8018F358 A88DD626 */  addiu      $s6, $s6, %lo(D_801D8DA8)
    /* 63E4 8018F35C 4800B0AF */  sw         $s0, 0x48($sp)
    /* 63E8 8018F360 1E80103C */  lui        $s0, %hi(D_801D8D90)
    /* 63EC 8018F364 908D1026 */  addiu      $s0, $s0, %lo(D_801D8D90)
    /* 63F0 8018F368 6400B7AF */  sw         $s7, 0x64($sp)
    /* 63F4 8018F36C 20001724 */  addiu      $s7, $zero, 0x20
    /* 63F8 8018F370 6800BFAF */  sw         $ra, 0x68($sp)
    /* 63FC 8018F374 5400B3AF */  sw         $s3, 0x54($sp)
    /* 6400 8018F378 F100622C */  sltiu      $v0, $v1, 0xF1
    /* 6404 8018F37C 900A4010 */  beqz       $v0, .L80191DC0
    /* 6408 8018F380 5000B2AF */   sw        $s2, 0x50($sp)
    /* 640C 8018F384 80100300 */  sll        $v0, $v1, 2
    /* 6410 8018F388 1980013C */  lui        $at, %hi(jtbl_80188FE0)
    /* 6414 8018F38C 21082200 */  addu       $at, $at, $v0
    /* 6418 8018F390 E08F228C */  lw         $v0, %lo(jtbl_80188FE0)($at)
    /* 641C 8018F394 00000000 */  nop
    /* 6420 8018F398 08004000 */  jr         $v0
    /* 6424 8018F39C 00000000 */   nop
  jlabel .L8018F3A0
    /* 6428 8018F3A0 1E80013C */  lui        $at, %hi(D_801D8DBD)
    /* 642C 8018F3A4 BD8D20A0 */  sb         $zero, %lo(D_801D8DBD)($at)
    /* 6430 8018F3A8 453F010C */  jal        func_8004FD14
    /* 6434 8018F3AC 21200000 */   addu      $a0, $zero, $zero
    /* 6438 8018F3B0 7BBC010C */  jal        func_8006F1EC
    /* 643C 8018F3B4 00000000 */   nop
    /* 6440 8018F3B8 01000224 */  addiu      $v0, $zero, 0x1
    /* 6444 8018F3BC 3003A2A2 */  sb         $v0, (0x1F800330 & 0xFFFF)($s5)
    /* 6448 8018F3C0 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 644C 8018F3C4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6450 8018F3C8 21088102 */  addu       $at, $s4, $at
    /* 6454 8018F3CC D6AB22A4 */  sh         $v0, -0x542A($at)
    /* 6458 8018F3D0 1D80013C */  lui        $at, %hi(D_801D5A48)
    /* 645C 8018F3D4 485A20AC */  sw         $zero, %lo(D_801D5A48)($at)
    /* 6460 8018F3D8 E102A392 */  lbu        $v1, (0x1F8002E1 & 0xFFFF)($s5)
    /* 6464 8018F3DC 82000224 */  addiu      $v0, $zero, 0x82
    /* 6468 8018F3E0 A202A2A2 */  sb         $v0, (0x1F8002A2 & 0xFFFF)($s5)
    /* 646C 8018F3E4 06000224 */  addiu      $v0, $zero, 0x6
    /* 6470 8018F3E8 1D80013C */  lui        $at, %hi(D_801D7D44)
    /* 6474 8018F3EC 447D20A0 */  sb         $zero, %lo(D_801D7D44)($at)
    /* 6478 8018F3F0 1D80013C */  lui        $at, %hi(D_801D7D44 + 0x1)
    /* 647C 8018F3F4 457D20A0 */  sb         $zero, %lo(D_801D7D44 + 0x1)($at)
    /* 6480 8018F3F8 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6484 8018F3FC 11006214 */  bne        $v1, $v0, .L8018F444
    /* 6488 8018F400 04000424 */   addiu     $a0, $zero, 0x4
    /* 648C 8018F404 05500524 */  addiu      $a1, $zero, 0x5005
    /* 6490 8018F408 21300000 */  addu       $a2, $zero, $zero
    /* 6494 8018F40C 21380000 */  addu       $a3, $zero, $zero
    /* 6498 8018F410 18000224 */  addiu      $v0, $zero, 0x18
    /* 649C 8018F414 1400A2AF */  sw         $v0, 0x14($sp)
    /* 64A0 8018F418 01000224 */  addiu      $v0, $zero, 0x1
    /* 64A4 8018F41C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 64A8 8018F420 1800A0AF */  sw         $zero, 0x18($sp)
    /* 64AC 8018F424 B873000C */  jal        func_8001CEE0
    /* 64B0 8018F428 1C00A2AF */   sw        $v0, 0x1C($sp)
    /* 64B4 8018F42C 03000224 */  addiu      $v0, $zero, 0x3
    /* 64B8 8018F430 605E82AE */  sw         $v0, 0x5E60($s4)
    /* 64BC 8018F434 1E80013C */  lui        $at, %hi(D_801D8DFC)
    /* 64C0 8018F438 FC8D20A0 */  sb         $zero, %lo(D_801D8DFC)($at)
    /* 64C4 8018F43C 1E3D0608 */  j          .L8018F478
    /* 64C8 8018F440 05000424 */   addiu     $a0, $zero, 0x5
  .L8018F444:
    /* 64CC 8018F444 06500524 */  addiu      $a1, $zero, 0x5006
    /* 64D0 8018F448 21300000 */  addu       $a2, $zero, $zero
    /* 64D4 8018F44C 21380000 */  addu       $a3, $zero, $zero
    /* 64D8 8018F450 18000224 */  addiu      $v0, $zero, 0x18
    /* 64DC 8018F454 1400A2AF */  sw         $v0, 0x14($sp)
    /* 64E0 8018F458 01000224 */  addiu      $v0, $zero, 0x1
    /* 64E4 8018F45C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 64E8 8018F460 1800A0AF */  sw         $zero, 0x18($sp)
    /* 64EC 8018F464 B873000C */  jal        func_8001CEE0
    /* 64F0 8018F468 1C00A2AF */   sw        $v0, 0x1C($sp)
    /* 64F4 8018F46C 03000224 */  addiu      $v0, $zero, 0x3
    /* 64F8 8018F470 605E82AE */  sw         $v0, 0x5E60($s4)
    /* 64FC 8018F474 05000424 */  addiu      $a0, $zero, 0x5
  .L8018F478:
    /* 6500 8018F478 0C300524 */  addiu      $a1, $zero, 0x300C
    /* 6504 8018F47C 21300000 */  addu       $a2, $zero, $zero
    /* 6508 8018F480 21380000 */  addu       $a3, $zero, $zero
    /* 650C 8018F484 18000224 */  addiu      $v0, $zero, 0x18
    /* 6510 8018F488 01001024 */  addiu      $s0, $zero, 0x1
    /* 6514 8018F48C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 6518 8018F490 1400A2AF */  sw         $v0, 0x14($sp)
    /* 651C 8018F494 1800A0AF */  sw         $zero, 0x18($sp)
    /* 6520 8018F498 B873000C */  jal        func_8001CEE0
    /* 6524 8018F49C 1C00B0AF */   sw        $s0, 0x1C($sp)
    /* 6528 8018F4A0 01000424 */  addiu      $a0, $zero, 0x1
    /* 652C 8018F4A4 01500524 */  addiu      $a1, $zero, 0x5001
    /* 6530 8018F4A8 21300000 */  addu       $a2, $zero, $zero
    /* 6534 8018F4AC 21380000 */  addu       $a3, $zero, $zero
    /* 6538 8018F4B0 03001124 */  addiu      $s1, $zero, 0x3
    /* 653C 8018F4B4 1C001224 */  addiu      $s2, $zero, 0x1C
    /* 6540 8018F4B8 885E91AE */  sw         $s1, 0x5E88($s4)
    /* 6544 8018F4BC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 6548 8018F4C0 1400B2AF */  sw         $s2, 0x14($sp)
    /* 654C 8018F4C4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 6550 8018F4C8 B873000C */  jal        func_8001CEE0
    /* 6554 8018F4CC 1C00B0AF */   sw        $s0, 0x1C($sp)
    /* 6558 8018F4D0 03000424 */  addiu      $a0, $zero, 0x3
    /* 655C 8018F4D4 04500524 */  addiu      $a1, $zero, 0x5004
    /* 6560 8018F4D8 21300000 */  addu       $a2, $zero, $zero
    /* 6564 8018F4DC 21380000 */  addu       $a3, $zero, $zero
    /* 6568 8018F4E0 17000224 */  addiu      $v0, $zero, 0x17
    /* 656C 8018F4E4 E85D91AE */  sw         $s1, 0x5DE8($s4)
    /* 6570 8018F4E8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 6574 8018F4EC 1400A2AF */  sw         $v0, 0x14($sp)
    /* 6578 8018F4F0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 657C 8018F4F4 B873000C */  jal        func_8001CEE0
    /* 6580 8018F4F8 1C00B0AF */   sw        $s0, 0x1C($sp)
    /* 6584 8018F4FC 06000424 */  addiu      $a0, $zero, 0x6
    /* 6588 8018F500 02500524 */  addiu      $a1, $zero, 0x5002
    /* 658C 8018F504 21300000 */  addu       $a2, $zero, $zero
    /* 6590 8018F508 21380000 */  addu       $a3, $zero, $zero
    /* 6594 8018F50C 06001324 */  addiu      $s3, $zero, 0x6
    /* 6598 8018F510 385E91AE */  sw         $s1, 0x5E38($s4)
    /* 659C 8018F514 1000B0AF */  sw         $s0, 0x10($sp)
    /* 65A0 8018F518 1400B3AF */  sw         $s3, 0x14($sp)
    /* 65A4 8018F51C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 65A8 8018F520 B873000C */  jal        func_8001CEE0
    /* 65AC 8018F524 1C00B0AF */   sw        $s0, 0x1C($sp)
    /* 65B0 8018F528 0F000424 */  addiu      $a0, $zero, 0xF
    /* 65B4 8018F52C 03500524 */  addiu      $a1, $zero, 0x5003
    /* 65B8 8018F530 21300000 */  addu       $a2, $zero, $zero
    /* 65BC 8018F534 21380000 */  addu       $a3, $zero, $zero
    /* 65C0 8018F538 1B000224 */  addiu      $v0, $zero, 0x1B
    /* 65C4 8018F53C B05E91AE */  sw         $s1, 0x5EB0($s4)
    /* 65C8 8018F540 1000A0AF */  sw         $zero, 0x10($sp)
    /* 65CC 8018F544 1400A2AF */  sw         $v0, 0x14($sp)
    /* 65D0 8018F548 1800A0AF */  sw         $zero, 0x18($sp)
    /* 65D4 8018F54C B873000C */  jal        func_8001CEE0
    /* 65D8 8018F550 1C00B0AF */   sw        $s0, 0x1C($sp)
    /* 65DC 8018F554 10000424 */  addiu      $a0, $zero, 0x10
    /* 65E0 8018F558 00500524 */  addiu      $a1, $zero, 0x5000
    /* 65E4 8018F55C 21300000 */  addu       $a2, $zero, $zero
    /* 65E8 8018F560 21380000 */  addu       $a3, $zero, $zero
    /* 65EC 8018F564 186091AE */  sw         $s1, 0x6018($s4)
    /* 65F0 8018F568 1000A0AF */  sw         $zero, 0x10($sp)
    /* 65F4 8018F56C 1400B2AF */  sw         $s2, 0x14($sp)
    /* 65F8 8018F570 1800A0AF */  sw         $zero, 0x18($sp)
    /* 65FC 8018F574 B873000C */  jal        func_8001CEE0
    /* 6600 8018F578 1C00B0AF */   sw        $s0, 0x1C($sp)
    /* 6604 8018F57C 35000424 */  addiu      $a0, $zero, 0x35
    /* 6608 8018F580 09500524 */  addiu      $a1, $zero, 0x5009
    /* 660C 8018F584 21300000 */  addu       $a2, $zero, $zero
    /* 6610 8018F588 21380000 */  addu       $a3, $zero, $zero
    /* 6614 8018F58C 09000224 */  addiu      $v0, $zero, 0x9
    /* 6618 8018F590 406091AE */  sw         $s1, 0x6040($s4)
    /* 661C 8018F594 1400A2AF */  sw         $v0, 0x14($sp)
    /* 6620 8018F598 BA000224 */  addiu      $v0, $zero, 0xBA
    /* 6624 8018F59C 1800A2AF */  sw         $v0, 0x18($sp)
    /* 6628 8018F5A0 00100224 */  addiu      $v0, $zero, 0x1000
    /* 662C 8018F5A4 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 6630 8018F5A8 2000A2AF */  sw         $v0, 0x20($sp)
    /* 6634 8018F5AC 80000224 */  addiu      $v0, $zero, 0x80
    /* 6638 8018F5B0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 663C 8018F5B4 2400A0AF */  sw         $zero, 0x24($sp)
    /* 6640 8018F5B8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 6644 8018F5BC 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 6648 8018F5C0 3000A2AF */  sw         $v0, 0x30($sp)
    /* 664C 8018F5C4 3400A2AF */  sw         $v0, 0x34($sp)
    /* 6650 8018F5C8 3800A0AF */  sw         $zero, 0x38($sp)
    /* 6654 8018F5CC 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 6658 8018F5D0 ED4F060C */  jal        func_80193FB4
    /* 665C 8018F5D4 4000B0AF */   sw        $s0, 0x40($sp)
    /* 6660 8018F5D8 21200000 */  addu       $a0, $zero, $zero
    /* 6664 8018F5DC 21280000 */  addu       $a1, $zero, $zero
    /* 6668 8018F5E0 2130C002 */  addu       $a2, $s6, $zero
    /* 666C 8018F5E4 21380000 */  addu       $a3, $zero, $zero
    /* 6670 8018F5E8 57FF0224 */  addiu      $v0, $zero, -0xA9
    /* 6674 8018F5EC 0000C2A6 */  sh         $v0, 0x0($s6)
    /* 6678 8018F5F0 33000224 */  addiu      $v0, $zero, 0x33
    /* 667C 8018F5F4 0200C2A6 */  sh         $v0, 0x2($s6)
    /* 6680 8018F5F8 54010224 */  addiu      $v0, $zero, 0x154
    /* 6684 8018F5FC 0400C2A6 */  sh         $v0, 0x4($s6)
    /* 6688 8018F600 2C000224 */  addiu      $v0, $zero, 0x2C
    /* 668C 8018F604 0600C2A6 */  sh         $v0, 0x6($s6)
    /* 6690 8018F608 80000224 */  addiu      $v0, $zero, 0x80
    /* 6694 8018F60C 04001124 */  addiu      $s1, $zero, 0x4
    /* 6698 8018F610 0800C0A2 */  sb         $zero, 0x8($s6)
    /* 669C 8018F614 0900C0A2 */  sb         $zero, 0x9($s6)
    /* 66A0 8018F618 0A00C2A2 */  sb         $v0, 0xA($s6)
    /* 66A4 8018F61C 1000B1AF */  sw         $s1, 0x10($sp)
    /* 66A8 8018F620 3B50060C */  jal        func_801940EC
    /* 66AC 8018F624 1400B0AF */   sw        $s0, 0x14($sp)
    /* 66B0 8018F628 01000424 */  addiu      $a0, $zero, 0x1
    /* 66B4 8018F62C 21280000 */  addu       $a1, $zero, $zero
    /* 66B8 8018F630 2130C002 */  addu       $a2, $s6, $zero
    /* 66BC 8018F634 21380000 */  addu       $a3, $zero, $zero
    /* 66C0 8018F638 15000224 */  addiu      $v0, $zero, 0x15
    /* 66C4 8018F63C 0000C2A4 */  sh         $v0, 0x0($a2)
    /* 66C8 8018F640 BBFF0224 */  addiu      $v0, $zero, -0x45
    /* 66CC 8018F644 0200C2A4 */  sh         $v0, 0x2($a2)
    /* 66D0 8018F648 97000224 */  addiu      $v0, $zero, 0x97
    /* 66D4 8018F64C 0400C2A4 */  sh         $v0, 0x4($a2)
    /* 66D8 8018F650 5D000224 */  addiu      $v0, $zero, 0x5D
    /* 66DC 8018F654 0600C2A4 */  sh         $v0, 0x6($a2)
    /* 66E0 8018F658 1000B1AF */  sw         $s1, 0x10($sp)
    /* 66E4 8018F65C 3B50060C */  jal        func_801940EC
    /* 66E8 8018F660 1400B0AF */   sw        $s0, 0x14($sp)
    /* 66EC 8018F664 0100013C */  lui        $at, (0x10000 >> 16)
    /* 66F0 8018F668 21088102 */  addu       $at, $s4, $at
    /* 66F4 8018F66C 1E8F2390 */  lbu        $v1, -0x70E2($at)
    /* 66F8 8018F670 30000224 */  addiu      $v0, $zero, 0x30
    /* 66FC 8018F674 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6700 8018F678 21088102 */  addu       $at, $s4, $at
    /* 6704 8018F67C 20AC20A0 */  sb         $zero, -0x53E0($at)
    /* 6708 8018F680 0100013C */  lui        $at, (0x10000 >> 16)
    /* 670C 8018F684 21088102 */  addu       $at, $s4, $at
    /* 6710 8018F688 21AC20A0 */  sb         $zero, -0x53DF($at)
    /* 6714 8018F68C 9402A2A6 */  sh         $v0, (0x1F800294 & 0xFFFF)($s5)
    /* 6718 8018F690 1D80013C */  lui        $at, %hi(D_801D7D56)
    /* 671C 8018F694 567D23A4 */  sh         $v1, %lo(D_801D7D56)($at)
    /* 6720 8018F698 6549060C */  jal        func_80192594
    /* 6724 8018F69C 21200000 */   addu      $a0, $zero, $zero
    /* 6728 8018F6A0 6D4A060C */  jal        func_801929B4
    /* 672C 8018F6A4 21200000 */   addu      $a0, $zero, $zero
    /* 6730 8018F6A8 02000224 */  addiu      $v0, $zero, 0x2
    /* 6734 8018F6AC 1D80013C */  lui        $at, %hi(D_801D7D40)
    /* 6738 8018F6B0 407D22AC */  sw         $v0, %lo(D_801D7D40)($at)
    /* 673C 8018F6B4 35470608 */  j          .L80191CD4
    /* 6740 8018F6B8 D0000224 */   addiu     $v0, $zero, 0xD0
  jlabel .L8018F6BC
    /* 6744 8018F6BC 9402A296 */  lhu        $v0, 0x294($s5)
    /* 6748 8018F6C0 00000000 */  nop
    /* 674C 8018F6C4 B0054014 */  bnez       $v0, .L80190D88
    /* 6750 8018F6C8 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 6754 8018F6CC 30020224 */  addiu      $v0, $zero, 0x230
    /* 6758 8018F6D0 1D80013C */  lui        $at, %hi(D_801D7D54)
    /* 675C 8018F6D4 547D20A0 */  sb         $zero, %lo(D_801D7D54)($at)
    /* 6760 8018F6D8 1D80013C */  lui        $at, %hi(D_801D7D44 + 0x1)
    /* 6764 8018F6DC 457D20A0 */  sb         $zero, %lo(D_801D7D44 + 0x1)($at)
  .L8018F6E0:
    /* 6768 8018F6E0 1E80013C */  lui        $at, %hi(D_801DA070)
    /* 676C 8018F6E4 21082200 */  addu       $at, $at, $v0
    /* 6770 8018F6E8 70A020A0 */  sb         $zero, %lo(D_801DA070)($at)
    /* 6774 8018F6EC D8FF4224 */  addiu      $v0, $v0, -0x28
    /* 6778 8018F6F0 FBFF4104 */  bgez       $v0, .L8018F6E0
    /* 677C 8018F6F4 00000000 */   nop
    /* 6780 8018F6F8 01000224 */  addiu      $v0, $zero, 0x1
    /* 6784 8018F6FC EC5D82A2 */  sb         $v0, 0x5DEC($s4)
    /* 6788 8018F700 A84F060C */  jal        func_80193EA0
    /* 678C 8018F704 6C6580A2 */   sb        $zero, 0x656C($s4)
    /* 6790 8018F708 124A060C */  jal        func_80192848
    /* 6794 8018F70C 21200000 */   addu      $a0, $zero, $zero
    /* 6798 8018F710 1E80013C */  lui        $at, %hi(D_801D8C68)
    /* 679C 8018F714 688C22AC */  sw         $v0, %lo(D_801D8C68)($at)
    /* 67A0 8018F718 28004014 */  bnez       $v0, .L8018F7BC
    /* 67A4 8018F71C 21800000 */   addu      $s0, $zero, $zero
    /* 67A8 8018F720 6549060C */  jal        func_80192594
    /* 67AC 8018F724 21200000 */   addu      $a0, $zero, $zero
  .L8018F728:
    /* 67B0 8018F728 C849060C */  jal        func_80192720
    /* 67B4 8018F72C 21200000 */   addu      $a0, $zero, $zero
    /* 67B8 8018F730 21184000 */  addu       $v1, $v0, $zero
    /* 67BC 8018F734 1D80013C */  lui        $at, %hi(D_801D7D4C)
    /* 67C0 8018F738 4C7D23AC */  sw         $v1, %lo(D_801D7D4C)($at)
    /* 67C4 8018F73C FAFF6010 */  beqz       $v1, .L8018F728
    /* 67C8 8018F740 21206000 */   addu      $a0, $v1, $zero
    /* 67CC 8018F744 FEFF0224 */  addiu      $v0, $zero, -0x2
    /* 67D0 8018F748 18008210 */  beq        $a0, $v0, .L8018F7AC
    /* 67D4 8018F74C FFFF8228 */   slti      $v0, $a0, -0x1
    /* 67D8 8018F750 05004010 */  beqz       $v0, .L8018F768
    /* 67DC 8018F754 FDFF0224 */   addiu     $v0, $zero, -0x3
    /* 67E0 8018F758 0A008210 */  beq        $a0, $v0, .L8018F784
    /* 67E4 8018F75C 01000224 */   addiu     $v0, $zero, 0x1
    /* 67E8 8018F760 70470608 */  j          .L80191DC0
    /* 67EC 8018F764 00000000 */   nop
  .L8018F768:
    /* 67F0 8018F768 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 67F4 8018F76C 11006210 */  beq        $v1, $v0, .L8018F7B4
    /* 67F8 8018F770 01000224 */   addiu     $v0, $zero, 0x1
    /* 67FC 8018F774 11006210 */  beq        $v1, $v0, .L8018F7BC
    /* 6800 8018F778 21800000 */   addu      $s0, $zero, $zero
    /* 6804 8018F77C 70470608 */  j          .L80191DC0
    /* 6808 8018F780 00000000 */   nop
  .L8018F784:
    /* 680C 8018F784 1E80033C */  lui        $v1, %hi(D_801D8DFC)
    /* 6810 8018F788 FC8D6390 */  lbu        $v1, %lo(D_801D8DFC)($v1)
    /* 6814 8018F78C 1D80013C */  lui        $at, %hi(D_801D7D54)
    /* 6818 8018F790 547D22A0 */  sb         $v0, %lo(D_801D7D54)($at)
    /* 681C 8018F794 09006014 */  bnez       $v1, .L8018F7BC
    /* 6820 8018F798 21800000 */   addu      $s0, $zero, $zero
    /* 6824 8018F79C 6549060C */  jal        func_80192594
    /* 6828 8018F7A0 21200000 */   addu      $a0, $zero, $zero
    /* 682C 8018F7A4 B53E0608 */  j          .L8018FAD4
    /* 6830 8018F7A8 50000224 */   addiu     $v0, $zero, 0x50
  .L8018F7AC:
    /* 6834 8018F7AC B53E0608 */  j          .L8018FAD4
    /* 6838 8018F7B0 60000224 */   addiu     $v0, $zero, 0x60
  .L8018F7B4:
    /* 683C 8018F7B4 B53E0608 */  j          .L8018FAD4
    /* 6840 8018F7B8 90000224 */   addiu     $v0, $zero, 0x90
  .L8018F7BC:
    /* 6844 8018F7BC 00011624 */  addiu      $s6, $zero, 0x100
    /* 6848 8018F7C0 21880000 */  addu       $s1, $zero, $zero
    /* 684C 8018F7C4 30001324 */  addiu      $s3, $zero, 0x30
    /* 6850 8018F7C8 1D80013C */  lui        $at, %hi(D_801D7D50)
    /* 6854 8018F7CC 507D20AC */  sw         $zero, %lo(D_801D7D50)($at)
    /* 6858 8018F7D0 1D80013C */  lui        $at, %hi(D_801D7D58)
    /* 685C 8018F7D4 587D20A0 */  sb         $zero, %lo(D_801D7D58)($at)
  .L8018F7D8:
    /* 6860 8018F7D8 1D80043C */  lui        $a0, %hi(D_801D1B11)
    /* 6864 8018F7DC 111B8424 */  addiu      $a0, $a0, %lo(D_801D1B11)
    /* 6868 8018F7E0 000093A0 */  sb         $s3, 0x0($a0)
    /* 686C 8018F7E4 1E80053C */  lui        $a1, %hi(D_801DA2C8)
    /* 6870 8018F7E8 C8A2A524 */  addiu      $a1, $a1, %lo(D_801DA2C8)
    /* 6874 8018F7EC B2B3020C */  jal        func_800ACEC8
    /* 6878 8018F7F0 EFFF8424 */   addiu     $a0, $a0, -0x11
    /* 687C 8018F7F4 6F004010 */  beqz       $v0, .L8018F9B4
    /* 6880 8018F7F8 00000000 */   nop
    /* 6884 8018F7FC 6D4A060C */  jal        func_801929B4
    /* 6888 8018F800 21200000 */   addu      $a0, $zero, $zero
    /* 688C 8018F804 21200000 */  addu       $a0, $zero, $zero
  .L8018F808:
    /* 6890 8018F808 21280000 */  addu       $a1, $zero, $zero
    /* 6894 8018F80C 1D80073C */  lui        $a3, %hi(D_801D1AFC)
    /* 6898 8018F810 FC1AE78C */  lw         $a3, %lo(D_801D1AFC)($a3)
    /* 689C 8018F814 1D80063C */  lui        $a2, %hi(D_801D1B00)
    /* 68A0 8018F818 001BC624 */  addiu      $a2, $a2, %lo(D_801D1B00)
    /* 68A4 8018F81C 1000B6AF */  sw         $s6, 0x10($sp)
    /* 68A8 8018F820 8C4A060C */  jal        func_80192A30
    /* 68AC 8018F824 1400A0AF */   sw        $zero, 0x14($sp)
    /* 68B0 8018F828 21184000 */  addu       $v1, $v0, $zero
    /* 68B4 8018F82C 1D80013C */  lui        $at, %hi(D_801D7D4C)
    /* 68B8 8018F830 4C7D23AC */  sw         $v1, %lo(D_801D7D4C)($at)
    /* 68BC 8018F834 F4FF6010 */  beqz       $v1, .L8018F808
    /* 68C0 8018F838 21200000 */   addu      $a0, $zero, $zero
    /* 68C4 8018F83C 21206000 */  addu       $a0, $v1, $zero
    /* 68C8 8018F840 FEFF0224 */  addiu      $v0, $zero, -0x2
    /* 68CC 8018F844 12008210 */  beq        $a0, $v0, .L8018F890
    /* 68D0 8018F848 FFFF8228 */   slti      $v0, $a0, -0x1
    /* 68D4 8018F84C 05004010 */  beqz       $v0, .L8018F864
    /* 68D8 8018F850 FCFF0224 */   addiu     $v0, $zero, -0x4
    /* 68DC 8018F854 9F008210 */  beq        $a0, $v0, .L8018FAD4
    /* 68E0 8018F858 90000224 */   addiu     $v0, $zero, 0x90
    /* 68E4 8018F85C 263E0608 */  j          .L8018F898
    /* 68E8 8018F860 00000000 */   nop
  .L8018F864:
    /* 68EC 8018F864 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 68F0 8018F868 07006210 */  beq        $v1, $v0, .L8018F888
    /* 68F4 8018F86C 01000224 */   addiu     $v0, $zero, 0x1
    /* 68F8 8018F870 09006214 */  bne        $v1, $v0, .L8018F898
    /* 68FC 8018F874 00000000 */   nop
    /* 6900 8018F878 CD48060C */  jal        func_80192334
    /* 6904 8018F87C 21200002 */   addu      $a0, $s0, $zero
    /* 6908 8018F880 263E0608 */  j          .L8018F898
    /* 690C 8018F884 00000000 */   nop
  .L8018F888:
    /* 6910 8018F888 B53E0608 */  j          .L8018FAD4
    /* 6914 8018F88C 90000224 */   addiu     $v0, $zero, 0x90
  .L8018F890:
    /* 6918 8018F890 B53E0608 */  j          .L8018FAD4
    /* 691C 8018F894 60000224 */   addiu     $v0, $zero, 0x60
  .L8018F898:
    /* 6920 8018F898 0174000C */  jal        func_8001D004
    /* 6924 8018F89C 03500424 */   addiu     $a0, $zero, 0x5003
    /* 6928 8018F8A0 21304000 */  addu       $a2, $v0, $zero
    /* 692C 8018F8A4 1D80013C */  lui        $at, %hi(D_801D7D60)
    /* 6930 8018F8A8 21083000 */  addu       $at, $at, $s0
    /* 6934 8018F8AC 607D2390 */  lbu        $v1, %lo(D_801D7D60)($at)
    /* 6938 8018F8B0 02000224 */  addiu      $v0, $zero, 0x2
    /* 693C 8018F8B4 0C006214 */  bne        $v1, $v0, .L8018F8E8
    /* 6940 8018F8B8 21182602 */   addu      $v1, $s1, $a2
    /* 6944 8018F8BC 1D80013C */  lui        $at, %hi(D_801D7D58)
    /* 6948 8018F8C0 21083300 */  addu       $at, $at, $s3
    /* 694C 8018F8C4 587D2290 */  lbu        $v0, %lo(D_801D7D58)($at)
    /* 6950 8018F8C8 21202602 */  addu       $a0, $s1, $a2
    /* 6954 8018F8CC 07004230 */  andi       $v0, $v0, 0x7
    /* 6958 8018F8D0 40180200 */  sll        $v1, $v0, 1
    /* 695C 8018F8D4 21186200 */  addu       $v1, $v1, $v0
    /* 6960 8018F8D8 80180300 */  sll        $v1, $v1, 2
    /* 6964 8018F8DC 23186200 */  subu       $v1, $v1, $v0
    /* 6968 8018F8E0 3C3E0608 */  j          .L8018F8F0
    /* 696C 8018F8E4 040083A0 */   sb        $v1, 0x4($a0)
  .L8018F8E8:
    /* 6970 8018F8E8 42000224 */  addiu      $v0, $zero, 0x42
    /* 6974 8018F8EC 040062A0 */  sb         $v0, 0x4($v1)
  .L8018F8F0:
    /* 6978 8018F8F0 1D80013C */  lui        $at, %hi(D_801D7D40)
    /* 697C 8018F8F4 21083300 */  addu       $at, $at, $s3
    /* 6980 8018F8F8 407D3290 */  lbu        $s2, %lo(D_801D7D40)($at)
    /* 6984 8018F8FC E102A292 */  lbu        $v0, 0x2E1($s5)
    /* 6988 8018F900 01000324 */  addiu      $v1, $zero, 0x1
    /* 698C 8018F904 1D80013C */  lui        $at, %hi(D_801D7D50)
    /* 6990 8018F908 507D23AC */  sw         $v1, %lo(D_801D7D50)($at)
    /* 6994 8018F90C FF004330 */  andi       $v1, $v0, 0xFF
    /* 6998 8018F910 06000224 */  addiu      $v0, $zero, 0x6
    /* 699C 8018F914 08006210 */  beq        $v1, $v0, .L8018F938
    /* 69A0 8018F918 02500424 */   addiu     $a0, $zero, 0x5002
    /* 69A4 8018F91C 1D80013C */  lui        $at, %hi(D_801D7D60)
    /* 69A8 8018F920 21083000 */  addu       $at, $at, $s0
    /* 69AC 8018F924 607D2290 */  lbu        $v0, %lo(D_801D7D60)($at)
    /* 69B0 8018F928 00000000 */  nop
    /* 69B4 8018F92C 16006214 */  bne        $v1, $v0, .L8018F988
    /* 69B8 8018F930 21102602 */   addu      $v0, $s1, $a2
    /* 69BC 8018F934 02500424 */  addiu      $a0, $zero, 0x5002
  .L8018F938:
    /* 69C0 8018F938 21182602 */  addu       $v1, $s1, $a2
    /* 69C4 8018F93C C6000224 */  addiu      $v0, $zero, 0xC6
    /* 69C8 8018F940 0174000C */  jal        func_8001D004
    /* 69CC 8018F944 0A0062A0 */   sb        $v0, 0xA($v1)
    /* 69D0 8018F948 21205100 */  addu       $a0, $v0, $s1
    /* 69D4 8018F94C 21284002 */  addu       $a1, $s2, $zero
    /* 69D8 8018F950 7D86000C */  jal        func_800219F4
    /* 69DC 8018F954 21300000 */   addu      $a2, $zero, $zero
    /* 69E0 8018F958 01000224 */  addiu      $v0, $zero, 0x1
    /* 69E4 8018F95C 1D80013C */  lui        $at, %hi(D_801D7DA0)
    /* 69E8 8018F960 21083000 */  addu       $at, $at, $s0
    /* 69EC 8018F964 A07D22A0 */  sb         $v0, %lo(D_801D7DA0)($at)
    /* 69F0 8018F968 1D80023C */  lui        $v0, %hi(D_801D7D58)
    /* 69F4 8018F96C 587D4290 */  lbu        $v0, %lo(D_801D7D58)($v0)
    /* 69F8 8018F970 00000000 */  nop
    /* 69FC 8018F974 01004224 */  addiu      $v0, $v0, 0x1
    /* 6A00 8018F978 1D80013C */  lui        $at, %hi(D_801D7D58)
    /* 6A04 8018F97C 587D22A0 */  sb         $v0, %lo(D_801D7D58)($at)
    /* 6A08 8018F980 6E3E0608 */  j          .L8018F9B8
    /* 6A0C 8018F984 0C003126 */   addiu     $s1, $s1, 0xC
  .L8018F988:
    /* 6A10 8018F988 A8000324 */  addiu      $v1, $zero, 0xA8
    /* 6A14 8018F98C 0174000C */  jal        func_8001D004
    /* 6A18 8018F990 0A0043A0 */   sb        $v1, 0xA($v0)
    /* 6A1C 8018F994 21205100 */  addu       $a0, $v0, $s1
    /* 6A20 8018F998 21284002 */  addu       $a1, $s2, $zero
    /* 6A24 8018F99C 7D86000C */  jal        func_800219F4
    /* 6A28 8018F9A0 21300000 */   addu      $a2, $zero, $zero
    /* 6A2C 8018F9A4 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 6A30 8018F9A8 1D80013C */  lui        $at, %hi(D_801D7DA0)
    /* 6A34 8018F9AC 21083000 */  addu       $at, $at, $s0
    /* 6A38 8018F9B0 A07D22A0 */  sb         $v0, %lo(D_801D7DA0)($at)
  .L8018F9B4:
    /* 6A3C 8018F9B4 0C003126 */  addiu      $s1, $s1, 0xC
  .L8018F9B8:
    /* 6A40 8018F9B8 01001026 */  addiu      $s0, $s0, 0x1
    /* 6A44 8018F9BC 0500022A */  slti       $v0, $s0, 0x5
    /* 6A48 8018F9C0 85FF4014 */  bnez       $v0, .L8018F7D8
    /* 6A4C 8018F9C4 01007326 */   addiu     $s3, $s3, 0x1
    /* 6A50 8018F9C8 1E80023C */  lui        $v0, %hi(D_801D8DFC)
    /* 6A54 8018F9CC FC8D4290 */  lbu        $v0, %lo(D_801D8DFC)($v0)
    /* 6A58 8018F9D0 00000000 */  nop
    /* 6A5C 8018F9D4 2A004014 */  bnez       $v0, .L8018FA80
    /* 6A60 8018F9D8 00000000 */   nop
    /* 6A64 8018F9DC 1D80023C */  lui        $v0, %hi(D_801D7D58)
    /* 6A68 8018F9E0 587D4290 */  lbu        $v0, %lo(D_801D7D58)($v0)
    /* 6A6C 8018F9E4 00000000 */  nop
    /* 6A70 8018F9E8 03004014 */  bnez       $v0, .L8018F9F8
    /* 6A74 8018F9EC 21800000 */   addu      $s0, $zero, $zero
    /* 6A78 8018F9F0 B53E0608 */  j          .L8018FAD4
    /* 6A7C 8018F9F4 50000224 */   addiu     $v0, $zero, 0x50
  .L8018F9F8:
    /* 6A80 8018F9F8 6666053C */  lui        $a1, (0x66666667 >> 16)
    /* 6A84 8018F9FC 6766A534 */  ori        $a1, $a1, (0x66666667 & 0xFFFF)
    /* 6A88 8018FA00 01000624 */  addiu      $a2, $zero, 0x1
  .L8018FA04:
    /* 6A8C 8018FA04 1D80023C */  lui        $v0, %hi(D_801D7D56)
    /* 6A90 8018FA08 567D4294 */  lhu        $v0, %lo(D_801D7D56)($v0)
    /* 6A94 8018FA0C 00000000 */  nop
    /* 6A98 8018FA10 00140200 */  sll        $v0, $v0, 16
    /* 6A9C 8018FA14 03240200 */  sra        $a0, $v0, 16
    /* 6AA0 8018FA18 18008500 */  mult       $a0, $a1
    /* 6AA4 8018FA1C C3170200 */  sra        $v0, $v0, 31
    /* 6AA8 8018FA20 10480000 */  mfhi       $t1
    /* 6AAC 8018FA24 43180900 */  sra        $v1, $t1, 1
    /* 6AB0 8018FA28 23186200 */  subu       $v1, $v1, $v0
    /* 6AB4 8018FA2C 80100300 */  sll        $v0, $v1, 2
    /* 6AB8 8018FA30 21104300 */  addu       $v0, $v0, $v1
    /* 6ABC 8018FA34 23208200 */  subu       $a0, $a0, $v0
    /* 6AC0 8018FA38 00140400 */  sll        $v0, $a0, 16
    /* 6AC4 8018FA3C 03140200 */  sra        $v0, $v0, 16
    /* 6AC8 8018FA40 1D80013C */  lui        $at, %hi(D_801D7D56)
    /* 6ACC 8018FA44 567D24A4 */  sh         $a0, %lo(D_801D7D56)($at)
    /* 6AD0 8018FA48 1D80013C */  lui        $at, %hi(D_801D7DA0)
    /* 6AD4 8018FA4C 21082200 */  addu       $at, $at, $v0
    /* 6AD8 8018FA50 A07D2290 */  lbu        $v0, %lo(D_801D7DA0)($at)
    /* 6ADC 8018FA54 00000000 */  nop
    /* 6AE0 8018FA58 13004610 */  beq        $v0, $a2, .L8018FAA8
    /* 6AE4 8018FA5C 01008224 */   addiu     $v0, $a0, 0x1
    /* 6AE8 8018FA60 1D80013C */  lui        $at, %hi(D_801D7D56)
    /* 6AEC 8018FA64 567D22A4 */  sh         $v0, %lo(D_801D7D56)($at)
    /* 6AF0 8018FA68 01001026 */  addiu      $s0, $s0, 0x1
    /* 6AF4 8018FA6C 0500022A */  slti       $v0, $s0, 0x5
    /* 6AF8 8018FA70 0D004010 */  beqz       $v0, .L8018FAA8
    /* 6AFC 8018FA74 00000000 */   nop
    /* 6B00 8018FA78 813E0608 */  j          .L8018FA04
    /* 6B04 8018FA7C 00000000 */   nop
  .L8018FA80:
    /* 6B08 8018FA80 1D80023C */  lui        $v0, %hi(D_801D7D50)
    /* 6B0C 8018FA84 507D428C */  lw         $v0, %lo(D_801D7D50)($v0)
    /* 6B10 8018FA88 00000000 */  nop
    /* 6B14 8018FA8C 06004014 */  bnez       $v0, .L8018FAA8
    /* 6B18 8018FA90 0F000224 */   addiu     $v0, $zero, 0xF
    /* 6B1C 8018FA94 1E80033C */  lui        $v1, %hi(D_801D8C68)
    /* 6B20 8018FA98 688C638C */  lw         $v1, %lo(D_801D8C68)($v1)
    /* 6B24 8018FA9C 00000000 */  nop
    /* 6B28 8018FAA0 0C006210 */  beq        $v1, $v0, .L8018FAD4
    /* 6B2C 8018FAA4 80000224 */   addiu     $v0, $zero, 0x80
  .L8018FAA8:
    /* 6B30 8018FAA8 1D80033C */  lui        $v1, %hi(D_801D7D56)
    /* 6B34 8018FAAC 567D6384 */  lh         $v1, %lo(D_801D7D56)($v1)
    /* 6B38 8018FAB0 00000000 */  nop
    /* 6B3C 8018FAB4 80100300 */  sll        $v0, $v1, 2
    /* 6B40 8018FAB8 21104300 */  addu       $v0, $v0, $v1
    /* 6B44 8018FABC 80100200 */  sll        $v0, $v0, 2
    /* 6B48 8018FAC0 644E060C */  jal        func_80193990
    /* 6B4C 8018FAC4 FA5D82A6 */   sh        $v0, 0x5DFA($s4)
    /* 6B50 8018FAC8 6549060C */  jal        func_80192594
    /* 6B54 8018FACC 21200000 */   addu      $a0, $zero, $zero
    /* 6B58 8018FAD0 02000224 */  addiu      $v0, $zero, 0x2
  .L8018FAD4:
    /* 6B5C 8018FAD4 1D80013C */  lui        $at, %hi(D_801D7D40)
    /* 6B60 8018FAD8 407D22AC */  sw         $v0, %lo(D_801D7D40)($at)
    /* 6B64 8018FADC D4000224 */  addiu      $v0, $zero, 0xD4
    /* 6B68 8018FAE0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6B6C 8018FAE4 21088102 */  addu       $at, $s4, $at
    /* 6B70 8018FAE8 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 6B74 8018FAEC 70470608 */  j          .L80191DC0
    /* 6B78 8018FAF0 00000000 */   nop
  jlabel .L8018FAF4
    /* 6B7C 8018FAF4 214E060C */  jal        func_80193884
    /* 6B80 8018FAF8 00000000 */   nop
    /* 6B84 8018FAFC B0084014 */  bnez       $v0, .L80191DC0
    /* 6B88 8018FB00 00000000 */   nop
    /* 6B8C 8018FB04 1FBC010C */  jal        func_8006F07C
    /* 6B90 8018FB08 10000424 */   addiu     $a0, $zero, 0x10
    /* 6B94 8018FB0C AC084010 */  beqz       $v0, .L80191DC0
    /* 6B98 8018FB10 00000000 */   nop
    /* 6B9C 8018FB14 1D80033C */  lui        $v1, %hi(D_801D7D56)
    /* 6BA0 8018FB18 567D6394 */  lhu        $v1, %lo(D_801D7D56)($v1)
    /* 6BA4 8018FB1C 1D80023C */  lui        $v0, %hi(D_801D7D58)
    /* 6BA8 8018FB20 587D4290 */  lbu        $v0, %lo(D_801D7D58)($v0)
    /* 6BAC 8018FB24 00000000 */  nop
    /* 6BB0 8018FB28 0200422C */  sltiu      $v0, $v0, 0x2
    /* 6BB4 8018FB2C 06004010 */  beqz       $v0, .L8018FB48
    /* 6BB8 8018FB30 21906000 */   addu      $s2, $v1, $zero
    /* 6BBC 8018FB34 1E80023C */  lui        $v0, %hi(D_801D8DFC)
    /* 6BC0 8018FB38 FC8D4290 */  lbu        $v0, %lo(D_801D8DFC)($v0)
    /* 6BC4 8018FB3C 00000000 */  nop
    /* 6BC8 8018FB40 2F004010 */  beqz       $v0, .L8018FC00
    /* 6BCC 8018FB44 00000000 */   nop
  .L8018FB48:
    /* 6BD0 8018FB48 3402A296 */  lhu        $v0, 0x234($s5)
    /* 6BD4 8018FB4C 00000000 */  nop
    /* 6BD8 8018FB50 00104230 */  andi       $v0, $v0, 0x1000
    /* 6BDC 8018FB54 06004010 */  beqz       $v0, .L8018FB70
    /* 6BE0 8018FB58 04006224 */   addiu     $v0, $v1, 0x4
    /* 6BE4 8018FB5C 1D80013C */  lui        $at, %hi(D_801D7D56)
    /* 6BE8 8018FB60 567D22A4 */  sh         $v0, %lo(D_801D7D56)($at)
    /* 6BEC 8018FB64 04001324 */  addiu      $s3, $zero, 0x4
    /* 6BF0 8018FB68 88AD020C */  jal        func_800AB620
    /* 6BF4 8018FB6C 0D050424 */   addiu     $a0, $zero, 0x50D
  .L8018FB70:
    /* 6BF8 8018FB70 3402A296 */  lhu        $v0, 0x234($s5)
    /* 6BFC 8018FB74 00000000 */  nop
    /* 6C00 8018FB78 00404230 */  andi       $v0, $v0, 0x4000
    /* 6C04 8018FB7C 0A004010 */  beqz       $v0, .L8018FBA8
    /* 6C08 8018FB80 00000000 */   nop
    /* 6C0C 8018FB84 01001324 */  addiu      $s3, $zero, 0x1
    /* 6C10 8018FB88 1D80023C */  lui        $v0, %hi(D_801D7D56)
    /* 6C14 8018FB8C 567D4294 */  lhu        $v0, %lo(D_801D7D56)($v0)
    /* 6C18 8018FB90 00000000 */  nop
    /* 6C1C 8018FB94 01004224 */  addiu      $v0, $v0, 0x1
    /* 6C20 8018FB98 1D80013C */  lui        $at, %hi(D_801D7D56)
    /* 6C24 8018FB9C 567D22A4 */  sh         $v0, %lo(D_801D7D56)($at)
    /* 6C28 8018FBA0 88AD020C */  jal        func_800AB620
    /* 6C2C 8018FBA4 0D050424 */   addiu     $a0, $zero, 0x50D
  .L8018FBA8:
    /* 6C30 8018FBA8 1E80023C */  lui        $v0, %hi(D_801D8DFC)
    /* 6C34 8018FBAC FC8D4290 */  lbu        $v0, %lo(D_801D8DFC)($v0)
    /* 6C38 8018FBB0 00000000 */  nop
    /* 6C3C 8018FBB4 12004010 */  beqz       $v0, .L8018FC00
    /* 6C40 8018FBB8 6666033C */   lui       $v1, (0x66666667 >> 16)
    /* 6C44 8018FBBC 1D80023C */  lui        $v0, %hi(D_801D7D56)
    /* 6C48 8018FBC0 567D4294 */  lhu        $v0, %lo(D_801D7D56)($v0)
    /* 6C4C 8018FBC4 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
    /* 6C50 8018FBC8 00140200 */  sll        $v0, $v0, 16
    /* 6C54 8018FBCC 03240200 */  sra        $a0, $v0, 16
    /* 6C58 8018FBD0 18008300 */  mult       $a0, $v1
    /* 6C5C 8018FBD4 C3170200 */  sra        $v0, $v0, 31
    /* 6C60 8018FBD8 10480000 */  mfhi       $t1
    /* 6C64 8018FBDC 43180900 */  sra        $v1, $t1, 1
    /* 6C68 8018FBE0 23186200 */  subu       $v1, $v1, $v0
    /* 6C6C 8018FBE4 80100300 */  sll        $v0, $v1, 2
    /* 6C70 8018FBE8 21104300 */  addu       $v0, $v0, $v1
    /* 6C74 8018FBEC 23208200 */  subu       $a0, $a0, $v0
    /* 6C78 8018FBF0 1D80013C */  lui        $at, %hi(D_801D7D56)
    /* 6C7C 8018FBF4 567D24A4 */  sh         $a0, %lo(D_801D7D56)($at)
    /* 6C80 8018FBF8 2A3F0608 */  j          .L8018FCA8
    /* 6C84 8018FBFC 00000000 */   nop
  .L8018FC00:
    /* 6C88 8018FC00 1D80023C */  lui        $v0, %hi(D_801D7D56)
    /* 6C8C 8018FC04 567D4284 */  lh         $v0, %lo(D_801D7D56)($v0)
    /* 6C90 8018FC08 FF004332 */  andi       $v1, $s2, 0xFF
    /* 6C94 8018FC0C 28004310 */  beq        $v0, $v1, .L8018FCB0
    /* 6C98 8018FC10 00000000 */   nop
    /* 6C9C 8018FC14 21800000 */  addu       $s0, $zero, $zero
    /* 6CA0 8018FC18 6666063C */  lui        $a2, (0x66666667 >> 16)
    /* 6CA4 8018FC1C 6766C634 */  ori        $a2, $a2, (0x66666667 & 0xFFFF)
    /* 6CA8 8018FC20 01000724 */  addiu      $a3, $zero, 0x1
    /* 6CAC 8018FC24 21286000 */  addu       $a1, $v1, $zero
  .L8018FC28:
    /* 6CB0 8018FC28 1D80023C */  lui        $v0, %hi(D_801D7D56)
    /* 6CB4 8018FC2C 567D4294 */  lhu        $v0, %lo(D_801D7D56)($v0)
    /* 6CB8 8018FC30 00000000 */  nop
    /* 6CBC 8018FC34 00140200 */  sll        $v0, $v0, 16
    /* 6CC0 8018FC38 03240200 */  sra        $a0, $v0, 16
    /* 6CC4 8018FC3C 18008600 */  mult       $a0, $a2
    /* 6CC8 8018FC40 C3170200 */  sra        $v0, $v0, 31
    /* 6CCC 8018FC44 10480000 */  mfhi       $t1
    /* 6CD0 8018FC48 43180900 */  sra        $v1, $t1, 1
    /* 6CD4 8018FC4C 23186200 */  subu       $v1, $v1, $v0
    /* 6CD8 8018FC50 80100300 */  sll        $v0, $v1, 2
    /* 6CDC 8018FC54 21104300 */  addu       $v0, $v0, $v1
    /* 6CE0 8018FC58 23208200 */  subu       $a0, $a0, $v0
    /* 6CE4 8018FC5C 00140400 */  sll        $v0, $a0, 16
    /* 6CE8 8018FC60 031C0200 */  sra        $v1, $v0, 16
    /* 6CEC 8018FC64 1D80013C */  lui        $at, %hi(D_801D7D56)
    /* 6CF0 8018FC68 567D24A4 */  sh         $a0, %lo(D_801D7D56)($at)
    /* 6CF4 8018FC6C 1D80013C */  lui        $at, %hi(D_801D7DA0)
    /* 6CF8 8018FC70 21082300 */  addu       $at, $at, $v1
    /* 6CFC 8018FC74 A07D2290 */  lbu        $v0, %lo(D_801D7DA0)($at)
    /* 6D00 8018FC78 00000000 */  nop
    /* 6D04 8018FC7C 03004714 */  bne        $v0, $a3, .L8018FC8C
    /* 6D08 8018FC80 00000000 */   nop
    /* 6D0C 8018FC84 08006514 */  bne        $v1, $a1, .L8018FCA8
    /* 6D10 8018FC88 00000000 */   nop
  .L8018FC8C:
    /* 6D14 8018FC8C 21109300 */  addu       $v0, $a0, $s3
    /* 6D18 8018FC90 1D80013C */  lui        $at, %hi(D_801D7D56)
    /* 6D1C 8018FC94 567D22A4 */  sh         $v0, %lo(D_801D7D56)($at)
    /* 6D20 8018FC98 01001026 */  addiu      $s0, $s0, 0x1
    /* 6D24 8018FC9C 0500022A */  slti       $v0, $s0, 0x5
    /* 6D28 8018FCA0 E1FF4014 */  bnez       $v0, .L8018FC28
    /* 6D2C 8018FCA4 00000000 */   nop
  .L8018FCA8:
    /* 6D30 8018FCA8 1D80023C */  lui        $v0, %hi(D_801D7D56)
    /* 6D34 8018FCAC 567D4284 */  lh         $v0, %lo(D_801D7D56)($v0)
  .L8018FCB0:
    /* 6D38 8018FCB0 00000000 */  nop
    /* 6D3C 8018FCB4 80180200 */  sll        $v1, $v0, 2
    /* 6D40 8018FCB8 21186200 */  addu       $v1, $v1, $v0
    /* 6D44 8018FCBC 80180300 */  sll        $v1, $v1, 2
    /* 6D48 8018FCC0 FA5D83A6 */  sh         $v1, 0x5DFA($s4)
    /* 6D4C 8018FCC4 FF004332 */  andi       $v1, $s2, 0xFF
    /* 6D50 8018FCC8 03004310 */  beq        $v0, $v1, .L8018FCD8
    /* 6D54 8018FCCC 00000000 */   nop
    /* 6D58 8018FCD0 644E060C */  jal        func_80193990
    /* 6D5C 8018FCD4 00000000 */   nop
  .L8018FCD8:
    /* 6D60 8018FCD8 1D80023C */  lui        $v0, %hi(D_801D7D56)
    /* 6D64 8018FCDC 567D4284 */  lh         $v0, %lo(D_801D7D56)($v0)
    /* 6D68 8018FCE0 1D80013C */  lui        $at, %hi(D_801D7DA0)
    /* 6D6C 8018FCE4 21082200 */  addu       $at, $at, $v0
    /* 6D70 8018FCE8 A07D2290 */  lbu        $v0, %lo(D_801D7DA0)($at)
    /* 6D74 8018FCEC 00000000 */  nop
    /* 6D78 8018FCF0 0A004010 */  beqz       $v0, .L8018FD1C
    /* 6D7C 8018FCF4 00000000 */   nop
    /* 6D80 8018FCF8 3402A296 */  lhu        $v0, 0x234($s5)
    /* 6D84 8018FCFC 00000000 */  nop
    /* 6D88 8018FD00 10004230 */  andi       $v0, $v0, 0x10
    /* 6D8C 8018FD04 06004010 */  beqz       $v0, .L8018FD20
    /* 6D90 8018FD08 00000000 */   nop
    /* 6D94 8018FD0C 6D4A060C */  jal        func_801929B4
    /* 6D98 8018FD10 21200000 */   addu      $a0, $zero, $zero
    /* 6D9C 8018FD14 5F3F0608 */  j          .L8018FD7C
    /* 6DA0 8018FD18 40000224 */   addiu     $v0, $zero, 0x40
  .L8018FD1C:
    /* 6DA4 8018FD1C 6C6580A2 */  sb         $zero, 0x656C($s4)
  .L8018FD20:
    /* 6DA8 8018FD20 9147060C */  jal        func_80191E44
    /* 6DAC 8018FD24 00000000 */   nop
    /* 6DB0 8018FD28 A4054014 */  bnez       $v0, .L801913BC
    /* 6DB4 8018FD2C E0000224 */   addiu     $v0, $zero, 0xE0
    /* 6DB8 8018FD30 3402A296 */  lhu        $v0, 0x234($s5)
    /* 6DBC 8018FD34 00000000 */  nop
    /* 6DC0 8018FD38 24105700 */  and        $v0, $v0, $s7
    /* 6DC4 8018FD3C 20084010 */  beqz       $v0, .L80191DC0
    /* 6DC8 8018FD40 00000000 */   nop
    /* 6DCC 8018FD44 1E80023C */  lui        $v0, %hi(D_801D8DFC)
    /* 6DD0 8018FD48 FC8D4290 */  lbu        $v0, %lo(D_801D8DFC)($v0)
    /* 6DD4 8018FD4C 00000000 */  nop
    /* 6DD8 8018FD50 0A004010 */  beqz       $v0, .L8018FD7C
    /* 6DDC 8018FD54 10000224 */   addiu     $v0, $zero, 0x10
    /* 6DE0 8018FD58 1D80023C */  lui        $v0, %hi(D_801D7D56)
    /* 6DE4 8018FD5C 567D4284 */  lh         $v0, %lo(D_801D7D56)($v0)
    /* 6DE8 8018FD60 1D80013C */  lui        $at, %hi(D_801D7DA0)
    /* 6DEC 8018FD64 21082200 */  addu       $at, $at, $v0
    /* 6DF0 8018FD68 A07D2290 */  lbu        $v0, %lo(D_801D7DA0)($at)
    /* 6DF4 8018FD6C 00000000 */  nop
    /* 6DF8 8018FD70 02004014 */  bnez       $v0, .L8018FD7C
    /* 6DFC 8018FD74 30000224 */   addiu     $v0, $zero, 0x30
    /* 6E00 8018FD78 20000224 */  addiu      $v0, $zero, 0x20
  .L8018FD7C:
    /* 6E04 8018FD7C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6E08 8018FD80 21088102 */  addu       $at, $s4, $at
    /* 6E0C 8018FD84 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 6E10 8018FD88 88AD020C */  jal        func_800AB620
    /* 6E14 8018FD8C 28050424 */   addiu     $a0, $zero, 0x528
    /* 6E18 8018FD90 70470608 */  j          .L80191DC0
    /* 6E1C 8018FD94 00000000 */   nop
  jlabel .L8018FD98
    /* 6E20 8018FD98 10000424 */  addiu      $a0, $zero, 0x10
    /* 6E24 8018FD9C 37BC010C */  jal        func_8006F0DC
    /* 6E28 8018FDA0 21280000 */   addu      $a1, $zero, $zero
    /* 6E2C 8018FDA4 06084010 */  beqz       $v0, .L80191DC0
    /* 6E30 8018FDA8 00000000 */   nop
    /* 6E34 8018FDAC 644E060C */  jal        func_80193990
    /* 6E38 8018FDB0 00000000 */   nop
    /* 6E3C 8018FDB4 02000424 */  addiu      $a0, $zero, 0x2
    /* 6E40 8018FDB8 08500524 */  addiu      $a1, $zero, 0x5008
    /* 6E44 8018FDBC 0050063C */  lui        $a2, (0x50000000 >> 16)
    /* 6E48 8018FDC0 21380000 */  addu       $a3, $zero, $zero
    /* 6E4C 8018FDC4 17000224 */  addiu      $v0, $zero, 0x17
    /* 6E50 8018FDC8 1400A2AF */  sw         $v0, 0x14($sp)
    /* 6E54 8018FDCC 01000224 */  addiu      $v0, $zero, 0x1
    /* 6E58 8018FDD0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 6E5C 8018FDD4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 6E60 8018FDD8 B873000C */  jal        func_8001CEE0
    /* 6E64 8018FDDC 1C00A2AF */   sw        $v0, 0x1C($sp)
    /* 6E68 8018FDE0 1D80033C */  lui        $v1, %hi(D_801D7D56)
    /* 6E6C 8018FDE4 567D6384 */  lh         $v1, %lo(D_801D7D56)($v1)
    /* 6E70 8018FDE8 03000224 */  addiu      $v0, $zero, 0x3
    /* 6E74 8018FDEC 105E82AE */  sw         $v0, 0x5E10($s4)
    /* 6E78 8018FDF0 1D80013C */  lui        $at, %hi(D_801D7D80)
    /* 6E7C 8018FDF4 21082300 */  addu       $at, $at, $v1
    /* 6E80 8018FDF8 807D2290 */  lbu        $v0, %lo(D_801D7D80)($at)
    /* 6E84 8018FDFC 1D80013C */  lui        $at, %hi(D_801D1B1B)
    /* 6E88 8018FE00 1B1B22A0 */  sb         $v0, %lo(D_801D1B1B)($at)
    /* 6E8C 8018FE04 1D80013C */  lui        $at, %hi(D_801D7D78)
    /* 6E90 8018FE08 21082300 */  addu       $at, $at, $v1
    /* 6E94 8018FE0C 787D2290 */  lbu        $v0, %lo(D_801D7D78)($at)
    /* 6E98 8018FE10 1D80013C */  lui        $at, %hi(D_801D1B1C)
    /* 6E9C 8018FE14 1C1B22A0 */  sb         $v0, %lo(D_801D1B1C)($at)
    /* 6EA0 8018FE18 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6EA4 8018FE1C 21088102 */  addu       $at, $s4, $at
    /* 6EA8 8018FE20 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 6EAC 8018FE24 1D80013C */  lui        $at, %hi(D_801D7D68)
    /* 6EB0 8018FE28 21082300 */  addu       $at, $at, $v1
    /* 6EB4 8018FE2C 687D2390 */  lbu        $v1, %lo(D_801D7D68)($at)
    /* 6EB8 8018FE30 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 6EBC 8018FE34 38D620A0 */  sb         $zero, %lo(D_800AD638)($at)
    /* 6EC0 8018FE38 01004224 */  addiu      $v0, $v0, 0x1
    /* 6EC4 8018FE3C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6EC8 8018FE40 21088102 */  addu       $at, $s4, $at
    /* 6ECC 8018FE44 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 6ED0 8018FE48 1D80013C */  lui        $at, %hi(D_801D1B1C + 0x1)
    /* 6ED4 8018FE4C 1D1B23A0 */  sb         $v1, %lo(D_801D1B1C + 0x1)($at)
    /* 6ED8 8018FE50 70470608 */  j          .L80191DC0
    /* 6EDC 8018FE54 00000000 */   nop
  jlabel .L8018FE58
    /* 6EE0 8018FE58 1FBC010C */  jal        func_8006F07C
    /* 6EE4 8018FE5C 10000424 */   addiu     $a0, $zero, 0x10
    /* 6EE8 8018FE60 D7074010 */  beqz       $v0, .L80191DC0
    /* 6EEC 8018FE64 00000000 */   nop
    /* 6EF0 8018FE68 214E060C */  jal        func_80193884
    /* 6EF4 8018FE6C 00000000 */   nop
    /* 6EF8 8018FE70 03004010 */  beqz       $v0, .L8018FE80
    /* 6EFC 8018FE74 00000000 */   nop
    /* 6F00 8018FE78 70470608 */  j          .L80191DC0
    /* 6F04 8018FE7C 145E80A2 */   sb        $zero, 0x5E14($s4)
  .L8018FE80:
    /* 6F08 8018FE80 9147060C */  jal        func_80191E44
    /* 6F0C 8018FE84 00000000 */   nop
    /* 6F10 8018FE88 05004010 */  beqz       $v0, .L8018FEA0
    /* 6F14 8018FE8C D9000224 */   addiu     $v0, $zero, 0xD9
    /* 6F18 8018FE90 145E80A2 */  sb         $zero, 0x5E14($s4)
    /* 6F1C 8018FE94 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6F20 8018FE98 21088102 */  addu       $at, $s4, $at
    /* 6F24 8018FE9C DAAB22A0 */  sb         $v0, -0x5426($at)
  .L8018FEA0:
    /* 6F28 8018FEA0 3402A396 */  lhu        $v1, 0x234($s5)
    /* 6F2C 8018FEA4 00000000 */  nop
    /* 6F30 8018FEA8 24107700 */  and        $v0, $v1, $s7
    /* 6F34 8018FEAC 09004010 */  beqz       $v0, .L8018FED4
    /* 6F38 8018FEB0 30000224 */   addiu     $v0, $zero, 0x30
    /* 6F3C 8018FEB4 145E80A2 */  sb         $zero, 0x5E14($s4)
    /* 6F40 8018FEB8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 6F44 8018FEBC 21088102 */  addu       $at, $s4, $at
    /* 6F48 8018FEC0 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 6F4C 8018FEC4 88AD020C */  jal        func_800AB620
    /* 6F50 8018FEC8 28050424 */   addiu     $a0, $zero, 0x528
    /* 6F54 8018FECC 70470608 */  j          .L80191DC0
    /* 6F58 8018FED0 00000000 */   nop
  .L8018FED4:
    /* 6F5C 8018FED4 00106230 */  andi       $v0, $v1, 0x1000
    /* 6F60 8018FED8 17004010 */  beqz       $v0, .L8018FF38
    /* 6F64 8018FEDC 00406230 */   andi      $v0, $v1, 0x4000
    /* 6F68 8018FEE0 1D80023C */  lui        $v0, %hi(D_801D7D56)
    /* 6F6C 8018FEE4 567D4284 */  lh         $v0, %lo(D_801D7D56)($v0)
    /* 6F70 8018FEE8 1D80013C */  lui        $at, %hi(D_801D7D60)
    /* 6F74 8018FEEC 21082200 */  addu       $at, $at, $v0
    /* 6F78 8018FEF0 607D2390 */  lbu        $v1, %lo(D_801D7D60)($at)
    /* 6F7C 8018FEF4 01000224 */  addiu      $v0, $zero, 0x1
    /* 6F80 8018FEF8 05006214 */  bne        $v1, $v0, .L8018FF10
    /* 6F84 8018FEFC 00000000 */   nop
    /* 6F88 8018FF00 0B80023C */  lui        $v0, %hi(D_800AD638)
    /* 6F8C 8018FF04 38D64290 */  lbu        $v0, %lo(D_800AD638)($v0)
    /* 6F90 8018FF08 C83F0608 */  j          .L8018FF20
    /* 6F94 8018FF0C 02004224 */   addiu     $v0, $v0, 0x2
  .L8018FF10:
    /* 6F98 8018FF10 0B80023C */  lui        $v0, %hi(D_800AD638)
    /* 6F9C 8018FF14 38D64290 */  lbu        $v0, %lo(D_800AD638)($v0)
    /* 6FA0 8018FF18 00000000 */  nop
    /* 6FA4 8018FF1C 01004224 */  addiu      $v0, $v0, 0x1
  .L8018FF20:
    /* 6FA8 8018FF20 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 6FAC 8018FF24 38D622A0 */  sb         $v0, %lo(D_800AD638)($at)
    /* 6FB0 8018FF28 88AD020C */  jal        func_800AB620
    /* 6FB4 8018FF2C 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 6FB8 8018FF30 D83F0608 */  j          .L8018FF60
    /* 6FBC 8018FF34 00000000 */   nop
  .L8018FF38:
    /* 6FC0 8018FF38 09004010 */  beqz       $v0, .L8018FF60
    /* 6FC4 8018FF3C 00000000 */   nop
    /* 6FC8 8018FF40 88AD020C */  jal        func_800AB620
    /* 6FCC 8018FF44 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 6FD0 8018FF48 0B80023C */  lui        $v0, %hi(D_800AD638)
    /* 6FD4 8018FF4C 38D64290 */  lbu        $v0, %lo(D_800AD638)($v0)
    /* 6FD8 8018FF50 00000000 */  nop
    /* 6FDC 8018FF54 01004224 */  addiu      $v0, $v0, 0x1
    /* 6FE0 8018FF58 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 6FE4 8018FF5C 38D622A0 */  sb         $v0, %lo(D_800AD638)($at)
  .L8018FF60:
    /* 6FE8 8018FF60 1D80023C */  lui        $v0, %hi(D_801D7D56)
    /* 6FEC 8018FF64 567D4284 */  lh         $v0, %lo(D_801D7D56)($v0)
    /* 6FF0 8018FF68 1D80013C */  lui        $at, %hi(D_801D7D60)
    /* 6FF4 8018FF6C 21082200 */  addu       $at, $at, $v0
    /* 6FF8 8018FF70 607D2390 */  lbu        $v1, %lo(D_801D7D60)($at)
    /* 6FFC 8018FF74 01000224 */  addiu      $v0, $zero, 0x1
    /* 7000 8018FF78 0F006214 */  bne        $v1, $v0, .L8018FFB8
    /* 7004 8018FF7C 00000000 */   nop
    /* 7008 8018FF80 0B80043C */  lui        $a0, %hi(D_800AD638)
    /* 700C 8018FF84 38D68490 */  lbu        $a0, %lo(D_800AD638)($a0)
    /* 7010 8018FF88 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 7014 8018FF8C ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 7018 8018FF90 19008200 */  multu      $a0, $v0
    /* 701C 8018FF94 10480000 */  mfhi       $t1
    /* 7020 8018FF98 42180900 */  srl        $v1, $t1, 1
    /* 7024 8018FF9C 40100300 */  sll        $v0, $v1, 1
    /* 7028 8018FFA0 21104300 */  addu       $v0, $v0, $v1
    /* 702C 8018FFA4 23208200 */  subu       $a0, $a0, $v0
    /* 7030 8018FFA8 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 7034 8018FFAC 38D624A0 */  sb         $a0, %lo(D_800AD638)($at)
    /* 7038 8018FFB0 F43F0608 */  j          .L8018FFD0
    /* 703C 8018FFB4 00000000 */   nop
  .L8018FFB8:
    /* 7040 8018FFB8 0B80023C */  lui        $v0, %hi(D_800AD638)
    /* 7044 8018FFBC 38D64290 */  lbu        $v0, %lo(D_800AD638)($v0)
    /* 7048 8018FFC0 00000000 */  nop
    /* 704C 8018FFC4 01004230 */  andi       $v0, $v0, 0x1
    /* 7050 8018FFC8 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 7054 8018FFCC 38D622A0 */  sb         $v0, %lo(D_800AD638)($at)
  .L8018FFD0:
    /* 7058 8018FFD0 3402A396 */  lhu        $v1, 0x234($s5)
    /* 705C 8018FFD4 00000000 */  nop
    /* 7060 8018FFD8 00806230 */  andi       $v0, $v1, 0x8000
    /* 7064 8018FFDC 2D004010 */  beqz       $v0, .L80190094
    /* 7068 8018FFE0 00206230 */   andi      $v0, $v1, 0x2000
    /* 706C 8018FFE4 88AD020C */  jal        func_800AB620
    /* 7070 8018FFE8 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 7074 8018FFEC 0B80043C */  lui        $a0, %hi(D_800AD638)
    /* 7078 8018FFF0 38D68490 */  lbu        $a0, %lo(D_800AD638)($a0)
    /* 707C 8018FFF4 01000224 */  addiu      $v0, $zero, 0x1
    /* 7080 8018FFF8 11008210 */  beq        $a0, $v0, .L80190040
    /* 7084 8018FFFC 02008228 */   slti      $v0, $a0, 0x2
    /* 7088 80190000 05004010 */  beqz       $v0, .L80190018
    /* 708C 80190004 00000000 */   nop
    /* 7090 80190008 08008010 */  beqz       $a0, .L8019002C
    /* 7094 8019000C 00000000 */   nop
    /* 7098 80190010 59400608 */  j          .L80190164
    /* 709C 80190014 00000000 */   nop
  .L80190018:
    /* 70A0 80190018 02000224 */  addiu      $v0, $zero, 0x2
    /* 70A4 8019001C 0D008210 */  beq        $a0, $v0, .L80190054
    /* 70A8 80190020 00000000 */   nop
    /* 70AC 80190024 59400608 */  j          .L80190164
    /* 70B0 80190028 00000000 */   nop
  .L8019002C:
    /* 70B4 8019002C 01002292 */  lbu        $v0, 0x1($s1)
    /* 70B8 80190030 00000000 */  nop
    /* 70BC 80190034 02004224 */  addiu      $v0, $v0, 0x2
    /* 70C0 80190038 59400608 */  j          .L80190164
    /* 70C4 8019003C 010022A2 */   sb        $v0, 0x1($s1)
  .L80190040:
    /* 70C8 80190040 00002292 */  lbu        $v0, 0x0($s1)
    /* 70CC 80190044 00000000 */  nop
    /* 70D0 80190048 05004224 */  addiu      $v0, $v0, 0x5
    /* 70D4 8019004C 59400608 */  j          .L80190164
    /* 70D8 80190050 000022A2 */   sb        $v0, 0x0($s1)
  .L80190054:
    /* 70DC 80190054 E202A292 */  lbu        $v0, 0x2E2($s5)
    /* 70E0 80190058 00000000 */  nop
    /* 70E4 8019005C FF004330 */  andi       $v1, $v0, 0xFF
    /* 70E8 80190060 3F006410 */  beq        $v1, $a0, .L80190160
    /* 70EC 80190064 03006228 */   slti      $v0, $v1, 0x3
    /* 70F0 80190068 05004010 */  beqz       $v0, .L80190080
    /* 70F4 8019006C 00000000 */   nop
    /* 70F8 80190070 39006010 */  beqz       $v1, .L80190158
    /* 70FC 80190074 03000224 */   addiu     $v0, $zero, 0x3
    /* 7100 80190078 59400608 */  j          .L80190164
    /* 7104 8019007C 00000000 */   nop
  .L80190080:
    /* 7108 80190080 03000224 */  addiu      $v0, $zero, 0x3
    /* 710C 80190084 37006214 */  bne        $v1, $v0, .L80190164
    /* 7110 80190088 02000224 */   addiu     $v0, $zero, 0x2
    /* 7114 8019008C 53400608 */  j          .L8019014C
    /* 7118 80190090 00000000 */   nop
  .L80190094:
    /* 711C 80190094 33004010 */  beqz       $v0, .L80190164
    /* 7120 80190098 00000000 */   nop
    /* 7124 8019009C 88AD020C */  jal        func_800AB620
    /* 7128 801900A0 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 712C 801900A4 0B80043C */  lui        $a0, %hi(D_800AD638)
    /* 7130 801900A8 38D68490 */  lbu        $a0, %lo(D_800AD638)($a0)
    /* 7134 801900AC 01000224 */  addiu      $v0, $zero, 0x1
    /* 7138 801900B0 11008210 */  beq        $a0, $v0, .L801900F8
    /* 713C 801900B4 02008228 */   slti      $v0, $a0, 0x2
    /* 7140 801900B8 05004010 */  beqz       $v0, .L801900D0
    /* 7144 801900BC 00000000 */   nop
    /* 7148 801900C0 08008010 */  beqz       $a0, .L801900E4
    /* 714C 801900C4 00000000 */   nop
    /* 7150 801900C8 59400608 */  j          .L80190164
    /* 7154 801900CC 00000000 */   nop
  .L801900D0:
    /* 7158 801900D0 02000224 */  addiu      $v0, $zero, 0x2
    /* 715C 801900D4 0D008210 */  beq        $a0, $v0, .L8019010C
    /* 7160 801900D8 00000000 */   nop
    /* 7164 801900DC 59400608 */  j          .L80190164
    /* 7168 801900E0 00000000 */   nop
  .L801900E4:
    /* 716C 801900E4 01002292 */  lbu        $v0, 0x1($s1)
    /* 7170 801900E8 00000000 */  nop
    /* 7174 801900EC 01004224 */  addiu      $v0, $v0, 0x1
    /* 7178 801900F0 59400608 */  j          .L80190164
    /* 717C 801900F4 010022A2 */   sb        $v0, 0x1($s1)
  .L801900F8:
    /* 7180 801900F8 00002292 */  lbu        $v0, 0x0($s1)
    /* 7184 801900FC 00000000 */  nop
    /* 7188 80190100 01004224 */  addiu      $v0, $v0, 0x1
    /* 718C 80190104 59400608 */  j          .L80190164
    /* 7190 80190108 000022A2 */   sb        $v0, 0x0($s1)
  .L8019010C:
    /* 7194 8019010C E202A292 */  lbu        $v0, 0x2E2($s5)
    /* 7198 80190110 00000000 */  nop
    /* 719C 80190114 FF004330 */  andi       $v1, $v0, 0xFF
    /* 71A0 80190118 0E006410 */  beq        $v1, $a0, .L80190154
    /* 71A4 8019011C 03006228 */   slti      $v0, $v1, 0x3
    /* 71A8 80190120 05004010 */  beqz       $v0, .L80190138
    /* 71AC 80190124 00000000 */   nop
    /* 71B0 80190128 08006010 */  beqz       $v1, .L8019014C
    /* 71B4 8019012C 02000224 */   addiu     $v0, $zero, 0x2
    /* 71B8 80190130 59400608 */  j          .L80190164
    /* 71BC 80190134 00000000 */   nop
  .L80190138:
    /* 71C0 80190138 03000224 */  addiu      $v0, $zero, 0x3
    /* 71C4 8019013C 08006210 */  beq        $v1, $v0, .L80190160
    /* 71C8 80190140 00000000 */   nop
    /* 71CC 80190144 59400608 */  j          .L80190164
    /* 71D0 80190148 00000000 */   nop
  .L8019014C:
    /* 71D4 8019014C 59400608 */  j          .L80190164
    /* 71D8 80190150 E202A2A2 */   sb        $v0, 0x2E2($s5)
  .L80190154:
    /* 71DC 80190154 03000224 */  addiu      $v0, $zero, 0x3
  .L80190158:
    /* 71E0 80190158 59400608 */  j          .L80190164
    /* 71E4 8019015C E202A2A2 */   sb        $v0, 0x2E2($s5)
  .L80190160:
    /* 71E8 80190160 E202A0A2 */  sb         $zero, 0x2E2($s5)
  .L80190164:
    /* 71EC 80190164 01002492 */  lbu        $a0, 0x1($s1)
    /* 71F0 80190168 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 71F4 8019016C ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 71F8 80190170 19008200 */  multu      $a0, $v0
    /* 71FC 80190174 10180000 */  mfhi       $v1
    /* 7200 80190178 00002592 */  lbu        $a1, 0x0($s1)
    /* 7204 8019017C 00000000 */  nop
    /* 7208 80190180 1900A200 */  multu      $a1, $v0
    /* 720C 80190184 42180300 */  srl        $v1, $v1, 1
    /* 7210 80190188 40100300 */  sll        $v0, $v1, 1
    /* 7214 8019018C 21104300 */  addu       $v0, $v0, $v1
    /* 7218 80190190 23208200 */  subu       $a0, $a0, $v0
    /* 721C 80190194 010024A2 */  sb         $a0, 0x1($s1)
    /* 7220 80190198 1D80043C */  lui        $a0, %hi(D_801D7D56)
    /* 7224 8019019C 567D8484 */  lh         $a0, %lo(D_801D7D56)($a0)
    /* 7228 801901A0 10300000 */  mfhi       $a2
    /* 722C 801901A4 82180600 */  srl        $v1, $a2, 2
    /* 7230 801901A8 40100300 */  sll        $v0, $v1, 1
    /* 7234 801901AC 21104300 */  addu       $v0, $v0, $v1
    /* 7238 801901B0 40100200 */  sll        $v0, $v0, 1
    /* 723C 801901B4 01002392 */  lbu        $v1, 0x1($s1)
    /* 7240 801901B8 2328A200 */  subu       $a1, $a1, $v0
    /* 7244 801901BC 000025A2 */  sb         $a1, 0x0($s1)
    /* 7248 801901C0 1D80013C */  lui        $at, %hi(D_801D7D80)
    /* 724C 801901C4 21082400 */  addu       $at, $at, $a0
    /* 7250 801901C8 807D23A0 */  sb         $v1, %lo(D_801D7D80)($at)
    /* 7254 801901CC 1D80033C */  lui        $v1, %hi(D_801D7D56)
    /* 7258 801901D0 567D6384 */  lh         $v1, %lo(D_801D7D56)($v1)
    /* 725C 801901D4 00002292 */  lbu        $v0, 0x0($s1)
    /* 7260 801901D8 1D80013C */  lui        $at, %hi(D_801D7D78)
    /* 7264 801901DC 21082300 */  addu       $at, $at, $v1
    /* 7268 801901E0 787D22A0 */  sb         $v0, %lo(D_801D7D78)($at)
    /* 726C 801901E4 1D80033C */  lui        $v1, %hi(D_801D7D56)
    /* 7270 801901E8 567D6384 */  lh         $v1, %lo(D_801D7D56)($v1)
    /* 7274 801901EC E202A292 */  lbu        $v0, 0x2E2($s5)
    /* 7278 801901F0 1D80013C */  lui        $at, %hi(D_801D7D68)
    /* 727C 801901F4 21082300 */  addu       $at, $at, $v1
    /* 7280 801901F8 687D22A0 */  sb         $v0, %lo(D_801D7D68)($at)
    /* 7284 801901FC 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 7288 80190200 38D66390 */  lbu        $v1, %lo(D_800AD638)($v1)
    /* 728C 80190204 41420608 */  j          .L80190904
    /* 7290 80190208 C0100300 */   sll       $v0, $v1, 3
  jlabel .L8019020C
    /* 7294 8019020C 21200000 */  addu       $a0, $zero, $zero
    /* 7298 80190210 5EFF0624 */  addiu      $a2, $zero, -0xA2
    /* 729C 80190214 37000724 */  addiu      $a3, $zero, 0x37
    /* 72A0 80190218 1280053C */  lui        $a1, %hi(D_8011D720)
    /* 72A4 8019021C 20D7A58C */  lw         $a1, %lo(D_8011D720)($a1)
    /* 72A8 80190220 4E010224 */  addiu      $v0, $zero, 0x14E
    /* 72AC 80190224 1000A2AF */  sw         $v0, 0x10($sp)
    /* 72B0 80190228 02000224 */  addiu      $v0, $zero, 0x2
    /* 72B4 8019022C 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 72B8 80190230 03000224 */  addiu      $v0, $zero, 0x3
    /* 72BC 80190234 2400A2AF */  sw         $v0, 0x24($sp)
    /* 72C0 80190238 2800A2AF */  sw         $v0, 0x28($sp)
    /* 72C4 8019023C 01000224 */  addiu      $v0, $zero, 0x1
    /* 72C8 80190240 1400A0AF */  sw         $zero, 0x14($sp)
    /* 72CC 80190244 1800A0AF */  sw         $zero, 0x18($sp)
    /* 72D0 80190248 2000A0AF */  sw         $zero, 0x20($sp)
    /* 72D4 8019024C B850060C */  jal        func_801942E0
    /* 72D8 80190250 2C00A2AF */   sw        $v0, 0x2C($sp)
    /* 72DC 80190254 60460608 */  j          .L80191980
    /* 72E0 80190258 00000000 */   nop
  jlabel .L8019025C
    /* 72E4 8019025C 214E060C */  jal        func_80193884
    /* 72E8 80190260 00000000 */   nop
    /* 72EC 80190264 D6064014 */  bnez       $v0, .L80191DC0
    /* 72F0 80190268 00000000 */   nop
    /* 72F4 8019026C 9147060C */  jal        func_80191E44
    /* 72F8 80190270 00000000 */   nop
    /* 72FC 80190274 B6064014 */  bnez       $v0, .L80191D50
    /* 7300 80190278 00000000 */   nop
    /* 7304 8019027C 3402A296 */  lhu        $v0, 0x234($s5)
    /* 7308 80190280 00000000 */  nop
    /* 730C 80190284 00084230 */  andi       $v0, $v0, 0x800
    /* 7310 80190288 CD064010 */  beqz       $v0, .L80191DC0
    /* 7314 8019028C 00000000 */   nop
    /* 7318 80190290 88AD020C */  jal        func_800AB620
    /* 731C 80190294 28050424 */   addiu     $a0, $zero, 0x528
    /* 7320 80190298 0100013C */  lui        $at, (0x10000 >> 16)
    /* 7324 8019029C 21088102 */  addu       $at, $s4, $at
    /* 7328 801902A0 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 732C 801902A4 01000324 */  addiu      $v1, $zero, 0x1
    /* 7330 801902A8 1D80013C */  lui        $at, %hi(D_801D7D44 + 0x1)
    /* 7334 801902AC 457D23A0 */  sb         $v1, %lo(D_801D7D44 + 0x1)($at)
    /* 7338 801902B0 65460608 */  j          .L80191994
    /* 733C 801902B4 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801902B8
    /* 7340 801902B8 1D80023C */  lui        $v0, %hi(D_801D7D56)
    /* 7344 801902BC 567D4290 */  lbu        $v0, %lo(D_801D7D56)($v0)
    /* 7348 801902C0 00000000 */  nop
    /* 734C 801902C4 30004224 */  addiu      $v0, $v0, 0x30
    /* 7350 801902C8 1D80013C */  lui        $at, %hi(D_801D1B11)
    /* 7354 801902CC 111B22A0 */  sb         $v0, %lo(D_801D1B11)($at)
  .L801902D0:
    /* 7358 801902D0 1D80043C */  lui        $a0, %hi(D_801D1B00)
    /* 735C 801902D4 001B8424 */  addiu      $a0, $a0, %lo(D_801D1B00)
    /* 7360 801902D8 1E80053C */  lui        $a1, %hi(D_801DA2C8)
    /* 7364 801902DC C8A2A524 */  addiu      $a1, $a1, %lo(D_801DA2C8)
    /* 7368 801902E0 B2B3020C */  jal        func_800ACEC8
    /* 736C 801902E4 00000000 */   nop
    /* 7370 801902E8 F9FF4010 */  beqz       $v0, .L801902D0
    /* 7374 801902EC 00000000 */   nop
    /* 7378 801902F0 6D4A060C */  jal        func_801929B4
    /* 737C 801902F4 21200000 */   addu      $a0, $zero, $zero
    /* 7380 801902F8 21200000 */  addu       $a0, $zero, $zero
    /* 7384 801902FC 5EFF0624 */  addiu      $a2, $zero, -0xA2
    /* 7388 80190300 37000724 */  addiu      $a3, $zero, 0x37
    /* 738C 80190304 1280053C */  lui        $a1, %hi(D_8011D724)
    /* 7390 80190308 24D7A58C */  lw         $a1, %lo(D_8011D724)($a1)
    /* 7394 8019030C 4E010224 */  addiu      $v0, $zero, 0x14E
    /* 7398 80190310 1000A2AF */  sw         $v0, 0x10($sp)
    /* 739C 80190314 02000224 */  addiu      $v0, $zero, 0x2
    /* 73A0 80190318 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 73A4 8019031C 03000224 */  addiu      $v0, $zero, 0x3
    /* 73A8 80190320 2400A2AF */  sw         $v0, 0x24($sp)
    /* 73AC 80190324 2800A2AF */  sw         $v0, 0x28($sp)
    /* 73B0 80190328 01000224 */  addiu      $v0, $zero, 0x1
    /* 73B4 8019032C 1400A0AF */  sw         $zero, 0x14($sp)
    /* 73B8 80190330 1800A0AF */  sw         $zero, 0x18($sp)
    /* 73BC 80190334 2000A0AF */  sw         $zero, 0x20($sp)
    /* 73C0 80190338 B850060C */  jal        func_801942E0
    /* 73C4 8019033C 2C00A2AF */   sw        $v0, 0x2C($sp)
    /* 73C8 80190340 0100013C */  lui        $at, (0x10000 >> 16)
    /* 73CC 80190344 21088102 */  addu       $at, $s4, $at
    /* 73D0 80190348 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 73D4 8019034C 1D80013C */  lui        $at, %hi(D_801D5A48)
    /* 73D8 80190350 485A20AC */  sw         $zero, %lo(D_801D5A48)($at)
    /* 73DC 80190354 65460608 */  j          .L80191994
    /* 73E0 80190358 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L8019035C
    /* 73E4 8019035C 21200000 */  addu       $a0, $zero, $zero
    /* 73E8 80190360 1D80063C */  lui        $a2, %hi(D_801D1B00)
    /* 73EC 80190364 001BC624 */  addiu      $a2, $a2, %lo(D_801D1B00)
    /* 73F0 80190368 01000224 */  addiu      $v0, $zero, 0x1
    /* 73F4 8019036C 1D80013C */  lui        $at, %hi(D_801D7D44 + 0x1)
    /* 73F8 80190370 457D22A0 */  sb         $v0, %lo(D_801D7D44 + 0x1)($at)
    /* 73FC 80190374 801E0224 */  addiu      $v0, $zero, 0x1E80
    /* 7400 80190378 1000A2AF */  sw         $v0, 0x10($sp)
    /* 7404 8019037C 01000224 */  addiu      $v0, $zero, 0x1
    /* 7408 80190380 1400A2AF */  sw         $v0, 0x14($sp)
    /* 740C 80190384 1D80023C */  lui        $v0, %hi(D_801D5A48)
    /* 7410 80190388 485A428C */  lw         $v0, %lo(D_801D5A48)($v0)
    /* 7414 8019038C 1D80073C */  lui        $a3, %hi(D_801D1AFC)
    /* 7418 80190390 FC1AE78C */  lw         $a3, %lo(D_801D1AFC)($a3)
    /* 741C 80190394 01004224 */  addiu      $v0, $v0, 0x1
    /* 7420 80190398 1D80013C */  lui        $at, %hi(D_801D5A48)
    /* 7424 8019039C 485A22AC */  sw         $v0, %lo(D_801D5A48)($at)
    /* 7428 801903A0 8C4A060C */  jal        func_80192A30
    /* 742C 801903A4 21280000 */   addu      $a1, $zero, $zero
    /* 7430 801903A8 04004324 */  addiu      $v1, $v0, 0x4
    /* 7434 801903AC 1D80013C */  lui        $at, %hi(D_801D7D4C)
    /* 7438 801903B0 4C7D22AC */  sw         $v0, %lo(D_801D7D4C)($at)
    /* 743C 801903B4 0600622C */  sltiu      $v0, $v1, 0x6
    /* 7440 801903B8 20004010 */  beqz       $v0, .L8019043C
    /* 7444 801903BC 02000224 */   addiu     $v0, $zero, 0x2
    /* 7448 801903C0 80100300 */  sll        $v0, $v1, 2
    /* 744C 801903C4 1980013C */  lui        $at, %hi(jtbl_801893A8)
    /* 7450 801903C8 21082200 */  addu       $at, $at, $v0
    /* 7454 801903CC A893228C */  lw         $v0, %lo(jtbl_801893A8)($at)
    /* 7458 801903D0 00000000 */  nop
    /* 745C 801903D4 08004000 */  jr         $v0
    /* 7460 801903D8 00000000 */   nop
  jlabel .L801903DC
    /* 7464 801903DC 9A02A292 */  lbu        $v0, 0x29A($s5)
    /* 7468 801903E0 22000324 */  addiu      $v1, $zero, 0x22
    /* 746C 801903E4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 7470 801903E8 03004314 */  bne        $v0, $v1, .L801903F8
    /* 7474 801903EC 00000000 */   nop
    /* 7478 801903F0 C2E1060C */  jal        func_801B8708
    /* 747C 801903F4 01000424 */   addiu     $a0, $zero, 0x1
  .L801903F8:
    /* 7480 801903F8 5D48060C */  jal        func_80192174
    /* 7484 801903FC 00000000 */   nop
    /* 7488 80190400 E102A292 */  lbu        $v0, 0x2E1($s5)
    /* 748C 80190404 06000324 */  addiu      $v1, $zero, 0x6
    /* 7490 80190408 FF004230 */  andi       $v0, $v0, 0xFF
    /* 7494 8019040C 03004314 */  bne        $v0, $v1, .L8019041C
    /* 7498 80190410 00000000 */   nop
    /* 749C 80190414 12410608 */  j          .L80190448
    /* 74A0 80190418 03000224 */   addiu     $v0, $zero, 0x3
  .L8019041C:
    /* 74A4 8019041C 12410608 */  j          .L80190448
    /* 74A8 80190420 F0000224 */   addiu     $v0, $zero, 0xF0
  jlabel .L80190424
    /* 74AC 80190424 12410608 */  j          .L80190448
    /* 74B0 80190428 90000224 */   addiu     $v0, $zero, 0x90
  jlabel .L8019042C
    /* 74B4 8019042C 12410608 */  j          .L80190448
    /* 74B8 80190430 60000224 */   addiu     $v0, $zero, 0x60
  jlabel .L80190434
    /* 74BC 80190434 12410608 */  j          .L80190448
    /* 74C0 80190438 70000224 */   addiu     $v0, $zero, 0x70
  .L8019043C:
    /* 74C4 8019043C 1D80013C */  lui        $at, %hi(D_801D7D40)
    /* 74C8 80190440 407D22AC */  sw         $v0, %lo(D_801D7D40)($at)
    /* 74CC 80190444 D0000224 */  addiu      $v0, $zero, 0xD0
  .L80190448:
    /* 74D0 80190448 0100013C */  lui        $at, (0x10000 >> 16)
    /* 74D4 8019044C 21088102 */  addu       $at, $s4, $at
    /* 74D8 80190450 DAAB22A0 */  sb         $v0, -0x5426($at)
  jlabel .L80190454
    /* 74DC 80190454 0100013C */  lui        $at, (0x10000 >> 16)
    /* 74E0 80190458 21088102 */  addu       $at, $s4, $at
    /* 74E4 8019045C DAAB2390 */  lbu        $v1, -0x5426($at)
    /* 74E8 80190460 E3410608 */  j          .L8019078C
    /* 74EC 80190464 13000224 */   addiu     $v0, $zero, 0x13
  jlabel .L80190468
    /* 74F0 80190468 1E80033C */  lui        $v1, %hi(D_801D8C68)
    /* 74F4 8019046C 688C638C */  lw         $v1, %lo(D_801D8C68)($v1)
    /* 74F8 80190470 0F000224 */  addiu      $v0, $zero, 0xF
    /* 74FC 80190474 07006214 */  bne        $v1, $v0, .L80190494
    /* 7500 80190478 21200000 */   addu      $a0, $zero, $zero
    /* 7504 8019047C 80000224 */  addiu      $v0, $zero, 0x80
    /* 7508 80190480 0100013C */  lui        $at, (0x10000 >> 16)
    /* 750C 80190484 21088102 */  addu       $at, $s4, $at
    /* 7510 80190488 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 7514 8019048C 70470608 */  j          .L80191DC0
    /* 7518 80190490 00000000 */   nop
  .L80190494:
    /* 751C 80190494 5EFF0624 */  addiu      $a2, $zero, -0xA2
    /* 7520 80190498 37000724 */  addiu      $a3, $zero, 0x37
    /* 7524 8019049C 1280053C */  lui        $a1, %hi(D_8011D638)
    /* 7528 801904A0 38D6A58C */  lw         $a1, %lo(D_8011D638)($a1)
    /* 752C 801904A4 4E010224 */  addiu      $v0, $zero, 0x14E
    /* 7530 801904A8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 7534 801904AC 02000224 */  addiu      $v0, $zero, 0x2
    /* 7538 801904B0 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 753C 801904B4 03000224 */  addiu      $v0, $zero, 0x3
    /* 7540 801904B8 2400A2AF */  sw         $v0, 0x24($sp)
    /* 7544 801904BC 2800A2AF */  sw         $v0, 0x28($sp)
    /* 7548 801904C0 01000224 */  addiu      $v0, $zero, 0x1
    /* 754C 801904C4 1400A0AF */  sw         $zero, 0x14($sp)
    /* 7550 801904C8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 7554 801904CC 2000A0AF */  sw         $zero, 0x20($sp)
    /* 7558 801904D0 B850060C */  jal        func_801942E0
    /* 755C 801904D4 2C00A2AF */   sw        $v0, 0x2C($sp)
    /* 7560 801904D8 60460608 */  j          .L80191980
    /* 7564 801904DC 00000000 */   nop
  jlabel .L801904E0
    /* 7568 801904E0 214E060C */  jal        func_80193884
    /* 756C 801904E4 00000000 */   nop
    /* 7570 801904E8 35064014 */  bnez       $v0, .L80191DC0
    /* 7574 801904EC 00000000 */   nop
    /* 7578 801904F0 9147060C */  jal        func_80191E44
    /* 757C 801904F4 00000000 */   nop
    /* 7580 801904F8 15064014 */  bnez       $v0, .L80191D50
    /* 7584 801904FC 00000000 */   nop
    /* 7588 80190500 3402A296 */  lhu        $v0, 0x234($s5)
    /* 758C 80190504 00000000 */  nop
    /* 7590 80190508 00084230 */  andi       $v0, $v0, 0x800
    /* 7594 8019050C 2C064010 */  beqz       $v0, .L80191DC0
    /* 7598 80190510 00000000 */   nop
    /* 759C 80190514 88AD020C */  jal        func_800AB620
    /* 75A0 80190518 28050424 */   addiu     $a0, $zero, 0x528
    /* 75A4 8019051C 6549060C */  jal        func_80192594
    /* 75A8 80190520 21200000 */   addu      $a0, $zero, $zero
    /* 75AC 80190524 0A49060C */  jal        func_80192428
    /* 75B0 80190528 00000000 */   nop
    /* 75B4 8019052C A047060C */  jal        func_80191E80
    /* 75B8 80190530 00000000 */   nop
    /* 75BC 80190534 6D4A060C */  jal        func_801929B4
    /* 75C0 80190538 21200000 */   addu      $a0, $zero, $zero
    /* 75C4 8019053C 1D80023C */  lui        $v0, %hi(D_801D7D54)
    /* 75C8 80190540 547D4290 */  lbu        $v0, %lo(D_801D7D54)($v0)
    /* 75CC 80190544 00000000 */  nop
    /* 75D0 80190548 09004010 */  beqz       $v0, .L80190570
    /* 75D4 8019054C 03000224 */   addiu     $v0, $zero, 0x3
    /* 75D8 80190550 1D80013C */  lui        $at, %hi(D_801D7D44 + 0x1)
    /* 75DC 80190554 457D22A0 */  sb         $v0, %lo(D_801D7D44 + 0x1)($at)
    /* 75E0 80190558 70000224 */  addiu      $v0, $zero, 0x70
    /* 75E4 8019055C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 75E8 80190560 21088102 */  addu       $at, $s4, $at
    /* 75EC 80190564 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 75F0 80190568 70470608 */  j          .L80191DC0
    /* 75F4 8019056C 00000000 */   nop
  .L80190570:
    /* 75F8 80190570 21200000 */  addu       $a0, $zero, $zero
    /* 75FC 80190574 5EFF0624 */  addiu      $a2, $zero, -0xA2
    /* 7600 80190578 37000724 */  addiu      $a3, $zero, 0x37
    /* 7604 8019057C 1280053C */  lui        $a1, %hi(D_8011D63C)
    /* 7608 80190580 3CD6A58C */  lw         $a1, %lo(D_8011D63C)($a1)
    /* 760C 80190584 4E010224 */  addiu      $v0, $zero, 0x14E
    /* 7610 80190588 1000A2AF */  sw         $v0, 0x10($sp)
    /* 7614 8019058C 02000224 */  addiu      $v0, $zero, 0x2
    /* 7618 80190590 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 761C 80190594 03000224 */  addiu      $v0, $zero, 0x3
    /* 7620 80190598 2400A2AF */  sw         $v0, 0x24($sp)
    /* 7624 8019059C 2800A2AF */  sw         $v0, 0x28($sp)
    /* 7628 801905A0 01000224 */  addiu      $v0, $zero, 0x1
    /* 762C 801905A4 1400A0AF */  sw         $zero, 0x14($sp)
    /* 7630 801905A8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 7634 801905AC 2000A0AF */  sw         $zero, 0x20($sp)
    /* 7638 801905B0 B850060C */  jal        func_801942E0
    /* 763C 801905B4 2C00A2AF */   sw        $v0, 0x2C($sp)
    /* 7640 801905B8 1D80013C */  lui        $at, %hi(D_801D5A48)
    /* 7644 801905BC 485A20AC */  sw         $zero, %lo(D_801D5A48)($at)
    /* 7648 801905C0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 764C 801905C4 21088102 */  addu       $at, $s4, $at
    /* 7650 801905C8 DAAB2390 */  lbu        $v1, -0x5426($at)
    /* 7654 801905CC 02000224 */  addiu      $v0, $zero, 0x2
    /* 7658 801905D0 1D80013C */  lui        $at, %hi(D_801D7D44 + 0x1)
    /* 765C 801905D4 457D22A0 */  sb         $v0, %lo(D_801D7D44 + 0x1)($at)
    /* 7660 801905D8 1D80013C */  lui        $at, %hi(D_801D1B1A)
    /* 7664 801905DC 1A1B20A0 */  sb         $zero, %lo(D_801D1B1A)($at)
    /* 7668 801905E0 01006324 */  addiu      $v1, $v1, 0x1
    /* 766C 801905E4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 7670 801905E8 21088102 */  addu       $at, $s4, $at
    /* 7674 801905EC DAAB23A0 */  sb         $v1, -0x5426($at)
    /* 7678 801905F0 70470608 */  j          .L80191DC0
    /* 767C 801905F4 00000000 */   nop
  jlabel .L801905F8
    /* 7680 801905F8 21200000 */  addu       $a0, $zero, $zero
    /* 7684 801905FC 21280000 */  addu       $a1, $zero, $zero
    /* 7688 80190600 01000624 */  addiu      $a2, $zero, 0x1
    /* 768C 80190604 1D80073C */  lui        $a3, %hi(D_801D1B00)
    /* 7690 80190608 001BE724 */  addiu      $a3, $a3, %lo(D_801D1B00)
    /* 7694 8019060C 801E0224 */  addiu      $v0, $zero, 0x1E80
    /* 7698 80190610 1400A2AF */  sw         $v0, 0x14($sp)
    /* 769C 80190614 1D80023C */  lui        $v0, %hi(D_801D5A48)
    /* 76A0 80190618 485A428C */  lw         $v0, %lo(D_801D5A48)($v0)
    /* 76A4 8019061C 1D80033C */  lui        $v1, %hi(D_801D1AFC)
    /* 76A8 80190620 FC1A638C */  lw         $v1, %lo(D_801D1AFC)($v1)
    /* 76AC 80190624 01004224 */  addiu      $v0, $v0, 0x1
    /* 76B0 80190628 1D80013C */  lui        $at, %hi(D_801D5A48)
    /* 76B4 8019062C 485A22AC */  sw         $v0, %lo(D_801D5A48)($at)
    /* 76B8 80190630 3D4C060C */  jal        func_801930F4
    /* 76BC 80190634 1000A3AF */   sw        $v1, 0x10($sp)
    /* 76C0 80190638 04004324 */  addiu      $v1, $v0, 0x4
    /* 76C4 8019063C 0600622C */  sltiu      $v0, $v1, 0x6
    /* 76C8 80190640 07004010 */  beqz       $v0, .L80190660
    /* 76CC 80190644 80100300 */   sll       $v0, $v1, 2
    /* 76D0 80190648 1980013C */  lui        $at, %hi(jtbl_801893C0)
    /* 76D4 8019064C 21082200 */  addu       $at, $at, $v0
    /* 76D8 80190650 C093228C */  lw         $v0, %lo(jtbl_801893C0)($at)
    /* 76DC 80190654 00000000 */  nop
    /* 76E0 80190658 08004000 */  jr         $v0
    /* 76E4 8019065C 00000000 */   nop
  jlabel .L80190660
    /* 76E8 80190660 214E060C */  jal        func_80193884
    /* 76EC 80190664 00000000 */   nop
    /* 76F0 80190668 D5054014 */  bnez       $v0, .L80191DC0
    /* 76F4 8019066C 00000000 */   nop
    /* 76F8 80190670 6D4A060C */  jal        func_801929B4
    /* 76FC 80190674 21200000 */   addu      $a0, $zero, $zero
    /* 7700 80190678 0100013C */  lui        $at, (0x10000 >> 16)
    /* 7704 8019067C 21088102 */  addu       $at, $s4, $at
    /* 7708 80190680 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 770C 80190684 A8410608 */  j          .L801906A0
    /* 7710 80190688 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L8019068C
    /* 7714 8019068C A8410608 */  j          .L801906A0
    /* 7718 80190690 90000224 */   addiu     $v0, $zero, 0x90
  jlabel .L80190694
    /* 771C 80190694 A8410608 */  j          .L801906A0
    /* 7720 80190698 60000224 */   addiu     $v0, $zero, 0x60
  jlabel .L8019069C
    /* 7724 8019069C 70000224 */  addiu      $v0, $zero, 0x70
  .L801906A0:
    /* 7728 801906A0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 772C 801906A4 21088102 */  addu       $at, $s4, $at
    /* 7730 801906A8 DAAB22A0 */  sb         $v0, -0x5426($at)
  jlabel .L801906AC
    /* 7734 801906AC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 7738 801906B0 21088102 */  addu       $at, $s4, $at
    /* 773C 801906B4 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 7740 801906B8 00000000 */  nop
    /* 7744 801906BC DEFF4224 */  addiu      $v0, $v0, -0x22
    /* 7748 801906C0 0200422C */  sltiu      $v0, $v0, 0x2
    /* 774C 801906C4 BE054014 */  bnez       $v0, .L80191DC0
    /* 7750 801906C8 00000000 */   nop
    /* 7754 801906CC 1D80013C */  lui        $at, %hi(D_801D5A48)
    /* 7758 801906D0 485A20AC */  sw         $zero, %lo(D_801D5A48)($at)
    /* 775C 801906D4 70470608 */  j          .L80191DC0
    /* 7760 801906D8 00000000 */   nop
  jlabel .L801906DC
    /* 7764 801906DC 21200000 */  addu       $a0, $zero, $zero
    /* 7768 801906E0 1D80063C */  lui        $a2, %hi(D_801D1B00)
    /* 776C 801906E4 001BC624 */  addiu      $a2, $a2, %lo(D_801D1B00)
    /* 7770 801906E8 801E0224 */  addiu      $v0, $zero, 0x1E80
    /* 7774 801906EC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 7778 801906F0 01000224 */  addiu      $v0, $zero, 0x1
    /* 777C 801906F4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 7780 801906F8 1D80023C */  lui        $v0, %hi(D_801D5A48)
    /* 7784 801906FC 485A428C */  lw         $v0, %lo(D_801D5A48)($v0)
    /* 7788 80190700 1D80073C */  lui        $a3, %hi(D_801D1AFC)
    /* 778C 80190704 FC1AE78C */  lw         $a3, %lo(D_801D1AFC)($a3)
    /* 7790 80190708 01004224 */  addiu      $v0, $v0, 0x1
    /* 7794 8019070C 1D80013C */  lui        $at, %hi(D_801D5A48)
    /* 7798 80190710 485A22AC */  sw         $v0, %lo(D_801D5A48)($at)
    /* 779C 80190714 8C4A060C */  jal        func_80192A30
    /* 77A0 80190718 21280000 */   addu      $a1, $zero, $zero
    /* 77A4 8019071C 04004324 */  addiu      $v1, $v0, 0x4
    /* 77A8 80190720 0600622C */  sltiu      $v0, $v1, 0x6
    /* 77AC 80190724 08004010 */  beqz       $v0, .L80190748
    /* 77B0 80190728 00000000 */   nop
    /* 77B4 8019072C 80100300 */  sll        $v0, $v1, 2
    /* 77B8 80190730 1980013C */  lui        $at, %hi(jtbl_801893D8)
    /* 77BC 80190734 21082200 */  addu       $at, $at, $v0
    /* 77C0 80190738 D893228C */  lw         $v0, %lo(jtbl_801893D8)($at)
    /* 77C4 8019073C 00000000 */  nop
    /* 77C8 80190740 08004000 */  jr         $v0
    /* 77CC 80190744 00000000 */   nop
  jlabel .L80190748
    /* 77D0 80190748 0100013C */  lui        $at, (0x10000 >> 16)
    /* 77D4 8019074C 21088102 */  addu       $at, $s4, $at
    /* 77D8 80190750 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 77DC 80190754 DC410608 */  j          .L80190770
    /* 77E0 80190758 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L8019075C
    /* 77E4 8019075C DC410608 */  j          .L80190770
    /* 77E8 80190760 90000224 */   addiu     $v0, $zero, 0x90
  jlabel .L80190764
    /* 77EC 80190764 DC410608 */  j          .L80190770
    /* 77F0 80190768 60000224 */   addiu     $v0, $zero, 0x60
  jlabel .L8019076C
    /* 77F4 8019076C 70000224 */  addiu      $v0, $zero, 0x70
  .L80190770:
    /* 77F8 80190770 0100013C */  lui        $at, (0x10000 >> 16)
    /* 77FC 80190774 21088102 */  addu       $at, $s4, $at
    /* 7800 80190778 DAAB22A0 */  sb         $v0, -0x5426($at)
  jlabel .L8019077C
    /* 7804 8019077C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 7808 80190780 21088102 */  addu       $at, $s4, $at
    /* 780C 80190784 DAAB2390 */  lbu        $v1, -0x5426($at)
    /* 7810 80190788 23000224 */  addiu      $v0, $zero, 0x23
  .L8019078C:
    /* 7814 8019078C 8C056210 */  beq        $v1, $v0, .L80191DC0
    /* 7818 80190790 00000000 */   nop
    /* 781C 80190794 1D80013C */  lui        $at, %hi(D_801D5A48)
    /* 7820 80190798 485A20AC */  sw         $zero, %lo(D_801D5A48)($at)
    /* 7824 8019079C 70470608 */  j          .L80191DC0
    /* 7828 801907A0 00000000 */   nop
  jlabel .L801907A4
    /* 782C 801907A4 10000424 */  addiu      $a0, $zero, 0x10
    /* 7830 801907A8 37BC010C */  jal        func_8006F0DC
    /* 7834 801907AC 21280000 */   addu      $a1, $zero, $zero
    /* 7838 801907B0 83054010 */  beqz       $v0, .L80191DC0
    /* 783C 801907B4 02000224 */   addiu     $v0, $zero, 0x2
    /* 7840 801907B8 1D80013C */  lui        $at, %hi(D_801D7D40)
    /* 7844 801907BC 407D22AC */  sw         $v0, %lo(D_801D7D40)($at)
    /* 7848 801907C0 E102A392 */  lbu        $v1, 0x2E1($s5)
    /* 784C 801907C4 D0000224 */  addiu      $v0, $zero, 0xD0
    /* 7850 801907C8 9402A0A6 */  sh         $zero, 0x294($s5)
    /* 7854 801907CC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 7858 801907D0 21088102 */  addu       $at, $s4, $at
    /* 785C 801907D4 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 7860 801907D8 06000224 */  addiu      $v0, $zero, 0x6
    /* 7864 801907DC FF006330 */  andi       $v1, $v1, 0xFF
    /* 7868 801907E0 77056210 */  beq        $v1, $v0, .L80191DC0
    /* 786C 801907E4 E0000224 */   addiu     $v0, $zero, 0xE0
    /* 7870 801907E8 EF440608 */  j          .L801913BC
    /* 7874 801907EC 00000000 */   nop
  jlabel .L801907F0
    /* 7878 801907F0 E102A292 */  lbu        $v0, 0x2E1($s5)
    /* 787C 801907F4 06000324 */  addiu      $v1, $zero, 0x6
    /* 7880 801907F8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 7884 801907FC 06004314 */  bne        $v0, $v1, .L80190818
    /* 7888 80190800 21200000 */   addu      $a0, $zero, $zero
    /* 788C 80190804 5EFF0624 */  addiu      $a2, $zero, -0xA2
    /* 7890 80190808 1D80053C */  lui        $a1, %hi(D_801D595C)
    /* 7894 8019080C 5C59A58C */  lw         $a1, %lo(D_801D595C)($a1)
    /* 7898 80190810 0A420608 */  j          .L80190828
    /* 789C 80190814 37000724 */   addiu     $a3, $zero, 0x37
  .L80190818:
    /* 78A0 80190818 5EFF0624 */  addiu      $a2, $zero, -0xA2
    /* 78A4 8019081C 37000724 */  addiu      $a3, $zero, 0x37
    /* 78A8 80190820 1280053C */  lui        $a1, %hi(D_8011D640)
    /* 78AC 80190824 40D6A58C */  lw         $a1, %lo(D_8011D640)($a1)
  .L80190828:
    /* 78B0 80190828 4E010224 */  addiu      $v0, $zero, 0x14E
    /* 78B4 8019082C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 78B8 80190830 02000224 */  addiu      $v0, $zero, 0x2
    /* 78BC 80190834 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 78C0 80190838 03000224 */  addiu      $v0, $zero, 0x3
    /* 78C4 8019083C 2400A2AF */  sw         $v0, 0x24($sp)
    /* 78C8 80190840 2800A2AF */  sw         $v0, 0x28($sp)
    /* 78CC 80190844 01000224 */  addiu      $v0, $zero, 0x1
    /* 78D0 80190848 1400A0AF */  sw         $zero, 0x14($sp)
    /* 78D4 8019084C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 78D8 80190850 2000A0AF */  sw         $zero, 0x20($sp)
    /* 78DC 80190854 B850060C */  jal        func_801942E0
    /* 78E0 80190858 2C00A2AF */   sw        $v0, 0x2C($sp)
    /* 78E4 8019085C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 78E8 80190860 21088102 */  addu       $at, $s4, $at
    /* 78EC 80190864 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 78F0 80190868 02000324 */  addiu      $v1, $zero, 0x2
    /* 78F4 8019086C 1D80013C */  lui        $at, %hi(D_801D7D44 + 0x1)
    /* 78F8 80190870 457D23A0 */  sb         $v1, %lo(D_801D7D44 + 0x1)($at)
    /* 78FC 80190874 01004224 */  addiu      $v0, $v0, 0x1
    /* 7900 80190878 0100013C */  lui        $at, (0x10000 >> 16)
    /* 7904 8019087C 21088102 */  addu       $at, $s4, $at
    /* 7908 80190880 DAAB22A0 */  sb         $v0, -0x5426($at)
  jlabel .L80190884
    /* 790C 80190884 214E060C */  jal        func_80193884
    /* 7910 80190888 00000000 */   nop
    /* 7914 8019088C 4C054014 */  bnez       $v0, .L80191DC0
    /* 7918 80190890 00000000 */   nop
    /* 791C 80190894 9147060C */  jal        func_80191E44
    /* 7920 80190898 00000000 */   nop
    /* 7924 8019089C 1F004010 */  beqz       $v0, .L8019091C
    /* 7928 801908A0 06000324 */   addiu     $v1, $zero, 0x6
    /* 792C 801908A4 E102A292 */  lbu        $v0, 0x2E1($s5)
    /* 7930 801908A8 00000000 */  nop
    /* 7934 801908AC FF004230 */  andi       $v0, $v0, 0xFF
    /* 7938 801908B0 27054314 */  bne        $v0, $v1, .L80191D50
    /* 793C 801908B4 02000424 */   addiu     $a0, $zero, 0x2
    /* 7940 801908B8 08500524 */  addiu      $a1, $zero, 0x5008
    /* 7944 801908BC 0050063C */  lui        $a2, (0x50000000 >> 16)
    /* 7948 801908C0 21380000 */  addu       $a3, $zero, $zero
    /* 794C 801908C4 04000224 */  addiu      $v0, $zero, 0x4
    /* 7950 801908C8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 7954 801908CC 21088102 */  addu       $at, $s4, $at
    /* 7958 801908D0 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 795C 801908D4 17000224 */  addiu      $v0, $zero, 0x17
    /* 7960 801908D8 1400A2AF */  sw         $v0, 0x14($sp)
    /* 7964 801908DC 01000224 */  addiu      $v0, $zero, 0x1
    /* 7968 801908E0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 796C 801908E4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 7970 801908E8 B873000C */  jal        func_8001CEE0
    /* 7974 801908EC 1C00A2AF */   sw        $v0, 0x1C($sp)
    /* 7978 801908F0 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 797C 801908F4 38D66390 */  lbu        $v1, %lo(D_800AD638)($v1)
    /* 7980 801908F8 03000224 */  addiu      $v0, $zero, 0x3
    /* 7984 801908FC 105E82AE */  sw         $v0, 0x5E10($s4)
    /* 7988 80190900 C0100300 */  sll        $v0, $v1, 3
  .L80190904:
    /* 798C 80190904 23104300 */  subu       $v0, $v0, $v1
    /* 7990 80190908 40100200 */  sll        $v0, $v0, 1
    /* 7994 8019090C 644E060C */  jal        func_80193990
    /* 7998 80190910 225E82A6 */   sh        $v0, 0x5E22($s4)
    /* 799C 80190914 70470608 */  j          .L80191DC0
    /* 79A0 80190918 00000000 */   nop
  .L8019091C:
    /* 79A4 8019091C 3402A296 */  lhu        $v0, 0x234($s5)
    /* 79A8 80190920 00000000 */  nop
    /* 79AC 80190924 00084230 */  andi       $v0, $v0, 0x800
    /* 79B0 80190928 25054010 */  beqz       $v0, .L80191DC0
    /* 79B4 8019092C 00000000 */   nop
    /* 79B8 80190930 88AD020C */  jal        func_800AB620
    /* 79BC 80190934 28050424 */   addiu     $a0, $zero, 0x528
    /* 79C0 80190938 6549060C */  jal        func_80192594
    /* 79C4 8019093C 21200000 */   addu      $a0, $zero, $zero
    /* 79C8 80190940 01000224 */  addiu      $v0, $zero, 0x1
    /* 79CC 80190944 1D80013C */  lui        $at, %hi(D_801D1B1A)
    /* 79D0 80190948 1A1B22A0 */  sb         $v0, %lo(D_801D1B1A)($at)
    /* 79D4 8019094C 6D4A060C */  jal        func_801929B4
    /* 79D8 80190950 21200000 */   addu      $a0, $zero, $zero
    /* 79DC 80190954 21200000 */  addu       $a0, $zero, $zero
    /* 79E0 80190958 5EFF0624 */  addiu      $a2, $zero, -0xA2
    /* 79E4 8019095C 37000724 */  addiu      $a3, $zero, 0x37
    /* 79E8 80190960 1280053C */  lui        $a1, %hi(D_8011D63C)
    /* 79EC 80190964 3CD6A58C */  lw         $a1, %lo(D_8011D63C)($a1)
    /* 79F0 80190968 4E010224 */  addiu      $v0, $zero, 0x14E
    /* 79F4 8019096C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 79F8 80190970 02000224 */  addiu      $v0, $zero, 0x2
    /* 79FC 80190974 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 7A00 80190978 03000224 */  addiu      $v0, $zero, 0x3
    /* 7A04 8019097C 2400A2AF */  sw         $v0, 0x24($sp)
    /* 7A08 80190980 2800A2AF */  sw         $v0, 0x28($sp)
    /* 7A0C 80190984 01000224 */  addiu      $v0, $zero, 0x1
    /* 7A10 80190988 1400A0AF */  sw         $zero, 0x14($sp)
    /* 7A14 8019098C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 7A18 80190990 2000A0AF */  sw         $zero, 0x20($sp)
    /* 7A1C 80190994 B850060C */  jal        func_801942E0
    /* 7A20 80190998 2C00A2AF */   sw        $v0, 0x2C($sp)
    /* 7A24 8019099C 0A49060C */  jal        func_80192428
    /* 7A28 801909A0 00000000 */   nop
    /* 7A2C 801909A4 A047060C */  jal        func_80191E80
    /* 7A30 801909A8 00000000 */   nop
    /* 7A34 801909AC 22000224 */  addiu      $v0, $zero, 0x22
    /* 7A38 801909B0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 7A3C 801909B4 21088102 */  addu       $at, $s4, $at
    /* 7A40 801909B8 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 7A44 801909BC 02000224 */  addiu      $v0, $zero, 0x2
    /* 7A48 801909C0 1D80013C */  lui        $at, %hi(D_801D7D44 + 0x1)
    /* 7A4C 801909C4 457D22A0 */  sb         $v0, %lo(D_801D7D44 + 0x1)($at)
    /* 7A50 801909C8 1D80013C */  lui        $at, %hi(D_801D5A48)
    /* 7A54 801909CC 485A20AC */  sw         $zero, %lo(D_801D5A48)($at)
    /* 7A58 801909D0 70470608 */  j          .L80191DC0
    /* 7A5C 801909D4 00000000 */   nop
  jlabel .L801909D8
    /* 7A60 801909D8 21200000 */  addu       $a0, $zero, $zero
    /* 7A64 801909DC 5EFF0624 */  addiu      $a2, $zero, -0xA2
    /* 7A68 801909E0 37000724 */  addiu      $a3, $zero, 0x37
    /* 7A6C 801909E4 1280053C */  lui        $a1, %hi(D_8011D644)
    /* 7A70 801909E8 44D6A58C */  lw         $a1, %lo(D_8011D644)($a1)
    /* 7A74 801909EC 4E010224 */  addiu      $v0, $zero, 0x14E
    /* 7A78 801909F0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 7A7C 801909F4 02000224 */  addiu      $v0, $zero, 0x2
    /* 7A80 801909F8 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 7A84 801909FC 03000224 */  addiu      $v0, $zero, 0x3
    /* 7A88 80190A00 2400A2AF */  sw         $v0, 0x24($sp)
    /* 7A8C 80190A04 2800A2AF */  sw         $v0, 0x28($sp)
    /* 7A90 80190A08 01000224 */  addiu      $v0, $zero, 0x1
    /* 7A94 80190A0C 1400A0AF */  sw         $zero, 0x14($sp)
    /* 7A98 80190A10 1800A0AF */  sw         $zero, 0x18($sp)
    /* 7A9C 80190A14 2000A0AF */  sw         $zero, 0x20($sp)
    /* 7AA0 80190A18 B850060C */  jal        func_801942E0
    /* 7AA4 80190A1C 2C00A2AF */   sw        $v0, 0x2C($sp)
    /* 7AA8 80190A20 60460608 */  j          .L80191980
    /* 7AAC 80190A24 00000000 */   nop
  jlabel .L80190A28
    /* 7AB0 80190A28 214E060C */  jal        func_80193884
    /* 7AB4 80190A2C 00000000 */   nop
    /* 7AB8 80190A30 E3044014 */  bnez       $v0, .L80191DC0
    /* 7ABC 80190A34 00000000 */   nop
    /* 7AC0 80190A38 9147060C */  jal        func_80191E44
    /* 7AC4 80190A3C 00000000 */   nop
    /* 7AC8 80190A40 C3044014 */  bnez       $v0, .L80191D50
    /* 7ACC 80190A44 00000000 */   nop
    /* 7AD0 80190A48 3402A296 */  lhu        $v0, 0x234($s5)
    /* 7AD4 80190A4C 00000000 */  nop
    /* 7AD8 80190A50 00084230 */  andi       $v0, $v0, 0x800
    /* 7ADC 80190A54 DA044010 */  beqz       $v0, .L80191DC0
    /* 7AE0 80190A58 00000000 */   nop
    /* 7AE4 80190A5C 6549060C */  jal        func_80192594
    /* 7AE8 80190A60 21200000 */   addu      $a0, $zero, $zero
    /* 7AEC 80190A64 21200000 */  addu       $a0, $zero, $zero
    /* 7AF0 80190A68 5EFF0624 */  addiu      $a2, $zero, -0xA2
    /* 7AF4 80190A6C 37000724 */  addiu      $a3, $zero, 0x37
    /* 7AF8 80190A70 1280053C */  lui        $a1, %hi(D_8011D648)
    /* 7AFC 80190A74 48D6A58C */  lw         $a1, %lo(D_8011D648)($a1)
    /* 7B00 80190A78 4E010224 */  addiu      $v0, $zero, 0x14E
    /* 7B04 80190A7C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 7B08 80190A80 02000224 */  addiu      $v0, $zero, 0x2
    /* 7B0C 80190A84 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 7B10 80190A88 03000224 */  addiu      $v0, $zero, 0x3
    /* 7B14 80190A8C 2400A2AF */  sw         $v0, 0x24($sp)
    /* 7B18 80190A90 2800A2AF */  sw         $v0, 0x28($sp)
    /* 7B1C 80190A94 01000224 */  addiu      $v0, $zero, 0x1
    /* 7B20 80190A98 1400A0AF */  sw         $zero, 0x14($sp)
    /* 7B24 80190A9C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 7B28 80190AA0 2000A0AF */  sw         $zero, 0x20($sp)
    /* 7B2C 80190AA4 B850060C */  jal        func_801942E0
    /* 7B30 80190AA8 2C00A2AF */   sw        $v0, 0x2C($sp)
    /* 7B34 80190AAC 88AD020C */  jal        func_800AB620
    /* 7B38 80190AB0 28050424 */   addiu     $a0, $zero, 0x528
    /* 7B3C 80190AB4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 7B40 80190AB8 21088102 */  addu       $at, $s4, $at
    /* 7B44 80190ABC DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 7B48 80190AC0 0E000324 */  addiu      $v1, $zero, 0xE
    /* 7B4C 80190AC4 63460608 */  j          .L8019198C
    /* 7B50 80190AC8 9402A3A6 */   sh        $v1, 0x294($s5)
  jlabel .L80190ACC
    /* 7B54 80190ACC 9402A296 */  lhu        $v0, 0x294($s5)
    /* 7B58 80190AD0 00000000 */  nop
    /* 7B5C 80190AD4 AC004014 */  bnez       $v0, .L80190D88
    /* 7B60 80190AD8 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 7B64 80190ADC 06000224 */  addiu      $v0, $zero, 0x6
    /* 7B68 80190AE0 1D80013C */  lui        $at, %hi(D_801D7D44 + 0x1)
    /* 7B6C 80190AE4 457D22A0 */  sb         $v0, %lo(D_801D7D44 + 0x1)($at)
    /* 7B70 80190AE8 99000224 */  addiu      $v0, $zero, 0x99
    /* 7B74 80190AEC 1D80013C */  lui        $at, %hi(D_801D1B24)
    /* 7B78 80190AF0 241B20A0 */  sb         $zero, %lo(D_801D1B24)($at)
    /* 7B7C 80190AF4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 7B80 80190AF8 21088102 */  addu       $at, $s4, $at
    /* 7B84 80190AFC DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 7B88 80190B00 70470608 */  j          .L80191DC0
    /* 7B8C 80190B04 00000000 */   nop
  jlabel .L80190B08
    /* 7B90 80190B08 21200000 */  addu       $a0, $zero, $zero
    /* 7B94 80190B0C 5EFF0624 */  addiu      $a2, $zero, -0xA2
    /* 7B98 80190B10 37000724 */  addiu      $a3, $zero, 0x37
    /* 7B9C 80190B14 1280053C */  lui        $a1, %hi(D_8011D614)
    /* 7BA0 80190B18 14D6A58C */  lw         $a1, %lo(D_8011D614)($a1)
    /* 7BA4 80190B1C 4E010224 */  addiu      $v0, $zero, 0x14E
    /* 7BA8 80190B20 EC5D80A2 */  sb         $zero, 0x5DEC($s4)
    /* 7BAC 80190B24 3C5E80A2 */  sb         $zero, 0x5E3C($s4)
    /* 7BB0 80190B28 1000A2AF */  sw         $v0, 0x10($sp)
    /* 7BB4 80190B2C 02000224 */  addiu      $v0, $zero, 0x2
    /* 7BB8 80190B30 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 7BBC 80190B34 03000224 */  addiu      $v0, $zero, 0x3
    /* 7BC0 80190B38 2400A2AF */  sw         $v0, 0x24($sp)
    /* 7BC4 80190B3C 2800A2AF */  sw         $v0, 0x28($sp)
    /* 7BC8 80190B40 01000224 */  addiu      $v0, $zero, 0x1
    /* 7BCC 80190B44 1400A0AF */  sw         $zero, 0x14($sp)
    /* 7BD0 80190B48 1800A0AF */  sw         $zero, 0x18($sp)
    /* 7BD4 80190B4C 2000A0AF */  sw         $zero, 0x20($sp)
    /* 7BD8 80190B50 B850060C */  jal        func_801942E0
    /* 7BDC 80190B54 2C00A2AF */   sw        $v0, 0x2C($sp)
    /* 7BE0 80190B58 6D4A060C */  jal        func_801929B4
    /* 7BE4 80190B5C 21200000 */   addu      $a0, $zero, $zero
    /* 7BE8 80190B60 60460608 */  j          .L80191980
    /* 7BEC 80190B64 00000000 */   nop
  jlabel .L80190B68
    /* 7BF0 80190B68 214E060C */  jal        func_80193884
    /* 7BF4 80190B6C 00000000 */   nop
    /* 7BF8 80190B70 93044014 */  bnez       $v0, .L80191DC0
    /* 7BFC 80190B74 00000000 */   nop
    /* 7C00 80190B78 1FBC010C */  jal        func_8006F07C
    /* 7C04 80190B7C 10000424 */   addiu     $a0, $zero, 0x10
    /* 7C08 80190B80 8F044010 */  beqz       $v0, .L80191DC0
    /* 7C0C 80190B84 00000000 */   nop
    /* 7C10 80190B88 3402A296 */  lhu        $v0, 0x234($s5)
    /* 7C14 80190B8C 00000000 */  nop
    /* 7C18 80190B90 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* 7C1C 80190B94 8A044010 */  beqz       $v0, .L80191DC0
    /* 7C20 80190B98 00000000 */   nop
    /* 7C24 80190B9C 88AD020C */  jal        func_800AB620
    /* 7C28 80190BA0 29050424 */   addiu     $a0, $zero, 0x529
    /* 7C2C 80190BA4 EF440608 */  j          .L801913BC
    /* 7C30 80190BA8 E0000224 */   addiu     $v0, $zero, 0xE0
  jlabel .L80190BAC
    /* 7C34 80190BAC 08000424 */  addiu      $a0, $zero, 0x8
    /* 7C38 80190BB0 0A500524 */  addiu      $a1, $zero, 0x500A
    /* 7C3C 80190BB4 21300000 */  addu       $a2, $zero, $zero
    /* 7C40 80190BB8 21380000 */  addu       $a3, $zero, $zero
    /* 7C44 80190BBC 1C001324 */  addiu      $s3, $zero, 0x1C
    /* 7C48 80190BC0 00101124 */  addiu      $s1, $zero, 0x1000
    /* 7C4C 80190BC4 80001024 */  addiu      $s0, $zero, 0x80
    /* 7C50 80190BC8 03001224 */  addiu      $s2, $zero, 0x3
    /* 7C54 80190BCC 1D80013C */  lui        $at, %hi(D_801D7D56)
    /* 7C58 80190BD0 567D20A4 */  sh         $zero, %lo(D_801D7D56)($at)
    /* 7C5C 80190BD4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 7C60 80190BD8 21088102 */  addu       $at, $s4, $at
    /* 7C64 80190BDC 1E8F20A0 */  sb         $zero, -0x70E2($at)
    /* 7C68 80190BE0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 7C6C 80190BE4 1400B3AF */  sw         $s3, 0x14($sp)
    /* 7C70 80190BE8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 7C74 80190BEC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 7C78 80190BF0 2000B1AF */  sw         $s1, 0x20($sp)
    /* 7C7C 80190BF4 2400A0AF */  sw         $zero, 0x24($sp)
    /* 7C80 80190BF8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 7C84 80190BFC 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 7C88 80190C00 3000B0AF */  sw         $s0, 0x30($sp)
    /* 7C8C 80190C04 3400B0AF */  sw         $s0, 0x34($sp)
    /* 7C90 80190C08 3800A0AF */  sw         $zero, 0x38($sp)
    /* 7C94 80190C0C 3C00B2AF */  sw         $s2, 0x3C($sp)
    /* 7C98 80190C10 ED4F060C */  jal        func_80193FB4
    /* 7C9C 80190C14 4000A0AF */   sw        $zero, 0x40($sp)
    /* 7CA0 80190C18 09000424 */  addiu      $a0, $zero, 0x9
    /* 7CA4 80190C1C 0B500524 */  addiu      $a1, $zero, 0x500B
    /* 7CA8 80190C20 21300000 */  addu       $a2, $zero, $zero
    /* 7CAC 80190C24 21380000 */  addu       $a3, $zero, $zero
    /* 7CB0 80190C28 1000A0AF */  sw         $zero, 0x10($sp)
    /* 7CB4 80190C2C 1400B3AF */  sw         $s3, 0x14($sp)
    /* 7CB8 80190C30 1800A0AF */  sw         $zero, 0x18($sp)
    /* 7CBC 80190C34 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 7CC0 80190C38 2000B1AF */  sw         $s1, 0x20($sp)
    /* 7CC4 80190C3C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 7CC8 80190C40 2800A0AF */  sw         $zero, 0x28($sp)
    /* 7CCC 80190C44 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 7CD0 80190C48 3000B0AF */  sw         $s0, 0x30($sp)
    /* 7CD4 80190C4C 3400B0AF */  sw         $s0, 0x34($sp)
    /* 7CD8 80190C50 3800A0AF */  sw         $zero, 0x38($sp)
    /* 7CDC 80190C54 3C00B2AF */  sw         $s2, 0x3C($sp)
    /* 7CE0 80190C58 ED4F060C */  jal        func_80193FB4
    /* 7CE4 80190C5C 4000A0AF */   sw        $zero, 0x40($sp)
    /* 7CE8 80190C60 21200000 */  addu       $a0, $zero, $zero
    /* 7CEC 80190C64 5EFF0624 */  addiu      $a2, $zero, -0xA2
    /* 7CF0 80190C68 37000724 */  addiu      $a3, $zero, 0x37
    /* 7CF4 80190C6C 1280053C */  lui        $a1, %hi(D_8011D618)
    /* 7CF8 80190C70 18D6A58C */  lw         $a1, %lo(D_8011D618)($a1)
    /* 7CFC 80190C74 4E010224 */  addiu      $v0, $zero, 0x14E
    /* 7D00 80190C78 EC5D80A2 */  sb         $zero, 0x5DEC($s4)
    /* 7D04 80190C7C 3C5E80A2 */  sb         $zero, 0x5E3C($s4)
    /* 7D08 80190C80 1000A2AF */  sw         $v0, 0x10($sp)
    /* 7D0C 80190C84 02000224 */  addiu      $v0, $zero, 0x2
    /* 7D10 80190C88 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 7D14 80190C8C 01000224 */  addiu      $v0, $zero, 0x1
    /* 7D18 80190C90 1400A0AF */  sw         $zero, 0x14($sp)
    /* 7D1C 80190C94 1800A0AF */  sw         $zero, 0x18($sp)
    /* 7D20 80190C98 2000A0AF */  sw         $zero, 0x20($sp)
    /* 7D24 80190C9C 2400B2AF */  sw         $s2, 0x24($sp)
    /* 7D28 80190CA0 2800B2AF */  sw         $s2, 0x28($sp)
    /* 7D2C 80190CA4 B850060C */  jal        func_801942E0
    /* 7D30 80190CA8 2C00A2AF */   sw        $v0, 0x2C($sp)
    /* 7D34 80190CAC 60460608 */  j          .L80191980
    /* 7D38 80190CB0 00000000 */   nop
  jlabel .L80190CB4
    /* 7D3C 80190CB4 1FBC010C */  jal        func_8006F07C
    /* 7D40 80190CB8 10000424 */   addiu     $a0, $zero, 0x10
    /* 7D44 80190CBC 40044010 */  beqz       $v0, .L80191DC0
    /* 7D48 80190CC0 00000000 */   nop
    /* 7D4C 80190CC4 9147060C */  jal        func_80191E44
    /* 7D50 80190CC8 00000000 */   nop
    /* 7D54 80190CCC BB014014 */  bnez       $v0, .L801913BC
    /* 7D58 80190CD0 E0000224 */   addiu     $v0, $zero, 0xE0
    /* 7D5C 80190CD4 3402A296 */  lhu        $v0, 0x234($s5)
    /* 7D60 80190CD8 00000000 */  nop
    /* 7D64 80190CDC 24105700 */  and        $v0, $v0, $s7
    /* 7D68 80190CE0 37044010 */  beqz       $v0, .L80191DC0
    /* 7D6C 80190CE4 00000000 */   nop
    /* 7D70 80190CE8 88AD020C */  jal        func_800AB620
    /* 7D74 80190CEC 28050424 */   addiu     $a0, $zero, 0x528
    /* 7D78 80190CF0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 7D7C 80190CF4 21088102 */  addu       $at, $s4, $at
    /* 7D80 80190CF8 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 7D84 80190CFC 1D80013C */  lui        $at, %hi(D_801D1B20)
    /* 7D88 80190D00 201B20AC */  sw         $zero, %lo(D_801D1B20)($at)
    /* 7D8C 80190D04 01004224 */  addiu      $v0, $v0, 0x1
    /* 7D90 80190D08 0100013C */  lui        $at, (0x10000 >> 16)
    /* 7D94 80190D0C 21088102 */  addu       $at, $s4, $at
    /* 7D98 80190D10 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 7D9C 80190D14 6D4A060C */  jal        func_801929B4
    /* 7DA0 80190D18 21200000 */   addu      $a0, $zero, $zero
    /* 7DA4 80190D1C 70470608 */  j          .L80191DC0
    /* 7DA8 80190D20 00000000 */   nop
  jlabel .L80190D24
    /* 7DAC 80190D24 10000424 */  addiu      $a0, $zero, 0x10
    /* 7DB0 80190D28 37BC010C */  jal        func_8006F0DC
    /* 7DB4 80190D2C 21280000 */   addu      $a1, $zero, $zero
    /* 7DB8 80190D30 23044010 */  beqz       $v0, .L80191DC0
    /* 7DBC 80190D34 00000000 */   nop
    /* 7DC0 80190D38 0100013C */  lui        $at, (0x10000 >> 16)
    /* 7DC4 80190D3C 21088102 */  addu       $at, $s4, $at
    /* 7DC8 80190D40 DAAB20A0 */  sb         $zero, -0x5426($at)
    /* 7DCC 80190D44 70470608 */  j          .L80191DC0
    /* 7DD0 80190D48 00000000 */   nop
  jlabel .L80190D4C
    /* 7DD4 80190D4C 9402A296 */  lhu        $v0, 0x294($s5)
    /* 7DD8 80190D50 00000000 */  nop
    /* 7DDC 80190D54 0C004014 */  bnez       $v0, .L80190D88
    /* 7DE0 80190D58 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 7DE4 80190D5C 02000224 */  addiu      $v0, $zero, 0x2
    /* 7DE8 80190D60 1D80013C */  lui        $at, %hi(D_801D7D40)
    /* 7DEC 80190D64 407D22AC */  sw         $v0, %lo(D_801D7D40)($at)
    /* 7DF0 80190D68 D0000224 */  addiu      $v0, $zero, 0xD0
    /* 7DF4 80190D6C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 7DF8 80190D70 21088102 */  addu       $at, $s4, $at
    /* 7DFC 80190D74 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 7E00 80190D78 1D80013C */  lui        $at, %hi(D_801D7D44)
    /* 7E04 80190D7C 447D20A0 */  sb         $zero, %lo(D_801D7D44)($at)
    /* 7E08 80190D80 70470608 */  j          .L80191DC0
    /* 7E0C 80190D84 00000000 */   nop
  .L80190D88:
    /* 7E10 80190D88 70470608 */  j          .L80191DC0
    /* 7E14 80190D8C 9402A2A6 */   sh        $v0, 0x294($s5)
  jlabel .L80190D90
    /* 7E18 80190D90 08000424 */  addiu      $a0, $zero, 0x8
    /* 7E1C 80190D94 0A500524 */  addiu      $a1, $zero, 0x500A
    /* 7E20 80190D98 21300000 */  addu       $a2, $zero, $zero
    /* 7E24 80190D9C 21380000 */  addu       $a3, $zero, $zero
    /* 7E28 80190DA0 1C001324 */  addiu      $s3, $zero, 0x1C
    /* 7E2C 80190DA4 00101124 */  addiu      $s1, $zero, 0x1000
    /* 7E30 80190DA8 80001024 */  addiu      $s0, $zero, 0x80
    /* 7E34 80190DAC 03001224 */  addiu      $s2, $zero, 0x3
    /* 7E38 80190DB0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 7E3C 80190DB4 1400B3AF */  sw         $s3, 0x14($sp)
    /* 7E40 80190DB8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 7E44 80190DBC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 7E48 80190DC0 2000B1AF */  sw         $s1, 0x20($sp)
    /* 7E4C 80190DC4 2400A0AF */  sw         $zero, 0x24($sp)
    /* 7E50 80190DC8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 7E54 80190DCC 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 7E58 80190DD0 3000B0AF */  sw         $s0, 0x30($sp)
    /* 7E5C 80190DD4 3400B0AF */  sw         $s0, 0x34($sp)
    /* 7E60 80190DD8 3800A0AF */  sw         $zero, 0x38($sp)
    /* 7E64 80190DDC 3C00B2AF */  sw         $s2, 0x3C($sp)
    /* 7E68 80190DE0 ED4F060C */  jal        func_80193FB4
    /* 7E6C 80190DE4 4000A0AF */   sw        $zero, 0x40($sp)
    /* 7E70 80190DE8 09000424 */  addiu      $a0, $zero, 0x9
    /* 7E74 80190DEC 0B500524 */  addiu      $a1, $zero, 0x500B
    /* 7E78 80190DF0 21300000 */  addu       $a2, $zero, $zero
    /* 7E7C 80190DF4 21380000 */  addu       $a3, $zero, $zero
    /* 7E80 80190DF8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 7E84 80190DFC 1400B3AF */  sw         $s3, 0x14($sp)
    /* 7E88 80190E00 1800A0AF */  sw         $zero, 0x18($sp)
    /* 7E8C 80190E04 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 7E90 80190E08 2000B1AF */  sw         $s1, 0x20($sp)
    /* 7E94 80190E0C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 7E98 80190E10 2800A0AF */  sw         $zero, 0x28($sp)
    /* 7E9C 80190E14 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 7EA0 80190E18 3000B0AF */  sw         $s0, 0x30($sp)
    /* 7EA4 80190E1C 3400B0AF */  sw         $s0, 0x34($sp)
    /* 7EA8 80190E20 3800A0AF */  sw         $zero, 0x38($sp)
    /* 7EAC 80190E24 3C00B2AF */  sw         $s2, 0x3C($sp)
    /* 7EB0 80190E28 ED4F060C */  jal        func_80193FB4
    /* 7EB4 80190E2C 4000A0AF */   sw        $zero, 0x40($sp)
    /* 7EB8 80190E30 21200000 */  addu       $a0, $zero, $zero
    /* 7EBC 80190E34 6549060C */  jal        func_80192594
    /* 7EC0 80190E38 3C5E80A2 */   sb        $zero, 0x5E3C($s4)
  .L80190E3C:
    /* 7EC4 80190E3C C849060C */  jal        func_80192720
    /* 7EC8 80190E40 21200000 */   addu      $a0, $zero, $zero
    /* 7ECC 80190E44 FDFF4010 */  beqz       $v0, .L80190E3C
    /* 7ED0 80190E48 21200000 */   addu      $a0, $zero, $zero
    /* 7ED4 80190E4C 5EFF0624 */  addiu      $a2, $zero, -0xA2
    /* 7ED8 80190E50 37000724 */  addiu      $a3, $zero, 0x37
    /* 7EDC 80190E54 1280053C */  lui        $a1, %hi(D_8011D64C)
    /* 7EE0 80190E58 4CD6A58C */  lw         $a1, %lo(D_8011D64C)($a1)
    /* 7EE4 80190E5C 4E010224 */  addiu      $v0, $zero, 0x14E
    /* 7EE8 80190E60 1000A2AF */  sw         $v0, 0x10($sp)
    /* 7EEC 80190E64 02000224 */  addiu      $v0, $zero, 0x2
    /* 7EF0 80190E68 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 7EF4 80190E6C 03000224 */  addiu      $v0, $zero, 0x3
    /* 7EF8 80190E70 2400A2AF */  sw         $v0, 0x24($sp)
    /* 7EFC 80190E74 2800A2AF */  sw         $v0, 0x28($sp)
    /* 7F00 80190E78 01000224 */  addiu      $v0, $zero, 0x1
    /* 7F04 80190E7C 1400A0AF */  sw         $zero, 0x14($sp)
    /* 7F08 80190E80 1800A0AF */  sw         $zero, 0x18($sp)
    /* 7F0C 80190E84 2000A0AF */  sw         $zero, 0x20($sp)
    /* 7F10 80190E88 B850060C */  jal        func_801942E0
    /* 7F14 80190E8C 2C00A2AF */   sw        $v0, 0x2C($sp)
    /* 7F18 80190E90 60460608 */  j          .L80191980
    /* 7F1C 80190E94 00000000 */   nop
  jlabel .L80190E98
    /* 7F20 80190E98 214E060C */  jal        func_80193884
    /* 7F24 80190E9C 00000000 */   nop
    /* 7F28 80190EA0 C7034014 */  bnez       $v0, .L80191DC0
    /* 7F2C 80190EA4 00000000 */   nop
    /* 7F30 80190EA8 1FBC010C */  jal        func_8006F07C
    /* 7F34 80190EAC 10000424 */   addiu     $a0, $zero, 0x10
    /* 7F38 80190EB0 C3034010 */  beqz       $v0, .L80191DC0
    /* 7F3C 80190EB4 00000000 */   nop
    /* 7F40 80190EB8 9147060C */  jal        func_80191E44
    /* 7F44 80190EBC 00000000 */   nop
    /* 7F48 80190EC0 3E014014 */  bnez       $v0, .L801913BC
    /* 7F4C 80190EC4 E0000224 */   addiu     $v0, $zero, 0xE0
    /* 7F50 80190EC8 3402A396 */  lhu        $v1, 0x234($s5)
    /* 7F54 80190ECC 00000000 */  nop
    /* 7F58 80190ED0 24107700 */  and        $v0, $v1, $s7
    /* 7F5C 80190ED4 0D004010 */  beqz       $v0, .L80190F0C
    /* 7F60 80190ED8 00086230 */   andi      $v0, $v1, 0x800
    /* 7F64 80190EDC 88AD020C */  jal        func_800AB620
    /* 7F68 80190EE0 28050424 */   addiu     $a0, $zero, 0x528
    /* 7F6C 80190EE4 1D80013C */  lui        $at, %hi(D_801D1B20)
    /* 7F70 80190EE8 201B20AC */  sw         $zero, %lo(D_801D1B20)($at)
    /* 7F74 80190EEC 6D4A060C */  jal        func_801929B4
    /* 7F78 80190EF0 21200000 */   addu      $a0, $zero, $zero
    /* 7F7C 80190EF4 62000224 */  addiu      $v0, $zero, 0x62
    /* 7F80 80190EF8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 7F84 80190EFC 21088102 */  addu       $at, $s4, $at
    /* 7F88 80190F00 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 7F8C 80190F04 70470608 */  j          .L80191DC0
    /* 7F90 80190F08 00000000 */   nop
  .L80190F0C:
    /* 7F94 80190F0C AC034010 */  beqz       $v0, .L80191DC0
    /* 7F98 80190F10 00000000 */   nop
    /* 7F9C 80190F14 88AD020C */  jal        func_800AB620
    /* 7FA0 80190F18 28050424 */   addiu     $a0, $zero, 0x528
    /* 7FA4 80190F1C 21200000 */  addu       $a0, $zero, $zero
    /* 7FA8 80190F20 5EFF0624 */  addiu      $a2, $zero, -0xA2
    /* 7FAC 80190F24 37000724 */  addiu      $a3, $zero, 0x37
    /* 7FB0 80190F28 1280053C */  lui        $a1, %hi(D_8011D634)
    /* 7FB4 80190F2C 34D6A58C */  lw         $a1, %lo(D_8011D634)($a1)
    /* 7FB8 80190F30 4E010224 */  addiu      $v0, $zero, 0x14E
    /* 7FBC 80190F34 1000A2AF */  sw         $v0, 0x10($sp)
    /* 7FC0 80190F38 02000224 */  addiu      $v0, $zero, 0x2
    /* 7FC4 80190F3C 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 7FC8 80190F40 03000224 */  addiu      $v0, $zero, 0x3
    /* 7FCC 80190F44 2400A2AF */  sw         $v0, 0x24($sp)
    /* 7FD0 80190F48 2800A2AF */  sw         $v0, 0x28($sp)
    /* 7FD4 80190F4C 01000224 */  addiu      $v0, $zero, 0x1
    /* 7FD8 80190F50 1400A0AF */  sw         $zero, 0x14($sp)
    /* 7FDC 80190F54 1800A0AF */  sw         $zero, 0x18($sp)
    /* 7FE0 80190F58 2000A0AF */  sw         $zero, 0x20($sp)
    /* 7FE4 80190F5C B850060C */  jal        func_801942E0
    /* 7FE8 80190F60 2C00A2AF */   sw        $v0, 0x2C($sp)
    /* 7FEC 80190F64 0100013C */  lui        $at, (0x10000 >> 16)
    /* 7FF0 80190F68 21088102 */  addu       $at, $s4, $at
    /* 7FF4 80190F6C DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 7FF8 80190F70 08000324 */  addiu      $v1, $zero, 0x8
    /* 7FFC 80190F74 63460608 */  j          .L8019198C
    /* 8000 80190F78 9402A3A6 */   sh        $v1, 0x294($s5)
  jlabel .L80190F7C
    /* 8004 80190F7C 9402A296 */  lhu        $v0, 0x294($s5)
    /* 8008 80190F80 00000000 */  nop
    /* 800C 80190F84 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 8010 80190F88 9402A2A6 */  sh         $v0, 0x294($s5)
    /* 8014 80190F8C FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 8018 80190F90 8B034014 */  bnez       $v0, .L80191DC0
    /* 801C 80190F94 00000000 */   nop
    /* 8020 80190F98 9317030C */  jal        func_800C5E4C
    /* 8024 80190F9C 21200000 */   addu      $a0, $zero, $zero
    /* 8028 80190FA0 21184000 */  addu       $v1, $v0, $zero
    /* 802C 80190FA4 01000224 */  addiu      $v0, $zero, 0x1
    /* 8030 80190FA8 22006214 */  bne        $v1, $v0, .L80191034
    /* 8034 80190FAC 21200000 */   addu      $a0, $zero, $zero
    /* 8038 80190FB0 5EFF0624 */  addiu      $a2, $zero, -0xA2
    /* 803C 80190FB4 37000724 */  addiu      $a3, $zero, 0x37
    /* 8040 80190FB8 1280053C */  lui        $a1, %hi(D_8011D63C)
    /* 8044 80190FBC 3CD6A58C */  lw         $a1, %lo(D_8011D63C)($a1)
    /* 8048 80190FC0 4E010224 */  addiu      $v0, $zero, 0x14E
    /* 804C 80190FC4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8050 80190FC8 02000224 */  addiu      $v0, $zero, 0x2
    /* 8054 80190FCC 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 8058 80190FD0 03000224 */  addiu      $v0, $zero, 0x3
    /* 805C 80190FD4 1400A0AF */  sw         $zero, 0x14($sp)
    /* 8060 80190FD8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 8064 80190FDC 2000A0AF */  sw         $zero, 0x20($sp)
    /* 8068 80190FE0 2400A2AF */  sw         $v0, 0x24($sp)
    /* 806C 80190FE4 2800A2AF */  sw         $v0, 0x28($sp)
    /* 8070 80190FE8 B850060C */  jal        func_801942E0
    /* 8074 80190FEC 2C00A3AF */   sw        $v1, 0x2C($sp)
    /* 8078 80190FF0 0A49060C */  jal        func_80192428
    /* 807C 80190FF4 00000000 */   nop
    /* 8080 80190FF8 A047060C */  jal        func_80191E80
    /* 8084 80190FFC 00000000 */   nop
    /* 8088 80191000 6D4A060C */  jal        func_801929B4
    /* 808C 80191004 21200000 */   addu      $a0, $zero, $zero
    /* 8090 80191008 22000224 */  addiu      $v0, $zero, 0x22
    /* 8094 8019100C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 8098 80191010 21088102 */  addu       $at, $s4, $at
    /* 809C 80191014 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 80A0 80191018 02000224 */  addiu      $v0, $zero, 0x2
    /* 80A4 8019101C 1D80013C */  lui        $at, %hi(D_801D7D44 + 0x1)
    /* 80A8 80191020 457D22A0 */  sb         $v0, %lo(D_801D7D44 + 0x1)($at)
    /* 80AC 80191024 1D80013C */  lui        $at, %hi(D_801D1B24 + 0x1)
    /* 80B0 80191028 251B20A0 */  sb         $zero, %lo(D_801D1B24 + 0x1)($at)
    /* 80B4 8019102C 70470608 */  j          .L80191DC0
    /* 80B8 80191030 00000000 */   nop
  .L80191034:
    /* 80BC 80191034 1D80023C */  lui        $v0, %hi(D_801D1B24 + 0x1)
    /* 80C0 80191038 251B4290 */  lbu        $v0, %lo(D_801D1B24 + 0x1)($v0)
    /* 80C4 8019103C 01000324 */  addiu      $v1, $zero, 0x1
    /* 80C8 80191040 9402A3A6 */  sh         $v1, 0x294($s5)
    /* 80CC 80191044 01004224 */  addiu      $v0, $v0, 0x1
    /* 80D0 80191048 1D80013C */  lui        $at, %hi(D_801D1B24 + 0x1)
    /* 80D4 8019104C 251B22A0 */  sb         $v0, %lo(D_801D1B24 + 0x1)($at)
    /* 80D8 80191050 FF004230 */  andi       $v0, $v0, 0xFF
    /* 80DC 80191054 0300422C */  sltiu      $v0, $v0, 0x3
    /* 80E0 80191058 59034014 */  bnez       $v0, .L80191DC0
    /* 80E4 8019105C 90000224 */   addiu     $v0, $zero, 0x90
    /* 80E8 80191060 1D80013C */  lui        $at, %hi(D_801D1B24 + 0x1)
    /* 80EC 80191064 251B20A0 */  sb         $zero, %lo(D_801D1B24 + 0x1)($at)
    /* 80F0 80191068 0100013C */  lui        $at, (0x10000 >> 16)
    /* 80F4 8019106C 21088102 */  addu       $at, $s4, $at
    /* 80F8 80191070 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 80FC 80191074 03000224 */  addiu      $v0, $zero, 0x3
    /* 8100 80191078 1D80013C */  lui        $at, %hi(D_801D7D44 + 0x1)
    /* 8104 8019107C 457D22A0 */  sb         $v0, %lo(D_801D7D44 + 0x1)($at)
    /* 8108 80191080 70470608 */  j          .L80191DC0
    /* 810C 80191084 00000000 */   nop
  jlabel .L80191088
    /* 8110 80191088 10000424 */  addiu      $a0, $zero, 0x10
    /* 8114 8019108C 37BC010C */  jal        func_8006F0DC
    /* 8118 80191090 21280000 */   addu      $a1, $zero, $zero
    /* 811C 80191094 4A034010 */  beqz       $v0, .L80191DC0
    /* 8120 80191098 02000224 */   addiu     $v0, $zero, 0x2
    /* 8124 8019109C 1D80013C */  lui        $at, %hi(D_801D7D40)
    /* 8128 801910A0 407D22AC */  sw         $v0, %lo(D_801D7D40)($at)
    /* 812C 801910A4 D0000224 */  addiu      $v0, $zero, 0xD0
    /* 8130 801910A8 9402A0A6 */  sh         $zero, 0x294($s5)
    /* 8134 801910AC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 8138 801910B0 21088102 */  addu       $at, $s4, $at
    /* 813C 801910B4 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 8140 801910B8 70470608 */  j          .L80191DC0
    /* 8144 801910BC 00000000 */   nop
  jlabel .L801910C0
    /* 8148 801910C0 21200000 */  addu       $a0, $zero, $zero
    /* 814C 801910C4 EC5D80A2 */  sb         $zero, 0x5DEC($s4)
    /* 8150 801910C8 6549060C */  jal        func_80192594
    /* 8154 801910CC 3C5E80A2 */   sb        $zero, 0x5E3C($s4)
    /* 8158 801910D0 21200000 */  addu       $a0, $zero, $zero
    /* 815C 801910D4 5EFF0624 */  addiu      $a2, $zero, -0xA2
    /* 8160 801910D8 37000724 */  addiu      $a3, $zero, 0x37
    /* 8164 801910DC 1280053C */  lui        $a1, %hi(D_8011D650)
    /* 8168 801910E0 50D6A58C */  lw         $a1, %lo(D_8011D650)($a1)
    /* 816C 801910E4 4E010224 */  addiu      $v0, $zero, 0x14E
    /* 8170 801910E8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8174 801910EC 02000224 */  addiu      $v0, $zero, 0x2
    /* 8178 801910F0 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 817C 801910F4 03000224 */  addiu      $v0, $zero, 0x3
    /* 8180 801910F8 2400A2AF */  sw         $v0, 0x24($sp)
    /* 8184 801910FC 2800A2AF */  sw         $v0, 0x28($sp)
    /* 8188 80191100 01000224 */  addiu      $v0, $zero, 0x1
    /* 818C 80191104 1400A0AF */  sw         $zero, 0x14($sp)
    /* 8190 80191108 1800A0AF */  sw         $zero, 0x18($sp)
    /* 8194 8019110C 2000A0AF */  sw         $zero, 0x20($sp)
    /* 8198 80191110 B850060C */  jal        func_801942E0
    /* 819C 80191114 2C00A2AF */   sw        $v0, 0x2C($sp)
    /* 81A0 80191118 60460608 */  j          .L80191980
    /* 81A4 8019111C 00000000 */   nop
  jlabel .L80191120
    /* 81A8 80191120 214E060C */  jal        func_80193884
    /* 81AC 80191124 00000000 */   nop
    /* 81B0 80191128 25034014 */  bnez       $v0, .L80191DC0
    /* 81B4 8019112C 00000000 */   nop
    /* 81B8 80191130 1FBC010C */  jal        func_8006F07C
    /* 81BC 80191134 10000424 */   addiu     $a0, $zero, 0x10
    /* 81C0 80191138 21034010 */  beqz       $v0, .L80191DC0
    /* 81C4 8019113C 00000000 */   nop
    /* 81C8 80191140 9147060C */  jal        func_80191E44
    /* 81CC 80191144 00000000 */   nop
    /* 81D0 80191148 1D034010 */  beqz       $v0, .L80191DC0
    /* 81D4 8019114C 21800000 */   addu      $s0, $zero, $zero
  .L80191150:
    /* 81D8 80191150 1D80013C */  lui        $at, %hi(D_801D7DA0)
    /* 81DC 80191154 21083000 */  addu       $at, $at, $s0
    /* 81E0 80191158 A07D2290 */  lbu        $v0, %lo(D_801D7DA0)($at)
    /* 81E4 8019115C 00000000 */  nop
    /* 81E8 80191160 03004010 */  beqz       $v0, .L80191170
    /* 81EC 80191164 01001026 */   addiu     $s0, $s0, 0x1
    /* 81F0 80191168 08001024 */  addiu      $s0, $zero, 0x8
    /* 81F4 8019116C 01001026 */  addiu      $s0, $s0, 0x1
  .L80191170:
    /* 81F8 80191170 0500022A */  slti       $v0, $s0, 0x5
    /* 81FC 80191174 F6FF4014 */  bnez       $v0, .L80191150
    /* 8200 80191178 05000224 */   addiu     $v0, $zero, 0x5
    /* 8204 8019117C 8F000212 */  beq        $s0, $v0, .L801913BC
    /* 8208 80191180 E0000224 */   addiu     $v0, $zero, 0xE0
    /* 820C 80191184 88AD020C */  jal        func_800AB620
    /* 8210 80191188 29050424 */   addiu     $a0, $zero, 0x529
    /* 8214 8019118C 644E060C */  jal        func_80193990
    /* 8218 80191190 00000000 */   nop
    /* 821C 80191194 01000224 */  addiu      $v0, $zero, 0x1
    /* 8220 80191198 56470608 */  j          .L80191D58
    /* 8224 8019119C EC5D82A2 */   sb        $v0, 0x5DEC($s4)
  jlabel .L801911A0
    /* 8228 801911A0 1D80023C */  lui        $v0, %hi(D_801D7D44 + 0x1)
    /* 822C 801911A4 457D4290 */  lbu        $v0, %lo(D_801D7D44 + 0x1)($v0)
    /* 8230 801911A8 00000000 */  nop
    /* 8234 801911AC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 8238 801911B0 0200422C */  sltiu      $v0, $v0, 0x2
    /* 823C 801911B4 03004014 */  bnez       $v0, .L801911C4
    /* 8240 801911B8 00000000 */   nop
    /* 8244 801911BC EC5D80A2 */  sb         $zero, 0x5DEC($s4)
    /* 8248 801911C0 3C5E80A2 */  sb         $zero, 0x5E3C($s4)
  .L801911C4:
    /* 824C 801911C4 88AD020C */  jal        func_800AB620
    /* 8250 801911C8 12050424 */   addiu     $a0, $zero, 0x512
    /* 8254 801911CC 21200000 */  addu       $a0, $zero, $zero
    /* 8258 801911D0 5EFF0624 */  addiu      $a2, $zero, -0xA2
    /* 825C 801911D4 1D80033C */  lui        $v1, %hi(D_801D7D44 + 0x1)
    /* 8260 801911D8 457D6390 */  lbu        $v1, %lo(D_801D7D44 + 0x1)($v1)
    /* 8264 801911DC 4E010224 */  addiu      $v0, $zero, 0x14E
    /* 8268 801911E0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 826C 801911E4 02000224 */  addiu      $v0, $zero, 0x2
    /* 8270 801911E8 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 8274 801911EC 03000224 */  addiu      $v0, $zero, 0x3
    /* 8278 801911F0 2400A2AF */  sw         $v0, 0x24($sp)
    /* 827C 801911F4 2800A2AF */  sw         $v0, 0x28($sp)
    /* 8280 801911F8 01000224 */  addiu      $v0, $zero, 0x1
    /* 8284 801911FC 1400A0AF */  sw         $zero, 0x14($sp)
    /* 8288 80191200 1800A0AF */  sw         $zero, 0x18($sp)
    /* 828C 80191204 2000A0AF */  sw         $zero, 0x20($sp)
    /* 8290 80191208 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 8294 8019120C 1C007024 */  addiu      $s0, $v1, 0x1C
    /* 8298 80191210 80101000 */  sll        $v0, $s0, 2
    /* 829C 80191214 1D80013C */  lui        $at, %hi(D_801D58C4)
    /* 82A0 80191218 21082200 */  addu       $at, $at, $v0
    /* 82A4 8019121C C458258C */  lw         $a1, %lo(D_801D58C4)($at)
    /* 82A8 80191220 B850060C */  jal        func_801942E0
    /* 82AC 80191224 37000724 */   addiu     $a3, $zero, 0x37
    /* 82B0 80191228 60460608 */  j          .L80191980
    /* 82B4 8019122C 00000000 */   nop
  jlabel .L80191230
    /* 82B8 80191230 214E060C */  jal        func_80193884
    /* 82BC 80191234 00000000 */   nop
    /* 82C0 80191238 05004010 */  beqz       $v0, .L80191250
    /* 82C4 8019123C 00000000 */   nop
    /* 82C8 80191240 1D80013C */  lui        $at, %hi(D_801D7D44 + 0x1)
    /* 82CC 80191244 457D20A0 */  sb         $zero, %lo(D_801D7D44 + 0x1)($at)
    /* 82D0 80191248 70470608 */  j          .L80191DC0
    /* 82D4 8019124C 00000000 */   nop
  .L80191250:
    /* 82D8 80191250 1FBC010C */  jal        func_8006F07C
    /* 82DC 80191254 10000424 */   addiu     $a0, $zero, 0x10
    /* 82E0 80191258 0B004014 */  bnez       $v0, .L80191288
    /* 82E4 8019125C 00000000 */   nop
    /* 82E8 80191260 1D80023C */  lui        $v0, %hi(D_801D7D44 + 0x1)
    /* 82EC 80191264 457D4290 */  lbu        $v0, %lo(D_801D7D44 + 0x1)($v0)
    /* 82F0 80191268 00000000 */  nop
    /* 82F4 8019126C D4024014 */  bnez       $v0, .L80191DC0
    /* 82F8 80191270 61000224 */   addiu     $v0, $zero, 0x61
    /* 82FC 80191274 0100013C */  lui        $at, (0x10000 >> 16)
    /* 8300 80191278 21088102 */  addu       $at, $s4, $at
    /* 8304 8019127C DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 8308 80191280 70470608 */  j          .L80191DC0
    /* 830C 80191284 00000000 */   nop
  .L80191288:
    /* 8310 80191288 9147060C */  jal        func_80191E44
    /* 8314 8019128C 00000000 */   nop
    /* 8318 80191290 35004010 */  beqz       $v0, .L80191368
    /* 831C 80191294 00000000 */   nop
    /* 8320 80191298 88AD020C */  jal        func_800AB620
    /* 8324 8019129C 29050424 */   addiu     $a0, $zero, 0x529
    /* 8328 801912A0 1D80033C */  lui        $v1, %hi(D_801D7D44 + 0x1)
    /* 832C 801912A4 457D6390 */  lbu        $v1, %lo(D_801D7D44 + 0x1)($v1)
    /* 8330 801912A8 02001024 */  addiu      $s0, $zero, 0x2
    /* 8334 801912AC 07007010 */  beq        $v1, $s0, .L801912CC
    /* 8338 801912B0 03006228 */   slti      $v0, $v1, 0x3
    /* 833C 801912B4 03004010 */  beqz       $v0, .L801912C4
    /* 8340 801912B8 01000224 */   addiu     $v0, $zero, 0x1
    /* 8344 801912BC 1E006210 */  beq        $v1, $v0, .L80191338
    /* 8348 801912C0 00000000 */   nop
  .L801912C4:
    /* 834C 801912C4 D3440608 */  j          .L8019134C
    /* 8350 801912C8 E0000224 */   addiu     $v0, $zero, 0xE0
  .L801912CC:
    /* 8354 801912CC 6549060C */  jal        func_80192594
    /* 8358 801912D0 21200000 */   addu      $a0, $zero, $zero
    /* 835C 801912D4 1D80033C */  lui        $v1, %hi(D_801D1B1A)
    /* 8360 801912D8 1A1B6390 */  lbu        $v1, %lo(D_801D1B1A)($v1)
    /* 8364 801912DC 20000224 */  addiu      $v0, $zero, 0x20
    /* 8368 801912E0 1D80013C */  lui        $at, %hi(D_801D1B24)
    /* 836C 801912E4 241B22A0 */  sb         $v0, %lo(D_801D1B24)($at)
    /* 8370 801912E8 11006010 */  beqz       $v1, .L80191330
    /* 8374 801912EC 21200000 */   addu      $a0, $zero, $zero
    /* 8378 801912F0 5EFF0624 */  addiu      $a2, $zero, -0xA2
    /* 837C 801912F4 37000724 */  addiu      $a3, $zero, 0x37
    /* 8380 801912F8 1D80053C */  lui        $a1, %hi(D_801D5948)
    /* 8384 801912FC 4859A58C */  lw         $a1, %lo(D_801D5948)($a1)
    /* 8388 80191300 4E010224 */  addiu      $v0, $zero, 0x14E
    /* 838C 80191304 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8390 80191308 03000224 */  addiu      $v0, $zero, 0x3
    /* 8394 8019130C 2400A2AF */  sw         $v0, 0x24($sp)
    /* 8398 80191310 2800A2AF */  sw         $v0, 0x28($sp)
    /* 839C 80191314 01000224 */  addiu      $v0, $zero, 0x1
    /* 83A0 80191318 1400A0AF */  sw         $zero, 0x14($sp)
    /* 83A4 8019131C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 83A8 80191320 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 83AC 80191324 2000A0AF */  sw         $zero, 0x20($sp)
    /* 83B0 80191328 B850060C */  jal        func_801942E0
    /* 83B4 8019132C 2C00A2AF */   sw        $v0, 0x2C($sp)
  .L80191330:
    /* 83B8 80191330 D3440608 */  j          .L8019134C
    /* 83BC 80191334 98000224 */   addiu     $v0, $zero, 0x98
  .L80191338:
    /* 83C0 80191338 6D4A060C */  jal        func_801929B4
    /* 83C4 8019133C 21200000 */   addu      $a0, $zero, $zero
    /* 83C8 80191340 D8000224 */  addiu      $v0, $zero, 0xD8
    /* 83CC 80191344 1D80013C */  lui        $at, %hi(D_801D7D40)
    /* 83D0 80191348 407D30AC */  sw         $s0, %lo(D_801D7D40)($at)
  .L8019134C:
    /* 83D4 8019134C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 83D8 80191350 21088102 */  addu       $at, $s4, $at
    /* 83DC 80191354 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 83E0 80191358 1D80013C */  lui        $at, %hi(D_801D7D44 + 0x1)
    /* 83E4 8019135C 457D20A0 */  sb         $zero, %lo(D_801D7D44 + 0x1)($at)
    /* 83E8 80191360 70470608 */  j          .L80191DC0
    /* 83EC 80191364 00000000 */   nop
  .L80191368:
    /* 83F0 80191368 3402A296 */  lhu        $v0, 0x234($s5)
    /* 83F4 8019136C 00000000 */  nop
    /* 83F8 80191370 24105700 */  and        $v0, $v0, $s7
    /* 83FC 80191374 92024010 */  beqz       $v0, .L80191DC0
    /* 8400 80191378 00000000 */   nop
    /* 8404 8019137C 88AD020C */  jal        func_800AB620
    /* 8408 80191380 28050424 */   addiu     $a0, $zero, 0x528
    /* 840C 80191384 1D80033C */  lui        $v1, %hi(D_801D7D44 + 0x1)
    /* 8410 80191388 457D6390 */  lbu        $v1, %lo(D_801D7D44 + 0x1)($v1)
    /* 8414 8019138C 02000824 */  addiu      $t0, $zero, 0x2
    /* 8418 80191390 24006810 */  beq        $v1, $t0, .L80191424
    /* 841C 80191394 03006228 */   slti      $v0, $v1, 0x3
    /* 8420 80191398 05004010 */  beqz       $v0, .L801913B0
    /* 8424 8019139C 01000224 */   addiu     $v0, $zero, 0x1
    /* 8428 801913A0 0B006210 */  beq        $v1, $v0, .L801913D0
    /* 842C 801913A4 21200000 */   addu      $a0, $zero, $zero
    /* 8430 801913A8 EF440608 */  j          .L801913BC
    /* 8434 801913AC E0000224 */   addiu     $v0, $zero, 0xE0
  .L801913B0:
    /* 8438 801913B0 03000224 */  addiu      $v0, $zero, 0x3
    /* 843C 801913B4 51006210 */  beq        $v1, $v0, .L801914FC
    /* 8440 801913B8 E0000224 */   addiu     $v0, $zero, 0xE0
  .L801913BC:
    /* 8444 801913BC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 8448 801913C0 21088102 */  addu       $at, $s4, $at
    /* 844C 801913C4 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 8450 801913C8 70470608 */  j          .L80191DC0
    /* 8454 801913CC 00000000 */   nop
  .L801913D0:
    /* 8458 801913D0 5EFF0624 */  addiu      $a2, $zero, -0xA2
    /* 845C 801913D4 37000724 */  addiu      $a3, $zero, 0x37
    /* 8460 801913D8 1280053C */  lui        $a1, %hi(D_8011D724)
    /* 8464 801913DC 24D7A58C */  lw         $a1, %lo(D_8011D724)($a1)
    /* 8468 801913E0 4E010224 */  addiu      $v0, $zero, 0x14E
    /* 846C 801913E4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8470 801913E8 03000224 */  addiu      $v0, $zero, 0x3
    /* 8474 801913EC 1400A0AF */  sw         $zero, 0x14($sp)
    /* 8478 801913F0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 847C 801913F4 1C00A8AF */  sw         $t0, 0x1C($sp)
    /* 8480 801913F8 2000A0AF */  sw         $zero, 0x20($sp)
    /* 8484 801913FC 2400A2AF */  sw         $v0, 0x24($sp)
    /* 8488 80191400 2800A2AF */  sw         $v0, 0x28($sp)
    /* 848C 80191404 B850060C */  jal        func_801942E0
    /* 8490 80191408 2C00A3AF */   sw        $v1, 0x2C($sp)
    /* 8494 8019140C 12000224 */  addiu      $v0, $zero, 0x12
    /* 8498 80191410 0100013C */  lui        $at, (0x10000 >> 16)
    /* 849C 80191414 21088102 */  addu       $at, $s4, $at
    /* 84A0 80191418 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 84A4 8019141C 70470608 */  j          .L80191DC0
    /* 84A8 80191420 00000000 */   nop
  .L80191424:
    /* 84AC 80191424 6549060C */  jal        func_80192594
    /* 84B0 80191428 21200000 */   addu      $a0, $zero, $zero
    /* 84B4 8019142C 21800000 */  addu       $s0, $zero, $zero
  .L80191430:
    /* 84B8 80191430 46E9020C */  jal        func_800BA518
    /* 84BC 80191434 21200000 */   addu      $a0, $zero, $zero
    /* 84C0 80191438 01001026 */  addiu      $s0, $s0, 0x1
    /* 84C4 8019143C 3000022A */  slti       $v0, $s0, 0x30
    /* 84C8 80191440 FBFF4014 */  bnez       $v0, .L80191430
    /* 84CC 80191444 00000000 */   nop
    /* 84D0 80191448 1D80033C */  lui        $v1, %hi(D_801D1B11)
    /* 84D4 8019144C 111B6324 */  addiu      $v1, $v1, %lo(D_801D1B11)
    /* 84D8 80191450 1D80023C */  lui        $v0, %hi(D_801D7D56)
    /* 84DC 80191454 567D4290 */  lbu        $v0, %lo(D_801D7D56)($v0)
    /* 84E0 80191458 EFFF6424 */  addiu      $a0, $v1, -0x11
    /* 84E4 8019145C 30004224 */  addiu      $v0, $v0, 0x30
    /* 84E8 80191460 BAB3020C */  jal        func_800ACEE8
    /* 84EC 80191464 000062A0 */   sb        $v0, 0x0($v1)
    /* 84F0 80191468 03004010 */  beqz       $v0, .L80191478
    /* 84F4 8019146C 00000000 */   nop
    /* 84F8 80191470 1D80013C */  lui        $at, %hi(D_801D1B1A)
    /* 84FC 80191474 1A1B20A0 */  sb         $zero, %lo(D_801D1B1A)($at)
  .L80191478:
    /* 8500 80191478 6D4A060C */  jal        func_801929B4
    /* 8504 8019147C 21200000 */   addu      $a0, $zero, $zero
    /* 8508 80191480 21200000 */  addu       $a0, $zero, $zero
    /* 850C 80191484 5EFF0624 */  addiu      $a2, $zero, -0xA2
    /* 8510 80191488 37000724 */  addiu      $a3, $zero, 0x37
    /* 8514 8019148C 1280053C */  lui        $a1, %hi(D_8011D63C)
    /* 8518 80191490 3CD6A58C */  lw         $a1, %lo(D_8011D63C)($a1)
    /* 851C 80191494 4E010224 */  addiu      $v0, $zero, 0x14E
    /* 8520 80191498 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8524 8019149C 02000224 */  addiu      $v0, $zero, 0x2
    /* 8528 801914A0 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 852C 801914A4 03000224 */  addiu      $v0, $zero, 0x3
    /* 8530 801914A8 2400A2AF */  sw         $v0, 0x24($sp)
    /* 8534 801914AC 2800A2AF */  sw         $v0, 0x28($sp)
    /* 8538 801914B0 01000224 */  addiu      $v0, $zero, 0x1
    /* 853C 801914B4 1400A0AF */  sw         $zero, 0x14($sp)
    /* 8540 801914B8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 8544 801914BC 2000A0AF */  sw         $zero, 0x20($sp)
    /* 8548 801914C0 B850060C */  jal        func_801942E0
    /* 854C 801914C4 2C00A2AF */   sw        $v0, 0x2C($sp)
    /* 8550 801914C8 0A49060C */  jal        func_80192428
    /* 8554 801914CC 00000000 */   nop
    /* 8558 801914D0 A047060C */  jal        func_80191E80
    /* 855C 801914D4 00000000 */   nop
    /* 8560 801914D8 22000224 */  addiu      $v0, $zero, 0x22
    /* 8564 801914DC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 8568 801914E0 21088102 */  addu       $at, $s4, $at
    /* 856C 801914E4 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 8570 801914E8 02000224 */  addiu      $v0, $zero, 0x2
    /* 8574 801914EC 1D80013C */  lui        $at, %hi(D_801D7D44 + 0x1)
    /* 8578 801914F0 457D22A0 */  sb         $v0, %lo(D_801D7D44 + 0x1)($at)
    /* 857C 801914F4 70470608 */  j          .L80191DC0
    /* 8580 801914F8 00000000 */   nop
  .L801914FC:
    /* 8584 801914FC 21200000 */  addu       $a0, $zero, $zero
    /* 8588 80191500 5EFF0624 */  addiu      $a2, $zero, -0xA2
    /* 858C 80191504 37000724 */  addiu      $a3, $zero, 0x37
    /* 8590 80191508 1280053C */  lui        $a1, %hi(D_8011D634)
    /* 8594 8019150C 34D6A58C */  lw         $a1, %lo(D_8011D634)($a1)
    /* 8598 80191510 4E010224 */  addiu      $v0, $zero, 0x14E
    /* 859C 80191514 1000A2AF */  sw         $v0, 0x10($sp)
    /* 85A0 80191518 01000224 */  addiu      $v0, $zero, 0x1
    /* 85A4 8019151C 1400A0AF */  sw         $zero, 0x14($sp)
    /* 85A8 80191520 1800A0AF */  sw         $zero, 0x18($sp)
    /* 85AC 80191524 1C00A8AF */  sw         $t0, 0x1C($sp)
    /* 85B0 80191528 2000A0AF */  sw         $zero, 0x20($sp)
    /* 85B4 8019152C 2400A3AF */  sw         $v1, 0x24($sp)
    /* 85B8 80191530 2800A3AF */  sw         $v1, 0x28($sp)
    /* 85BC 80191534 B850060C */  jal        func_801942E0
    /* 85C0 80191538 2C00A2AF */   sw        $v0, 0x2C($sp)
    /* 85C4 8019153C 08000224 */  addiu      $v0, $zero, 0x8
    /* 85C8 80191540 9402A2A6 */  sh         $v0, 0x294($s5)
    /* 85CC 80191544 72000224 */  addiu      $v0, $zero, 0x72
    /* 85D0 80191548 0100013C */  lui        $at, (0x10000 >> 16)
    /* 85D4 8019154C 21088102 */  addu       $at, $s4, $at
    /* 85D8 80191550 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 85DC 80191554 70470608 */  j          .L80191DC0
    /* 85E0 80191558 00000000 */   nop
  jlabel .L8019155C
    /* 85E4 8019155C 1D80023C */  lui        $v0, %hi(D_801D1B24)
    /* 85E8 80191560 241B4290 */  lbu        $v0, %lo(D_801D1B24)($v0)
    /* 85EC 80191564 00000000 */  nop
    /* 85F0 80191568 05004010 */  beqz       $v0, .L80191580
    /* 85F4 8019156C FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 85F8 80191570 1D80013C */  lui        $at, %hi(D_801D1B24)
    /* 85FC 80191574 241B22A0 */  sb         $v0, %lo(D_801D1B24)($at)
    /* 8600 80191578 70470608 */  j          .L80191DC0
    /* 8604 8019157C 00000000 */   nop
  .L80191580:
    /* 8608 80191580 1D80023C */  lui        $v0, %hi(D_801D1B1A)
    /* 860C 80191584 1A1B4290 */  lbu        $v0, %lo(D_801D1B1A)($v0)
    /* 8610 80191588 00000000 */  nop
    /* 8614 8019158C 07004014 */  bnez       $v0, .L801915AC
    /* 8618 80191590 21200000 */   addu      $a0, $zero, $zero
    /* 861C 80191594 9C000224 */  addiu      $v0, $zero, 0x9C
    /* 8620 80191598 0100013C */  lui        $at, (0x10000 >> 16)
    /* 8624 8019159C 21088102 */  addu       $at, $s4, $at
    /* 8628 801915A0 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 862C 801915A4 70470608 */  j          .L80191DC0
    /* 8630 801915A8 00000000 */   nop
  .L801915AC:
    /* 8634 801915AC 5EFF0624 */  addiu      $a2, $zero, -0xA2
    /* 8638 801915B0 37000724 */  addiu      $a3, $zero, 0x37
    /* 863C 801915B4 1D80053C */  lui        $a1, %hi(D_801D5948)
    /* 8640 801915B8 4859A58C */  lw         $a1, %lo(D_801D5948)($a1)
    /* 8644 801915BC 4E010224 */  addiu      $v0, $zero, 0x14E
    /* 8648 801915C0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 864C 801915C4 02000224 */  addiu      $v0, $zero, 0x2
    /* 8650 801915C8 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 8654 801915CC 03000224 */  addiu      $v0, $zero, 0x3
    /* 8658 801915D0 2400A2AF */  sw         $v0, 0x24($sp)
    /* 865C 801915D4 2800A2AF */  sw         $v0, 0x28($sp)
    /* 8660 801915D8 01000224 */  addiu      $v0, $zero, 0x1
    /* 8664 801915DC 1400A0AF */  sw         $zero, 0x14($sp)
    /* 8668 801915E0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 866C 801915E4 2000A0AF */  sw         $zero, 0x20($sp)
    /* 8670 801915E8 B850060C */  jal        func_801942E0
    /* 8674 801915EC 2C00A2AF */   sw        $v0, 0x2C($sp)
    /* 8678 801915F0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 867C 801915F4 21088102 */  addu       $at, $s4, $at
    /* 8680 801915F8 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 8684 801915FC 1D80013C */  lui        $at, %hi(D_801D1B24)
    /* 8688 80191600 241B20A0 */  sb         $zero, %lo(D_801D1B24)($at)
    /* 868C 80191604 65460608 */  j          .L80191994
    /* 8690 80191608 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L8019160C
    /* 8694 8019160C 1D80023C */  lui        $v0, %hi(D_801D1B11)
    /* 8698 80191610 111B4224 */  addiu      $v0, $v0, %lo(D_801D1B11)
    /* 869C 80191614 EFFF4424 */  addiu      $a0, $v0, -0x11
    /* 86A0 80191618 1E80053C */  lui        $a1, %hi(D_801DA2C8)
    /* 86A4 8019161C C8A2A524 */  addiu      $a1, $a1, %lo(D_801DA2C8)
    /* 86A8 80191620 1D80033C */  lui        $v1, %hi(D_801D1B24)
    /* 86AC 80191624 241B6390 */  lbu        $v1, %lo(D_801D1B24)($v1)
    /* 86B0 80191628 1D80063C */  lui        $a2, %hi(D_801D7D56)
    /* 86B4 8019162C 567DC690 */  lbu        $a2, %lo(D_801D7D56)($a2)
    /* 86B8 80191630 01006324 */  addiu      $v1, $v1, 0x1
    /* 86BC 80191634 3000C624 */  addiu      $a2, $a2, 0x30
    /* 86C0 80191638 1D80013C */  lui        $at, %hi(D_801D1B24)
    /* 86C4 8019163C 241B23A0 */  sb         $v1, %lo(D_801D1B24)($at)
    /* 86C8 80191640 B2B3020C */  jal        func_800ACEC8
    /* 86CC 80191644 000046A0 */   sb        $a2, 0x0($v0)
    /* 86D0 80191648 0A004010 */  beqz       $v0, .L80191674
    /* 86D4 8019164C 00000000 */   nop
    /* 86D8 80191650 0100013C */  lui        $at, (0x10000 >> 16)
    /* 86DC 80191654 21088102 */  addu       $at, $s4, $at
    /* 86E0 80191658 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 86E4 8019165C 1D80013C */  lui        $at, %hi(D_801D1B24)
    /* 86E8 80191660 241B20A0 */  sb         $zero, %lo(D_801D1B24)($at)
    /* 86EC 80191664 01004224 */  addiu      $v0, $v0, 0x1
    /* 86F0 80191668 0100013C */  lui        $at, (0x10000 >> 16)
    /* 86F4 8019166C 21088102 */  addu       $at, $s4, $at
    /* 86F8 80191670 DAAB22A0 */  sb         $v0, -0x5426($at)
  .L80191674:
    /* 86FC 80191674 1D80023C */  lui        $v0, %hi(D_801D1B24)
    /* 8700 80191678 241B4290 */  lbu        $v0, %lo(D_801D1B24)($v0)
    /* 8704 8019167C 00000000 */  nop
    /* 8708 80191680 3C00422C */  sltiu      $v0, $v0, 0x3C
    /* 870C 80191684 CE014014 */  bnez       $v0, .L80191DC0
    /* 8710 80191688 00000000 */   nop
    /* 8714 8019168C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 8718 80191690 21088102 */  addu       $at, $s4, $at
    /* 871C 80191694 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 8720 80191698 1D80013C */  lui        $at, %hi(D_801D1B24)
    /* 8724 8019169C 241B20A0 */  sb         $zero, %lo(D_801D1B24)($at)
    /* 8728 801916A0 65460608 */  j          .L80191994
    /* 872C 801916A4 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801916A8
    /* 8730 801916A8 1D80023C */  lui        $v0, %hi(D_801D1B11)
    /* 8734 801916AC 111B4224 */  addiu      $v0, $v0, %lo(D_801D1B11)
    /* 8738 801916B0 EFFF4424 */  addiu      $a0, $v0, -0x11
    /* 873C 801916B4 1D80033C */  lui        $v1, %hi(D_801D1B24)
    /* 8740 801916B8 241B6390 */  lbu        $v1, %lo(D_801D1B24)($v1)
    /* 8744 801916BC 1D80053C */  lui        $a1, %hi(D_801D7D56)
    /* 8748 801916C0 567DA590 */  lbu        $a1, %lo(D_801D7D56)($a1)
    /* 874C 801916C4 01006324 */  addiu      $v1, $v1, 0x1
    /* 8750 801916C8 3000A524 */  addiu      $a1, $a1, 0x30
    /* 8754 801916CC 1D80013C */  lui        $at, %hi(D_801D1B24)
    /* 8758 801916D0 241B23A0 */  sb         $v1, %lo(D_801D1B24)($at)
    /* 875C 801916D4 BAB3020C */  jal        func_800ACEE8
    /* 8760 801916D8 000045A0 */   sb        $a1, 0x0($v0)
    /* 8764 801916DC 0C004010 */  beqz       $v0, .L80191710
    /* 8768 801916E0 00000000 */   nop
    /* 876C 801916E4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 8770 801916E8 21088102 */  addu       $at, $s4, $at
    /* 8774 801916EC DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 8778 801916F0 1D80013C */  lui        $at, %hi(D_801D1B24)
    /* 877C 801916F4 241B20A0 */  sb         $zero, %lo(D_801D1B24)($at)
    /* 8780 801916F8 1D80013C */  lui        $at, %hi(D_801D1B1A)
    /* 8784 801916FC 1A1B20A0 */  sb         $zero, %lo(D_801D1B1A)($at)
    /* 8788 80191700 02004224 */  addiu      $v0, $v0, 0x2
    /* 878C 80191704 0100013C */  lui        $at, (0x10000 >> 16)
    /* 8790 80191708 21088102 */  addu       $at, $s4, $at
    /* 8794 8019170C DAAB22A0 */  sb         $v0, -0x5426($at)
  .L80191710:
    /* 8798 80191710 1D80023C */  lui        $v0, %hi(D_801D1B24)
    /* 879C 80191714 241B4290 */  lbu        $v0, %lo(D_801D1B24)($v0)
    /* 87A0 80191718 00000000 */  nop
    /* 87A4 8019171C 0800422C */  sltiu      $v0, $v0, 0x8
    /* 87A8 80191720 A7014014 */  bnez       $v0, .L80191DC0
    /* 87AC 80191724 00000000 */   nop
    /* 87B0 80191728 88AD020C */  jal        func_800AB620
    /* 87B4 8019172C 12050424 */   addiu     $a0, $zero, 0x512
    /* 87B8 80191730 1D80033C */  lui        $v1, %hi(D_801D7D44 + 0x1)
    /* 87BC 80191734 457D6390 */  lbu        $v1, %lo(D_801D7D44 + 0x1)($v1)
    /* 87C0 80191738 06000224 */  addiu      $v0, $zero, 0x6
    /* 87C4 8019173C 02006214 */  bne        $v1, $v0, .L80191748
    /* 87C8 80191740 22001024 */   addiu     $s0, $zero, 0x22
    /* 87CC 80191744 23001024 */  addiu      $s0, $zero, 0x23
  .L80191748:
    /* 87D0 80191748 21200000 */  addu       $a0, $zero, $zero
    /* 87D4 8019174C 5EFF0624 */  addiu      $a2, $zero, -0xA2
    /* 87D8 80191750 4E010224 */  addiu      $v0, $zero, 0x14E
    /* 87DC 80191754 1000A2AF */  sw         $v0, 0x10($sp)
    /* 87E0 80191758 02000224 */  addiu      $v0, $zero, 0x2
    /* 87E4 8019175C 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 87E8 80191760 03000224 */  addiu      $v0, $zero, 0x3
    /* 87EC 80191764 2400A2AF */  sw         $v0, 0x24($sp)
    /* 87F0 80191768 2800A2AF */  sw         $v0, 0x28($sp)
    /* 87F4 8019176C 01000224 */  addiu      $v0, $zero, 0x1
    /* 87F8 80191770 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 87FC 80191774 80101000 */  sll        $v0, $s0, 2
    /* 8800 80191778 1400A0AF */  sw         $zero, 0x14($sp)
    /* 8804 8019177C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 8808 80191780 2000A0AF */  sw         $zero, 0x20($sp)
    /* 880C 80191784 1D80013C */  lui        $at, %hi(D_801D58C4)
    /* 8810 80191788 21082200 */  addu       $at, $at, $v0
    /* 8814 8019178C C458258C */  lw         $a1, %lo(D_801D58C4)($at)
    /* 8818 80191790 B850060C */  jal        func_801942E0
    /* 881C 80191794 37000724 */   addiu     $a3, $zero, 0x37
    /* 8820 80191798 0100013C */  lui        $at, (0x10000 >> 16)
    /* 8824 8019179C 21088102 */  addu       $at, $s4, $at
    /* 8828 801917A0 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 882C 801917A4 1D80013C */  lui        $at, %hi(D_801D1B24)
    /* 8830 801917A8 241B20A0 */  sb         $zero, %lo(D_801D1B24)($at)
    /* 8834 801917AC 65460608 */  j          .L80191994
    /* 8838 801917B0 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801917B4
    /* 883C 801917B4 214E060C */  jal        func_80193884
    /* 8840 801917B8 00000000 */   nop
    /* 8844 801917BC 80014014 */  bnez       $v0, .L80191DC0
    /* 8848 801917C0 00000000 */   nop
    /* 884C 801917C4 20BB010C */  jal        func_8006EC80
    /* 8850 801917C8 21200000 */   addu      $a0, $zero, $zero
    /* 8854 801917CC 3402A396 */  lhu        $v1, 0x234($s5)
    /* 8858 801917D0 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 885C 801917D4 A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 8860 801917D8 24187700 */  and        $v1, $v1, $s7
    /* 8864 801917DC 78016010 */  beqz       $v1, .L80191DC0
    /* 8868 801917E0 00000000 */   nop
    /* 886C 801917E4 88AD020C */  jal        func_800AB620
    /* 8870 801917E8 28050424 */   addiu     $a0, $zero, 0x528
    /* 8874 801917EC 60460608 */  j          .L80191980
    /* 8878 801917F0 00000000 */   nop
  jlabel .L801917F4
    /* 887C 801917F4 1D80013C */  lui        $at, %hi(D_801D7D44 + 0x1)
    /* 8880 801917F8 457D20A0 */  sb         $zero, %lo(D_801D7D44 + 0x1)($at)
    /* 8884 801917FC 6D4A060C */  jal        func_801929B4
    /* 8888 80191800 21200000 */   addu      $a0, $zero, $zero
    /* 888C 80191804 02000224 */  addiu      $v0, $zero, 0x2
    /* 8890 80191808 1D80013C */  lui        $at, %hi(D_801D7D40)
    /* 8894 8019180C 407D22AC */  sw         $v0, %lo(D_801D7D40)($at)
    /* 8898 80191810 D8000224 */  addiu      $v0, $zero, 0xD8
    /* 889C 80191814 0100013C */  lui        $at, (0x10000 >> 16)
    /* 88A0 80191818 21088102 */  addu       $at, $s4, $at
    /* 88A4 8019181C DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 88A8 80191820 70470608 */  j          .L80191DC0
    /* 88AC 80191824 00000000 */   nop
  jlabel .L80191828
    /* 88B0 80191828 1D80023C */  lui        $v0, %hi(D_801D7D44)
    /* 88B4 8019182C 447D4290 */  lbu        $v0, %lo(D_801D7D44)($v0)
    /* 88B8 80191830 01001124 */  addiu      $s1, $zero, 0x1
    /* 88BC 80191834 1B015110 */  beq        $v0, $s1, .L80191CA4
    /* 88C0 80191838 00000000 */   nop
    /* 88C4 8019183C 3C39060C */  jal        func_8018E4F0
    /* 88C8 80191840 00000000 */   nop
    /* 88CC 80191844 0A000424 */  addiu      $a0, $zero, 0xA
    /* 88D0 80191848 21280000 */  addu       $a1, $zero, $zero
    /* 88D4 8019184C 21300002 */  addu       $a2, $s0, $zero
    /* 88D8 80191850 21380000 */  addu       $a3, $zero, $zero
    /* 88DC 80191854 08000224 */  addiu      $v0, $zero, 0x8
    /* 88E0 80191858 0400C2A4 */  sh         $v0, 0x4($a2)
    /* 88E4 8019185C 04000224 */  addiu      $v0, $zero, 0x4
    /* 88E8 80191860 0600C2A4 */  sh         $v0, 0x6($a2)
    /* 88EC 80191864 20000224 */  addiu      $v0, $zero, 0x20
    /* 88F0 80191868 0800C2A0 */  sb         $v0, 0x8($a2)
    /* 88F4 8019186C 0900C2A0 */  sb         $v0, 0x9($a2)
    /* 88F8 80191870 60000224 */  addiu      $v0, $zero, 0x60
    /* 88FC 80191874 0200C0A4 */  sh         $zero, 0x2($a2)
    /* 8900 80191878 0000C0A4 */  sh         $zero, 0x0($a2)
    /* 8904 8019187C 0A00C2A0 */  sb         $v0, 0xA($a2)
    /* 8908 80191880 1000B1AF */  sw         $s1, 0x10($sp)
    /* 890C 80191884 7850060C */  jal        func_801941E0
    /* 8910 80191888 1400B1AF */   sw        $s1, 0x14($sp)
    /* 8914 8019188C 3003A0A2 */  sb         $zero, 0x330($s5)
    /* 8918 80191890 0100013C */  lui        $at, (0x10000 >> 16)
    /* 891C 80191894 21088102 */  addu       $at, $s4, $at
    /* 8920 80191898 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 8924 8019189C 01000324 */  addiu      $v1, $zero, 0x1
    /* 8928 801918A0 1D80013C */  lui        $at, %hi(D_801D1B19)
    /* 892C 801918A4 191B23A0 */  sb         $v1, %lo(D_801D1B19)($at)
    /* 8930 801918A8 65460608 */  j          .L80191994
    /* 8934 801918AC 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801918B0
    /* 8938 801918B0 04000396 */  lhu        $v1, 0x4($s0)
    /* 893C 801918B4 00000000 */  nop
    /* 8940 801918B8 D000622C */  sltiu      $v0, $v1, 0xD0
    /* 8944 801918BC 03004010 */  beqz       $v0, .L801918CC
    /* 8948 801918C0 32006224 */   addiu     $v0, $v1, 0x32
    /* 894C 801918C4 82460608 */  j          .L80191A08
    /* 8950 801918C8 040002A6 */   sh        $v0, 0x4($s0)
  .L801918CC:
    /* 8954 801918CC 06000396 */  lhu        $v1, 0x6($s0)
    /* 8958 801918D0 00000000 */  nop
    /* 895C 801918D4 3400622C */  sltiu      $v0, $v1, 0x34
    /* 8960 801918D8 03004010 */  beqz       $v0, .L801918E8
    /* 8964 801918DC 0C006224 */   addiu     $v0, $v1, 0xC
    /* 8968 801918E0 82460608 */  j          .L80191A08
    /* 896C 801918E4 060002A6 */   sh        $v0, 0x6($s0)
  .L801918E8:
    /* 8970 801918E8 01000424 */  addiu      $a0, $zero, 0x1
    /* 8974 801918EC 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 8978 801918F0 F8FF0724 */  addiu      $a3, $zero, -0x8
    /* 897C 801918F4 1D80053C */  lui        $a1, %hi(D_801D590C)
    /* 8980 801918F8 0C59A58C */  lw         $a1, %lo(D_801D590C)($a1)
    /* 8984 801918FC 38010224 */  addiu      $v0, $zero, 0x138
    /* 8988 80191900 1000A2AF */  sw         $v0, 0x10($sp)
    /* 898C 80191904 03000224 */  addiu      $v0, $zero, 0x3
    /* 8990 80191908 1400A2AF */  sw         $v0, 0x14($sp)
    /* 8994 8019190C 2400A2AF */  sw         $v0, 0x24($sp)
    /* 8998 80191910 01000224 */  addiu      $v0, $zero, 0x1
    /* 899C 80191914 1800A0AF */  sw         $zero, 0x18($sp)
    /* 89A0 80191918 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 89A4 8019191C 2000A0AF */  sw         $zero, 0x20($sp)
    /* 89A8 80191920 2800A2AF */  sw         $v0, 0x28($sp)
    /* 89AC 80191924 B850060C */  jal        func_801942E0
    /* 89B0 80191928 2C00A2AF */   sw        $v0, 0x2C($sp)
    /* 89B4 8019192C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 89B8 80191930 21088102 */  addu       $at, $s4, $at
    /* 89BC 80191934 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 89C0 80191938 7C460608 */  j          .L801919F0
    /* 89C4 8019193C 14000324 */   addiu     $v1, $zero, 0x14
  jlabel .L80191940
    /* 89C8 80191940 1D80023C */  lui        $v0, %hi(D_801D7D44)
    /* 89CC 80191944 447D4290 */  lbu        $v0, %lo(D_801D7D44)($v0)
    /* 89D0 80191948 00000000 */  nop
    /* 89D4 8019194C D5004010 */  beqz       $v0, .L80191CA4
    /* 89D8 80191950 00000000 */   nop
    /* 89DC 80191954 1D80013C */  lui        $at, %hi(D_801D7D44)
    /* 89E0 80191958 447D20A0 */  sb         $zero, %lo(D_801D7D44)($at)
    /* 89E4 8019195C 70470608 */  j          .L80191DC0
    /* 89E8 80191960 00000000 */   nop
  jlabel .L80191964
    /* 89EC 80191964 1D80033C */  lui        $v1, %hi(D_801D7D44)
    /* 89F0 80191968 447D6390 */  lbu        $v1, %lo(D_801D7D44)($v1)
    /* 89F4 8019196C 01000224 */  addiu      $v0, $zero, 0x1
    /* 89F8 80191970 1E80013C */  lui        $at, %hi(D_801D8FB8)
    /* 89FC 80191974 B88F20A0 */  sb         $zero, %lo(D_801D8FB8)($at)
    /* 8A00 80191978 0B006214 */  bne        $v1, $v0, .L801919A8
    /* 8A04 8019197C 00000000 */   nop
  .L80191980:
    /* 8A08 80191980 0100013C */  lui        $at, (0x10000 >> 16)
    /* 8A0C 80191984 21088102 */  addu       $at, $s4, $at
    /* 8A10 80191988 DAAB2290 */  lbu        $v0, -0x5426($at)
  .L8019198C:
    /* 8A14 8019198C 00000000 */  nop
    /* 8A18 80191990 01004224 */  addiu      $v0, $v0, 0x1
  .L80191994:
    /* 8A1C 80191994 0100013C */  lui        $at, (0x10000 >> 16)
    /* 8A20 80191998 21088102 */  addu       $at, $s4, $at
    /* 8A24 8019199C DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 8A28 801919A0 70470608 */  j          .L80191DC0
    /* 8A2C 801919A4 00000000 */   nop
  .L801919A8:
    /* 8A30 801919A8 04000396 */  lhu        $v1, 0x4($s0)
    /* 8A34 801919AC 00000000 */  nop
    /* 8A38 801919B0 0900622C */  sltiu      $v0, $v1, 0x9
    /* 8A3C 801919B4 03004014 */  bnez       $v0, .L801919C4
    /* 8A40 801919B8 CEFF6224 */   addiu     $v0, $v1, -0x32
    /* 8A44 801919BC 82460608 */  j          .L80191A08
    /* 8A48 801919C0 040002A6 */   sh        $v0, 0x4($s0)
  .L801919C4:
    /* 8A4C 801919C4 06000396 */  lhu        $v1, 0x6($s0)
    /* 8A50 801919C8 00000000 */  nop
    /* 8A54 801919CC 0500622C */  sltiu      $v0, $v1, 0x5
    /* 8A58 801919D0 03004014 */  bnez       $v0, .L801919E0
    /* 8A5C 801919D4 F4FF6224 */   addiu     $v0, $v1, -0xC
    /* 8A60 801919D8 82460608 */  j          .L80191A08
    /* 8A64 801919DC 060002A6 */   sh        $v0, 0x6($s0)
  .L801919E0:
    /* 8A68 801919E0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 8A6C 801919E4 21088102 */  addu       $at, $s4, $at
    /* 8A70 801919E8 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 8A74 801919EC 01000324 */  addiu      $v1, $zero, 0x1
  .L801919F0:
    /* 8A78 801919F0 1D80013C */  lui        $at, %hi(D_801D7D44)
    /* 8A7C 801919F4 447D23A0 */  sb         $v1, %lo(D_801D7D44)($at)
    /* 8A80 801919F8 01004224 */  addiu      $v0, $v0, 0x1
    /* 8A84 801919FC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 8A88 80191A00 21088102 */  addu       $at, $s4, $at
    /* 8A8C 80191A04 DAAB22A0 */  sb         $v0, -0x5426($at)
  .L80191A08:
    /* 8A90 80191A08 0A000424 */  addiu      $a0, $zero, 0xA
    /* 8A94 80191A0C 21280000 */  addu       $a1, $zero, $zero
    /* 8A98 80191A10 21300002 */  addu       $a2, $s0, $zero
    /* 8A9C 80191A14 21380000 */  addu       $a3, $zero, $zero
    /* 8AA0 80191A18 01000224 */  addiu      $v0, $zero, 0x1
    /* 8AA4 80191A1C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8AA8 80191A20 7850060C */  jal        func_801941E0
    /* 8AAC 80191A24 1400A2AF */   sw        $v0, 0x14($sp)
    /* 8AB0 80191A28 70470608 */  j          .L80191DC0
    /* 8AB4 80191A2C 00000000 */   nop
  jlabel .L80191A30
    /* 8AB8 80191A30 1E80033C */  lui        $v1, %hi(D_801D8A74)
    /* 8ABC 80191A34 748A638C */  lw         $v1, %lo(D_801D8A74)($v1)
    /* 8AC0 80191A38 0F000224 */  addiu      $v0, $zero, 0xF
    /* 8AC4 80191A3C 1E80013C */  lui        $at, %hi(D_801D93BB)
    /* 8AC8 80191A40 BB9320A0 */  sb         $zero, %lo(D_801D93BB)($at)
    /* 8ACC 80191A44 2B006214 */  bne        $v1, $v0, .L80191AF4
    /* 8AD0 80191A48 08000424 */   addiu     $a0, $zero, 0x8
    /* 8AD4 80191A4C 21800000 */  addu       $s0, $zero, $zero
    /* 8AD8 80191A50 21880000 */  addu       $s1, $zero, $zero
  .L80191A54:
    /* 8ADC 80191A54 0174000C */  jal        func_8001D004
    /* 8AE0 80191A58 0A500424 */   addiu     $a0, $zero, 0x500A
    /* 8AE4 80191A5C 21304000 */  addu       $a2, $v0, $zero
    /* 8AE8 80191A60 1D80013C */  lui        $at, %hi(D_801D7DA0)
    /* 8AEC 80191A64 21083000 */  addu       $at, $at, $s0
    /* 8AF0 80191A68 A07D2290 */  lbu        $v0, %lo(D_801D7DA0)($at)
    /* 8AF4 80191A6C 00000000 */  nop
    /* 8AF8 80191A70 02004014 */  bnez       $v0, .L80191A7C
    /* 8AFC 80191A74 7C001224 */   addiu     $s2, $zero, 0x7C
    /* 8B00 80191A78 DE001224 */  addiu      $s2, $zero, 0xDE
  .L80191A7C:
    /* 8B04 80191A7C 21102602 */  addu       $v0, $s1, $a2
    /* 8B08 80191A80 01001026 */  addiu      $s0, $s0, 0x1
    /* 8B0C 80191A84 160052A0 */  sb         $s2, 0x16($v0)
    /* 8B10 80191A88 0A0052A0 */  sb         $s2, 0xA($v0)
    /* 8B14 80191A8C 0500022A */  slti       $v0, $s0, 0x5
    /* 8B18 80191A90 F0FF4014 */  bnez       $v0, .L80191A54
    /* 8B1C 80191A94 18003126 */   addiu     $s1, $s1, 0x18
    /* 8B20 80191A98 08000424 */  addiu      $a0, $zero, 0x8
    /* 8B24 80191A9C 0A500524 */  addiu      $a1, $zero, 0x500A
    /* 8B28 80191AA0 21300000 */  addu       $a2, $zero, $zero
    /* 8B2C 80191AA4 21380000 */  addu       $a3, $zero, $zero
    /* 8B30 80191AA8 1C000224 */  addiu      $v0, $zero, 0x1C
    /* 8B34 80191AAC 1400A2AF */  sw         $v0, 0x14($sp)
    /* 8B38 80191AB0 00100224 */  addiu      $v0, $zero, 0x1000
    /* 8B3C 80191AB4 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 8B40 80191AB8 2000A2AF */  sw         $v0, 0x20($sp)
    /* 8B44 80191ABC 80000224 */  addiu      $v0, $zero, 0x80
    /* 8B48 80191AC0 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 8B4C 80191AC4 3000A2AF */  sw         $v0, 0x30($sp)
    /* 8B50 80191AC8 3400A2AF */  sw         $v0, 0x34($sp)
    /* 8B54 80191ACC 03000224 */  addiu      $v0, $zero, 0x3
    /* 8B58 80191AD0 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 8B5C 80191AD4 01000224 */  addiu      $v0, $zero, 0x1
    /* 8B60 80191AD8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 8B64 80191ADC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 8B68 80191AE0 2400A0AF */  sw         $zero, 0x24($sp)
    /* 8B6C 80191AE4 2800A0AF */  sw         $zero, 0x28($sp)
    /* 8B70 80191AE8 3800A0AF */  sw         $zero, 0x38($sp)
    /* 8B74 80191AEC D1460608 */  j          .L80191B44
    /* 8B78 80191AF0 4000A2AF */   sw        $v0, 0x40($sp)
  .L80191AF4:
    /* 8B7C 80191AF4 0A500524 */  addiu      $a1, $zero, 0x500A
    /* 8B80 80191AF8 21300000 */  addu       $a2, $zero, $zero
    /* 8B84 80191AFC 21380000 */  addu       $a3, $zero, $zero
    /* 8B88 80191B00 1C000224 */  addiu      $v0, $zero, 0x1C
    /* 8B8C 80191B04 1400A2AF */  sw         $v0, 0x14($sp)
    /* 8B90 80191B08 00100224 */  addiu      $v0, $zero, 0x1000
    /* 8B94 80191B0C 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 8B98 80191B10 2000A2AF */  sw         $v0, 0x20($sp)
    /* 8B9C 80191B14 80000224 */  addiu      $v0, $zero, 0x80
    /* 8BA0 80191B18 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 8BA4 80191B1C 3000A2AF */  sw         $v0, 0x30($sp)
    /* 8BA8 80191B20 3400A2AF */  sw         $v0, 0x34($sp)
    /* 8BAC 80191B24 03000224 */  addiu      $v0, $zero, 0x3
    /* 8BB0 80191B28 1000A0AF */  sw         $zero, 0x10($sp)
    /* 8BB4 80191B2C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 8BB8 80191B30 2400A0AF */  sw         $zero, 0x24($sp)
    /* 8BBC 80191B34 2800A0AF */  sw         $zero, 0x28($sp)
    /* 8BC0 80191B38 3800A0AF */  sw         $zero, 0x38($sp)
    /* 8BC4 80191B3C 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 8BC8 80191B40 4000A0AF */  sw         $zero, 0x40($sp)
  .L80191B44:
    /* 8BCC 80191B44 ED4F060C */  jal        func_80193FB4
    /* 8BD0 80191B48 00000000 */   nop
    /* 8BD4 80191B4C 0174000C */  jal        func_8001D004
    /* 8BD8 80191B50 0B500424 */   addiu     $a0, $zero, 0x500B
    /* 8BDC 80191B54 6666053C */  lui        $a1, (0x66666667 >> 16)
    /* 8BE0 80191B58 6766A534 */  ori        $a1, $a1, (0x66666667 & 0xFFFF)
    /* 8BE4 80191B5C 1E80033C */  lui        $v1, %hi(D_801D8A74)
    /* 8BE8 80191B60 748A638C */  lw         $v1, %lo(D_801D8A74)($v1)
    /* 8BEC 80191B64 0F000424 */  addiu      $a0, $zero, 0xF
    /* 8BF0 80191B68 23188300 */  subu       $v1, $a0, $v1
    /* 8BF4 80191B6C 18006500 */  mult       $v1, $a1
    /* 8BF8 80191B70 21304000 */  addu       $a2, $v0, $zero
    /* 8BFC 80191B74 C31F0300 */  sra        $v1, $v1, 31
    /* 8C00 80191B78 10480000 */  mfhi       $t1
    /* 8C04 80191B7C 83100900 */  sra        $v0, $t1, 2
    /* 8C08 80191B80 23104300 */  subu       $v0, $v0, $v1
    /* 8C0C 80191B84 C0100200 */  sll        $v0, $v0, 3
    /* 8C10 80191B88 20004224 */  addiu      $v0, $v0, 0x20
    /* 8C14 80191B8C 0300C2A0 */  sb         $v0, 0x3($a2)
    /* 8C18 80191B90 1E80023C */  lui        $v0, %hi(D_801D8A74)
    /* 8C1C 80191B94 748A428C */  lw         $v0, %lo(D_801D8A74)($v0)
    /* 8C20 80191B98 00000000 */  nop
    /* 8C24 80191B9C 23208200 */  subu       $a0, $a0, $v0
    /* 8C28 80191BA0 18008500 */  mult       $a0, $a1
    /* 8C2C 80191BA4 C3170400 */  sra        $v0, $a0, 31
    /* 8C30 80191BA8 10480000 */  mfhi       $t1
    /* 8C34 80191BAC 83180900 */  sra        $v1, $t1, 2
    /* 8C38 80191BB0 23186200 */  subu       $v1, $v1, $v0
    /* 8C3C 80191BB4 80100300 */  sll        $v0, $v1, 2
    /* 8C40 80191BB8 21104300 */  addu       $v0, $v0, $v1
    /* 8C44 80191BBC 40100200 */  sll        $v0, $v0, 1
    /* 8C48 80191BC0 23208200 */  subu       $a0, $a0, $v0
    /* 8C4C 80191BC4 C0200400 */  sll        $a0, $a0, 3
    /* 8C50 80191BC8 20008424 */  addiu      $a0, $a0, 0x20
    /* 8C54 80191BCC 0300C390 */  lbu        $v1, 0x3($a2)
    /* 8C58 80191BD0 20000224 */  addiu      $v0, $zero, 0x20
    /* 8C5C 80191BD4 03006214 */  bne        $v1, $v0, .L80191BE4
    /* 8C60 80191BD8 0F00C4A0 */   sb        $a0, 0xF($a2)
    /* 8C64 80191BDC FA460608 */  j          .L80191BE8
    /* 8C68 80191BE0 7C000224 */   addiu     $v0, $zero, 0x7C
  .L80191BE4:
    /* 8C6C 80191BE4 77000224 */  addiu      $v0, $zero, 0x77
  .L80191BE8:
    /* 8C70 80191BE8 0A00C2A0 */  sb         $v0, 0xA($a2)
    /* 8C74 80191BEC 09000424 */  addiu      $a0, $zero, 0x9
    /* 8C78 80191BF0 0B500524 */  addiu      $a1, $zero, 0x500B
    /* 8C7C 80191BF4 21300000 */  addu       $a2, $zero, $zero
    /* 8C80 80191BF8 21380000 */  addu       $a3, $zero, $zero
    /* 8C84 80191BFC 1C000224 */  addiu      $v0, $zero, 0x1C
    /* 8C88 80191C00 1400A2AF */  sw         $v0, 0x14($sp)
    /* 8C8C 80191C04 00100224 */  addiu      $v0, $zero, 0x1000
    /* 8C90 80191C08 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 8C94 80191C0C 2000A2AF */  sw         $v0, 0x20($sp)
    /* 8C98 80191C10 80000224 */  addiu      $v0, $zero, 0x80
    /* 8C9C 80191C14 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 8CA0 80191C18 3000A2AF */  sw         $v0, 0x30($sp)
    /* 8CA4 80191C1C 3400A2AF */  sw         $v0, 0x34($sp)
    /* 8CA8 80191C20 03000224 */  addiu      $v0, $zero, 0x3
    /* 8CAC 80191C24 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 8CB0 80191C28 01000224 */  addiu      $v0, $zero, 0x1
    /* 8CB4 80191C2C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 8CB8 80191C30 1800A0AF */  sw         $zero, 0x18($sp)
    /* 8CBC 80191C34 2400A0AF */  sw         $zero, 0x24($sp)
    /* 8CC0 80191C38 2800A0AF */  sw         $zero, 0x28($sp)
    /* 8CC4 80191C3C 3800A0AF */  sw         $zero, 0x38($sp)
    /* 8CC8 80191C40 ED4F060C */  jal        func_80193FB4
    /* 8CCC 80191C44 4000A2AF */   sw        $v0, 0x40($sp)
    /* 8CD0 80191C48 1D80033C */  lui        $v1, %hi(D_801D7D40)
    /* 8CD4 80191C4C 407D638C */  lw         $v1, %lo(D_801D7D40)($v1)
    /* 8CD8 80191C50 01000224 */  addiu      $v0, $zero, 0x1
    /* 8CDC 80191C54 1E80013C */  lui        $at, %hi(D_801D93BB)
    /* 8CE0 80191C58 BB9320A0 */  sb         $zero, %lo(D_801D93BB)($at)
    /* 8CE4 80191C5C 1D80013C */  lui        $at, %hi(D_801D1B19)
    /* 8CE8 80191C60 191B20A0 */  sb         $zero, %lo(D_801D1B19)($at)
    /* 8CEC 80191C64 3003A2A2 */  sb         $v0, 0x330($s5)
    /* 8CF0 80191C68 0100013C */  lui        $at, (0x10000 >> 16)
    /* 8CF4 80191C6C 21088102 */  addu       $at, $s4, $at
    /* 8CF8 80191C70 DAAB23A0 */  sb         $v1, -0x5426($at)
    /* 8CFC 80191C74 70470608 */  j          .L80191DC0
    /* 8D00 80191C78 00000000 */   nop
  jlabel .L80191C7C
    /* 8D04 80191C7C 10000424 */  addiu      $a0, $zero, 0x10
    /* 8D08 80191C80 37BC010C */  jal        func_8006F0DC
    /* 8D0C 80191C84 21280000 */   addu      $a1, $zero, $zero
    /* 8D10 80191C88 4D004010 */  beqz       $v0, .L80191DC0
    /* 8D14 80191C8C 01000224 */   addiu     $v0, $zero, 0x1
    /* 8D18 80191C90 1D80033C */  lui        $v1, %hi(D_801D7D44)
    /* 8D1C 80191C94 447D6390 */  lbu        $v1, %lo(D_801D7D44)($v1)
    /* 8D20 80191C98 00000000 */  nop
    /* 8D24 80191C9C 0D006214 */  bne        $v1, $v0, .L80191CD4
    /* 8D28 80191CA0 D0000224 */   addiu     $v0, $zero, 0xD0
  .L80191CA4:
    /* 8D2C 80191CA4 6549060C */  jal        func_80192594
    /* 8D30 80191CA8 21200000 */   addu      $a0, $zero, $zero
    /* 8D34 80191CAC 6D4A060C */  jal        func_801929B4
    /* 8D38 80191CB0 21200000 */   addu      $a0, $zero, $zero
    /* 8D3C 80191CB4 30000224 */  addiu      $v0, $zero, 0x30
    /* 8D40 80191CB8 9402A2A6 */  sh         $v0, 0x294($s5)
    /* 8D44 80191CBC 01000224 */  addiu      $v0, $zero, 0x1
    /* 8D48 80191CC0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 8D4C 80191CC4 21088102 */  addu       $at, $s4, $at
    /* 8D50 80191CC8 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 8D54 80191CCC 70470608 */  j          .L80191DC0
    /* 8D58 80191CD0 00000000 */   nop
  .L80191CD4:
    /* 8D5C 80191CD4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 8D60 80191CD8 21088102 */  addu       $at, $s4, $at
    /* 8D64 80191CDC DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 8D68 80191CE0 70470608 */  j          .L80191DC0
    /* 8D6C 80191CE4 00000000 */   nop
  jlabel .L80191CE8
    /* 8D70 80191CE8 10000424 */  addiu      $a0, $zero, 0x10
    /* 8D74 80191CEC 37BC010C */  jal        func_8006F0DC
    /* 8D78 80191CF0 21280000 */   addu      $a1, $zero, $zero
    /* 8D7C 80191CF4 32004010 */  beqz       $v0, .L80191DC0
    /* 8D80 80191CF8 00000000 */   nop
    /* 8D84 80191CFC 1D80033C */  lui        $v1, %hi(D_801D7D56)
    /* 8D88 80191D00 567D6384 */  lh         $v1, %lo(D_801D7D56)($v1)
    /* 8D8C 80191D04 1D80023C */  lui        $v0, %hi(D_801D1B1B)
    /* 8D90 80191D08 1B1B4290 */  lbu        $v0, %lo(D_801D1B1B)($v0)
    /* 8D94 80191D0C 1D80013C */  lui        $at, %hi(D_801D7D80)
    /* 8D98 80191D10 21082300 */  addu       $at, $at, $v1
    /* 8D9C 80191D14 807D22A0 */  sb         $v0, %lo(D_801D7D80)($at)
    /* 8DA0 80191D18 1D80033C */  lui        $v1, %hi(D_801D7D56)
    /* 8DA4 80191D1C 567D6384 */  lh         $v1, %lo(D_801D7D56)($v1)
    /* 8DA8 80191D20 1D80023C */  lui        $v0, %hi(D_801D1B1C)
    /* 8DAC 80191D24 1C1B4290 */  lbu        $v0, %lo(D_801D1B1C)($v0)
    /* 8DB0 80191D28 1D80013C */  lui        $at, %hi(D_801D7D78)
    /* 8DB4 80191D2C 21082300 */  addu       $at, $at, $v1
    /* 8DB8 80191D30 787D22A0 */  sb         $v0, %lo(D_801D7D78)($at)
    /* 8DBC 80191D34 1D80033C */  lui        $v1, %hi(D_801D7D56)
    /* 8DC0 80191D38 567D6384 */  lh         $v1, %lo(D_801D7D56)($v1)
    /* 8DC4 80191D3C 1D80023C */  lui        $v0, %hi(D_801D1B1C + 0x1)
    /* 8DC8 80191D40 1D1B4290 */  lbu        $v0, %lo(D_801D1B1C + 0x1)($v0)
    /* 8DCC 80191D44 1D80013C */  lui        $at, %hi(D_801D7D68)
    /* 8DD0 80191D48 21082300 */  addu       $at, $at, $v1
    /* 8DD4 80191D4C 687D22A0 */  sb         $v0, %lo(D_801D7D68)($at)
  .L80191D50:
    /* 8DD8 80191D50 644E060C */  jal        func_80193990
    /* 8DDC 80191D54 00000000 */   nop
  .L80191D58:
    /* 8DE0 80191D58 02000224 */  addiu      $v0, $zero, 0x2
    /* 8DE4 80191D5C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 8DE8 80191D60 21088102 */  addu       $at, $s4, $at
    /* 8DEC 80191D64 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 8DF0 80191D68 70470608 */  j          .L80191DC0
    /* 8DF4 80191D6C 00000000 */   nop
  jlabel .L80191D70
    /* 8DF8 80191D70 1D80023C */  lui        $v0, %hi(D_801D7D56)
    /* 8DFC 80191D74 567D4294 */  lhu        $v0, %lo(D_801D7D56)($v0)
    /* 8E00 80191D78 1D80013C */  lui        $at, %hi(D_801D7D44)
    /* 8E04 80191D7C 447D20A0 */  sb         $zero, %lo(D_801D7D44)($at)
    /* 8E08 80191D80 0100013C */  lui        $at, (0x10000 >> 16)
    /* 8E0C 80191D84 21088102 */  addu       $at, $s4, $at
    /* 8E10 80191D88 1E8F22A0 */  sb         $v0, -0x70E2($at)
    /* 8E14 80191D8C B038060C */  jal        func_8018E2C0
    /* 8E18 80191D90 00000000 */   nop
    /* 8E1C 80191D94 70470608 */  j          .L80191DC0
    /* 8E20 80191D98 00000000 */   nop
  jlabel .L80191D9C
    /* 8E24 80191D9C 1D80023C */  lui        $v0, %hi(D_801D7D56)
    /* 8E28 80191DA0 567D4294 */  lhu        $v0, %lo(D_801D7D56)($v0)
    /* 8E2C 80191DA4 1D80013C */  lui        $at, %hi(D_801D7D44)
    /* 8E30 80191DA8 447D20A0 */  sb         $zero, %lo(D_801D7D44)($at)
    /* 8E34 80191DAC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 8E38 80191DB0 21088102 */  addu       $at, $s4, $at
    /* 8E3C 80191DB4 1E8F22A0 */  sb         $v0, -0x70E2($at)
    /* 8E40 80191DB8 ED38060C */  jal        func_8018E3B4
    /* 8E44 80191DBC 00000000 */   nop
  jlabel .L80191DC0
    /* 8E48 80191DC0 6800BF8F */  lw         $ra, 0x68($sp)
    /* 8E4C 80191DC4 6400B78F */  lw         $s7, 0x64($sp)
    /* 8E50 80191DC8 6000B68F */  lw         $s6, 0x60($sp)
    /* 8E54 80191DCC 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 8E58 80191DD0 5800B48F */  lw         $s4, 0x58($sp)
    /* 8E5C 80191DD4 5400B38F */  lw         $s3, 0x54($sp)
    /* 8E60 80191DD8 5000B28F */  lw         $s2, 0x50($sp)
    /* 8E64 80191DDC 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 8E68 80191DE0 4800B08F */  lw         $s0, 0x48($sp)
    /* 8E6C 80191DE4 7000BD27 */  addiu      $sp, $sp, 0x70
    /* 8E70 80191DE8 0800E003 */  jr         $ra
    /* 8E74 80191DEC 00000000 */   nop
endlabel func_8018F324
