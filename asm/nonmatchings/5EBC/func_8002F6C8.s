nonmatching func_8002F6C8, 0x44

glabel func_8002F6C8
    /* 1FEC8 8002F6C8 0004822C */  sltiu      $v0, $a0, 0x400
    /* 1FECC 8002F6CC 0D004014 */  bnez       $v0, .L8002F704
    /* 1FED0 8002F6D0 02000224 */   addiu     $v0, $zero, 0x2
    /* 1FED4 8002F6D4 00FC8424 */  addiu      $a0, $a0, -0x400
    /* 1FED8 8002F6D8 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 1FEDC 8002F6DC ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 1FEE0 8002F6E0 19008200 */  multu      $a0, $v0
    /* 1FEE4 8002F6E4 10280000 */  mfhi       $a1
    /* 1FEE8 8002F6E8 42120500 */  srl        $v0, $a1, 9
    /* 1FEEC 8002F6EC 02004324 */  addiu      $v1, $v0, 0x2
    /* 1FEF0 8002F6F0 09006228 */  slti       $v0, $v1, 0x9
    /* 1FEF4 8002F6F4 03004014 */  bnez       $v0, .L8002F704
    /* 1FEF8 8002F6F8 21106000 */   addu      $v0, $v1, $zero
    /* 1FEFC 8002F6FC 08000324 */  addiu      $v1, $zero, 0x8
    /* 1FF00 8002F700 21106000 */  addu       $v0, $v1, $zero
  .L8002F704:
    /* 1FF04 8002F704 0800E003 */  jr         $ra
    /* 1FF08 8002F708 00000000 */   nop
endlabel func_8002F6C8
