nonmatching func_800ADCB8, 0x28

glabel func_800ADCB8
    /* 9E4B8 800ADCB8 0400A010 */  beqz       $a1, .L800ADCCC
    /* 9E4BC 800ADCBC 00000000 */   nop
    /* 9E4C0 800ADCC0 07008290 */  lbu        $v0, 0x7($a0)
    /* 9E4C4 800ADCC4 36B70208 */  j          .L800ADCD8
    /* 9E4C8 800ADCC8 02004234 */   ori       $v0, $v0, 0x2
  .L800ADCCC:
    /* 9E4CC 800ADCCC 07008290 */  lbu        $v0, 0x7($a0)
    /* 9E4D0 800ADCD0 00000000 */  nop
    /* 9E4D4 800ADCD4 FD004230 */  andi       $v0, $v0, 0xFD
  .L800ADCD8:
    /* 9E4D8 800ADCD8 0800E003 */  jr         $ra
    /* 9E4DC 800ADCDC 070082A0 */   sb        $v0, 0x7($a0)
endlabel func_800ADCB8
