nonmatching func_800B3728, 0xD8

glabel func_800B3728
    /* A3F28 800B3728 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A3F2C 800B372C 21388000 */  addu       $a3, $a0, $zero
    /* A3F30 800B3730 1000BFAF */  sw         $ra, 0x10($sp)
    /* A3F34 800B3734 0000E88C */  lw         $t0, 0x0($a3)
    /* A3F38 800B3738 00000000 */  nop
    /* A3F3C 800B373C 2C000005 */  bltz       $t0, .L800B37F0
    /* A3F40 800B3740 00E1043C */   lui       $a0, (0xE1000200 >> 16)
    /* A3F44 800B3744 00028434 */  ori        $a0, $a0, (0xE1000200 & 0xFFFF)
    /* A3F48 800B3748 431C0800 */  sra        $v1, $t0, 17
    /* A3F4C 800B374C 80016330 */  andi       $v1, $v1, 0x180
    /* A3F50 800B3750 C3150800 */  sra        $v0, $t0, 23
    /* A3F54 800B3754 60004230 */  andi       $v0, $v0, 0x60
    /* A3F58 800B3758 25104400 */  or         $v0, $v0, $a0
    /* A3F5C 800B375C 0F80043C */  lui        $a0, %hi(D_800EF8A8)
    /* A3F60 800B3760 A8F8848C */  lw         $a0, %lo(D_800EF8A8)($a0)
    /* A3F64 800B3764 25186200 */  or         $v1, $v1, $v0
    /* A3F68 800B3768 040083AC */  sw         $v1, 0x4($a0)
    /* A3F6C 800B376C 0C00E290 */  lbu        $v0, 0xC($a3)
    /* A3F70 800B3770 00000000 */  nop
    /* A3F74 800B3774 080082A0 */  sb         $v0, 0x8($a0)
    /* A3F78 800B3778 0D00E290 */  lbu        $v0, 0xD($a3)
    /* A3F7C 800B377C 00000000 */  nop
    /* A3F80 800B3780 090082A0 */  sb         $v0, 0x9($a0)
    /* A3F84 800B3784 43170800 */  sra        $v0, $t0, 29
    /* A3F88 800B3788 02004230 */  andi       $v0, $v0, 0x2
    /* A3F8C 800B378C 0E00E390 */  lbu        $v1, 0xE($a3)
    /* A3F90 800B3790 60004234 */  ori        $v0, $v0, 0x60
    /* A3F94 800B3794 0B0082A0 */  sb         $v0, 0xB($a0)
    /* A3F98 800B3798 0A0083A0 */  sb         $v1, 0xA($a0)
    /* A3F9C 800B379C 0400E294 */  lhu        $v0, 0x4($a3)
    /* A3FA0 800B37A0 0F80033C */  lui        $v1, %hi(D_800F1070)
    /* A3FA4 800B37A4 70106394 */  lhu        $v1, %lo(D_800F1070)($v1)
    /* A3FA8 800B37A8 00000000 */  nop
    /* A3FAC 800B37AC 21104300 */  addu       $v0, $v0, $v1
    /* A3FB0 800B37B0 0C0082A4 */  sh         $v0, 0xC($a0)
    /* A3FB4 800B37B4 0600E294 */  lhu        $v0, 0x6($a3)
    /* A3FB8 800B37B8 0F80033C */  lui        $v1, %hi(D_800F1072)
    /* A3FBC 800B37BC 72106394 */  lhu        $v1, %lo(D_800F1072)($v1)
    /* A3FC0 800B37C0 00000000 */  nop
    /* A3FC4 800B37C4 21104300 */  addu       $v0, $v0, $v1
    /* A3FC8 800B37C8 0E0082A4 */  sh         $v0, 0xE($a0)
    /* A3FCC 800B37CC 0800E294 */  lhu        $v0, 0x8($a3)
    /* A3FD0 800B37D0 FFFFC630 */  andi       $a2, $a2, 0xFFFF
    /* A3FD4 800B37D4 100082A4 */  sh         $v0, 0x10($a0)
    /* A3FD8 800B37D8 0A00E294 */  lhu        $v0, 0xA($a3)
    /* A3FDC 800B37DC 04000724 */  addiu      $a3, $zero, 0x4
    /* A3FE0 800B37E0 5ECD020C */  jal        func_800B3578
    /* A3FE4 800B37E4 120082A4 */   sh        $v0, 0x12($a0)
    /* A3FE8 800B37E8 0F80013C */  lui        $at, %hi(D_800EF8A8)
    /* A3FEC 800B37EC A8F822AC */  sw         $v0, %lo(D_800EF8A8)($at)
  .L800B37F0:
    /* A3FF0 800B37F0 1000BF8F */  lw         $ra, 0x10($sp)
    /* A3FF4 800B37F4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A3FF8 800B37F8 0800E003 */  jr         $ra
    /* A3FFC 800B37FC 00000000 */   nop
endlabel func_800B3728
    /* A4000 800B3800 00000000 */  nop
    /* A4004 800B3804 00000000 */  nop
