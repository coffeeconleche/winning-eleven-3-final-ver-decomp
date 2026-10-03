/* Handwritten function */
nonmatching func_800B28C4, 0x1AC

glabel func_800B28C4
    /* A30C4 800B28C4 1000B88F */  lw         $t8, 0x10($sp)
    /* A30C8 800B28C8 1800B98F */  lw         $t9, 0x18($sp)
    /* A30CC 800B28CC 1400AF8F */  lw         $t7, 0x14($sp)
    /* A30D0 800B28D0 64000013 */  beqz       $t8, .L800B2A64
    /* A30D4 800B28D4 0400288F */   lw        $t0, 0x4($t9)
    /* A30D8 800B28D8 0800298F */  lw         $t1, 0x8($t9)
    /* A30DC 800B28DC 14008A8C */  lw         $t2, 0x14($a0)
    /* A30E0 800B28E0 18008B8C */  lw         $t3, 0x18($a0)
    /* A30E4 800B28E4 02640A00 */  srl        $t4, $t2, 16
    /* A30E8 800B28E8 C0600C00 */  sll        $t4, $t4, 3
    /* A30EC 800B28EC 21608501 */  addu       $t4, $t4, $a1
  .L800B28F0:
    /* A30F0 800B28F0 000080C9 */  lwc2       $0, 0x0($t4)
    /* A30F4 800B28F4 040081C9 */  lwc2       $1, 0x4($t4)
    /* A30F8 800B28F8 006C0B00 */  sll        $t5, $t3, 16
    /* A30FC 800B28FC 426B0D00 */  srl        $t5, $t5, 13
    /* A3100 800B2900 2168A501 */  addu       $t5, $t5, $a1
    /* A3104 800B2904 0000A2C9 */  lwc2       $2, 0x0($t5)
    /* A3108 800B2908 0400A3C9 */  lwc2       $3, 0x4($t5)
    /* A310C 800B290C 026C0B00 */  srl        $t5, $t3, 16
    /* A3110 800B2910 C0680D00 */  sll        $t5, $t5, 3
    /* A3114 800B2914 2168A501 */  addu       $t5, $t5, $a1
    /* A3118 800B2918 0000A4C9 */  lwc2       $4, 0x0($t5)
    /* A311C 800B291C 0400A5C9 */  lwc2       $5, 0x4($t5)
    /* A3120 800B2920 00000000 */  nop
    /* A3124 800B2924 3000284A */  rtpt
    /* A3128 800B2928 11800E3C */  lui        $t6, %hi(D_8010C1B8)
    /* A312C 800B292C B8C1CE8D */  lw         $t6, %lo(D_8010C1B8)($t6)
    /* A3130 800B2930 03008380 */  lb         $v1, 0x3($a0)
    /* A3134 800B2934 40700E00 */  sll        $t6, $t6, 1
    /* A3138 800B2938 25186E00 */  or         $v1, $v1, $t6
    /* A313C 800B293C 001E0300 */  sll        $v1, $v1, 24
    /* A3140 800B2940 80000E3C */  lui        $t6, (0x808080 >> 16)
    /* A3144 800B2944 8080CE35 */  ori        $t6, $t6, (0x808080 & 0xFFFF)
    /* A3148 800B2948 25186E00 */  or         $v1, $v1, $t6
    /* A314C 800B294C 00308348 */  mtc2       $v1, $6 /* handwritten instruction */
    /* A3150 800B2950 006C0A00 */  sll        $t5, $t2, 16
    /* A3154 800B2954 426B0D00 */  srl        $t5, $t5, 13
    /* A3158 800B2958 2168A601 */  addu       $t5, $t5, $a2
    /* A315C 800B295C 1C008394 */  lhu        $v1, 0x1C($a0)
    /* A3160 800B2960 20008424 */  addiu      $a0, $a0, 0x20
    /* A3164 800B2964 C0180300 */  sll        $v1, $v1, 3
    /* A3168 800B2968 21186500 */  addu       $v1, $v1, $a1
    /* A316C 800B296C 14008A8C */  lw         $t2, 0x14($a0)
    /* A3170 800B2970 18008B8C */  lw         $t3, 0x18($a0)
    /* A3174 800B2974 02640A00 */  srl        $t4, $t2, 16
    /* A3178 800B2978 C0600C00 */  sll        $t4, $t4, 3
    /* A317C 800B297C 21608501 */  addu       $t4, $t4, $a1
    /* A3180 800B2980 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* A3184 800B2984 00000000 */  nop
    /* A3188 800B2988 33004004 */  bltz       $v0, .L800B2A58
    /* A318C 800B298C 00000000 */   nop
    /* A3190 800B2990 0600404B */  nclip
    /* A3194 800B2994 000060C8 */  lwc2       $0, 0x0($v1)
    /* A3198 800B2998 040061C8 */  lwc2       $1, 0x4($v1)
    /* A319C 800B299C 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* A31A0 800B29A0 00000000 */  nop
    /* A31A4 800B29A4 2C004018 */  blez       $v0, .L800B2A58
    /* A31A8 800B29A8 00000000 */   nop
    /* A31AC 800B29AC 0800ECE8 */  swc2       $12, 0x8($a3)
    /* A31B0 800B29B0 1000EDE8 */  swc2       $13, 0x10($a3)
    /* A31B4 800B29B4 1800EEE8 */  swc2       $14, 0x18($a3)
    /* A31B8 800B29B8 00000000 */  nop
    /* A31BC 800B29BC 0100184A */  rtps
    /* A31C0 800B29C0 E0FF8224 */  addiu      $v0, $a0, -0x20
    /* A31C4 800B29C4 0400438C */  lw         $v1, 0x4($v0)
    /* A31C8 800B29C8 08004E8C */  lw         $t6, 0x8($v0)
    /* A31CC 800B29CC 0C00E3AC */  sw         $v1, 0xC($a3)
    /* A31D0 800B29D0 1400EEAC */  sw         $t6, 0x14($a3)
    /* A31D4 800B29D4 0C00438C */  lw         $v1, 0xC($v0)
    /* A31D8 800B29D8 10004E8C */  lw         $t6, 0x10($v0)
    /* A31DC 800B29DC 1C00E3AC */  sw         $v1, 0x1C($a3)
    /* A31E0 800B29E0 2400EEAC */  sw         $t6, 0x24($a3)
    /* A31E4 800B29E4 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* A31E8 800B29E8 00000000 */  nop
    /* A31EC 800B29EC 1A004004 */  bltz       $v0, .L800B2A58
    /* A31F0 800B29F0 00000000 */   nop
    /* A31F4 800B29F4 2E00684B */  avsz4
    /* A31F8 800B29F8 0000A0C9 */  lwc2       $0, 0x0($t5)
    /* A31FC 800B29FC 0400A1C9 */  lwc2       $1, 0x4($t5)
    /* A3200 800B2A00 00380E48 */  mfc2       $t6, $7 /* handwritten instruction */
    /* A3204 800B2A04 00000000 */  nop
    /* A3208 800B2A08 1B04084B */  nccs
    /* A320C 800B2A0C 2370C901 */  subu       $t6, $t6, $t1
    /* A3210 800B2A10 0670EE01 */  srlv       $t6, $t6, $t7
    /* A3214 800B2A14 FFFFCE31 */  andi       $t6, $t6, 0xFFFF
    /* A3218 800B2A18 80700E00 */  sll        $t6, $t6, 2
    /* A321C 800B2A1C 2170C801 */  addu       $t6, $t6, $t0
    /* A3220 800B2A20 0000CD8D */  lw         $t5, 0x0($t6)
    /* A3224 800B2A24 0009023C */  lui        $v0, (0x9000000 >> 16)
    /* A3228 800B2A28 001A0D00 */  sll        $v1, $t5, 8
    /* A322C 800B2A2C 021A0300 */  srl        $v1, $v1, 8
    /* A3230 800B2A30 25104300 */  or         $v0, $v0, $v1
    /* A3234 800B2A34 0000E2AC */  sw         $v0, 0x0($a3)
    /* A3238 800B2A38 2610ED00 */  xor        $v0, $a3, $t5
    /* A323C 800B2A3C 001A0200 */  sll        $v1, $v0, 8
    /* A3240 800B2A40 02120300 */  srl        $v0, $v1, 8
    /* A3244 800B2A44 26184D00 */  xor        $v1, $v0, $t5
    /* A3248 800B2A48 0000C3AD */  sw         $v1, 0x0($t6)
    /* A324C 800B2A4C 2000EEE8 */  swc2       $14, 0x20($a3)
    /* A3250 800B2A50 0400F6E8 */  swc2       $22, 0x4($a3)
    /* A3254 800B2A54 2800E724 */  addiu      $a3, $a3, 0x28
  .L800B2A58:
    /* A3258 800B2A58 FFFF1827 */  addiu      $t8, $t8, -0x1
    /* A325C 800B2A5C A4FF0017 */  bnez       $t8, .L800B28F0
    /* A3260 800B2A60 00000000 */   nop
  .L800B2A64:
    /* A3264 800B2A64 2110E000 */  addu       $v0, $a3, $zero
    /* A3268 800B2A68 0800E003 */  jr         $ra
    /* A326C 800B2A6C 00000000 */   nop
endlabel func_800B28C4
