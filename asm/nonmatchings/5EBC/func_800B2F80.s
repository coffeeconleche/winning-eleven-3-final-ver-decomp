/* Handwritten function */
nonmatching func_800B2F80, 0x488

glabel func_800B2F80
    /* A3780 800B2F80 7800E88C */  lw         $t0, 0x78($a3)
    /* A3784 800B2F84 7C00E98C */  lw         $t1, 0x7C($a3)
    /* A3788 800B2F88 8000EA8C */  lw         $t2, 0x80($a3)
    /* A378C 800B2F8C 8400EB8C */  lw         $t3, 0x84($a3)
    /* A3790 800B2F90 00D05948 */  cfc2       $t9, $26 /* handwritten instruction */
    /* A3794 800B2F94 14000C8D */  lw         $t4, 0x14($t0)
    /* A3798 800B2F98 14002D8D */  lw         $t5, 0x14($t1)
    /* A379C 800B2F9C 14004E8D */  lw         $t6, 0x14($t2)
    /* A37A0 800B2FA0 14006F8D */  lw         $t7, 0x14($t3)
    /* A37A4 800B2FA4 43C01900 */  sra        $t8, $t9, 1
    /* A37A8 800B2FA8 2B089801 */  sltu       $at, $t4, $t8
    /* A37AC 800B2FAC 0A002010 */  beqz       $at, .L800B2FD8
    /* A37B0 800B2FB0 2B08B801 */   sltu      $at, $t5, $t8
    /* A37B4 800B2FB4 08002010 */  beqz       $at, .L800B2FD8
    /* A37B8 800B2FB8 2B08D801 */   sltu      $at, $t6, $t8
    /* A37BC 800B2FBC 06002010 */  beqz       $at, .L800B2FD8
    /* A37C0 800B2FC0 2B08F801 */   sltu      $at, $t7, $t8
    /* A37C4 800B2FC4 04002010 */  beqz       $at, .L800B2FD8
    /* A37C8 800B2FC8 00000000 */   nop
    /* A37CC 800B2FCC 21108000 */  addu       $v0, $a0, $zero
    /* A37D0 800B2FD0 0800E003 */  jr         $ra
    /* A37D4 800B2FD4 00000000 */   nop
  .L800B2FD8:
    /* A37D8 800B2FD8 00C05948 */  cfc2       $t9, $24 /* handwritten instruction */
    /* A37DC 800B2FDC 0400A28C */  lw         $v0, 0x4($a1)
    /* A37E0 800B2FE0 0800A38C */  lw         $v1, 0x8($a1)
    /* A37E4 800B2FE4 03CC1900 */  sra        $t9, $t9, 16
    /* A37E8 800B2FE8 42100200 */  srl        $v0, $v0, 1
    /* A37EC 800B2FEC 42180300 */  srl        $v1, $v1, 1
    /* A37F0 800B2FF0 21C02203 */  addu       $t8, $t9, $v0
    /* A37F4 800B2FF4 10000C85 */  lh         $t4, 0x10($t0)
    /* A37F8 800B2FF8 10002D85 */  lh         $t5, 0x10($t1)
    /* A37FC 800B2FFC 10004E85 */  lh         $t6, 0x10($t2)
    /* A3800 800B3000 10006F85 */  lh         $t7, 0x10($t3)
    /* A3804 800B3004 2A080C03 */  slt        $at, $t8, $t4
    /* A3808 800B3008 0A002010 */  beqz       $at, .L800B3034
    /* A380C 800B300C 2A080D03 */   slt       $at, $t8, $t5
    /* A3810 800B3010 08002010 */  beqz       $at, .L800B3034
    /* A3814 800B3014 2A080E03 */   slt       $at, $t8, $t6
    /* A3818 800B3018 06002010 */  beqz       $at, .L800B3034
    /* A381C 800B301C 2A080F03 */   slt       $at, $t8, $t7
    /* A3820 800B3020 04002010 */  beqz       $at, .L800B3034
    /* A3824 800B3024 00000000 */   nop
    /* A3828 800B3028 21108000 */  addu       $v0, $a0, $zero
    /* A382C 800B302C 0800E003 */  jr         $ra
    /* A3830 800B3030 00000000 */   nop
  .L800B3034:
    /* A3834 800B3034 23C02203 */  subu       $t8, $t9, $v0
    /* A3838 800B3038 2A089801 */  slt        $at, $t4, $t8
    /* A383C 800B303C 0A002010 */  beqz       $at, .L800B3068
    /* A3840 800B3040 2A08B801 */   slt       $at, $t5, $t8
    /* A3844 800B3044 08002010 */  beqz       $at, .L800B3068
    /* A3848 800B3048 2A08D801 */   slt       $at, $t6, $t8
    /* A384C 800B304C 06002010 */  beqz       $at, .L800B3068
    /* A3850 800B3050 2A08F801 */   slt       $at, $t7, $t8
    /* A3854 800B3054 04002010 */  beqz       $at, .L800B3068
    /* A3858 800B3058 00000000 */   nop
    /* A385C 800B305C 21108000 */  addu       $v0, $a0, $zero
    /* A3860 800B3060 0800E003 */  jr         $ra
    /* A3864 800B3064 00000000 */   nop
  .L800B3068:
    /* A3868 800B3068 00C85948 */  cfc2       $t9, $25 /* handwritten instruction */
    /* A386C 800B306C 12000C85 */  lh         $t4, 0x12($t0)
    /* A3870 800B3070 12002D85 */  lh         $t5, 0x12($t1)
    /* A3874 800B3074 12004E85 */  lh         $t6, 0x12($t2)
    /* A3878 800B3078 12006F85 */  lh         $t7, 0x12($t3)
    /* A387C 800B307C 03CC1900 */  sra        $t9, $t9, 16
    /* A3880 800B3080 21C02303 */  addu       $t8, $t9, $v1
    /* A3884 800B3084 2A080C03 */  slt        $at, $t8, $t4
    /* A3888 800B3088 0A002010 */  beqz       $at, .L800B30B4
    /* A388C 800B308C 2A080D03 */   slt       $at, $t8, $t5
    /* A3890 800B3090 08002010 */  beqz       $at, .L800B30B4
    /* A3894 800B3094 2A080E03 */   slt       $at, $t8, $t6
    /* A3898 800B3098 06002010 */  beqz       $at, .L800B30B4
    /* A389C 800B309C 2A080F03 */   slt       $at, $t8, $t7
    /* A38A0 800B30A0 04002010 */  beqz       $at, .L800B30B4
    /* A38A4 800B30A4 00000000 */   nop
    /* A38A8 800B30A8 21108000 */  addu       $v0, $a0, $zero
    /* A38AC 800B30AC 0800E003 */  jr         $ra
    /* A38B0 800B30B0 00000000 */   nop
  .L800B30B4:
    /* A38B4 800B30B4 23C02303 */  subu       $t8, $t9, $v1
    /* A38B8 800B30B8 2A089801 */  slt        $at, $t4, $t8
    /* A38BC 800B30BC 0A002010 */  beqz       $at, .L800B30E8
    /* A38C0 800B30C0 2A08B801 */   slt       $at, $t5, $t8
    /* A38C4 800B30C4 08002010 */  beqz       $at, .L800B30E8
    /* A38C8 800B30C8 2A08D801 */   slt       $at, $t6, $t8
    /* A38CC 800B30CC 06002010 */  beqz       $at, .L800B30E8
    /* A38D0 800B30D0 2A08F801 */   slt       $at, $t7, $t8
    /* A38D4 800B30D4 04002010 */  beqz       $at, .L800B30E8
    /* A38D8 800B30D8 00000000 */   nop
    /* A38DC 800B30DC 21108000 */  addu       $v0, $a0, $zero
    /* A38E0 800B30E0 0800E003 */  jr         $ra
    /* A38E4 800B30E4 00000000 */   nop
  .L800B30E8:
    /* A38E8 800B30E8 00000C85 */  lh         $t4, 0x0($t0)
    /* A38EC 800B30EC 00002D85 */  lh         $t5, 0x0($t1)
    /* A38F0 800B30F0 00004E85 */  lh         $t6, 0x0($t2)
    /* A38F4 800B30F4 00006F85 */  lh         $t7, 0x0($t3)
    /* A38F8 800B30F8 20C88E01 */  add        $t9, $t4, $t6 /* handwritten instruction */
    /* A38FC 800B30FC 20C0ED01 */  add        $t8, $t7, $t5 /* handwritten instruction */
    /* A3900 800B3100 43C01800 */  sra        $t8, $t8, 1
    /* A3904 800B3104 43C81900 */  sra        $t9, $t9, 1
    /* A3908 800B3108 3000F8A4 */  sh         $t8, 0x30($a3)
    /* A390C 800B310C 1800F9A4 */  sh         $t9, 0x18($a3)
    /* A3910 800B3110 20C08D01 */  add        $t8, $t4, $t5 /* handwritten instruction */
    /* A3914 800B3114 20C8EE01 */  add        $t9, $t7, $t6 /* handwritten instruction */
    /* A3918 800B3118 20181903 */  add        $v1, $t8, $t9 /* handwritten instruction */
    /* A391C 800B311C 43C01800 */  sra        $t8, $t8, 1
    /* A3920 800B3120 43C81900 */  sra        $t9, $t9, 1
    /* A3924 800B3124 83180300 */  sra        $v1, $v1, 2
    /* A3928 800B3128 0000F8A4 */  sh         $t8, 0x0($a3)
    /* A392C 800B312C 4800F9A4 */  sh         $t9, 0x48($a3)
    /* A3930 800B3130 6000E3A4 */  sh         $v1, 0x60($a3)
    /* A3934 800B3134 02000C85 */  lh         $t4, 0x2($t0)
    /* A3938 800B3138 02002D85 */  lh         $t5, 0x2($t1)
    /* A393C 800B313C 02004E85 */  lh         $t6, 0x2($t2)
    /* A3940 800B3140 02006F85 */  lh         $t7, 0x2($t3)
    /* A3944 800B3144 20C88E01 */  add        $t9, $t4, $t6 /* handwritten instruction */
    /* A3948 800B3148 20C0ED01 */  add        $t8, $t7, $t5 /* handwritten instruction */
    /* A394C 800B314C 43C01800 */  sra        $t8, $t8, 1
    /* A3950 800B3150 43C81900 */  sra        $t9, $t9, 1
    /* A3954 800B3154 3200F8A4 */  sh         $t8, 0x32($a3)
    /* A3958 800B3158 1A00F9A4 */  sh         $t9, 0x1A($a3)
    /* A395C 800B315C 20C08D01 */  add        $t8, $t4, $t5 /* handwritten instruction */
    /* A3960 800B3160 20C8EE01 */  add        $t9, $t7, $t6 /* handwritten instruction */
    /* A3964 800B3164 20181903 */  add        $v1, $t8, $t9 /* handwritten instruction */
    /* A3968 800B3168 43C01800 */  sra        $t8, $t8, 1
    /* A396C 800B316C 43C81900 */  sra        $t9, $t9, 1
    /* A3970 800B3170 83180300 */  sra        $v1, $v1, 2
    /* A3974 800B3174 0200F8A4 */  sh         $t8, 0x2($a3)
    /* A3978 800B3178 4A00F9A4 */  sh         $t9, 0x4A($a3)
    /* A397C 800B317C 6200E3A4 */  sh         $v1, 0x62($a3)
    /* A3980 800B3180 04000C85 */  lh         $t4, 0x4($t0)
    /* A3984 800B3184 04002D85 */  lh         $t5, 0x4($t1)
    /* A3988 800B3188 04004E85 */  lh         $t6, 0x4($t2)
    /* A398C 800B318C 04006F85 */  lh         $t7, 0x4($t3)
    /* A3990 800B3190 20C88E01 */  add        $t9, $t4, $t6 /* handwritten instruction */
    /* A3994 800B3194 20C0ED01 */  add        $t8, $t7, $t5 /* handwritten instruction */
    /* A3998 800B3198 43C01800 */  sra        $t8, $t8, 1
    /* A399C 800B319C 43C81900 */  sra        $t9, $t9, 1
    /* A39A0 800B31A0 3400F8A4 */  sh         $t8, 0x34($a3)
    /* A39A4 800B31A4 1C00F9A4 */  sh         $t9, 0x1C($a3)
    /* A39A8 800B31A8 20C08D01 */  add        $t8, $t4, $t5 /* handwritten instruction */
    /* A39AC 800B31AC 20C8EE01 */  add        $t9, $t7, $t6 /* handwritten instruction */
    /* A39B0 800B31B0 20181903 */  add        $v1, $t8, $t9 /* handwritten instruction */
    /* A39B4 800B31B4 43C01800 */  sra        $t8, $t8, 1
    /* A39B8 800B31B8 43C81900 */  sra        $t9, $t9, 1
    /* A39BC 800B31BC 83180300 */  sra        $v1, $v1, 2
    /* A39C0 800B31C0 0400F8A4 */  sh         $t8, 0x4($a3)
    /* A39C4 800B31C4 4C00F9A4 */  sh         $t9, 0x4C($a3)
    /* A39C8 800B31C8 6400E3A4 */  sh         $v1, 0x64($a3)
    /* A39CC 800B31CC 0000E0C8 */  lwc2       $0, 0x0($a3)
    /* A39D0 800B31D0 0400E1C8 */  lwc2       $1, 0x4($a3)
    /* A39D4 800B31D4 1800E2C8 */  lwc2       $2, 0x18($a3)
    /* A39D8 800B31D8 1C00E3C8 */  lwc2       $3, 0x1C($a3)
    /* A39DC 800B31DC 6000E4C8 */  lwc2       $4, 0x60($a3)
    /* A39E0 800B31E0 6400E5C8 */  lwc2       $5, 0x64($a3)
    /* A39E4 800B31E4 08000C91 */  lbu        $t4, 0x8($t0)
    /* A39E8 800B31E8 3000284A */  rtpt
    /* A39EC 800B31EC 08002D91 */  lbu        $t5, 0x8($t1)
    /* A39F0 800B31F0 08004E91 */  lbu        $t6, 0x8($t2)
    /* A39F4 800B31F4 08006F91 */  lbu        $t7, 0x8($t3)
    /* A39F8 800B31F8 20C88E01 */  add        $t9, $t4, $t6 /* handwritten instruction */
    /* A39FC 800B31FC 20C0ED01 */  add        $t8, $t7, $t5 /* handwritten instruction */
    /* A3A00 800B3200 43C01800 */  sra        $t8, $t8, 1
    /* A3A04 800B3204 43C81900 */  sra        $t9, $t9, 1
    /* A3A08 800B3208 3800F8A0 */  sb         $t8, 0x38($a3)
    /* A3A0C 800B320C 2000F9A0 */  sb         $t9, 0x20($a3)
    /* A3A10 800B3210 20C08D01 */  add        $t8, $t4, $t5 /* handwritten instruction */
    /* A3A14 800B3214 20C8EE01 */  add        $t9, $t7, $t6 /* handwritten instruction */
    /* A3A18 800B3218 20181903 */  add        $v1, $t8, $t9 /* handwritten instruction */
    /* A3A1C 800B321C 43C01800 */  sra        $t8, $t8, 1
    /* A3A20 800B3220 43C81900 */  sra        $t9, $t9, 1
    /* A3A24 800B3224 83180300 */  sra        $v1, $v1, 2
    /* A3A28 800B3228 0800F8A0 */  sb         $t8, 0x8($a3)
    /* A3A2C 800B322C 5000F9A0 */  sb         $t9, 0x50($a3)
    /* A3A30 800B3230 6800E3A0 */  sb         $v1, 0x68($a3)
    /* A3A34 800B3234 1000ECE8 */  swc2       $12, 0x10($a3)
    /* A3A38 800B3238 2800EDE8 */  swc2       $13, 0x28($a3)
    /* A3A3C 800B323C 7000EEE8 */  swc2       $14, 0x70($a3)
    /* A3A40 800B3240 1400F1E8 */  swc2       $17, 0x14($a3)
    /* A3A44 800B3244 2C00F2E8 */  swc2       $18, 0x2C($a3)
    /* A3A48 800B3248 7400F3E8 */  swc2       $19, 0x74($a3)
    /* A3A4C 800B324C 3000E0C8 */  lwc2       $0, 0x30($a3)
    /* A3A50 800B3250 3400E1C8 */  lwc2       $1, 0x34($a3)
    /* A3A54 800B3254 4800E2C8 */  lwc2       $2, 0x48($a3)
    /* A3A58 800B3258 4C00E3C8 */  lwc2       $3, 0x4C($a3)
    /* A3A5C 800B325C 09000C91 */  lbu        $t4, 0x9($t0)
    /* A3A60 800B3260 3000284A */  rtpt
    /* A3A64 800B3264 09002D91 */  lbu        $t5, 0x9($t1)
    /* A3A68 800B3268 09004E91 */  lbu        $t6, 0x9($t2)
    /* A3A6C 800B326C 09006F91 */  lbu        $t7, 0x9($t3)
    /* A3A70 800B3270 20C88E01 */  add        $t9, $t4, $t6 /* handwritten instruction */
    /* A3A74 800B3274 20C0ED01 */  add        $t8, $t7, $t5 /* handwritten instruction */
    /* A3A78 800B3278 43C01800 */  sra        $t8, $t8, 1
    /* A3A7C 800B327C 43C81900 */  sra        $t9, $t9, 1
    /* A3A80 800B3280 3900F8A0 */  sb         $t8, 0x39($a3)
    /* A3A84 800B3284 2100F9A0 */  sb         $t9, 0x21($a3)
    /* A3A88 800B3288 20C08D01 */  add        $t8, $t4, $t5 /* handwritten instruction */
    /* A3A8C 800B328C 20C8EE01 */  add        $t9, $t7, $t6 /* handwritten instruction */
    /* A3A90 800B3290 20181903 */  add        $v1, $t8, $t9 /* handwritten instruction */
    /* A3A94 800B3294 43C01800 */  sra        $t8, $t8, 1
    /* A3A98 800B3298 43C81900 */  sra        $t9, $t9, 1
    /* A3A9C 800B329C 83180300 */  sra        $v1, $v1, 2
    /* A3AA0 800B32A0 0900F8A0 */  sb         $t8, 0x9($a3)
    /* A3AA4 800B32A4 5100F9A0 */  sb         $t9, 0x51($a3)
    /* A3AA8 800B32A8 6900E3A0 */  sb         $v1, 0x69($a3)
    /* A3AAC 800B32AC 0000AC8C */  lw         $t4, 0x0($a1)
    /* A3AB0 800B32B0 0100C624 */  addiu      $a2, $a2, 0x1
    /* A3AB4 800B32B4 20008615 */  bne        $t4, $a2, .L800B3338
    /* A3AB8 800B32B8 00000000 */   nop
    /* A3ABC 800B32BC 2118E003 */  addu       $v1, $ra, $zero
    /* A3AC0 800B32C0 7800E88C */  lw         $t0, 0x78($a3)
    /* A3AC4 800B32C4 0000E924 */  addiu      $t1, $a3, 0x0
    /* A3AC8 800B32C8 1800EA24 */  addiu      $t2, $a3, 0x18
    /* A3ACC 800B32CC 6000EB24 */  addiu      $t3, $a3, 0x60
    /* A3AD0 800B32D0 4000ECE8 */  swc2       $12, 0x40($a3)
    /* A3AD4 800B32D4 5800EDE8 */  swc2       $13, 0x58($a3)
    /* A3AD8 800B32D8 02CD020C */  jal        func_800B3408
    /* A3ADC 800B32DC 00000000 */   nop
    /* A3AE0 800B32E0 7C00E88C */  lw         $t0, 0x7C($a3)
    /* A3AE4 800B32E4 3000E924 */  addiu      $t1, $a3, 0x30
    /* A3AE8 800B32E8 0000EA24 */  addiu      $t2, $a3, 0x0
    /* A3AEC 800B32EC 6000EB24 */  addiu      $t3, $a3, 0x60
    /* A3AF0 800B32F0 02CD020C */  jal        func_800B3408
    /* A3AF4 800B32F4 00000000 */   nop
    /* A3AF8 800B32F8 8000E88C */  lw         $t0, 0x80($a3)
    /* A3AFC 800B32FC 1800E924 */  addiu      $t1, $a3, 0x18
    /* A3B00 800B3300 4800EA24 */  addiu      $t2, $a3, 0x48
    /* A3B04 800B3304 6000EB24 */  addiu      $t3, $a3, 0x60
    /* A3B08 800B3308 02CD020C */  jal        func_800B3408
    /* A3B0C 800B330C 00000000 */   nop
    /* A3B10 800B3310 8400E88C */  lw         $t0, 0x84($a3)
    /* A3B14 800B3314 4800E924 */  addiu      $t1, $a3, 0x48
    /* A3B18 800B3318 3000EA24 */  addiu      $t2, $a3, 0x30
    /* A3B1C 800B331C 6000EB24 */  addiu      $t3, $a3, 0x60
    /* A3B20 800B3320 02CD020C */  jal        func_800B3408
    /* A3B24 800B3324 00000000 */   nop
    /* A3B28 800B3328 21F86000 */  addu       $ra, $v1, $zero
    /* A3B2C 800B332C FFFFC624 */  addiu      $a2, $a2, -0x1
    /* A3B30 800B3330 32000010 */  b          .L800B33FC
    /* A3B34 800B3334 00000000 */   nop
  .L800B3338:
    /* A3B38 800B3338 8C00E724 */  addiu      $a3, $a3, 0x8C
    /* A3B3C 800B333C 8800FFAC */  sw         $ra, 0x88($a3)
    /* A3B40 800B3340 ECFFEC8C */  lw         $t4, -0x14($a3)
    /* A3B44 800B3344 74FFED24 */  addiu      $t5, $a3, -0x8C
    /* A3B48 800B3348 8CFFEE24 */  addiu      $t6, $a3, -0x74
    /* A3B4C 800B334C D4FFEF24 */  addiu      $t7, $a3, -0x2C
    /* A3B50 800B3350 7800ECAC */  sw         $t4, 0x78($a3)
    /* A3B54 800B3354 7C00EDAC */  sw         $t5, 0x7C($a3)
    /* A3B58 800B3358 8000EEAC */  sw         $t6, 0x80($a3)
    /* A3B5C 800B335C 8400EFAC */  sw         $t7, 0x84($a3)
    /* A3B60 800B3360 B4FFECE8 */  swc2       $12, -0x4C($a3)
    /* A3B64 800B3364 CCFFEDE8 */  swc2       $13, -0x34($a3)
    /* A3B68 800B3368 B8FFF1E8 */  swc2       $17, -0x48($a3)
    /* A3B6C 800B336C D0FFF2E8 */  swc2       $18, -0x30($a3)
    /* A3B70 800B3370 E0CB020C */  jal        func_800B2F80
    /* A3B74 800B3374 00000000 */   nop
    /* A3B78 800B3378 F0FFEC8C */  lw         $t4, -0x10($a3)
    /* A3B7C 800B337C A4FFED24 */  addiu      $t5, $a3, -0x5C
    /* A3B80 800B3380 74FFEE24 */  addiu      $t6, $a3, -0x8C
    /* A3B84 800B3384 D4FFEF24 */  addiu      $t7, $a3, -0x2C
    /* A3B88 800B3388 7800ECAC */  sw         $t4, 0x78($a3)
    /* A3B8C 800B338C 7C00EDAC */  sw         $t5, 0x7C($a3)
    /* A3B90 800B3390 8000EEAC */  sw         $t6, 0x80($a3)
    /* A3B94 800B3394 8400EFAC */  sw         $t7, 0x84($a3)
    /* A3B98 800B3398 E0CB020C */  jal        func_800B2F80
    /* A3B9C 800B339C 00000000 */   nop
    /* A3BA0 800B33A0 F4FFEC8C */  lw         $t4, -0xC($a3)
    /* A3BA4 800B33A4 8CFFED24 */  addiu      $t5, $a3, -0x74
    /* A3BA8 800B33A8 BCFFEE24 */  addiu      $t6, $a3, -0x44
    /* A3BAC 800B33AC D4FFEF24 */  addiu      $t7, $a3, -0x2C
    /* A3BB0 800B33B0 7800ECAC */  sw         $t4, 0x78($a3)
    /* A3BB4 800B33B4 7C00EDAC */  sw         $t5, 0x7C($a3)
    /* A3BB8 800B33B8 8000EEAC */  sw         $t6, 0x80($a3)
    /* A3BBC 800B33BC 8400EFAC */  sw         $t7, 0x84($a3)
    /* A3BC0 800B33C0 E0CB020C */  jal        func_800B2F80
    /* A3BC4 800B33C4 00000000 */   nop
    /* A3BC8 800B33C8 F8FFEC8C */  lw         $t4, -0x8($a3)
    /* A3BCC 800B33CC BCFFED24 */  addiu      $t5, $a3, -0x44
    /* A3BD0 800B33D0 A4FFEE24 */  addiu      $t6, $a3, -0x5C
    /* A3BD4 800B33D4 D4FFEF24 */  addiu      $t7, $a3, -0x2C
    /* A3BD8 800B33D8 7800ECAC */  sw         $t4, 0x78($a3)
    /* A3BDC 800B33DC 7C00EDAC */  sw         $t5, 0x7C($a3)
    /* A3BE0 800B33E0 8000EEAC */  sw         $t6, 0x80($a3)
    /* A3BE4 800B33E4 8400EFAC */  sw         $t7, 0x84($a3)
    /* A3BE8 800B33E8 E0CB020C */  jal        func_800B2F80
    /* A3BEC 800B33EC 00000000 */   nop
    /* A3BF0 800B33F0 8800FF8C */  lw         $ra, 0x88($a3)
    /* A3BF4 800B33F4 74FFE724 */  addiu      $a3, $a3, -0x8C
    /* A3BF8 800B33F8 FFFFC624 */  addiu      $a2, $a2, -0x1
  .L800B33FC:
    /* A3BFC 800B33FC 21108000 */  addu       $v0, $a0, $zero
    /* A3C00 800B3400 0800E003 */  jr         $ra
    /* A3C04 800B3404 00000000 */   nop
endlabel func_800B2F80
