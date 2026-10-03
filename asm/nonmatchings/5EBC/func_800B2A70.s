/* Handwritten function */
nonmatching func_800B2A70, 0x1AC

glabel func_800B2A70
    /* A3270 800B2A70 1000B88F */  lw         $t8, 0x10($sp)
    /* A3274 800B2A74 1800B98F */  lw         $t9, 0x18($sp)
    /* A3278 800B2A78 1400AF8F */  lw         $t7, 0x14($sp)
    /* A327C 800B2A7C 64000013 */  beqz       $t8, .L800B2C10
    /* A3280 800B2A80 0400288F */   lw        $t0, 0x4($t9)
    /* A3284 800B2A84 0800298F */  lw         $t1, 0x8($t9)
    /* A3288 800B2A88 14008A8C */  lw         $t2, 0x14($a0)
    /* A328C 800B2A8C 18008B8C */  lw         $t3, 0x18($a0)
    /* A3290 800B2A90 02640A00 */  srl        $t4, $t2, 16
    /* A3294 800B2A94 C0600C00 */  sll        $t4, $t4, 3
    /* A3298 800B2A98 21608501 */  addu       $t4, $t4, $a1
  .L800B2A9C:
    /* A329C 800B2A9C 000080C9 */  lwc2       $0, 0x0($t4)
    /* A32A0 800B2AA0 040081C9 */  lwc2       $1, 0x4($t4)
    /* A32A4 800B2AA4 006C0B00 */  sll        $t5, $t3, 16
    /* A32A8 800B2AA8 426B0D00 */  srl        $t5, $t5, 13
    /* A32AC 800B2AAC 2168A501 */  addu       $t5, $t5, $a1
    /* A32B0 800B2AB0 0000A2C9 */  lwc2       $2, 0x0($t5)
    /* A32B4 800B2AB4 0400A3C9 */  lwc2       $3, 0x4($t5)
    /* A32B8 800B2AB8 026C0B00 */  srl        $t5, $t3, 16
    /* A32BC 800B2ABC C0680D00 */  sll        $t5, $t5, 3
    /* A32C0 800B2AC0 2168A501 */  addu       $t5, $t5, $a1
    /* A32C4 800B2AC4 0000A4C9 */  lwc2       $4, 0x0($t5)
    /* A32C8 800B2AC8 0400A5C9 */  lwc2       $5, 0x4($t5)
    /* A32CC 800B2ACC 00000000 */  nop
    /* A32D0 800B2AD0 3000284A */  rtpt
    /* A32D4 800B2AD4 11800E3C */  lui        $t6, %hi(D_8010C1B8)
    /* A32D8 800B2AD8 B8C1CE8D */  lw         $t6, %lo(D_8010C1B8)($t6)
    /* A32DC 800B2ADC 03008380 */  lb         $v1, 0x3($a0)
    /* A32E0 800B2AE0 40700E00 */  sll        $t6, $t6, 1
    /* A32E4 800B2AE4 25186E00 */  or         $v1, $v1, $t6
    /* A32E8 800B2AE8 001E0300 */  sll        $v1, $v1, 24
    /* A32EC 800B2AEC 80000E3C */  lui        $t6, (0x808080 >> 16)
    /* A32F0 800B2AF0 8080CE35 */  ori        $t6, $t6, (0x808080 & 0xFFFF)
    /* A32F4 800B2AF4 25186E00 */  or         $v1, $v1, $t6
    /* A32F8 800B2AF8 00308348 */  mtc2       $v1, $6 /* handwritten instruction */
    /* A32FC 800B2AFC 006C0A00 */  sll        $t5, $t2, 16
    /* A3300 800B2B00 426B0D00 */  srl        $t5, $t5, 13
    /* A3304 800B2B04 2168A601 */  addu       $t5, $t5, $a2
    /* A3308 800B2B08 1C008394 */  lhu        $v1, 0x1C($a0)
    /* A330C 800B2B0C 20008424 */  addiu      $a0, $a0, 0x20
    /* A3310 800B2B10 C0180300 */  sll        $v1, $v1, 3
    /* A3314 800B2B14 21186500 */  addu       $v1, $v1, $a1
    /* A3318 800B2B18 14008A8C */  lw         $t2, 0x14($a0)
    /* A331C 800B2B1C 18008B8C */  lw         $t3, 0x18($a0)
    /* A3320 800B2B20 02640A00 */  srl        $t4, $t2, 16
    /* A3324 800B2B24 C0600C00 */  sll        $t4, $t4, 3
    /* A3328 800B2B28 21608501 */  addu       $t4, $t4, $a1
    /* A332C 800B2B2C 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* A3330 800B2B30 00000000 */  nop
    /* A3334 800B2B34 33004004 */  bltz       $v0, .L800B2C04
    /* A3338 800B2B38 00000000 */   nop
    /* A333C 800B2B3C 0600404B */  nclip
    /* A3340 800B2B40 000060C8 */  lwc2       $0, 0x0($v1)
    /* A3344 800B2B44 040061C8 */  lwc2       $1, 0x4($v1)
    /* A3348 800B2B48 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* A334C 800B2B4C 00000000 */  nop
    /* A3350 800B2B50 2C004018 */  blez       $v0, .L800B2C04
    /* A3354 800B2B54 00000000 */   nop
    /* A3358 800B2B58 0800ECE8 */  swc2       $12, 0x8($a3)
    /* A335C 800B2B5C 1000EDE8 */  swc2       $13, 0x10($a3)
    /* A3360 800B2B60 1800EEE8 */  swc2       $14, 0x18($a3)
    /* A3364 800B2B64 00000000 */  nop
    /* A3368 800B2B68 0100184A */  rtps
    /* A336C 800B2B6C E0FF8224 */  addiu      $v0, $a0, -0x20
    /* A3370 800B2B70 0400438C */  lw         $v1, 0x4($v0)
    /* A3374 800B2B74 08004E8C */  lw         $t6, 0x8($v0)
    /* A3378 800B2B78 0C00E3AC */  sw         $v1, 0xC($a3)
    /* A337C 800B2B7C 1400EEAC */  sw         $t6, 0x14($a3)
    /* A3380 800B2B80 0C00438C */  lw         $v1, 0xC($v0)
    /* A3384 800B2B84 10004E8C */  lw         $t6, 0x10($v0)
    /* A3388 800B2B88 1C00E3AC */  sw         $v1, 0x1C($a3)
    /* A338C 800B2B8C 2400EEAC */  sw         $t6, 0x24($a3)
    /* A3390 800B2B90 00F84248 */  cfc2       $v0, $31 /* handwritten instruction */
    /* A3394 800B2B94 00000000 */  nop
    /* A3398 800B2B98 1A004004 */  bltz       $v0, .L800B2C04
    /* A339C 800B2B9C 00000000 */   nop
    /* A33A0 800B2BA0 2E00684B */  avsz4
    /* A33A4 800B2BA4 0000A0C9 */  lwc2       $0, 0x0($t5)
    /* A33A8 800B2BA8 0400A1C9 */  lwc2       $1, 0x4($t5)
    /* A33AC 800B2BAC 00380E48 */  mfc2       $t6, $7 /* handwritten instruction */
    /* A33B0 800B2BB0 00000000 */  nop
    /* A33B4 800B2BB4 1304E84A */  ncds
    /* A33B8 800B2BB8 2370C901 */  subu       $t6, $t6, $t1
    /* A33BC 800B2BBC 0670EE01 */  srlv       $t6, $t6, $t7
    /* A33C0 800B2BC0 FFFFCE31 */  andi       $t6, $t6, 0xFFFF
    /* A33C4 800B2BC4 80700E00 */  sll        $t6, $t6, 2
    /* A33C8 800B2BC8 2170C801 */  addu       $t6, $t6, $t0
    /* A33CC 800B2BCC 0000CD8D */  lw         $t5, 0x0($t6)
    /* A33D0 800B2BD0 0009023C */  lui        $v0, (0x9000000 >> 16)
    /* A33D4 800B2BD4 001A0D00 */  sll        $v1, $t5, 8
    /* A33D8 800B2BD8 021A0300 */  srl        $v1, $v1, 8
    /* A33DC 800B2BDC 25104300 */  or         $v0, $v0, $v1
    /* A33E0 800B2BE0 0000E2AC */  sw         $v0, 0x0($a3)
    /* A33E4 800B2BE4 2610ED00 */  xor        $v0, $a3, $t5
    /* A33E8 800B2BE8 001A0200 */  sll        $v1, $v0, 8
    /* A33EC 800B2BEC 02120300 */  srl        $v0, $v1, 8
    /* A33F0 800B2BF0 26184D00 */  xor        $v1, $v0, $t5
    /* A33F4 800B2BF4 0000C3AD */  sw         $v1, 0x0($t6)
    /* A33F8 800B2BF8 2000EEE8 */  swc2       $14, 0x20($a3)
    /* A33FC 800B2BFC 0400F6E8 */  swc2       $22, 0x4($a3)
    /* A3400 800B2C00 2800E724 */  addiu      $a3, $a3, 0x28
  .L800B2C04:
    /* A3404 800B2C04 FFFF1827 */  addiu      $t8, $t8, -0x1
    /* A3408 800B2C08 A4FF0017 */  bnez       $t8, .L800B2A9C
    /* A340C 800B2C0C 00000000 */   nop
  .L800B2C10:
    /* A3410 800B2C10 2110E000 */  addu       $v0, $a3, $zero
    /* A3414 800B2C14 0800E003 */  jr         $ra
    /* A3418 800B2C18 00000000 */   nop
endlabel func_800B2A70
    /* A341C 800B2C1C 00000000 */  nop
    /* A3420 800B2C20 00000000 */  nop
    /* A3424 800B2C24 00000000 */  nop
