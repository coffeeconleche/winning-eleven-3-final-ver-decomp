nonmatching func_8003DB08, 0x80

glabel func_8003DB08
    /* 2E308 8003DB08 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2E30C 8003DB0C 2000B0AF */  sw         $s0, 0x20($sp)
    /* 2E310 8003DB10 21808000 */  addu       $s0, $a0, $zero
    /* 2E314 8003DB14 2400BFAF */  sw         $ra, 0x24($sp)
    /* 2E318 8003DB18 7370010C */  jal        func_8005C1CC
    /* 2E31C 8003DB1C 08000524 */   addiu     $a1, $zero, 0x8
    /* 2E320 8003DB20 801F023C */  lui        $v0, (0x1F8000F2 >> 16)
    /* 2E324 8003DB24 F2004284 */  lh         $v0, (0x1F8000F2 & 0xFFFF)($v0)
    /* 2E328 8003DB28 00000000 */  nop
    /* 2E32C 8003DB2C 05004018 */  blez       $v0, .L8003DB44
    /* 2E330 8003DB30 21184000 */   addu      $v1, $v0, $zero
    /* 2E334 8003DB34 04000296 */  lhu        $v0, 0x4($s0)
    /* 2E338 8003DB38 00000000 */  nop
    /* 2E33C 8003DB3C 23104300 */  subu       $v0, $v0, $v1
    /* 2E340 8003DB40 040002A6 */  sh         $v0, 0x4($s0)
  .L8003DB44:
    /* 2E344 8003DB44 21200002 */  addu       $a0, $s0, $zero
    /* 2E348 8003DB48 7370010C */  jal        func_8005C1CC
    /* 2E34C 8003DB4C 0B000524 */   addiu     $a1, $zero, 0xB
    /* 2E350 8003DB50 801F023C */  lui        $v0, (0x1F8000F2 >> 16)
    /* 2E354 8003DB54 F2004284 */  lh         $v0, (0x1F8000F2 & 0xFFFF)($v0)
    /* 2E358 8003DB58 00000000 */  nop
    /* 2E35C 8003DB5C 05004018 */  blez       $v0, .L8003DB74
    /* 2E360 8003DB60 21184000 */   addu      $v1, $v0, $zero
    /* 2E364 8003DB64 04000296 */  lhu        $v0, 0x4($s0)
    /* 2E368 8003DB68 00000000 */  nop
    /* 2E36C 8003DB6C 23104300 */  subu       $v0, $v0, $v1
    /* 2E370 8003DB70 040002A6 */  sh         $v0, 0x4($s0)
  .L8003DB74:
    /* 2E374 8003DB74 2400BF8F */  lw         $ra, 0x24($sp)
    /* 2E378 8003DB78 2000B08F */  lw         $s0, 0x20($sp)
    /* 2E37C 8003DB7C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2E380 8003DB80 0800E003 */  jr         $ra
    /* 2E384 8003DB84 00000000 */   nop
endlabel func_8003DB08
