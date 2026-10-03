nonmatching func_801BA7EC, 0x100

glabel func_801BA7EC
    /* 31874 801BA7EC C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 31878 801BA7F0 3800B4AF */  sw         $s4, 0x38($sp)
    /* 3187C 801BA7F4 21A08000 */  addu       $s4, $a0, $zero
    /* 31880 801BA7F8 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 31884 801BA7FC 3400B3AF */  sw         $s3, 0x34($sp)
    /* 31888 801BA800 3000B2AF */  sw         $s2, 0x30($sp)
    /* 3188C 801BA804 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 31890 801BA808 2800B0AF */  sw         $s0, 0x28($sp)
    /* 31894 801BA80C 04008392 */  lbu        $v1, 0x4($s4)
    /* 31898 801BA810 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 3189C 801BA814 0F006214 */  bne        $v1, $v0, .L801BA854
    /* 318A0 801BA818 21200000 */   addu      $a0, $zero, $zero
    /* 318A4 801BA81C 0A008586 */  lh         $a1, 0xA($s4)
    /* 318A8 801BA820 0C008686 */  lh         $a2, 0xC($s4)
    /* 318AC 801BA824 0E008786 */  lh         $a3, 0xE($s4)
    /* 318B0 801BA828 10008386 */  lh         $v1, 0x10($s4)
    /* 318B4 801BA82C 30000224 */  addiu      $v0, $zero, 0x30
    /* 318B8 801BA830 1400A2AF */  sw         $v0, 0x14($sp)
    /* 318BC 801BA834 10000224 */  addiu      $v0, $zero, 0x10
    /* 318C0 801BA838 1800A2AF */  sw         $v0, 0x18($sp)
    /* 318C4 801BA83C A0000224 */  addiu      $v0, $zero, 0xA0
    /* 318C8 801BA840 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 318CC 801BA844 05000224 */  addiu      $v0, $zero, 0x5
    /* 318D0 801BA848 2000A2AF */  sw         $v0, 0x20($sp)
    /* 318D4 801BA84C 30EA0608 */  j          .L801BA8C0
    /* 318D8 801BA850 1000A3AF */   sw        $v1, 0x10($sp)
  .L801BA854:
    /* 318DC 801BA854 0000848E */  lw         $a0, 0x0($s4)
    /* 318E0 801BA858 FBE9060C */  jal        func_801BA7EC
    /* 318E4 801BA85C 30001324 */   addiu     $s3, $zero, 0x30
    /* 318E8 801BA860 21200000 */  addu       $a0, $zero, $zero
    /* 318EC 801BA864 10001224 */  addiu      $s2, $zero, 0x10
    /* 318F0 801BA868 A0001124 */  addiu      $s1, $zero, 0xA0
    /* 318F4 801BA86C 0A008586 */  lh         $a1, 0xA($s4)
    /* 318F8 801BA870 0C008686 */  lh         $a2, 0xC($s4)
    /* 318FC 801BA874 0E008786 */  lh         $a3, 0xE($s4)
    /* 31900 801BA878 10008286 */  lh         $v0, 0x10($s4)
    /* 31904 801BA87C 05001024 */  addiu      $s0, $zero, 0x5
    /* 31908 801BA880 1400B3AF */  sw         $s3, 0x14($sp)
    /* 3190C 801BA884 1800B2AF */  sw         $s2, 0x18($sp)
    /* 31910 801BA888 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 31914 801BA88C 2000B0AF */  sw         $s0, 0x20($sp)
    /* 31918 801BA890 005A060C */  jal        func_80196800
    /* 3191C 801BA894 1000A2AF */   sw        $v0, 0x10($sp)
    /* 31920 801BA898 12008586 */  lh         $a1, 0x12($s4)
    /* 31924 801BA89C 14008686 */  lh         $a2, 0x14($s4)
    /* 31928 801BA8A0 16008786 */  lh         $a3, 0x16($s4)
    /* 3192C 801BA8A4 18008286 */  lh         $v0, 0x18($s4)
    /* 31930 801BA8A8 21200000 */  addu       $a0, $zero, $zero
    /* 31934 801BA8AC 1400B3AF */  sw         $s3, 0x14($sp)
    /* 31938 801BA8B0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3193C 801BA8B4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 31940 801BA8B8 2000B0AF */  sw         $s0, 0x20($sp)
    /* 31944 801BA8BC 1000A2AF */  sw         $v0, 0x10($sp)
  .L801BA8C0:
    /* 31948 801BA8C0 005A060C */  jal        func_80196800
    /* 3194C 801BA8C4 00000000 */   nop
    /* 31950 801BA8C8 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 31954 801BA8CC 3800B48F */  lw         $s4, 0x38($sp)
    /* 31958 801BA8D0 3400B38F */  lw         $s3, 0x34($sp)
    /* 3195C 801BA8D4 3000B28F */  lw         $s2, 0x30($sp)
    /* 31960 801BA8D8 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 31964 801BA8DC 2800B08F */  lw         $s0, 0x28($sp)
    /* 31968 801BA8E0 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 3196C 801BA8E4 0800E003 */  jr         $ra
    /* 31970 801BA8E8 00000000 */   nop
endlabel func_801BA7EC
