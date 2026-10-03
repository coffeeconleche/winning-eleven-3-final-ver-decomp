nonmatching func_800ACFB4, 0x38

glabel func_800ACFB4
    /* 9D7B4 800ACFB4 FFFF8330 */  andi       $v1, $a0, 0xFFFF
    /* 9D7B8 800ACFB8 03006228 */  slti       $v0, $v1, 0x3
    /* 9D7BC 800ACFBC 08004010 */  beqz       $v0, .L800ACFE0
    /* 9D7C0 800ACFC0 00190300 */   sll       $v1, $v1, 4
    /* 9D7C4 800ACFC4 0D80023C */  lui        $v0, %hi(D_800CEA48)
    /* 9D7C8 800ACFC8 48EA428C */  lw         $v0, %lo(D_800CEA48)($v0)
    /* 9D7CC 800ACFCC 00000000 */  nop
    /* 9D7D0 800ACFD0 21186200 */  addu       $v1, $v1, $v0
    /* 9D7D4 800ACFD4 00006294 */  lhu        $v0, 0x0($v1)
    /* 9D7D8 800ACFD8 F9B30208 */  j          .L800ACFE4
    /* 9D7DC 800ACFDC 00000000 */   nop
  .L800ACFE0:
    /* 9D7E0 800ACFE0 21100000 */  addu       $v0, $zero, $zero
  .L800ACFE4:
    /* 9D7E4 800ACFE4 0800E003 */  jr         $ra
    /* 9D7E8 800ACFE8 00000000 */   nop
endlabel func_800ACFB4
