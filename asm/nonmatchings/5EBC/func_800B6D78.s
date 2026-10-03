nonmatching func_800B6D78, 0xFC

glabel func_800B6D78
    /* A7578 800B6D78 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A757C 800B6D7C 1000B0AF */  sw         $s0, 0x10($sp)
    /* A7580 800B6D80 04001024 */  addiu      $s0, $zero, 0x4
    /* A7584 800B6D84 1400BFAF */  sw         $ra, 0x14($sp)
  .L800B6D88:
    /* A7588 800B6D88 B1DB020C */  jal        func_800B6EC4
    /* A758C 800B6D8C 01000424 */   addiu     $a0, $zero, 0x1
    /* A7590 800B6D90 01000324 */  addiu      $v1, $zero, 0x1
    /* A7594 800B6D94 0E004314 */  bne        $v0, $v1, .L800B6DD0
    /* A7598 800B6D98 FFFF1026 */   addiu     $s0, $s0, -0x1
    /* A759C 800B6D9C 0B80043C */  lui        $a0, %hi(D_800B6DFC)
    /* A75A0 800B6DA0 03DC020C */  jal        func_800B700C
    /* A75A4 800B6DA4 FC6D8424 */   addiu     $a0, $a0, %lo(D_800B6DFC)
    /* A75A8 800B6DA8 0B80043C */  lui        $a0, %hi(D_800B6E24)
    /* A75AC 800B6DAC 08DC020C */  jal        func_800B7020
    /* A75B0 800B6DB0 246E8424 */   addiu     $a0, $a0, %lo(D_800B6E24)
    /* A75B4 800B6DB4 0B80043C */  lui        $a0, %hi(D_800B6E4C)
    /* A75B8 800B6DB8 44E5020C */  jal        func_800B9510
    /* A75BC 800B6DBC 4C6E8424 */   addiu     $a0, $a0, %lo(D_800B6E4C)
    /* A75C0 800B6DC0 49E5020C */  jal        func_800B9524
    /* A75C4 800B6DC4 21200000 */   addu      $a0, $zero, $zero
    /* A75C8 800B6DC8 7BDB0208 */  j          .L800B6DEC
    /* A75CC 800B6DCC 01000224 */   addiu     $v0, $zero, 0x1
  .L800B6DD0:
    /* A75D0 800B6DD0 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* A75D4 800B6DD4 ECFF0216 */  bne        $s0, $v0, .L800B6D88
    /* A75D8 800B6DD8 00000000 */   nop
    /* A75DC 800B6DDC 0180043C */  lui        $a0, %hi(D_8001515C)
    /* A75E0 800B6DE0 A6B5020C */  jal        func_800AD698
    /* A75E4 800B6DE4 5C518424 */   addiu     $a0, $a0, %lo(D_8001515C)
    /* A75E8 800B6DE8 21100000 */  addu       $v0, $zero, $zero
  .L800B6DEC:
    /* A75EC 800B6DEC 1400BF8F */  lw         $ra, 0x14($sp)
    /* A75F0 800B6DF0 1000B08F */  lw         $s0, 0x10($sp)
    /* A75F4 800B6DF4 0800E003 */  jr         $ra
    /* A75F8 800B6DF8 1800BD27 */   addiu     $sp, $sp, 0x18
  alabel D_800B6DFC
    /* A75FC 800B6DFC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A7600 800B6E00 1000BFAF */  sw         $ra, 0x10($sp)
    /* A7604 800B6E04 00F0043C */  lui        $a0, (0xF0000003 >> 16)
    /* A7608 800B6E08 03008434 */  ori        $a0, $a0, (0xF0000003 & 0xFFFF)
    /* A760C 800B6E0C 9EDB020C */  jal        func_800B6E78
    /* A7610 800B6E10 20000524 */   addiu     $a1, $zero, 0x20
    /* A7614 800B6E14 1000BF8F */  lw         $ra, 0x10($sp)
    /* A7618 800B6E18 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A761C 800B6E1C 0800E003 */  jr         $ra
    /* A7620 800B6E20 00000000 */   nop
  alabel D_800B6E24
    /* A7624 800B6E24 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A7628 800B6E28 1000BFAF */  sw         $ra, 0x10($sp)
    /* A762C 800B6E2C 00F0043C */  lui        $a0, (0xF0000003 >> 16)
    /* A7630 800B6E30 03008434 */  ori        $a0, $a0, (0xF0000003 & 0xFFFF)
    /* A7634 800B6E34 9EDB020C */  jal        func_800B6E78
    /* A7638 800B6E38 40000524 */   addiu     $a1, $zero, 0x40
    /* A763C 800B6E3C 1000BF8F */  lw         $ra, 0x10($sp)
    /* A7640 800B6E40 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A7644 800B6E44 0800E003 */  jr         $ra
    /* A7648 800B6E48 00000000 */   nop
  alabel D_800B6E4C
    /* A764C 800B6E4C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A7650 800B6E50 1000BFAF */  sw         $ra, 0x10($sp)
    /* A7654 800B6E54 00F0043C */  lui        $a0, (0xF0000003 >> 16)
    /* A7658 800B6E58 03008434 */  ori        $a0, $a0, (0xF0000003 & 0xFFFF)
    /* A765C 800B6E5C 9EDB020C */  jal        func_800B6E78
    /* A7660 800B6E60 40000524 */   addiu     $a1, $zero, 0x40
    /* A7664 800B6E64 1000BF8F */  lw         $ra, 0x10($sp)
    /* A7668 800B6E68 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A766C 800B6E6C 0800E003 */  jr         $ra
    /* A7670 800B6E70 00000000 */   nop
endlabel func_800B6D78
    /* A7674 800B6E74 00000000 */  nop
