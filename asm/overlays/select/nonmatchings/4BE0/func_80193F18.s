nonmatching func_80193F18, 0x9C

glabel func_80193F18
    /* AFA0 80193F18 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* AFA4 80193F1C 2800B0AF */  sw         $s0, 0x28($sp)
    /* AFA8 80193F20 21800000 */  addu       $s0, $zero, $zero
    /* AFAC 80193F24 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* AFB0 80193F28 FF001124 */  addiu      $s1, $zero, 0xFF
    /* AFB4 80193F2C 3000BFAF */  sw         $ra, 0x30($sp)
    /* AFB8 80193F30 FF000332 */  andi       $v1, $s0, 0xFF
  .L80193F34:
    /* AFBC 80193F34 1D80013C */  lui        $at, %hi(D_801D7DA0)
    /* AFC0 80193F38 21082300 */  addu       $at, $at, $v1
    /* AFC4 80193F3C A07D2290 */  lbu        $v0, %lo(D_801D7DA0)($at)
    /* AFC8 80193F40 00000000 */  nop
    /* AFCC 80193F44 10005114 */  bne        $v0, $s1, .L80193F88
    /* AFD0 80193F48 0B000224 */   addiu     $v0, $zero, 0xB
    /* AFD4 80193F4C 1000A2AF */  sw         $v0, 0x10($sp)
    /* AFD8 80193F50 02000224 */  addiu      $v0, $zero, 0x2
    /* AFDC 80193F54 80300300 */  sll        $a2, $v1, 2
    /* AFE0 80193F58 2130C300 */  addu       $a2, $a2, $v1
    /* AFE4 80193F5C 80300600 */  sll        $a2, $a2, 2
    /* AFE8 80193F60 2000A2AF */  sw         $v0, 0x20($sp)
    /* AFEC 80193F64 BCFF0234 */  ori        $v0, $zero, 0xFFBC
    /* AFF0 80193F68 0040043C */  lui        $a0, (0x40000000 >> 16)
    /* AFF4 80193F6C 7EFF0534 */  ori        $a1, $zero, 0xFF7E
    /* AFF8 80193F70 2130C200 */  addu       $a2, $a2, $v0
    /* AFFC 80193F74 10000724 */  addiu      $a3, $zero, 0x10
    /* B000 80193F78 1400A0AF */  sw         $zero, 0x14($sp)
    /* B004 80193F7C 1800A0AF */  sw         $zero, 0x18($sp)
    /* B008 80193F80 005A060C */  jal        func_80196800
    /* B00C 80193F84 1C00A0AF */   sw        $zero, 0x1C($sp)
  .L80193F88:
    /* B010 80193F88 01001026 */  addiu      $s0, $s0, 0x1
    /* B014 80193F8C FF000232 */  andi       $v0, $s0, 0xFF
    /* B018 80193F90 0500422C */  sltiu      $v0, $v0, 0x5
    /* B01C 80193F94 E7FF4014 */  bnez       $v0, .L80193F34
    /* B020 80193F98 FF000332 */   andi      $v1, $s0, 0xFF
    /* B024 80193F9C 3000BF8F */  lw         $ra, 0x30($sp)
    /* B028 80193FA0 2C00B18F */  lw         $s1, 0x2C($sp)
    /* B02C 80193FA4 2800B08F */  lw         $s0, 0x28($sp)
    /* B030 80193FA8 3800BD27 */  addiu      $sp, $sp, 0x38
    /* B034 80193FAC 0800E003 */  jr         $ra
    /* B038 80193FB0 00000000 */   nop
endlabel func_80193F18
