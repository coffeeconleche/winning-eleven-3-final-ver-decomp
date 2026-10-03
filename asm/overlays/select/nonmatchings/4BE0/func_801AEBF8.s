nonmatching func_801AEBF8, 0xBC

glabel func_801AEBF8
    /* 25C80 801AEBF8 21200000 */  addu       $a0, $zero, $zero
    /* 25C84 801AEBFC 1E80053C */  lui        $a1, %hi(D_801DAD84)
    /* 25C88 801AEC00 84ADA590 */  lbu        $a1, %lo(D_801DAD84)($a1)
    /* 25C8C 801AEC04 00000000 */  nop
    /* 25C90 801AEC08 0600A22C */  sltiu      $v0, $a1, 0x6
    /* 25C94 801AEC0C 23004010 */  beqz       $v0, .L801AEC9C
    /* 25C98 801AEC10 21180000 */   addu      $v1, $zero, $zero
    /* 25C9C 801AEC14 80100500 */  sll        $v0, $a1, 2
    /* 25CA0 801AEC18 1980013C */  lui        $at, %hi(jtbl_8018A59C)
    /* 25CA4 801AEC1C 21082200 */  addu       $at, $at, $v0
    /* 25CA8 801AEC20 9CA5228C */  lw         $v0, %lo(jtbl_8018A59C)($at)
    /* 25CAC 801AEC24 00000000 */  nop
    /* 25CB0 801AEC28 08004000 */  jr         $v0
    /* 25CB4 801AEC2C 00000000 */   nop
  jlabel .L801AEC30
    /* 25CB8 801AEC30 1E80033C */  lui        $v1, %hi(D_801D86F0)
    /* 25CBC 801AEC34 F0866394 */  lhu        $v1, %lo(D_801D86F0)($v1)
    /* 25CC0 801AEC38 13BB0608 */  j          .L801AEC4C
    /* 25CC4 801AEC3C C0FF0424 */   addiu     $a0, $zero, -0x40
  jlabel .L801AEC40
    /* 25CC8 801AEC40 1E80033C */  lui        $v1, %hi(D_801D86F0)
    /* 25CCC 801AEC44 F0866394 */  lhu        $v1, %lo(D_801D86F0)($v1)
    /* 25CD0 801AEC48 ECFF0424 */  addiu      $a0, $zero, -0x14
  .L801AEC4C:
    /* 25CD4 801AEC4C 00110300 */  sll        $v0, $v1, 4
    /* 25CD8 801AEC50 21104300 */  addu       $v0, $v0, $v1
    /* 25CDC 801AEC54 27BB0608 */  j          .L801AEC9C
    /* 25CE0 801AEC58 CAFF4324 */   addiu     $v1, $v0, -0x36
  jlabel .L801AEC5C
    /* 25CE4 801AEC5C A6000424 */  addiu      $a0, $zero, 0xA6
    /* 25CE8 801AEC60 27BB0608 */  j          .L801AEC9C
    /* 25CEC 801AEC64 D0FF0324 */   addiu     $v1, $zero, -0x30
  jlabel .L801AEC68
    /* 25CF0 801AEC68 26BB0608 */  j          .L801AEC98
    /* 25CF4 801AEC6C A6000424 */   addiu     $a0, $zero, 0xA6
  jlabel .L801AEC70
    /* 25CF8 801AEC70 94000424 */  addiu      $a0, $zero, 0x94
    /* 25CFC 801AEC74 27BB0608 */  j          .L801AEC9C
    /* 25D00 801AEC78 AAFF0324 */   addiu     $v1, $zero, -0x56
  jlabel .L801AEC7C
    /* 25D04 801AEC7C 1E80023C */  lui        $v0, %hi(D_801D8A51)
    /* 25D08 801AEC80 518A4290 */  lbu        $v0, %lo(D_801D8A51)($v0)
    /* 25D0C 801AEC84 00000000 */  nop
    /* 25D10 801AEC88 03004014 */  bnez       $v0, .L801AEC98
    /* 25D14 801AEC8C 21200000 */   addu      $a0, $zero, $zero
    /* 25D18 801AEC90 27BB0608 */  j          .L801AEC9C
    /* 25D1C 801AEC94 2E000324 */   addiu     $v1, $zero, 0x2E
  .L801AEC98:
    /* 25D20 801AEC98 58000324 */  addiu      $v1, $zero, 0x58
  .L801AEC9C:
    /* 25D24 801AEC9C 1E80013C */  lui        $at, %hi(D_801D8A86)
    /* 25D28 801AECA0 868A24A4 */  sh         $a0, %lo(D_801D8A86)($at)
    /* 25D2C 801AECA4 1E80013C */  lui        $at, %hi(D_801D8A88)
    /* 25D30 801AECA8 888A23A4 */  sh         $v1, %lo(D_801D8A88)($at)
    /* 25D34 801AECAC 0800E003 */  jr         $ra
    /* 25D38 801AECB0 00000000 */   nop
endlabel func_801AEBF8
