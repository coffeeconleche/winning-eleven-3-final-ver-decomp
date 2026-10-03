nonmatching func_800AD7F8, 0x3C

glabel func_800AD7F8
    /* 9DFF8 800AD7F8 21408000 */  addu       $t0, $a0, $zero
    /* 9DFFC 800AD7FC 2148A000 */  addu       $t1, $a1, $zero
    /* 9E000 800AD800 0A00C010 */  beqz       $a2, .L800AD82C
    /* 9E004 800AD804 21380000 */   addu      $a3, $zero, $zero
  .L800AD808:
    /* 9E008 800AD808 21180701 */  addu       $v1, $t0, $a3
    /* 9E00C 800AD80C 21202701 */  addu       $a0, $t1, $a3
    /* 9E010 800AD810 00006590 */  lbu        $a1, 0x0($v1)
    /* 9E014 800AD814 00008290 */  lbu        $v0, 0x0($a0)
    /* 9E018 800AD818 0100E724 */  addiu      $a3, $a3, 0x1
    /* 9E01C 800AD81C 000062A0 */  sb         $v0, 0x0($v1)
    /* 9E020 800AD820 2B10E600 */  sltu       $v0, $a3, $a2
    /* 9E024 800AD824 F8FF4014 */  bnez       $v0, .L800AD808
    /* 9E028 800AD828 000085A0 */   sb        $a1, 0x0($a0)
  .L800AD82C:
    /* 9E02C 800AD82C 0800E003 */  jr         $ra
    /* 9E030 800AD830 00000000 */   nop
endlabel func_800AD7F8
    /* 9E034 800AD834 00000000 */  nop
