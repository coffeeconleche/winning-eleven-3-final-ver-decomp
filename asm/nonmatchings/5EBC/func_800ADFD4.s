nonmatching func_800ADFD4, 0x38

glabel func_800ADFD4
    /* 9E7D4 800ADFD4 03008290 */  lbu        $v0, 0x3($a0)
    /* 9E7D8 800ADFD8 0300A390 */  lbu        $v1, 0x3($a1)
    /* 9E7DC 800ADFDC 00000000 */  nop
    /* 9E7E0 800ADFE0 21104300 */  addu       $v0, $v0, $v1
    /* 9E7E4 800ADFE4 01004324 */  addiu      $v1, $v0, 0x1
    /* 9E7E8 800ADFE8 11006228 */  slti       $v0, $v1, 0x11
    /* 9E7EC 800ADFEC 04004010 */  beqz       $v0, .L800AE000
    /* 9E7F0 800ADFF0 21100000 */   addu      $v0, $zero, $zero
    /* 9E7F4 800ADFF4 030083A0 */  sb         $v1, 0x3($a0)
    /* 9E7F8 800ADFF8 01B80208 */  j          .L800AE004
    /* 9E7FC 800ADFFC 0000A0AC */   sw        $zero, 0x0($a1)
  .L800AE000:
    /* 9E800 800AE000 FFFF0224 */  addiu      $v0, $zero, -0x1
  .L800AE004:
    /* 9E804 800AE004 0800E003 */  jr         $ra
    /* 9E808 800AE008 00000000 */   nop
endlabel func_800ADFD4
