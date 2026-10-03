nonmatching func_800C0B98, 0x60

glabel func_800C0B98
    /* B1398 800C0B98 FFFF8224 */  addiu      $v0, $a0, -0x1
    /* B139C 800C0B9C FF004230 */  andi       $v0, $v0, 0xFF
    /* B13A0 800C0BA0 1800422C */  sltiu      $v0, $v0, 0x18
    /* B13A4 800C0BA4 05004010 */  beqz       $v0, .L800C0BBC
    /* B13A8 800C0BA8 00160400 */   sll       $v0, $a0, 24
    /* B13AC 800C0BAC 1080013C */  lui        $at, %hi(D_800FB578)
    /* B13B0 800C0BB0 78B524A0 */  sb         $a0, %lo(D_800FB578)($at)
    /* B13B4 800C0BB4 F0020308 */  j          .L800C0BC0
    /* B13B8 800C0BB8 03160200 */   sra       $v0, $v0, 24
  .L800C0BBC:
    /* B13BC 800C0BBC FFFF0224 */  addiu      $v0, $zero, -0x1
  .L800C0BC0:
    /* B13C0 800C0BC0 0800E003 */  jr         $ra
    /* B13C4 800C0BC4 00000000 */   nop
    /* B13C8 800C0BC8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B13CC 800C0BCC 1000BFAF */  sw         $ra, 0x10($sp)
    /* B13D0 800C0BD0 002C0500 */  sll        $a1, $a1, 16
    /* B13D4 800C0BD4 032C0500 */  sra        $a1, $a1, 16
    /* B13D8 800C0BD8 21300000 */  addu       $a2, $zero, $zero
    /* B13DC 800C0BDC 1603030C */  jal        func_800C0C58
    /* B13E0 800C0BE0 21380000 */   addu      $a3, $zero, $zero
    /* B13E4 800C0BE4 00140200 */  sll        $v0, $v0, 16
    /* B13E8 800C0BE8 1000BF8F */  lw         $ra, 0x10($sp)
    /* B13EC 800C0BEC 03140200 */  sra        $v0, $v0, 16
    /* B13F0 800C0BF0 0800E003 */  jr         $ra
    /* B13F4 800C0BF4 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800C0B98
