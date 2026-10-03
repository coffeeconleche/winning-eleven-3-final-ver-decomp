nonmatching func_800B8550, 0xD4

glabel func_800B8550
    /* A8D50 800B8550 0D80033C */  lui        $v1, %hi(D_800D3C14)
    /* A8D54 800B8554 143C638C */  lw         $v1, %lo(D_800D3C14)($v1)
    /* A8D58 800B8558 01000224 */  addiu      $v0, $zero, 0x1
    /* A8D5C 800B855C 000062A0 */  sb         $v0, 0x0($v1)
    /* A8D60 800B8560 0D80023C */  lui        $v0, %hi(D_800D3C20)
    /* A8D64 800B8564 203C428C */  lw         $v0, %lo(D_800D3C20)($v0)
    /* A8D68 800B8568 00000000 */  nop
    /* A8D6C 800B856C 00004290 */  lbu        $v0, 0x0($v0)
    /* A8D70 800B8570 00000000 */  nop
    /* A8D74 800B8574 07004230 */  andi       $v0, $v0, 0x7
    /* A8D78 800B8578 16004010 */  beqz       $v0, .L800B85D4
    /* A8D7C 800B857C 01000424 */   addiu     $a0, $zero, 0x1
    /* A8D80 800B8580 07000324 */  addiu      $v1, $zero, 0x7
  .L800B8584:
    /* A8D84 800B8584 0D80023C */  lui        $v0, %hi(D_800D3C14)
    /* A8D88 800B8588 143C428C */  lw         $v0, %lo(D_800D3C14)($v0)
    /* A8D8C 800B858C 00000000 */  nop
    /* A8D90 800B8590 000044A0 */  sb         $a0, 0x0($v0)
    /* A8D94 800B8594 0D80023C */  lui        $v0, %hi(D_800D3C20)
    /* A8D98 800B8598 203C428C */  lw         $v0, %lo(D_800D3C20)($v0)
    /* A8D9C 800B859C 00000000 */  nop
    /* A8DA0 800B85A0 000043A0 */  sb         $v1, 0x0($v0)
    /* A8DA4 800B85A4 0D80023C */  lui        $v0, %hi(D_800D3C1C)
    /* A8DA8 800B85A8 1C3C428C */  lw         $v0, %lo(D_800D3C1C)($v0)
    /* A8DAC 800B85AC 00000000 */  nop
    /* A8DB0 800B85B0 000043A0 */  sb         $v1, 0x0($v0)
    /* A8DB4 800B85B4 0D80023C */  lui        $v0, %hi(D_800D3C20)
    /* A8DB8 800B85B8 203C428C */  lw         $v0, %lo(D_800D3C20)($v0)
    /* A8DBC 800B85BC 00000000 */  nop
    /* A8DC0 800B85C0 00004290 */  lbu        $v0, 0x0($v0)
    /* A8DC4 800B85C4 00000000 */  nop
    /* A8DC8 800B85C8 07004230 */  andi       $v0, $v0, 0x7
    /* A8DCC 800B85CC EDFF4014 */  bnez       $v0, .L800B8584
    /* A8DD0 800B85D0 00000000 */   nop
  .L800B85D4:
    /* A8DD4 800B85D4 0D80033C */  lui        $v1, %hi(D_800D3C2C)
    /* A8DD8 800B85D8 2C3C6324 */  addiu      $v1, $v1, %lo(D_800D3C2C)
    /* A8DDC 800B85DC 020060A0 */  sb         $zero, 0x2($v1)
    /* A8DE0 800B85E0 02006290 */  lbu        $v0, 0x2($v1)
    /* A8DE4 800B85E4 00000000 */  nop
    /* A8DE8 800B85E8 010062A0 */  sb         $v0, 0x1($v1)
    /* A8DEC 800B85EC 0D80043C */  lui        $a0, %hi(D_800D3C14)
    /* A8DF0 800B85F0 143C848C */  lw         $a0, %lo(D_800D3C14)($a0)
    /* A8DF4 800B85F4 02000224 */  addiu      $v0, $zero, 0x2
    /* A8DF8 800B85F8 000062A0 */  sb         $v0, 0x0($v1)
    /* A8DFC 800B85FC 000080A0 */  sb         $zero, 0x0($a0)
    /* A8E00 800B8600 0D80023C */  lui        $v0, %hi(D_800D3C20)
    /* A8E04 800B8604 203C428C */  lw         $v0, %lo(D_800D3C20)($v0)
    /* A8E08 800B8608 00000000 */  nop
    /* A8E0C 800B860C 000040A0 */  sb         $zero, 0x0($v0)
    /* A8E10 800B8610 0D80033C */  lui        $v1, %hi(D_800D3C24)
    /* A8E14 800B8614 243C638C */  lw         $v1, %lo(D_800D3C24)($v1)
    /* A8E18 800B8618 25130224 */  addiu      $v0, $zero, 0x1325
    /* A8E1C 800B861C 0800E003 */  jr         $ra
    /* A8E20 800B8620 000062AC */   sw        $v0, 0x0($v1)
endlabel func_800B8550
