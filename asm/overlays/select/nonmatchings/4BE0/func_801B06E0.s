nonmatching func_801B06E0, 0x4BC

glabel func_801B06E0
    /* 27768 801B06E0 1180033C */  lui        $v1, %hi(D_8010A322)
    /* 2776C 801B06E4 22A36390 */  lbu        $v1, %lo(D_8010A322)($v1)
    /* 27770 801B06E8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 27774 801B06EC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 27778 801B06F0 1080123C */  lui        $s2, %hi(D_800FF748)
    /* 2777C 801B06F4 48F75226 */  addiu      $s2, $s2, %lo(D_800FF748)
    /* 27780 801B06F8 2400B5AF */  sw         $s5, 0x24($sp)
    /* 27784 801B06FC 801F153C */  lui        $s5, (0x1F8002DD >> 16)
    /* 27788 801B0700 2800BFAF */  sw         $ra, 0x28($sp)
    /* 2778C 801B0704 2000B4AF */  sw         $s4, 0x20($sp)
    /* 27790 801B0708 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 27794 801B070C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 27798 801B0710 1F00622C */  sltiu      $v0, $v1, 0x1F
    /* 2779C 801B0714 17014010 */  beqz       $v0, .L801B0B74
    /* 277A0 801B0718 1000B0AF */   sw        $s0, 0x10($sp)
    /* 277A4 801B071C 80100300 */  sll        $v0, $v1, 2
    /* 277A8 801B0720 1980013C */  lui        $at, %hi(jtbl_8018A5B4)
    /* 277AC 801B0724 21082200 */  addu       $at, $at, $v0
    /* 277B0 801B0728 B4A5228C */  lw         $v0, %lo(jtbl_8018A5B4)($at)
    /* 277B4 801B072C 00000000 */  nop
    /* 277B8 801B0730 08004000 */  jr         $v0
    /* 277BC 801B0734 00000000 */   nop
  jlabel .L801B0738
    /* 277C0 801B0738 21800000 */  addu       $s0, $zero, $zero
    /* 277C4 801B073C 80000924 */  addiu      $t1, $zero, 0x80
    /* 277C8 801B0740 06000824 */  addiu      $t0, $zero, 0x6
    /* 277CC 801B0744 FF000724 */  addiu      $a3, $zero, 0xFF
    /* 277D0 801B0748 21300000 */  addu       $a2, $zero, $zero
    /* 277D4 801B074C 21284002 */  addu       $a1, $s2, $zero
    /* 277D8 801B0750 01000224 */  addiu      $v0, $zero, 0x1
    /* 277DC 801B0754 A202A0A2 */  sb         $zero, (0x1F8002A2 & 0xFFFF)($s5)
    /* 277E0 801B0758 0100013C */  lui        $at, (0x10000 >> 16)
    /* 277E4 801B075C 21084102 */  addu       $at, $s2, $at
    /* 277E8 801B0760 228F20A0 */  sb         $zero, -0x70DE($at)
    /* 277EC 801B0764 0100013C */  lui        $at, (0x10000 >> 16)
    /* 277F0 801B0768 21084102 */  addu       $at, $s2, $at
    /* 277F4 801B076C 238F20A0 */  sb         $zero, -0x70DD($at)
    /* 277F8 801B0770 0100013C */  lui        $at, (0x10000 >> 16)
    /* 277FC 801B0774 21084102 */  addu       $at, $s2, $at
    /* 27800 801B0778 A8AB20A0 */  sb         $zero, -0x5458($at)
    /* 27804 801B077C 1E80013C */  lui        $at, %hi(D_801D8DFC)
    /* 27808 801B0780 FC8D22A0 */  sb         $v0, %lo(D_801D8DFC)($at)
    /* 2780C 801B0784 04000224 */  addiu      $v0, $zero, 0x4
    /* 27810 801B0788 1E80013C */  lui        $at, %hi(D_801DAD84)
    /* 27814 801B078C 84AD22A0 */  sb         $v0, %lo(D_801DAD84)($at)
    /* 27818 801B0790 01000224 */  addiu      $v0, $zero, 0x1
    /* 2781C 801B0794 1E80013C */  lui        $at, %hi(D_801DA5D4)
    /* 27820 801B0798 D4A522A4 */  sh         $v0, %lo(D_801DA5D4)($at)
    /* 27824 801B079C 09000224 */  addiu      $v0, $zero, 0x9
    /* 27828 801B07A0 1E80013C */  lui        $at, %hi(D_801DA5D6)
    /* 2782C 801B07A4 D6A522A4 */  sh         $v0, %lo(D_801DA5D6)($at)
    /* 27830 801B07A8 5F000224 */  addiu      $v0, $zero, 0x5F
    /* 27834 801B07AC 1E80013C */  lui        $at, %hi(D_801D8A8A)
    /* 27838 801B07B0 8A8A22A0 */  sb         $v0, %lo(D_801D8A8A)($at)
    /* 2783C 801B07B4 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 27840 801B07B8 1E80013C */  lui        $at, %hi(D_801D8A8B)
    /* 27844 801B07BC 8B8A22A0 */  sb         $v0, %lo(D_801D8A8B)($at)
    /* 27848 801B07C0 1E80023C */  lui        $v0, %hi(D_801D8A8E)
    /* 2784C 801B07C4 8E8A4290 */  lbu        $v0, %lo(D_801D8A8E)($v0)
    /* 27850 801B07C8 60000324 */  addiu      $v1, $zero, 0x60
    /* 27854 801B07CC 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 27858 801B07D0 F0A220A0 */  sb         $zero, %lo(D_801DA2F0)($at)
    /* 2785C 801B07D4 1E80013C */  lui        $at, %hi(D_801DAD85)
    /* 27860 801B07D8 85AD20A0 */  sb         $zero, %lo(D_801DAD85)($at)
    /* 27864 801B07DC 1E80013C */  lui        $at, %hi(D_801D8B18)
    /* 27868 801B07E0 188B20A0 */  sb         $zero, %lo(D_801D8B18)($at)
    /* 2786C 801B07E4 1E80013C */  lui        $at, %hi(D_801D8DFB)
    /* 27870 801B07E8 FB8D20A0 */  sb         $zero, %lo(D_801D8DFB)($at)
    /* 27874 801B07EC 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 27878 801B07F0 38D620A4 */  sh         $zero, %lo(D_800AD638)($at)
    /* 2787C 801B07F4 1E80013C */  lui        $at, %hi(D_801D8A51)
    /* 27880 801B07F8 518A20A0 */  sb         $zero, %lo(D_801D8A51)($at)
    /* 27884 801B07FC 1E80013C */  lui        $at, %hi(D_801DA06B)
    /* 27888 801B0800 6BA020A0 */  sb         $zero, %lo(D_801DA06B)($at)
    /* 2788C 801B0804 1E80013C */  lui        $at, %hi(D_801DA069)
    /* 27890 801B0808 69A020A0 */  sb         $zero, %lo(D_801DA069)($at)
    /* 27894 801B080C 1E80013C */  lui        $at, %hi(D_801DA06A)
    /* 27898 801B0810 6AA020A0 */  sb         $zero, %lo(D_801DA06A)($at)
    /* 2789C 801B0814 1E80013C */  lui        $at, %hi(D_801DA068)
    /* 278A0 801B0818 68A020A0 */  sb         $zero, %lo(D_801DA068)($at)
    /* 278A4 801B081C 1E80013C */  lui        $at, %hi(D_801DA5D0)
    /* 278A8 801B0820 D0A520A4 */  sh         $zero, %lo(D_801DA5D0)($at)
    /* 278AC 801B0824 1E80013C */  lui        $at, %hi(D_801DA5D2)
    /* 278B0 801B0828 D2A520A4 */  sh         $zero, %lo(D_801DA5D2)($at)
    /* 278B4 801B082C 1E80013C */  lui        $at, %hi(D_801D8A82)
    /* 278B8 801B0830 828A20A4 */  sh         $zero, %lo(D_801D8A82)($at)
    /* 278BC 801B0834 1E80013C */  lui        $at, %hi(D_801D8A84)
    /* 278C0 801B0838 848A20A4 */  sh         $zero, %lo(D_801D8A84)($at)
    /* 278C4 801B083C 1E80013C */  lui        $at, %hi(D_801D8A86)
    /* 278C8 801B0840 868A20A4 */  sh         $zero, %lo(D_801D8A86)($at)
    /* 278CC 801B0844 1E80013C */  lui        $at, %hi(D_801D8A88)
    /* 278D0 801B0848 888A20A4 */  sh         $zero, %lo(D_801D8A88)($at)
    /* 278D4 801B084C 1E80013C */  lui        $at, %hi(D_801D8A8F)
    /* 278D8 801B0850 8F8A20A0 */  sb         $zero, %lo(D_801D8A8F)($at)
    /* 278DC 801B0854 1E80013C */  lui        $at, %hi(D_801D8A8C)
    /* 278E0 801B0858 8C8A20A0 */  sb         $zero, %lo(D_801D8A8C)($at)
    /* 278E4 801B085C 1E80013C */  lui        $at, %hi(D_801D8A8D)
    /* 278E8 801B0860 8D8A23A0 */  sb         $v1, %lo(D_801D8A8D)($at)
    /* 278EC 801B0864 0100013C */  lui        $at, (0x10000 >> 16)
    /* 278F0 801B0868 21084102 */  addu       $at, $s2, $at
    /* 278F4 801B086C 158F20A0 */  sb         $zero, -0x70EB($at)
    /* 278F8 801B0870 61004230 */  andi       $v0, $v0, 0x61
    /* 278FC 801B0874 21004234 */  ori        $v0, $v0, 0x21
    /* 27900 801B0878 1E80013C */  lui        $at, %hi(D_801D8A8E)
    /* 27904 801B087C 8E8A22A0 */  sb         $v0, %lo(D_801D8A8E)($at)
  .L801B0880:
    /* 27908 801B0880 02000106 */  bgez       $s0, .L801B088C
    /* 2790C 801B0884 21100002 */   addu      $v0, $s0, $zero
    /* 27910 801B0888 03000226 */  addiu      $v0, $s0, 0x3
  .L801B088C:
    /* 27914 801B088C 21200000 */  addu       $a0, $zero, $zero
    /* 27918 801B0890 2118C000 */  addu       $v1, $a2, $zero
    /* 2791C 801B0894 83100200 */  sra        $v0, $v0, 2
    /* 27920 801B0898 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27924 801B089C 2108A100 */  addu       $at, $a1, $at
    /* 27928 801B08A0 278F22A0 */  sb         $v0, -0x70D9($at)
    /* 2792C 801B08A4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27930 801B08A8 2108A100 */  addu       $at, $a1, $at
    /* 27934 801B08AC 358F29A0 */  sb         $t1, -0x70CB($at)
    /* 27938 801B08B0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2793C 801B08B4 2108A100 */  addu       $at, $a1, $at
    /* 27940 801B08B8 378F28A0 */  sb         $t0, -0x70C9($at)
  .L801B08BC:
    /* 27944 801B08BC 21104302 */  addu       $v0, $s2, $v1
    /* 27948 801B08C0 01008424 */  addiu      $a0, $a0, 0x1
    /* 2794C 801B08C4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27950 801B08C8 21084100 */  addu       $at, $v0, $at
    /* 27954 801B08CC D0A920A0 */  sb         $zero, -0x5630($at)
    /* 27958 801B08D0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2795C 801B08D4 21084100 */  addu       $at, $v0, $at
    /* 27960 801B08D8 D1A927A0 */  sb         $a3, -0x562F($at)
    /* 27964 801B08DC 03008228 */  slti       $v0, $a0, 0x3
    /* 27968 801B08E0 F6FF4014 */  bnez       $v0, .L801B08BC
    /* 2796C 801B08E4 04006324 */   addiu     $v1, $v1, 0x4
    /* 27970 801B08E8 0C00C624 */  addiu      $a2, $a2, 0xC
    /* 27974 801B08EC 01001026 */  addiu      $s0, $s0, 0x1
    /* 27978 801B08F0 2000022A */  slti       $v0, $s0, 0x20
    /* 2797C 801B08F4 E2FF4014 */  bnez       $v0, .L801B0880
    /* 27980 801B08F8 2400A524 */   addiu     $a1, $a1, 0x24
    /* 27984 801B08FC 21800000 */  addu       $s0, $zero, $zero
    /* 27988 801B0900 80AB1434 */  ori        $s4, $zero, 0xAB80
    /* 2798C 801B0904 50AB1334 */  ori        $s3, $zero, 0xAB50
    /* 27990 801B0908 21884002 */  addu       $s1, $s2, $zero
  .L801B090C:
    /* 27994 801B090C 1280043C */  lui        $a0, %hi(D_8011CA90)
    /* 27998 801B0910 90CA8424 */  addiu      $a0, $a0, %lo(D_8011CA90)
    /* 2799C 801B0914 3CA6060C */  jal        func_801A98F0
    /* 279A0 801B0918 21280002 */   addu      $a1, $s0, $zero
    /* 279A4 801B091C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 279A8 801B0920 21084102 */  addu       $at, $s2, $at
    /* 279AC 801B0924 A0AB2290 */  lbu        $v0, -0x5460($at)
    /* 279B0 801B0928 00000000 */  nop
    /* 279B4 801B092C 21104202 */  addu       $v0, $s2, $v0
    /* 279B8 801B0930 21105400 */  addu       $v0, $v0, $s4
    /* 279BC 801B0934 00004390 */  lbu        $v1, 0x0($v0)
    /* 279C0 801B0938 00000000 */  nop
    /* 279C4 801B093C C0100300 */  sll        $v0, $v1, 3
    /* 279C8 801B0940 21104300 */  addu       $v0, $v0, $v1
    /* 279CC 801B0944 80100200 */  sll        $v0, $v0, 2
    /* 279D0 801B0948 21104202 */  addu       $v0, $s2, $v0
    /* 279D4 801B094C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 279D8 801B0950 21084100 */  addu       $at, $v0, $at
    /* 279DC 801B0954 248F2290 */  lbu        $v0, -0x70DC($at)
    /* 279E0 801B0958 00000000 */  nop
    /* 279E4 801B095C C0004230 */  andi       $v0, $v0, 0xC0
    /* 279E8 801B0960 14004010 */  beqz       $v0, .L801B09B4
    /* 279EC 801B0964 21183302 */   addu      $v1, $s1, $s3
    /* 279F0 801B0968 0100013C */  lui        $at, (0x10000 >> 16)
    /* 279F4 801B096C 21084102 */  addu       $at, $s2, $at
    /* 279F8 801B0970 A1AB2290 */  lbu        $v0, -0x545F($at)
    /* 279FC 801B0974 00000000 */  nop
    /* 27A00 801B0978 21104202 */  addu       $v0, $s2, $v0
    /* 27A04 801B097C 21105400 */  addu       $v0, $v0, $s4
    /* 27A08 801B0980 00004390 */  lbu        $v1, 0x0($v0)
    /* 27A0C 801B0984 00000000 */  nop
    /* 27A10 801B0988 C0100300 */  sll        $v0, $v1, 3
    /* 27A14 801B098C 21104300 */  addu       $v0, $v0, $v1
    /* 27A18 801B0990 80100200 */  sll        $v0, $v0, 2
    /* 27A1C 801B0994 21104202 */  addu       $v0, $s2, $v0
    /* 27A20 801B0998 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27A24 801B099C 21084100 */  addu       $at, $v0, $at
    /* 27A28 801B09A0 248F2290 */  lbu        $v0, -0x70DC($at)
    /* 27A2C 801B09A4 00000000 */  nop
    /* 27A30 801B09A8 C0004230 */  andi       $v0, $v0, 0xC0
    /* 27A34 801B09AC 04004014 */  bnez       $v0, .L801B09C0
    /* 27A38 801B09B0 21183302 */   addu      $v1, $s1, $s3
  .L801B09B4:
    /* 27A3C 801B09B4 00006290 */  lbu        $v0, 0x0($v1)
    /* 27A40 801B09B8 73C20608 */  j          .L801B09CC
    /* 27A44 801B09BC 01004234 */   ori       $v0, $v0, 0x1
  .L801B09C0:
    /* 27A48 801B09C0 00006290 */  lbu        $v0, 0x0($v1)
    /* 27A4C 801B09C4 00000000 */  nop
    /* 27A50 801B09C8 FE004230 */  andi       $v0, $v0, 0xFE
  .L801B09CC:
    /* 27A54 801B09CC 000062A0 */  sb         $v0, 0x0($v1)
    /* 27A58 801B09D0 21103302 */  addu       $v0, $s1, $s3
    /* 27A5C 801B09D4 00004390 */  lbu        $v1, 0x0($v0)
    /* 27A60 801B09D8 01001026 */  addiu      $s0, $s0, 0x1
    /* 27A64 801B09DC FD006330 */  andi       $v1, $v1, 0xFD
    /* 27A68 801B09E0 000043A0 */  sb         $v1, 0x0($v0)
    /* 27A6C 801B09E4 3000022A */  slti       $v0, $s0, 0x30
    /* 27A70 801B09E8 C8FF4014 */  bnez       $v0, .L801B090C
    /* 27A74 801B09EC 01003126 */   addiu     $s1, $s1, 0x1
    /* 27A78 801B09F0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27A7C 801B09F4 21084102 */  addu       $at, $s2, $at
    /* 27A80 801B09F8 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 27A84 801B09FC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27A88 801B0A00 21084102 */  addu       $at, $s2, $at
    /* 27A8C 801B0A04 A1AB20A0 */  sb         $zero, -0x545F($at)
    /* 27A90 801B0A08 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27A94 801B0A0C 21084102 */  addu       $at, $s2, $at
    /* 27A98 801B0A10 A0AB20A0 */  sb         $zero, -0x5460($at)
    /* 27A9C 801B0A14 DE02A0A2 */  sb         $zero, (0x1F8002DE & 0xFFFF)($s5)
    /* 27AA0 801B0A18 BCC20608 */  j          .L801B0AF0
    /* 27AA4 801B0A1C DD02A0A2 */   sb        $zero, (0x1F8002DD & 0xFFFF)($s5)
  jlabel .L801B0A20
    /* 27AA8 801B0A20 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27AAC 801B0A24 21084102 */  addu       $at, $s2, $at
    /* 27AB0 801B0A28 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 27AB4 801B0A2C BCC20608 */  j          .L801B0AF0
    /* 27AB8 801B0A30 9F02A0A2 */   sb        $zero, 0x29F($s5)
  jlabel .L801B0A34
    /* 27ABC 801B0A34 0A000224 */  addiu      $v0, $zero, 0xA
    /* 27AC0 801B0A38 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27AC4 801B0A3C 21084102 */  addu       $at, $s2, $at
    /* 27AC8 801B0A40 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 27ACC 801B0A44 DDC20608 */  j          .L801B0B74
    /* 27AD0 801B0A48 00000000 */   nop
  jlabel .L801B0A4C
    /* 27AD4 801B0A4C 14000224 */  addiu      $v0, $zero, 0x14
    /* 27AD8 801B0A50 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27ADC 801B0A54 21084102 */  addu       $at, $s2, $at
    /* 27AE0 801B0A58 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 27AE4 801B0A5C DDC20608 */  j          .L801B0B74
    /* 27AE8 801B0A60 00000000 */   nop
  jlabel .L801B0A64
    /* 27AEC 801B0A64 4E39060C */  jal        func_8018E538
    /* 27AF0 801B0A68 21200000 */   addu      $a0, $zero, $zero
    /* 27AF4 801B0A6C 04000224 */  addiu      $v0, $zero, 0x4
    /* 27AF8 801B0A70 3FCC060C */  jal        func_801B30FC
    /* 27AFC 801B0A74 A202A2A2 */   sb        $v0, 0x2A2($s5)
    /* 27B00 801B0A78 21200000 */  addu       $a0, $zero, $zero
    /* 27B04 801B0A7C 38CE060C */  jal        func_801B38E0
    /* 27B08 801B0A80 21280000 */   addu      $a1, $zero, $zero
    /* 27B0C 801B0A84 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27B10 801B0A88 21084102 */  addu       $at, $s2, $at
    /* 27B14 801B0A8C DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 27B18 801B0A90 BDC20608 */  j          .L801B0AF4
    /* 27B1C 801B0A94 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B0A98
    /* 27B20 801B0A98 1FBC010C */  jal        func_8006F07C
    /* 27B24 801B0A9C 10000424 */   addiu     $a0, $zero, 0x10
    /* 27B28 801B0AA0 34004010 */  beqz       $v0, .L801B0B74
    /* 27B2C 801B0AA4 00000000 */   nop
    /* 27B30 801B0AA8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27B34 801B0AAC 21084102 */  addu       $at, $s2, $at
    /* 27B38 801B0AB0 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 27B3C 801B0AB4 BDC20608 */  j          .L801B0AF4
    /* 27B40 801B0AB8 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B0ABC
    /* 27B44 801B0ABC BAAD060C */  jal        func_801AB6E8
    /* 27B48 801B0AC0 5A000424 */   addiu     $a0, $zero, 0x5A
    /* 27B4C 801B0AC4 2B004010 */  beqz       $v0, .L801B0B74
    /* 27B50 801B0AC8 01001024 */   addiu     $s0, $zero, 0x1
    /* 27B54 801B0ACC 1E80013C */  lui        $at, %hi(D_801D8A8F)
    /* 27B58 801B0AD0 8F8A30A0 */  sb         $s0, %lo(D_801D8A8F)($at)
    /* 27B5C 801B0AD4 58D5060C */  jal        func_801B5560
    /* 27B60 801B0AD8 21200000 */   addu      $a0, $zero, $zero
    /* 27B64 801B0ADC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27B68 801B0AE0 21084102 */  addu       $at, $s2, $at
    /* 27B6C 801B0AE4 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 27B70 801B0AE8 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 27B74 801B0AEC F0A230A0 */  sb         $s0, %lo(D_801DA2F0)($at)
  .L801B0AF0:
    /* 27B78 801B0AF0 01004224 */  addiu      $v0, $v0, 0x1
  .L801B0AF4:
    /* 27B7C 801B0AF4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27B80 801B0AF8 21084102 */  addu       $at, $s2, $at
    /* 27B84 801B0AFC DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 27B88 801B0B00 DDC20608 */  j          .L801B0B74
    /* 27B8C 801B0B04 00000000 */   nop
  jlabel .L801B0B08
    /* 27B90 801B0B08 2DC1060C */  jal        func_801B04B4
    /* 27B94 801B0B0C 21200000 */   addu      $a0, $zero, $zero
    /* 27B98 801B0B10 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 27B9C 801B0B14 A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 27BA0 801B0B18 21200000 */  addu       $a0, $zero, $zero
    /* 27BA4 801B0B1C 73CA060C */  jal        func_801B29CC
    /* 27BA8 801B0B20 01000524 */   addiu     $a1, $zero, 0x1
    /* 27BAC 801B0B24 02000324 */  addiu      $v1, $zero, 0x2
    /* 27BB0 801B0B28 12004314 */  bne        $v0, $v1, .L801B0B74
    /* 27BB4 801B0B2C 1E000224 */   addiu     $v0, $zero, 0x1E
    /* 27BB8 801B0B30 1E80013C */  lui        $at, %hi(D_801D8A8F)
    /* 27BBC 801B0B34 8F8A20A0 */  sb         $zero, %lo(D_801D8A8F)($at)
    /* 27BC0 801B0B38 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27BC4 801B0B3C 21084102 */  addu       $at, $s2, $at
    /* 27BC8 801B0B40 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 27BCC 801B0B44 DDC20608 */  j          .L801B0B74
    /* 27BD0 801B0B48 00000000 */   nop
  jlabel .L801B0B4C
    /* 27BD4 801B0B4C 10000424 */  addiu      $a0, $zero, 0x10
    /* 27BD8 801B0B50 37BC010C */  jal        func_8006F0DC
    /* 27BDC 801B0B54 21280000 */   addu      $a1, $zero, $zero
    /* 27BE0 801B0B58 06004010 */  beqz       $v0, .L801B0B74
    /* 27BE4 801B0B5C 00000000 */   nop
    /* 27BE8 801B0B60 7F5C000C */  jal        func_800171FC
    /* 27BEC 801B0B64 01000424 */   addiu     $a0, $zero, 0x1
    /* 27BF0 801B0B68 0100013C */  lui        $at, (0x10000 >> 16)
    /* 27BF4 801B0B6C 21084102 */  addu       $at, $s2, $at
    /* 27BF8 801B0B70 DAAB20A0 */  sb         $zero, -0x5426($at)
  jlabel .L801B0B74
    /* 27BFC 801B0B74 2800BF8F */  lw         $ra, 0x28($sp)
    /* 27C00 801B0B78 2400B58F */  lw         $s5, 0x24($sp)
    /* 27C04 801B0B7C 2000B48F */  lw         $s4, 0x20($sp)
    /* 27C08 801B0B80 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 27C0C 801B0B84 1800B28F */  lw         $s2, 0x18($sp)
    /* 27C10 801B0B88 1400B18F */  lw         $s1, 0x14($sp)
    /* 27C14 801B0B8C 1000B08F */  lw         $s0, 0x10($sp)
    /* 27C18 801B0B90 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 27C1C 801B0B94 0800E003 */  jr         $ra
    /* 27C20 801B0B98 00000000 */   nop
endlabel func_801B06E0
