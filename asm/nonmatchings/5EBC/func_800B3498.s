nonmatching func_800B3498, 0xD8

glabel func_800B3498
    /* A3C98 800B3498 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A3C9C 800B349C 21388000 */  addu       $a3, $a0, $zero
    /* A3CA0 800B34A0 2140A000 */  addu       $t0, $a1, $zero
    /* A3CA4 800B34A4 1000BFAF */  sw         $ra, 0x10($sp)
    /* A3CA8 800B34A8 0000E58C */  lw         $a1, 0x0($a3)
    /* A3CAC 800B34AC 00000000 */  nop
    /* A3CB0 800B34B0 2B00A004 */  bltz       $a1, .L800B3560
    /* A3CB4 800B34B4 00E1033C */   lui       $v1, (0xE1000200 >> 16)
    /* A3CB8 800B34B8 00026334 */  ori        $v1, $v1, (0xE1000200 & 0xFFFF)
    /* A3CBC 800B34BC C3150500 */  sra        $v0, $a1, 23
    /* A3CC0 800B34C0 60004230 */  andi       $v0, $v0, 0x60
    /* A3CC4 800B34C4 0F80043C */  lui        $a0, %hi(D_800EF8A8)
    /* A3CC8 800B34C8 A8F8848C */  lw         $a0, %lo(D_800EF8A8)($a0)
    /* A3CCC 800B34CC 25104300 */  or         $v0, $v0, $v1
    /* A3CD0 800B34D0 040082AC */  sw         $v0, 0x4($a0)
    /* A3CD4 800B34D4 0C00E290 */  lbu        $v0, 0xC($a3)
    /* A3CD8 800B34D8 00000000 */  nop
    /* A3CDC 800B34DC 080082A0 */  sb         $v0, 0x8($a0)
    /* A3CE0 800B34E0 0D00E290 */  lbu        $v0, 0xD($a3)
    /* A3CE4 800B34E4 00000000 */  nop
    /* A3CE8 800B34E8 090082A0 */  sb         $v0, 0x9($a0)
    /* A3CEC 800B34EC 43170500 */  sra        $v0, $a1, 29
    /* A3CF0 800B34F0 02004230 */  andi       $v0, $v0, 0x2
    /* A3CF4 800B34F4 0E00E390 */  lbu        $v1, 0xE($a3)
    /* A3CF8 800B34F8 40004234 */  ori        $v0, $v0, 0x40
    /* A3CFC 800B34FC 0B0082A0 */  sb         $v0, 0xB($a0)
    /* A3D00 800B3500 0A0083A0 */  sb         $v1, 0xA($a0)
    /* A3D04 800B3504 0400E294 */  lhu        $v0, 0x4($a3)
    /* A3D08 800B3508 0F80053C */  lui        $a1, %hi(D_800F1070)
    /* A3D0C 800B350C 7010A594 */  lhu        $a1, %lo(D_800F1070)($a1)
    /* A3D10 800B3510 0F80033C */  lui        $v1, %hi(D_800F1072)
    /* A3D14 800B3514 72106394 */  lhu        $v1, %lo(D_800F1072)($v1)
    /* A3D18 800B3518 21104500 */  addu       $v0, $v0, $a1
    /* A3D1C 800B351C 0C0082A4 */  sh         $v0, 0xC($a0)
    /* A3D20 800B3520 0600E294 */  lhu        $v0, 0x6($a3)
    /* A3D24 800B3524 00000000 */  nop
    /* A3D28 800B3528 21104300 */  addu       $v0, $v0, $v1
    /* A3D2C 800B352C 0E0082A4 */  sh         $v0, 0xE($a0)
    /* A3D30 800B3530 0800E294 */  lhu        $v0, 0x8($a3)
    /* A3D34 800B3534 FFFFC630 */  andi       $a2, $a2, 0xFFFF
    /* A3D38 800B3538 21104500 */  addu       $v0, $v0, $a1
    /* A3D3C 800B353C 21280001 */  addu       $a1, $t0, $zero
    /* A3D40 800B3540 100082A4 */  sh         $v0, 0x10($a0)
    /* A3D44 800B3544 0A00E294 */  lhu        $v0, 0xA($a3)
    /* A3D48 800B3548 04000724 */  addiu      $a3, $zero, 0x4
    /* A3D4C 800B354C 21104300 */  addu       $v0, $v0, $v1
    /* A3D50 800B3550 5ECD020C */  jal        func_800B3578
    /* A3D54 800B3554 120082A4 */   sh        $v0, 0x12($a0)
    /* A3D58 800B3558 0F80013C */  lui        $at, %hi(D_800EF8A8)
    /* A3D5C 800B355C A8F822AC */  sw         $v0, %lo(D_800EF8A8)($at)
  .L800B3560:
    /* A3D60 800B3560 1000BF8F */  lw         $ra, 0x10($sp)
    /* A3D64 800B3564 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A3D68 800B3568 0800E003 */  jr         $ra
    /* A3D6C 800B356C 00000000 */   nop
endlabel func_800B3498
    /* A3D70 800B3570 00000000 */  nop
    /* A3D74 800B3574 00000000 */  nop
