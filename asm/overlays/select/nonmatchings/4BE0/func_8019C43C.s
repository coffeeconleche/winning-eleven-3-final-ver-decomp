nonmatching func_8019C43C, 0x1E0

glabel func_8019C43C
    /* 134C4 8019C43C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 134C8 8019C440 80FF0224 */  addiu      $v0, $zero, -0x80
    /* 134CC 8019C444 1E80013C */  lui        $at, %hi(D_801D8D78)
    /* 134D0 8019C448 788D22A4 */  sh         $v0, %lo(D_801D8D78)($at)
    /* 134D4 8019C44C E0FF0224 */  addiu      $v0, $zero, -0x20
    /* 134D8 8019C450 1E80013C */  lui        $at, %hi(D_801D8D7A)
    /* 134DC 8019C454 7A8D22A4 */  sh         $v0, %lo(D_801D8D7A)($at)
    /* 134E0 8019C458 00010224 */  addiu      $v0, $zero, 0x100
    /* 134E4 8019C45C 1E80013C */  lui        $at, %hi(D_801D8D7C)
    /* 134E8 8019C460 7C8D22A4 */  sh         $v0, %lo(D_801D8D7C)($at)
    /* 134EC 8019C464 40000224 */  addiu      $v0, $zero, 0x40
    /* 134F0 8019C468 1E80013C */  lui        $at, %hi(D_801D8D7E)
    /* 134F4 8019C46C 7E8D22A4 */  sh         $v0, %lo(D_801D8D7E)($at)
    /* 134F8 8019C470 80000224 */  addiu      $v0, $zero, 0x80
    /* 134FC 8019C474 1E80013C */  lui        $at, %hi(D_801D8D80)
    /* 13500 8019C478 808D22A0 */  sb         $v0, %lo(D_801D8D80)($at)
    /* 13504 8019C47C 1E80013C */  lui        $at, %hi(D_801D8D81)
    /* 13508 8019C480 818D22A0 */  sb         $v0, %lo(D_801D8D81)($at)
    /* 1350C 8019C484 40000224 */  addiu      $v0, $zero, 0x40
    /* 13510 8019C488 1E80013C */  lui        $at, %hi(D_801D8D82)
    /* 13514 8019C48C 828D22A0 */  sb         $v0, %lo(D_801D8D82)($at)
    /* 13518 8019C490 A2FF0224 */  addiu      $v0, $zero, -0x5E
    /* 1351C 8019C494 1E80013C */  lui        $at, %hi(D_801D8D90)
    /* 13520 8019C498 908D22A4 */  sh         $v0, %lo(D_801D8D90)($at)
    /* 13524 8019C49C 24000224 */  addiu      $v0, $zero, 0x24
    /* 13528 8019C4A0 1E80013C */  lui        $at, %hi(D_801D8D92)
    /* 1352C 8019C4A4 928D22A4 */  sh         $v0, %lo(D_801D8D92)($at)
    /* 13530 8019C4A8 0E000224 */  addiu      $v0, $zero, 0xE
    /* 13534 8019C4AC 1E80013C */  lui        $at, %hi(D_801D8D94)
    /* 13538 8019C4B0 948D22A4 */  sh         $v0, %lo(D_801D8D94)($at)
    /* 1353C 8019C4B4 0C000224 */  addiu      $v0, $zero, 0xC
    /* 13540 8019C4B8 60000424 */  addiu      $a0, $zero, 0x60
    /* 13544 8019C4BC 801F033C */  lui        $v1, (0x1F8002E1 >> 16)
    /* 13548 8019C4C0 E1026390 */  lbu        $v1, (0x1F8002E1 & 0xFFFF)($v1)
    /* 1354C 8019C4C4 20000524 */  addiu      $a1, $zero, 0x20
    /* 13550 8019C4C8 2000B2AF */  sw         $s2, 0x20($sp)
    /* 13554 8019C4CC 1080123C */  lui        $s2, %hi(D_800FF748)
    /* 13558 8019C4D0 48F75226 */  addiu      $s2, $s2, %lo(D_800FF748)
    /* 1355C 8019C4D4 1E80013C */  lui        $at, %hi(D_801D8D96)
    /* 13560 8019C4D8 968D22A4 */  sh         $v0, %lo(D_801D8D96)($at)
    /* 13564 8019C4DC 01000224 */  addiu      $v0, $zero, 0x1
    /* 13568 8019C4E0 2400BFAF */  sw         $ra, 0x24($sp)
    /* 1356C 8019C4E4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 13570 8019C4E8 1800B0AF */  sw         $s0, 0x18($sp)
    /* 13574 8019C4EC 1E80013C */  lui        $at, %hi(D_801D8D98)
    /* 13578 8019C4F0 988D24A0 */  sb         $a0, %lo(D_801D8D98)($at)
    /* 1357C 8019C4F4 1E80013C */  lui        $at, %hi(D_801D8D99)
    /* 13580 8019C4F8 998D24A0 */  sb         $a0, %lo(D_801D8D99)($at)
    /* 13584 8019C4FC 1E80013C */  lui        $at, %hi(D_801D8D9A)
    /* 13588 8019C500 9A8D25A0 */  sb         $a1, %lo(D_801D8D9A)($at)
    /* 1358C 8019C504 05006214 */  bne        $v1, $v0, .L8019C51C
    /* 13590 8019C508 50000224 */   addiu     $v0, $zero, 0x50
    /* 13594 8019C50C 1E80013C */  lui        $at, %hi(D_801D8DA8)
    /* 13598 8019C510 A88D22A4 */  sh         $v0, %lo(D_801D8DA8)($at)
    /* 1359C 8019C514 4B710608 */  j          .L8019C52C
    /* 135A0 8019C518 0A000224 */   addiu     $v0, $zero, 0xA
  .L8019C51C:
    /* 135A4 8019C51C 4B000224 */  addiu      $v0, $zero, 0x4B
    /* 135A8 8019C520 1E80013C */  lui        $at, %hi(D_801D8DA8)
    /* 135AC 8019C524 A88D22A4 */  sh         $v0, %lo(D_801D8DA8)($at)
    /* 135B0 8019C528 04000224 */  addiu      $v0, $zero, 0x4
  .L8019C52C:
    /* 135B4 8019C52C 1E80013C */  lui        $at, %hi(D_801D8DAA)
    /* 135B8 8019C530 AA8D20A4 */  sh         $zero, %lo(D_801D8DAA)($at)
    /* 135BC 8019C534 1E80013C */  lui        $at, %hi(D_801D8DAC)
    /* 135C0 8019C538 AC8D22A4 */  sh         $v0, %lo(D_801D8DAC)($at)
    /* 135C4 8019C53C 1E80013C */  lui        $at, %hi(D_801D8DAE)
    /* 135C8 8019C540 AE8D20A4 */  sh         $zero, %lo(D_801D8DAE)($at)
    /* 135CC 8019C544 1E80013C */  lui        $at, %hi(D_801D8DB0)
    /* 135D0 8019C548 B08D24A0 */  sb         $a0, %lo(D_801D8DB0)($at)
    /* 135D4 8019C54C 1E80013C */  lui        $at, %hi(D_801D8DB1)
    /* 135D8 8019C550 B18D24A0 */  sb         $a0, %lo(D_801D8DB1)($at)
    /* 135DC 8019C554 1E80013C */  lui        $at, %hi(D_801D8DB2)
    /* 135E0 8019C558 B28D25A0 */  sb         $a1, %lo(D_801D8DB2)($at)
    /* 135E4 8019C55C 21200000 */  addu       $a0, $zero, $zero
    /* 135E8 8019C560 0060053C */  lui        $a1, (0x60000000 >> 16)
    /* 135EC 8019C564 1E80063C */  lui        $a2, %hi(D_801D8D78)
    /* 135F0 8019C568 788DC624 */  addiu      $a2, $a2, %lo(D_801D8D78)
    /* 135F4 8019C56C 21380000 */  addu       $a3, $zero, $zero
    /* 135F8 8019C570 03001024 */  addiu      $s0, $zero, 0x3
    /* 135FC 8019C574 1000B0AF */  sw         $s0, 0x10($sp)
    /* 13600 8019C578 3B50060C */  jal        func_801940EC
    /* 13604 8019C57C 1400A0AF */   sw        $zero, 0x14($sp)
    /* 13608 8019C580 01000424 */  addiu      $a0, $zero, 0x1
    /* 1360C 8019C584 0060053C */  lui        $a1, (0x60000000 >> 16)
    /* 13610 8019C588 1E80063C */  lui        $a2, %hi(D_801D8D90)
    /* 13614 8019C58C 908DC624 */  addiu      $a2, $a2, %lo(D_801D8D90)
    /* 13618 8019C590 21380000 */  addu       $a3, $zero, $zero
    /* 1361C 8019C594 01001124 */  addiu      $s1, $zero, 0x1
    /* 13620 8019C598 1000B0AF */  sw         $s0, 0x10($sp)
    /* 13624 8019C59C 3B50060C */  jal        func_801940EC
    /* 13628 8019C5A0 1400B1AF */   sw        $s1, 0x14($sp)
    /* 1362C 8019C5A4 02000424 */  addiu      $a0, $zero, 0x2
    /* 13630 8019C5A8 0060053C */  lui        $a1, (0x60000000 >> 16)
    /* 13634 8019C5AC 1E80063C */  lui        $a2, %hi(D_801D8DA8)
    /* 13638 8019C5B0 A88DC624 */  addiu      $a2, $a2, %lo(D_801D8DA8)
    /* 1363C 8019C5B4 21380000 */  addu       $a3, $zero, $zero
    /* 13640 8019C5B8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 13644 8019C5BC 7850060C */  jal        func_801941E0
    /* 13648 8019C5C0 1400B1AF */   sw        $s1, 0x14($sp)
    /* 1364C 8019C5C4 1772060C */  jal        func_8019C85C
    /* 13650 8019C5C8 00000000 */   nop
    /* 13654 8019C5CC 21300000 */  addu       $a2, $zero, $zero
    /* 13658 8019C5D0 00FE0724 */  addiu      $a3, $zero, -0x200
    /* 1365C 8019C5D4 50050524 */  addiu      $a1, $zero, 0x550
    /* 13660 8019C5D8 B0040424 */  addiu      $a0, $zero, 0x4B0
  .L8019C5DC:
    /* 13664 8019C5DC 21184502 */  addu       $v1, $s2, $a1
    /* 13668 8019C5E0 2800A524 */  addiu      $a1, $a1, 0x28
    /* 1366C 8019C5E4 21104402 */  addu       $v0, $s2, $a0
    /* 13670 8019C5E8 28008424 */  addiu      $a0, $a0, 0x28
    /* 13674 8019C5EC 0100C624 */  addiu      $a2, $a2, 0x1
    /* 13678 8019C5F0 D05D47A4 */  sh         $a3, 0x5DD0($v0)
    /* 1367C 8019C5F4 0400C228 */  slti       $v0, $a2, 0x4
    /* 13680 8019C5F8 F8FF4014 */  bnez       $v0, .L8019C5DC
    /* 13684 8019C5FC D05D67A4 */   sh        $a3, 0x5DD0($v1)
    /* 13688 8019C600 2400BF8F */  lw         $ra, 0x24($sp)
    /* 1368C 8019C604 2000B28F */  lw         $s2, 0x20($sp)
    /* 13690 8019C608 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 13694 8019C60C 1800B08F */  lw         $s0, 0x18($sp)
    /* 13698 8019C610 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 1369C 8019C614 0800E003 */  jr         $ra
    /* 136A0 8019C618 00000000 */   nop
endlabel func_8019C43C
