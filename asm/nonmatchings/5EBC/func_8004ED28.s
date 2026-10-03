nonmatching func_8004ED28, 0x40

glabel func_8004ED28
    /* 3F528 8004ED28 FF008430 */  andi       $a0, $a0, 0xFF
    /* 3F52C 8004ED2C 80100400 */  sll        $v0, $a0, 2
    /* 3F530 8004ED30 21104400 */  addu       $v0, $v0, $a0
    /* 3F534 8004ED34 801F033C */  lui        $v1, (0x1F8002C8 >> 16)
    /* 3F538 8004ED38 C802638C */  lw         $v1, (0x1F8002C8 & 0xFFFF)($v1)
    /* 3F53C 8004ED3C 80100200 */  sll        $v0, $v0, 2
    /* 3F540 8004ED40 21186200 */  addu       $v1, $v1, $v0
    /* 3F544 8004ED44 801F013C */  lui        $at, (0x1F8002C8 >> 16)
    /* 3F548 8004ED48 C80223AC */  sw         $v1, (0x1F8002C8 & 0xFFFF)($at)
    /* 3F54C 8004ED4C 85036328 */  slti       $v1, $v1, 0x385
    /* 3F550 8004ED50 03006014 */  bnez       $v1, .L8004ED60
    /* 3F554 8004ED54 84030224 */   addiu     $v0, $zero, 0x384
    /* 3F558 8004ED58 801F013C */  lui        $at, (0x1F8002C8 >> 16)
    /* 3F55C 8004ED5C C80222AC */  sw         $v0, (0x1F8002C8 & 0xFFFF)($at)
  .L8004ED60:
    /* 3F560 8004ED60 0800E003 */  jr         $ra
    /* 3F564 8004ED64 00000000 */   nop
endlabel func_8004ED28
