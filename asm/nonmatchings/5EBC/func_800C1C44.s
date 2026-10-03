nonmatching func_800C1C44, 0x44

glabel func_800C1C44
    /* B2444 800C1C44 0700C014 */  bnez       $a2, .L800C1C64
    /* B2448 800C1C48 40100400 */   sll       $v0, $a0, 1
    /* B244C 800C1C4C 0D80033C */  lui        $v1, %hi(D_800D558C)
    /* B2450 800C1C50 8C55638C */  lw         $v1, %lo(D_800D558C)($v1)
    /* B2454 800C1C54 00000000 */  nop
    /* B2458 800C1C58 21104300 */  addu       $v0, $v0, $v1
    /* B245C 800C1C5C 20070308 */  j          .L800C1C80
    /* B2460 800C1C60 000045A4 */   sh        $a1, 0x0($v0)
  .L800C1C64:
    /* B2464 800C1C64 0D80043C */  lui        $a0, %hi(D_800D558C)
    /* B2468 800C1C68 8C55848C */  lw         $a0, %lo(D_800D558C)($a0)
    /* B246C 800C1C6C 0D80033C */  lui        $v1, %hi(D_800D55B4)
    /* B2470 800C1C70 B455638C */  lw         $v1, %lo(D_800D55B4)($v1)
    /* B2474 800C1C74 21104400 */  addu       $v0, $v0, $a0
    /* B2478 800C1C78 06186500 */  srlv       $v1, $a1, $v1
    /* B247C 800C1C7C 000043A4 */  sh         $v1, 0x0($v0)
  .L800C1C80:
    /* B2480 800C1C80 0800E003 */  jr         $ra
    /* B2484 800C1C84 00000000 */   nop
endlabel func_800C1C44
