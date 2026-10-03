nonmatching func_8009D444, 0x80

glabel func_8009D444
    /* 8DC44 8009D444 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8DC48 8009D448 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8DC4C 8009D44C 8D038590 */  lbu        $a1, 0x38D($a0)
    /* 8DC50 8009D450 801F023C */  lui        $v0, (0x1F8002A9 >> 16)
    /* 8DC54 8009D454 A9024290 */  lbu        $v0, (0x1F8002A9 & 0xFFFF)($v0)
    /* 8DC58 8009D458 00000000 */  nop
    /* 8DC5C 8009D45C 1100A210 */  beq        $a1, $v0, .L8009D4A4
    /* 8DC60 8009D460 00000000 */   nop
    /* 8DC64 8009D464 98038290 */  lbu        $v0, 0x398($a0)
    /* 8DC68 8009D468 801F013C */  lui        $at, (0x1F8002CF >> 16)
    /* 8DC6C 8009D46C 21084100 */  addu       $at, $v0, $at
    /* 8DC70 8009D470 CF022390 */  lbu        $v1, (0x1F8002CF & 0xFFFF)($at)
    /* 8DC74 8009D474 01000224 */  addiu      $v0, $zero, 0x1
    /* 8DC78 8009D478 0A006210 */  beq        $v1, $v0, .L8009D4A4
    /* 8DC7C 8009D47C 00000000 */   nop
    /* 8DC80 8009D480 99038290 */  lbu        $v0, 0x399($a0)
    /* 8DC84 8009D484 00000000 */  nop
    /* 8DC88 8009D488 40100200 */  sll        $v0, $v0, 1
    /* 8DC8C 8009D48C 801F013C */  lui        $at, (0x1F80031E >> 16)
    /* 8DC90 8009D490 21084100 */  addu       $at, $v0, $at
    /* 8DC94 8009D494 1E032290 */  lbu        $v0, (0x1F80031E & 0xFFFF)($at)
    /* 8DC98 8009D498 00000000 */  nop
    /* 8DC9C 8009D49C 0500A214 */  bne        $a1, $v0, .L8009D4B4
    /* 8DCA0 8009D4A0 21100000 */   addu      $v0, $zero, $zero
  .L8009D4A4:
    /* 8DCA4 8009D4A4 E20380A0 */  sb         $zero, 0x3E2($a0)
    /* 8DCA8 8009D4A8 E173020C */  jal        func_8009CF84
    /* 8DCAC 8009D4AC E30380A0 */   sb        $zero, 0x3E3($a0)
    /* 8DCB0 8009D4B0 01000224 */  addiu      $v0, $zero, 0x1
  .L8009D4B4:
    /* 8DCB4 8009D4B4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8DCB8 8009D4B8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 8DCBC 8009D4BC 0800E003 */  jr         $ra
    /* 8DCC0 8009D4C0 00000000 */   nop
endlabel func_8009D444
