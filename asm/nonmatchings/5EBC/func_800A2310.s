nonmatching func_800A2310, 0x64

glabel func_800A2310
    /* 92B10 800A2310 FF008430 */  andi       $a0, $a0, 0xFF
    /* 92B14 800A2314 801F013C */  lui        $at, (0x1F8002FF >> 16)
    /* 92B18 800A2318 21088100 */  addu       $at, $a0, $at
    /* 92B1C 800A231C FF022390 */  lbu        $v1, (0x1F8002FF & 0xFFFF)($at)
    /* 92B20 800A2320 FF00A530 */  andi       $a1, $a1, 0xFF
    /* 92B24 800A2324 FF006230 */  andi       $v0, $v1, 0xFF
    /* 92B28 800A2328 10004510 */  beq        $v0, $a1, .L800A236C
    /* 92B2C 800A232C 2B104500 */   sltu      $v0, $v0, $a1
    /* 92B30 800A2330 07004010 */  beqz       $v0, .L800A2350
    /* 92B34 800A2334 01006224 */   addiu     $v0, $v1, 0x1
    /* 92B38 800A2338 801F013C */  lui        $at, (0x1F8002FF >> 16)
    /* 92B3C 800A233C 21088100 */  addu       $at, $a0, $at
    /* 92B40 800A2340 FF0222A0 */  sb         $v0, (0x1F8002FF & 0xFFFF)($at)
    /* 92B44 800A2344 801F013C */  lui        $at, (0x1F8002FF >> 16)
    /* 92B48 800A2348 21088100 */  addu       $at, $a0, $at
    /* 92B4C 800A234C FF022390 */  lbu        $v1, (0x1F8002FF & 0xFFFF)($at)
  .L800A2350:
    /* 92B50 800A2350 00000000 */  nop
    /* 92B54 800A2354 2B10A300 */  sltu       $v0, $a1, $v1
    /* 92B58 800A2358 04004010 */  beqz       $v0, .L800A236C
    /* 92B5C 800A235C FFFF6224 */   addiu     $v0, $v1, -0x1
    /* 92B60 800A2360 801F013C */  lui        $at, (0x1F8002FF >> 16)
    /* 92B64 800A2364 21088100 */  addu       $at, $a0, $at
    /* 92B68 800A2368 FF0222A0 */  sb         $v0, (0x1F8002FF & 0xFFFF)($at)
  .L800A236C:
    /* 92B6C 800A236C 0800E003 */  jr         $ra
    /* 92B70 800A2370 00000000 */   nop
endlabel func_800A2310
