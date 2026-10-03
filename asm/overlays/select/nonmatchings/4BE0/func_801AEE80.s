nonmatching func_801AEE80, 0xF0

glabel func_801AEE80
    /* 25F08 801AEE80 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 25F0C 801AEE84 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 25F10 801AEE88 21988000 */  addu       $s3, $a0, $zero
    /* 25F14 801AEE8C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 25F18 801AEE90 2190A000 */  addu       $s2, $a1, $zero
    /* 25F1C 801AEE94 2A107202 */  slt        $v0, $s3, $s2
    /* 25F20 801AEE98 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 25F24 801AEE9C 2800B6AF */  sw         $s6, 0x28($sp)
    /* 25F28 801AEEA0 2400B5AF */  sw         $s5, 0x24($sp)
    /* 25F2C 801AEEA4 2000B4AF */  sw         $s4, 0x20($sp)
    /* 25F30 801AEEA8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 25F34 801AEEAC 25004010 */  beqz       $v0, .L801AEF44
    /* 25F38 801AEEB0 1000B0AF */   sw        $s0, 0x10($sp)
    /* 25F3C 801AEEB4 21287202 */  addu       $a1, $s3, $s2
    /* 25F40 801AEEB8 C2170500 */  srl        $v0, $a1, 31
    /* 25F44 801AEEBC 2128A200 */  addu       $a1, $a1, $v0
    /* 25F48 801AEEC0 DCBB060C */  jal        func_801AEF70
    /* 25F4C 801AEEC4 43280500 */   sra       $a1, $a1, 1
    /* 25F50 801AEEC8 21886002 */  addu       $s1, $s3, $zero
    /* 25F54 801AEECC 01003026 */  addiu      $s0, $s1, 0x1
    /* 25F58 801AEED0 2A105002 */  slt        $v0, $s2, $s0
    /* 25F5C 801AEED4 13004014 */  bnez       $v0, .L801AEF24
    /* 25F60 801AEED8 21206002 */   addu      $a0, $s3, $zero
    /* 25F64 801AEEDC 40B01100 */  sll        $s6, $s1, 1
    /* 25F68 801AEEE0 1E80143C */  lui        $s4, %hi(D_801DA620)
    /* 25F6C 801AEEE4 20A69426 */  addiu      $s4, $s4, %lo(D_801DA620)
    /* 25F70 801AEEE8 40A81200 */  sll        $s5, $s2, 1
    /* 25F74 801AEEEC 2120D402 */  addu       $a0, $s6, $s4
  .L801AEEF0:
    /* 25F78 801AEEF0 44BC060C */  jal        func_801AF110
    /* 25F7C 801AEEF4 2128B402 */   addu      $a1, $s5, $s4
    /* 25F80 801AEEF8 05004104 */  bgez       $v0, .L801AEF10
    /* 25F84 801AEEFC 00000000 */   nop
    /* 25F88 801AEF00 01003126 */  addiu      $s1, $s1, 0x1
    /* 25F8C 801AEF04 21202002 */  addu       $a0, $s1, $zero
    /* 25F90 801AEF08 DCBB060C */  jal        func_801AEF70
    /* 25F94 801AEF0C 21280002 */   addu      $a1, $s0, $zero
  .L801AEF10:
    /* 25F98 801AEF10 01001026 */  addiu      $s0, $s0, 0x1
    /* 25F9C 801AEF14 2A105002 */  slt        $v0, $s2, $s0
    /* 25FA0 801AEF18 F5FF4010 */  beqz       $v0, .L801AEEF0
    /* 25FA4 801AEF1C 2120D402 */   addu      $a0, $s6, $s4
    /* 25FA8 801AEF20 21206002 */  addu       $a0, $s3, $zero
  .L801AEF24:
    /* 25FAC 801AEF24 DCBB060C */  jal        func_801AEF70
    /* 25FB0 801AEF28 21282002 */   addu      $a1, $s1, $zero
    /* 25FB4 801AEF2C 21206002 */  addu       $a0, $s3, $zero
    /* 25FB8 801AEF30 A0BB060C */  jal        func_801AEE80
    /* 25FBC 801AEF34 FFFF2526 */   addiu     $a1, $s1, -0x1
    /* 25FC0 801AEF38 01002426 */  addiu      $a0, $s1, 0x1
    /* 25FC4 801AEF3C A0BB060C */  jal        func_801AEE80
    /* 25FC8 801AEF40 21284002 */   addu      $a1, $s2, $zero
  .L801AEF44:
    /* 25FCC 801AEF44 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 25FD0 801AEF48 2800B68F */  lw         $s6, 0x28($sp)
    /* 25FD4 801AEF4C 2400B58F */  lw         $s5, 0x24($sp)
    /* 25FD8 801AEF50 2000B48F */  lw         $s4, 0x20($sp)
    /* 25FDC 801AEF54 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 25FE0 801AEF58 1800B28F */  lw         $s2, 0x18($sp)
    /* 25FE4 801AEF5C 1400B18F */  lw         $s1, 0x14($sp)
    /* 25FE8 801AEF60 1000B08F */  lw         $s0, 0x10($sp)
    /* 25FEC 801AEF64 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 25FF0 801AEF68 0800E003 */  jr         $ra
    /* 25FF4 801AEF6C 00000000 */   nop
endlabel func_801AEE80
