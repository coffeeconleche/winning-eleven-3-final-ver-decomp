nonmatching func_800B07F4, 0x150

glabel func_800B07F4
    /* A0FF4 800B07F4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A0FF8 800B07F8 1000B0AF */  sw         $s0, 0x10($sp)
    /* A0FFC 800B07FC 21808000 */  addu       $s0, $a0, $zero
    /* A1000 800B0800 1400BFAF */  sw         $ra, 0x14($sp)
    /* A1004 800B0804 2DEA020C */  jal        func_800BA8B4
    /* A1008 800B0808 21200000 */   addu      $a0, $zero, $zero
    /* A100C 800B080C 0D80013C */  lui        $at, %hi(D_800CEBC0)
    /* A1010 800B0810 C0EB20AC */  sw         $zero, %lo(D_800CEBC0)($at)
    /* A1014 800B0814 0D80033C */  lui        $v1, %hi(D_800CEBC0)
    /* A1018 800B0818 C0EB638C */  lw         $v1, %lo(D_800CEBC0)($v1)
    /* A101C 800B081C 0D80013C */  lui        $at, %hi(D_800CEBCC)
    /* A1020 800B0820 CCEB22AC */  sw         $v0, %lo(D_800CEBCC)($at)
    /* A1024 800B0824 01000224 */  addiu      $v0, $zero, 0x1
    /* A1028 800B0828 0D80013C */  lui        $at, %hi(D_800CEBBC)
    /* A102C 800B082C BCEB23AC */  sw         $v1, %lo(D_800CEBBC)($at)
    /* A1030 800B0830 07000332 */  andi       $v1, $s0, 0x7
    /* A1034 800B0834 23006210 */  beq        $v1, $v0, .L800B08C4
    /* A1038 800B0838 02006228 */   slti      $v0, $v1, 0x2
    /* A103C 800B083C 05004010 */  beqz       $v0, .L800B0854
    /* A1040 800B0840 03000224 */   addiu     $v0, $zero, 0x3
    /* A1044 800B0844 07006010 */  beqz       $v1, .L800B0864
    /* A1048 800B0848 00000000 */   nop
    /* A104C 800B084C 44C20208 */  j          .L800B0910
    /* A1050 800B0850 00000000 */   nop
  .L800B0854:
    /* A1054 800B0854 1B006210 */  beq        $v1, $v0, .L800B08C4
    /* A1058 800B0858 05000224 */   addiu     $v0, $zero, 0x5
    /* A105C 800B085C 2C006214 */  bne        $v1, $v0, .L800B0910
    /* A1060 800B0860 00000000 */   nop
  .L800B0864:
    /* A1064 800B0864 0D80033C */  lui        $v1, %hi(D_800CEBA8)
    /* A1068 800B0868 A8EB638C */  lw         $v1, %lo(D_800CEBA8)($v1)
    /* A106C 800B086C 01040224 */  addiu      $v0, $zero, 0x401
    /* A1070 800B0870 000062AC */  sw         $v0, 0x0($v1)
    /* A1074 800B0874 0D80033C */  lui        $v1, %hi(D_800CEBB8)
    /* A1078 800B0878 B8EB638C */  lw         $v1, %lo(D_800CEBB8)($v1)
    /* A107C 800B087C 0E80043C */  lui        $a0, %hi(D_800E7090)
    /* A1080 800B0880 90708424 */  addiu      $a0, $a0, %lo(D_800E7090)
    /* A1084 800B0884 0000628C */  lw         $v0, 0x0($v1)
    /* A1088 800B0888 21280000 */  addu       $a1, $zero, $zero
    /* A108C 800B088C 00084234 */  ori        $v0, $v0, 0x800
    /* A1090 800B0890 000062AC */  sw         $v0, 0x0($v1)
    /* A1094 800B0894 0D80023C */  lui        $v0, %hi(D_800CEB9C)
    /* A1098 800B0898 9CEB428C */  lw         $v0, %lo(D_800CEB9C)($v0)
    /* A109C 800B089C 00010624 */  addiu      $a2, $zero, 0x100
    /* A10A0 800B08A0 36C4020C */  jal        func_800B10D8
    /* A10A4 800B08A4 000040AC */   sw        $zero, 0x0($v0)
    /* A10A8 800B08A8 1180043C */  lui        $a0, %hi(D_8010A9B8)
    /* A10AC 800B08AC B8A98424 */  addiu      $a0, $a0, %lo(D_8010A9B8)
    /* A10B0 800B08B0 21280000 */  addu       $a1, $zero, $zero
    /* A10B4 800B08B4 36C4020C */  jal        func_800B10D8
    /* A10B8 800B08B8 00180624 */   addiu     $a2, $zero, 0x1800
    /* A10BC 800B08BC 44C20208 */  j          .L800B0910
    /* A10C0 800B08C0 00000000 */   nop
  .L800B08C4:
    /* A10C4 800B08C4 0D80033C */  lui        $v1, %hi(D_800CEBA8)
    /* A10C8 800B08C8 A8EB638C */  lw         $v1, %lo(D_800CEBA8)($v1)
    /* A10CC 800B08CC 01040224 */  addiu      $v0, $zero, 0x401
    /* A10D0 800B08D0 000062AC */  sw         $v0, 0x0($v1)
    /* A10D4 800B08D4 0D80033C */  lui        $v1, %hi(D_800CEBB8)
    /* A10D8 800B08D8 B8EB638C */  lw         $v1, %lo(D_800CEBB8)($v1)
    /* A10DC 800B08DC 00000000 */  nop
    /* A10E0 800B08E0 0000628C */  lw         $v0, 0x0($v1)
    /* A10E4 800B08E4 00000000 */  nop
    /* A10E8 800B08E8 00084234 */  ori        $v0, $v0, 0x800
    /* A10EC 800B08EC 000062AC */  sw         $v0, 0x0($v1)
    /* A10F0 800B08F0 0D80033C */  lui        $v1, %hi(D_800CEB9C)
    /* A10F4 800B08F4 9CEB638C */  lw         $v1, %lo(D_800CEB9C)($v1)
    /* A10F8 800B08F8 0002023C */  lui        $v0, (0x2000000 >> 16)
    /* A10FC 800B08FC 000062AC */  sw         $v0, 0x0($v1)
    /* A1100 800B0900 0D80033C */  lui        $v1, %hi(D_800CEB9C)
    /* A1104 800B0904 9CEB638C */  lw         $v1, %lo(D_800CEB9C)($v1)
    /* A1108 800B0908 0001023C */  lui        $v0, (0x1000000 >> 16)
    /* A110C 800B090C 000062AC */  sw         $v0, 0x0($v1)
  .L800B0910:
    /* A1110 800B0910 0D80043C */  lui        $a0, %hi(D_800CEBCC)
    /* A1114 800B0914 CCEB848C */  lw         $a0, %lo(D_800CEBCC)($a0)
    /* A1118 800B0918 2DEA020C */  jal        func_800BA8B4
    /* A111C 800B091C 00000000 */   nop
    /* A1120 800B0920 07000232 */  andi       $v0, $s0, 0x7
    /* A1124 800B0924 03004014 */  bnez       $v0, .L800B0934
    /* A1128 800B0928 21100000 */   addu      $v0, $zero, $zero
    /* A112C 800B092C FEC2020C */  jal        func_800B0BF8
    /* A1130 800B0930 21200002 */   addu      $a0, $s0, $zero
  .L800B0934:
    /* A1134 800B0934 1400BF8F */  lw         $ra, 0x14($sp)
    /* A1138 800B0938 1000B08F */  lw         $s0, 0x10($sp)
    /* A113C 800B093C 0800E003 */  jr         $ra
    /* A1140 800B0940 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800B07F4
