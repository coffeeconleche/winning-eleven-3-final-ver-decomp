nonmatching func_801A4948, 0x8C

glabel func_801A4948
    /* 1B9D0 801A4948 1180023C */  lui        $v0, %hi(D_80108667)
    /* 1B9D4 801A494C 67864290 */  lbu        $v0, %lo(D_80108667)($v0)
    /* 1B9D8 801A4950 00000000 */  nop
    /* 1B9DC 801A4954 0F004230 */  andi       $v0, $v0, 0xF
    /* 1B9E0 801A4958 0F004014 */  bnez       $v0, .L801A4998
    /* 1B9E4 801A495C 00000000 */   nop
    /* 1B9E8 801A4960 1D80023C */  lui        $v0, %hi(D_801D1F64)
    /* 1B9EC 801A4964 641F4290 */  lbu        $v0, %lo(D_801D1F64)($v0)
    /* 1B9F0 801A4968 FF008430 */  andi       $a0, $a0, 0xFF
    /* 1B9F4 801A496C 17004410 */  beq        $v0, $a0, .L801A49CC
    /* 1B9F8 801A4970 21180000 */   addu      $v1, $zero, $zero
    /* 1B9FC 801A4974 01006324 */  addiu      $v1, $v1, 0x1
  .L801A4978:
    /* 1BA00 801A4978 1D80013C */  lui        $at, %hi(D_801D1F64)
    /* 1BA04 801A497C 21082300 */  addu       $at, $at, $v1
    /* 1BA08 801A4980 641F2290 */  lbu        $v0, %lo(D_801D1F64)($at)
    /* 1BA0C 801A4984 00000000 */  nop
    /* 1BA10 801A4988 FBFF4414 */  bne        $v0, $a0, .L801A4978
    /* 1BA14 801A498C 01006324 */   addiu     $v1, $v1, 0x1
    /* 1BA18 801A4990 73920608 */  j          .L801A49CC
    /* 1BA1C 801A4994 FFFF6324 */   addiu     $v1, $v1, -0x1
  .L801A4998:
    /* 1BA20 801A4998 1D80023C */  lui        $v0, %hi(D_801D1F74)
    /* 1BA24 801A499C 741F4290 */  lbu        $v0, %lo(D_801D1F74)($v0)
    /* 1BA28 801A49A0 FF008430 */  andi       $a0, $a0, 0xFF
    /* 1BA2C 801A49A4 09004410 */  beq        $v0, $a0, .L801A49CC
    /* 1BA30 801A49A8 21180000 */   addu      $v1, $zero, $zero
    /* 1BA34 801A49AC 01006324 */  addiu      $v1, $v1, 0x1
  .L801A49B0:
    /* 1BA38 801A49B0 1D80013C */  lui        $at, %hi(D_801D1F74)
    /* 1BA3C 801A49B4 21082300 */  addu       $at, $at, $v1
    /* 1BA40 801A49B8 741F2290 */  lbu        $v0, %lo(D_801D1F74)($at)
    /* 1BA44 801A49BC 00000000 */  nop
    /* 1BA48 801A49C0 FBFF4414 */  bne        $v0, $a0, .L801A49B0
    /* 1BA4C 801A49C4 01006324 */   addiu     $v1, $v1, 0x1
    /* 1BA50 801A49C8 FFFF6324 */  addiu      $v1, $v1, -0x1
  .L801A49CC:
    /* 1BA54 801A49CC 0800E003 */  jr         $ra
    /* 1BA58 801A49D0 FF006230 */   andi      $v0, $v1, 0xFF
endlabel func_801A4948
