nonmatching func_800C1338, 0x280

glabel func_800C1338
    /* B1B38 800C1338 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* B1B3C 800C133C 1000B0AF */  sw         $s0, 0x10($sp)
    /* B1B40 800C1340 21808000 */  addu       $s0, $a0, $zero
    /* B1B44 800C1344 0D80043C */  lui        $a0, %hi(D_800D559C)
    /* B1B48 800C1348 9C55848C */  lw         $a0, %lo(D_800D559C)($a0)
    /* B1B4C 800C134C 1800BFAF */  sw         $ra, 0x18($sp)
    /* B1B50 800C1350 1400B1AF */  sw         $s1, 0x14($sp)
    /* B1B54 800C1354 0000828C */  lw         $v0, 0x0($a0)
    /* B1B58 800C1358 0B00033C */  lui        $v1, (0xB0000 >> 16)
    /* B1B5C 800C135C 25104300 */  or         $v0, $v0, $v1
    /* B1B60 800C1360 000082AC */  sw         $v0, 0x0($a0)
    /* B1B64 800C1364 0D80023C */  lui        $v0, %hi(D_800D558C)
    /* B1B68 800C1368 8C55428C */  lw         $v0, %lo(D_800D558C)($v0)
    /* B1B6C 800C136C 0D80013C */  lui        $at, %hi(D_800D55A8)
    /* B1B70 800C1370 A85520AC */  sw         $zero, %lo(D_800D55A8)($at)
    /* B1B74 800C1374 0D80013C */  lui        $at, %hi(D_800D55AC)
    /* B1B78 800C1378 AC5520AC */  sw         $zero, %lo(D_800D55AC)($at)
    /* B1B7C 800C137C 0D80013C */  lui        $at, %hi(D_800D55A4)
    /* B1B80 800C1380 A45520A4 */  sh         $zero, %lo(D_800D55A4)($at)
    /* B1B84 800C1384 800140A4 */  sh         $zero, 0x180($v0)
    /* B1B88 800C1388 820140A4 */  sh         $zero, 0x182($v0)
    /* B1B8C 800C138C 8407030C */  jal        func_800C1E10
    /* B1B90 800C1390 AA0140A4 */   sh        $zero, 0x1AA($v0)
    /* B1B94 800C1394 0D80023C */  lui        $v0, %hi(D_800D558C)
    /* B1B98 800C1398 8C55428C */  lw         $v0, %lo(D_800D558C)($v0)
    /* B1B9C 800C139C 00000000 */  nop
    /* B1BA0 800C13A0 800140A4 */  sh         $zero, 0x180($v0)
    /* B1BA4 800C13A4 820140A4 */  sh         $zero, 0x182($v0)
    /* B1BA8 800C13A8 AE014294 */  lhu        $v0, 0x1AE($v0)
    /* B1BAC 800C13AC 00000000 */  nop
    /* B1BB0 800C13B0 FF074230 */  andi       $v0, $v0, 0x7FF
    /* B1BB4 800C13B4 14004010 */  beqz       $v0, .L800C1408
    /* B1BB8 800C13B8 21180000 */   addu      $v1, $zero, $zero
    /* B1BBC 800C13BC 01006324 */  addiu      $v1, $v1, 0x1
  .L800C13C0:
    /* B1BC0 800C13C0 010F622C */  sltiu      $v0, $v1, 0xF01
    /* B1BC4 800C13C4 08004014 */  bnez       $v0, .L800C13E8
    /* B1BC8 800C13C8 00000000 */   nop
    /* B1BCC 800C13CC 0180043C */  lui        $a0, %hi(D_8001551C)
    /* B1BD0 800C13D0 1C558424 */  addiu      $a0, $a0, %lo(D_8001551C)
    /* B1BD4 800C13D4 0180053C */  lui        $a1, %hi(D_8001552C)
    /* B1BD8 800C13D8 A6B5020C */  jal        func_800AD698
    /* B1BDC 800C13DC 2C55A524 */   addiu     $a1, $a1, %lo(D_8001552C)
    /* B1BE0 800C13E0 03050308 */  j          .L800C140C
    /* B1BE4 800C13E4 21200000 */   addu      $a0, $zero, $zero
  .L800C13E8:
    /* B1BE8 800C13E8 0D80023C */  lui        $v0, %hi(D_800D558C)
    /* B1BEC 800C13EC 8C55428C */  lw         $v0, %lo(D_800D558C)($v0)
    /* B1BF0 800C13F0 00000000 */  nop
    /* B1BF4 800C13F4 AE014294 */  lhu        $v0, 0x1AE($v0)
    /* B1BF8 800C13F8 00000000 */  nop
    /* B1BFC 800C13FC FF074230 */  andi       $v0, $v0, 0x7FF
    /* B1C00 800C1400 EFFF4014 */  bnez       $v0, .L800C13C0
    /* B1C04 800C1404 01006324 */   addiu     $v1, $v1, 0x1
  .L800C1408:
    /* B1C08 800C1408 21200000 */  addu       $a0, $zero, $zero
  .L800C140C:
    /* B1C0C 800C140C 0F80053C */  lui        $a1, %hi(D_800F0EA8)
    /* B1C10 800C1410 A80EA524 */  addiu      $a1, $a1, %lo(D_800F0EA8)
    /* B1C14 800C1414 02000224 */  addiu      $v0, $zero, 0x2
    /* B1C18 800C1418 0D80013C */  lui        $at, %hi(D_800D55B0)
    /* B1C1C 800C141C B05522AC */  sw         $v0, %lo(D_800D55B0)($at)
    /* B1C20 800C1420 03000224 */  addiu      $v0, $zero, 0x3
    /* B1C24 800C1424 0D80013C */  lui        $at, %hi(D_800D55B4)
    /* B1C28 800C1428 B45522AC */  sw         $v0, %lo(D_800D55B4)($at)
    /* B1C2C 800C142C 08000224 */  addiu      $v0, $zero, 0x8
    /* B1C30 800C1430 0D80013C */  lui        $at, %hi(D_800D55B8)
    /* B1C34 800C1434 B85522AC */  sw         $v0, %lo(D_800D55B8)($at)
    /* B1C38 800C1438 07000224 */  addiu      $v0, $zero, 0x7
    /* B1C3C 800C143C 0D80013C */  lui        $at, %hi(D_800D55BC)
    /* B1C40 800C1440 BC5522AC */  sw         $v0, %lo(D_800D55BC)($at)
    /* B1C44 800C1444 0D80023C */  lui        $v0, %hi(D_800D558C)
    /* B1C48 800C1448 8C55428C */  lw         $v0, %lo(D_800D558C)($v0)
    /* B1C4C 800C144C 04000324 */  addiu      $v1, $zero, 0x4
    /* B1C50 800C1450 AC0143A4 */  sh         $v1, 0x1AC($v0)
    /* B1C54 800C1454 FFFF0334 */  ori        $v1, $zero, 0xFFFF
    /* B1C58 800C1458 840140A4 */  sh         $zero, 0x184($v0)
    /* B1C5C 800C145C 860140A4 */  sh         $zero, 0x186($v0)
    /* B1C60 800C1460 8C0143A4 */  sh         $v1, 0x18C($v0)
    /* B1C64 800C1464 8E0143A4 */  sh         $v1, 0x18E($v0)
    /* B1C68 800C1468 980140A4 */  sh         $zero, 0x198($v0)
    /* B1C6C 800C146C 9A0140A4 */  sh         $zero, 0x19A($v0)
  .L800C1470:
    /* B1C70 800C1470 0000A0A4 */  sh         $zero, 0x0($a1)
    /* B1C74 800C1474 01008424 */  addiu      $a0, $a0, 0x1
    /* B1C78 800C1478 0A008228 */  slti       $v0, $a0, 0xA
    /* B1C7C 800C147C FCFF4014 */  bnez       $v0, .L800C1470
    /* B1C80 800C1480 0200A524 */   addiu     $a1, $a1, 0x2
    /* B1C84 800C1484 3C000016 */  bnez       $s0, .L800C1578
    /* B1C88 800C1488 21100000 */   addu      $v0, $zero, $zero
    /* B1C8C 800C148C 0D80043C */  lui        $a0, %hi(D_800D55CC)
    /* B1C90 800C1490 CC558424 */  addiu      $a0, $a0, %lo(D_800D55CC)
    /* B1C94 800C1494 0D80023C */  lui        $v0, %hi(D_800D558C)
    /* B1C98 800C1498 8C55428C */  lw         $v0, %lo(D_800D558C)($v0)
    /* B1C9C 800C149C 00020324 */  addiu      $v1, $zero, 0x200
    /* B1CA0 800C14A0 0D80013C */  lui        $at, %hi(D_800D55A4)
    /* B1CA4 800C14A4 A45523A4 */  sh         $v1, %lo(D_800D55A4)($at)
    /* B1CA8 800C14A8 900140A4 */  sh         $zero, 0x190($v0)
    /* B1CAC 800C14AC 920140A4 */  sh         $zero, 0x192($v0)
    /* B1CB0 800C14B0 940140A4 */  sh         $zero, 0x194($v0)
    /* B1CB4 800C14B4 960140A4 */  sh         $zero, 0x196($v0)
    /* B1CB8 800C14B8 B00140A4 */  sh         $zero, 0x1B0($v0)
    /* B1CBC 800C14BC B20140A4 */  sh         $zero, 0x1B2($v0)
    /* B1CC0 800C14C0 B40140A4 */  sh         $zero, 0x1B4($v0)
    /* B1CC4 800C14C4 B60140A4 */  sh         $zero, 0x1B6($v0)
    /* B1CC8 800C14C8 6E05030C */  jal        func_800C15B8
    /* B1CCC 800C14CC 10000524 */   addiu     $a1, $zero, 0x10
    /* B1CD0 800C14D0 21200000 */  addu       $a0, $zero, $zero
    /* B1CD4 800C14D4 FF3F0624 */  addiu      $a2, $zero, 0x3FFF
    /* B1CD8 800C14D8 00020524 */  addiu      $a1, $zero, 0x200
    /* B1CDC 800C14DC 0D80033C */  lui        $v1, %hi(D_800D558C)
    /* B1CE0 800C14E0 8C55638C */  lw         $v1, %lo(D_800D558C)($v1)
    /* B1CE4 800C14E4 00000000 */  nop
  .L800C14E8:
    /* B1CE8 800C14E8 000060A4 */  sh         $zero, 0x0($v1)
    /* B1CEC 800C14EC 020060A4 */  sh         $zero, 0x2($v1)
    /* B1CF0 800C14F0 040066A4 */  sh         $a2, 0x4($v1)
    /* B1CF4 800C14F4 060065A4 */  sh         $a1, 0x6($v1)
    /* B1CF8 800C14F8 080060A4 */  sh         $zero, 0x8($v1)
    /* B1CFC 800C14FC 0A0060A4 */  sh         $zero, 0xA($v1)
    /* B1D00 800C1500 01008424 */  addiu      $a0, $a0, 0x1
    /* B1D04 800C1504 18008228 */  slti       $v0, $a0, 0x18
    /* B1D08 800C1508 F7FF4014 */  bnez       $v0, .L800C14E8
    /* B1D0C 800C150C 10006324 */   addiu     $v1, $v1, 0x10
    /* B1D10 800C1510 FFFF1134 */  ori        $s1, $zero, 0xFFFF
    /* B1D14 800C1514 0D80023C */  lui        $v0, %hi(D_800D558C)
    /* B1D18 800C1518 8C55428C */  lw         $v0, %lo(D_800D558C)($v0)
    /* B1D1C 800C151C FF001024 */  addiu      $s0, $zero, 0xFF
    /* B1D20 800C1520 880151A4 */  sh         $s1, 0x188($v0)
    /* B1D24 800C1524 8407030C */  jal        func_800C1E10
    /* B1D28 800C1528 8A0150A4 */   sh        $s0, 0x18A($v0)
    /* B1D2C 800C152C 8407030C */  jal        func_800C1E10
    /* B1D30 800C1530 00000000 */   nop
    /* B1D34 800C1534 8407030C */  jal        func_800C1E10
    /* B1D38 800C1538 00000000 */   nop
    /* B1D3C 800C153C 8407030C */  jal        func_800C1E10
    /* B1D40 800C1540 00000000 */   nop
    /* B1D44 800C1544 0D80023C */  lui        $v0, %hi(D_800D558C)
    /* B1D48 800C1548 8C55428C */  lw         $v0, %lo(D_800D558C)($v0)
    /* B1D4C 800C154C 00000000 */  nop
    /* B1D50 800C1550 8C0151A4 */  sh         $s1, 0x18C($v0)
    /* B1D54 800C1554 8407030C */  jal        func_800C1E10
    /* B1D58 800C1558 8E0150A4 */   sh        $s0, 0x18E($v0)
    /* B1D5C 800C155C 8407030C */  jal        func_800C1E10
    /* B1D60 800C1560 00000000 */   nop
    /* B1D64 800C1564 8407030C */  jal        func_800C1E10
    /* B1D68 800C1568 00000000 */   nop
    /* B1D6C 800C156C 8407030C */  jal        func_800C1E10
    /* B1D70 800C1570 00000000 */   nop
    /* B1D74 800C1574 21100000 */  addu       $v0, $zero, $zero
  .L800C1578:
    /* B1D78 800C1578 0D80043C */  lui        $a0, %hi(D_800D558C)
    /* B1D7C 800C157C 8C55848C */  lw         $a0, %lo(D_800D558C)($a0)
    /* B1D80 800C1580 01000324 */  addiu      $v1, $zero, 0x1
    /* B1D84 800C1584 0D80013C */  lui        $at, %hi(D_800D55C0)
    /* B1D88 800C1588 C05523AC */  sw         $v1, %lo(D_800D55C0)($at)
    /* B1D8C 800C158C 00C00334 */  ori        $v1, $zero, 0xC000
    /* B1D90 800C1590 AA0183A4 */  sh         $v1, 0x1AA($a0)
    /* B1D94 800C1594 0D80013C */  lui        $at, %hi(D_800D55C4)
    /* B1D98 800C1598 C45520AC */  sw         $zero, %lo(D_800D55C4)($at)
    /* B1D9C 800C159C 0D80013C */  lui        $at, %hi(D_800D55C8)
    /* B1DA0 800C15A0 C85520AC */  sw         $zero, %lo(D_800D55C8)($at)
    /* B1DA4 800C15A4 1800BF8F */  lw         $ra, 0x18($sp)
    /* B1DA8 800C15A8 1400B18F */  lw         $s1, 0x14($sp)
    /* B1DAC 800C15AC 1000B08F */  lw         $s0, 0x10($sp)
    /* B1DB0 800C15B0 0800E003 */  jr         $ra
    /* B1DB4 800C15B4 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800C1338
