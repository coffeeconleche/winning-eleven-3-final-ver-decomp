nonmatching func_800C1C88, 0x138

glabel func_800C1C88
    /* B2488 800C1C88 0D80023C */  lui        $v0, %hi(D_800D55B0)
    /* B248C 800C1C8C B055428C */  lw         $v0, %lo(D_800D55B0)($v0)
    /* B2490 800C1C90 00000000 */  nop
    /* B2494 800C1C94 10004010 */  beqz       $v0, .L800C1CD8
    /* B2498 800C1C98 21308000 */   addu      $a2, $a0, $zero
    /* B249C 800C1C9C 0D80043C */  lui        $a0, %hi(D_800D55B8)
    /* B24A0 800C1CA0 B855848C */  lw         $a0, %lo(D_800D55B8)($a0)
    /* B24A4 800C1CA4 00000000 */  nop
    /* B24A8 800C1CA8 1B00A400 */  divu       $zero, $a1, $a0
    /* B24AC 800C1CAC 02008014 */  bnez       $a0, .L800C1CB8
    /* B24B0 800C1CB0 00000000 */   nop
    /* B24B4 800C1CB4 0D000700 */  break      7
  .L800C1CB8:
    /* B24B8 800C1CB8 10100000 */  mfhi       $v0
    /* B24BC 800C1CBC 06004010 */  beqz       $v0, .L800C1CD8
    /* B24C0 800C1CC0 00000000 */   nop
    /* B24C4 800C1CC4 0D80023C */  lui        $v0, %hi(D_800D55BC)
    /* B24C8 800C1CC8 BC55428C */  lw         $v0, %lo(D_800D55BC)($v0)
    /* B24CC 800C1CCC 2128A400 */  addu       $a1, $a1, $a0
    /* B24D0 800C1CD0 27100200 */  nor        $v0, $zero, $v0
    /* B24D4 800C1CD4 2428A200 */  and        $a1, $a1, $v0
  .L800C1CD8:
    /* B24D8 800C1CD8 0D80023C */  lui        $v0, %hi(D_800D55B4)
    /* B24DC 800C1CDC B455428C */  lw         $v0, %lo(D_800D55B4)($v0)
    /* B24E0 800C1CE0 00000000 */  nop
    /* B24E4 800C1CE4 06384500 */  srlv       $a3, $a1, $v0
    /* B24E8 800C1CE8 FEFF0224 */  addiu      $v0, $zero, -0x2
    /* B24EC 800C1CEC 0600C210 */  beq        $a2, $v0, .L800C1D08
    /* B24F0 800C1CF0 2118E000 */   addu      $v1, $a3, $zero
    /* B24F4 800C1CF4 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* B24F8 800C1CF8 0500C214 */  bne        $a2, $v0, .L800C1D10
    /* B24FC 800C1CFC 2110A000 */   addu      $v0, $a1, $zero
    /* B2500 800C1D00 49070308 */  j          .L800C1D24
    /* B2504 800C1D04 FFFF6230 */   andi      $v0, $v1, 0xFFFF
  .L800C1D08:
    /* B2508 800C1D08 49070308 */  j          .L800C1D24
    /* B250C 800C1D0C 2110A000 */   addu      $v0, $a1, $zero
  .L800C1D10:
    /* B2510 800C1D10 0D80043C */  lui        $a0, %hi(D_800D558C)
    /* B2514 800C1D14 8C55848C */  lw         $a0, %lo(D_800D558C)($a0)
    /* B2518 800C1D18 40180600 */  sll        $v1, $a2, 1
    /* B251C 800C1D1C 21186400 */  addu       $v1, $v1, $a0
    /* B2520 800C1D20 000067A4 */  sh         $a3, 0x0($v1)
  .L800C1D24:
    /* B2524 800C1D24 0800E003 */  jr         $ra
    /* B2528 800C1D28 00000000 */   nop
    /* B252C 800C1D2C 0D80023C */  lui        $v0, %hi(D_800D558C)
    /* B2530 800C1D30 8C55428C */  lw         $v0, %lo(D_800D558C)($v0)
    /* B2534 800C1D34 40200400 */  sll        $a0, $a0, 1
    /* B2538 800C1D38 21208200 */  addu       $a0, $a0, $v0
    /* B253C 800C1D3C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* B2540 800C1D40 00008494 */  lhu        $a0, 0x0($a0)
    /* B2544 800C1D44 0500A210 */  beq        $a1, $v0, .L800C1D5C
    /* B2548 800C1D48 00000000 */   nop
    /* B254C 800C1D4C 0D80023C */  lui        $v0, %hi(D_800D55B4)
    /* B2550 800C1D50 B455428C */  lw         $v0, %lo(D_800D55B4)($v0)
    /* B2554 800C1D54 58070308 */  j          .L800C1D60
    /* B2558 800C1D58 04104400 */   sllv      $v0, $a0, $v0
  .L800C1D5C:
    /* B255C 800C1D5C 21108000 */  addu       $v0, $a0, $zero
  .L800C1D60:
    /* B2560 800C1D60 0800E003 */  jr         $ra
    /* B2564 800C1D64 00000000 */   nop
    /* B2568 800C1D68 0D80053C */  lui        $a1, %hi(D_800D559C)
    /* B256C 800C1D6C 9C55A58C */  lw         $a1, %lo(D_800D559C)($a1)
    /* B2570 800C1D70 F8FF033C */  lui        $v1, (0xFFF8FFFF >> 16)
    /* B2574 800C1D74 0000A28C */  lw         $v0, 0x0($a1)
    /* B2578 800C1D78 FFFF6334 */  ori        $v1, $v1, (0xFFF8FFFF & 0xFFFF)
    /* B257C 800C1D7C 24104300 */  and        $v0, $v0, $v1
    /* B2580 800C1D80 07008010 */  beqz       $a0, .L800C1DA0
    /* B2584 800C1D84 0000A2AC */   sw        $v0, 0x0($a1)
    /* B2588 800C1D88 0D80023C */  lui        $v0, %hi(D_800D559C)
    /* B258C 800C1D8C 9C55428C */  lw         $v0, %lo(D_800D559C)($v0)
    /* B2590 800C1D90 00000000 */  nop
    /* B2594 800C1D94 0000438C */  lw         $v1, 0x0($v0)
    /* B2598 800C1D98 6D070308 */  j          .L800C1DB4
    /* B259C 800C1D9C 0300043C */   lui       $a0, (0x30000 >> 16)
  .L800C1DA0:
    /* B25A0 800C1DA0 0D80023C */  lui        $v0, %hi(D_800D559C)
    /* B25A4 800C1DA4 9C55428C */  lw         $v0, %lo(D_800D559C)($v0)
    /* B25A8 800C1DA8 00000000 */  nop
    /* B25AC 800C1DAC 0000438C */  lw         $v1, 0x0($v0)
    /* B25B0 800C1DB0 0500043C */  lui        $a0, (0x50000 >> 16)
  .L800C1DB4:
    /* B25B4 800C1DB4 25186400 */  or         $v1, $v1, $a0
    /* B25B8 800C1DB8 0800E003 */  jr         $ra
    /* B25BC 800C1DBC 000043AC */   sw        $v1, 0x0($v0)
endlabel func_800C1C88
