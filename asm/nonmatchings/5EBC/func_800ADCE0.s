nonmatching func_800ADCE0, 0x28

glabel func_800ADCE0
    /* 9E4E0 800ADCE0 0400A010 */  beqz       $a1, .L800ADCF4
    /* 9E4E4 800ADCE4 00000000 */   nop
    /* 9E4E8 800ADCE8 07008290 */  lbu        $v0, 0x7($a0)
    /* 9E4EC 800ADCEC 40B70208 */  j          .L800ADD00
    /* 9E4F0 800ADCF0 01004234 */   ori       $v0, $v0, 0x1
  .L800ADCF4:
    /* 9E4F4 800ADCF4 07008290 */  lbu        $v0, 0x7($a0)
    /* 9E4F8 800ADCF8 00000000 */  nop
    /* 9E4FC 800ADCFC FE004230 */  andi       $v0, $v0, 0xFE
  .L800ADD00:
    /* 9E500 800ADD00 0800E003 */  jr         $ra
    /* 9E504 800ADD04 070082A0 */   sb        $v0, 0x7($a0)
endlabel func_800ADCE0
