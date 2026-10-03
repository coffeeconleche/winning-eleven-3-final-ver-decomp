nonmatching func_8001F7C4, 0x258

glabel func_8001F7C4
    /* FFC4 8001F7C4 801F023C */  lui        $v0, (0x1F8002E5 >> 16)
    /* FFC8 8001F7C8 E5024290 */  lbu        $v0, (0x1F8002E5 & 0xFFFF)($v0)
    /* FFCC 8001F7CC C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* FFD0 8001F7D0 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* FFD4 8001F7D4 801F133C */  lui        $s3, (0x1F800000 >> 16)
    /* FFD8 8001F7D8 3000BFAF */  sw         $ra, 0x30($sp)
    /* FFDC 8001F7DC 2800B2AF */  sw         $s2, 0x28($sp)
    /* FFE0 8001F7E0 2400B1AF */  sw         $s1, 0x24($sp)
    /* FFE4 8001F7E4 4D004014 */  bnez       $v0, .L8001F91C
    /* FFE8 8001F7E8 2000B0AF */   sw        $s0, 0x20($sp)
    /* FFEC 8001F7EC 801F113C */  lui        $s1, (0x1F8002E4 >> 16)
    /* FFF0 8001F7F0 E4023192 */  lbu        $s1, (0x1F8002E4 & 0xFFFF)($s1)
    /* FFF4 8001F7F4 00000000 */  nop
    /* FFF8 8001F7F8 05002012 */  beqz       $s1, .L8001F810
    /* FFFC 8001F7FC 01000224 */   addiu     $v0, $zero, 0x1
    /* 10000 8001F800 2E002212 */  beq        $s1, $v0, .L8001F8BC
    /* 10004 8001F804 36000424 */   addiu     $a0, $zero, 0x36
    /* 10008 8001F808 7F7E0008 */  j          .L8001F9FC
    /* 1000C 8001F80C 00000000 */   nop
  .L8001F810:
    /* 10010 8001F810 36000424 */  addiu      $a0, $zero, 0x36
    /* 10014 8001F814 28000524 */  addiu      $a1, $zero, 0x28
    /* 10018 8001F818 21300000 */  addu       $a2, $zero, $zero
    /* 1001C 8001F81C 21380000 */  addu       $a3, $zero, $zero
    /* 10020 8001F820 E0FF1124 */  addiu      $s1, $zero, -0x20
    /* 10024 8001F824 1F001224 */  addiu      $s2, $zero, 0x1F
    /* 10028 8001F828 01001024 */  addiu      $s0, $zero, 0x1
    /* 1002C 8001F82C 1000B1AF */  sw         $s1, 0x10($sp)
    /* 10030 8001F830 1400B2AF */  sw         $s2, 0x14($sp)
    /* 10034 8001F834 1800A0AF */  sw         $zero, 0x18($sp)
    /* 10038 8001F838 B873000C */  jal        func_8001CEE0
    /* 1003C 8001F83C 1C00B0AF */   sw        $s0, 0x1C($sp)
    /* 10040 8001F840 37000424 */  addiu      $a0, $zero, 0x37
    /* 10044 8001F844 29000524 */  addiu      $a1, $zero, 0x29
    /* 10048 8001F848 0001063C */  lui        $a2, (0x1000000 >> 16)
    /* 1004C 8001F84C 21380000 */  addu       $a3, $zero, $zero
    /* 10050 8001F850 1E000224 */  addiu      $v0, $zero, 0x1E
    /* 10054 8001F854 1000B1AF */  sw         $s1, 0x10($sp)
    /* 10058 8001F858 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1005C 8001F85C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 10060 8001F860 B873000C */  jal        func_8001CEE0
    /* 10064 8001F864 1C00B0AF */   sw        $s0, 0x1C($sp)
    /* 10068 8001F868 38000424 */  addiu      $a0, $zero, 0x38
    /* 1006C 8001F86C 2A000524 */  addiu      $a1, $zero, 0x2A
    /* 10070 8001F870 21300000 */  addu       $a2, $zero, $zero
    /* 10074 8001F874 21380000 */  addu       $a3, $zero, $zero
    /* 10078 8001F878 1000B1AF */  sw         $s1, 0x10($sp)
    /* 1007C 8001F87C 1400B2AF */  sw         $s2, 0x14($sp)
    /* 10080 8001F880 1800A0AF */  sw         $zero, 0x18($sp)
    /* 10084 8001F884 B873000C */  jal        func_8001CEE0
    /* 10088 8001F888 1C00B0AF */   sw        $s0, 0x1C($sp)
    /* 1008C 8001F88C 0000628E */  lw         $v0, (0x1F800000 & 0xFFFF)($s3)
    /* 10090 8001F890 00000000 */  nop
    /* 10094 8001F894 04805000 */  sllv       $s0, $s0, $v0
    /* 10098 8001F898 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 1009C 8001F89C 1080013C */  lui        $at, %hi(D_80105D78)
    /* 100A0 8001F8A0 785D30AC */  sw         $s0, %lo(D_80105D78)($at)
    /* 100A4 8001F8A4 1080013C */  lui        $at, %hi(D_80105DA0)
    /* 100A8 8001F8A8 A05D30AC */  sw         $s0, %lo(D_80105DA0)($at)
    /* 100AC 8001F8AC 1080013C */  lui        $at, %hi(D_80105DC8)
    /* 100B0 8001F8B0 C85D30AC */  sw         $s0, %lo(D_80105DC8)($at)
    /* 100B4 8001F8B4 7F7E0008 */  j          .L8001F9FC
    /* 100B8 8001F8B8 00000000 */   nop
  .L8001F8BC:
    /* 100BC 8001F8BC 2B000524 */  addiu      $a1, $zero, 0x2B
    /* 100C0 8001F8C0 0050063C */  lui        $a2, (0x50000000 >> 16)
    /* 100C4 8001F8C4 21380000 */  addu       $a3, $zero, $zero
    /* 100C8 8001F8C8 1F001024 */  addiu      $s0, $zero, 0x1F
    /* 100CC 8001F8CC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 100D0 8001F8D0 1400B0AF */  sw         $s0, 0x14($sp)
    /* 100D4 8001F8D4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 100D8 8001F8D8 B873000C */  jal        func_8001CEE0
    /* 100DC 8001F8DC 1C00B1AF */   sw        $s1, 0x1C($sp)
    /* 100E0 8001F8E0 38000424 */  addiu      $a0, $zero, 0x38
    /* 100E4 8001F8E4 42000524 */  addiu      $a1, $zero, 0x42
    /* 100E8 8001F8E8 21300000 */  addu       $a2, $zero, $zero
    /* 100EC 8001F8EC 21380000 */  addu       $a3, $zero, $zero
    /* 100F0 8001F8F0 E0FF0224 */  addiu      $v0, $zero, -0x20
    /* 100F4 8001F8F4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 100F8 8001F8F8 1400B0AF */  sw         $s0, 0x14($sp)
    /* 100FC 8001F8FC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 10100 8001F900 B873000C */  jal        func_8001CEE0
    /* 10104 8001F904 1C00B1AF */   sw        $s1, 0x1C($sp)
    /* 10108 8001F908 0000628E */  lw         $v0, (0x1F800000 & 0xFFFF)($s3)
    /* 1010C 8001F90C 1080013C */  lui        $at, %hi(D_80105DA4)
    /* 10110 8001F910 A45D20A0 */  sb         $zero, %lo(D_80105DA4)($at)
    /* 10114 8001F914 7C7E0008 */  j          .L8001F9F0
    /* 10118 8001F918 04105100 */   sllv      $v0, $s1, $v0
  .L8001F91C:
    /* 1011C 8001F91C 801F103C */  lui        $s0, (0x1F8002E4 >> 16)
    /* 10120 8001F920 E4021092 */  lbu        $s0, (0x1F8002E4 & 0xFFFF)($s0)
    /* 10124 8001F924 00000000 */  nop
    /* 10128 8001F928 05000012 */  beqz       $s0, .L8001F940
    /* 1012C 8001F92C 01000224 */   addiu     $v0, $zero, 0x1
    /* 10130 8001F930 17000212 */  beq        $s0, $v0, .L8001F990
    /* 10134 8001F934 36000424 */   addiu     $a0, $zero, 0x36
    /* 10138 8001F938 7F7E0008 */  j          .L8001F9FC
    /* 1013C 8001F93C 00000000 */   nop
  .L8001F940:
    /* 10140 8001F940 36000424 */  addiu      $a0, $zero, 0x36
    /* 10144 8001F944 43000524 */  addiu      $a1, $zero, 0x43
    /* 10148 8001F948 21300000 */  addu       $a2, $zero, $zero
    /* 1014C 8001F94C 21380000 */  addu       $a3, $zero, $zero
    /* 10150 8001F950 E0FF0224 */  addiu      $v0, $zero, -0x20
    /* 10154 8001F954 1000A2AF */  sw         $v0, 0x10($sp)
    /* 10158 8001F958 0A000224 */  addiu      $v0, $zero, 0xA
    /* 1015C 8001F95C 01001024 */  addiu      $s0, $zero, 0x1
    /* 10160 8001F960 1400A2AF */  sw         $v0, 0x14($sp)
    /* 10164 8001F964 1800A0AF */  sw         $zero, 0x18($sp)
    /* 10168 8001F968 B873000C */  jal        func_8001CEE0
    /* 1016C 8001F96C 1C00B0AF */   sw        $s0, 0x1C($sp)
    /* 10170 8001F970 0000628E */  lw         $v0, (0x1F800000 & 0xFFFF)($s3)
    /* 10174 8001F974 00000000 */  nop
    /* 10178 8001F978 04805000 */  sllv       $s0, $s0, $v0
    /* 1017C 8001F97C FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 10180 8001F980 1080013C */  lui        $at, %hi(D_80105D78)
    /* 10184 8001F984 785D30AC */  sw         $s0, %lo(D_80105D78)($at)
    /* 10188 8001F988 7F7E0008 */  j          .L8001F9FC
    /* 1018C 8001F98C 00000000 */   nop
  .L8001F990:
    /* 10190 8001F990 2B000524 */  addiu      $a1, $zero, 0x2B
    /* 10194 8001F994 0050063C */  lui        $a2, (0x50000000 >> 16)
    /* 10198 8001F998 21380000 */  addu       $a3, $zero, $zero
    /* 1019C 8001F99C 1F000224 */  addiu      $v0, $zero, 0x1F
    /* 101A0 8001F9A0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 101A4 8001F9A4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 101A8 8001F9A8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 101AC 8001F9AC B873000C */  jal        func_8001CEE0
    /* 101B0 8001F9B0 1C00B0AF */   sw        $s0, 0x1C($sp)
    /* 101B4 8001F9B4 38000424 */  addiu      $a0, $zero, 0x38
    /* 101B8 8001F9B8 43000524 */  addiu      $a1, $zero, 0x43
    /* 101BC 8001F9BC 21300000 */  addu       $a2, $zero, $zero
    /* 101C0 8001F9C0 21380000 */  addu       $a3, $zero, $zero
    /* 101C4 8001F9C4 E0FF0224 */  addiu      $v0, $zero, -0x20
    /* 101C8 8001F9C8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 101CC 8001F9CC 0A000224 */  addiu      $v0, $zero, 0xA
    /* 101D0 8001F9D0 1400A2AF */  sw         $v0, 0x14($sp)
    /* 101D4 8001F9D4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 101D8 8001F9D8 B873000C */  jal        func_8001CEE0
    /* 101DC 8001F9DC 1C00B0AF */   sw        $s0, 0x1C($sp)
    /* 101E0 8001F9E0 0000628E */  lw         $v0, (0x1F800000 & 0xFFFF)($s3)
    /* 101E4 8001F9E4 1080013C */  lui        $at, %hi(D_80105DA4)
    /* 101E8 8001F9E8 A45D20A0 */  sb         $zero, %lo(D_80105DA4)($at)
    /* 101EC 8001F9EC 04105000 */  sllv       $v0, $s0, $v0
  .L8001F9F0:
    /* 101F0 8001F9F0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 101F4 8001F9F4 1080013C */  lui        $at, %hi(D_80105DC8)
    /* 101F8 8001F9F8 C85D22AC */  sw         $v0, %lo(D_80105DC8)($at)
  .L8001F9FC:
    /* 101FC 8001F9FC 3000BF8F */  lw         $ra, 0x30($sp)
    /* 10200 8001FA00 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 10204 8001FA04 2800B28F */  lw         $s2, 0x28($sp)
    /* 10208 8001FA08 2400B18F */  lw         $s1, 0x24($sp)
    /* 1020C 8001FA0C 2000B08F */  lw         $s0, 0x20($sp)
    /* 10210 8001FA10 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 10214 8001FA14 0800E003 */  jr         $ra
    /* 10218 8001FA18 00000000 */   nop
endlabel func_8001F7C4
