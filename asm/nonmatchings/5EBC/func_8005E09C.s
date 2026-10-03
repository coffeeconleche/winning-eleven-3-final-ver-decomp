nonmatching func_8005E09C, 0x4C

glabel func_8005E09C
    /* 4E89C 8005E09C 02290500 */  srl        $a1, $a1, 4
    /* 4E8A0 8005E0A0 0E00A530 */  andi       $a1, $a1, 0xE
    /* 4E8A4 8005E0A4 0D80013C */  lui        $at, %hi(D_800C8478)
    /* 4E8A8 8005E0A8 21082500 */  addu       $at, $at, $a1
    /* 4E8AC 8005E0AC 78842394 */  lhu        $v1, %lo(D_800C8478)($at)
    /* 4E8B0 8005E0B0 FF00C630 */  andi       $a2, $a2, 0xFF
    /* 4E8B4 8005E0B4 0900C010 */  beqz       $a2, .L8005E0DC
    /* 4E8B8 8005E0B8 00000000 */   nop
    /* 4E8BC 8005E0BC 98038290 */  lbu        $v0, 0x398($a0)
    /* 4E8C0 8005E0C0 00000000 */  nop
    /* 4E8C4 8005E0C4 40100200 */  sll        $v0, $v0, 1
    /* 4E8C8 8005E0C8 801F013C */  lui        $at, (0x1F800022 >> 16)
    /* 4E8CC 8005E0CC 21084100 */  addu       $at, $v0, $at
    /* 4E8D0 8005E0D0 22002294 */  lhu        $v0, (0x1F800022 & 0xFFFF)($at)
    /* 4E8D4 8005E0D4 00000000 */  nop
    /* 4E8D8 8005E0D8 25186200 */  or         $v1, $v1, $v0
  .L8005E0DC:
    /* 4E8DC 8005E0DC D40383A4 */  sh         $v1, 0x3D4($a0)
    /* 4E8E0 8005E0E0 0800E003 */  jr         $ra
    /* 4E8E4 8005E0E4 21106000 */   addu      $v0, $v1, $zero
endlabel func_8005E09C
