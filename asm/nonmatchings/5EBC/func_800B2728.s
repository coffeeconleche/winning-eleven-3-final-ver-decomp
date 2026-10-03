/* Handwritten function */
nonmatching func_800B2728, 0x19C

glabel func_800B2728
    /* A2F28 800B2728 1000B88F */  lw         $t8, 0x10($sp)
    /* A2F2C 800B272C 1800B98F */  lw         $t9, 0x18($sp)
    /* A2F30 800B2730 1400AF8F */  lw         $t7, 0x14($sp)
    /* A2F34 800B2734 60000013 */  beqz       $t8, .L800B28B8
    /* A2F38 800B2738 0400288F */   lw        $t0, 0x4($t9)
    /* A2F3C 800B273C 0800298F */  lw         $t1, 0x8($t9)
    /* A2F40 800B2740 18008B8C */  lw         $t3, 0x18($a0)
    /* A2F44 800B2744 16008A94 */  lhu        $t2, 0x16($a0)
    /* A2F48 800B2748 02640B00 */  srl        $t4, $t3, 16
    /* A2F4C 800B274C 005C0B00 */  sll        $t3, $t3, 16
    /* A2F50 800B2750 425B0B00 */  srl        $t3, $t3, 13
    /* A2F54 800B2754 C0500A00 */  sll        $t2, $t2, 3
    /* A2F58 800B2758 C0600C00 */  sll        $t4, $t4, 3
    /* A2F5C 800B275C 21504501 */  addu       $t2, $t2, $a1
    /* A2F60 800B2760 21586501 */  addu       $t3, $t3, $a1
    /* A2F64 800B2764 21608501 */  addu       $t4, $t4, $a1
  .L800B2768:
    /* A2F68 800B2768 000040C9 */  lwc2       $0, 0x0($t2)
    /* A2F6C 800B276C 040041C9 */  lwc2       $1, 0x4($t2)
    /* A2F70 800B2770 000062C9 */  lwc2       $2, 0x0($t3)
    /* A2F74 800B2774 040063C9 */  lwc2       $3, 0x4($t3)
    /* A2F78 800B2778 000084C9 */  lwc2       $4, 0x0($t4)
    /* A2F7C 800B277C 040085C9 */  lwc2       $5, 0x4($t4)
    /* A2F80 800B2780 00000000 */  nop
    /* A2F84 800B2784 3000284A */  rtpt
    /* A2F88 800B2788 1C008394 */  lhu        $v1, 0x1C($a0)
    /* A2F8C 800B278C 20008424 */  addiu      $a0, $a0, 0x20
    /* A2F90 800B2790 C0180300 */  sll        $v1, $v1, 3
    /* A2F94 800B2794 21186500 */  addu       $v1, $v1, $a1
    /* A2F98 800B2798 18008B8C */  lw         $t3, 0x18($a0)
    /* A2F9C 800B279C 16008A94 */  lhu        $t2, 0x16($a0)
    /* A2FA0 800B27A0 02640B00 */  srl        $t4, $t3, 16
    /* A2FA4 800B27A4 005C0B00 */  sll        $t3, $t3, 16
    /* A2FA8 800B27A8 425B0B00 */  srl        $t3, $t3, 13
    /* A2FAC 800B27AC C0500A00 */  sll        $t2, $t2, 3
    /* A2FB0 800B27B0 C0600C00 */  sll        $t4, $t4, 3
    /* A2FB4 800B27B4 21504501 */  addu       $t2, $t2, $a1
    /* A2FB8 800B27B8 21586501 */  addu       $t3, $t3, $a1
    /* A2FBC 800B27BC 21608501 */  addu       $t4, $t4, $a1
    /* A2FC0 800B27C0 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* A2FC4 800B27C4 00000000 */  nop
    /* A2FC8 800B27C8 38004004 */  bltz       $v0, .L800B28AC
    /* A2FCC 800B27CC 00000000 */   nop
    /* A2FD0 800B27D0 0600404B */  nclip
    /* A2FD4 800B27D4 000060C8 */  lwc2       $0, 0x0($v1)
    /* A2FD8 800B27D8 040061C8 */  lwc2       $1, 0x4($v1)
    /* A2FDC 800B27DC 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* A2FE0 800B27E0 00000000 */  nop
    /* A2FE4 800B27E4 31004018 */  blez       $v0, .L800B28AC
    /* A2FE8 800B27E8 00000000 */   nop
    /* A2FEC 800B27EC 0800ECE8 */  swc2       $12, 0x8($a3)
    /* A2FF0 800B27F0 1000EDE8 */  swc2       $13, 0x10($a3)
    /* A2FF4 800B27F4 1800EEE8 */  swc2       $14, 0x18($a3)
    /* A2FF8 800B27F8 00000000 */  nop
    /* A2FFC 800B27FC 0100184A */  rtps
    /* A3000 800B2800 E0FF8224 */  addiu      $v0, $a0, -0x20
    /* A3004 800B2804 0400438C */  lw         $v1, 0x4($v0)
    /* A3008 800B2808 08004E8C */  lw         $t6, 0x8($v0)
    /* A300C 800B280C 0C00E3AC */  sw         $v1, 0xC($a3)
    /* A3010 800B2810 1400EEAC */  sw         $t6, 0x14($a3)
    /* A3014 800B2814 0C00438C */  lw         $v1, 0xC($v0)
    /* A3018 800B2818 10004E8C */  lw         $t6, 0x10($v0)
    /* A301C 800B281C 1C00E3AC */  sw         $v1, 0x1C($a3)
    /* A3020 800B2820 2400EEAC */  sw         $t6, 0x24($a3)
    /* A3024 800B2824 11800E3C */  lui        $t6, %hi(D_8010C1B8)
    /* A3028 800B2828 B8C1CE8D */  lw         $t6, %lo(D_8010C1B8)($t6)
    /* A302C 800B282C 03004380 */  lb         $v1, 0x3($v0)
    /* A3030 800B2830 40700E00 */  sll        $t6, $t6, 1
    /* A3034 800B2834 25186E00 */  or         $v1, $v1, $t6
    /* A3038 800B2838 001E0300 */  sll        $v1, $v1, 24
    /* A303C 800B283C 80000E3C */  lui        $t6, (0x808080 >> 16)
    /* A3040 800B2840 8080CE35 */  ori        $t6, $t6, (0x808080 & 0xFFFF)
    /* A3044 800B2844 25186E00 */  or         $v1, $v1, $t6
    /* A3048 800B2848 0400E3AC */  sw         $v1, 0x4($a3)
    /* A304C 800B284C 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* A3050 800B2850 00000000 */  nop
    /* A3054 800B2854 15004004 */  bltz       $v0, .L800B28AC
    /* A3058 800B2858 00000000 */   nop
    /* A305C 800B285C 2E00684B */  avsz4
    /* A3060 800B2860 00380E48 */  mfc2       $t6, $7 /* handwritten instruction */
    /* A3064 800B2864 2000EEE8 */  swc2       $14, 0x20($a3)
    /* A3068 800B2868 2370C901 */  subu       $t6, $t6, $t1
    /* A306C 800B286C 0670EE01 */  srlv       $t6, $t6, $t7
    /* A3070 800B2870 FFFFCE31 */  andi       $t6, $t6, 0xFFFF
    /* A3074 800B2874 80700E00 */  sll        $t6, $t6, 2
    /* A3078 800B2878 2170C801 */  addu       $t6, $t6, $t0
    /* A307C 800B287C 0000CD8D */  lw         $t5, 0x0($t6)
    /* A3080 800B2880 0009023C */  lui        $v0, (0x9000000 >> 16)
    /* A3084 800B2884 001A0D00 */  sll        $v1, $t5, 8
    /* A3088 800B2888 021A0300 */  srl        $v1, $v1, 8
    /* A308C 800B288C 25104300 */  or         $v0, $v0, $v1
    /* A3090 800B2890 0000E2AC */  sw         $v0, 0x0($a3)
    /* A3094 800B2894 2610ED00 */  xor        $v0, $a3, $t5
    /* A3098 800B2898 001A0200 */  sll        $v1, $v0, 8
    /* A309C 800B289C 02120300 */  srl        $v0, $v1, 8
    /* A30A0 800B28A0 26184D00 */  xor        $v1, $v0, $t5
    /* A30A4 800B28A4 0000C3AD */  sw         $v1, 0x0($t6)
    /* A30A8 800B28A8 2800E724 */  addiu      $a3, $a3, 0x28
  .L800B28AC:
    /* A30AC 800B28AC FFFF1827 */  addiu      $t8, $t8, -0x1
    /* A30B0 800B28B0 ADFF0017 */  bnez       $t8, .L800B2768
    /* A30B4 800B28B4 00000000 */   nop
  .L800B28B8:
    /* A30B8 800B28B8 2110E000 */  addu       $v0, $a3, $zero
    /* A30BC 800B28BC 0800E003 */  jr         $ra
    /* A30C0 800B28C0 00000000 */   nop
endlabel func_800B2728
