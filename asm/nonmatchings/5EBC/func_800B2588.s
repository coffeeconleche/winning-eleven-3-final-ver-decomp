/* Handwritten function */
nonmatching func_800B2588, 0x1A0

glabel func_800B2588
    /* A2D88 800B2588 1400B98F */  lw         $t9, 0x14($sp)
    /* A2D8C 800B258C 1000AF8F */  lw         $t7, 0x10($sp)
    /* A2D90 800B2590 6200E010 */  beqz       $a3, .L800B271C
    /* A2D94 800B2594 0400288F */   lw        $t0, 0x4($t9)
    /* A2D98 800B2598 0800298F */  lw         $t1, 0x8($t9)
    /* A2D9C 800B259C 18008A8C */  lw         $t2, 0x18($a0)
    /* A2DA0 800B25A0 1C008C94 */  lhu        $t4, 0x1C($a0)
    /* A2DA4 800B25A4 025C0A00 */  srl        $t3, $t2, 16
    /* A2DA8 800B25A8 00540A00 */  sll        $t2, $t2, 16
    /* A2DAC 800B25AC 42530A00 */  srl        $t2, $t2, 13
    /* A2DB0 800B25B0 C0580B00 */  sll        $t3, $t3, 3
    /* A2DB4 800B25B4 C0600C00 */  sll        $t4, $t4, 3
    /* A2DB8 800B25B8 21504501 */  addu       $t2, $t2, $a1
    /* A2DBC 800B25BC 21586501 */  addu       $t3, $t3, $a1
    /* A2DC0 800B25C0 21608501 */  addu       $t4, $t4, $a1
  .L800B25C4:
    /* A2DC4 800B25C4 000040C9 */  lwc2       $0, 0x0($t2)
    /* A2DC8 800B25C8 040041C9 */  lwc2       $1, 0x4($t2)
    /* A2DCC 800B25CC 000062C9 */  lwc2       $2, 0x0($t3)
    /* A2DD0 800B25D0 040063C9 */  lwc2       $3, 0x4($t3)
    /* A2DD4 800B25D4 000084C9 */  lwc2       $4, 0x0($t4)
    /* A2DD8 800B25D8 040085C9 */  lwc2       $5, 0x4($t4)
    /* A2DDC 800B25DC 00000000 */  nop
    /* A2DE0 800B25E0 3000284A */  rtpt
    /* A2DE4 800B25E4 1400828C */  lw         $v0, 0x14($a0)
    /* A2DE8 800B25E8 1E008394 */  lhu        $v1, 0x1E($a0)
    /* A2DEC 800B25EC 11800B3C */  lui        $t3, %hi(D_8010C1B8)
    /* A2DF0 800B25F0 B8C16B8D */  lw         $t3, %lo(D_8010C1B8)($t3)
    /* A2DF4 800B25F4 03008A80 */  lb         $t2, 0x3($a0)
    /* A2DF8 800B25F8 40580B00 */  sll        $t3, $t3, 1
    /* A2DFC 800B25FC 25504B01 */  or         $t2, $t2, $t3
    /* A2E00 800B2600 00120200 */  sll        $v0, $v0, 8
    /* A2E04 800B2604 02120200 */  srl        $v0, $v0, 8
    /* A2E08 800B2608 42500A00 */  srl        $t2, $t2, 1
    /* A2E0C 800B260C 40560A00 */  sll        $t2, $t2, 25
    /* A2E10 800B2610 25104A00 */  or         $v0, $v0, $t2
    /* A2E14 800B2614 0400C2AC */  sw         $v0, 0x4($a2)
    /* A2E18 800B2618 20008424 */  addiu      $a0, $a0, 0x20
    /* A2E1C 800B261C C0180300 */  sll        $v1, $v1, 3
    /* A2E20 800B2620 21186500 */  addu       $v1, $v1, $a1
    /* A2E24 800B2624 18008A8C */  lw         $t2, 0x18($a0)
    /* A2E28 800B2628 1C008C94 */  lhu        $t4, 0x1C($a0)
    /* A2E2C 800B262C 025C0A00 */  srl        $t3, $t2, 16
    /* A2E30 800B2630 00540A00 */  sll        $t2, $t2, 16
    /* A2E34 800B2634 42530A00 */  srl        $t2, $t2, 13
    /* A2E38 800B2638 C0580B00 */  sll        $t3, $t3, 3
    /* A2E3C 800B263C C0600C00 */  sll        $t4, $t4, 3
    /* A2E40 800B2640 21504501 */  addu       $t2, $t2, $a1
    /* A2E44 800B2644 21586501 */  addu       $t3, $t3, $a1
    /* A2E48 800B2648 21608501 */  addu       $t4, $t4, $a1
    /* A2E4C 800B264C 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* A2E50 800B2650 00000000 */  nop
    /* A2E54 800B2654 2E004004 */  bltz       $v0, .L800B2710
    /* A2E58 800B2658 00000000 */   nop
    /* A2E5C 800B265C 0600404B */  nclip
    /* A2E60 800B2660 000060C8 */  lwc2       $0, 0x0($v1)
    /* A2E64 800B2664 040061C8 */  lwc2       $1, 0x4($v1)
    /* A2E68 800B2668 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* A2E6C 800B266C 00000000 */  nop
    /* A2E70 800B2670 27004018 */  blez       $v0, .L800B2710
    /* A2E74 800B2674 00000000 */   nop
    /* A2E78 800B2678 0800CCE8 */  swc2       $12, 0x8($a2)
    /* A2E7C 800B267C 1000CDE8 */  swc2       $13, 0x10($a2)
    /* A2E80 800B2680 1800CEE8 */  swc2       $14, 0x18($a2)
    /* A2E84 800B2684 00000000 */  nop
    /* A2E88 800B2688 0100184A */  rtps
    /* A2E8C 800B268C E0FF8224 */  addiu      $v0, $a0, -0x20
    /* A2E90 800B2690 0400438C */  lw         $v1, 0x4($v0)
    /* A2E94 800B2694 08004E8C */  lw         $t6, 0x8($v0)
    /* A2E98 800B2698 0C00C3AC */  sw         $v1, 0xC($a2)
    /* A2E9C 800B269C 1400CEAC */  sw         $t6, 0x14($a2)
    /* A2EA0 800B26A0 0C00438C */  lw         $v1, 0xC($v0)
    /* A2EA4 800B26A4 10004E8C */  lw         $t6, 0x10($v0)
    /* A2EA8 800B26A8 1C00C3AC */  sw         $v1, 0x1C($a2)
    /* A2EAC 800B26AC 2400CEAC */  sw         $t6, 0x24($a2)
    /* A2EB0 800B26B0 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* A2EB4 800B26B4 00000000 */  nop
    /* A2EB8 800B26B8 15004004 */  bltz       $v0, .L800B2710
    /* A2EBC 800B26BC 00000000 */   nop
    /* A2EC0 800B26C0 2E00684B */  avsz4
    /* A2EC4 800B26C4 00380E48 */  mfc2       $t6, $7 /* handwritten instruction */
    /* A2EC8 800B26C8 2000CEE8 */  swc2       $14, 0x20($a2)
    /* A2ECC 800B26CC 2370C901 */  subu       $t6, $t6, $t1
    /* A2ED0 800B26D0 0670EE01 */  srlv       $t6, $t6, $t7
    /* A2ED4 800B26D4 FFFFCE31 */  andi       $t6, $t6, 0xFFFF
    /* A2ED8 800B26D8 80700E00 */  sll        $t6, $t6, 2
    /* A2EDC 800B26DC 2170C801 */  addu       $t6, $t6, $t0
    /* A2EE0 800B26E0 0000CD8D */  lw         $t5, 0x0($t6)
    /* A2EE4 800B26E4 0009023C */  lui        $v0, (0x9000000 >> 16)
    /* A2EE8 800B26E8 001A0D00 */  sll        $v1, $t5, 8
    /* A2EEC 800B26EC 021A0300 */  srl        $v1, $v1, 8
    /* A2EF0 800B26F0 25104300 */  or         $v0, $v0, $v1
    /* A2EF4 800B26F4 0000C2AC */  sw         $v0, 0x0($a2)
    /* A2EF8 800B26F8 2610CD00 */  xor        $v0, $a2, $t5
    /* A2EFC 800B26FC 001A0200 */  sll        $v1, $v0, 8
    /* A2F00 800B2700 02120300 */  srl        $v0, $v1, 8
    /* A2F04 800B2704 26184D00 */  xor        $v1, $v0, $t5
    /* A2F08 800B2708 0000C3AD */  sw         $v1, 0x0($t6)
    /* A2F0C 800B270C 2800C624 */  addiu      $a2, $a2, 0x28
  .L800B2710:
    /* A2F10 800B2710 FFFFE724 */  addiu      $a3, $a3, -0x1
    /* A2F14 800B2714 ABFFE014 */  bnez       $a3, .L800B25C4
    /* A2F18 800B2718 00000000 */   nop
  .L800B271C:
    /* A2F1C 800B271C 2110C000 */  addu       $v0, $a2, $zero
    /* A2F20 800B2720 0800E003 */  jr         $ra
    /* A2F24 800B2724 00000000 */   nop
endlabel func_800B2588
