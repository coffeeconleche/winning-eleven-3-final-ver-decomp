/* Handwritten function */
nonmatching func_800B3F38, 0x78

glabel func_800B3F38
    /* A4738 800B3F38 000080C8 */  lwc2       $0, 0x0($a0)
    /* A473C 800B3F3C 040081C8 */  lwc2       $1, 0x4($a0)
    /* A4740 800B3F40 0000A2C8 */  lwc2       $2, 0x0($a1)
    /* A4744 800B3F44 0400A3C8 */  lwc2       $3, 0x4($a1)
    /* A4748 800B3F48 0000C4C8 */  lwc2       $4, 0x0($a2)
    /* A474C 800B3F4C 0400C5C8 */  lwc2       $5, 0x4($a2)
    /* A4750 800B3F50 00000000 */  nop
    /* A4754 800B3F54 3000284A */  rtpt
    /* A4758 800B3F58 1000A88F */  lw         $t0, 0x10($sp)
    /* A475C 800B3F5C 1400A98F */  lw         $t1, 0x14($sp)
    /* A4760 800B3F60 1800AA8F */  lw         $t2, 0x18($sp)
    /* A4764 800B3F64 00000CE9 */  swc2       $12, 0x0($t0)
    /* A4768 800B3F68 00002DE9 */  swc2       $13, 0x0($t1)
    /* A476C 800B3F6C 00004EE9 */  swc2       $14, 0x0($t2)
    /* A4770 800B3F70 00F84348 */  cfc2       $v1, $31 /* handwritten instruction */
    /* A4774 800B3F74 0000E0C8 */  lwc2       $0, 0x0($a3)
    /* A4778 800B3F78 0400E1C8 */  lwc2       $1, 0x4($a3)
    /* A477C 800B3F7C 00000000 */  nop
    /* A4780 800B3F80 0100184A */  rtps
    /* A4784 800B3F84 1C00A88F */  lw         $t0, 0x1C($sp)
    /* A4788 800B3F88 2000A98F */  lw         $t1, 0x20($sp)
    /* A478C 800B3F8C 2400AA8F */  lw         $t2, 0x24($sp)
    /* A4790 800B3F90 00000EE9 */  swc2       $14, 0x0($t0)
    /* A4794 800B3F94 000028E9 */  swc2       $8, 0x0($t1)
    /* A4798 800B3F98 00F84848 */  cfc2       $t0, $31 /* handwritten instruction */
    /* A479C 800B3F9C 00980248 */  mfc2       $v0, $19 /* handwritten instruction */
    /* A47A0 800B3FA0 25400301 */  or         $t0, $t0, $v1
    /* A47A4 800B3FA4 000048AD */  sw         $t0, 0x0($t2)
    /* A47A8 800B3FA8 0800E003 */  jr         $ra
    /* A47AC 800B3FAC 83100200 */   sra       $v0, $v0, 2
endlabel func_800B3F38
    /* A47B0 800B3FB0 00000000 */  nop
    /* A47B4 800B3FB4 00000000 */  nop
