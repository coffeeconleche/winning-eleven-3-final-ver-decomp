nonmatching func_801C8CB4, 0x4C

glabel func_801C8CB4
    /* 3FD3C 801C8CB4 1E80033C */  lui        $v1, %hi(D_801D8DFD)
    /* 3FD40 801C8CB8 FD8D6390 */  lbu        $v1, %lo(D_801D8DFD)($v1)
    /* 3FD44 801C8CBC 00000000 */  nop
    /* 3FD48 801C8CC0 0200622C */  sltiu      $v0, $v1, 0x2
    /* 3FD4C 801C8CC4 0C004014 */  bnez       $v0, .L801C8CF8
    /* 3FD50 801C8CC8 21100000 */   addu      $v0, $zero, $zero
    /* 3FD54 801C8CCC 0400622C */  sltiu      $v0, $v1, 0x4
    /* 3FD58 801C8CD0 09004014 */  bnez       $v0, .L801C8CF8
    /* 3FD5C 801C8CD4 01000224 */   addiu     $v0, $zero, 0x1
    /* 3FD60 801C8CD8 0800622C */  sltiu      $v0, $v1, 0x8
    /* 3FD64 801C8CDC 03004010 */  beqz       $v0, .L801C8CEC
    /* 3FD68 801C8CE0 0C00632C */   sltiu     $v1, $v1, 0xC
    /* 3FD6C 801C8CE4 3E230708 */  j          .L801C8CF8
    /* 3FD70 801C8CE8 02000224 */   addiu     $v0, $zero, 0x2
  .L801C8CEC:
    /* 3FD74 801C8CEC 02006014 */  bnez       $v1, .L801C8CF8
    /* 3FD78 801C8CF0 03000224 */   addiu     $v0, $zero, 0x3
    /* 3FD7C 801C8CF4 04000224 */  addiu      $v0, $zero, 0x4
  .L801C8CF8:
    /* 3FD80 801C8CF8 0800E003 */  jr         $ra
    /* 3FD84 801C8CFC 00000000 */   nop
endlabel func_801C8CB4
