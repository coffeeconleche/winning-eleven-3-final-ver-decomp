/* Handwritten function */
nonmatching func_800B2EC8, 0xB0

glabel func_800B2EC8
    /* A36C8 800B2EC8 000080C8 */  lwc2       $0, 0x0($a0)
    /* A36CC 800B2ECC 040081C8 */  lwc2       $1, 0x4($a0)
    /* A36D0 800B2ED0 0000A2C8 */  lwc2       $2, 0x0($a1)
    /* A36D4 800B2ED4 0400A3C8 */  lwc2       $3, 0x4($a1)
    /* A36D8 800B2ED8 0000C4C8 */  lwc2       $4, 0x0($a2)
    /* A36DC 800B2EDC 0400C5C8 */  lwc2       $5, 0x4($a2)
    /* A36E0 800B2EE0 00000000 */  nop
    /* A36E4 800B2EE4 3000284A */  rtpt
    /* A36E8 800B2EE8 2800A88F */  lw         $t0, 0x28($sp)
    /* A36EC 800B2EEC 00F84348 */  cfc2       $v1, $31 /* handwritten instruction */
    /* A36F0 800B2EF0 00000000 */  nop
    /* A36F4 800B2EF4 000003AD */  sw         $v1, 0x0($t0)
    /* A36F8 800B2EF8 0600404B */  nclip
    /* A36FC 800B2EFC 1000A88F */  lw         $t0, 0x10($sp)
    /* A3700 800B2F00 1400A98F */  lw         $t1, 0x14($sp)
    /* A3704 800B2F04 1800AA8F */  lw         $t2, 0x18($sp)
    /* A3708 800B2F08 00C00248 */  mfc2       $v0, $24 /* handwritten instruction */
    /* A370C 800B2F0C 00000000 */  nop
    /* A3710 800B2F10 0300401C */  bgtz       $v0, .L800B2F20
    /* A3714 800B2F14 00000000 */   nop
    /* A3718 800B2F18 15000010 */  b          .L800B2F70
    /* A371C 800B2F1C 00000000 */   nop
  .L800B2F20:
    /* A3720 800B2F20 00000CE9 */  swc2       $12, 0x0($t0)
    /* A3724 800B2F24 00002DE9 */  swc2       $13, 0x0($t1)
    /* A3728 800B2F28 00004EE9 */  swc2       $14, 0x0($t2)
    /* A372C 800B2F2C 0000E0C8 */  lwc2       $0, 0x0($a3)
    /* A3730 800B2F30 0400E1C8 */  lwc2       $1, 0x4($a3)
    /* A3734 800B2F34 00000000 */  nop
    /* A3738 800B2F38 0100184A */  rtps
    /* A373C 800B2F3C 1C00A88F */  lw         $t0, 0x1C($sp)
    /* A3740 800B2F40 2000A98F */  lw         $t1, 0x20($sp)
    /* A3744 800B2F44 2800AA8F */  lw         $t2, 0x28($sp)
    /* A3748 800B2F48 00000EE9 */  swc2       $14, 0x0($t0)
    /* A374C 800B2F4C 00F84B48 */  cfc2       $t3, $31 /* handwritten instruction */
    /* A3750 800B2F50 000028E9 */  swc2       $8, 0x0($t1)
    /* A3754 800B2F54 25586301 */  or         $t3, $t3, $v1
    /* A3758 800B2F58 00004BAD */  sw         $t3, 0x0($t2)
    /* A375C 800B2F5C 2E00684B */  avsz4
    /* A3760 800B2F60 2400A98F */  lw         $t1, 0x24($sp)
    /* A3764 800B2F64 00380848 */  mfc2       $t0, $7 /* handwritten instruction */
    /* A3768 800B2F68 00000000 */  nop
    /* A376C 800B2F6C 000028AD */  sw         $t0, 0x0($t1)
  .L800B2F70:
    /* A3770 800B2F70 0800E003 */  jr         $ra
    /* A3774 800B2F74 00000000 */   nop
endlabel func_800B2EC8
