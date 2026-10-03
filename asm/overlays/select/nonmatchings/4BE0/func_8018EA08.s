nonmatching func_8018EA08, 0x84

glabel func_8018EA08
    /* 5A90 8018EA08 FFFFC630 */  andi       $a2, $a2, 0xFFFF
    /* 5A94 8018EA0C 0600C010 */  beqz       $a2, .L8018EA28
    /* 5A98 8018EA10 FFFFA230 */   andi      $v0, $a1, 0xFFFF
    /* 5A9C 8018EA14 00008994 */  lhu        $t1, 0x0($a0)
    /* 5AA0 8018EA18 00000000 */  nop
    /* 5AA4 8018EA1C 23184900 */  subu       $v1, $v0, $t1
    /* 5AA8 8018EA20 03006014 */  bnez       $v1, .L8018EA30
    /* 5AAC 8018EA24 00000000 */   nop
  .L8018EA28:
    /* 5AB0 8018EA28 A13A0608 */  j          .L8018EA84
    /* 5AB4 8018EA2C 01000224 */   addiu     $v0, $zero, 0x1
  .L8018EA30:
    /* 5AB8 8018EA30 02006104 */  bgez       $v1, .L8018EA3C
    /* 5ABC 8018EA34 2140C000 */   addu      $t0, $a2, $zero
    /* 5AC0 8018EA38 23400800 */  negu       $t0, $t0
  .L8018EA3C:
    /* 5AC4 8018EA3C 02006104 */  bgez       $v1, .L8018EA48
    /* 5AC8 8018EA40 00000000 */   nop
    /* 5ACC 8018EA44 23180300 */  negu       $v1, $v1
  .L8018EA48:
    /* 5AD0 8018EA48 2A106600 */  slt        $v0, $v1, $a2
    /* 5AD4 8018EA4C 06004014 */  bnez       $v0, .L8018EA68
    /* 5AD8 8018EA50 21102801 */   addu      $v0, $t1, $t0
    /* 5ADC 8018EA54 0A00E010 */  beqz       $a3, .L8018EA80
    /* 5AE0 8018EA58 000082A4 */   sh        $v0, 0x0($a0)
    /* 5AE4 8018EA5C 0000E294 */  lhu        $v0, 0x0($a3)
    /* 5AE8 8018EA60 9E3A0608 */  j          .L8018EA78
    /* 5AEC 8018EA64 43180800 */   sra       $v1, $t0, 1
  .L8018EA68:
    /* 5AF0 8018EA68 0500E010 */  beqz       $a3, .L8018EA80
    /* 5AF4 8018EA6C 000085A4 */   sh        $a1, 0x0($a0)
    /* 5AF8 8018EA70 0000E294 */  lhu        $v0, 0x0($a3)
    /* 5AFC 8018EA74 43180300 */  sra        $v1, $v1, 1
  .L8018EA78:
    /* 5B00 8018EA78 23104300 */  subu       $v0, $v0, $v1
    /* 5B04 8018EA7C 0000E2A4 */  sh         $v0, 0x0($a3)
  .L8018EA80:
    /* 5B08 8018EA80 21100000 */  addu       $v0, $zero, $zero
  .L8018EA84:
    /* 5B0C 8018EA84 0800E003 */  jr         $ra
    /* 5B10 8018EA88 00000000 */   nop
endlabel func_8018EA08
