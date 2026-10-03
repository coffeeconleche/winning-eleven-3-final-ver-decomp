nonmatching func_80049F90, 0xEC

glabel func_80049F90
    /* 3A790 80049F90 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3A794 80049F94 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3A798 80049F98 21808000 */  addu       $s0, $a0, $zero
    /* 3A79C 80049F9C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 3A7A0 80049FA0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3A7A4 80049FA4 02000486 */  lh         $a0, 0x2($s0)
    /* 3A7A8 80049FA8 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 3A7AC 80049FAC F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 3A7B0 80049FB0 06000586 */  lh         $a1, 0x6($s0)
    /* 3A7B4 80049FB4 02004684 */  lh         $a2, 0x2($v0)
    /* 3A7B8 80049FB8 06004784 */  lh         $a3, 0x6($v0)
    /* 3A7BC 80049FBC DB6C010C */  jal        func_8005B36C
    /* 3A7C0 80049FC0 00000000 */   nop
    /* 3A7C4 80049FC4 21884000 */  addu       $s1, $v0, $zero
    /* 3A7C8 80049FC8 8E030396 */  lhu        $v1, 0x38E($s0)
    /* 3A7CC 80049FCC 04000224 */  addiu      $v0, $zero, 0x4
    /* 3A7D0 80049FD0 1F006210 */  beq        $v1, $v0, .L8004A050
    /* 3A7D4 80049FD4 05006228 */   slti      $v0, $v1, 0x5
    /* 3A7D8 80049FD8 05004010 */  beqz       $v0, .L80049FF0
    /* 3A7DC 80049FDC 01000224 */   addiu     $v0, $zero, 0x1
    /* 3A7E0 80049FE0 0E006210 */  beq        $v1, $v0, .L8004A01C
    /* 3A7E4 80049FE4 02000224 */   addiu     $v0, $zero, 0x2
    /* 3A7E8 80049FE8 02280108 */  j          .L8004A008
    /* 3A7EC 80049FEC 00000000 */   nop
  .L80049FF0:
    /* 3A7F0 80049FF0 26000224 */  addiu      $v0, $zero, 0x26
    /* 3A7F4 80049FF4 16006210 */  beq        $v1, $v0, .L8004A050
    /* 3A7F8 80049FF8 27006228 */   slti      $v0, $v1, 0x27
    /* 3A7FC 80049FFC 02004014 */  bnez       $v0, .L8004A008
    /* 3A800 8004A000 1B000224 */   addiu     $v0, $zero, 0x1B
    /* 3A804 8004A004 59000224 */  addiu      $v0, $zero, 0x59
  .L8004A008:
    /* 3A808 8004A008 11006210 */  beq        $v1, $v0, .L8004A050
    /* 3A80C 8004A00C 21200002 */   addu      $a0, $s0, $zero
    /* 3A810 8004A010 01000524 */  addiu      $a1, $zero, 0x1
    /* 3A814 8004A014 8C6E010C */  jal        func_8005BA30
    /* 3A818 8004A018 21300000 */   addu      $a2, $zero, $zero
  .L8004A01C:
    /* 3A81C 8004A01C FF002432 */  andi       $a0, $s1, 0xFF
    /* 3A820 8004A020 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 3A824 8004A024 F36D010C */  jal        func_8005B7CC
    /* 3A828 8004A028 08000624 */   addiu     $a2, $zero, 0x8
    /* 3A82C 8004A02C A003038E */  lw         $v1, 0x3A0($s0)
    /* 3A830 8004A030 AA0302A2 */  sb         $v0, 0x3AA($s0)
    /* 3A834 8004A034 1300622C */  sltiu      $v0, $v1, 0x13
    /* 3A838 8004A038 03004010 */  beqz       $v0, .L8004A048
    /* 3A83C 8004A03C EEFF6224 */   addiu     $v0, $v1, -0x12
    /* 3A840 8004A040 19280108 */  j          .L8004A064
    /* 3A844 8004A044 A00300AE */   sw        $zero, 0x3A0($s0)
  .L8004A048:
    /* 3A848 8004A048 19280108 */  j          .L8004A064
    /* 3A84C 8004A04C A00302AE */   sw        $v0, 0x3A0($s0)
  .L8004A050:
    /* 3A850 8004A050 21200002 */  addu       $a0, $s0, $zero
    /* 3A854 8004A054 A4038590 */  lbu        $a1, 0x3A4($a0)
    /* 3A858 8004A058 FF002632 */  andi       $a2, $s1, 0xFF
    /* 3A85C 8004A05C 6523010C */  jal        func_80048D94
    /* 3A860 8004A060 FF000724 */   addiu     $a3, $zero, 0xFF
  .L8004A064:
    /* 3A864 8004A064 1800BF8F */  lw         $ra, 0x18($sp)
    /* 3A868 8004A068 1400B18F */  lw         $s1, 0x14($sp)
    /* 3A86C 8004A06C 1000B08F */  lw         $s0, 0x10($sp)
    /* 3A870 8004A070 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3A874 8004A074 0800E003 */  jr         $ra
    /* 3A878 8004A078 00000000 */   nop
endlabel func_80049F90
