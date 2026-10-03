nonmatching func_800C24D8, 0x360

glabel func_800C24D8
    /* B2CD8 800C24D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B2CDC 800C24DC 21508000 */  addu       $t2, $a0, $zero
    /* B2CE0 800C24E0 FF0F043C */  lui        $a0, (0xFFFFFFF >> 16)
    /* B2CE4 800C24E4 FFFF8434 */  ori        $a0, $a0, (0xFFFFFFF & 0xFFFF)
    /* B2CE8 800C24E8 2140C000 */  addu       $t0, $a2, $zero
    /* B2CEC 800C24EC 0D80033C */  lui        $v1, %hi(D_800D55F4)
    /* B2CF0 800C24F0 F455638C */  lw         $v1, %lo(D_800D55F4)($v1)
    /* B2CF4 800C24F4 C0100A00 */  sll        $v0, $t2, 3
    /* B2CF8 800C24F8 1000B0AF */  sw         $s0, 0x10($sp)
    /* B2CFC 800C24FC 2180A000 */  addu       $s0, $a1, $zero
    /* B2D00 800C2500 1400BFAF */  sw         $ra, 0x14($sp)
    /* B2D04 800C2504 21104300 */  addu       $v0, $v0, $v1
    /* B2D08 800C2508 00004B8C */  lw         $t3, 0x0($v0)
    /* B2D0C 800C250C 0D80033C */  lui        $v1, %hi(D_800D5124)
    /* B2D10 800C2510 2451638C */  lw         $v1, %lo(D_800D5124)($v1)
    /* B2D14 800C2514 04004C8C */  lw         $t4, 0x4($v0)
    /* B2D18 800C2518 24206401 */  and        $a0, $t3, $a0
    /* B2D1C 800C251C 03006014 */  bnez       $v1, .L800C252C
    /* B2D20 800C2520 23480402 */   subu      $t1, $s0, $a0
    /* B2D24 800C2524 52090308 */  j          .L800C2548
    /* B2D28 800C2528 21180000 */   addu      $v1, $zero, $zero
  .L800C252C:
    /* B2D2C 800C252C 0100023C */  lui        $v0, (0x10000 >> 16)
    /* B2D30 800C2530 0D80033C */  lui        $v1, %hi(D_800D5128)
    /* B2D34 800C2534 2851638C */  lw         $v1, %lo(D_800D5128)($v1)
    /* B2D38 800C2538 0D80043C */  lui        $a0, %hi(D_800D55B4)
    /* B2D3C 800C253C B455848C */  lw         $a0, %lo(D_800D55B4)($a0)
    /* B2D40 800C2540 23104300 */  subu       $v0, $v0, $v1
    /* B2D44 800C2544 04188200 */  sllv       $v1, $v0, $a0
  .L800C2548:
    /* B2D48 800C2548 0040023C */  lui        $v0, (0x40000000 >> 16)
    /* B2D4C 800C254C 24106201 */  and        $v0, $t3, $v0
    /* B2D50 800C2550 03004010 */  beqz       $v0, .L800C2560
    /* B2D54 800C2554 23108901 */   subu      $v0, $t4, $t1
    /* B2D58 800C2558 59090308 */  j          .L800C2564
    /* B2D5C 800C255C 23384300 */   subu      $a3, $v0, $v1
  .L800C2560:
    /* B2D60 800C2560 23388901 */  subu       $a3, $t4, $t1
  .L800C2564:
    /* B2D64 800C2564 2A10E800 */  slt        $v0, $a3, $t0
    /* B2D68 800C2568 AF004014 */  bnez       $v0, .L800C2828
    /* B2D6C 800C256C FFFF0224 */   addiu     $v0, $zero, -0x1
    /* B2D70 800C2570 0040023C */  lui        $v0, (0x40000000 >> 16)
    /* B2D74 800C2574 24106201 */  and        $v0, $t3, $v0
    /* B2D78 800C2578 46004010 */  beqz       $v0, .L800C2694
    /* B2D7C 800C257C 00000000 */   nop
    /* B2D80 800C2580 1D002019 */  blez       $t1, .L800C25F8
    /* B2D84 800C2584 00000000 */   nop
    /* B2D88 800C2588 0D80023C */  lui        $v0, %hi(D_800D55EC)
    /* B2D8C 800C258C EC55428C */  lw         $v0, %lo(D_800D55EC)($v0)
    /* B2D90 800C2590 0D80073C */  lui        $a3, %hi(D_800D55F0)
    /* B2D94 800C2594 F055E78C */  lw         $a3, %lo(D_800D55F0)($a3)
    /* B2D98 800C2598 FEFF4224 */  addiu      $v0, $v0, -0x2
    /* B2D9C 800C259C 2A104700 */  slt        $v0, $v0, $a3
    /* B2DA0 800C25A0 A1004014 */  bnez       $v0, .L800C2828
    /* B2DA4 800C25A4 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* B2DA8 800C25A8 FF0F033C */  lui        $v1, (0xFFFFFFF >> 16)
    /* B2DAC 800C25AC FFFF6334 */  ori        $v1, $v1, (0xFFFFFFF & 0xFFFF)
    /* B2DB0 800C25B0 C0280700 */  sll        $a1, $a3, 3
    /* B2DB4 800C25B4 0D80063C */  lui        $a2, %hi(D_800D55F4)
    /* B2DB8 800C25B8 F455C68C */  lw         $a2, %lo(D_800D55F4)($a2)
    /* B2DBC 800C25BC 0100E224 */  addiu      $v0, $a3, 0x1
    /* B2DC0 800C25C0 0D80013C */  lui        $at, %hi(D_800D55F0)
    /* B2DC4 800C25C4 F05522AC */  sw         $v0, %lo(D_800D55F0)($at)
    /* B2DC8 800C25C8 C0100200 */  sll        $v0, $v0, 3
    /* B2DCC 800C25CC 2128A600 */  addu       $a1, $a1, $a2
    /* B2DD0 800C25D0 0000A48C */  lw         $a0, 0x0($a1)
    /* B2DD4 800C25D4 21104600 */  addu       $v0, $v0, $a2
    /* B2DD8 800C25D8 0400A9AC */  sw         $t1, 0x4($a1)
    /* B2DDC 800C25DC 24208300 */  and        $a0, $a0, $v1
    /* B2DE0 800C25E0 0080033C */  lui        $v1, (0x80000000 >> 16)
    /* B2DE4 800C25E4 25208300 */  or         $a0, $a0, $v1
    /* B2DE8 800C25E8 0000A4AC */  sw         $a0, 0x0($a1)
    /* B2DEC 800C25EC 000050AC */  sw         $s0, 0x0($v0)
    /* B2DF0 800C25F0 90090308 */  j          .L800C2640
    /* B2DF4 800C25F4 040048AC */   sw        $t0, 0x4($v0)
  .L800C25F8:
    /* B2DF8 800C25F8 0D80023C */  lui        $v0, %hi(D_800D55EC)
    /* B2DFC 800C25FC EC55428C */  lw         $v0, %lo(D_800D55EC)($v0)
    /* B2E00 800C2600 0D80053C */  lui        $a1, %hi(D_800D55F0)
    /* B2E04 800C2604 F055A58C */  lw         $a1, %lo(D_800D55F0)($a1)
    /* B2E08 800C2608 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* B2E0C 800C260C 2A104500 */  slt        $v0, $v0, $a1
    /* B2E10 800C2610 85004014 */  bnez       $v0, .L800C2828
    /* B2E14 800C2614 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* B2E18 800C2618 FF0F043C */  lui        $a0, (0xFFFFFFF >> 16)
    /* B2E1C 800C261C 0D80033C */  lui        $v1, %hi(D_800D55F4)
    /* B2E20 800C2620 F455638C */  lw         $v1, %lo(D_800D55F4)($v1)
    /* B2E24 800C2624 C0100500 */  sll        $v0, $a1, 3
    /* B2E28 800C2628 21104300 */  addu       $v0, $v0, $v1
    /* B2E2C 800C262C 0000438C */  lw         $v1, 0x0($v0)
    /* B2E30 800C2630 FFFF8434 */  ori        $a0, $a0, (0xFFFFFFF & 0xFFFF)
    /* B2E34 800C2634 040048AC */  sw         $t0, 0x4($v0)
    /* B2E38 800C2638 24186400 */  and        $v1, $v1, $a0
    /* B2E3C 800C263C 000043AC */  sw         $v1, 0x0($v0)
  .L800C2640:
    /* B2E40 800C2640 FF0F023C */  lui        $v0, (0xFFFFFFF >> 16)
    /* B2E44 800C2644 FFFF4234 */  ori        $v0, $v0, (0xFFFFFFF & 0xFFFF)
    /* B2E48 800C2648 24106201 */  and        $v0, $t3, $v0
    /* B2E4C 800C264C 21104900 */  addu       $v0, $v0, $t1
    /* B2E50 800C2650 21104800 */  addu       $v0, $v0, $t0
    /* B2E54 800C2654 0D80033C */  lui        $v1, %hi(D_800D55F0)
    /* B2E58 800C2658 F055638C */  lw         $v1, %lo(D_800D55F0)($v1)
    /* B2E5C 800C265C 0D80043C */  lui        $a0, %hi(D_800D55F4)
    /* B2E60 800C2660 F455848C */  lw         $a0, %lo(D_800D55F4)($a0)
    /* B2E64 800C2664 01006324 */  addiu      $v1, $v1, 0x1
    /* B2E68 800C2668 0D80013C */  lui        $at, %hi(D_800D55F0)
    /* B2E6C 800C266C F05523AC */  sw         $v1, %lo(D_800D55F0)($at)
    /* B2E70 800C2670 C0180300 */  sll        $v1, $v1, 3
    /* B2E74 800C2674 21186400 */  addu       $v1, $v1, $a0
    /* B2E78 800C2678 0040043C */  lui        $a0, (0x40000000 >> 16)
    /* B2E7C 800C267C 25104400 */  or         $v0, $v0, $a0
    /* B2E80 800C2680 000062AC */  sw         $v0, 0x0($v1)
    /* B2E84 800C2684 23108901 */  subu       $v0, $t4, $t1
    /* B2E88 800C2688 23104800 */  subu       $v0, $v0, $t0
    /* B2E8C 800C268C 070A0308 */  j          .L800C281C
    /* B2E90 800C2690 040062AC */   sw        $v0, 0x4($v1)
  .L800C2694:
    /* B2E94 800C2694 39002019 */  blez       $t1, .L800C277C
    /* B2E98 800C2698 2A100701 */   slt       $v0, $t0, $a3
    /* B2E9C 800C269C 0700E814 */  bne        $a3, $t0, .L800C26BC
    /* B2EA0 800C26A0 00000000 */   nop
    /* B2EA4 800C26A4 0D80023C */  lui        $v0, %hi(D_800D55EC)
    /* B2EA8 800C26A8 EC55428C */  lw         $v0, %lo(D_800D55EC)($v0)
    /* B2EAC 800C26AC 0D80033C */  lui        $v1, %hi(D_800D55F0)
    /* B2EB0 800C26B0 F055638C */  lw         $v1, %lo(D_800D55F0)($v1)
    /* B2EB4 800C26B4 B4090308 */  j          .L800C26D0
    /* B2EB8 800C26B8 FEFF4224 */   addiu     $v0, $v0, -0x2
  .L800C26BC:
    /* B2EBC 800C26BC 0D80023C */  lui        $v0, %hi(D_800D55EC)
    /* B2EC0 800C26C0 EC55428C */  lw         $v0, %lo(D_800D55EC)($v0)
    /* B2EC4 800C26C4 0D80033C */  lui        $v1, %hi(D_800D55F0)
    /* B2EC8 800C26C8 F055638C */  lw         $v1, %lo(D_800D55F0)($v1)
    /* B2ECC 800C26CC FFFF4224 */  addiu      $v0, $v0, -0x1
  .L800C26D0:
    /* B2ED0 800C26D0 2A104300 */  slt        $v0, $v0, $v1
    /* B2ED4 800C26D4 03004010 */  beqz       $v0, .L800C26E4
    /* B2ED8 800C26D8 C0100A00 */   sll       $v0, $t2, 3
    /* B2EDC 800C26DC 0A0A0308 */  j          .L800C2828
    /* B2EE0 800C26E0 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800C26E4:
    /* B2EE4 800C26E4 0D80053C */  lui        $a1, %hi(D_800D55F4)
    /* B2EE8 800C26E8 F455A58C */  lw         $a1, %lo(D_800D55F4)($a1)
    /* B2EEC 800C26EC 0D800A3C */  lui        $t2, %hi(D_800D55F0)
    /* B2EF0 800C26F0 F0554A8D */  lw         $t2, %lo(D_800D55F0)($t2)
    /* B2EF4 800C26F4 21104500 */  addu       $v0, $v0, $a1
    /* B2EF8 800C26F8 040049AC */  sw         $t1, 0x4($v0)
    /* B2EFC 800C26FC C0100A00 */  sll        $v0, $t2, 3
    /* B2F00 800C2700 21104500 */  addu       $v0, $v0, $a1
    /* B2F04 800C2704 0000438C */  lw         $v1, 0x0($v0)
    /* B2F08 800C2708 0400448C */  lw         $a0, 0x4($v0)
    /* B2F0C 800C270C 01004625 */  addiu      $a2, $t2, 0x1
    /* B2F10 800C2710 000050AC */  sw         $s0, 0x0($v0)
    /* B2F14 800C2714 040048AC */  sw         $t0, 0x4($v0)
    /* B2F18 800C2718 0D80013C */  lui        $at, %hi(D_800D55F0)
    /* B2F1C 800C271C F05526AC */  sw         $a2, %lo(D_800D55F0)($at)
    /* B2F20 800C2720 080043AC */  sw         $v1, 0x8($v0)
    /* B2F24 800C2724 0C0044AC */  sw         $a0, 0xC($v0)
    /* B2F28 800C2728 2A10E800 */  slt        $v0, $a3, $t0
    /* B2F2C 800C272C 3B004014 */  bnez       $v0, .L800C281C
    /* B2F30 800C2730 FF0F023C */   lui       $v0, (0xFFFFFFF >> 16)
    /* B2F34 800C2734 FFFF4234 */  ori        $v0, $v0, (0xFFFFFFF & 0xFFFF)
    /* B2F38 800C2738 C0180600 */  sll        $v1, $a2, 3
    /* B2F3C 800C273C 21186500 */  addu       $v1, $v1, $a1
    /* B2F40 800C2740 24106201 */  and        $v0, $t3, $v0
    /* B2F44 800C2744 21104900 */  addu       $v0, $v0, $t1
    /* B2F48 800C2748 21104800 */  addu       $v0, $v0, $t0
    /* B2F4C 800C274C 0080043C */  lui        $a0, (0x80000000 >> 16)
    /* B2F50 800C2750 25104400 */  or         $v0, $v0, $a0
    /* B2F54 800C2754 0000658C */  lw         $a1, 0x0($v1)
    /* B2F58 800C2758 0400648C */  lw         $a0, 0x4($v1)
    /* B2F5C 800C275C 000062AC */  sw         $v0, 0x0($v1)
    /* B2F60 800C2760 2310E800 */  subu       $v0, $a3, $t0
    /* B2F64 800C2764 040062AC */  sw         $v0, 0x4($v1)
    /* B2F68 800C2768 02004225 */  addiu      $v0, $t2, 0x2
    /* B2F6C 800C276C 0D80013C */  lui        $at, %hi(D_800D55F0)
    /* B2F70 800C2770 F05522AC */  sw         $v0, %lo(D_800D55F0)($at)
    /* B2F74 800C2774 060A0308 */  j          .L800C2818
    /* B2F78 800C2778 080065AC */   sw        $a1, 0x8($v1)
  .L800C277C:
    /* B2F7C 800C277C 0A004010 */  beqz       $v0, .L800C27A8
    /* B2F80 800C2780 FF0F063C */   lui       $a2, (0xFFFFFFF >> 16)
    /* B2F84 800C2784 0D80023C */  lui        $v0, %hi(D_800D55EC)
    /* B2F88 800C2788 EC55428C */  lw         $v0, %lo(D_800D55EC)($v0)
    /* B2F8C 800C278C 0D80033C */  lui        $v1, %hi(D_800D55F0)
    /* B2F90 800C2790 F055638C */  lw         $v1, %lo(D_800D55F0)($v1)
    /* B2F94 800C2794 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* B2F98 800C2798 2A104300 */  slt        $v0, $v0, $v1
    /* B2F9C 800C279C 22004014 */  bnez       $v0, .L800C2828
    /* B2FA0 800C27A0 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* B2FA4 800C27A4 FF0F063C */  lui        $a2, (0xFFFFFFF >> 16)
  .L800C27A8:
    /* B2FA8 800C27A8 0D80043C */  lui        $a0, %hi(D_800D55F4)
    /* B2FAC 800C27AC F455848C */  lw         $a0, %lo(D_800D55F4)($a0)
    /* B2FB0 800C27B0 C0100A00 */  sll        $v0, $t2, 3
    /* B2FB4 800C27B4 21104400 */  addu       $v0, $v0, $a0
    /* B2FB8 800C27B8 0000438C */  lw         $v1, 0x0($v0)
    /* B2FBC 800C27BC FFFFC634 */  ori        $a2, $a2, (0xFFFFFFF & 0xFFFF)
    /* B2FC0 800C27C0 040048AC */  sw         $t0, 0x4($v0)
    /* B2FC4 800C27C4 24186600 */  and        $v1, $v1, $a2
    /* B2FC8 800C27C8 000043AC */  sw         $v1, 0x0($v0)
    /* B2FCC 800C27CC 2A100701 */  slt        $v0, $t0, $a3
    /* B2FD0 800C27D0 12004010 */  beqz       $v0, .L800C281C
    /* B2FD4 800C27D4 24106601 */   and       $v0, $t3, $a2
    /* B2FD8 800C27D8 0D80053C */  lui        $a1, %hi(D_800D55F0)
    /* B2FDC 800C27DC F055A58C */  lw         $a1, %lo(D_800D55F0)($a1)
    /* B2FE0 800C27E0 21104800 */  addu       $v0, $v0, $t0
    /* B2FE4 800C27E4 C0180500 */  sll        $v1, $a1, 3
    /* B2FE8 800C27E8 21186400 */  addu       $v1, $v1, $a0
    /* B2FEC 800C27EC 0080043C */  lui        $a0, (0x80000000 >> 16)
    /* B2FF0 800C27F0 0000668C */  lw         $a2, 0x0($v1)
    /* B2FF4 800C27F4 25104400 */  or         $v0, $v0, $a0
    /* B2FF8 800C27F8 000062AC */  sw         $v0, 0x0($v1)
    /* B2FFC 800C27FC 2310E800 */  subu       $v0, $a3, $t0
    /* B3000 800C2800 0400648C */  lw         $a0, 0x4($v1)
    /* B3004 800C2804 0100A524 */  addiu      $a1, $a1, 0x1
    /* B3008 800C2808 040062AC */  sw         $v0, 0x4($v1)
    /* B300C 800C280C 0D80013C */  lui        $at, %hi(D_800D55F0)
    /* B3010 800C2810 F05525AC */  sw         $a1, %lo(D_800D55F0)($at)
    /* B3014 800C2814 080066AC */  sw         $a2, 0x8($v1)
  .L800C2818:
    /* B3018 800C2818 0C0064AC */  sw         $a0, 0xC($v1)
  .L800C281C:
    /* B301C 800C281C 7608030C */  jal        func_800C21D8
    /* B3020 800C2820 00000000 */   nop
    /* B3024 800C2824 21100002 */  addu       $v0, $s0, $zero
  .L800C2828:
    /* B3028 800C2828 1400BF8F */  lw         $ra, 0x14($sp)
    /* B302C 800C282C 1000B08F */  lw         $s0, 0x10($sp)
    /* B3030 800C2830 0800E003 */  jr         $ra
    /* B3034 800C2834 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800C24D8
