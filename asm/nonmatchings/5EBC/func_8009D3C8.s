nonmatching func_8009D3C8, 0x7C

glabel func_8009D3C8
    /* 8DBC8 8009D3C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8DBCC 8009D3CC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8DBD0 8009D3D0 21808000 */  addu       $s0, $a0, $zero
    /* 8DBD4 8009D3D4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 8DBD8 8009D3D8 98030392 */  lbu        $v1, 0x398($s0)
    /* 8DBDC 8009D3DC 801F013C */  lui        $at, (0x1F8002CF >> 16)
    /* 8DBE0 8009D3E0 21086100 */  addu       $at, $v1, $at
    /* 8DBE4 8009D3E4 CF022290 */  lbu        $v0, (0x1F8002CF & 0xFFFF)($at)
    /* 8DBE8 8009D3E8 1180043C */  lui        $a0, %hi(D_8010C1D8)
    /* 8DBEC 8009D3EC D8C18424 */  addiu      $a0, $a0, %lo(D_8010C1D8)
    /* 8DBF0 8009D3F0 05004014 */  bnez       $v0, .L8009D408
    /* 8DBF4 8009D3F4 21106400 */   addu      $v0, $v1, $a0
    /* 8DBF8 8009D3F8 21200002 */  addu       $a0, $s0, $zero
    /* 8DBFC 8009D3FC E20380A0 */  sb         $zero, 0x3E2($a0)
    /* 8DC00 8009D400 0A750208 */  j          .L8009D428
    /* 8DC04 8009D404 E30380A0 */   sb        $zero, 0x3E3($a0)
  .L8009D408:
    /* 8DC08 8009D408 0D004390 */  lbu        $v1, 0xD($v0)
    /* 8DC0C 8009D40C 07000224 */  addiu      $v0, $zero, 0x7
    /* 8DC10 8009D410 05006214 */  bne        $v1, $v0, .L8009D428
    /* 8DC14 8009D414 21200002 */   addu      $a0, $s0, $zero
    /* 8DC18 8009D418 A47D020C */  jal        func_8009F690
    /* 8DC1C 8009D41C 21200002 */   addu      $a0, $s0, $zero
    /* 8DC20 8009D420 03004014 */  bnez       $v0, .L8009D430
    /* 8DC24 8009D424 21200002 */   addu      $a0, $s0, $zero
  .L8009D428:
    /* 8DC28 8009D428 E173020C */  jal        func_8009CF84
    /* 8DC2C 8009D42C 00000000 */   nop
  .L8009D430:
    /* 8DC30 8009D430 1400BF8F */  lw         $ra, 0x14($sp)
    /* 8DC34 8009D434 1000B08F */  lw         $s0, 0x10($sp)
    /* 8DC38 8009D438 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 8DC3C 8009D43C 0800E003 */  jr         $ra
    /* 8DC40 8009D440 00000000 */   nop
endlabel func_8009D3C8
