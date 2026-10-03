nonmatching func_8005AD84, 0x60

glabel func_8005AD84
    /* 4B584 8005AD84 00240400 */  sll        $a0, $a0, 16
    /* 4B588 8005AD88 03240400 */  sra        $a0, $a0, 16
    /* 4B58C 8005AD8C 00340600 */  sll        $a2, $a2, 16
    /* 4B590 8005AD90 1000A887 */  lh         $t0, 0x10($sp)
    /* 4B594 8005AD94 03340600 */  sra        $a2, $a2, 16
    /* 4B598 8005AD98 2318C800 */  subu       $v1, $a2, $t0
    /* 4B59C 8005AD9C 2A186400 */  slt        $v1, $v1, $a0
    /* 4B5A0 8005ADA0 0E006010 */  beqz       $v1, .L8005ADDC
    /* 4B5A4 8005ADA4 21100000 */   addu      $v0, $zero, $zero
    /* 4B5A8 8005ADA8 2118C800 */  addu       $v1, $a2, $t0
    /* 4B5AC 8005ADAC 2A188300 */  slt        $v1, $a0, $v1
    /* 4B5B0 8005ADB0 0A006010 */  beqz       $v1, .L8005ADDC
    /* 4B5B4 8005ADB4 001C0500 */   sll       $v1, $a1, 16
    /* 4B5B8 8005ADB8 032C0300 */  sra        $a1, $v1, 16
    /* 4B5BC 8005ADBC 001C0700 */  sll        $v1, $a3, 16
    /* 4B5C0 8005ADC0 03240300 */  sra        $a0, $v1, 16
    /* 4B5C4 8005ADC4 23188800 */  subu       $v1, $a0, $t0
    /* 4B5C8 8005ADC8 2A186500 */  slt        $v1, $v1, $a1
    /* 4B5CC 8005ADCC 03006010 */  beqz       $v1, .L8005ADDC
    /* 4B5D0 8005ADD0 00000000 */   nop
    /* 4B5D4 8005ADD4 21108800 */  addu       $v0, $a0, $t0
    /* 4B5D8 8005ADD8 2A10A200 */  slt        $v0, $a1, $v0
  .L8005ADDC:
    /* 4B5DC 8005ADDC 0800E003 */  jr         $ra
    /* 4B5E0 8005ADE0 00000000 */   nop
endlabel func_8005AD84
