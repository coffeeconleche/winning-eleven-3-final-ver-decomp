nonmatching func_801A3930, 0xB4

glabel func_801A3930
    /* 1A9B8 801A3930 1080063C */  lui        $a2, %hi(D_800FF748)
    /* 1A9BC 801A3934 48F7C624 */  addiu      $a2, $a2, %lo(D_800FF748)
    /* 1A9C0 801A3938 21280000 */  addu       $a1, $zero, $zero
    /* 1A9C4 801A393C 80AB0834 */  ori        $t0, $zero, 0xAB80
    /* 1A9C8 801A3940 FF000724 */  addiu      $a3, $zero, 0xFF
    /* 1A9CC 801A3944 2120C500 */  addu       $a0, $a2, $a1
  .L801A3948:
    /* 1A9D0 801A3948 21208800 */  addu       $a0, $a0, $t0
    /* 1A9D4 801A394C 00008390 */  lbu        $v1, 0x0($a0)
    /* 1A9D8 801A3950 00000000 */  nop
    /* 1A9DC 801A3954 C0100300 */  sll        $v0, $v1, 3
    /* 1A9E0 801A3958 21104300 */  addu       $v0, $v0, $v1
    /* 1A9E4 801A395C 80100200 */  sll        $v0, $v0, 2
    /* 1A9E8 801A3960 2110C200 */  addu       $v0, $a2, $v0
    /* 1A9EC 801A3964 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1A9F0 801A3968 21084100 */  addu       $at, $v0, $at
    /* 1A9F4 801A396C 248F27A0 */  sb         $a3, -0x70DC($at)
    /* 1A9F8 801A3970 00008390 */  lbu        $v1, 0x0($a0)
    /* 1A9FC 801A3974 0100A524 */  addiu      $a1, $a1, 0x1
    /* 1AA00 801A3978 C0100300 */  sll        $v0, $v1, 3
    /* 1AA04 801A397C 21104300 */  addu       $v0, $v0, $v1
    /* 1AA08 801A3980 80100200 */  sll        $v0, $v0, 2
    /* 1AA0C 801A3984 2110C200 */  addu       $v0, $a2, $v0
    /* 1AA10 801A3988 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1AA14 801A398C 21084100 */  addu       $at, $v0, $at
    /* 1AA18 801A3990 258F27A0 */  sb         $a3, -0x70DB($at)
    /* 1AA1C 801A3994 2000A228 */  slti       $v0, $a1, 0x20
    /* 1AA20 801A3998 EBFF4014 */  bnez       $v0, .L801A3948
    /* 1AA24 801A399C 2120C500 */   addu      $a0, $a2, $a1
    /* 1AA28 801A39A0 2B000524 */  addiu      $a1, $zero, 0x2B
    /* 1AA2C 801A39A4 1E80023C */  lui        $v0, %hi(D_801DADB3)
    /* 1AA30 801A39A8 B3AD4224 */  addiu      $v0, $v0, %lo(D_801DADB3)
  .L801A39AC:
    /* 1AA34 801A39AC 000040A0 */  sb         $zero, 0x0($v0)
    /* 1AA38 801A39B0 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 1AA3C 801A39B4 FDFFA104 */  bgez       $a1, .L801A39AC
    /* 1AA40 801A39B8 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 1AA44 801A39BC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 1AA48 801A39C0 2108C100 */  addu       $at, $a2, $at
    /* 1AA4C 801A39C4 E2AB2290 */  lbu        $v0, -0x541E($at)
    /* 1AA50 801A39C8 00000000 */  nop
    /* 1AA54 801A39CC 03004014 */  bnez       $v0, .L801A39DC
    /* 1AA58 801A39D0 03000224 */   addiu     $v0, $zero, 0x3
    /* 1AA5C 801A39D4 1E80013C */  lui        $at, %hi(D_801DADB3)
    /* 1AA60 801A39D8 B3AD22A0 */  sb         $v0, %lo(D_801DADB3)($at)
  .L801A39DC:
    /* 1AA64 801A39DC 0800E003 */  jr         $ra
    /* 1AA68 801A39E0 00000000 */   nop
endlabel func_801A3930
