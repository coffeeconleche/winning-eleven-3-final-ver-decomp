nonmatching func_800AC084, 0xDC

glabel func_800AC084
    /* 9C884 800AC084 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9C888 800AC088 00FE8324 */  addiu      $v1, $a0, -0x200
    /* 9C88C 800AC08C 40100300 */  sll        $v0, $v1, 1
    /* 9C890 800AC090 21104300 */  addu       $v0, $v0, $v1
    /* 9C894 800AC094 40100200 */  sll        $v0, $v0, 1
    /* 9C898 800AC098 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9C89C 800AC09C 740080A3 */  sb         $zero, %gp_rel(D_800E6B00)($gp)
    /* 9C8A0 800AC0A0 180180A7 */  sh         $zero, %gp_rel(D_800E6BA4)($gp)
    /* 9C8A4 800AC0A4 0D80013C */  lui        $at, %hi(D_800CE9D8)
    /* 9C8A8 800AC0A8 D8E92124 */  addiu      $at, $at, %lo(D_800CE9D8)
    /* 9C8AC 800AC0AC 21082200 */  addu       $at, $at, $v0
    /* 9C8B0 800AC0B0 00002390 */  lbu        $v1, 0x0($at)
    /* 9C8B4 800AC0B4 00000000 */  nop
    /* 9C8B8 800AC0B8 4A0083A7 */  sh         $v1, %gp_rel(D_800E6AD6)($gp)
    /* 9C8BC 800AC0BC 0D80013C */  lui        $at, %hi(D_800CE9D8 + 0x1)
    /* 9C8C0 800AC0C0 D9E92124 */  addiu      $at, $at, %lo(D_800CE9D8 + 0x1)
    /* 9C8C4 800AC0C4 21082200 */  addu       $at, $at, $v0
    /* 9C8C8 800AC0C8 00002290 */  lbu        $v0, 0x0($at)
    /* 9C8CC 800AC0CC 00000000 */  nop
    /* 9C8D0 800AC0D0 500082A7 */  sh         $v0, %gp_rel(D_800E6ADC)($gp)
    /* 9C8D4 800AC0D4 83A4020C */  jal        func_800A920C
    /* 9C8D8 800AC0D8 00000000 */   nop
    /* 9C8DC 800AC0DC 0F000434 */  ori        $a0, $zero, 0xF
    /* 9C8E0 800AC0E0 1180033C */  lui        $v1, %hi(D_8010CD7E)
    /* 9C8E4 800AC0E4 7ECD6324 */  addiu      $v1, $v1, %lo(D_8010CD7E)
    /* 9C8E8 800AC0E8 04000234 */  ori        $v0, $zero, 0x4
    /* 9C8EC 800AC0EC C00082A7 */  sh         $v0, %gp_rel(D_800E6B4C)($gp)
  .L800AC0F0:
    /* 9C8F0 800AC0F0 000060A4 */  sh         $zero, 0x0($v1)
    /* 9C8F4 800AC0F4 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 9C8F8 800AC0F8 FDFF8104 */  bgez       $a0, .L800AC0F0
    /* 9C8FC 800AC0FC FEFF6324 */   addiu     $v1, $v1, -0x2
    /* 9C900 800AC100 4A008287 */  lh         $v0, %gp_rel(D_800E6AD6)($gp)
    /* 9C904 800AC104 E0008487 */  lh         $a0, %gp_rel(D_800E6B6C)($gp)
    /* 9C908 800AC108 00000000 */  nop
    /* 9C90C 800AC10C 18004400 */  mult       $v0, $a0
    /* 9C910 800AC110 12180000 */  mflo       $v1
    /* 9C914 800AC114 02006104 */  bgez       $v1, .L800AC120
    /* 9C918 800AC118 00000000 */   nop
    /* 9C91C 800AC11C 7F006324 */  addiu      $v1, $v1, 0x7F
  .L800AC120:
    /* 9C920 800AC120 50008287 */  lh         $v0, %gp_rel(D_800E6ADC)($gp)
    /* 9C924 800AC124 00000000 */  nop
    /* 9C928 800AC128 18004400 */  mult       $v0, $a0
    /* 9C92C 800AC12C 40120300 */  sll        $v0, $v1, 9
    /* 9C930 800AC130 12300000 */  mflo       $a2
    /* 9C934 800AC134 0200C104 */  bgez       $a2, .L800AC140
    /* 9C938 800AC138 032C0200 */   sra       $a1, $v0, 16
    /* 9C93C 800AC13C 7F00C624 */  addiu      $a2, $a2, 0x7F
  .L800AC140:
    /* 9C940 800AC140 21200000 */  addu       $a0, $zero, $zero
    /* 9C944 800AC144 40320600 */  sll        $a2, $a2, 9
    /* 9C948 800AC148 16F3020C */  jal        func_800BCC58
    /* 9C94C 800AC14C 03340600 */   sra       $a2, $a2, 16
    /* 9C950 800AC150 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9C954 800AC154 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9C958 800AC158 0800E003 */  jr         $ra
    /* 9C95C 800AC15C 00000000 */   nop
endlabel func_800AC084
