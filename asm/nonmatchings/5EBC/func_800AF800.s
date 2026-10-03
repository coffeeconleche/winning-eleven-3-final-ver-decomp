nonmatching func_800AF800, 0x20

glabel func_800AF800
    /* A0000 800AF800 0200A010 */  beqz       $a1, .L800AF80C
    /* A0004 800AF804 00E1033C */   lui       $v1, (0xE1000200 >> 16)
    /* A0008 800AF808 00026334 */  ori        $v1, $v1, (0xE1000200 & 0xFFFF)
  .L800AF80C:
    /* A000C 800AF80C 02008010 */  beqz       $a0, .L800AF818
    /* A0010 800AF810 FF09C230 */   andi      $v0, $a2, 0x9FF
    /* A0014 800AF814 00044234 */  ori        $v0, $v0, 0x400
  .L800AF818:
    /* A0018 800AF818 0800E003 */  jr         $ra
    /* A001C 800AF81C 25106200 */   or        $v0, $v1, $v0
endlabel func_800AF800
