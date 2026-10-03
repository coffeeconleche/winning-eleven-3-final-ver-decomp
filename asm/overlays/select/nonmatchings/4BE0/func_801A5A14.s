nonmatching func_801A5A14, 0x174

glabel func_801A5A14
    /* 1CA9C 801A5A14 0500822C */  sltiu      $v0, $a0, 0x5
    /* 1CAA0 801A5A18 59004010 */  beqz       $v0, .L801A5B80
    /* 1CAA4 801A5A1C 80100400 */   sll       $v0, $a0, 2
    /* 1CAA8 801A5A20 1980013C */  lui        $at, %hi(jtbl_8018A1D8)
    /* 1CAAC 801A5A24 21082200 */  addu       $at, $at, $v0
    /* 1CAB0 801A5A28 D8A1228C */  lw         $v0, %lo(jtbl_8018A1D8)($at)
    /* 1CAB4 801A5A2C 00000000 */  nop
    /* 1CAB8 801A5A30 08004000 */  jr         $v0
    /* 1CABC 801A5A34 00000000 */   nop
  jlabel .L801A5A38
    /* 1CAC0 801A5A38 21300000 */  addu       $a2, $zero, $zero
    /* 1CAC4 801A5A3C FF00A230 */  andi       $v0, $a1, 0xFF
    /* 1CAC8 801A5A40 80280200 */  sll        $a1, $v0, 2
    /* 1CACC 801A5A44 1E80073C */  lui        $a3, %hi(D_801D8078)
    /* 1CAD0 801A5A48 7880E724 */  addiu      $a3, $a3, %lo(D_801D8078)
    /* 1CAD4 801A5A4C FF000424 */  addiu      $a0, $zero, 0xFF
  .L801A5A50:
    /* 1CAD8 801A5A50 2110A600 */  addu       $v0, $a1, $a2
    /* 1CADC 801A5A54 0100C624 */  addiu      $a2, $a2, 0x1
    /* 1CAE0 801A5A58 C0180200 */  sll        $v1, $v0, 3
    /* 1CAE4 801A5A5C 21186200 */  addu       $v1, $v1, $v0
    /* 1CAE8 801A5A60 80180300 */  sll        $v1, $v1, 2
    /* 1CAEC 801A5A64 21186700 */  addu       $v1, $v1, $a3
    /* 1CAF0 801A5A68 0400C228 */  slti       $v0, $a2, 0x4
    /* 1CAF4 801A5A6C 040064A0 */  sb         $a0, 0x4($v1)
    /* 1CAF8 801A5A70 050064A0 */  sb         $a0, 0x5($v1)
    /* 1CAFC 801A5A74 060064A0 */  sb         $a0, 0x6($v1)
    /* 1CB00 801A5A78 0C0060A0 */  sb         $zero, 0xC($v1)
    /* 1CB04 801A5A7C 0D0060A0 */  sb         $zero, 0xD($v1)
    /* 1CB08 801A5A80 0E0064A0 */  sb         $a0, 0xE($v1)
    /* 1CB0C 801A5A84 140064A0 */  sb         $a0, 0x14($v1)
    /* 1CB10 801A5A88 150064A0 */  sb         $a0, 0x15($v1)
    /* 1CB14 801A5A8C 160064A0 */  sb         $a0, 0x16($v1)
    /* 1CB18 801A5A90 1C0060A0 */  sb         $zero, 0x1C($v1)
    /* 1CB1C 801A5A94 1D0060A0 */  sb         $zero, 0x1D($v1)
    /* 1CB20 801A5A98 EDFF4014 */  bnez       $v0, .L801A5A50
    /* 1CB24 801A5A9C 1E0064A0 */   sb        $a0, 0x1E($v1)
    /* 1CB28 801A5AA0 E0960608 */  j          .L801A5B80
    /* 1CB2C 801A5AA4 00000000 */   nop
  jlabel .L801A5AA8
    /* 1CB30 801A5AA8 21300000 */  addu       $a2, $zero, $zero
    /* 1CB34 801A5AAC FF00A230 */  andi       $v0, $a1, 0xFF
    /* 1CB38 801A5AB0 80280200 */  sll        $a1, $v0, 2
    /* 1CB3C 801A5AB4 1E80073C */  lui        $a3, %hi(D_801D8078)
    /* 1CB40 801A5AB8 7880E724 */  addiu      $a3, $a3, %lo(D_801D8078)
    /* 1CB44 801A5ABC FF000424 */  addiu      $a0, $zero, 0xFF
  .L801A5AC0:
    /* 1CB48 801A5AC0 2110A600 */  addu       $v0, $a1, $a2
    /* 1CB4C 801A5AC4 0100C624 */  addiu      $a2, $a2, 0x1
    /* 1CB50 801A5AC8 C0180200 */  sll        $v1, $v0, 3
    /* 1CB54 801A5ACC 21186200 */  addu       $v1, $v1, $v0
    /* 1CB58 801A5AD0 80180300 */  sll        $v1, $v1, 2
    /* 1CB5C 801A5AD4 21186700 */  addu       $v1, $v1, $a3
    /* 1CB60 801A5AD8 0400C228 */  slti       $v0, $a2, 0x4
    /* 1CB64 801A5ADC 040064A0 */  sb         $a0, 0x4($v1)
    /* 1CB68 801A5AE0 050064A0 */  sb         $a0, 0x5($v1)
    /* 1CB6C 801A5AE4 060064A0 */  sb         $a0, 0x6($v1)
    /* 1CB70 801A5AE8 0C0064A0 */  sb         $a0, 0xC($v1)
    /* 1CB74 801A5AEC 0D0060A0 */  sb         $zero, 0xD($v1)
    /* 1CB78 801A5AF0 0E0060A0 */  sb         $zero, 0xE($v1)
    /* 1CB7C 801A5AF4 140064A0 */  sb         $a0, 0x14($v1)
    /* 1CB80 801A5AF8 150064A0 */  sb         $a0, 0x15($v1)
    /* 1CB84 801A5AFC 160064A0 */  sb         $a0, 0x16($v1)
    /* 1CB88 801A5B00 1C0064A0 */  sb         $a0, 0x1C($v1)
    /* 1CB8C 801A5B04 1D0060A0 */  sb         $zero, 0x1D($v1)
    /* 1CB90 801A5B08 EDFF4014 */  bnez       $v0, .L801A5AC0
    /* 1CB94 801A5B0C 1E0060A0 */   sb        $zero, 0x1E($v1)
    /* 1CB98 801A5B10 E0960608 */  j          .L801A5B80
    /* 1CB9C 801A5B14 00000000 */   nop
  jlabel .L801A5B18
    /* 1CBA0 801A5B18 21300000 */  addu       $a2, $zero, $zero
    /* 1CBA4 801A5B1C FF00A230 */  andi       $v0, $a1, 0xFF
    /* 1CBA8 801A5B20 80280200 */  sll        $a1, $v0, 2
    /* 1CBAC 801A5B24 1E80073C */  lui        $a3, %hi(D_801D8078)
    /* 1CBB0 801A5B28 7880E724 */  addiu      $a3, $a3, %lo(D_801D8078)
    /* 1CBB4 801A5B2C FF000424 */  addiu      $a0, $zero, 0xFF
  .L801A5B30:
    /* 1CBB8 801A5B30 2110A600 */  addu       $v0, $a1, $a2
    /* 1CBBC 801A5B34 0100C624 */  addiu      $a2, $a2, 0x1
    /* 1CBC0 801A5B38 C0180200 */  sll        $v1, $v0, 3
    /* 1CBC4 801A5B3C 21186200 */  addu       $v1, $v1, $v0
    /* 1CBC8 801A5B40 80180300 */  sll        $v1, $v1, 2
    /* 1CBCC 801A5B44 21186700 */  addu       $v1, $v1, $a3
    /* 1CBD0 801A5B48 0400C228 */  slti       $v0, $a2, 0x4
    /* 1CBD4 801A5B4C 040064A0 */  sb         $a0, 0x4($v1)
    /* 1CBD8 801A5B50 050064A0 */  sb         $a0, 0x5($v1)
    /* 1CBDC 801A5B54 060064A0 */  sb         $a0, 0x6($v1)
    /* 1CBE0 801A5B58 0C0064A0 */  sb         $a0, 0xC($v1)
    /* 1CBE4 801A5B5C 0D0064A0 */  sb         $a0, 0xD($v1)
    /* 1CBE8 801A5B60 0E0060A0 */  sb         $zero, 0xE($v1)
    /* 1CBEC 801A5B64 140064A0 */  sb         $a0, 0x14($v1)
    /* 1CBF0 801A5B68 150064A0 */  sb         $a0, 0x15($v1)
    /* 1CBF4 801A5B6C 160064A0 */  sb         $a0, 0x16($v1)
    /* 1CBF8 801A5B70 1C0064A0 */  sb         $a0, 0x1C($v1)
    /* 1CBFC 801A5B74 1D0064A0 */  sb         $a0, 0x1D($v1)
    /* 1CC00 801A5B78 EDFF4014 */  bnez       $v0, .L801A5B30
    /* 1CC04 801A5B7C 1E0060A0 */   sb        $zero, 0x1E($v1)
  .L801A5B80:
    /* 1CC08 801A5B80 0800E003 */  jr         $ra
    /* 1CC0C 801A5B84 00000000 */   nop
endlabel func_801A5A14
