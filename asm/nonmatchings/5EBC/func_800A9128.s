nonmatching func_800A9128, 0xBC

glabel func_800A9128
    /* 99928 800A9128 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 9992C 800A912C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 99930 800A9130 21808000 */  addu       $s0, $a0, $zero
    /* 99934 800A9134 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 99938 800A9138 2188A000 */  addu       $s1, $a1, $zero
    /* 9993C 800A913C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 99940 800A9140 2190C000 */  addu       $s2, $a2, $zero
    /* 99944 800A9144 2400BFAF */  sw         $ra, 0x24($sp)
    /* 99948 800A9148 21200002 */  addu       $a0, $s0, $zero
  .L800A914C:
    /* 9994C 800A914C 25DD020C */  jal        func_800B7494
    /* 99950 800A9150 1000A527 */   addiu     $a1, $sp, 0x10
    /* 99954 800A9154 02000434 */  ori        $a0, $zero, 0x2
    /* 99958 800A9158 1000A527 */  addiu      $a1, $sp, 0x10
    /* 9995C 800A915C A9DC020C */  jal        func_800B72A4
    /* 99960 800A9160 21300000 */   addu      $a2, $zero, $zero
    /* 99964 800A9164 21200000 */  addu       $a0, $zero, $zero
    /* 99968 800A9168 F3DB020C */  jal        func_800B6FCC
    /* 9996C 800A916C 21280000 */   addu      $a1, $zero, $zero
    /* 99970 800A9170 05000334 */  ori        $v1, $zero, 0x5
    /* 99974 800A9174 0A004310 */  beq        $v0, $v1, .L800A91A0
    /* 99978 800A9178 21202002 */   addu      $a0, $s1, $zero
    /* 9997C 800A917C 21284002 */  addu       $a1, $s2, $zero
    /* 99980 800A9180 D2E4020C */  jal        func_800B9348
    /* 99984 800A9184 80000634 */   ori       $a2, $zero, 0x80
    /* 99988 800A9188 21200000 */  addu       $a0, $zero, $zero
    /* 9998C 800A918C 12E5020C */  jal        func_800B9448
    /* 99990 800A9190 21280000 */   addu      $a1, $zero, $zero
    /* 99994 800A9194 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 99998 800A9198 0B004314 */  bne        $v0, $v1, .L800A91C8
    /* 9999C 800A919C 21100000 */   addu      $v0, $zero, $zero
  .L800A91A0:
    /* 999A0 800A91A0 01000434 */  ori        $a0, $zero, 0x1
    /* 999A4 800A91A4 21280000 */  addu       $a1, $zero, $zero
    /* 999A8 800A91A8 A9DC020C */  jal        func_800B72A4
    /* 999AC 800A91AC 21300000 */   addu      $a2, $zero, $zero
    /* 999B0 800A91B0 01000434 */  ori        $a0, $zero, 0x1
    /* 999B4 800A91B4 21280000 */  addu       $a1, $zero, $zero
    /* 999B8 800A91B8 A9DC020C */  jal        func_800B72A4
    /* 999BC 800A91BC 21300000 */   addu      $a2, $zero, $zero
    /* 999C0 800A91C0 53A40208 */  j          .L800A914C
    /* 999C4 800A91C4 21200002 */   addu      $a0, $s0, $zero
  .L800A91C8:
    /* 999C8 800A91C8 2400BF8F */  lw         $ra, 0x24($sp)
    /* 999CC 800A91CC 2000B28F */  lw         $s2, 0x20($sp)
    /* 999D0 800A91D0 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 999D4 800A91D4 1800B08F */  lw         $s0, 0x18($sp)
    /* 999D8 800A91D8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 999DC 800A91DC 0800E003 */  jr         $ra
    /* 999E0 800A91E0 00000000 */   nop
endlabel func_800A9128
