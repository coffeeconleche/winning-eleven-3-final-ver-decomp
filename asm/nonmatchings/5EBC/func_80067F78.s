nonmatching func_80067F78, 0x34

glabel func_80067F78
    /* 58778 80067F78 FF008230 */  andi       $v0, $a0, 0xFF
    /* 5877C 80067F7C 03004014 */  bnez       $v0, .L80067F8C
    /* 58780 80067F80 0C00422C */   sltiu     $v0, $v0, 0xC
    /* 58784 80067F84 E99F0108 */  j          .L80067FA4
    /* 58788 80067F88 FF000224 */   addiu     $v0, $zero, 0xFF
  .L80067F8C:
    /* 5878C 80067F8C 03004014 */  bnez       $v0, .L80067F9C
    /* 58790 80067F90 FF00A230 */   andi      $v0, $a1, 0xFF
    /* 58794 80067F94 E99F0108 */  j          .L80067FA4
    /* 58798 80067F98 0C00422C */   sltiu     $v0, $v0, 0xC
  .L80067F9C:
    /* 5879C 80067F9C 0C00422C */  sltiu      $v0, $v0, 0xC
    /* 587A0 80067FA0 01004238 */  xori       $v0, $v0, 0x1
  .L80067FA4:
    /* 587A4 80067FA4 0800E003 */  jr         $ra
    /* 587A8 80067FA8 00000000 */   nop
endlabel func_80067F78
