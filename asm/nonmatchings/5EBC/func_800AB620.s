nonmatching func_800AB620, 0x78

glabel func_800AB620
    /* 9BE20 800AB620 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9BE24 800AB624 FC008393 */  lbu        $v1, %gp_rel(D_800E6B88)($gp)
    /* 9BE28 800AB628 02000234 */  ori        $v0, $zero, 0x2
    /* 9BE2C 800AB62C 16006214 */  bne        $v1, $v0, .L800AB688
    /* 9BE30 800AB630 1000BFAF */   sw        $ra, 0x10($sp)
    /* 9BE34 800AB634 01000234 */  ori        $v0, $zero, 0x1
    /* 9BE38 800AB638 5E0082A3 */  sb         $v0, %gp_rel(D_800E6AEA)($gp)
    /* 9BE3C 800AB63C 00018228 */  slti       $v0, $a0, 0x100
    /* 9BE40 800AB640 05004010 */  beqz       $v0, .L800AB658
    /* 9BE44 800AB644 00058228 */   slti      $v0, $a0, 0x500
    /* 9BE48 800AB648 A6AD020C */  jal        func_800AB698
    /* 9BE4C 800AB64C 00000000 */   nop
    /* 9BE50 800AB650 A1AD0208 */  j          .L800AB684
    /* 9BE54 800AB654 00000000 */   nop
  .L800AB658:
    /* 9BE58 800AB658 05004010 */  beqz       $v0, .L800AB670
    /* 9BE5C 800AB65C FFEF0234 */   ori       $v0, $zero, 0xEFFF
    /* 9BE60 800AB660 57AF020C */  jal        func_800ABD5C
    /* 9BE64 800AB664 00000000 */   nop
    /* 9BE68 800AB668 A1AD0208 */  j          .L800AB684
    /* 9BE6C 800AB66C 00000000 */   nop
  .L800AB670:
    /* 9BE70 800AB670 2A104400 */  slt        $v0, $v0, $a0
    /* 9BE74 800AB674 03004014 */  bnez       $v0, .L800AB684
    /* 9BE78 800AB678 00000000 */   nop
    /* 9BE7C 800AB67C 9FAF020C */  jal        func_800ABE7C
    /* 9BE80 800AB680 00000000 */   nop
  .L800AB684:
    /* 9BE84 800AB684 5E0080A3 */  sb         $zero, %gp_rel(D_800E6AEA)($gp)
  .L800AB688:
    /* 9BE88 800AB688 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9BE8C 800AB68C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9BE90 800AB690 0800E003 */  jr         $ra
    /* 9BE94 800AB694 00000000 */   nop
endlabel func_800AB620
