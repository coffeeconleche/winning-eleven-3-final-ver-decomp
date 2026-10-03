nonmatching func_800A9640, 0x84

glabel func_800A9640
    /* 99E40 800A9640 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 99E44 800A9644 1400B1AF */  sw         $s1, 0x14($sp)
    /* 99E48 800A9648 02001134 */  ori        $s1, $zero, 0x2
    /* 99E4C 800A964C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 99E50 800A9650 1000B0AF */  sw         $s0, 0x10($sp)
    /* 99E54 800A9654 01000434 */  ori        $a0, $zero, 0x1
  .L800A9658:
    /* 99E58 800A9658 F3DB020C */  jal        func_800B6FCC
    /* 99E5C 800A965C 21280000 */   addu      $a1, $zero, $zero
    /* 99E60 800A9660 21804000 */  addu       $s0, $v0, $zero
    /* 99E64 800A9664 0C001116 */  bne        $s0, $s1, .L800A9698
    /* 99E68 800A9668 01000434 */   ori       $a0, $zero, 0x1
    /* 99E6C 800A966C 09000434 */  ori        $a0, $zero, 0x9
    /* 99E70 800A9670 21280000 */  addu       $a1, $zero, $zero
    /* 99E74 800A9674 A9DC020C */  jal        func_800B72A4
    /* 99E78 800A9678 21300000 */   addu      $a2, $zero, $zero
    /* 99E7C 800A967C 01000434 */  ori        $a0, $zero, 0x1
    /* 99E80 800A9680 F3DB020C */  jal        func_800B6FCC
    /* 99E84 800A9684 21280000 */   addu      $a1, $zero, $zero
    /* 99E88 800A9688 08005010 */  beq        $v0, $s0, .L800A96AC
    /* 99E8C 800A968C 01000434 */   ori       $a0, $zero, 0x1
    /* 99E90 800A9690 96A50208 */  j          .L800A9658
    /* 99E94 800A9694 00000000 */   nop
  .L800A9698:
    /* 99E98 800A9698 21280000 */  addu       $a1, $zero, $zero
    /* 99E9C 800A969C 0DDC020C */  jal        func_800B7034
    /* 99EA0 800A96A0 21300000 */   addu      $a2, $zero, $zero
    /* 99EA4 800A96A4 96A50208 */  j          .L800A9658
    /* 99EA8 800A96A8 01000434 */   ori       $a0, $zero, 0x1
  .L800A96AC:
    /* 99EAC 800A96AC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 99EB0 800A96B0 1400B18F */  lw         $s1, 0x14($sp)
    /* 99EB4 800A96B4 1000B08F */  lw         $s0, 0x10($sp)
    /* 99EB8 800A96B8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 99EBC 800A96BC 0800E003 */  jr         $ra
    /* 99EC0 800A96C0 00000000 */   nop
endlabel func_800A9640
