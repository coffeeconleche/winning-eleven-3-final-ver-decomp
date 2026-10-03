nonmatching func_800ADEDC, 0x2C

glabel func_800ADEDC
    /* 9E6DC 800ADEDC 01000224 */  addiu      $v0, $zero, 0x1
    /* 9E6E0 800ADEE0 030082A0 */  sb         $v0, 0x3($a0)
    /* 9E6E4 800ADEE4 0200C010 */  beqz       $a2, .L800ADEF0
    /* 9E6E8 800ADEE8 00E1033C */   lui       $v1, (0xE1000200 >> 16)
    /* 9E6EC 800ADEEC 00026334 */  ori        $v1, $v1, (0xE1000200 & 0xFFFF)
  .L800ADEF0:
    /* 9E6F0 800ADEF0 0200A010 */  beqz       $a1, .L800ADEFC
    /* 9E6F4 800ADEF4 FF09E230 */   andi      $v0, $a3, 0x9FF
    /* 9E6F8 800ADEF8 00044234 */  ori        $v0, $v0, 0x400
  .L800ADEFC:
    /* 9E6FC 800ADEFC 25106200 */  or         $v0, $v1, $v0
    /* 9E700 800ADF00 0800E003 */  jr         $ra
    /* 9E704 800ADF04 040082AC */   sw        $v0, 0x4($a0)
endlabel func_800ADEDC
