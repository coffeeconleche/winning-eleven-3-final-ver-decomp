nonmatching func_801AED90, 0xF0

glabel func_801AED90
    /* 25E18 801AED90 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 25E1C 801AED94 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 25E20 801AED98 21988000 */  addu       $s3, $a0, $zero
    /* 25E24 801AED9C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 25E28 801AEDA0 2190A000 */  addu       $s2, $a1, $zero
    /* 25E2C 801AEDA4 2A107202 */  slt        $v0, $s3, $s2
    /* 25E30 801AEDA8 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 25E34 801AEDAC 2800B6AF */  sw         $s6, 0x28($sp)
    /* 25E38 801AEDB0 2400B5AF */  sw         $s5, 0x24($sp)
    /* 25E3C 801AEDB4 2000B4AF */  sw         $s4, 0x20($sp)
    /* 25E40 801AEDB8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 25E44 801AEDBC 25004010 */  beqz       $v0, .L801AEE54
    /* 25E48 801AEDC0 1000B0AF */   sw        $s0, 0x10($sp)
    /* 25E4C 801AEDC4 21287202 */  addu       $a1, $s3, $s2
    /* 25E50 801AEDC8 C2170500 */  srl        $v0, $a1, 31
    /* 25E54 801AEDCC 2128A200 */  addu       $a1, $a1, $v0
    /* 25E58 801AEDD0 DCBB060C */  jal        func_801AEF70
    /* 25E5C 801AEDD4 43280500 */   sra       $a1, $a1, 1
    /* 25E60 801AEDD8 21886002 */  addu       $s1, $s3, $zero
    /* 25E64 801AEDDC 01003026 */  addiu      $s0, $s1, 0x1
    /* 25E68 801AEDE0 2A105002 */  slt        $v0, $s2, $s0
    /* 25E6C 801AEDE4 13004014 */  bnez       $v0, .L801AEE34
    /* 25E70 801AEDE8 21206002 */   addu      $a0, $s3, $zero
    /* 25E74 801AEDEC 40B01100 */  sll        $s6, $s1, 1
    /* 25E78 801AEDF0 1E80143C */  lui        $s4, %hi(D_801DA620)
    /* 25E7C 801AEDF4 20A69426 */  addiu      $s4, $s4, %lo(D_801DA620)
    /* 25E80 801AEDF8 40A81200 */  sll        $s5, $s2, 1
    /* 25E84 801AEDFC 2120D402 */  addu       $a0, $s6, $s4
  .L801AEE00:
    /* 25E88 801AEE00 F8BB060C */  jal        func_801AEFE0
    /* 25E8C 801AEE04 2128B402 */   addu      $a1, $s5, $s4
    /* 25E90 801AEE08 05004104 */  bgez       $v0, .L801AEE20
    /* 25E94 801AEE0C 00000000 */   nop
    /* 25E98 801AEE10 01003126 */  addiu      $s1, $s1, 0x1
    /* 25E9C 801AEE14 21202002 */  addu       $a0, $s1, $zero
    /* 25EA0 801AEE18 DCBB060C */  jal        func_801AEF70
    /* 25EA4 801AEE1C 21280002 */   addu      $a1, $s0, $zero
  .L801AEE20:
    /* 25EA8 801AEE20 01001026 */  addiu      $s0, $s0, 0x1
    /* 25EAC 801AEE24 2A105002 */  slt        $v0, $s2, $s0
    /* 25EB0 801AEE28 F5FF4010 */  beqz       $v0, .L801AEE00
    /* 25EB4 801AEE2C 2120D402 */   addu      $a0, $s6, $s4
    /* 25EB8 801AEE30 21206002 */  addu       $a0, $s3, $zero
  .L801AEE34:
    /* 25EBC 801AEE34 DCBB060C */  jal        func_801AEF70
    /* 25EC0 801AEE38 21282002 */   addu      $a1, $s1, $zero
    /* 25EC4 801AEE3C 21206002 */  addu       $a0, $s3, $zero
    /* 25EC8 801AEE40 64BB060C */  jal        func_801AED90
    /* 25ECC 801AEE44 FFFF2526 */   addiu     $a1, $s1, -0x1
    /* 25ED0 801AEE48 01002426 */  addiu      $a0, $s1, 0x1
    /* 25ED4 801AEE4C 64BB060C */  jal        func_801AED90
    /* 25ED8 801AEE50 21284002 */   addu      $a1, $s2, $zero
  .L801AEE54:
    /* 25EDC 801AEE54 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 25EE0 801AEE58 2800B68F */  lw         $s6, 0x28($sp)
    /* 25EE4 801AEE5C 2400B58F */  lw         $s5, 0x24($sp)
    /* 25EE8 801AEE60 2000B48F */  lw         $s4, 0x20($sp)
    /* 25EEC 801AEE64 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 25EF0 801AEE68 1800B28F */  lw         $s2, 0x18($sp)
    /* 25EF4 801AEE6C 1400B18F */  lw         $s1, 0x14($sp)
    /* 25EF8 801AEE70 1000B08F */  lw         $s0, 0x10($sp)
    /* 25EFC 801AEE74 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 25F00 801AEE78 0800E003 */  jr         $ra
    /* 25F04 801AEE7C 00000000 */   nop
endlabel func_801AED90
