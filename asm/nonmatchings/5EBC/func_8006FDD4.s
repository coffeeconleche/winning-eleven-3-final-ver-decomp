nonmatching func_8006FDD4, 0xD4

glabel func_8006FDD4
    /* 605D4 8006FDD4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 605D8 8006FDD8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 605DC 8006FDDC 1080063C */  lui        $a2, %hi(D_800FF748)
    /* 605E0 8006FDE0 48F7C624 */  addiu      $a2, $a2, %lo(D_800FF748)
    /* 605E4 8006FDE4 2128C000 */  addu       $a1, $a2, $zero
    /* 605E8 8006FDE8 21200000 */  addu       $a0, $zero, $zero
  .L8006FDEC:
    /* 605EC 8006FDEC FF008330 */  andi       $v1, $a0, 0xFF
    /* 605F0 8006FDF0 0000A290 */  lbu        $v0, 0x0($a1)
    /* 605F4 8006FDF4 01008424 */  addiu      $a0, $a0, 0x1
    /* 605F8 8006FDF8 0E80013C */  lui        $at, %hi(D_800E6D00)
    /* 605FC 8006FDFC 21082300 */  addu       $at, $at, $v1
    /* 60600 8006FE00 006D22A0 */  sb         $v0, %lo(D_800E6D00)($at)
    /* 60604 8006FE04 0000A0A0 */  sb         $zero, 0x0($a1)
    /* 60608 8006FE08 FF008230 */  andi       $v0, $a0, 0xFF
    /* 6060C 8006FE0C 1800422C */  sltiu      $v0, $v0, 0x18
    /* 60610 8006FE10 F6FF4014 */  bnez       $v0, .L8006FDEC
    /* 60614 8006FE14 E803A524 */   addiu     $a1, $a1, 0x3E8
    /* 60618 8006FE18 D066C524 */  addiu      $a1, $a2, 0x66D0
    /* 6061C 8006FE1C 21200000 */  addu       $a0, $zero, $zero
  .L8006FE20:
    /* 60620 8006FE20 FF008330 */  andi       $v1, $a0, 0xFF
    /* 60624 8006FE24 0000A290 */  lbu        $v0, 0x0($a1)
    /* 60628 8006FE28 01008424 */  addiu      $a0, $a0, 0x1
    /* 6062C 8006FE2C 0E80013C */  lui        $at, %hi(D_800E6D40)
    /* 60630 8006FE30 21082300 */  addu       $at, $at, $v1
    /* 60634 8006FE34 406D22A0 */  sb         $v0, %lo(D_800E6D40)($at)
    /* 60638 8006FE38 0000A0A0 */  sb         $zero, 0x0($a1)
    /* 6063C 8006FE3C FF008230 */  andi       $v0, $a0, 0xFF
    /* 60640 8006FE40 1200422C */  sltiu      $v0, $v0, 0x12
    /* 60644 8006FE44 F6FF4014 */  bnez       $v0, .L8006FE20
    /* 60648 8006FE48 9000A524 */   addiu     $a1, $a1, 0x90
    /* 6064C 8006FE4C 21200000 */  addu       $a0, $zero, $zero
    /* 60650 8006FE50 C45DC524 */  addiu      $a1, $a2, 0x5DC4
  .L8006FE54:
    /* 60654 8006FE54 FF008330 */  andi       $v1, $a0, 0xFF
    /* 60658 8006FE58 2800622C */  sltiu      $v0, $v1, 0x28
    /* 6065C 8006FE5C 05004014 */  bnez       $v0, .L8006FE74
    /* 60660 8006FE60 00000000 */   nop
    /* 60664 8006FE64 0000A290 */  lbu        $v0, 0x0($a1)
    /* 60668 8006FE68 0E80013C */  lui        $at, %hi(D_800E6CF8)
    /* 6066C 8006FE6C 21082300 */  addu       $at, $at, $v1
    /* 60670 8006FE70 F86C22A0 */  sb         $v0, %lo(D_800E6CF8)($at)
  .L8006FE74:
    /* 60674 8006FE74 0000A0A0 */  sb         $zero, 0x0($a1)
    /* 60678 8006FE78 01008424 */  addiu      $a0, $a0, 0x1
    /* 6067C 8006FE7C FF008230 */  andi       $v0, $a0, 0xFF
    /* 60680 8006FE80 3A00422C */  sltiu      $v0, $v0, 0x3A
    /* 60684 8006FE84 F3FF4014 */  bnez       $v0, .L8006FE54
    /* 60688 8006FE88 2800A524 */   addiu     $a1, $a1, 0x28
    /* 6068C 8006FE8C 21200000 */  addu       $a0, $zero, $zero
    /* 60690 8006FE90 B03E010C */  jal        func_8004FAC0
    /* 60694 8006FE94 21280000 */   addu      $a1, $zero, $zero
    /* 60698 8006FE98 1000BF8F */  lw         $ra, 0x10($sp)
    /* 6069C 8006FE9C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 606A0 8006FEA0 0800E003 */  jr         $ra
    /* 606A4 8006FEA4 00000000 */   nop
endlabel func_8006FDD4
