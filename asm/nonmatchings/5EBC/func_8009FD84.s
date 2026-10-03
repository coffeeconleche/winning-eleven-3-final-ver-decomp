nonmatching func_8009FD84, 0x44

glabel func_8009FD84
    /* 90584 8009FD84 91038290 */  lbu        $v0, 0x391($a0)
    /* 90588 8009FD88 00000000 */  nop
    /* 9058C 8009FD8C FFFF4324 */  addiu      $v1, $v0, -0x1
    /* 90590 8009FD90 1300622C */  sltiu      $v0, $v1, 0x13
    /* 90594 8009FD94 09004010 */  beqz       $v0, .L8009FDBC
    /* 90598 8009FD98 80100300 */   sll       $v0, $v1, 2
    /* 9059C 8009FD9C 0180013C */  lui        $at, %hi(jtbl_80014448)
    /* 905A0 8009FDA0 21082200 */  addu       $at, $at, $v0
    /* 905A4 8009FDA4 4844228C */  lw         $v0, %lo(jtbl_80014448)($at)
    /* 905A8 8009FDA8 00000000 */  nop
    /* 905AC 8009FDAC 08004000 */  jr         $v0
    /* 905B0 8009FDB0 00000000 */   nop
  jlabel .L8009FDB4
    /* 905B4 8009FDB4 707F0208 */  j          .L8009FDC0
    /* 905B8 8009FDB8 01000224 */   addiu     $v0, $zero, 0x1
  jlabel .L8009FDBC
    /* 905BC 8009FDBC 21100000 */  addu       $v0, $zero, $zero
  .L8009FDC0:
    /* 905C0 8009FDC0 0800E003 */  jr         $ra
    /* 905C4 8009FDC4 00000000 */   nop
endlabel func_8009FD84
