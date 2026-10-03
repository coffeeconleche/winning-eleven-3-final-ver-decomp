nonmatching func_8006FC08, 0xF4

glabel func_8006FC08
    /* 60408 8006FC08 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 6040C 8006FC0C 3800B0AF */  sw         $s0, 0x38($sp)
    /* 60410 8006FC10 2180A000 */  addu       $s0, $a1, $zero
    /* 60414 8006FC14 FF008230 */  andi       $v0, $a0, 0xFF
    /* 60418 8006FC18 1000A427 */  addiu      $a0, $sp, 0x10
    /* 6041C 8006FC1C 1080033C */  lui        $v1, %hi(D_800FF748)
    /* 60420 8006FC20 48F76324 */  addiu      $v1, $v1, %lo(D_800FF748)
    /* 60424 8006FC24 80100200 */  sll        $v0, $v0, 2
    /* 60428 8006FC28 21104300 */  addu       $v0, $v0, $v1
    /* 6042C 8006FC2C 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 60430 8006FC30 1800B127 */  addiu      $s1, $sp, 0x18
    /* 60434 8006FC34 21282002 */  addu       $a1, $s1, $zero
    /* 60438 8006FC38 4400BFAF */  sw         $ra, 0x44($sp)
    /* 6043C 8006FC3C 4000B2AF */  sw         $s2, 0x40($sp)
    /* 60440 8006FC40 A67F4394 */  lhu        $v1, 0x7FA6($v0)
    /* 60444 8006FC44 2190C000 */  addu       $s2, $a2, $zero
    /* 60448 8006FC48 1000A3A7 */  sh         $v1, 0x10($sp)
    /* 6044C 8006FC4C A47F4394 */  lhu        $v1, 0x7FA4($v0)
    /* 60450 8006FC50 10000224 */  addiu      $v0, $zero, 0x10
    /* 60454 8006FC54 1400A2A7 */  sh         $v0, 0x14($sp)
    /* 60458 8006FC58 01000224 */  addiu      $v0, $zero, 0x1
    /* 6045C 8006FC5C 1600A2A7 */  sh         $v0, 0x16($sp)
    /* 60460 8006FC60 10BA020C */  jal        func_800AE840
    /* 60464 8006FC64 1200A3A7 */   sh        $v1, 0x12($sp)
    /* 60468 8006FC68 4DB9020C */  jal        func_800AE534
    /* 6046C 8006FC6C 21200000 */   addu      $a0, $zero, $zero
    /* 60470 8006FC70 01000526 */  addiu      $a1, $s0, 0x1
    /* 60474 8006FC74 FF00A430 */  andi       $a0, $a1, 0xFF
    /* 60478 8006FC78 FF001032 */  andi       $s0, $s0, 0xFF
    /* 6047C 8006FC7C 40801000 */  sll        $s0, $s0, 1
    /* 60480 8006FC80 21801102 */  addu       $s0, $s0, $s1
    /* 60484 8006FC84 FF004632 */  andi       $a2, $s2, 0xFF
    /* 60488 8006FC88 2B10C400 */  sltu       $v0, $a2, $a0
    /* 6048C 8006FC8C 00001096 */  lhu        $s0, 0x0($s0)
    /* 60490 8006FC90 0B004014 */  bnez       $v0, .L8006FCC0
    /* 60494 8006FC94 FF004232 */   andi      $v0, $s2, 0xFF
    /* 60498 8006FC98 0100A524 */  addiu      $a1, $a1, 0x1
  .L8006FC9C:
    /* 6049C 8006FC9C 40100400 */  sll        $v0, $a0, 1
    /* 604A0 8006FCA0 21105100 */  addu       $v0, $v0, $s1
    /* 604A4 8006FCA4 00004394 */  lhu        $v1, 0x0($v0)
    /* 604A8 8006FCA8 FF00A430 */  andi       $a0, $a1, 0xFF
    /* 604AC 8006FCAC FEFF43A4 */  sh         $v1, -0x2($v0)
    /* 604B0 8006FCB0 2B10C400 */  sltu       $v0, $a2, $a0
    /* 604B4 8006FCB4 F9FF4010 */  beqz       $v0, .L8006FC9C
    /* 604B8 8006FCB8 0100A524 */   addiu     $a1, $a1, 0x1
    /* 604BC 8006FCBC FF004232 */  andi       $v0, $s2, 0xFF
  .L8006FCC0:
    /* 604C0 8006FCC0 40100200 */  sll        $v0, $v0, 1
    /* 604C4 8006FCC4 21105100 */  addu       $v0, $v0, $s1
    /* 604C8 8006FCC8 000050A4 */  sh         $s0, 0x0($v0)
    /* 604CC 8006FCCC 1000A427 */  addiu      $a0, $sp, 0x10
    /* 604D0 8006FCD0 F8B9020C */  jal        func_800AE7E0
    /* 604D4 8006FCD4 1800A527 */   addiu     $a1, $sp, 0x18
    /* 604D8 8006FCD8 4DB9020C */  jal        func_800AE534
    /* 604DC 8006FCDC 21200000 */   addu      $a0, $zero, $zero
    /* 604E0 8006FCE0 4400BF8F */  lw         $ra, 0x44($sp)
    /* 604E4 8006FCE4 4000B28F */  lw         $s2, 0x40($sp)
    /* 604E8 8006FCE8 3C00B18F */  lw         $s1, 0x3C($sp)
    /* 604EC 8006FCEC 3800B08F */  lw         $s0, 0x38($sp)
    /* 604F0 8006FCF0 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 604F4 8006FCF4 0800E003 */  jr         $ra
    /* 604F8 8006FCF8 00000000 */   nop
endlabel func_8006FC08
