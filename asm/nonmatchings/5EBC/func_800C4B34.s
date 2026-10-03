nonmatching func_800C4B34, 0x260

glabel func_800C4B34
    /* B5334 800C4B34 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* B5338 800C4B38 FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* B533C 800C4B3C C0210400 */  sll        $a0, $a0, 7
    /* B5340 800C4B40 FFFFA530 */  andi       $a1, $a1, 0xFFFF
    /* B5344 800C4B44 21208500 */  addu       $a0, $a0, $a1
    /* B5348 800C4B48 FFFFC630 */  andi       $a2, $a2, 0xFFFF
    /* B534C 800C4B4C C0310600 */  sll        $a2, $a2, 7
    /* B5350 800C4B50 FFFFE730 */  andi       $a3, $a3, 0xFFFF
    /* B5354 800C4B54 2130C700 */  addu       $a2, $a2, $a3
    /* B5358 800C4B58 2330C400 */  subu       $a2, $a2, $a0
    /* B535C 800C4B5C 0200C104 */  bgez       $a2, .L800C4B68
    /* B5360 800C4B60 2128C000 */   addu      $a1, $a2, $zero
    /* B5364 800C4B64 23280600 */  negu       $a1, $a2
  .L800C4B68:
    /* B5368 800C4B68 AA2A023C */  lui        $v0, (0x2AAAAAAB >> 16)
    /* B536C 800C4B6C ABAA4234 */  ori        $v0, $v0, (0x2AAAAAAB & 0xFFFF)
    /* B5370 800C4B70 1800A200 */  mult       $a1, $v0
    /* B5374 800C4B74 C3170500 */  sra        $v0, $a1, 31
    /* B5378 800C4B78 10480000 */  mfhi       $t1
    /* B537C 800C4B7C 031A0900 */  sra        $v1, $t1, 8
    /* B5380 800C4B80 23186200 */  subu       $v1, $v1, $v0
    /* B5384 800C4B84 21206000 */  addu       $a0, $v1, $zero
    /* B5388 800C4B88 40100400 */  sll        $v0, $a0, 1
    /* B538C 800C4B8C 21104400 */  addu       $v0, $v0, $a0
    /* B5390 800C4B90 40120200 */  sll        $v0, $v0, 9
    /* B5394 800C4B94 0400C004 */  bltz       $a2, .L800C4BA8
    /* B5398 800C4B98 2318A200 */   subu      $v1, $a1, $v0
    /* B539C 800C4B9C 00100224 */  addiu      $v0, $zero, 0x1000
    /* B53A0 800C4BA0 F0120308 */  j          .L800C4BC0
    /* B53A4 800C4BA4 04108200 */   sllv      $v0, $v0, $a0
  .L800C4BA8:
    /* B53A8 800C4BA8 03006010 */  beqz       $v1, .L800C4BB8
    /* B53AC 800C4BAC 00060224 */   addiu     $v0, $zero, 0x600
    /* B53B0 800C4BB0 01008424 */  addiu      $a0, $a0, 0x1
    /* B53B4 800C4BB4 23184300 */  subu       $v1, $v0, $v1
  .L800C4BB8:
    /* B53B8 800C4BB8 00100224 */  addiu      $v0, $zero, 0x1000
    /* B53BC 800C4BBC 07108200 */  srav       $v0, $v0, $a0
  .L800C4BC0:
    /* B53C0 800C4BC0 FFFF4630 */  andi       $a2, $v0, 0xFFFF
    /* B53C4 800C4BC4 3B100424 */  addiu      $a0, $zero, 0x103B
    /* B53C8 800C4BC8 1800C400 */  mult       $a2, $a0
    /* B53CC 800C4BCC 003B0600 */  sll        $a3, $a2, 12
    /* B53D0 800C4BD0 21280000 */  addu       $a1, $zero, $zero
    /* B53D4 800C4BD4 02006104 */  bgez       $v1, .L800C4BE0
    /* B53D8 800C4BD8 21106000 */   addu      $v0, $v1, $zero
    /* B53DC 800C4BDC 23100200 */  negu       $v0, $v0
  .L800C4BE0:
    /* B53E0 800C4BE0 42190200 */  srl        $v1, $v0, 5
    /* B53E4 800C4BE4 1F004830 */  andi       $t0, $v0, 0x1F
    /* B53E8 800C4BE8 12480000 */  mflo       $t1
    /* B53EC 800C4BEC 10006010 */  beqz       $v1, .L800C4C30
    /* B53F0 800C4BF0 0000A9AF */   sw        $t1, 0x0($sp)
    /* B53F4 800C4BF4 1800C400 */  mult       $a2, $a0
  .L800C4BF8:
    /* B53F8 800C4BF8 80110400 */  sll        $v0, $a0, 6
    /* B53FC 800C4BFC 21104400 */  addu       $v0, $v0, $a0
    /* B5400 800C4C00 00110200 */  sll        $v0, $v0, 4
    /* B5404 800C4C04 23104400 */  subu       $v0, $v0, $a0
    /* B5408 800C4C08 80100200 */  sll        $v0, $v0, 2
    /* B540C 800C4C0C 12380000 */  mflo       $a3
    /* B5410 800C4C10 23204400 */  subu       $a0, $v0, $a0
    /* B5414 800C4C14 02230400 */  srl        $a0, $a0, 12
    /* B5418 800C4C18 1800C400 */  mult       $a2, $a0
    /* B541C 800C4C1C 0100A524 */  addiu      $a1, $a1, 0x1
    /* B5420 800C4C20 2A10A300 */  slt        $v0, $a1, $v1
    /* B5424 800C4C24 12480000 */  mflo       $t1
    /* B5428 800C4C28 F3FF4014 */  bnez       $v0, .L800C4BF8
    /* B542C 800C4C2C 0000A9AF */   sw        $t1, 0x0($sp)
  .L800C4C30:
    /* B5430 800C4C30 0000A98F */  lw         $t1, 0x0($sp)
    /* B5434 800C4C34 00000000 */  nop
    /* B5438 800C4C38 23102701 */  subu       $v0, $t1, $a3
    /* B543C 800C4C3C 42110200 */  srl        $v0, $v0, 5
    /* B5440 800C4C40 18004800 */  mult       $v0, $t0
    /* B5444 800C4C44 12480000 */  mflo       $t1
    /* B5448 800C4C48 2110E900 */  addu       $v0, $a3, $t1
    /* B544C 800C4C4C 021B0200 */  srl        $v1, $v0, 12
    /* B5450 800C4C50 0040622C */  sltiu      $v0, $v1, 0x4000
    /* B5454 800C4C54 03004014 */  bnez       $v0, .L800C4C64
    /* B5458 800C4C58 FFFF6230 */   andi      $v0, $v1, 0xFFFF
    /* B545C 800C4C5C FF3F0324 */  addiu      $v1, $zero, 0x3FFF
    /* B5460 800C4C60 FFFF6230 */  andi       $v0, $v1, 0xFFFF
  .L800C4C64:
    /* B5464 800C4C64 0800E003 */  jr         $ra
    /* B5468 800C4C68 0800BD27 */   addiu     $sp, $sp, 0x8
    /* B546C 800C4C6C 21C08000 */  addu       $t8, $a0, $zero
    /* B5470 800C4C70 2120C000 */  addu       $a0, $a2, $zero
    /* B5474 800C4C74 27300600 */  nor        $a2, $zero, $a2
    /* B5478 800C4C78 21180000 */  addu       $v1, $zero, $zero
    /* B547C 800C4C7C 0F000A24 */  addiu      $t2, $zero, 0xF
    /* B5480 800C4C80 FFFFC630 */  andi       $a2, $a2, 0xFFFF
    /* B5484 800C4C84 07104601 */  srav       $v0, $a2, $t2
  .L800C4C88:
    /* B5488 800C4C88 01004230 */  andi       $v0, $v0, 0x1
    /* B548C 800C4C8C 03004014 */  bnez       $v0, .L800C4C9C
    /* B5490 800C4C90 00000000 */   nop
    /* B5494 800C4C94 2A130308 */  j          .L800C4CA8
    /* B5498 800C4C98 21184001 */   addu      $v1, $t2, $zero
  .L800C4C9C:
    /* B549C 800C4C9C FFFF4A25 */  addiu      $t2, $t2, -0x1
    /* B54A0 800C4CA0 F9FF4105 */  bgez       $t2, .L800C4C88
    /* B54A4 800C4CA4 07104601 */   srav      $v0, $a2, $t2
  .L800C4CA8:
    /* B54A8 800C4CA8 F4FF6F24 */  addiu      $t7, $v1, -0xC
    /* B54AC 800C4CAC 01000224 */  addiu      $v0, $zero, 0x1
    /* B54B0 800C4CB0 04706200 */  sllv       $t6, $v0, $v1
    /* B54B4 800C4CB4 00100824 */  addiu      $t0, $zero, 0x1000
    /* B54B8 800C4CB8 21500000 */  addu       $t2, $zero, $zero
    /* B54BC 800C4CBC FFFF8630 */  andi       $a2, $a0, 0xFFFF
    /* B54C0 800C4CC0 1800C801 */  mult       $t6, $t0
  .L800C4CC4:
    /* B54C4 800C4CC4 80110800 */  sll        $v0, $t0, 6
    /* B54C8 800C4CC8 21104800 */  addu       $v0, $v0, $t0
    /* B54CC 800C4CCC 00110200 */  sll        $v0, $v0, 4
    /* B54D0 800C4CD0 23104800 */  subu       $v0, $v0, $t0
    /* B54D4 800C4CD4 80100200 */  sll        $v0, $v0, 2
    /* B54D8 800C4CD8 12600000 */  mflo       $t4
    /* B54DC 800C4CDC 23404800 */  subu       $t0, $v0, $t0
    /* B54E0 800C4CE0 02430800 */  srl        $t0, $t0, 12
    /* B54E4 800C4CE4 1800C801 */  mult       $t6, $t0
    /* B54E8 800C4CE8 21200000 */  addu       $a0, $zero, $zero
    /* B54EC 800C4CEC 40690A00 */  sll        $t5, $t2, 5
    /* B54F0 800C4CF0 21580000 */  addu       $t3, $zero, $zero
    /* B54F4 800C4CF4 12180000 */  mflo       $v1
    /* B54F8 800C4CF8 23106C00 */  subu       $v0, $v1, $t4
    /* B54FC 800C4CFC 42490200 */  srl        $t1, $v0, 5
    /* B5500 800C4D00 21382001 */  addu       $a3, $t1, $zero
  .L800C4D04:
    /* B5504 800C4D04 21108B01 */  addu       $v0, $t4, $t3
    /* B5508 800C4D08 21188701 */  addu       $v1, $t4, $a3
    /* B550C 800C4D0C 02130200 */  srl        $v0, $v0, 12
    /* B5510 800C4D10 2B10C200 */  sltu       $v0, $a2, $v0
    /* B5514 800C4D14 04004014 */  bnez       $v0, .L800C4D28
    /* B5518 800C4D18 021B0300 */   srl       $v1, $v1, 12
    /* B551C 800C4D1C 2B10C300 */  sltu       $v0, $a2, $v1
    /* B5520 800C4D20 0B004014 */  bnez       $v0, .L800C4D50
    /* B5524 800C4D24 2110A401 */   addu      $v0, $t5, $a0
  .L800C4D28:
    /* B5528 800C4D28 2138E900 */  addu       $a3, $a3, $t1
    /* B552C 800C4D2C 01008424 */  addiu      $a0, $a0, 0x1
    /* B5530 800C4D30 20008228 */  slti       $v0, $a0, 0x20
    /* B5534 800C4D34 F3FF4014 */  bnez       $v0, .L800C4D04
    /* B5538 800C4D38 21586901 */   addu      $t3, $t3, $t1
    /* B553C 800C4D3C 01004A25 */  addiu      $t2, $t2, 0x1
    /* B5540 800C4D40 30004229 */  slti       $v0, $t2, 0x30
    /* B5544 800C4D44 DFFF4014 */  bnez       $v0, .L800C4CC4
    /* B5548 800C4D48 1800C801 */   mult      $t6, $t0
    /* B554C 800C4D4C 00060224 */  addiu      $v0, $zero, 0x600
  .L800C4D50:
    /* B5550 800C4D50 02004104 */  bgez       $v0, .L800C4D5C
    /* B5554 800C4D54 21184000 */   addu      $v1, $v0, $zero
    /* B5558 800C4D58 7F004324 */  addiu      $v1, $v0, 0x7F
  .L800C4D5C:
    /* B555C 800C4D5C C3190300 */  sra        $v1, $v1, 7
    /* B5560 800C4D60 C0210300 */  sll        $a0, $v1, 7
    /* B5564 800C4D64 23204400 */  subu       $a0, $v0, $a0
    /* B5568 800C4D68 FFFF0233 */  andi       $v0, $t8, 0xFFFF
    /* B556C 800C4D6C 21104300 */  addu       $v0, $v0, $v1
    /* B5570 800C4D70 40180F00 */  sll        $v1, $t7, 1
    /* B5574 800C4D74 21186F00 */  addu       $v1, $v1, $t7
    /* B5578 800C4D78 80180300 */  sll        $v1, $v1, 2
    /* B557C 800C4D7C 21104300 */  addu       $v0, $v0, $v1
    /* B5580 800C4D80 FFFFA330 */  andi       $v1, $a1, 0xFFFF
    /* B5584 800C4D84 21186400 */  addu       $v1, $v1, $a0
    /* B5588 800C4D88 00120200 */  sll        $v0, $v0, 8
    /* B558C 800C4D8C 0800E003 */  jr         $ra
    /* B5590 800C4D90 25104300 */   or        $v0, $v0, $v1
endlabel func_800C4B34
    /* B5594 800C4D94 00000000 */  nop
