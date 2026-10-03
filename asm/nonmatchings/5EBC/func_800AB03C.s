nonmatching func_800AB03C, 0x44

glabel func_800AB03C
    /* 9B83C 800AB03C 21180000 */  addu       $v1, $zero, $zero
    /* 9B840 800AB040 21200000 */  addu       $a0, $zero, $zero
  .L800AB044:
    /* 9B844 800AB044 0D80013C */  lui        $at, %hi(D_800CE86C)
    /* 9B848 800AB048 6CE82124 */  addiu      $at, $at, %lo(D_800CE86C)
    /* 9B84C 800AB04C 21082400 */  addu       $at, $at, $a0
    /* 9B850 800AB050 00002290 */  lbu        $v0, 0x0($at)
    /* 9B854 800AB054 00000000 */  nop
    /* 9B858 800AB058 0F80013C */  lui        $at, %hi(D_800F1040)
    /* 9B85C 800AB05C 40102124 */  addiu      $at, $at, %lo(D_800F1040)
    /* 9B860 800AB060 21082300 */  addu       $at, $at, $v1
    /* 9B864 800AB064 000022A0 */  sb         $v0, 0x0($at)
    /* 9B868 800AB068 01006324 */  addiu      $v1, $v1, 0x1
    /* 9B86C 800AB06C 27006228 */  slti       $v0, $v1, 0x27
    /* 9B870 800AB070 F4FF4014 */  bnez       $v0, .L800AB044
    /* 9B874 800AB074 08008424 */   addiu     $a0, $a0, 0x8
    /* 9B878 800AB078 0800E003 */  jr         $ra
    /* 9B87C 800AB07C 00000000 */   nop
endlabel func_800AB03C
