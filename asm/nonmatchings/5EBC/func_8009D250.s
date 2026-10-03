nonmatching func_8009D250, 0x10C

glabel func_8009D250
    /* 8DA50 8009D250 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8DA54 8009D254 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8DA58 8009D258 21808000 */  addu       $s0, $a0, $zero
    /* 8DA5C 8009D25C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 8DA60 8009D260 98030292 */  lbu        $v0, 0x398($s0)
    /* 8DA64 8009D264 801F013C */  lui        $at, (0x1F8002CF >> 16)
    /* 8DA68 8009D268 21084100 */  addu       $at, $v0, $at
    /* 8DA6C 8009D26C CF022390 */  lbu        $v1, (0x1F8002CF & 0xFFFF)($at)
    /* 8DA70 8009D270 01000224 */  addiu      $v0, $zero, 0x1
    /* 8DA74 8009D274 2A006214 */  bne        $v1, $v0, .L8009D320
    /* 8DA78 8009D278 00000000 */   nop
    /* 8DA7C 8009D27C 99030292 */  lbu        $v0, 0x399($s0)
    /* 8DA80 8009D280 8D030492 */  lbu        $a0, 0x38D($s0)
    /* 8DA84 8009D284 40100200 */  sll        $v0, $v0, 1
    /* 8DA88 8009D288 801F013C */  lui        $at, (0x1F80031F >> 16)
    /* 8DA8C 8009D28C 21084100 */  addu       $at, $v0, $at
    /* 8DA90 8009D290 1F032290 */  lbu        $v0, (0x1F80031F & 0xFFFF)($at)
    /* 8DA94 8009D294 00000000 */  nop
    /* 8DA98 8009D298 21008214 */  bne        $a0, $v0, .L8009D320
    /* 8DA9C 8009D29C 00000000 */   nop
    /* 8DAA0 8009D2A0 2EBA023C */  lui        $v0, (0xBA2E8BA3 >> 16)
    /* 8DAA4 8009D2A4 A38B4234 */  ori        $v0, $v0, (0xBA2E8BA3 & 0xFFFF)
    /* 8DAA8 8009D2A8 19008200 */  multu      $a0, $v0
    /* 8DAAC 8009D2AC 8B2E023C */  lui        $v0, (0x2E8BA2E9 >> 16)
    /* 8DAB0 8009D2B0 10180000 */  mfhi       $v1
    /* 8DAB4 8009D2B4 801F053C */  lui        $a1, (0x1F800290 >> 16)
    /* 8DAB8 8009D2B8 9002A58C */  lw         $a1, (0x1F800290 & 0xFFFF)($a1)
    /* 8DABC 8009D2BC E9A24234 */  ori        $v0, $v0, (0x2E8BA2E9 & 0xFFFF)
    /* 8DAC0 8009D2C0 1800A200 */  mult       $a1, $v0
    /* 8DAC4 8009D2C4 02110300 */  srl        $v0, $v1, 4
    /* 8DAC8 8009D2C8 40180200 */  sll        $v1, $v0, 1
    /* 8DACC 8009D2CC 21186200 */  addu       $v1, $v1, $v0
    /* 8DAD0 8009D2D0 80180300 */  sll        $v1, $v1, 2
    /* 8DAD4 8009D2D4 23186200 */  subu       $v1, $v1, $v0
    /* 8DAD8 8009D2D8 40180300 */  sll        $v1, $v1, 1
    /* 8DADC 8009D2DC 23188300 */  subu       $v1, $a0, $v1
    /* 8DAE0 8009D2E0 FF006330 */  andi       $v1, $v1, 0xFF
    /* 8DAE4 8009D2E4 C3170500 */  sra        $v0, $a1, 31
    /* 8DAE8 8009D2E8 10300000 */  mfhi       $a2
    /* 8DAEC 8009D2EC 83200600 */  sra        $a0, $a2, 2
    /* 8DAF0 8009D2F0 23208200 */  subu       $a0, $a0, $v0
    /* 8DAF4 8009D2F4 40100400 */  sll        $v0, $a0, 1
    /* 8DAF8 8009D2F8 21104400 */  addu       $v0, $v0, $a0
    /* 8DAFC 8009D2FC 80100200 */  sll        $v0, $v0, 2
    /* 8DB00 8009D300 23104400 */  subu       $v0, $v0, $a0
    /* 8DB04 8009D304 40100200 */  sll        $v0, $v0, 1
    /* 8DB08 8009D308 2328A200 */  subu       $a1, $a1, $v0
    /* 8DB0C 8009D30C 04006510 */  beq        $v1, $a1, .L8009D320
    /* 8DB10 8009D310 00000000 */   nop
    /* 8DB14 8009D314 D60300A6 */  sh         $zero, 0x3D6($s0)
    /* 8DB18 8009D318 D2740208 */  j          .L8009D348
    /* 8DB1C 8009D31C 9C0300A2 */   sb        $zero, 0x39C($s0)
  .L8009D320:
    /* 8DB20 8009D320 EE73010C */  jal        func_8005CFB8
    /* 8DB24 8009D324 21200002 */   addu      $a0, $s0, $zero
    /* 8DB28 8009D328 801F023C */  lui        $v0, (0x1F80029A >> 16)
    /* 8DB2C 8009D32C 9A024290 */  lbu        $v0, (0x1F80029A & 0xFFFF)($v0)
    /* 8DB30 8009D330 03000324 */  addiu      $v1, $zero, 0x3
    /* 8DB34 8009D334 FF004230 */  andi       $v0, $v0, 0xFF
    /* 8DB38 8009D338 03004310 */  beq        $v0, $v1, .L8009D348
    /* 8DB3C 8009D33C 00000000 */   nop
    /* 8DB40 8009D340 E20300A2 */  sb         $zero, 0x3E2($s0)
    /* 8DB44 8009D344 E30300A2 */  sb         $zero, 0x3E3($s0)
  .L8009D348:
    /* 8DB48 8009D348 1400BF8F */  lw         $ra, 0x14($sp)
    /* 8DB4C 8009D34C 1000B08F */  lw         $s0, 0x10($sp)
    /* 8DB50 8009D350 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 8DB54 8009D354 0800E003 */  jr         $ra
    /* 8DB58 8009D358 00000000 */   nop
endlabel func_8009D250
