nonmatching func_801C86B4, 0x208

glabel func_801C86B4
    /* 3F73C 801C86B4 A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* 3F740 801C86B8 02900434 */  ori        $a0, $zero, 0x9002
    /* 3F744 801C86BC 5000BFAF */  sw         $ra, 0x50($sp)
    /* 3F748 801C86C0 4C00B7AF */  sw         $s7, 0x4C($sp)
    /* 3F74C 801C86C4 4800B6AF */  sw         $s6, 0x48($sp)
    /* 3F750 801C86C8 4400B5AF */  sw         $s5, 0x44($sp)
    /* 3F754 801C86CC 4000B4AF */  sw         $s4, 0x40($sp)
    /* 3F758 801C86D0 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 3F75C 801C86D4 3800B2AF */  sw         $s2, 0x38($sp)
    /* 3F760 801C86D8 3400B1AF */  sw         $s1, 0x34($sp)
    /* 3F764 801C86DC 0174000C */  jal        func_8001D004
    /* 3F768 801C86E0 3000B0AF */   sw        $s0, 0x30($sp)
    /* 3F76C 801C86E4 03900434 */  ori        $a0, $zero, 0x9003
    /* 3F770 801C86E8 0174000C */  jal        func_8001D004
    /* 3F774 801C86EC 21804000 */   addu      $s0, $v0, $zero
    /* 3F778 801C86F0 21B04000 */  addu       $s6, $v0, $zero
    /* 3F77C 801C86F4 21880000 */  addu       $s1, $zero, $zero
    /* 3F780 801C86F8 5555173C */  lui        $s7, (0x55555556 >> 16)
    /* 3F784 801C86FC 5655F736 */  ori        $s7, $s7, (0x55555556 & 0xFFFF)
    /* 3F788 801C8700 1E80153C */  lui        $s5, %hi(D_801DADC0)
    /* 3F78C 801C8704 C0ADB526 */  addiu      $s5, $s5, %lo(D_801DADC0)
    /* 3F790 801C8708 21900002 */  addu       $s2, $s0, $zero
  .L801C870C:
    /* 3F794 801C870C 06004896 */  lhu        $t0, 0x6($s2)
    /* 3F798 801C8710 0000A392 */  lbu        $v1, 0x0($s5)
    /* 3F79C 801C8714 08004796 */  lhu        $a3, 0x8($s2)
    /* 3F7A0 801C8718 0E006014 */  bnez       $v1, .L801C8754
    /* 3F7A4 801C871C 40100300 */   sll       $v0, $v1, 1
    /* 3F7A8 801C8720 0300C28A */  lwl        $v0, 0x3($s6)
    /* 3F7AC 801C8724 0000C29A */  lwr        $v0, 0x0($s6)
    /* 3F7B0 801C8728 0700C38A */  lwl        $v1, 0x7($s6)
    /* 3F7B4 801C872C 0400C39A */  lwr        $v1, 0x4($s6)
    /* 3F7B8 801C8730 0B00C48A */  lwl        $a0, 0xB($s6)
    /* 3F7BC 801C8734 0800C49A */  lwr        $a0, 0x8($s6)
    /* 3F7C0 801C8738 030042AA */  swl        $v0, 0x3($s2)
    /* 3F7C4 801C873C 000042BA */  swr        $v0, 0x0($s2)
    /* 3F7C8 801C8740 070043AA */  swl        $v1, 0x7($s2)
    /* 3F7CC 801C8744 040043BA */  swr        $v1, 0x4($s2)
    /* 3F7D0 801C8748 0B0044AA */  swl        $a0, 0xB($s2)
    /* 3F7D4 801C874C E4210708 */  j          .L801C8790
    /* 3F7D8 801C8750 080044BA */   swr       $a0, 0x8($s2)
  .L801C8754:
    /* 3F7DC 801C8754 21104300 */  addu       $v0, $v0, $v1
    /* 3F7E0 801C8758 80100200 */  sll        $v0, $v0, 2
    /* 3F7E4 801C875C 21105600 */  addu       $v0, $v0, $s6
    /* 3F7E8 801C8760 F7FF4388 */  lwl        $v1, -0x9($v0)
    /* 3F7EC 801C8764 F4FF4398 */  lwr        $v1, -0xC($v0)
    /* 3F7F0 801C8768 FBFF4488 */  lwl        $a0, -0x5($v0)
    /* 3F7F4 801C876C F8FF4498 */  lwr        $a0, -0x8($v0)
    /* 3F7F8 801C8770 FFFF4588 */  lwl        $a1, -0x1($v0)
    /* 3F7FC 801C8774 FCFF4598 */  lwr        $a1, -0x4($v0)
    /* 3F800 801C8778 030043AA */  swl        $v1, 0x3($s2)
    /* 3F804 801C877C 000043BA */  swr        $v1, 0x0($s2)
    /* 3F808 801C8780 070044AA */  swl        $a0, 0x7($s2)
    /* 3F80C 801C8784 040044BA */  swr        $a0, 0x4($s2)
    /* 3F810 801C8788 0B0045AA */  swl        $a1, 0xB($s2)
    /* 3F814 801C878C 080045BA */  swr        $a1, 0x8($s2)
  .L801C8790:
    /* 3F818 801C8790 060048A6 */  sh         $t0, 0x6($s2)
    /* 3F81C 801C8794 080047A6 */  sh         $a3, 0x8($s2)
    /* 3F820 801C8798 0000A292 */  lbu        $v0, 0x0($s5)
    /* 3F824 801C879C 00000000 */  nop
    /* 3F828 801C87A0 2F004018 */  blez       $v0, .L801C8860
    /* 3F82C 801C87A4 21980000 */   addu      $s3, $zero, $zero
    /* 3F830 801C87A8 18003702 */  mult       $s1, $s7
    /* 3F834 801C87AC 21800000 */  addu       $s0, $zero, $zero
    /* 3F838 801C87B0 C31F1100 */  sra        $v1, $s1, 31
    /* 3F83C 801C87B4 10500000 */  mfhi       $t2
    /* 3F840 801C87B8 23184301 */  subu       $v1, $t2, $v1
    /* 3F844 801C87BC 40100300 */  sll        $v0, $v1, 1
    /* 3F848 801C87C0 21104300 */  addu       $v0, $v0, $v1
    /* 3F84C 801C87C4 23A02202 */  subu       $s4, $s1, $v0
    /* 3F850 801C87C8 0300222A */  slti       $v0, $s1, 0x3
  .L801C87CC:
    /* 3F854 801C87CC 02004014 */  bnez       $v0, .L801C87D8
    /* 3F858 801C87D0 FCFF0526 */   addiu     $a1, $s0, -0x4
    /* 3F85C 801C87D4 5D000526 */  addiu      $a1, $s0, 0x5D
  .L801C87D8:
    /* 3F860 801C87D8 40101400 */  sll        $v0, $s4, 1
    /* 3F864 801C87DC 21105400 */  addu       $v0, $v0, $s4
    /* 3F868 801C87E0 80100200 */  sll        $v0, $v0, 2
    /* 3F86C 801C87E4 44004924 */  addiu      $t1, $v0, 0x44
    /* 3F870 801C87E8 08000224 */  addiu      $v0, $zero, 0x8
    /* 3F874 801C87EC 02002216 */  bne        $s1, $v0, .L801C87F8
    /* 3F878 801C87F0 03000824 */   addiu     $t0, $zero, 0x3
    /* 3F87C 801C87F4 04000824 */  addiu      $t0, $zero, 0x4
  .L801C87F8:
    /* 3F880 801C87F8 21200000 */  addu       $a0, $zero, $zero
    /* 3F884 801C87FC 1980013C */  lui        $at, %hi(D_8018D8F0)
    /* 3F888 801C8800 21083000 */  addu       $at, $at, $s0
    /* 3F88C 801C8804 F0D82390 */  lbu        $v1, %lo(D_8018D8F0)($at)
    /* 3F890 801C8808 1980013C */  lui        $at, %hi(D_8018D8F1)
    /* 3F894 801C880C 21083000 */  addu       $at, $at, $s0
    /* 3F898 801C8810 F1D82690 */  lbu        $a2, %lo(D_8018D8F1)($at)
    /* 3F89C 801C8814 1980013C */  lui        $at, %hi(D_8018D8F2)
    /* 3F8A0 801C8818 21083000 */  addu       $at, $at, $s0
    /* 3F8A4 801C881C F2D82790 */  lbu        $a3, %lo(D_8018D8F2)($at)
    /* 3F8A8 801C8820 03001026 */  addiu      $s0, $s0, 0x3
    /* 3F8AC 801C8824 03000224 */  addiu      $v0, $zero, 0x3
    /* 3F8B0 801C8828 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3F8B4 801C882C 01000224 */  addiu      $v0, $zero, 0x1
    /* 3F8B8 801C8830 2000A2AF */  sw         $v0, 0x20($sp)
    /* 3F8BC 801C8834 1800A6AF */  sw         $a2, 0x18($sp)
    /* 3F8C0 801C8838 21302001 */  addu       $a2, $t1, $zero
    /* 3F8C4 801C883C 1C00A7AF */  sw         $a3, 0x1C($sp)
    /* 3F8C8 801C8840 21380001 */  addu       $a3, $t0, $zero
    /* 3F8CC 801C8844 005A060C */  jal        func_80196800
    /* 3F8D0 801C8848 1400A3AF */   sw        $v1, 0x14($sp)
    /* 3F8D4 801C884C 0000A292 */  lbu        $v0, 0x0($s5)
    /* 3F8D8 801C8850 01007326 */  addiu      $s3, $s3, 0x1
    /* 3F8DC 801C8854 2A106202 */  slt        $v0, $s3, $v0
    /* 3F8E0 801C8858 DCFF4014 */  bnez       $v0, .L801C87CC
    /* 3F8E4 801C885C 0300222A */   slti      $v0, $s1, 0x3
  .L801C8860:
    /* 3F8E8 801C8860 05000424 */  addiu      $a0, $zero, 0x5
    /* 3F8EC 801C8864 0100B526 */  addiu      $s5, $s5, 0x1
    /* 3F8F0 801C8868 0C005226 */  addiu      $s2, $s2, 0xC
    /* 3F8F4 801C886C 1E80053C */  lui        $a1, %hi(D_801DADC6)
    /* 3F8F8 801C8870 C6ADA590 */  lbu        $a1, %lo(D_801DADC6)($a1)
    /* 3F8FC 801C8874 01003126 */  addiu      $s1, $s1, 0x1
    /* 3F900 801C8878 AABE010C */  jal        func_8006FAA8
    /* 3F904 801C887C 0090A534 */   ori       $a1, $a1, 0x9000
    /* 3F908 801C8880 0600222A */  slti       $v0, $s1, 0x6
    /* 3F90C 801C8884 A1FF4014 */  bnez       $v0, .L801C870C
    /* 3F910 801C8888 00000000 */   nop
    /* 3F914 801C888C 5000BF8F */  lw         $ra, 0x50($sp)
    /* 3F918 801C8890 4C00B78F */  lw         $s7, 0x4C($sp)
    /* 3F91C 801C8894 4800B68F */  lw         $s6, 0x48($sp)
    /* 3F920 801C8898 4400B58F */  lw         $s5, 0x44($sp)
    /* 3F924 801C889C 4000B48F */  lw         $s4, 0x40($sp)
    /* 3F928 801C88A0 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 3F92C 801C88A4 3800B28F */  lw         $s2, 0x38($sp)
    /* 3F930 801C88A8 3400B18F */  lw         $s1, 0x34($sp)
    /* 3F934 801C88AC 3000B08F */  lw         $s0, 0x30($sp)
    /* 3F938 801C88B0 5800BD27 */  addiu      $sp, $sp, 0x58
    /* 3F93C 801C88B4 0800E003 */  jr         $ra
    /* 3F940 801C88B8 00000000 */   nop
endlabel func_801C86B4
