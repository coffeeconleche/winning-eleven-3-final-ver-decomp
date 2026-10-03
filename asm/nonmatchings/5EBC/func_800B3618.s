nonmatching func_800B3618, 0x108

glabel func_800B3618
    /* A3E18 800B3618 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A3E1C 800B361C 21388000 */  addu       $a3, $a0, $zero
    /* A3E20 800B3620 1000BFAF */  sw         $ra, 0x10($sp)
    /* A3E24 800B3624 0000E88C */  lw         $t0, 0x0($a3)
    /* A3E28 800B3628 00000000 */  nop
    /* A3E2C 800B362C 38000005 */  bltz       $t0, .L800B3710
    /* A3E30 800B3630 00E1033C */   lui       $v1, (0xE1000200 >> 16)
    /* A3E34 800B3634 00026334 */  ori        $v1, $v1, (0xE1000200 & 0xFFFF)
    /* A3E38 800B3638 C3150800 */  sra        $v0, $t0, 23
    /* A3E3C 800B363C 60004230 */  andi       $v0, $v0, 0x60
    /* A3E40 800B3640 0F80043C */  lui        $a0, %hi(D_800EF8A8)
    /* A3E44 800B3644 A8F8848C */  lw         $a0, %lo(D_800EF8A8)($a0)
    /* A3E48 800B3648 25104300 */  or         $v0, $v0, $v1
    /* A3E4C 800B364C 040082AC */  sw         $v0, 0x4($a0)
    /* A3E50 800B3650 0C00E290 */  lbu        $v0, 0xC($a3)
    /* A3E54 800B3654 00000000 */  nop
    /* A3E58 800B3658 080082A0 */  sb         $v0, 0x8($a0)
    /* A3E5C 800B365C 0D00E290 */  lbu        $v0, 0xD($a3)
    /* A3E60 800B3660 00000000 */  nop
    /* A3E64 800B3664 090082A0 */  sb         $v0, 0x9($a0)
    /* A3E68 800B3668 43170800 */  sra        $v0, $t0, 29
    /* A3E6C 800B366C 02004230 */  andi       $v0, $v0, 0x2
    /* A3E70 800B3670 0E00E390 */  lbu        $v1, 0xE($a3)
    /* A3E74 800B3674 50004234 */  ori        $v0, $v0, 0x50
    /* A3E78 800B3678 0B0082A0 */  sb         $v0, 0xB($a0)
    /* A3E7C 800B367C 0A0083A0 */  sb         $v1, 0xA($a0)
    /* A3E80 800B3680 0400E294 */  lhu        $v0, 0x4($a3)
    /* A3E84 800B3684 0F80033C */  lui        $v1, %hi(D_800F1070)
    /* A3E88 800B3688 70106394 */  lhu        $v1, %lo(D_800F1070)($v1)
    /* A3E8C 800B368C 00000000 */  nop
    /* A3E90 800B3690 21104300 */  addu       $v0, $v0, $v1
    /* A3E94 800B3694 0C0082A4 */  sh         $v0, 0xC($a0)
    /* A3E98 800B3698 0600E294 */  lhu        $v0, 0x6($a3)
    /* A3E9C 800B369C 0F80033C */  lui        $v1, %hi(D_800F1072)
    /* A3EA0 800B36A0 72106394 */  lhu        $v1, %lo(D_800F1072)($v1)
    /* A3EA4 800B36A4 00000000 */  nop
    /* A3EA8 800B36A8 21104300 */  addu       $v0, $v0, $v1
    /* A3EAC 800B36AC 0E0082A4 */  sh         $v0, 0xE($a0)
    /* A3EB0 800B36B0 0F00E290 */  lbu        $v0, 0xF($a3)
    /* A3EB4 800B36B4 00000000 */  nop
    /* A3EB8 800B36B8 100082A0 */  sb         $v0, 0x10($a0)
    /* A3EBC 800B36BC 1000E290 */  lbu        $v0, 0x10($a3)
    /* A3EC0 800B36C0 00000000 */  nop
    /* A3EC4 800B36C4 110082A0 */  sb         $v0, 0x11($a0)
    /* A3EC8 800B36C8 1100E290 */  lbu        $v0, 0x11($a3)
    /* A3ECC 800B36CC 00000000 */  nop
    /* A3ED0 800B36D0 120082A0 */  sb         $v0, 0x12($a0)
    /* A3ED4 800B36D4 0800E294 */  lhu        $v0, 0x8($a3)
    /* A3ED8 800B36D8 0F80033C */  lui        $v1, %hi(D_800F1070)
    /* A3EDC 800B36DC 70106394 */  lhu        $v1, %lo(D_800F1070)($v1)
    /* A3EE0 800B36E0 FFFFC630 */  andi       $a2, $a2, 0xFFFF
    /* A3EE4 800B36E4 21104300 */  addu       $v0, $v0, $v1
    /* A3EE8 800B36E8 140082A4 */  sh         $v0, 0x14($a0)
    /* A3EEC 800B36EC 0A00E294 */  lhu        $v0, 0xA($a3)
    /* A3EF0 800B36F0 0F80033C */  lui        $v1, %hi(D_800F1072)
    /* A3EF4 800B36F4 72106394 */  lhu        $v1, %lo(D_800F1072)($v1)
    /* A3EF8 800B36F8 05000724 */  addiu      $a3, $zero, 0x5
    /* A3EFC 800B36FC 21104300 */  addu       $v0, $v0, $v1
    /* A3F00 800B3700 5ECD020C */  jal        func_800B3578
    /* A3F04 800B3704 160082A4 */   sh        $v0, 0x16($a0)
    /* A3F08 800B3708 0F80013C */  lui        $at, %hi(D_800EF8A8)
    /* A3F0C 800B370C A8F822AC */  sw         $v0, %lo(D_800EF8A8)($at)
  .L800B3710:
    /* A3F10 800B3710 1000BF8F */  lw         $ra, 0x10($sp)
    /* A3F14 800B3714 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A3F18 800B3718 0800E003 */  jr         $ra
    /* A3F1C 800B371C 00000000 */   nop
endlabel func_800B3618
    /* A3F20 800B3720 00000000 */  nop
    /* A3F24 800B3724 00000000 */  nop
