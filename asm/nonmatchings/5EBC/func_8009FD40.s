nonmatching func_8009FD40, 0x44

glabel func_8009FD40
    /* 90540 8009FD40 91038290 */  lbu        $v0, 0x391($a0)
    /* 90544 8009FD44 00000000 */  nop
    /* 90548 8009FD48 FEFF4324 */  addiu      $v1, $v0, -0x2
    /* 9054C 8009FD4C 1300622C */  sltiu      $v0, $v1, 0x13
    /* 90550 8009FD50 09004010 */  beqz       $v0, .L8009FD78
    /* 90554 8009FD54 80100300 */   sll       $v0, $v1, 2
    /* 90558 8009FD58 0180013C */  lui        $at, %hi(jtbl_800143F8)
    /* 9055C 8009FD5C 21082200 */  addu       $at, $at, $v0
    /* 90560 8009FD60 F843228C */  lw         $v0, %lo(jtbl_800143F8)($at)
    /* 90564 8009FD64 00000000 */  nop
    /* 90568 8009FD68 08004000 */  jr         $v0
    /* 9056C 8009FD6C 00000000 */   nop
  jlabel .L8009FD70
    /* 90570 8009FD70 5F7F0208 */  j          .L8009FD7C
    /* 90574 8009FD74 01000224 */   addiu     $v0, $zero, 0x1
  jlabel .L8009FD78
    /* 90578 8009FD78 21100000 */  addu       $v0, $zero, $zero
  .L8009FD7C:
    /* 9057C 8009FD7C 0800E003 */  jr         $ra
    /* 90580 8009FD80 00000000 */   nop
endlabel func_8009FD40
