nonmatching func_800AB124, 0x84

glabel func_800AB124
    /* 9B924 800AB124 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9B928 800AB128 00240400 */  sll        $a0, $a0, 16
    /* 9B92C 800AB12C C3230400 */  sra        $a0, $a0, 15
    /* 9B930 800AB130 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9B934 800AB134 0D80013C */  lui        $at, %hi(D_800CE738)
    /* 9B938 800AB138 38E72124 */  addiu      $at, $at, %lo(D_800CE738)
    /* 9B93C 800AB13C 21082400 */  addu       $at, $at, $a0
    /* 9B940 800AB140 00002494 */  lhu        $a0, 0x0($at)
    /* 9B944 800AB144 4A008387 */  lh         $v1, %gp_rel(D_800E6AD6)($gp)
    /* 9B948 800AB148 00140400 */  sll        $v0, $a0, 16
    /* 9B94C 800AB14C 032C0200 */  sra        $a1, $v0, 16
    /* 9B950 800AB150 18006500 */  mult       $v1, $a1
    /* 9B954 800AB154 E00084A7 */  sh         $a0, %gp_rel(D_800E6B6C)($gp)
    /* 9B958 800AB158 12180000 */  mflo       $v1
    /* 9B95C 800AB15C 02006104 */  bgez       $v1, .L800AB168
    /* 9B960 800AB160 00000000 */   nop
    /* 9B964 800AB164 7F006324 */  addiu      $v1, $v1, 0x7F
  .L800AB168:
    /* 9B968 800AB168 50008287 */  lh         $v0, %gp_rel(D_800E6ADC)($gp)
    /* 9B96C 800AB16C 00000000 */  nop
    /* 9B970 800AB170 18004500 */  mult       $v0, $a1
    /* 9B974 800AB174 40120300 */  sll        $v0, $v1, 9
    /* 9B978 800AB178 12300000 */  mflo       $a2
    /* 9B97C 800AB17C 0200C104 */  bgez       $a2, .L800AB188
    /* 9B980 800AB180 032C0200 */   sra       $a1, $v0, 16
    /* 9B984 800AB184 7F00C624 */  addiu      $a2, $a2, 0x7F
  .L800AB188:
    /* 9B988 800AB188 40320600 */  sll        $a2, $a2, 9
    /* 9B98C 800AB18C 21200000 */  addu       $a0, $zero, $zero
    /* 9B990 800AB190 16F3020C */  jal        func_800BCC58
    /* 9B994 800AB194 03340600 */   sra       $a2, $a2, 16
    /* 9B998 800AB198 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9B99C 800AB19C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9B9A0 800AB1A0 0800E003 */  jr         $ra
    /* 9B9A4 800AB1A4 00000000 */   nop
endlabel func_800AB124
