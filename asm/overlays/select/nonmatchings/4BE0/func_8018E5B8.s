nonmatching func_8018E5B8, 0x34

glabel func_8018E5B8
    /* 5640 8018E5B8 801F023C */  lui        $v0, (0x1F800290 >> 16)
    /* 5644 8018E5BC 9002428C */  lw         $v0, (0x1F800290 & 0xFFFF)($v0)
    /* 5648 8018E5C0 FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* 564C 8018E5C4 40180400 */  sll        $v1, $a0, 1
    /* 5650 8018E5C8 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 5654 8018E5CC 0410A200 */  sllv       $v0, $v0, $a1
    /* 5658 8018E5D0 24104300 */  and        $v0, $v0, $v1
    /* 565C 8018E5D4 2A204400 */  slt        $a0, $v0, $a0
    /* 5660 8018E5D8 02008014 */  bnez       $a0, .L8018E5E4
    /* 5664 8018E5DC 00000000 */   nop
    /* 5668 8018E5E0 23106200 */  subu       $v0, $v1, $v0
  .L8018E5E4:
    /* 566C 8018E5E4 0800E003 */  jr         $ra
    /* 5670 8018E5E8 FFFF4230 */   andi      $v0, $v0, 0xFFFF
endlabel func_8018E5B8
