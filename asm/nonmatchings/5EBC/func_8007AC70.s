nonmatching func_8007AC70, 0xB0

glabel func_8007AC70
    /* 6B470 8007AC70 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6B474 8007AC74 21200000 */  addu       $a0, $zero, $zero
    /* 6B478 8007AC78 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6B47C 8007AC7C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 6B480 8007AC80 DA3E010C */  jal        func_8004FB68
    /* 6B484 8007AC84 801F103C */   lui       $s0, (0x1F80029A >> 16)
    /* 6B488 8007AC88 09004010 */  beqz       $v0, .L8007ACB0
    /* 6B48C 8007AC8C 01000324 */   addiu     $v1, $zero, 0x1
    /* 6B490 8007AC90 801F023C */  lui        $v0, (0x1F800334 >> 16)
    /* 6B494 8007AC94 34034294 */  lhu        $v0, (0x1F800334 & 0xFFFF)($v0)
    /* 6B498 8007AC98 801F013C */  lui        $at, (0x1F8002A1 >> 16)
    /* 6B49C 8007AC9C A10223A0 */  sb         $v1, (0x1F8002A1 & 0xFFFF)($at)
    /* 6B4A0 8007ACA0 03004010 */  beqz       $v0, .L8007ACB0
    /* 6B4A4 8007ACA4 00000000 */   nop
    /* 6B4A8 8007ACA8 801F013C */  lui        $at, (0x1F800333 >> 16)
    /* 6B4AC 8007ACAC 330323A0 */  sb         $v1, (0x1F800333 & 0xFFFF)($at)
  .L8007ACB0:
    /* 6B4B0 8007ACB0 F402048E */  lw         $a0, (0x1F8002F4 & 0xFFFF)($s0)
    /* 6B4B4 8007ACB4 E81D010C */  jal        func_800477A0
    /* 6B4B8 8007ACB8 02000524 */   addiu     $a1, $zero, 0x2
    /* 6B4BC 8007ACBC 0F8A000C */  jal        func_8002283C
    /* 6B4C0 8007ACC0 00000000 */   nop
    /* 6B4C4 8007ACC4 B428010C */  jal        func_8004A2D0
    /* 6B4C8 8007ACC8 00000000 */   nop
    /* 6B4CC 8007ACCC 0446010C */  jal        func_80051810
    /* 6B4D0 8007ACD0 00000000 */   nop
    /* 6B4D4 8007ACD4 5A3B010C */  jal        func_8004ED68
    /* 6B4D8 8007ACD8 21200000 */   addu      $a0, $zero, $zero
    /* 6B4DC 8007ACDC 5A3B010C */  jal        func_8004ED68
    /* 6B4E0 8007ACE0 01000424 */   addiu     $a0, $zero, 0x1
    /* 6B4E4 8007ACE4 9A020292 */  lbu        $v0, (0x1F80029A & 0xFFFF)($s0)
    /* 6B4E8 8007ACE8 00000000 */  nop
    /* 6B4EC 8007ACEC FF004330 */  andi       $v1, $v0, 0xFF
    /* 6B4F0 8007ACF0 02000224 */  addiu      $v0, $zero, 0x2
    /* 6B4F4 8007ACF4 03006210 */  beq        $v1, $v0, .L8007AD04
    /* 6B4F8 8007ACF8 04000224 */   addiu     $v0, $zero, 0x4
    /* 6B4FC 8007ACFC 03006214 */  bne        $v1, $v0, .L8007AD0C
    /* 6B500 8007AD00 00000000 */   nop
  .L8007AD04:
    /* 6B504 8007AD04 1392020C */  jal        func_800A484C
    /* 6B508 8007AD08 00000000 */   nop
  .L8007AD0C:
    /* 6B50C 8007AD0C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 6B510 8007AD10 1000B08F */  lw         $s0, 0x10($sp)
    /* 6B514 8007AD14 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 6B518 8007AD18 0800E003 */  jr         $ra
    /* 6B51C 8007AD1C 00000000 */   nop
endlabel func_8007AC70
